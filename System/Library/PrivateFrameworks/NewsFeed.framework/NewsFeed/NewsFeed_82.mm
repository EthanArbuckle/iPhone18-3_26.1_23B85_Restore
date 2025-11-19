uint64_t sub_1D6298B34(uint64_t result)
{
  v3 = *v1 >> 62;
  if (v3 >= 2)
  {
    v4 = result;
    if (v3 == 2)
    {
      if (!*((*v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
      {
        v6 = *((*v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v5 = *((*v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v7 = *((*v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v12[0] = v6;
        v12[1] = v5;
        v12[2] = v7;
        v13 = 6;
        sub_1D5D27950(v6, v5, v7, 0);
        sub_1D5D27950(v6, v5, v7, 0);
        v8 = sub_1D703E0C8(v12, &v13);
        if (v2)
        {
          return sub_1D5D28C84(v6, v5, v7, 0);
        }

        else
        {
          v10 = v8;
          v11 = swift_allocObject();
          *(v11 + 16) = v6;
          *(v11 + 24) = v5;
          *(v11 + 32) = v10;
          *(v11 + 40) = 0;

          sub_1D6C4D24C(v11 | 0x3000000000000000);
          sub_1D5D28C84(v6, v5, v7, 0);
        }
      }
    }

    else
    {
      v9 = *((*v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v12[0] = *((*v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      swift_retain_n();

      sub_1D6298B34(v4);
      if (v2)
      {
      }

      else
      {

        sub_1D627496C(v4, v9);

        return swift_bridgeObjectRelease_n();
      }
    }
  }

  return result;
}

uint64_t sub_1D6298D88(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = a1;
  v28 = a2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v13 = *(v7 + 16);
  v13(&v21 - v14, v2, v6, v12);
  sub_1D5B49474(0, &qword_1EC8854D0);
  if (swift_dynamicCast())
  {
    v22 = v13;
    v24 = v2;
    v16 = *(&v26 + 1);
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    v17 = *(v15 + 8);
    v23 = v5;
    v17(v5, v16, v15);
    result = __swift_destroy_boxed_opaque_existential_1(&v25);
    if (v3)
    {
      return result;
    }

    v5 = v23;
    v4 = v24;
    v13 = v22;
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_1D5BFB774(&v25, &qword_1EC8854D8, &qword_1EC8854D0);
  }

  (v13)(v9, v4 + *(v28 + 52), v6);
  if (swift_dynamicCast())
  {
    v19 = *(&v26 + 1);
    v20 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    (*(v20 + 8))(v5, v19, v20);
    return __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    return sub_1D5BFB774(&v25, &qword_1EC8854D8, &qword_1EC8854D0);
  }
}

uint64_t sub_1D6299010(uint64_t a1)
{
  v3 = type metadata accessor for FormatRange();
  result = sub_1D6298D88(a1, v3);
  if (!v1)
  {
    return sub_1D6298D88(a1, v3);
  }

  return result;
}

unint64_t sub_1D6299090(unint64_t result)
{
  v3 = *v1;
  v4 = result;
  switch((*v1 >> 58) & 0x3C | (*v1 >> 1) & 3)
  {
    case 1uLL:

      v5 = &unk_1F5113428;
      goto LABEL_19;
    case 2uLL:

      v8 = &unk_1F5113400;
      goto LABEL_22;
    case 3uLL:

      v8 = &unk_1F51133D8;
LABEL_22:
      sub_1D6299AC8(v4, v8);
      goto LABEL_46;
    case 4uLL:

      sub_1D6299D10(v4);
      goto LABEL_46;
    case 5uLL:

      sub_1D6299F94(v4);
      goto LABEL_46;
    case 6uLL:

      sub_1D6294364(v4);
      goto LABEL_46;
    case 7uLL:
      v9 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v10 = v9[4];
      v11 = v9[5];
      swift_beginAccess();
      v13 = v9[2];
      v12 = v9[3];
      swift_beginAccess();
      v14 = v9[12];
      swift_retain_n();

      sub_1D6C4D7E4(v10, v11, 1u, v13, v12, v14, v4, v9);

      goto LABEL_34;
    case 8uLL:

      sub_1D629A334(v4);
      goto LABEL_46;
    case 9uLL:

      sub_1D6D0B48C();
      goto LABEL_46;
    case 0xAuLL:

      sub_1D62DFC84();
      goto LABEL_46;
    case 0xBuLL:

      sub_1D71A3218();
      goto LABEL_46;
    case 0xCuLL:

      sub_1D6AD6E28();
      goto LABEL_46;
    case 0xDuLL:

      sub_1D626CE84(v4);
      goto LABEL_46;
    case 0xEuLL:

      sub_1D628BB04(v4);
      goto LABEL_46;
    case 0xFuLL:

      sub_1D7224D14(v4);
      goto LABEL_46;
    case 0x10uLL:

      sub_1D629A4A0(v4);
      goto LABEL_46;
    case 0x11uLL:

      sub_1D629134C(v4);
      goto LABEL_46;
    case 0x12uLL:

      sub_1D713E478(v4);
      goto LABEL_46;
    case 0x13uLL:

      sub_1D67C72AC();
      goto LABEL_46;
    case 0x14uLL:

      sub_1D6EAFDB0(v4);
      goto LABEL_46;
    case 0x15uLL:

      sub_1D628ED30(v4);
      goto LABEL_46;
    case 0x16uLL:
      return result;
    case 0x17uLL:

      sub_1D626D484(v4);
      goto LABEL_46;
    case 0x18uLL:

      sub_1D629863C(v4);
      goto LABEL_46;
    case 0x19uLL:

      sub_1D629690C(v4);
      goto LABEL_46;
    case 0x1AuLL:

      sub_1D629A778(v4);
      goto LABEL_46;
    case 0x1BuLL:

      sub_1D6294BE0(v4);
      goto LABEL_46;
    case 0x1CuLL:
      return sub_1D629AB04(result);
    case 0x1DuLL:

      sub_1D69D60D4();
      goto LABEL_46;
    case 0x1EuLL:
      v15 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v24 = sub_1D71FB9B0(v16, v17, v18, v19, v20, v21, v22, v23);
      sub_1D6C4D418(v24);
      if (v2)
      {
      }

      else
      {

        if (v15[8])
        {
          v25 = v15[12];

          sub_1D5DEA234(v25);

          sub_1D626D2A0(v4);

          sub_1D5CBF568(v25);
        }

        swift_beginAccess();
        v26 = v15[7];

        sub_1D626DB9C(v4, v26);

LABEL_34:
      }

      break;
    case 0x1FuLL:

      sub_1D629AD30(v4);
      goto LABEL_46;
    case 0x20uLL:

      sub_1D629B384(v4);
      goto LABEL_46;
    case 0x21uLL:

      sub_1D6D9D0F4();
      goto LABEL_46;
    case 0x22uLL:

      sub_1D6F7B844();
      goto LABEL_46;
    case 0x23uLL:
      v6 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);
      swift_beginAccess();
      v7 = *(v6 + 48);

      sub_1D626DB9C(v4, v7);

      goto LABEL_34;
    case 0x24uLL:

      sub_1D5EB8F2C();
      goto LABEL_46;
    case 0x25uLL:

      sub_1D6C4D24C(0xC000000000000000);
      goto LABEL_46;
    case 0x26uLL:

      sub_1D629B904(v4);
      goto LABEL_46;
    case 0x27uLL:

      sub_1D629BBE0(v4);
      goto LABEL_46;
    case 0x28uLL:

      sub_1D62902C0(v4);
      goto LABEL_46;
    default:

      v5 = &unk_1F5113450;
LABEL_19:
      sub_1D6299880(v4, v5);
LABEL_46:

      break;
  }

  return result;
}

unint64_t sub_1D6299880(unint64_t a1, uint64_t a2)
{
  v5 = v2;
  swift_beginAccess();
  v15 = *(v2 + 64);
  sub_1D5C82CD8(v15);
  sub_1D626D654(a1);
  result = sub_1D5C92A8C(v15);
  if (!v3)
  {
    swift_beginAccess();
    v8 = *(v2 + 88);

    sub_1D6274044(a1, v8);

    swift_beginAccess();
    if (*(v5 + 128) == 1)
    {
      v10 = *(v5 + 112);
      v9 = *(v5 + 120);
      sub_1D5C75A4C(v10, v9, 1);
      sub_1D5C75A4C(v10, v9, 1);
      v11 = sub_1D5E26E28(a2);
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      *(v12 + 24) = v9;
      *(v12 + 32) = v11;
      *(v12 + 40) = 0;
      sub_1D6C4D24C(v12 | 0x3000000000000000);
      sub_1D5D2F2C8(v10, v9, 1);
    }

    if (*(v5 + 136))
    {
      v13 = *(v5 + 168);

      sub_1D5DEA234(v13);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v13);
    }

    swift_beginAccess();
    v14 = *(v5 + 96);

    sub_1D626DB9C(a1, v14);
  }

  return result;
}

unint64_t sub_1D6299AC8(unint64_t a1, uint64_t a2)
{
  v5 = v2;
  swift_beginAccess();
  v15 = *(v2 + 88);
  sub_1D5C82CD8(v15);
  sub_1D626D654(a1);
  result = sub_1D5C92A8C(v15);
  if (!v3)
  {
    swift_beginAccess();
    v8 = *(v2 + 96);

    sub_1D6274044(a1, v8);

    swift_beginAccess();
    if (*(v5 + 136) == 1)
    {
      v10 = *(v5 + 120);
      v9 = *(v5 + 128);
      sub_1D5C75A4C(v10, v9, 1);
      sub_1D5C75A4C(v10, v9, 1);
      v11 = sub_1D5E26E28(a2);
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      *(v12 + 24) = v9;
      *(v12 + 32) = v11;
      *(v12 + 40) = 0;
      sub_1D6C4D24C(v12 | 0x3000000000000000);
      sub_1D5D2F2C8(v10, v9, 1);
    }

    if (*(v5 + 144))
    {
      v13 = *(v5 + 176);

      sub_1D5DEA234(v13);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v13);
    }

    swift_beginAccess();
    v14 = *(v5 + 104);

    sub_1D626DB9C(a1, v14);
  }

  return result;
}

uint64_t sub_1D6299D10(uint64_t *a1)
{
  v3 = v1;
  v14 = v1[4];
  sub_1D5C82CD8(v14);
  sub_1D626D654(a1);
  if (v2)
  {
    return sub_1D5C92A8C(v14);
  }

  sub_1D5C92A8C(v14);
  swift_beginAccess();
  v6 = v1[6];

  sub_1D6274044(a1, v6);

  if (v3[7])
  {
    sub_1D629C19C(a1);
  }

  v7 = v3[8];
  if (v7)
  {
    swift_beginAccess();
    v8 = *(v7 + 72);
    if (v8)
    {

      sub_1D62707E8(a1, v8);
    }

    swift_beginAccess();
    v9 = *(v7 + 88);

    sub_1D6272D88(a1, v9);
  }

  result = swift_beginAccess();
  v10 = v3[10];
  if (v10 >> 62 == 1)
  {
    v11 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v12 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v3[10]);
    sub_1D5EB1500(v11);

    sub_1D6288D68(a1, v11, v12);
    sub_1D5EB15C4(v11);

    result = sub_1D5EB15C4(v10);
  }

  if (v3[17])
  {
    v13 = v3[21];

    sub_1D5DEA234(v13);

    sub_1D626D2A0(a1);

    sub_1D5CBF568(v13);
  }

  return result;
}

unint64_t sub_1D6299F94(uint64_t *a1)
{
  v3 = v1;
  v16 = *(v1 + 32);
  sub_1D5D085B4(v16);
  sub_1D62A1DA4(a1);
  if (v2)
  {
    return sub_1D5D05694(v16);
  }

  sub_1D5D05694(v16);
  swift_beginAccess();
  v6 = *(v1 + 48);

  sub_1D6274044(a1, v6);

  if (*(v3 + 56))
  {
    sub_1D6290E24(a1);
  }

  v7 = *(v3 + 64);
  if (v7)
  {
    swift_beginAccess();
    v8 = *(v7 + 72);
    if (v8)
    {

      sub_1D62707E8(a1, v8);
    }

    swift_beginAccess();
    v9 = *(v7 + 88);

    sub_1D6272D88(a1, v9);
  }

  sub_1D6E5C118(a1);

  if ((*(v3 + 130) >> 1) <= 0x7Eu)
  {
    v10 = *(v3 + 128) | (*(v3 + 130) << 16);
    v17 = *(v3 + 80);
    v18 = *(v3 + 88);
    v19 = *(v3 + 96);
    v20 = *(v3 + 104);
    v21 = *(v3 + 112);
    v22 = *(v3 + 120);
    sub_1D5D0A5BC(v17, v18, v19, v20, v21, v22, v10);
    sub_1D626D110(a1);
    sub_1D5D0A678(v17, v18, v19, v20, v21, v22, v10);
  }

  swift_beginAccess();
  v11 = *(v3 + 144);
  if (v11 >> 62 == 1)
  {
    v12 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(*(v3 + 144));
    sub_1D5EB1500(v12);

    sub_1D6288D68(a1, v12, v13);
    sub_1D5EB15C4(v12);

    sub_1D5EB15C4(v11);
  }

  swift_beginAccess();
  v14 = *(v3 + 184);

  sub_1D62828D8(a1, v14);

  if (*(v3 + 208))
  {
    v15 = *(v3 + 240);

    sub_1D5DEA234(v15);

    sub_1D626D2A0(a1);

    sub_1D5CBF568(v15);
  }

  return result;
}

uint64_t sub_1D629A334(unint64_t a1)
{
  v3 = v1;
  swift_beginAccess();
  v8 = *(v1 + 32);
  sub_1D5C82CD8(v8);
  sub_1D626D654(a1);
  result = sub_1D5C92A8C(v8);
  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v1 + 40);

    sub_1D6274044(a1, v6);

    if (*(v3 + 48))
    {
      v7 = *(v3 + 80);

      sub_1D5DEA234(v7);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v7);
    }
  }

  return result;
}

uint64_t sub_1D629A4A0(unint64_t a1)
{
  v3 = v1;

  sub_1D62A3A64(a1);
  if (v2)
  {
  }

  v17 = v1[8];
  sub_1D5C82CD8(v17);
  sub_1D626D654(a1);
  sub_1D5C92A8C(v17);
  swift_beginAccess();
  v6 = v1[10];

  sub_1D6274044(a1, v6);

  v7 = v3[11];
  if (v7)
  {
    swift_beginAccess();
    v8 = *(v7 + 96);

    sub_1D626FB44(a1, v8);
  }

  result = swift_beginAccess();
  v9 = v3[13];
  if (v9 >> 62 == 1)
  {
    v10 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v3[13]);
    sub_1D5EB1500(v10);

    sub_1D6288D68(a1, v10, v11);
    sub_1D5EB15C4(v10);

    result = sub_1D5EB15C4(v9);
  }

  if (v3[20])
  {
    v12 = v3[24];

    sub_1D5DEA234(v12);

    sub_1D626D2A0(a1);

    sub_1D5CBF568(v12);
  }

  v13 = v3[26];
  if (!v13)
  {
    v16 = 0;
    return sub_1D5D0A5AC(v16);
  }

  if (v13 == 1)
  {
    v16 = 1;
    return sub_1D5D0A5AC(v16);
  }

  if (v13 != 2)
  {
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    sub_1D5D0A59C(v13);
    sub_1D5D0A57C(v14);

    sub_1D6288CD4(a1, v14, v15);
    sub_1D5D0A58C(v14);

    v16 = v13;
    return sub_1D5D0A5AC(v16);
  }

  return result;
}

uint64_t sub_1D629A778(uint64_t *a1)
{
  v3 = v1;
  *&v33 = *(v1 + 32);
  sub_1D5C82CD8(v33);
  sub_1D626D654(a1);
  if (v2)
  {
    return sub_1D5C92A8C(v33);
  }

  sub_1D5C92A8C(v33);
  swift_beginAccess();
  v6 = *(v1 + 48);

  sub_1D6274044(a1, v6);

  if (*(v3 + 56))
  {
    sub_1D629C434(a1, sub_1D62B7AA4, sub_1D62B7B00);
  }

  v7 = *(v3 + 64);
  if (v7)
  {
    swift_beginAccess();
    v8 = *(v7 + 72);
    if (v8)
    {

      sub_1D62707E8(a1, v8);
    }

    swift_beginAccess();
    v9 = *(v7 + 88);

    sub_1D6272D88(a1, v9);
  }

  *&v33 = *(v3 + 72);

  sub_1D629CE04(a1);

  result = swift_beginAccess();
  v10 = *(v3 + 88);
  if (v10 >> 62 == 1)
  {
    v11 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v12 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(*(v3 + 88));
    sub_1D5EB1500(v11);

    sub_1D6288D68(a1, v11, v12);
    sub_1D5EB15C4(v11);

    result = sub_1D5EB15C4(v10);
  }

  v13 = *(v3 + 152);
  if (v13 != 254)
  {
    v14 = *(v3 + 208);
    v15 = *(v3 + 176);
    v30 = *(v3 + 192);
    v31 = v14;
    v16 = *(v3 + 176);
    v28 = *(v3 + 160);
    v29 = v16;
    v26 = *(v3 + 128);
    v33 = v26;
    v17 = *(v3 + 208);
    v38 = v30;
    v39 = v17;
    *&v27 = *(v3 + 144);
    *(&v27 + 1) = v13;
    v32 = *(v3 + 224);
    v34 = v27;
    v35 = v13;
    v40 = *(v3 + 224);
    v36 = v28;
    v37 = v15;
    sub_1D62B7A48(&v33, v24);
    sub_1D62A2F14();
    v24[4] = v30;
    v24[5] = v31;
    v25 = v32;
    v24[0] = v26;
    v24[1] = v27;
    v24[2] = v28;
    v24[3] = v29;
    result = sub_1D62B61EC(v24);
  }

  v18 = *(v3 + 232);
  if (v18)
  {
    v20 = *(v3 + 264);
    v19 = *(v3 + 272);
    v22 = *(v3 + 248);
    v21 = *(v3 + 256);
    v23 = *(v3 + 240);
    *&v33 = v18;
    *(&v33 + 1) = v23;
    v34 = v22;
    v35 = v21;
    *&v36 = v20;
    *(&v36 + 1) = v19;

    sub_1D5DEA234(v20);

    sub_1D626D2A0(a1);

    sub_1D5CBF568(v20);
  }

  return result;
}

uint64_t sub_1D629AB04(unint64_t a1)
{
  v4 = v1[4];
  v12 = v1[6];
  v10 = v1[11];
  v5 = v1[15];
  v11 = v1[2];
  sub_1D5C82CD8(v11);
  sub_1D626D654(a1);
  result = sub_1D5C92A8C(v11);
  if (!v2)
  {

    sub_1D6274044(a1, v4);

    if (!(v12 >> 62))
    {
      goto LABEL_5;
    }

    if (v12 >> 62 == 1)
    {
      v7 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v12);
      sub_1D5EB1500(v7);

      sub_1D6288D68(a1, v7, v8);
      sub_1D5EB15C4(v7);

      result = sub_1D5EB15C4(v12);
LABEL_5:
      if (!v10)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (v12 == 0x8000000000000000)
    {
      v9 = 0x8000000000000000;
    }

    else
    {
      v9 = 0x8000000000000008;
    }

    result = sub_1D5EB15C4(v9);
    if (v10)
    {
LABEL_6:

      sub_1D5DEA234(v5);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v5);
    }
  }

  return result;
}

void sub_1D629AD30(uint64_t *a1)
{
  v3 = v1;
  v44 = *(v1 + 32);
  sub_1D5C82CD8(v44);
  sub_1D626D654(a1);
  if (v2)
  {
    sub_1D5C92A8C(v44);
    return;
  }

  sub_1D5C92A8C(v44);
  swift_beginAccess();
  v5 = *(v1 + 48);

  sub_1D6274044(a1, v5);

  if (*(v3 + 56))
  {
    sub_1D629C434(a1, sub_1D62B7C6C, sub_1D62B7CC8);
  }

  v6 = *(v3 + 64);
  if (v6)
  {
    swift_beginAccess();
    v7 = *(v6 + 72);
    if (v7)
    {

      sub_1D62707E8(a1, v7);
    }

    swift_beginAccess();
    v8 = *(v6 + 88);

    sub_1D6272D88(a1, v8);
  }

  v44 = *(v3 + 72);

  sub_1D629D0A0(a1);

  v44 = *(v3 + 80);

  sub_1D6287A8C(a1);

  if (*(v3 + 88))
  {
    sub_1D62938C4(a1);
  }

  v9 = *(v3 + 112);
  if (v9 != 1)
  {
    v16 = *(v3 + 96);
    v15 = *(v3 + 104);
    v17 = *(v3 + 120);
    v18 = *(v3 + 128);
    v19 = *(v3 + 136);
    v20 = *(v3 + 144);
    v44 = v16;
    v43 = v17;
    v51 = v20;
    sub_1D62B7B54(v16, v15, v9, v17, v18, v19, v20);

    sub_1D6287A8C(a1);

    v36 = v16;
    if (v15 >= 3)
    {
      sub_1D6273544(a1, v15);
      v37 = v19;
      v42 = v36;
    }

    else
    {
      v42 = v16;
      v37 = v19;
    }

    v38 = v9;
    if (v9)
    {
      sub_1D62938C4(a1);
    }

    v39 = v51;
    if (v51)
    {
      sub_1D5C75A4C(v18, v37, 1);
      v40 = sub_1D5E26E28(&unk_1F51132C0);
      v41 = swift_allocObject();
      *(v41 + 16) = v18;
      *(v41 + 24) = v37;
      *(v41 + 32) = v40;
      *(v41 + 40) = 0;
      sub_1D6C4D24C(v41 | 0x3000000000000000);

      v38 = v9;
      v39 = v51;
    }

    sub_1D62B7BE0(v42, v15, v38, v43, v18, v37, v39);
  }

  v11 = *(v3 + 152);
  v10 = *(v3 + 160);
  v12 = *(v3 + 168);
  if ((*(v3 + 176) & 1) == 0)
  {
    v44 = *(v3 + 152);
    v45 = v10;
    v46 = v12;
    v50[0] = 0;
    sub_1D60AFDB4(v11, v10, v12, 0);
    v21 = sub_1D703E0C8(&v44, v50);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v10;
    *(v14 + 32) = v21;
    *(v14 + 40) = 0;

    goto LABEL_19;
  }

  if (v12)
  {
    sub_1D60AFDB4(*(v3 + 152), *(v3 + 160), v12, 1);
    v13 = sub_1D5E26E28(&unk_1F51132E8);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v10;
    *(v14 + 32) = v13;
    *(v14 + 40) = 0;
LABEL_19:
    sub_1D6C4D24C(v14 | 0x3000000000000000);
  }

  swift_beginAccess();
  v22 = *(v3 + 192);
  if (v22 >> 62 == 1)
  {
    v23 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v24 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(*(v3 + 192));
    sub_1D5EB1500(v23);

    sub_1D6288D68(a1, v23, v24);
    sub_1D5EB15C4(v23);

    sub_1D5EB15C4(v22);
  }

  swift_beginAccess();
  v25 = *(v3 + 264);
  if (v25 != 255 && (v25 & 1) != 0)
  {
    v27 = *(v3 + 248);
    v26 = *(v3 + 256);
    sub_1D6189668(v27, v26, *(v3 + 264));
    sub_1D6189668(v27, v26, v25);
    v28 = sub_1D5E26E28(&unk_1F5113310);
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = v26;
    *(v29 + 32) = v28;
    *(v29 + 40) = 0;
    sub_1D6C4D24C(v29 | 0x3000000000000000);
    sub_1D60107F0(v27, v26, v25);
  }

  v30 = *(v3 + 272);
  if (v30)
  {
    v32 = *(v3 + 304);
    v31 = *(v3 + 312);
    v34 = *(v3 + 288);
    v33 = *(v3 + 296);
    v35 = *(v3 + 280);
    v44 = v30;
    v45 = v35;
    v46 = v34;
    v47 = v33;
    v48 = v32;
    v49 = v31;

    sub_1D5DEA234(v32);

    sub_1D626D2A0(a1);

    sub_1D5CBF568(v32);
  }
}

uint64_t sub_1D629B384(unint64_t a1)
{
  v3 = v1;
  swift_beginAccess();
  *&v34[0] = *(v1 + 32);
  sub_1D5C82CD8(*&v34[0]);
  sub_1D626D654(a1);
  if (v2)
  {
    return sub_1D5C92A8C(*&v34[0]);
  }

  sub_1D5C92A8C(*&v34[0]);
  swift_beginAccess();
  v6 = *(v1 + 48);

  sub_1D6274044(a1, v6);

  v7 = *(v3 + 72);
  v8 = *(v3 + 104);
  v34[2] = *(v3 + 88);
  v35[0] = v8;
  *(v35 + 15) = *(v3 + 119);
  v34[0] = *(v3 + 56);
  v34[1] = v7;
  v9 = *(v3 + 72);
  v10 = *(v3 + 104);
  v32 = *(v3 + 88);
  v33[0] = v10;
  *(v33 + 15) = *(v3 + 119);
  v30 = *(v3 + 56);
  v31 = v9;
  sub_1D62B62D8(v34, v28);
  sub_1D629E538(a1);
  v28[1] = v31;
  v28[2] = v32;
  v29[0] = v33[0];
  *(v29 + 15) = *(v33 + 15);
  v28[0] = v30;
  sub_1D62B6334(v28);
  swift_beginAccess();
  if (*(v3 + 136))
  {

    sub_1D629C600(a1);
  }

  swift_beginAccess();
  v11 = *(v3 + 144);
  v12 = *(v3 + 152);
  v13 = *(v3 + 160);
  v14 = *(v3 + 168);
  v16 = *(v3 + 176);
  v15 = *(v3 + 184);
  v17 = *(v3 + 200) >> 6;
  if (v17)
  {
    if (v17 == 1)
    {
      v36 = *(v3 + 192);

      sub_1D6273544(a1, v11);

      if (v14)
      {
        sub_1D5C75A4C(v12, v13, 1);
        sub_1D5C75A4C(v12, v13, 1);
        v18 = sub_1D5E26E28(&unk_1F5113360);
        v19 = swift_allocObject();
        *(v19 + 16) = v12;
        *(v19 + 24) = v13;
        *(v19 + 32) = v18;
        *(v19 + 40) = 0;
        sub_1D6C4D24C(v19 | 0x3000000000000000);
        sub_1D5D2F2C8(v12, v13, 1);
      }

      sub_1D6273544(a1, v16);

      sub_1D6273544(a1, v15);

      v20 = v36;

      sub_1D6273544(a1, v20);
    }
  }

  else
  {
    v36 = *(v3 + 192);

    sub_1D6273544(a1, v11);

    if (v14)
    {
      sub_1D5C75A4C(v12, v13, 1);
      sub_1D5C75A4C(v12, v13, 1);
      v21 = sub_1D5E26E28(&unk_1F5113338);
      v22 = swift_allocObject();
      *(v22 + 16) = v12;
      *(v22 + 24) = v13;
      *(v22 + 32) = v21;
      *(v22 + 40) = 0;
      sub_1D6C4D24C(v22 | 0x3000000000000000);
      sub_1D5D2F2C8(v12, v13, 1);
    }

    if (v16)
    {
      sub_1D6273544(a1, v16);
    }

    sub_1D6273544(a1, v15);

    v23 = v36;

    sub_1D6273544(a1, v23);
  }

  result = swift_beginAccess();
  v24 = *(v3 + 208);
  if (v24 >> 62 == 1)
  {
    v26 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v25 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(*(v3 + 208));
    sub_1D5EB1500(v26);

    sub_1D6288D68(a1, v26, v25);
    sub_1D5EB15C4(v26);

    result = sub_1D5EB15C4(v24);
  }

  if (*(v3 + 256))
  {
    v27 = *(v3 + 288);

    sub_1D5DEA234(v27);

    sub_1D626D2A0(a1);

    sub_1D5CBF568(v27);
  }

  return result;
}

uint64_t sub_1D629B904(unint64_t a1)
{
  v3 = v1;
  swift_beginAccess();
  *&v24 = *(v1 + 48);
  sub_1D5C82CD8(v24);
  sub_1D626D654(a1);
  if (v2)
  {
    return sub_1D5C92A8C(v24);
  }

  sub_1D5C92A8C(v24);
  swift_beginAccess();
  v6 = *(v1 + 64);

  sub_1D6274044(a1, v6);

  v7 = *(v3 + 72);
  if (v7 < 0)
  {
    v20 = v7 & 0x7FFFFFFFFFFFFFFFLL;
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);

    sub_1D6288C94(a1, v21, v22);
  }

  swift_beginAccess();
  if (*(v3 + 104))
  {
    v8 = *(v3 + 112);
    v24 = *(v3 + 96);
    v25 = v8;
    v9 = *(v3 + 144);
    v26 = *(v3 + 128);
    v27 = v9;
    v10 = *(&v9 + 1);
    sub_1D62B5354(&v24, &v23, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);

    sub_1D6273154(a1, v10);
    sub_1D5D0ABCC(&v24, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);
  }

  result = swift_beginAccess();
  v11 = *(v3 + 160);
  if (v11 >> 62 == 1)
  {
    v12 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(*(v3 + 160));
    sub_1D5EB1500(v12);

    sub_1D6288D68(a1, v12, v13);
    sub_1D5EB15C4(v12);

    result = sub_1D5EB15C4(v11);
  }

  v14 = *(v3 + 224);
  if (v14)
  {
    v16 = *(v3 + 256);
    v15 = *(v3 + 264);
    v18 = *(v3 + 240);
    v17 = *(v3 + 248);
    v19 = *(v3 + 232);
    *&v24 = v14;
    *(&v24 + 1) = v19;
    *&v25 = v18;
    *(&v25 + 1) = v17;
    *&v26 = v16;
    *(&v26 + 1) = v15;

    sub_1D5DEA234(v16);

    sub_1D626D2A0(a1);

    sub_1D5CBF568(v16);
  }

  return result;
}

unint64_t sub_1D629BBE0(unint64_t a1)
{
  v3 = v1;
  v11 = *(v1 + 32);
  sub_1D5C82CD8(v11);
  sub_1D626D654(a1);
  if (v2)
  {
    return sub_1D5C92A8C(v11);
  }

  sub_1D5C92A8C(v11);
  swift_beginAccess();
  v6 = *(v1 + 48);

  sub_1D6274044(a1, v6);

  swift_beginAccess();
  v7 = v3[7];
  if (v7 >> 62 == 1)
  {
    v8 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v3[7]);
    sub_1D5EB1500(v8);

    sub_1D6288D68(a1, v8, v9);
    sub_1D5EB15C4(v8);

    sub_1D5EB15C4(v7);
  }

  result = swift_beginAccess();
  if (v3[12])
  {

    sub_1D629C710(a1);
  }

  if (v3[13])
  {
    v10 = v3[17];

    sub_1D5DEA234(v10);

    sub_1D626D2A0(a1);

    sub_1D5CBF568(v10);
  }

  return result;
}

void sub_1D629BE14(uint64_t *a1)
{
  v3 = v1;
  v4 = *v1;
  switch(v3[6] >> 59)
  {
    case 1:
      sub_1D6290E24(a1);
      return;
    case 2:
      sub_1D62938C4(a1);
      return;
    case 3:
      sub_1D6295134(a1);
      return;
    case 4:
      swift_beginAccess();
      v10 = *(v4 + 96);

      sub_1D626FB44(a1, v10);
      goto LABEL_31;
    case 5:
      v12 = *(v4 + 56);
      if (v12)
      {
        v13 = a1;
        sub_1D626DA28(a1, v12);
        if (v2)
        {
          return;
        }
      }

      else
      {
        v13 = a1;
      }

      swift_beginAccess();
      v21 = *(v4 + 64);

      sub_1D626FD48(v13, v21);
LABEL_31:

      return;
    case 6:
      swift_beginAccess();
      v18 = *(v4 + 56);

      v19 = a1;
      sub_1D626FF20(a1, v18);

      if (!v2 && *(v4 + 74) != 255)
      {
        v20 = *(v4 + 72) | (*(v4 + 74) << 16);
        v22 = *(v4 + 64);
        sub_1D610CA74(v22, v20, SBYTE2(v20), sub_1D610CA28, sub_1D610CA5C);
        sub_1D628F694(v19);
        sub_1D610CA74(v22, v20, SBYTE2(v20), sub_1D60CF6A8, sub_1D60CF6DC);
      }

      return;
    case 7:
      v11 = sub_1D62701B4;
      goto LABEL_27;
    case 8:
      sub_1D6296C18(a1);
      return;
    case 9:
      v7 = sub_1D62B7AA4;
      v8 = sub_1D62B7B00;
      goto LABEL_9;
    case 0xALL:
      v11 = sub_1D6270360;
LABEL_27:
      sub_1D62989EC(a1, v11);
      return;
    case 0xBLL:
      sub_1D6292A8C(a1);
      return;
    case 0xCLL:
      sub_1D673266C(a1);
      return;
    case 0xDLL:
      swift_beginAccess();
      v15 = *(v4 + 72);
      if (!v15)
      {
        goto LABEL_22;
      }

      sub_1D62707E8(a1, v15);
      if (!v2)
      {

LABEL_22:
        swift_beginAccess();
        v16 = *(v4 + 88);

        sub_1D6272D88(a1, v16);
      }

      goto LABEL_31;
    case 0xELL:
      v7 = sub_1D62B7C6C;
      v8 = sub_1D62B7CC8;
LABEL_9:
      sub_1D629C434(a1, v7, v8);
      return;
    case 0xFLL:
      sub_1D629C600(a1);
      return;
    case 0x10:
      v5 = v3[7];

      sub_1D6273154(a1, v5);

      return;
    case 0x11:
      sub_1D629C710(a1);
      return;
    default:
      sub_1D629C19C(a1);
      return;
  }
}

uint64_t sub_1D629C19C(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(v1 + 48);

  sub_1D626F824(a1, v4);

  if (!v2)
  {
    v6 = *(v1 + 56);
    if (v6)
    {
      result = sub_1D6273544(a1, v6);
    }

    if ((~*(v1 + 64) & 0xF000000000000007) != 0)
    {
      *&v10[0] = *(v1 + 64);

      sub_1D62891F0(a1);
    }

    v7 = *(v1 + 72);
    if (v7)
    {
      result = sub_1D626FA1C(a1, v7);
    }

    v11 = *(v1 + 184);
    v8 = *(v1 + 152);
    v10[2] = *(v1 + 136);
    v10[3] = v8;
    v10[4] = *(v1 + 168);
    v9 = *(v1 + 120);
    v10[0] = *(v1 + 104);
    v10[1] = v9;
    if (v11 != 254)
    {
      swift_retain_n();
      sub_1D62895DC(a1);

      return sub_1D5D0ABCC(v10, &qword_1EDF33718, &type metadata for FormatShadow);
    }
  }

  return result;
}

uint64_t sub_1D629C2FC(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(v1 + 56);

  sub_1D626FF20(a1, v4);

  if (!v2 && *(v1 + 74) != 255)
  {
    v6 = *(v1 + 72) | (*(v1 + 74) << 16);
    v7 = *(v1 + 64);
    sub_1D610CA74(v7, v6, SBYTE2(v6), sub_1D610CA28, sub_1D610CA5C);
    sub_1D628F694(a1);
    return sub_1D610CA74(v7, v6, SBYTE2(v6), sub_1D60CF6A8, sub_1D60CF6DC);
  }

  return result;
}

uint64_t sub_1D629C434(uint64_t a1, void (*a2)(__int128 *, void *), uint64_t (*a3)(__int128 *))
{
  swift_beginAccess();
  v8 = *(v3 + 48);

  sub_1D62833C4(a1, v8, a2, a3);

  if (!v4)
  {
    v10 = *(v3 + 56);
    if (v10)
    {
      result = sub_1D6273544(a1, v10);
    }

    if ((~*(v3 + 64) & 0xF000000000000007) != 0)
    {
      *&v14[0] = *(v3 + 64);

      sub_1D62891F0(a1);
    }

    v11 = *(v3 + 72);
    if (v11)
    {
      result = sub_1D626FA1C(a1, v11);
    }

    v15 = *(v3 + 184);
    v12 = *(v3 + 152);
    v14[2] = *(v3 + 136);
    v14[3] = v12;
    v14[4] = *(v3 + 168);
    v13 = *(v3 + 120);
    v14[0] = *(v3 + 104);
    v14[1] = v13;
    if (v15 != 254)
    {
      swift_retain_n();
      sub_1D62895DC(a1);

      result = sub_1D5D0ABCC(v14, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    if ((~*(v3 + 192) & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }
  }

  return result;
}

uint64_t sub_1D629C600(uint64_t a1)
{
  swift_beginAccess();
  v4 = v1[6];

  sub_1D6272F68(a1, v4);

  if (!v2)
  {
    v6 = v1[7];
    if (v6)
    {
      result = sub_1D6273544(a1, v6);
    }

    if ((~v1[8] & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }

    if ((~v1[9] & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }
  }

  return result;
}

unint64_t sub_1D629C710(unint64_t a1)
{
  swift_beginAccess();
  v4 = v1[6];

  sub_1D627331C(a1, v4);

  if (!v2)
  {
    if ((~v1[7] & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }

    if ((~v1[8] & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }

    v6 = v1[10];
    if (v6)
    {
      if (v6 == 1)
      {
        v9 = 1;
      }

      else
      {
        if (v6 == 2)
        {
          return result;
        }

        v7 = *(v6 + 16);
        v8 = *(v6 + 24);
        sub_1D5D0A59C(v6);
        sub_1D5D0A57C(v7);
        sub_1D5D0A57C(v8);
        sub_1D62886C0(a1, v7, v8);
        sub_1D5D0A58C(v7);
        sub_1D5D0A58C(v8);
        v9 = v6;
      }
    }

    else
    {
      v9 = 0;
    }

    return sub_1D5D0A5AC(v9);
  }

  return result;
}

uint64_t sub_1D629C8B0(uint64_t *a1)
{

  sub_1D6285C00(a1);
}

uint64_t sub_1D629C904(uint64_t result)
{
  v2 = *v1;
  if (!*(v1 + 8))
  {
    return sub_1D6273544(result, v2);
  }

  if (*(v1 + 8) == 1)
  {
    return sub_1D62744A4(result, v2);
  }

  return result;
}

void sub_1D629C93C(unint64_t a1)
{
  sub_1D5CF4A48(0, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v24 - v6;
  sub_1D5C8E028();
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  switch(*v1 >> 60)
  {
    case 1uLL:
      v18 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

      swift_bridgeObjectRetain_n();
      sub_1D62747C4(a1, v18);

      swift_bridgeObjectRelease_n();
      return;
    case 2uLL:
      v19 = v10;
      v20 = swift_projectBox();
      sub_1D62B50EC(v20, v12, sub_1D5C8E028);
      sub_1D6284BAC(a1, *&v12[*(v19 + 36)]);
      sub_1D62B51D0(v12, sub_1D5C8E028);
      return;
    case 3uLL:
    case 4uLL:
      v22 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D6284A20(a1, v22);
      goto LABEL_13;
    case 5uLL:
      v23 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

      sub_1D62747C4(a1, v23);

      goto LABEL_13;
    case 6uLL:
      v21 = swift_projectBox();
      sub_1D62B7198(v21, v7, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
      sub_1D62848B0(a1, *&v7[*(v4 + 36)]);
      sub_1D62B7204(v7, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
      return;
    case 7uLL:
      v25 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D62895DC(a1);
      return;
    case 8uLL:
      v15 = v13 & 0xFFFFFFFFFFFFFFFLL;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);

      sub_1D628D658(a1, v16, v17, sub_1D629C93C);

      return;
    case 9uLL:
      v25 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D6287A8C(a1);
      return;
    case 0xAuLL:
      v25 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D629CE04(a1);
      return;
    case 0xBuLL:
      return;
    case 0xCuLL:
      v25 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D6290ACC(a1);
      return;
    case 0xDuLL:
      v25 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D629D0A0(a1);
      return;
    default:
      v14 = *(v13 + 24);

      sub_1D6284A20(a1, v14);
LABEL_13:

      return;
  }
}

uint64_t sub_1D629CD1C(unint64_t a1)
{

  sub_1D629C93C(a1);
}

void sub_1D629CD70(unint64_t a1)
{
  if ((*(v1 + 16) & 1) == 0)
  {
    sub_1D629C93C(a1);
  }
}

void sub_1D629CDD0(unint64_t a1)
{
  if ((*(v1 + 32) & 1) == 0)
  {
    sub_1D629C93C(a1);
  }
}

uint64_t sub_1D629CE04(uint64_t a1)
{
  v4 = *v1;
  v5 = *v1 >> 61;
  if (v5 > 1)
  {
    v6 = (v4 & 0x1FFFFFFFFFFFFFFFLL);
    if (v5 == 2)
    {

      sub_1D6288868(a1);
    }

    else
    {
      if (v5 == 3)
      {
        v8 = v6[2];
        v7 = v6[3];
        v9 = v6[4];
        *&v23 = v8;
        *(&v23 + 1) = v7;
        *&v24 = v9;
        v38 = 9;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v10 = sub_1D703E0C8(&v23, &v38);
        if (v2)
        {
        }

        else
        {
          v21 = v10;
          v22 = swift_allocObject();
          *(v22 + 16) = v8;
          *(v22 + 24) = v7;
          *(v22 + 32) = v21;
          *(v22 + 40) = 0;

          sub_1D6C4D24C(v22 | 0x3000000000000000);
        }
      }

      v19 = v6[3];
      *&v23 = v6[2];
      swift_retain_n();

      sub_1D629CE04(a1);
      if (v2)
      {
      }

      sub_1D6282C14(a1, v19);
    }
  }

  if (v5)
  {
    v20 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    sub_1D6282D08(a1, v20);
    if (v2)
    {
    }

    else
    {

      sub_1D629CE04(a1);
    }
  }

  else
  {
    v12 = *(v4 + 224);
    v35 = *(v4 + 208);
    v36 = v12;
    v37 = *(v4 + 240);
    v13 = *(v4 + 160);
    v31 = *(v4 + 144);
    v32 = v13;
    v14 = *(v4 + 192);
    v33 = *(v4 + 176);
    v34 = v14;
    v15 = *(v4 + 96);
    v27 = *(v4 + 80);
    v28 = v15;
    v16 = *(v4 + 128);
    v29 = *(v4 + 112);
    v30 = v16;
    v17 = *(v4 + 32);
    v23 = *(v4 + 16);
    v24 = v17;
    v18 = *(v4 + 64);
    v25 = *(v4 + 48);
    v26 = v18;
    return sub_1D629F098(a1);
  }
}

uint64_t sub_1D629D0A0(uint64_t result)
{
  v3 = result;
  v4 = *v1;
  if (*v1 < 0)
  {
    v7 = v4 & 0x7FFFFFFFFFFFFFFFLL;
    if (*(v7 + 40) >= 2u)
    {
      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      v10 = *(v7 + 32);
      v14[0] = v9;
      v14[1] = v8;
      v14[2] = v10;
      v15 = 6;
      sub_1D62B6240(v9, v8, v10, 2);
      sub_1D62B6240(v9, v8, v10, 2);
      v11 = sub_1D703E0C8(v14, &v15);
      if (v2)
      {
        return sub_1D62B628C(v9, v8, v10, 2);
      }

      else
      {
        v12 = v11;
        v13 = swift_allocObject();
        *(v13 + 16) = v9;
        *(v13 + 24) = v8;
        *(v13 + 32) = v12;
        *(v13 + 40) = 0;

        sub_1D6C4D24C(v13 | 0x3000000000000000);
        sub_1D62B628C(v9, v8, v10, 2);
      }
    }
  }

  else
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);

    sub_1D6279934(v3, v5);
    if (v2)
    {
    }

    else
    {
      v14[0] = v6;

      sub_1D629D0A0(v3);
    }
  }

  return result;
}

unint64_t sub_1D629D254(unint64_t result)
{
  v3 = *(v1 + 16);
  v35[0] = *v1;
  v35[1] = v3;
  *v36 = *(v1 + 32);
  *&v36[15] = *(v1 + 47);
  v4 = *(&v35[0] + 1);
  v5 = v3;
  v6 = ((4 * v36[18]) | (*&v36[16] >> 11) & 3);
  if (v6 <= 3)
  {
    if (((4 * v36[18]) | (*&v36[16] >> 11) & 3) > 1u)
    {
      if (v6 == 2)
      {
        *v34 = v35[0];
        v34[16] = v3;
        *&v34[17] = v3 >> 8;
        v34[23] = (*&v34[17] | (((DWORD1(v3) >> 8) | (BYTE7(v3) << 16)) << 32)) >> 48;
        *&v34[21] = DWORD1(v3) >> 8;
        *&v34[24] = *(&v3 + 1);
        *&v34[32] = *v36;
        *&v34[48] = *&v36[16] & 0xE7FF;
        return sub_1D690A374(result);
      }

      else
      {
        if (qword_1EDF1AD88 != -1)
        {
          swift_once();
        }

        v10 = qword_1EDF1AD90;
        v11 = (v5 & 1) == 0;
        v12 = swift_allocObject();
        *(v12 + 16) = *&v35[0];
        *(v12 + 24) = v4;
        *(v12 + 32) = v10;
        *(v12 + 40) = v11;

        sub_1D5CF5DBC(v35, v34);
        sub_1D6C4D24C(v12 | 0x3000000000000000);
      }
    }

    else if ((4 * v36[18]) | (*&v36[16] >> 11) & 3)
    {
      return sub_1D6273544(result, *&v35[0]);
    }

    else
    {
      return sub_1D62744A4(result, *&v35[0]);
    }
  }

  else if (((4 * v36[18]) | (*&v36[16] >> 11) & 3) <= 5u)
  {
    if (v6 == 4)
    {
      *v34 = v35[0];
      v34[16] = v3;
      *&v34[17] = v3 >> 8;
      v34[23] = (*&v34[17] | (((DWORD1(v3) >> 8) | (BYTE7(v3) << 16)) << 32)) >> 48;
      *&v34[21] = DWORD1(v3) >> 8;
      *&v34[24] = *(&v3 + 1);
      *&v34[32] = *v36;
      *&v34[48] = *&v36[16] & 0xE7FF;
      return sub_1D629D858(result);
    }

    else
    {
      v16 = result;

      sub_1D62747C4(v16, *v36);
    }
  }

  else if (v6 == 6)
  {
    if ((*&v35[0] >> 62) - 2 < 2)
    {
      return result;
    }

    v9 = v2;
    if (!(*&v35[0] >> 62))
    {
      if (*(*&v35[0] + 40))
      {
        return result;
      }

      v21 = *(*&v35[0] + 16);
      v20 = *(*&v35[0] + 24);
      v22 = *(*&v35[0] + 32);
      *v34 = v21;
      *&v34[8] = v20;
      *&v34[16] = v22;
      LOBYTE(v31) = 1;
      v23 = v21;
      v24 = v20;
      v25 = v22;
LABEL_35:
      sub_1D5D27950(v23, v24, v25, 0);
      sub_1D5D27950(v21, v20, v22, 0);
      v26 = sub_1D703E0C8(v34, &v31);
      if (v9)
      {
        return sub_1D5D28C84(v21, v20, v22, 0);
      }

      v27 = v26;
      v28 = swift_allocObject();
      *(v28 + 16) = v21;
      *(v28 + 24) = v20;
      *(v28 + 32) = v27;
      *(v28 + 40) = 0;

      sub_1D6C4D24C(v28 | 0x3000000000000000);
      sub_1D5D28C84(v21, v20, v22, 0);
    }

    v18 = *((*&v35[0] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v17 = *((*&v35[0] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v19 = result;

    sub_1D5F33D5C(v17);
    sub_1D6273544(v19, v18);
    if (!v2)
    {
      *v34 = v17;
      sub_1D5F33D5C(v17);
      sub_1D628A8D0(v19);
      sub_1D5F33D8C(v17);
    }

    return sub_1D5F33D8C(v17);
  }

  else
  {
    if (v6 == 7)
    {
      if ((*&v35[0] >> 62) < 2)
      {
        return result;
      }

      if (*&v35[0] >> 62 == 3)
      {
        v7 = *((*&v35[0] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *v34 = *((*&v35[0] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v8 = result;
        swift_retain_n();

        sub_1D6298B34(v8);
        if (v2)
        {
        }

        else
        {

          sub_1D627496C(v8, v7);
          swift_bridgeObjectRelease_n();
        }
      }

      if (*((*&v35[0] & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
      {
        return result;
      }

      v21 = *((*&v35[0] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v20 = *((*&v35[0] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v22 = *((*&v35[0] & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      *v34 = v21;
      *&v34[8] = v20;
      *&v34[16] = v22;
      LOBYTE(v31) = 6;
      v23 = v21;
      v24 = v20;
      v25 = v22;
      v9 = v2;
      goto LABEL_35;
    }

    v13 = *(*&v35[0] + 32);
    *v34 = *(*&v35[0] + 16);
    *&v34[16] = v13;
    *&v34[32] = *(*&v35[0] + 48);
    *&v34[43] = *(*&v35[0] + 59);
    v14 = *v34;
    v15 = result;
    sub_1D62B6438(v34, &v31, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
    sub_1D6274320(v15, v14);
    if (!v2)
    {
      v31 = *&v34[8];
      v32 = *&v34[24];
      v33[0] = *&v34[40];
      *(v33 + 15) = *&v34[55];
      sub_1D62B6438(&v34[8], v29, qword_1EDF2EEF8, type metadata accessor for FormatSwitchValue.DefaultValue);
      sub_1D629D254(v15);
      v29[0] = v31;
      v29[1] = v32;
      v30[0] = v33[0];
      *(v30 + 15) = *(v33 + 15);
      sub_1D5CF603C(v29);
    }

    return sub_1D62B6514(v34);
  }
}

uint64_t sub_1D629D7C4(unint64_t a1)
{
  v3 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v8[1] = v3;
  v9[0] = *(v1 + 48);
  *(v9 + 15) = *(v1 + 63);
  sub_1D5CF5DBC(v8, v6);
  sub_1D629D254(a1);
  v4 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v4;
  v7[0] = *(v1 + 48);
  *(v7 + 15) = *(v1 + 63);
  return sub_1D5CF603C(v6);
}

uint64_t sub_1D629D858(uint64_t result)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = v9 >> 13;
  if (v9 >> 13 > 2)
  {
    if (v10 == 3)
    {
      if (*(v1 + 24))
      {
        return result;
      }

      v18 = *v1;
      v19 = v3;
      v20 = v5;
      v14 = 6;
    }

    else
    {
      if (*(v1 + 24))
      {
        return result;
      }

      v18 = *v1;
      v19 = v3;
      v20 = v5;
      v14 = 1;
    }

    v21 = v14;
    sub_1D62B78B4(v4, v3, v5, v6, v7, v8, v9);
    result = sub_1D703E0C8(&v18, &v21);
    if (!v2)
    {
      v15 = result;
      v16 = swift_allocObject();
      *(v16 + 16) = v4;
      *(v16 + 24) = v3;
      *(v16 + 32) = v15;
      *(v16 + 40) = 0;

      sub_1D6C4D24C(v16 | 0x3000000000000000);
    }
  }

  else if (v10 >= 2)
  {
    v11 = (v9 >> 7) & 0x3E | (v9 >> 3) & 1;
    if (v11 - 5 >= 0xA && v11 >= 2)
    {
      if (v11 - 3 >= 2)
      {
        if ((v9 & 0xF0) == 0x30)
        {
          v18 = *v1;
          v19 = v3;
          LOWORD(v20) = v5;
          return sub_1D62921EC(result);
        }
      }

      else
      {
        v18 = *v1;
        v19 = v3;
        v20 = v5;
        v21 = 5;
        sub_1D62B78B4(v4, v3, v5, v6, v7, v8, v9);

        v13 = sub_1D703E0C8(&v18, &v21);

        if (v2)
        {
        }

        else
        {
          v17 = swift_allocObject();
          *(v17 + 16) = v4;
          *(v17 + 24) = v3;
          *(v17 + 32) = v13;
          *(v17 + 40) = 0;
          sub_1D6C4D24C(v17 | 0x3000000000000000);
        }
      }
    }
  }

  return result;
}

unint64_t sub_1D629DA88(unint64_t result)
{
  v3 = *(v1 + 16);
  if ((v3 & 0xF000000000000007) != 0x7000000000000007)
  {
    v4 = v3 >> 62;
    if (((v3 >> 57) & 0xF8 | v3 & 7 | 0x20) != 0x7F && v4 >= 2)
    {
      if (v4 == 2)
      {
        if (!*((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
        {
          v9 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v8 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v10 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v15[0] = v9;
          v15[1] = v8;
          v15[2] = v10;
          v14 = 6;
          sub_1D5D27950(v9, v8, v10, 0);
          sub_1D5D27950(v9, v8, v10, 0);
          sub_1D614F63C(v3);
          v11 = sub_1D703E0C8(v15, &v14);
          if (v2)
          {
            sub_1D5D28C84(v9, v8, v10, 0);
          }

          else
          {
            v12 = v11;
            v13 = swift_allocObject();
            *(v13 + 16) = v9;
            *(v13 + 24) = v8;
            *(v13 + 32) = v12;
            *(v13 + 40) = 0;

            sub_1D6C4D24C(v13 | 0x3000000000000000);
            sub_1D5D28C84(v9, v8, v10, 0);
          }

          return sub_1D614F680(v3);
        }
      }

      else
      {
        v6 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v15[0] = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v7 = result;
        sub_1D614F63C(v3);
        swift_retain_n();

        sub_1D6298B34(v7);
        if (v2)
        {
        }

        else
        {

          sub_1D627496C(v7, v6);
          swift_bridgeObjectRelease_n();
        }

        return sub_1D614F680(v3);
      }
    }
  }

  return result;
}

uint64_t sub_1D629DCA4(uint64_t result)
{
  v2 = *(v1 + 16);
  if ((v2 & 0xF000000000000007) != 0x7000000000000007 && ((v2 >> 57) & 0xF8 | v2 & 7 | 0x20) != 0x7F)
  {
    return sub_1D6298B34(result);
  }

  return result;
}

uint64_t sub_1D629DD00(uint64_t a1)
{
  if ((*v1 & 0x8000000000000000) == 0)
  {
    return sub_1D62881C8(a1);
  }

  swift_retain_n();
  sub_1D629DD00(a1);
  if (!v2)
  {

    sub_1D629DD00(a1);
  }
}

uint64_t sub_1D629DE2C(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  result = sub_1D6273544(a1, v4);
  if (!v2 && v5 >= 2)
  {
    return sub_1D6273544(a1, v5);
  }

  return result;
}

uint64_t sub_1D629DE6C(uint64_t result)
{
  if (((*v1 >> 57) & 0xF8 | *v1 & 7 | 0x20) != 0x7F)
  {
    return sub_1D6298B34(result);
  }

  return result;
}

uint64_t sub_1D629DEB4(uint64_t result)
{
  if ((~*v1 & 0xF000000000000007) != 0)
  {
    v2 = result;

    sub_1D62895DC(v2);
  }

  return result;
}

uint64_t sub_1D629DF14(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = sub_1D726393C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, v2 + *(a2 + 52), v6, v9);
  if ((*(*(v5 - 8) + 48))(v11, 1, v5) == 1)
  {
    (*(v7 + 8))(v11, v6);
LABEL_6:
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    return sub_1D5BFB774(&v15, &qword_1EC8854D8, &qword_1EC8854D0);
  }

  sub_1D5B49474(0, &qword_1EC8854D0);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v12 = *(&v16 + 1);
  if (*(&v16 + 1))
  {
    v13 = v17;
    __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    (*(v13 + 8))(a1, v12, v13);
    return __swift_destroy_boxed_opaque_existential_1(&v15);
  }

  return sub_1D5BFB774(&v15, &qword_1EC8854D8, &qword_1EC8854D0);
}

unint64_t sub_1D629E120(unint64_t a1)
{
  v4 = *(v1 + 8);

  sub_1D62895DC(a1);

  if (!v2)
  {
    return sub_1D6273600(a1, v4);
  }

  return result;
}

uint64_t sub_1D629E18C(uint64_t a1)
{
  v5 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v10 = *(v1 + 48);

  sub_1D6273544(a1, v5);

  if (!v2)
  {
    if (v7)
    {
      sub_1D5C75A4C(v4, v6, 1);
      sub_1D5C75A4C(v4, v6, 1);
      v12 = sub_1D5E26E28(&unk_1F5113270);
      v13 = swift_allocObject();
      *(v13 + 16) = v4;
      *(v13 + 24) = v6;
      *(v13 + 32) = v12;
      *(v13 + 40) = 0;
      sub_1D6C4D24C(v13 | 0x3000000000000000);
      sub_1D5D2F2C8(v4, v6, 1);
    }

    sub_1D6273544(a1, v9);

    sub_1D6273544(a1, v8);

    sub_1D6273544(a1, v10);
  }

  return result;
}

uint64_t sub_1D629E314(uint64_t a1)
{
  v5 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v10 = *(v1 + 48);

  sub_1D6273544(a1, v5);

  if (!v2)
  {
    if (v7)
    {
      sub_1D5C75A4C(v4, v6, 1);
      sub_1D5C75A4C(v4, v6, 1);
      v12 = sub_1D5E26E28(&unk_1F5113248);
      v13 = swift_allocObject();
      *(v13 + 16) = v4;
      *(v13 + 24) = v6;
      *(v13 + 32) = v12;
      *(v13 + 40) = 0;
      sub_1D6C4D24C(v13 | 0x3000000000000000);
      sub_1D5D2F2C8(v4, v6, 1);
    }

    if (v9)
    {
      sub_1D6273544(a1, v9);
    }

    sub_1D6273544(a1, v8);

    sub_1D6273544(a1, v10);
  }

  return result;
}

uint64_t sub_1D629E474(uint64_t result)
{
  v2 = *(v1 + 56);
  if (!(v2 >> 6))
  {
    return sub_1D629E314(result);
  }

  if (v2 >> 6 == 1)
  {
    return sub_1D629E18C(result);
  }

  return result;
}

uint64_t sub_1D629E538(uint64_t result)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 66);
  v8 = *(v1 + 64);
  if ((*(v1 + 8) & 1) == 0)
  {
    v20 = *(v1 + 40);
    v9 = *v1;
    v10 = result;
    result = sub_1D6273544(result, v9);
    if (v2)
    {
      return result;
    }

    result = v10;
    LOBYTE(v6) = v20;
  }

  v11 = v8 | (v7 << 16);
  if ((v11 & 0x80000000) == 0)
  {
    return sub_1D6273544(result, v3);
  }

  v12 = (v11 >> 13) & 8 | (v11 >> 11) & 7;
  if (v12 > 3)
  {
    if (((1 << v12) & 0x330) != 0)
    {
      return result;
    }

    if (v12 != 6)
    {
      return sub_1D690A374(result);
    }

    if (v6 >> 6 && v6 >> 6 != 1)
    {
      if ((v6 & 0x3F) == 1 && (v4 & 0xF000000000000007) != 0xF000000000000007)
      {
        goto LABEL_16;
      }

      return result;
    }

    goto LABEL_24;
  }

  if ((v12 - 1) < 2)
  {
    return result;
  }

  if (v12)
  {
    goto LABEL_24;
  }

  v16 = (v6 >> 3) & 7;
  if (v16 <= 1)
  {
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v5 == 1;
    }

    if (!v18 || (v3 & 0xF000000000000007) == 0xF000000000000007)
    {
      return result;
    }

LABEL_26:
    v17 = result;

    v15 = v17;
    goto LABEL_27;
  }

  if (v16 == 2 || v16 == 3 || !(v6 >> 6) || v6 >> 6 == 1)
  {
LABEL_24:
    if (v5 != 1 || (v3 & 0xF000000000000007) == 0xF000000000000007)
    {
      return result;
    }

    goto LABEL_26;
  }

  if ((v6 & 7) == 1 && (v4 & 0xF000000000000007) != 0xF000000000000007)
  {
LABEL_16:
    v14 = result;

    v15 = v14;
LABEL_27:
    sub_1D6E5C118(v15);
  }

  return result;
}

uint64_t sub_1D629E768(uint64_t result)
{
  if ((*(v1 + 8) & 1) == 0)
  {
    return sub_1D6273544(result, *v1);
  }

  return result;
}

uint64_t sub_1D629E78C(uint64_t a1)
{
  if (((*(v1 + 48) | (*(v1 + 50) << 16)) & 0x800000) != 0)
  {
    return sub_1D628DEA4(a1);
  }

  else
  {
    return sub_1D6273544(a1, *v1);
  }
}

uint64_t sub_1D629E820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];

  sub_1D6EE4610(a1);

  if (!v2)
  {
    if (v4)
    {
      result = sub_1D6273544(a1, v4);
    }

    if ((~v5 & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }

    if ((~v6 & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }
  }

  return result;
}

uint64_t sub_1D629E924(unint64_t a1)
{
  v29 = a1;
  sub_1D5C5A0E0(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v28 - v4;
  sub_1D5C5A0E0(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v28 - v8;
  sub_1D5C5A0E0(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v28 - v12;
  sub_1D5C5A0E0(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v28 - v16;
  sub_1D5C5A0E0(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v28 - v20;
  v22 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62B50EC(v1, v25, type metadata accessor for FormatPropertyDefinition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D62B6DB8(v25, v21);
      if ((~*(v21 + 9) & 0xF000000000000007) != 0)
      {
        v30 = *(v21 + 9);

        sub_1D62895DC(v29);
      }

      return sub_1D62B6E54(v21);
    }

    return sub_1D62B51D0(v25, type metadata accessor for FormatPropertyDefinition);
  }

  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload == 9)
    {
      sub_1D62B6808(v25, v13);
      if ((~*(v13 + 9) & 0xF000000000000007) != 0)
      {
        v30 = *(v13 + 9);

        sub_1D629CE04(v29);
      }

      return sub_1D62B68A4(v13);
    }

    else if (EnumCaseMultiPayload == 10)
    {
      sub_1D62B66D8(v25, v9);
      if ((~*(v9 + 9) & 0xF000000000000007) != 0)
      {
        v30 = *(v9 + 9);

        sub_1D6290ACC(v29);
      }

      return sub_1D62B6774(v9);
    }

    else
    {
      sub_1D62B65A8(v25, v5);
      if ((~*(v5 + 9) & 0xF000000000000007) != 0)
      {
        v30 = *(v5 + 9);

        sub_1D629D0A0(v29);
      }

      return sub_1D62B6644(v5);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 7)
    {
      return sub_1D62B51D0(v25, type metadata accessor for FormatPropertyDefinition);
    }

    sub_1D62B6938(v25, v17);
    if ((~*(v17 + 9) & 0xF000000000000007) != 0)
    {
      v30 = *(v17 + 9);

      sub_1D6287A8C(v29);
    }

    return sub_1D62B69D4(v17);
  }
}

uint64_t sub_1D629EE1C(uint64_t result)
{
  v2 = *(v1 + 8);
  if (v2 >= 3)
  {
    return sub_1D6273544(result, v2);
  }

  return result;
}

uint64_t sub_1D629EE40(uint64_t a1)
{
  v4 = *(v1 + 56);
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  sub_1D5E1DA6C(*v1, v7, v8, v9, v10, v11, v12);
  sub_1D690A374(a1);
  result = sub_1D5E1DE98(v6, v7, v8, v9, v10, v11, v12);
  if (!v2 && (v4 & 0xF000000000000007) != 0x7000000000000007 && ((v4 >> 57) & 0xF8 | v4 & 7 | 0x20) != 0x7F)
  {
    return sub_1D6298B34(a1);
  }

  return result;
}

uint64_t sub_1D629EF60(uint64_t a1)
{
  v3 = *(v1 + 56);

  sub_1D6273154(a1, v3);
}

uint64_t sub_1D629EFA8(uint64_t a1)
{

  sub_1D6EE4610(a1);
}

uint64_t sub_1D629F02C(uint64_t a1)
{

  sub_1D6298B34(a1);
}

uint64_t sub_1D629F098(uint64_t a1)
{
  v38 = v1[3];
  v39 = v1[4];
  v34 = v1[6];
  v35 = v1[5];
  v40 = v1[7];
  v33 = v1[8];
  v41 = v1[9];
  v32 = v1[10];
  v36 = v1[11];
  v31 = v1[12];
  v37 = v1[13];
  v27 = v1[16];
  v28 = v1[15];
  v29 = v1[17];
  v30 = v1[14];
  v25 = v1[20];
  v26 = v1[18];
  v23 = v1[21];
  v24 = v1[19];
  v21 = v1[23];
  v22 = v1[22];
  v5 = v1[24];
  v4 = v1[25];
  v7 = v1[26];
  v6 = v1[27];
  v9 = v1[28];
  v8 = v1[29];

  sub_1D6298B34(a1);
  if (v2)
  {
  }

  v19 = v4;
  v20 = v5;
  v18 = v7;
  v17 = v9;

  sub_1D6298B34(a1);
  v10 = a1;

  sub_1D6298B34(a1);

  if ((~v38 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
    v13 = v40;
    v12 = v41;

    if ((~v39 & 0xF000000000000007) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = v40;
    v12 = v41;
    if ((~v39 & 0xF000000000000007) == 0)
    {
LABEL_6:
      v15 = v36;
      v14 = v37;
      goto LABEL_9;
    }
  }

  sub_1D6298B34(v10);
  v15 = v36;
  v14 = v37;

LABEL_9:
  if ((~v35 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v34 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v13 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v33 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v12 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v32 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v15 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v31 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v14 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v30 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v28 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v27 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v29 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v26 & 0xF000000000000007) != 0)
  {

    v16 = v10;
    sub_1D6298B34(v10);
  }

  else
  {
    v16 = v10;
  }

  if ((~v24 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v16);
  }

  if ((~v25 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v16);
  }

  if ((~v23 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v16);
  }

  if ((~v22 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v16);
  }

  if ((~v21 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v16);
  }

  if ((~v20 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v16);
  }

  if ((~v19 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v16);
  }

  if ((~v18 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v16);
  }

  if ((~v6 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v16);
  }

  if ((~v17 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v16);
  }

  if ((~v8 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v16);
  }

  return result;
}

uint64_t sub_1D629F940(uint64_t result)
{
  if (*(v1 + 8) == 1)
  {
    return sub_1D62744A4(result, *v1);
  }

  return result;
}

uint64_t sub_1D629F980(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 1);
  *&v14 = *v2;
  *(&v14 + 1) = v10;

  sub_1D6EE4610(a1);

  if (!v3)
  {
    (*(v7 + 16))(v9, &v2[*(a2 + 36)], v6);
    sub_1D5B49474(0, &qword_1EC8854D0);
    if (swift_dynamicCast())
    {
      v12 = *(&v15 + 1);
      v13 = v16;
      __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
      (*(v13 + 8))(a1, v12, v13);
      return __swift_destroy_boxed_opaque_existential_1(&v14);
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      return sub_1D5BFB774(&v14, &qword_1EC8854D8, &qword_1EC8854D0);
    }
  }

  return result;
}

unint64_t sub_1D629FB8C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  sub_1D5C82CD8(*v1);
  sub_1D626D654(a1);
  result = sub_1D5C92A8C(v5);
  if (!v2 && (~v4 & 0xF000000000000007) != 0)
  {
    sub_1D5C82CD8(v4);
    sub_1D626D654(a1);
    return sub_1D5C92A8C(v4);
  }

  return result;
}

uint64_t sub_1D629FC44(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  result = sub_1D6273544(a1, v4);
  if (!v2)
  {
    return sub_1D6273544(a1, v5);
  }

  return result;
}

uint64_t sub_1D629FC7C(unint64_t a1)
{
  swift_beginAccess();
  v4 = v1[9];

  sub_1D626DA28(a1, v4);

  if (!v2)
  {
    swift_beginAccess();
    v6 = v1[11];

    sub_1D627AD20(a1, v6);

    swift_beginAccess();
    v7 = v1[8];

    sub_1D626DB9C(a1, v7);
  }

  return result;
}

uint64_t sub_1D629FD94(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  if (*v1 < 0)
  {
    v6 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

    sub_1D6282B60(v2, v6);
  }

  else if (*(v3 + 40))
  {
    v5 = *(v3 + 24);
    v4 = *(v3 + 32);
    sub_1D5F586D0(v5, v4, 1);
    sub_1D6288E04(v2, v5, v4);
    return sub_1D5F5870C(v5, v4, 1);
  }

  return result;
}

uint64_t sub_1D629FE68(uint64_t result)
{
  if (*(v1 + 24) == 1)
  {
    v4 = v1 + 8;
    v3 = *(v1 + 8);
    v2 = *(v4 + 8);
    v5 = result;
    sub_1D5F586D0(v3, v2, 1);
    sub_1D6288E04(v5, v3, v2);
    return sub_1D5F5870C(v3, v2, 1);
  }

  return result;
}

uint64_t sub_1D629FEE0(uint64_t result)
{
  if (*(v1 + 16) == 1)
  {
    return sub_1D6288E04(result, *v1, *(v1 + 8));
  }

  return result;
}

uint64_t sub_1D629FF08(unint64_t a1)
{
  v3 = *(v1 + 8);

  sub_1D626DA28(a1, v3);
}

uint64_t sub_1D629FF8C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];

  sub_1D6273544(a1, v5);

  if (!v2)
  {

    sub_1D6273544(a1, v4);
  }

  return result;
}

uint64_t sub_1D62A0004(uint64_t a1)
{
  if ((*(v1 + 64) & 1) == 0)
  {
    return sub_1D62895DC(a1);
  }

  v4 = *(v1 + 48);
  v3 = *(v1 + 56);
  result = sub_1D627683C(a1, *v1);
  if (!v2)
  {
    if (v4)
    {

      sub_1D6273544(a1, v4);
      sub_1D6273544(a1, v3);
      return sub_1D5CDE22C(v4);
    }
  }

  return result;
}

uint64_t sub_1D62A0100(unint64_t a1)
{
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[5];

  sub_1D6EE4610(a1);

  if (!v2)
  {
    if ((~v5 & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }

    if ((~v4 & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }

    if (v6)
    {
      if (v6 != 1)
      {
        if (v6 != 2)
        {
          v8 = *(v6 + 16);
          v9 = *(v6 + 24);
          sub_1D5D0A59C(v6);
          sub_1D5D0A57C(v8);
          sub_1D5D0A57C(v9);
          sub_1D62886C0(a1, v8, v9);
          sub_1D5D0A58C(v8);
          sub_1D5D0A58C(v9);
          return sub_1D5D0A5AC(v6);
        }

        return result;
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    return sub_1D5D0A5AC(v10);
  }

  return result;
}

unint64_t sub_1D62A0290(unint64_t result)
{
  v2 = *v1;
  if (*v1 >= 2)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24);
    v5 = result;
    sub_1D5D0A57C(v3);
    sub_1D5D0A57C(v4);
    sub_1D62886C0(v5, v3, v4);
    sub_1D5D0A58C(v3);
    return sub_1D5D0A58C(v4);
  }

  return result;
}

uint64_t sub_1D62A0338(uint64_t result)
{
  if ((*(v1 + 48) & 1) == 0)
  {
    return sub_1D626C9C8(result);
  }

  return result;
}

uint64_t sub_1D62A0360(uint64_t result)
{
  if ((*(v1 + 32) & 1) == 0)
  {
    return sub_1D626C9C8(result);
  }

  return result;
}

uint64_t sub_1D62A0388(uint64_t *a1)
{
  v3 = v1;
  swift_beginAccess();
  v14 = v1[4];
  sub_1D5C82CD8(v14);
  sub_1D626D654(a1);
  if (v2)
  {
    return sub_1D5C92A8C(v14);
  }

  sub_1D5C92A8C(v14);
  swift_beginAccess();
  v6 = v1[6];

  sub_1D6274044(a1, v6);

  sub_1D627B648(a1, v3[9]);
  result = swift_beginAccess();
  v7 = v3[11];
  if (v7 >> 62 == 1)
  {
    v8 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v3[11]);
    sub_1D5EB1500(v8);

    sub_1D6288D68(a1, v8, v9);
    sub_1D5EB15C4(v8);

    result = sub_1D5EB15C4(v7);
  }

  v10 = v3[13];
  if (v10)
  {
    swift_beginAccess();
    v11 = *(v10 + 72);
    if (v11)
    {

      sub_1D62707E8(a1, v11);
    }

    swift_beginAccess();
    v12 = *(v10 + 88);

    sub_1D6272D88(a1, v12);
  }

  if (v3[15])
  {
    v13 = v3[19];

    sub_1D5DEA234(v13);

    sub_1D626D2A0(a1);

    sub_1D5CBF568(v13);
  }

  return result;
}

uint64_t sub_1D62A064C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *(v4 + 32);

  a4(a1, v7);
}

uint64_t sub_1D62A06A4(uint64_t *a1)
{
  v5 = v1[6];
  v4 = v1[7];
  v6 = v1[8];

  sub_1D626DEC0(a1, v5);

  if (!v2)
  {

    sub_1D627AD20(a1, v4);

    sub_1D626DA28(a1, v6);
  }

  return result;
}

unint64_t sub_1D62A0750(unint64_t a1)
{

  sub_1D6287A8C(a1);

  if (!v1)
  {
    return sub_1D62938C4(a1);
  }

  return result;
}

uint64_t sub_1D62A07BC(uint64_t *a1)
{
  v5 = v1[6];
  v4 = v1[7];
  v6 = v1[8];
  v8 = v1[11];
  v7 = v1[12];
  if (v4)
  {
    swift_beginAccess();
    v9 = *(v4 + 56);

    sub_1D626FF20(a1, v9);

    if (v2)
    {
      return result;
    }

    if (*(v4 + 74) != 255)
    {
      v11 = *(v4 + 72) | (*(v4 + 74) << 16);
      v12 = *(v4 + 64);
      sub_1D610CA74(v12, v11, SBYTE2(v11), sub_1D610CA28, sub_1D610CA5C);
      sub_1D628F694(a1);
      sub_1D610CA74(v12, v11, SBYTE2(v11), sub_1D60CF6A8, sub_1D60CF6DC);
    }
  }

  sub_1D626DEC0(a1, v6);

  if (!v2)
  {

    sub_1D626DA28(a1, v8);

    sub_1D627AD20(a1, v7);

    sub_1D626DB9C(a1, v5);
  }

  return result;
}

uint64_t sub_1D62A09D4(uint64_t *a1)
{
  v3 = v1;
  v10 = v1[6];
  sub_1D5C82CD8(v10);
  sub_1D626D654(a1);
  result = sub_1D5C92A8C(v10);
  if (!v2)
  {
    swift_beginAccess();
    v6 = v1[8];

    sub_1D6274044(a1, v6);

    swift_beginAccess();
    v7 = v3[9];

    sub_1D626DEC0(a1, v7);

    swift_beginAccess();
    v8 = v3[11];

    sub_1D626DA28(a1, v8);

    if (v3[15])
    {
      v9 = v3[19];

      sub_1D5DEA234(v9);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v9);
    }
  }

  return result;
}

unint64_t sub_1D62A0BAC(unint64_t result)
{
  v2 = *v1;
  if ((*(v1 + 9) & 1) == 0)
  {
    return sub_1D6273544(result, v2);
  }

  v3 = *(v1 + 8);
  if (v3 <= 1)
  {
    if (*(v1 + 8))
    {
      if (v2)
      {
        if (v2 == 1)
        {
          v4 = 1;
        }

        else
        {
          v11 = result;
          v12 = v2;
          sub_1D610CA34(v2, 1u);
          sub_1D6273544(v11, v12);
          v4 = v12;
          LOBYTE(v2) = 1;
        }
      }

      else
      {
        v4 = 0;
        LOBYTE(v2) = 1;
      }
    }

    else if (v2)
    {
      if (v2 == 1)
      {
        v4 = 1;
      }

      else
      {
        v9 = result;
        v10 = v2;
        sub_1D610CA34(v2, 0);
        sub_1D6273544(v9, v10);
        v4 = v10;
      }

      LOBYTE(v2) = 0;
    }

    else
    {
      v4 = 0;
    }
  }

  else if (v3 == 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v4 = 1;
      }

      else
      {
        v5 = result;
        v6 = v2;
        sub_1D610CA34(v2, 2u);
        sub_1D6273544(v5, v6);
        v4 = v6;
      }

      LOBYTE(v2) = 2;
    }

    else
    {
      v4 = 0;
      LOBYTE(v2) = 2;
    }
  }

  else
  {
    if (v3 != 3)
    {
      return result;
    }

    if (v2)
    {
      if (v2 == 1)
      {
        v4 = 1;
      }

      else
      {
        v7 = result;
        v8 = v2;
        sub_1D610CA34(v2, 3u);
        sub_1D6273544(v7, v8);
        v4 = v8;
      }

      LOBYTE(v2) = 3;
    }

    else
    {
      v4 = 0;
      LOBYTE(v2) = 3;
    }
  }

  return sub_1D60CF6A8(v4, v2, 1);
}

uint64_t sub_1D62A0D94(uint64_t result)
{
  v2 = *v1;
  if (*(v1 + 8) <= 1u)
  {
    if (v2 < 2)
    {
      return result;
    }

    return sub_1D6273544(result, v2);
  }

  if (v2 >= 2)
  {
    return sub_1D6273544(result, v2);
  }

  return result;
}

uint64_t sub_1D62A0E14(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 34);
  v6 = *(v1 + 32);

  sub_1D6EE4610(a1);

  if (!v2)
  {
    v8 = v6 | (v5 << 16);
    if (BYTE2(v8) != 255)
    {
      sub_1D610CA74(v4, v8, SBYTE2(v8), sub_1D610CA28, sub_1D610CA5C);
      sub_1D628F694(a1);
      return sub_1D610CA74(v4, v8, SBYTE2(v8), sub_1D60CF6A8, sub_1D60CF6DC);
    }
  }

  return result;
}

uint64_t sub_1D62A0F74(uint64_t *a1)
{

  sub_1D6285C00(a1);

  if (!v2)
  {
    swift_beginAccess();
    v5 = *(v1 + 24);

    sub_1D626DB9C(a1, v5);
  }

  return result;
}

uint64_t sub_1D62A1040(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);

  sub_1D626DB9C(a1, v4);
}

void sub_1D62A10B8(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v37[-v11];
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v15 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D62809AC(a1, v15);
      if (!v2)
      {
        sub_1D62A10B8(a1, v16);
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (!v13)
    {
      v14 = swift_projectBox();
      sub_1D62B50EC(v14, v12, type metadata accessor for FormatCommandOpenURL);
      sub_1D62B50EC(v12, v8, type metadata accessor for FormatCommandOpenURL);
      if (swift_getEnumCaseMultiPayload() <= 1)
      {
        sub_1D62B51D0(v12, type metadata accessor for FormatCommandOpenURL);
        sub_1D62B51D0(v8, type metadata accessor for FormatCommandOpenURL);
        return;
      }

      v29 = *v8;
      v28 = v8[1];
      v30 = v8[2];
      v39 = v29;
      v40 = v28;
      v41 = v30;
      v38 = 6;

      v31 = sub_1D703E0C8(&v39, &v38);
      if (v2)
      {
        sub_1D62B51D0(v12, type metadata accessor for FormatCommandOpenURL);

LABEL_9:

        return;
      }

      v35 = v31;

      v36 = swift_allocObject();
      *(v36 + 16) = v29;
      *(v36 + 24) = v28;
      *(v36 + 32) = v35;
      *(v36 + 40) = 0;
      sub_1D6C4D24C(v36 | 0x3000000000000000);

      sub_1D62B51D0(v12, type metadata accessor for FormatCommandOpenURL);
      return;
    }

    v17 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    v20 = *(v17 + 32);
    v21 = *(v17 + 40);
    v22 = *(v17 + 64);
    if (*(v17 + 66))
    {
      v23 = 8;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23 & 0xFFFFFFF8 | (v22 >> 11) & 7;
    if (v24 > 3)
    {
      if (((1 << v24) & 0x330) != 0)
      {
        return;
      }

      if (v24 != 6)
      {
        v39 = *(v17 + 16);
        v40 = v18;
        v41 = v20;
        v42 = v21;
        v43 = *(v17 + 48);
        v44 = v22 & 0xC7FF;
        sub_1D690A374(a1);
        return;
      }

      if (v21 >> 6 && v21 >> 6 != 1)
      {
        if ((v21 & 0x3F) != 1 || (v18 & 0xF000000000000007) == 0xF000000000000007)
        {
          return;
        }

        v39 = *(v17 + 24);

        v26 = v18;
LABEL_39:
        sub_1D5CFCFAC(v26);
        sub_1D6E5C118(a1);

        return;
      }

      goto LABEL_33;
    }

    if ((v24 - 1) < 2)
    {
      return;
    }

    if (v24)
    {
      goto LABEL_33;
    }

    v27 = (v21 >> 3) & 7;
    if (v27 <= 1)
    {
      v32 = v19 & 0xF000000000000007;
      if (v27)
      {
        v33 = 0;
      }

      else
      {
        v33 = *(v17 + 32) == 1;
      }

      goto LABEL_34;
    }

    if (v27 == 2)
    {
LABEL_33:
      v32 = v19 & 0xF000000000000007;
      v33 = *(v17 + 32) == 1;
LABEL_34:
      if (!v33 || v32 == 0xF000000000000007)
      {
        return;
      }

      goto LABEL_38;
    }

    if (v27 != 3)
    {
      v39 = *(v17 + 16);
      v40 = v18;
      v41 = v20;
      LOBYTE(v42) = v21 & 0xC7;
      sub_1D628E970(a1);
      return;
    }

    if (*(v17 + 32) == 1 && (v19 & 0xF000000000000007) != 0xF000000000000007)
    {
LABEL_38:
      v39 = *(v17 + 16);

      v26 = v19;
      goto LABEL_39;
    }
  }
}

uint64_t sub_1D62A14D8(uint64_t *a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = *v2;

  sub_1D6285C00(a1);

  if (!v3)
  {
    (*(v7 + 16))(v9, &v2[*(a2 + 36)], v6);
    sub_1D5B49474(0, &qword_1EC8854D0);
    if (swift_dynamicCast())
    {
      v11 = *(&v14 + 1);
      v12 = v15;
      __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
      (*(v12 + 8))(a1, v11, v12);
      return __swift_destroy_boxed_opaque_existential_1(&v13);
    }

    else
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      return sub_1D5BFB774(&v13, &qword_1EC8854D8, &qword_1EC8854D0);
    }
  }

  return result;
}

uint64_t sub_1D62A16A8(uint64_t a1)
{

  sub_1D6290ACC(a1);
}

uint64_t sub_1D62A16FC(uint64_t result)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    return sub_1D6273544(result, v2);
  }

  return result;
}

uint64_t sub_1D62A171C(uint64_t a1, void (*a2)(uint64_t))
{

  a2(a1);

  if (!v2)
  {

    a2(a1);
  }

  return result;
}

unint64_t sub_1D62A17B0(unint64_t result)
{
  v3 = result;
  v4 = *v1;
  v5 = *v1 >> 62;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      return result;
    }

    v7 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    sub_1D5F33D5C(v8);

    sub_1D5F33D5C(v8);
    sub_1D62A17B0(v3);
    sub_1D5F33D8C(v8);
    if (v2)
    {

      return sub_1D5F33D8C(v8);
    }

    sub_1D62845E4(v3, v9);
    sub_1D5F33D8C(v8);
  }

  else
  {
    if (v5)
    {
      return sub_1D62895DC(result);
    }

    v6 = *(v4 + 16);

    sub_1D627683C(v3, v6);
  }
}

uint64_t sub_1D62A190C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  sub_1D6290ACC(a1);

  if (!v2)
  {

    sub_1D6273544(a1, v4);

    sub_1D6273544(a1, v5);
  }

  return result;
}

uint64_t sub_1D62A19EC(uint64_t result)
{
  if ((~*v1 & 0xF000000000000007) != 0)
  {
    v2 = result;

    sub_1D6E5C118(v2);
  }

  return result;
}

uint64_t sub_1D62A1A50()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v4 == 2)
    {
      if ((v3 & 1) == 0)
      {
        return result;
      }

      v5 = &unk_1F50F4600;
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        return result;
      }

      v5 = &unk_1F50F4628;
    }
  }

  else if (v4)
  {
    if ((v3 & 1) == 0)
    {
      return result;
    }

    v5 = &unk_1F50F45D8;
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      return result;
    }

    v5 = &unk_1F50F45B0;
  }

  sub_1D5E1DCD0(*v0);
  v6 = sub_1D5E26E28(v5);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  sub_1D6C4D24C(v7 | 0x3000000000000000);
}

uint64_t sub_1D62A1B54()
{
  if (*(v0 + 16) == 1)
  {
    v3 = v0;
    v1 = *v0;
    v2 = *(v3 + 8);
    sub_1D5C75A4C(v1, v2, 1);
    v4 = sub_1D5E26E28(&unk_1F5112910);
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v2;
    *(v5 + 32) = v4;
    *(v5 + 40) = 0;
    sub_1D6C4D24C(v5 | 0x3000000000000000);
  }

  return result;
}

uint64_t sub_1D62A1C38(unint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);

  sub_1D6297BE8(a1);

  if (!v2)
  {
    if (v6)
    {
      sub_1D5C75A4C(v4, v5, 1);
      sub_1D5C75A4C(v4, v5, 1);
      v8 = sub_1D5E26E28(&unk_1F5113388);
      v9 = swift_allocObject();
      *(v9 + 16) = v4;
      *(v9 + 24) = v5;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      sub_1D6C4D24C(v9 | 0x3000000000000000);
      sub_1D5D2F2C8(v4, v5, 1);
    }
  }

  return result;
}

uint64_t sub_1D62A1D20(unint64_t a1)
{

  sub_1D6E5C118(a1);

  if (!v1)
  {

    sub_1D6298B34(a1);
  }

  return result;
}

uint64_t sub_1D62A1DA4(uint64_t result)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 > 2)
  {
    if (v4 > 4)
    {
      if (v4 != 5)
      {
        return result;
      }
    }

    else
    {
      v5 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      if (v4 == 3)
      {
        v6 = *(v5 + 16);
        v7 = result;

        v8 = v7;
LABEL_14:
        sub_1D6283BF0(v8, v6);
      }
    }

    return sub_1D6E5C118(result);
  }

  if (!v4)
  {
    return sub_1D626D654(result);
  }

  v9 = result;
  v10 = v3 & 0x1FFFFFFFFFFFFFFFLL;
  if (v4 != 1)
  {
    v6 = *(v10 + 16);

    v8 = v9;
    goto LABEL_14;
  }

  v12 = *(v10 + 16);
  v11 = *(v10 + 24);

  sub_1D5D085B4(v11);
  sub_1D6283CFC(v9, v12);
  if (!v2)
  {
    sub_1D5D085B4(v11);
    sub_1D62A1DA4(v9);
    sub_1D5D05694(v11);
  }

  return sub_1D5D05694(v11);
}

uint64_t sub_1D62A1F24(unint64_t a1)
{

  sub_1D6E5C118(a1);

  if (!v1)
  {

    sub_1D62A1FA8(a1);
  }

  return result;
}

uint64_t sub_1D62A1FA8(uint64_t a1)
{
  v4 = *v1 >> 62;
  if (v4 > 1)
  {

    sub_1D62A1FA8(a1);

    if (v2)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (!v4)
  {
LABEL_5:

    sub_1D62A1FA8(a1);
  }

  v6 = *((*v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

  sub_1D6273544(a1, v6);
}

uint64_t sub_1D62A2098(uint64_t a1)
{

  sub_1D62A1FA8(a1);

  if (!v1)
  {

    sub_1D62A1FA8(a1);
  }

  return result;
}

uint64_t sub_1D62A2138(uint64_t a1)
{

  sub_1D62A1FA8(a1);
}

unint64_t sub_1D62A21BC(unint64_t a1)
{
  v3 = *v1;
  sub_1D5F33D5C(*v1);
  sub_1D628A8D0(a1);
  return sub_1D5F33D8C(v3);
}

uint64_t sub_1D62A2220(unint64_t a1)
{
  v4 = *(v1 + 8);

  sub_1D6E5C118(a1);

  if (!v2)
  {
    return sub_1D6285120(a1, v4);
  }

  return result;
}

uint64_t sub_1D62A2288(unint64_t a1)
{
  v4 = *(v1 + 24);

  sub_1D6E5C118(a1);

  if (!v2)
  {
    if (v4)
    {
      return sub_1D6290E24(a1);
    }
  }

  return result;
}

uint64_t sub_1D62A230C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v52 = v1[2];
  v28 = v1[19];
  v6 = *(v1 + 13);
  v48 = *(v1 + 12);
  v49 = v6;
  v50 = *(v1 + 14);
  v51 = *(v1 + 240);
  v7 = *(v1 + 11);
  v47[0] = *(v1 + 10);
  v47[1] = v7;
  v9 = v1[59];
  v8 = v1[60];
  v10 = v1[61];
  v11 = v1[62];
  v12 = v1[63];
  v13 = v1[65];
  *&v39 = v5;
  *(&v39 + 1) = v4;

  sub_1D6EE4610(a1);
  if (v2)
  {
  }

  if ((~v52 & 0xF000000000000007) != 0)
  {
    *&v39 = v52;

    sub_1D6290ACC(a1);
  }

  v15 = *(v1 + 13);
  v43 = *(v1 + 11);
  v44 = v15;
  v16 = *(v1 + 17);
  v45 = *(v1 + 15);
  v46 = v16;
  v17 = *(v1 + 5);
  v39 = *(v1 + 3);
  v40 = v17;
  v18 = *(v1 + 9);
  v41 = *(v1 + 7);
  v42 = v18;
  result = sub_1D5CFD0B8(&v39);
  if (result != 1)
  {
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v20 = *(v1 + 3);
    v21 = *(v1 + 5);
    v22 = *(v1 + 9);
    v38[2] = *(v1 + 7);
    v38[3] = v22;
    v38[0] = v20;
    v38[1] = v21;
    v23 = *(v1 + 11);
    v24 = *(v1 + 13);
    v25 = *(v1 + 17);
    v38[6] = *(v1 + 15);
    v38[7] = v25;
    v38[4] = v23;
    v38[5] = v24;
    sub_1D5CFD190(v38, v29);
    sub_1D629012C(a1);
    v29[4] = v34;
    v29[5] = v35;
    v29[6] = v36;
    v29[7] = v37;
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    v29[3] = v33;
    result = sub_1D5CFD368(v29);
    v19 = v28;
    if (!v28)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v19 = v28;
  if (v28)
  {
LABEL_10:
    result = sub_1D626FA1C(a1, v19);
  }

LABEL_11:
  if (v51 == 254)
  {
    v26 = v8;
    v27 = v9;
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  *&v38[0] = v48;
  swift_retain_n();
  sub_1D62895DC(a1);

  result = sub_1D5D0ABCC(v47, &qword_1EDF33718, &type metadata for FormatShadow);
  v26 = v8;
  v27 = v9;
  if (v9)
  {
LABEL_15:
    result = sub_1D6273544(a1, v27);
    v26 = v8;
  }

LABEL_16:
  if (v26 != 9)
  {
    if ((~v10 & 0xF000000000000007) != 0)
    {
      *&v38[0] = v10;
      sub_1D62B5D18(v26, v10);
      sub_1D5CFCFAC(v10);
      sub_1D62895DC(a1);
    }

    result = sub_1D62B5D00(v26, v10);
  }

  if (v11 != 9)
  {
    if ((~v12 & 0xF000000000000007) != 0)
    {
      *&v38[0] = v12;
      sub_1D62B5D18(v11, v12);
      sub_1D5CFCFAC(v12);
      sub_1D62895DC(a1);
    }

    result = sub_1D62B5D00(v11, v12);
  }

  if (v13)
  {
    return sub_1D6273544(a1, v13);
  }

  return result;
}

void sub_1D62A2750(unint64_t a1)
{
  v4 = type metadata accessor for FormatPropertyDefinition(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 80);
  if (v9 >> 6)
  {
    if (v9 >> 6 == 1)
    {
      if ((v9 & 1) == 0)
      {
        v10 = *(v1 + 48);
        v11 = *(v10 + 32);
        v15[0] = *(v10 + 16);
        v15[1] = v11;
        v16[0] = *(v10 + 48);
        *(v16 + 15) = *(v10 + 63);
        sub_1D628DEA4(a1);
      }
    }

    else
    {
      v12 = *(v1 + 32);
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = 0;
        while (v14 < *(v12 + 16))
        {
          sub_1D62B50EC(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v8, type metadata accessor for FormatPropertyDefinition);
          sub_1D629E924(a1);
          if (v2)
          {
            sub_1D62B51D0(v8, type metadata accessor for FormatPropertyDefinition);
            return;
          }

          ++v14;
          sub_1D62B51D0(v8, type metadata accessor for FormatPropertyDefinition);
          if (v13 == v14)
          {
            return;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1D62A2920(unint64_t a1)
{
  v4 = type metadata accessor for FormatPropertyDefinition(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 48);
  if (v9 >> 6)
  {
    if (v9 >> 6 == 1)
    {
      if ((v9 & 1) == 0)
      {
        v10 = v1[2];
        v11 = v1[3];
        v13 = v1[4];
        v12 = v1[5];

        sub_1D626C9C8(a1);
        sub_1D5E32940(v10, v11, v13, v12, 0);
      }
    }

    else
    {
      v14 = *v1;
      v15 = *(*v1 + 16);
      if (v15)
      {
        v16 = 0;
        while (v16 < *(v14 + 16))
        {
          sub_1D62B50EC(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, v8, type metadata accessor for FormatPropertyDefinition);
          sub_1D629E924(a1);
          if (v2)
          {
            sub_1D62B51D0(v8, type metadata accessor for FormatPropertyDefinition);
            return;
          }

          ++v16;
          sub_1D62B51D0(v8, type metadata accessor for FormatPropertyDefinition);
          if (v15 == v16)
          {
            return;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_1D62A2B14(uint64_t a1)
{
  v4 = *(v1 + 104);
  if (((v4 >> 12) & 3) == 0)
  {
    return sub_1D690A374(a1);
  }

  v6 = *(v1 + 56);
  v5 = *(v1 + 64);
  v8 = *(v1 + 72);
  v7 = *(v1 + 80);
  v9 = *(v1 + 88);
  v18 = *(v1 + 96);
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + 32);
  v16 = *(v1 + 40);
  v17 = *(v1 + 48);
  sub_1D5E1DA6C(*v1, v12, v13, v14, v15, v16, v17);
  sub_1D690A374(a1);
  if (v2)
  {
    return sub_1D5E1DE98(v11, v12, v13, v14, v15, v16, v17);
  }

  sub_1D5E1DE98(v11, v12, v13, v14, v15, v16, v17);
  sub_1D5E1DA6C(v6, v5, v8, v7, v9, v18, v4 & 0xCFFF);
  sub_1D690A374(a1);
  return sub_1D5E1DE98(v6, v5, v8, v7, v9, v18, v4 & 0xCFFF);
}

uint64_t sub_1D62A2C6C(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v18 = *(v1 + 104);
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + 32);
  v16 = *(v1 + 40);
  v17 = *(v1 + 48);
  sub_1D5E1DA6C(*v1, v12, v13, v14, v15, v16, v17);
  sub_1D690A374(a1);
  result = sub_1D5E1DE98(v11, v12, v13, v14, v15, v16, v17);
  if (!v2)
  {
    sub_1D5E1DA6C(v4, v5, v6, v7, v8, v9, v18);
    sub_1D690A374(a1);
    return sub_1D5E1DE98(v4, v5, v6, v7, v8, v9, v18);
  }

  return result;
}

uint64_t sub_1D62A2DA8(uint64_t *a1)
{
  v4 = *(v1 + 8);

  sub_1D6298B34(a1);

  if (!v2)
  {

    sub_1D627496C(a1, v4);
  }

  return result;
}

uint64_t sub_1D62A2E44(uint64_t result)
{
  if ((~*(v1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = result;

    sub_1D62895DC(v2);
  }

  return result;
}

void sub_1D62A2F14()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v5 = *(v0 + 72);
  v24 = *(v0 + 80);
  v23 = *(v0 + 88);
  v6 = *(v0 + 96);
  if (v1 != 255 && (v1 & 1) != 0)
  {
    v20 = *(v0 + 96);
    v7 = *(v0 + 8);
    v8 = *(v0 + 16);
    v19 = *(v0 + 32);
    sub_1D6189668(v7, v8, v1);
    sub_1D6189668(v7, v8, v1);
    v9 = sub_1D5E26E28(&unk_1F5113158);
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v8;
    *(v10 + 32) = v9;
    *(v10 + 40) = 0;
    sub_1D6C4D24C(v10 | 0x3000000000000000);
    v11 = v8;
    v6 = v20;
    sub_1D60107F0(v7, v11, v1);

    v2 = v19;
  }

  if (v4 != 255 && (v4 & 1) != 0)
  {
    v12 = v2;
    sub_1D6189668(v2, v3, v4);
    sub_1D6189668(v12, v3, v4);
    v13 = sub_1D5E26E28(&unk_1F5113180);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v3;
    *(v14 + 32) = v13;
    *(v14 + 40) = 0;
    sub_1D6C4D24C(v14 | 0x3000000000000000);
    sub_1D60107F0(v12, v3, v4);
  }

  if (v5 != 255 && (v5 & 1) != 0)
  {
    sub_1D6189668(v22, v21, v5);
    sub_1D6189668(v22, v21, v5);
    v15 = sub_1D5E26E28(&unk_1F51131A8);
    v16 = swift_allocObject();
    *(v16 + 16) = v22;
    *(v16 + 24) = v21;
    *(v16 + 32) = v15;
    *(v16 + 40) = 0;
    sub_1D6C4D24C(v16 | 0x3000000000000000);
    sub_1D60107F0(v22, v21, v5);
  }

  if (v6 != 255 && (v6 & 1) != 0)
  {
    sub_1D6189668(v24, v23, v6);
    sub_1D6189668(v24, v23, v6);
    v17 = sub_1D5E26E28(&unk_1F51131D0);
    v18 = swift_allocObject();
    *(v18 + 16) = v24;
    *(v18 + 24) = v23;
    *(v18 + 32) = v17;
    *(v18 + 40) = 0;
    sub_1D6C4D24C(v18 | 0x3000000000000000);
    sub_1D60107F0(v24, v23, v6);
  }
}

uint64_t sub_1D62A324C(uint64_t result)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (*(v1 + 24))
  {
    if ((v5 & 1) == 0)
    {
      return result;
    }

    sub_1D60AFDB4(*v1, *(v1 + 8), v5, 1);
    v6 = sub_1D5E26E28(&unk_1F5113298);
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = v3;
    *(v7 + 32) = v6;
    *(v7 + 40) = 0;
  }

  else
  {
    v9[0] = *v1;
    v9[1] = v3;
    v9[2] = v5;
    v10 = 0;
    sub_1D60AFDB4(v4, v3, v5, 0);
    result = sub_1D703E0C8(v9, &v10);
    if (v2)
    {
      return result;
    }

    v8 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = v3;
    *(v7 + 32) = v8;
    *(v7 + 40) = 0;
  }

  sub_1D6C4D24C(v7 | 0x3000000000000000);
}

uint64_t sub_1D62A337C(unint64_t a1)
{
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);

  sub_1D6287A8C(a1);

  if (!v2)
  {
    if (v4 >= 3)
    {
      result = sub_1D6273544(a1, v4);
    }

    if (v5)
    {
      result = sub_1D62938C4(a1);
    }

    if (v8)
    {
      sub_1D5C75A4C(v6, v7, 1);
      v10 = sub_1D5E26E28(&unk_1F51133B0);
      v11 = swift_allocObject();
      *(v11 + 16) = v6;
      *(v11 + 24) = v7;
      *(v11 + 32) = v10;
      *(v11 + 40) = 0;
      sub_1D6C4D24C(v11 | 0x3000000000000000);
    }
  }

  return result;
}

uint64_t sub_1D62A34F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 112);
  v11[2] = *(v1 + 96);
  v11[3] = v7;
  v11[4] = *(v1 + 128);
  v12 = *(v1 + 144);
  v8 = *(v1 + 80);
  v11[0] = *(v1 + 64);
  v11[1] = v8;
  v9 = *(v1 + 152);

  sub_1D6EE4610(a1);

  if (!v2)
  {
    if (v4)
    {
      result = sub_1D6273544(a1, v4);
    }

    if ((~v5 & 0xF000000000000007) != 0)
    {

      sub_1D62891F0(a1);
    }

    if (v6)
    {
      result = sub_1D626FA1C(a1, v6);
    }

    if (v12 != 254)
    {
      swift_retain_n();
      sub_1D62895DC(a1);

      result = sub_1D5D0ABCC(v11, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    if ((~v9 & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }
  }

  return result;
}

uint64_t sub_1D62A3700(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 104);
  v10[2] = *(v1 + 88);
  v10[3] = v6;
  v10[4] = *(v1 + 120);
  v11 = *(v1 + 136);
  v7 = *(v1 + 72);
  v10[0] = *(v1 + 56);
  v10[1] = v7;
  v8 = *(v1 + 144);

  sub_1D6EE4610(a1);

  if (!v2)
  {
    if ((~v5 & 0xF000000000000007) != 0)
    {

      sub_1D62891F0(a1);
    }

    if (v4)
    {
      result = sub_1D626FA1C(a1, v4);
    }

    if (v11 != 254)
    {
      swift_retain_n();
      sub_1D62895DC(a1);

      result = sub_1D5D0ABCC(v10, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    if (v8)
    {
      return sub_1D6273544(a1, v8);
    }
  }

  return result;
}

uint64_t sub_1D62A3874(uint64_t result)
{
  if (*v1 >> 62 == 1)
  {
    v2 = *v1 & 0x3FFFFFFFFFFFFFFFLL;
    v3 = *(v2 + 0x10);
    v4 = *(v2 + 0x18);
    v5 = result;
    sub_1D5EB1500(*(v2 + 16));

    sub_1D6288D68(v5, v3, v4);
    sub_1D5EB15C4(v3);
  }

  return result;
}

uint64_t sub_1D62A38F4(uint64_t a1)
{
  v3 = *(v1 + 144);
  v9[8] = *(v1 + 128);
  v9[9] = v3;
  v10 = *(v1 + 160);
  v4 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v4;
  v5 = *(v1 + 112);
  v9[6] = *(v1 + 96);
  v9[7] = v5;
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v6;
  v7 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v7;
  result = sub_1D62B4E2C(v9);
  if (result < 2)
  {
    return sub_1D5D04BC4(v9);
  }

  if (result == 2)
  {
    sub_1D5D04BC4(v9);
    return sub_1D62914C8(a1);
  }

  return result;
}

uint64_t sub_1D62A39C8(uint64_t result)
{
  if (*(v1 + 17) <= 2u)
  {
    if (!*(v1 + 17))
    {
      v3 = result;

      sub_1D6290ACC(v3);
    }

    if (*(v1 + 17) == 1)
    {
      v2 = *(v1 + 8);
      if (!v2)
      {
        return result;
      }
    }

    else
    {
      v2 = *v1;
    }

    return sub_1D6273544(result, v2);
  }

  return result;
}

uint64_t sub_1D62A3A64(uint64_t result)
{
  v3 = result;
  v4 = *v1;
  v5 = *v1 >> 62;
  if (v5)
  {
    if (v5 != 1)
    {
      v6 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = *(v6 + 24);
      v14[0] = *(v6 + 16);
      swift_retain_n();

      sub_1D62A3A64(v3);
      if (v2)
      {
      }

      else
      {

        sub_1D62844E8(v3, v7, sub_1D62A3A64);
      }
    }
  }

  else if (*(v4 + 40))
  {
    v9 = *(v4 + 16);
    v8 = *(v4 + 24);
    v10 = *(v4 + 32);
    v14[0] = v9;
    v14[1] = v8;
    v14[2] = v10;
    v15 = 6;
    sub_1D62B6164(v9, v8, v10, 1);
    sub_1D62B6164(v9, v8, v10, 1);
    v11 = sub_1D703E0C8(v14, &v15);
    if (v2)
    {
      return sub_1D62B61A8(v9, v8, v10, 1);
    }

    else
    {
      v12 = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = v9;
      *(v13 + 24) = v8;
      *(v13 + 32) = v12;
      *(v13 + 40) = 0;

      sub_1D6C4D24C(v13 | 0x3000000000000000);
      sub_1D62B61A8(v9, v8, v10, 1);
    }
  }

  return result;
}

uint64_t sub_1D62A3C60(uint64_t result)
{
  v2 = *v1;
  if (*v1 >= 2)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24);
    v5 = result;
    sub_1D5D0A57C(v3);

    sub_1D6288CD4(v5, v3, v4);
    sub_1D5D0A58C(v3);
  }

  return result;
}

uint64_t sub_1D62A3CD8(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 96);

  sub_1D626FB44(a1, v4);
}

uint64_t sub_1D62A3D94(unint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  result = sub_1D5CF6D20(a1, a2);
  if (!v4)
  {
    sub_1D5CFF904(a1, a2, a4);

    sub_1D5D07D58(a1, a2);
  }

  return result;
}

uint64_t sub_1D62A3E3C(uint64_t a1, __int128 *a2)
{
  v6 = a2[5];
  v24[4] = a2[4];
  v24[5] = v6;
  v24[6] = a2[6];
  v7 = a2[1];
  v24[0] = *a2;
  v24[1] = v7;
  v8 = a2[3];
  v24[2] = a2[2];
  v24[3] = v8;
  v9 = *v2;
  v10 = *(*v2 + 32);
  v18 = *(*v2 + 16);
  v19 = v10;
  *v20 = *(v9 + 48);
  *&v20[15] = *(v9 + 63);
  result = sub_1D5CF6D20(a1, a2);
  if (!v3)
  {
    v12 = v2[1];
    v13 = a2[5];
    v21 = a2[4];
    v22 = v13;
    v23 = a2[6];
    v14 = a2[1];
    v18 = *a2;
    v19 = v14;
    v15 = a2[3];
    *v20 = a2[2];
    *&v20[16] = v15;
    v16 = type metadata accessor for FormatCommandValue.CaseValue();
    sub_1D72229B8(a1, &v18, v12, v16, &off_1F51420B8);
    v17 = type metadata accessor for FormatCommandValue.DefaultValue();
    return sub_1D62A44B8(a1, v24, v17);
  }

  return result;
}

uint64_t sub_1D62A3F74(uint64_t result, __int128 *a2)
{
  v3 = a2[5];
  v13[4] = a2[4];
  v13[5] = v3;
  v13[6] = a2[6];
  v4 = a2[1];
  v13[0] = *a2;
  v13[1] = v4;
  v5 = a2[3];
  v6 = *v2;
  v7 = *v2 >> 62;
  v13[2] = a2[2];
  v13[3] = v5;
  if (v7 == 1)
  {
    v8 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
    v9 = v8[2];
    v10 = v8[3];
    v11 = v8[4];
    v12 = result;

    sub_1D5CF6C3C(v12, v13, v9, v10, v11);
  }

  return result;
}

uint64_t sub_1D62A4030(uint64_t result, _OWORD *a2)
{
  v4 = a2[5];
  v9[4] = a2[4];
  v9[5] = v4;
  v9[6] = a2[6];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  if ((*v2 & 0x8000000000000000) != 0)
  {
    v7 = result;
    v8 = *(*((*v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 24);

    sub_1D6E63B28(v7, v9, v8);
    if (!v3)
    {

      sub_1D62A4030(v7, v9);
    }
  }

  return result;
}

uint64_t sub_1D62A40F4(uint64_t a1, _OWORD *a2)
{
  result = sub_1D6E63B28(a1, a2, *(v2 + 24));
  if (!v3)
  {

    sub_1D62A4030(a1, a2);
  }

  return result;
}

uint64_t sub_1D62A4164(uint64_t a1, _OWORD *a2)
{
  v5 = a2[3];
  v6 = a2[5];
  v20 = a2[4];
  v21 = v6;
  v7 = a2[5];
  v22 = a2[6];
  v8 = a2[1];
  v17[0] = *a2;
  v17[1] = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v18 = a2[2];
  v19 = v9;
  v16[4] = v20;
  v16[5] = v7;
  v16[6] = a2[6];
  v16[0] = v11;
  v16[1] = v10;
  v12 = *(v2 + 24);
  v16[2] = v18;
  v16[3] = v5;
  v13 = type metadata accessor for FormatCommandActionValue.CaseValue();
  result = sub_1D72229B8(a1, v16, v12, v13, &off_1F51420D8);
  if (!v3)
  {
    v15 = type metadata accessor for FormatCommandActionValue.DefaultValue();
    return sub_1D62A44B8(a1, v17, v15);
  }

  return result;
}

uint64_t sub_1D62A4264(uint64_t result, _OWORD *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  if ((*v2 & 0x8000000000000000) != 0)
  {
    v6 = result;

    sub_1D62A40F4(v6, v7);
  }

  return result;
}

uint64_t sub_1D62A42E0(uint64_t a1)
{
  result = nullsub_1(a1);
  if (!v1)
  {
    nullsub_1(a1);
    return nullsub_1(a1);
  }

  return result;
}

uint64_t sub_1D62A4398(uint64_t a1, _OWORD *a2)
{
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v10[6] = a2[6];
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  v6 = a2[3];
  v10[2] = a2[2];
  v10[3] = v6;
  v7 = *v2;
  v8 = type metadata accessor for FormatEquationToken();
  return sub_1D72229B8(a1, v10, v7, v8, &off_1F5141078);
}

uint64_t sub_1D62A441C(uint64_t a1, _OWORD *a2)
{
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v10[6] = a2[6];
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  v6 = a2[3];
  v10[2] = a2[2];
  v10[3] = v6;
  v7 = *v2;
  v8 = type metadata accessor for FormatSwitchListValue.CaseValue();
  return sub_1D72229B8(a1, v10, v7, v8, &off_1F5142048);
}

uint64_t sub_1D62A44B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = v6[5];
  v23 = v6[4];
  v24 = v7;
  v25 = v6[6];
  v8 = v6[1];
  v19 = *v6;
  v20 = v8;
  v9 = v6[3];
  v21 = v6[2];
  v22 = v9;
  (*(v10 + 16))(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v4);
  sub_1D5B49474(0, &qword_1EC8854E0);
  if (swift_dynamicCast())
  {
    v12 = *(&v17 + 1);
    v13 = v18;
    __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
    v15[4] = v23;
    v15[5] = v24;
    v15[6] = v25;
    v15[0] = v19;
    v15[1] = v20;
    v15[2] = v21;
    v15[3] = v22;
    (*(v13 + 8))(a1, v15, v12, v13);
    return __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    return sub_1D5BFB774(&v16, &qword_1EC8854E8, &qword_1EC8854E0);
  }
}

uint64_t sub_1D62A467C(uint64_t a1, __int128 *a2)
{
  v6 = a2[5];
  v25[4] = a2[4];
  v25[5] = v6;
  v25[6] = a2[6];
  v7 = a2[1];
  v25[0] = *a2;
  v25[1] = v7;
  v8 = a2[3];
  v9 = *v2;
  v10 = *v2 >> 62;
  v25[2] = a2[2];
  v25[3] = v8;
  if (!v10)
  {

    sub_1D62A4818(a1, a2);
  }

  v11 = v9 & 0x3FFFFFFFFFFFFFFFLL;
  if (v10 == 1)
  {

    sub_1D62A49E0(a1, a2);
  }

  v13 = *(v11 + 16);
  v14 = *(v13 + 16);

  sub_1D6E6120C(a1, v25, v14);
  if (!v3)
  {
    v15 = *(v13 + 120);
    v21[5] = *(v13 + 104);
    v21[6] = v15;
    v22[0] = *(v13 + 136);
    *(v22 + 9) = *(v13 + 145);
    v16 = *(v13 + 56);
    v21[1] = *(v13 + 40);
    v21[2] = v16;
    v17 = *(v13 + 88);
    v21[3] = *(v13 + 72);
    v21[4] = v17;
    v21[0] = *(v13 + 24);
    memmove(__dst, (v13 + 24), 0x89uLL);
    if (sub_1D60486AC(__dst) != 1)
    {
      v19[6] = __dst[6];
      v20[0] = v24[0];
      *(v20 + 9) = *(v24 + 9);
      v19[2] = __dst[2];
      v19[3] = __dst[3];
      v19[4] = __dst[4];
      v19[5] = __dst[5];
      v19[0] = __dst[0];
      v19[1] = __dst[1];
      sub_1D62B5354(v21, &v18, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
      sub_1D62B49F0(v19);
    }
  }
}

uint64_t sub_1D62A4818(uint64_t a1, _OWORD *a2)
{
  v4 = a2[5];
  v31[6] = a2[4];
  v31[7] = v4;
  v31[8] = a2[6];
  v5 = a2[1];
  v31[2] = *a2;
  v31[3] = v5;
  v6 = a2[3];
  v31[4] = a2[2];
  v31[5] = v6;
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  if (*(v2 + 64) == 4)
  {
    v9 = *(v2 + 56);
    v32 = *(v2 + 16);
    v33 = v7;
    v34 = v8;
    v35 = *(v2 + 40);
    v36 = v9;
    result = sub_1D6E7425C(a1);
    if (v3)
    {
      return result;
    }
  }

  else
  {
    result = nullsub_1();
    if (v3)
    {
      return result;
    }
  }

  v11 = *(v2 + 200);
  v12 = *(v2 + 232);
  v22[6] = *(v2 + 216);
  v23[0] = v12;
  *(v23 + 9) = *(v2 + 241);
  v13 = *(v2 + 136);
  v14 = *(v2 + 168);
  v22[2] = *(v2 + 152);
  v22[3] = v14;
  v22[4] = *(v2 + 184);
  v22[5] = v11;
  v22[0] = *(v2 + 120);
  v22[1] = v13;
  v15 = *(v2 + 200);
  v16 = *(v2 + 232);
  v30 = *(v2 + 216);
  v31[0] = v16;
  *(v31 + 9) = *(v2 + 241);
  v17 = *(v2 + 136);
  v18 = *(v2 + 168);
  v26 = *(v2 + 152);
  v27 = v18;
  v28 = *(v2 + 184);
  v29 = v15;
  v24 = *(v2 + 120);
  v25 = v17;
  result = sub_1D60486AC(&v24);
  if (result != 1)
  {
    v20[6] = v30;
    v21[0] = v31[0];
    *(v21 + 9) = *(v31 + 9);
    v20[2] = v26;
    v20[3] = v27;
    v20[4] = v28;
    v20[5] = v29;
    v20[0] = v24;
    v20[1] = v25;
    sub_1D62B5354(v22, &v19, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
    return sub_1D62B49F0(v20);
  }

  return result;
}

uint64_t sub_1D62A49E0(uint64_t a1, _OWORD *a2)
{
  v4 = a2[5];
  v38[6] = a2[4];
  v38[7] = v4;
  v38[8] = a2[6];
  v5 = a2[1];
  v38[2] = *a2;
  v38[3] = v5;
  v6 = a2[3];
  v38[4] = a2[2];
  v38[5] = v6;
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  if (*(v2 + 64) == 4)
  {
    v11 = *(v2 + 48);
    v10 = *(v2 + 56);
    v45 = v2;
    v12 = *(v2 + 40);
    v39 = v7;
    v40 = v8;
    v41 = v9;
    v42 = v12;
    v43 = v11;
    v44 = v10;
    v14 = v7;
    v15 = v9;
    v16 = v8;
    sub_1D5D615EC(v7);
    sub_1D5D615EC(v15);
    sub_1D5D615EC(v11);
    sub_1D6E7425C(a1);
    result = sub_1D62B4A44(v14, v16, v15, v12, v11, v10, 4u);
    if (v3)
    {
      return result;
    }

    v2 = v45;
  }

  else
  {
    result = nullsub_1(a1);
    if (v3)
    {
      return result;
    }
  }

  v18 = *(v2 + 232);
  v19 = *(v2 + 264);
  v29[6] = *(v2 + 248);
  v30[0] = v19;
  *(v30 + 9) = *(v2 + 273);
  v20 = *(v2 + 168);
  v21 = *(v2 + 200);
  v29[2] = *(v2 + 184);
  v29[3] = v21;
  v29[4] = *(v2 + 216);
  v29[5] = v18;
  v29[0] = *(v2 + 152);
  v29[1] = v20;
  v22 = *(v2 + 232);
  v23 = *(v2 + 264);
  v37 = *(v2 + 248);
  v38[0] = v23;
  *(v38 + 9) = *(v2 + 273);
  v24 = *(v2 + 168);
  v25 = *(v2 + 200);
  v33 = *(v2 + 184);
  v34 = v25;
  v35 = *(v2 + 216);
  v36 = v22;
  v31 = *(v2 + 152);
  v32 = v24;
  result = sub_1D60486AC(&v31);
  if (result != 1)
  {
    v27[6] = v37;
    v28[0] = v38[0];
    *(v28 + 9) = *(v38 + 9);
    v27[2] = v33;
    v27[3] = v34;
    v27[4] = v35;
    v27[5] = v36;
    v27[0] = v31;
    v27[1] = v32;
    sub_1D62B5354(v29, &v26, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
    return sub_1D62B49F0(v27);
  }

  return result;
}

uint64_t sub_1D62A4C28(uint64_t a1, __int128 *a2)
{
  v4 = a2[5];
  v29[4] = a2[4];
  v29[5] = v4;
  v29[6] = a2[6];
  v5 = a2[1];
  v29[0] = *a2;
  v29[1] = v5;
  v6 = a2[3];
  v29[2] = a2[2];
  v29[3] = v6;
  result = sub_1D6E6120C(a1, v29, *(v2 + 16));
  if (!v3)
  {
    v8 = *(v2 + 104);
    v9 = *(v2 + 136);
    v19[6] = *(v2 + 120);
    v20[0] = v9;
    *(v20 + 9) = *(v2 + 145);
    v10 = *(v2 + 40);
    v11 = *(v2 + 72);
    v19[2] = *(v2 + 56);
    v19[3] = v11;
    v19[4] = *(v2 + 88);
    v19[5] = v8;
    v19[0] = *(v2 + 24);
    v19[1] = v10;
    v12 = *(v2 + 104);
    v13 = *(v2 + 136);
    v27 = *(v2 + 120);
    v28[0] = v13;
    *(v28 + 9) = *(v2 + 145);
    v14 = *(v2 + 40);
    v15 = *(v2 + 72);
    v23 = *(v2 + 56);
    v24 = v15;
    v25 = *(v2 + 88);
    v26 = v12;
    v21 = *(v2 + 24);
    v22 = v14;
    result = sub_1D60486AC(&v21);
    if (result != 1)
    {
      v17[6] = v27;
      v18[0] = v28[0];
      *(v18 + 9) = *(v28 + 9);
      v17[2] = v23;
      v17[3] = v24;
      v17[4] = v25;
      v17[5] = v26;
      v17[0] = v21;
      v17[1] = v22;
      sub_1D62B5354(v19, &v16, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
      return sub_1D62B49F0(v17);
    }
  }

  return result;
}

uint64_t sub_1D62A4DC4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v38 = a3;
  v4 = v3;
  v36 = a1;
  v6 = *(a3 + 16);
  v7 = sub_1D726393C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v37 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v36 - v17;
  v19 = a2[5];
  v56 = a2[4];
  v57 = v19;
  v58 = a2[6];
  v20 = a2[1];
  v52 = *a2;
  v53 = v20;
  v21 = a2[3];
  v54 = a2[2];
  v55 = v21;
  v59 = *(v8 + 16);
  v59(&v36 - v17, v4, v7);
  v41 = *(*(v6 - 8) + 48);
  v22 = v41(v18, 1, v6);
  v40 = v8;
  if (v22 == 1)
  {
    (*(v8 + 8))(v18, v7);
LABEL_7:
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v23 = v40;
    v24 = v4;
    goto LABEL_8;
  }

  sub_1D5B49474(0, &qword_1EC8854E0);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v23 = v40;
  v24 = v4;
  if (!*(&v50 + 1))
  {
LABEL_8:
    sub_1D5BFB774(&v49, &qword_1EC8854E8, &qword_1EC8854E0);
    v29 = v38;
    goto LABEL_9;
  }

  v25 = v51;
  v26 = *(&v50 + 1);
  __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
  v46 = v56;
  v47 = v57;
  v48 = v58;
  v42 = v52;
  v43 = v53;
  v44 = v54;
  v45 = v55;
  v27 = v39;
  (*(v25 + 8))(v36, &v42, v26, v25);
  result = __swift_destroy_boxed_opaque_existential_1(&v49);
  v39 = v27;
  v29 = v38;
  if (v27)
  {
    return result;
  }

  v23 = v40;
LABEL_9:
  v59(v14, v24 + *(v29 + 36), v7);
  if (v41(v14, 1, v6) == 1)
  {
    (*(v23 + 8))(v14, v7);
LABEL_15:
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    goto LABEL_16;
  }

  sub_1D5B49474(0, &qword_1EC8854E0);
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v30 = *(&v50 + 1);
  if (!*(&v50 + 1))
  {
LABEL_16:
    sub_1D5BFB774(&v49, &qword_1EC8854E8, &qword_1EC8854E0);
    goto LABEL_17;
  }

  v31 = v51;
  __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
  v46 = v56;
  v47 = v57;
  v48 = v58;
  v42 = v52;
  v43 = v53;
  v44 = v54;
  v45 = v55;
  v32 = v39;
  (*(v31 + 8))(v36, &v42, v30, v31);
  result = __swift_destroy_boxed_opaque_existential_1(&v49);
  if (v32)
  {
    return result;
  }

LABEL_17:
  v33 = v37;
  v59(v37, v24 + *(v29 + 40), v7);
  if (v41(v33, 1, v6) == 1)
  {
    (*(v40 + 8))(v33, v7);
  }

  else
  {
    sub_1D5B49474(0, &qword_1EC8854E0);
    if (swift_dynamicCast())
    {
      v34 = *(&v50 + 1);
      if (*(&v50 + 1))
      {
        v35 = v51;
        __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
        v46 = v56;
        v47 = v57;
        v48 = v58;
        v42 = v52;
        v43 = v53;
        v44 = v54;
        v45 = v55;
        (*(v35 + 8))(v36, &v42, v34, v35);
        return __swift_destroy_boxed_opaque_existential_1(&v49);
      }

      return sub_1D5BFB774(&v49, &qword_1EC8854E8, &qword_1EC8854E0);
    }
  }

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  return sub_1D5BFB774(&v49, &qword_1EC8854E8, &qword_1EC8854E0);
}

uint64_t sub_1D62A5318(uint64_t a1)
{
  if (*(v1 + 48) == 4)
  {
    return sub_1D6E7425C(a1);
  }

  else
  {
    return nullsub_1();
  }
}

uint64_t sub_1D62A5420(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v11[4] = a2[4];
  v11[5] = v5;
  v11[6] = a2[6];
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  swift_beginAccess();
  v8 = *(v2 + 72);
  if (!v8 || (, sub_1D6E6120C(a1, v11, v8), result = , !v3))
  {
    swift_beginAccess();
    v10 = *(v2 + 88);

    sub_1D6E71B64(a1, v11, v10);
  }

  return result;
}

uint64_t sub_1D62A5524(uint64_t result, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  v6 = *(v2 + 40);
  if (v6)
  {
    return sub_1D6E6120C(result, v7, v6);
  }

  return result;
}

uint64_t sub_1D62A5570(uint64_t result, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 1 && (a4 & 0xF000000000000007) != 0xF000000000000007)
  {
    v6 = result;

    sub_1D5CFEE30(v6, a2);
  }

  return result;
}

void sub_1D62A55F4(char **a1, __int128 *a2)
{
  v3 = v2[1];
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v7 = *(v2 + 40);
  v8 = (v7 >> 1) & 0xF;
  if (v8 <= 3)
  {
    if (v8 >= 2)
    {
      if (v8 == 2)
      {
        sub_1D62A98C8(a1, a2);
      }

      else
      {
        v20 = *v2;
        v21 = v3;
        v22 = v5;
        v23 = v4;
        v10 = a2[5];
        v17 = a2[4];
        v18 = v10;
        v19 = a2[6];
        v11 = a2[1];
        v13 = *a2;
        v14 = v11;
        v12 = a2[3];
        v15 = a2[2];
        v16 = v12;
        sub_1D6AC6E60(a1, &v13);
      }
    }
  }

  else if (v8 - 4 >= 4 && v8 == 8)
  {
    *&v13 = *v2;
    *(&v13 + 1) = v3;
    *&v14 = v5;
    *(&v14 + 1) = v4;
    *&v15 = v6;
    BYTE8(v15) = v7 & 1;
    sub_1D62A99A4(a1, a2);
  }
}

uint64_t sub_1D62A56C4(uint64_t a1, _OWORD *a2)
{
  v5 = a2[3];
  v6 = a2[5];
  v20 = a2[4];
  v21 = v6;
  v7 = a2[5];
  v22 = a2[6];
  v8 = a2[1];
  v17[0] = *a2;
  v17[1] = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v18 = a2[2];
  v19 = v9;
  v16[4] = v20;
  v16[5] = v7;
  v16[6] = a2[6];
  v16[0] = v11;
  v16[1] = v10;
  v12 = *v2;
  v16[2] = v18;
  v16[3] = v5;
  v13 = type metadata accessor for FormatSwitchValue.CaseValue();
  result = sub_1D72229B8(a1, v16, v12, v13, &off_1F5142038);
  if (!v3)
  {
    v15 = type metadata accessor for FormatSwitchValue.DefaultValue();
    return sub_1D62A44B8(a1, v17, v15);
  }

  return result;
}

uint64_t sub_1D62A57B8(uint64_t a1, uint64_t a2)
{

  sub_1D62AF89C(a1, a2);

  if (!v2)
  {

    sub_1D62AF89C(a1, a2);
  }

  return result;
}

uint64_t sub_1D62A5850(uint64_t a1, uint64_t a2)
{

  sub_1D62ACFC0(a1, a2);

  if (!v2)
  {

    sub_1D62ACFC0(a1, a2);
  }

  return result;
}

uint64_t sub_1D62A58E8(uint64_t a1, uint64_t a2)
{

  sub_1D62AFC20(a1, a2);

  if (!v2)
  {

    sub_1D62AFC20(a1, a2);
  }

  return result;
}

uint64_t sub_1D62A5980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v29 = a3;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v11[5];
  v44 = v11[4];
  v45 = v12;
  v46 = v11[6];
  v13 = v11[1];
  v40 = *v11;
  v41 = v13;
  v14 = v11[3];
  v42 = v11[2];
  v43 = v14;
  v15 = *(v6 + 16);
  v47 = v17;
  v15(&v26 - v16, v17, v5);
  sub_1D5B49474(0, &qword_1EC8854E0);
  if (swift_dynamicCast())
  {
    v26 = v15;
    v28 = v3;
    v18 = *(&v38 + 1);
    v19 = v39;
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    v34 = v44;
    v35 = v45;
    v36 = v46;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v20 = *(v19 + 8);
    v27 = v4;
    v21 = v28;
    v20(v4, &v30, v18, v19);
    result = __swift_destroy_boxed_opaque_existential_1(&v37);
    if (v21)
    {
      return result;
    }

    v4 = v27;
    v26(v8, v47 + *(v29 + 36), v5);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1D5BFB774(&v37, &qword_1EC8854E8, &qword_1EC8854E0);
    v15(v8, v47 + *(v29 + 36), v5);
  }

  if (swift_dynamicCast())
  {
    v23 = v4;
    v24 = *(&v38 + 1);
    v25 = v39;
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    v34 = v44;
    v35 = v45;
    v36 = v46;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    (*(v25 + 8))(v23, &v30, v24, v25);
    return __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    return sub_1D5BFB774(&v37, &qword_1EC8854E8, &qword_1EC8854E0);
  }
}

unint64_t sub_1D62A5C6C(unint64_t a1, __int128 *a2)
{

  sub_1D5CF94EC(a1, a2);

  if (!v2)
  {
    return sub_1D5CF8420(a1, a2);
  }

  return result;
}

unint64_t sub_1D62A5CE4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v7 = a4;
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    sub_1D5D0A57C(v8);

    sub_1D62A5CE4(a1, a2, v8, v9);
    sub_1D5D0A58C(v8);

    if (v4)
    {
      return result;
    }

    a4 = v7;
  }

  return sub_1D6E5D26C(a1, a2, a4);
}

unint64_t sub_1D62A5D84(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 62 == 1)
  {
    v7 = a4;
    v8 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v8);

    sub_1D62A5D84(a1, a2, v8, v9);
    sub_1D5EB15C4(v8);

    if (v4)
    {
      return result;
    }

    a4 = v7;
  }

  return sub_1D6E5EA3C(a1, a2, a4);
}

uint64_t sub_1D62A5E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    return sub_1D6E5FC70(a1, a2, a4);
  }

  v6 = a4;
  v7 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v8 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v9 = a1;
  v10 = a2;

  sub_1D62A5E2C(v9, v10, v7, v8);

  if (!v4)
  {
    a4 = v6;
    a2 = v10;
    a1 = v9;
    return sub_1D6E5FC70(a1, a2, a4);
  }

  return result;
}

uint64_t sub_1D62A5EDC(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  sub_1D5D0ACAC(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
  sub_1D5B49474(0, &qword_1EC8854E0);

  if (swift_dynamicCast())
  {
    v8 = *(&v16 + 1);
    v9 = v17;
    __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    v10 = a2[5];
    v14[4] = a2[4];
    v14[5] = v10;
    v14[6] = a2[6];
    v11 = a2[1];
    v14[0] = *a2;
    v14[1] = v11;
    v12 = a2[3];
    v14[2] = a2[2];
    v14[3] = v12;
    (*(v9 + 8))(a1, v14, v8, v9);
    result = __swift_destroy_boxed_opaque_existential_1(&v15);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_1D5BFB774(&v15, &qword_1EC8854E8, &qword_1EC8854E0);
  }

  return sub_1D6E60D7C(a1, a2, a4);
}

uint64_t sub_1D62A60D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    return a6(a1, a2, a4);
  }

  v11 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v12 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);

  a5(a1, a2, v11, v12);

  if (!v6)
  {
    return a6(a1, a2, a4);
  }

  return result;
}

uint64_t sub_1D62A61D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v9[5];
  v33 = v9[4];
  v34 = v10;
  v35 = v9[6];
  v11 = v9[1];
  v29 = *v9;
  v30 = v11;
  v12 = v9[3];
  v31 = v9[2];
  v32 = v12;
  (*(v13 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v7);
  sub_1D5B49474(0, &qword_1EC8854E0);
  if (swift_dynamicCast())
  {
    v14 = *(&v27 + 1);
    v15 = v28;
    __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    (*(v15 + 8))(a1, &v19, v14, v15);
    result = __swift_destroy_boxed_opaque_existential_1(&v26);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_1D5BFB774(&v26, &qword_1EC8854E8, &qword_1EC8854E0);
  }

  v17 = sub_1D61834A8(a3);
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  v22 = v32;
  v18 = type metadata accessor for FormatSelectorValueSelector();

  sub_1D72229B8(a1, &v19, v17, v18, &off_1F5141928);
}

uint64_t sub_1D62A6440(char **a1, __int128 *a2)
{
  v5 = *v2;
  v6 = a2[5];
  v12[4] = a2[4];
  v12[5] = v6;
  v12[6] = a2[6];
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = a2[3];
  v12[2] = a2[2];
  v12[3] = v8;
  swift_beginAccess();
  v9 = *(v5 + 48);

  sub_1D5CF6244(a1, v12, v9);

  if (!v3)
  {
    swift_beginAccess();
    v11 = *(v5 + 32);

    sub_1D5CF6090(a1, v12, v11);
  }

  return result;
}

uint64_t sub_1D62A6528(uint64_t a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  return sub_1D5CF8C68(a1, v7, *v2);
}

uint64_t sub_1D62A6570(uint64_t result, __int128 *a2)
{
  if (!v3)
  {
    v4 = *(v2 + 32);
    v5 = *(v2 + 104);
    v6 = *(v2 + 168);
    if (*(v2 + 96))
    {
      v7 = a2[5];
      v19 = a2[4];
      v20 = v7;
      v21 = a2[6];
      v8 = a2[1];
      v15 = *a2;
      v16 = v8;
      v9 = a2[3];
      v10 = a2;
      v17 = a2[2];
      v18 = v9;
      v11 = result;
      sub_1D5CF8C68(result, &v15, v4);
    }

    else
    {
      *&v15 = *(v2 + 32);
      v11 = result;
      v10 = a2;
      sub_1D5CF9A24(result, a2);
    }

    if (v6)
    {
      v12 = v10[5];
      v19 = v10[4];
      v20 = v12;
      v21 = v10[6];
      v13 = v10[1];
      v15 = *v10;
      v16 = v13;
      v14 = v10[3];
      v17 = v10[2];
      v18 = v14;
      return sub_1D5CF8C68(v11, &v15, v5);
    }

    else
    {
      *&v15 = v5;
      return sub_1D5CF9A24(v11, v10);
    }
  }

  return result;
}

uint64_t sub_1D62A6658(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);

  sub_1D5CF94EC(a1, a2);

  if (!v3)
  {
    if (v6)
    {
      return sub_1D5CF8420(a1, a2);
    }
  }

  return result;
}

uint64_t sub_1D62A66D4(uint64_t a1, __int128 *a2)
{
  v6 = *v2;
  v7 = *(v2 + 11);
  v8 = *(v2 + 15);
  v30 = *(v2 + 13);
  v31[0] = v8;
  *(v31 + 9) = *(v2 + 129);
  v9 = *(v2 + 3);
  v10 = *(v2 + 7);
  v26 = *(v2 + 5);
  v27 = v10;
  v28 = *(v2 + 9);
  v29 = v7;
  v24 = *(v2 + 1);
  v25 = v9;
  v23 = v6;

  sub_1D62ACFC0(a1, a2);
  if (v3)
  {
  }

  v21 = v30;
  v22[0] = v31[0];
  *(v22 + 9) = *(v31 + 9);
  v17 = v26;
  v18 = v27;
  v19 = v28;
  v20 = v29;
  v15 = v24;
  v16 = v25;
  result = sub_1D60486AC(&v15);
  if (result != 1)
  {
    v13[6] = v21;
    v14[0] = v22[0];
    *(v14 + 9) = *(v22 + 9);
    v13[2] = v17;
    v13[3] = v18;
    v13[4] = v19;
    v13[5] = v20;
    v13[0] = v15;
    v13[1] = v16;
    sub_1D62B5354(&v24, &v12, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
    return sub_1D62B49F0(v13);
  }

  return result;
}

uint64_t sub_1D62A6830(uint64_t a1, _OWORD *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  return sub_1D6E610B8(a1, v7, *v2);
}

uint64_t sub_1D62A68B8(uint64_t result, uint64_t a2)
{
  v4 = v2[1];
  v5 = v2[2];
  if (*v2 >> 62 == 1)
  {
    v6 = result;
    v7 = a2;
    result = sub_1D62A8874(result, a2);
    if (v3)
    {
      return result;
    }

    a2 = v7;
    result = v6;
  }

  if ((v4 & 0xFE) != 0xC && (v5 & 0xC000000000000000) == 0x4000000000000000)
  {
    return sub_1D62A8874(result, a2);
  }

  return result;
}

uint64_t sub_1D62A696C(uint64_t result, uint64_t a2)
{
  if ((*v2 & 0xFELL) != 0xC && (v2[1] & 0xC000000000000000) == 0x4000000000000000)
  {
    return sub_1D62A8874(result, a2);
  }

  return result;
}

uint64_t sub_1D62A69C8(uint64_t result, uint64_t a2)
{
  if (*(v2 + 8) >> 62 == 1)
  {
    return sub_1D62A8874(result, a2);
  }

  return result;
}

uint64_t sub_1D62A6A30(char **a1, __int128 *a2)
{
  v5 = *v2;
  v6 = *(v2 + 40);
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  sub_1D62B4B68(*v2, v8, v9, v10, v11, v6);
  sub_1D62A55F4(a1, a2);
  return sub_1D62B4C5C(v5, v8, v9, v10, v11, v6);
}

uint64_t sub_1D62A6B10(char **a1, __int128 *a2)
{
  v5 = *v2;
  v6 = a2[5];
  v12[4] = a2[4];
  v12[5] = v6;
  v12[6] = a2[6];
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = a2[3];
  v12[2] = a2[2];
  v12[3] = v8;
  swift_beginAccess();
  v9 = *(v5 + 40);

  sub_1D5CF6244(a1, v12, v9);

  if (!v3)
  {
    swift_beginAccess();
    v11 = *(v5 + 32);

    sub_1D5CF6090(a1, v12, v11);
  }

  return result;
}

uint64_t sub_1D62A6BF8(char **a1, __int128 *a2)
{
  v4 = *v2;
  v5 = a2[5];
  v10[4] = a2[4];
  v10[5] = v5;
  v10[6] = a2[6];
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  swift_beginAccess();
  v8 = *(v4 + 56);

  sub_1D5CF6244(a1, v10, v8);
}

uint64_t sub_1D62A6C94(uint64_t a1, __int128 *a2)
{

  sub_1D5CF9A24(a1, a2);
}

uint64_t sub_1D62A6CF8(uint64_t a1, __int128 *a2)
{

  sub_1D5CF4F50(a1, a2);
}

uint64_t sub_1D62A6D68()
{
  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    v4 = v0 + 32;
    v2 = *(v0 + 32);
    v3 = *(v4 + 8);
    sub_1D5E433CC(v2, v3, v1);
    return sub_1D5E43440(v2, v3, v1);
  }

  return result;
}

uint64_t sub_1D62A6DE8(uint64_t result, uint64_t a2)
{
  v3 = v2[1];
  v9 = *v2;
  v10 = v3;
  v4 = v2[3];
  v11 = v2[2];
  v12 = v4;
  v13 = *(v2 + 64);
  if (v13 > 1u)
  {
    if (v13 != 2)
    {
      return result;
    }

    v6 = v10;
    v7 = v10 & 0xF000000000000007;
  }

  else
  {
    if (!v13)
    {
      if ((v9 & 0xF000000000000007) != 0x7000000000000007)
      {
        v5 = (v9 >> 57) & 0x78 | v9 & 7;
        if (v5 == 95 || v5 == 127)
        {
          return sub_1D614F7CC(&v9);
        }

        if (v9 >> 62 == 3)
        {
          return sub_1D62B3700(result, a2);
        }
      }

      return result;
    }

    v6 = *(&v12 + 1);
    v7 = *(&v12 + 1) & 0xB000000000000007 | 0x4000000000000000;
  }

  if (v7 != 0x7000000000000007 && ((v6 >> 57) & 0xF8 | v6 & 7 | 0x20) != 0x7F && v6 >> 62 == 3)
  {
    return sub_1D62B3700(result, a2);
  }

  return result;
}

uint64_t sub_1D62A6F08(uint64_t result, __int128 *a2)
{
  if (!*(v2 + 56) && (*(v2 + 48) & 0xF000000000000007) != 0xD000000000000007 && (*v2 & 0xF000000000000007) != 0xF000000000000007)
  {
    v4 = result;

    sub_1D5CF9A24(v4, a2);
  }

  return result;
}

uint64_t sub_1D62A6FB0(uint64_t result, __int128 *a2)
{
  if ((~*v2 & 0xF000000000000007) != 0)
  {
    v3 = result;

    sub_1D5CF9A24(v3, a2);
  }

  return result;
}

uint64_t sub_1D62A7020(char **a1, __int128 *a2)
{
  v21[0] = *v2;
  v6 = v21[0];
  *(v21 + 9) = *(v2 + 9);
  *v19 = v6;
  *&v19[9] = *(v21 + 9);
  v7 = a2[5];
  v16 = a2[4];
  v17 = v7;
  v18 = a2[6];
  v8 = a2[1];
  v12 = *a2;
  v13 = v8;
  v9 = a2[3];
  v14 = a2[2];
  v15 = v9;
  sub_1D62B745C(v21, &v11);
  sub_1D607AC1C(a1);
  result = sub_1D5F57FEC(*v19, *&v19[8], *&v19[16], v19[24]);
  if (!v3)
  {
    v20 = *(v2 + 32);
    *&v12 = v20;
    sub_1D62B74B8(&v20, v19);
    sub_1D5D0350C(a1, a2);
  }

  return result;
}

uint64_t sub_1D62A7114(unint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  swift_retain_n();

  sub_1D5CF9A24(a1, a2);
  if (v4)
  {
  }

  else
  {

    sub_1D6E6415C(a1, a2, a4);

    sub_1D5CF9A24(a1, a2);
  }
}

uint64_t sub_1D62A7208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 24);
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15[5];
  v46 = v15[4];
  v47 = v16;
  v48 = v15[6];
  v17 = v15[1];
  v42 = *v15;
  v43 = v17;
  v18 = v15[3];
  v44 = v15[2];
  v45 = v18;
  v20 = *(v19 + 16);
  v49 = v21;
  v20(v14, v21, v10);
  sub_1D5B49474(0, &qword_1EC8854E0);
  if (swift_dynamicCast())
  {
    v29 = v6;
    v22 = *(&v40 + 1);
    v23 = v41;
    __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
    v36 = v46;
    v37 = v47;
    v38 = v48;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v45;
    v24 = *(v23 + 8);
    v30 = v5;
    v24(v5, &v32, v22, v23);
    result = __swift_destroy_boxed_opaque_existential_1(&v39);
    if (v3)
    {
      return result;
    }

    v6 = v29;
    v5 = v30;
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_1D5BFB774(&v39, &qword_1EC8854E8, &qword_1EC8854E0);
  }

  (*(v31 + 16))(v8, v49 + *(a3 + 52), v6);
  if (swift_dynamicCast())
  {
    v26 = *(&v40 + 1);
    v27 = v41;
    __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
    v36 = v46;
    v37 = v47;
    v38 = v48;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v45;
    (*(v27 + 8))(v5, &v32, v26, v27);
    return __swift_destroy_boxed_opaque_existential_1(&v39);
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    return sub_1D5BFB774(&v39, &qword_1EC8854E8, &qword_1EC8854E0);
  }
}

uint64_t sub_1D62A755C(uint64_t result, uint64_t a2)
{
  v3 = *v2 >> 61;
  if (v3 <= 1)
  {
    return sub_1D62A7800(result, a2);
  }

  v4 = result;
  if (v3 == 2)
  {

    sub_1D62A755C(v4, a2);
  }

  else if (v3 != 3)
  {
    return sub_1D62A7684(result, a2);
  }

  return result;
}

uint64_t sub_1D62A7620(uint64_t a1, __int128 *a2)
{

  sub_1D5CF9A24(a1, a2);
}

uint64_t sub_1D62A7684(uint64_t a1, uint64_t a2)
{

  sub_1D5CF9A24(a1, a2);

  if (!v2)
  {

    sub_1D62A755C(a1, a2);
  }

  return result;
}

unint64_t sub_1D62A7718(unint64_t a1, __int128 *a2)
{
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v11[6] = a2[6];
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  v9 = v2[1];
  v12 = *v2;

  sub_1D62A755C(a1, a2);

  if (!v3)
  {
    return sub_1D6E6415C(a1, v11, v9);
  }

  return result;
}

uint64_t sub_1D62A7800(uint64_t a1, uint64_t a2)
{

  sub_1D62A755C(a1, a2);

  if (!v2)
  {

    sub_1D62A755C(a1, a2);
  }

  return result;
}

uint64_t sub_1D62A7894(uint64_t result, __int128 *a2)
{
  v4 = a2[5];
  v14[4] = a2[4];
  v14[5] = v4;
  v14[6] = a2[6];
  v5 = a2[1];
  v14[0] = *a2;
  v14[1] = v5;
  v6 = a2[3];
  v7 = *v2;
  v8 = *v2 >> 61;
  v14[2] = a2[2];
  v14[3] = v6;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      return sub_1D5CF9A24(result, a2);
    }

    else if (v8 == 4)
    {
      v12 = result;

      sub_1D5CF9A24(v12, a2);
    }
  }

  else if (v8 >= 2)
  {
    v9 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v10 = result;
    swift_retain_n();

    sub_1D62A755C(v10, a2);
    if (v3)
    {
    }

    else
    {

      sub_1D6E6415C(v10, v14, v9);
    }
  }

  return result;
}

void sub_1D62A7A54(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      sub_1D62AC794(a1, a2);
      return;
    }

    if ((*(a3 + 48) & 1) == 0)
    {
      return;
    }

    v7 = *(a3 + 40);
    v8 = *(v7 + 24);

    sub_1D6E6399C(a1, a2, v8);
    if (!v3)
    {
      sub_1D62A7BBC(a1, a2, *(v7 + 32));
    }
  }

  else if (v6 == 2)
  {
    v9 = *(*((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 24);

    sub_1D6E6198C(a1, a2, v9);
    if (!v3)
    {

      sub_1D62ACC30(a1, a2);
    }
  }

  else if (v6 == 3)
  {
    return;
  }
}

uint64_t sub_1D62A7BBC(uint64_t a1, _OWORD *a2, void *a3)
{
  v14 = a3;
  sub_1D62B7E2C();
  sub_1D5B49474(0, &qword_1EC8854E0);
  v6 = a3;
  if (swift_dynamicCast())
  {
    v7 = *(&v16 + 1);
    v8 = v17;
    __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    v9 = a2[5];
    v13[4] = a2[4];
    v13[5] = v9;
    v13[6] = a2[6];
    v10 = a2[1];
    v13[0] = *a2;
    v13[1] = v10;
    v11 = a2[3];
    v13[2] = a2[2];
    v13[3] = v11;
    (*(v8 + 8))(a1, v13, v7, v8);
    return __swift_destroy_boxed_opaque_existential_1(&v15);
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    return sub_1D5BFB774(&v15, &qword_1EC8854E8, &qword_1EC8854E0);
  }
}

uint64_t sub_1D62A7D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v7[5];
  v24 = v7[4];
  v25 = v8;
  v26 = v7[6];
  v9 = v7[1];
  v20 = *v7;
  v21 = v9;
  v10 = v7[3];
  v22 = v7[2];
  v23 = v10;
  (*(v12 + 16))(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + *(v11 + 28), v5);
  sub_1D5B49474(0, &qword_1EC8854E0);
  if (swift_dynamicCast())
  {
    v13 = *(&v18 + 1);
    v14 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    v16[4] = v24;
    v16[5] = v25;
    v16[6] = v26;
    v16[0] = v20;
    v16[1] = v21;
    v16[2] = v22;
    v16[3] = v23;
    (*(v14 + 8))(a1, v16, v13, v14);
    return __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    return sub_1D5BFB774(&v17, &qword_1EC8854E8, &qword_1EC8854E0);
  }
}

uint64_t sub_1D62A7EF0(uint64_t result, __int128 *a2)
{
  if (*(v2 + 16) == 1 && (*v2 & 0xF000000000000007) != 0xF000000000000007)
  {
    v4 = result;

    sub_1D5CFEE30(v4, a2);
  }

  return result;
}

uint64_t sub_1D62A7F6C(uint64_t result, __int128 *a2)
{
  v3 = *(v2 + 24);
  if (v3 >> 6 > 1)
  {
    v6 = v3 & 0x3F;
    v4 = *(v2 + 8) & 0xF000000000000007;
    v5 = v6 == 1;
  }

  else
  {
    v4 = *v2 & 0xF000000000000007;
    v5 = *(v2 + 16) == 1;
  }

  if (v5 && v4 != 0xF000000000000007)
  {
    v8 = result;

    sub_1D5CFEE30(v8, a2);
  }

  return result;
}

uint64_t sub_1D62A8028(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 1)
  {
    v3 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v4 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v5 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v6 = result;

    sub_1D5CF6C3C(v6, a2, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1D62A80E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v7[5];
  v24 = v7[4];
  v25 = v8;
  v26 = v7[6];
  v9 = v7[1];
  v20 = *v7;
  v21 = v9;
  v10 = v7[3];
  v22 = v7[2];
  v23 = v10;
  (*(v12 + 16))(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + *(v11 + 44), v5);
  sub_1D5B49474(0, &qword_1EC8854E0);
  if (swift_dynamicCast())
  {
    v13 = *(&v18 + 1);
    v14 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    v16[4] = v24;
    v16[5] = v25;
    v16[6] = v26;
    v16[0] = v20;
    v16[1] = v21;
    v16[2] = v22;
    v16[3] = v23;
    (*(v14 + 8))(a1, v16, v13, v14);
    return __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    return sub_1D5BFB774(&v17, &qword_1EC8854E8, &qword_1EC8854E0);
  }
}

void sub_1D62A82C0(char **a1, __int128 *a2)
{
  v6 = type metadata accessor for FormatPropertyDefinition(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 16);
  if (v12)
  {
    v13 = 0;
    while (v13 < *(v11 + 16))
    {
      sub_1D62B50EC(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v10, type metadata accessor for FormatPropertyDefinition);
      sub_1D62B0384(a1, a2);
      if (v3)
      {
        sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
        return;
      }

      ++v13;
      sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
      if (v12 == v13)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D62A8450(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v26[4] = a2[4];
  v26[5] = v7;
  v26[6] = a2[6];
  v8 = a2[1];
  v26[0] = *a2;
  v26[1] = v8;
  v9 = a2[3];
  v26[2] = a2[2];
  v26[3] = v9;
  v21 = v2[7];
  sub_1D5C82CD8(v21);
  sub_1D5CF9048(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(v21);
  }

  else
  {
    sub_1D5C92A8C(v21);
    swift_beginAccess();
    v10 = v2[9];

    sub_1D5CF9258(a1, v26, v10);

    v11 = v4[10];
    if (v11)
    {
      v12 = *(v11 + 56);
      if (v12)
      {
        sub_1D5CF6244(a1, v26, v12);
      }

      swift_beginAccess();
      v13 = *(v11 + 64);

      sub_1D6E71448(a1, v26, v13);
    }

    v14 = v4[11];
    if (v14)
    {
      swift_beginAccess();
      v15 = *(v14 + 72);
      if (v15)
      {

        sub_1D6E6120C(a1, v26, v15);
      }

      swift_beginAccess();
      v16 = *(v14 + 88);

      sub_1D6E71B64(a1, v26, v16);
    }

    swift_beginAccess();
    v17 = v4[13];
    if (v17 >> 62 == 1)
    {
      v18 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[13]);
      sub_1D5EB1500(v18);

      sub_1D62A5D84(a1, v26, v18, v19);
      sub_1D5EB15C4(v18);

      sub_1D5EB15C4(v17);
    }

    v20 = v4[15];
    if (v20)
    {
      v22 = v4[16];
      v23 = v4[17];
      v24 = v4[18];
      v25 = v4[19];
      sub_1D62A42E0(a1);
      sub_1D5EB1D80(v20, v22, v23, v24, v25);

      sub_1D5CBF568(v25);
    }
  }
}

void sub_1D62A8774(char **a1, __int128 *a2)
{
  v5 = *v2;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v11[6] = a2[6];
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  v9 = *(v5 + 56);
  if (!v9 || (sub_1D5CF6244(a1, v11, v9), !v3))
  {
    swift_beginAccess();
    v10 = *(v5 + 64);

    sub_1D6E71448(a1, v11, v10);
  }
}

void sub_1D62A8828(char **a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  v6 = *(v2 + 24);
  if (v6)
  {
    sub_1D5CF6244(a1, v7, v6);
  }
}

uint64_t sub_1D62A8874(uint64_t result, uint64_t a2)
{
  if (*(v2 + 8) >> 62 == 1)
  {
    return sub_1D62A8874(result, a2);
  }

  return result;
}

uint64_t sub_1D62A88BC(uint64_t result, uint64_t a2)
{
  if (*v2 >> 62 == 1)
  {
    return sub_1D62A8874(result, a2);
  }

  return result;
}

uint64_t sub_1D62A8924(char **a1, __int128 *a2)
{
  v6 = a2[5];
  v15[4] = a2[4];
  v15[5] = v6;
  v15[6] = a2[6];
  v7 = a2[1];
  v15[0] = *a2;
  v15[1] = v7;
  v8 = a2[3];
  v15[2] = a2[2];
  v15[3] = v8;
  v9 = *(v2 + 80);
  v10 = *(v2 + 96);
  v11 = *(v2 + 106);
  v12 = *(v2 + 104);

  sub_1D5CF8944(a1, a2);

  if (!v3)
  {

    sub_1D5CF6244(a1, v15, v9);

    v14 = v12 | (v11 << 16);
    if (BYTE2(v14) != 255)
    {
      sub_1D610CA74(v10, v12 | (v11 << 16), SBYTE2(v14), sub_1D610CA28, sub_1D610CA5C);
      sub_1D62A8A9C();
      return sub_1D610CA74(v10, v12 | (v11 << 16), SBYTE2(v14), sub_1D60CF6A8, sub_1D60CF6DC);
    }
  }

  return result;
}

void sub_1D62A8A9C()
{
  v1 = *(v0 + 10);
  if (*(v0 + 10))
  {
    v2 = *v0;
    v3 = *(v0 + 8);
    if (v1 == 1)
    {
      if ((v3 & 0x100) != 0 && v3 != 0xFF)
      {
        v4 = v2;
        v5 = v3;
        v6 = 1;
LABEL_10:
        sub_1D610CA74(v4, v5, v6, sub_1D610CA28, sub_1D610CA5C);
        sub_1D60CF6C8(v2, v3);
      }
    }

    else if (v3 >> 8 <= 0xFE && (v3 & 0x100) != 0 && v3 != 0xFF)
    {
      v4 = v2;
      v5 = v3;
      v6 = 2;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1D62A8BE8(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v18[4] = a2[4];
  v18[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v18[0] = *a2;
  v18[1] = v7;
  v8 = a2[3];
  v18[2] = a2[2];
  v18[3] = v8;
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[3];
  v19[2] = v2[2];
  v19[3] = v11;
  v19[1] = v10;
  v18[6] = v6;
  v19[0] = v9;
  v12 = v2[4];
  v13 = v2[5];
  v14 = v2[7];
  v19[6] = v2[6];
  v19[7] = v14;
  v19[4] = v12;
  v19[5] = v13;
  v15 = sub_1D6011280(v19);
  v16 = sub_1D5D756C8(v19);
  if (v15 == 1)
  {
    return sub_1D5CF8C68(a1, v18, *(v16 + 112));
  }

  else
  {
    return sub_1D62A6528(a1, a2);
  }
}

uint64_t sub_1D62A8CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v25 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v16[5];
  v33 = v16[4];
  v34 = v17;
  v35 = v16[6];
  v18 = v16[1];
  v29 = *v16;
  v30 = v18;
  v19 = v16[3];
  v31 = v16[2];
  v32 = v19;
  (*(v20 + 16))(v15, v21);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    (*(v5 + 32))(v11, v15, v4);
    (*(v5 + 16))(v7, v11, v4);
    sub_1D5B49474(0, &qword_1EC8854E0);
    if (swift_dynamicCast())
    {
      v23 = *(&v27 + 1);
      v24 = v28;
      __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
      v25[4] = v33;
      v25[5] = v34;
      v25[6] = v35;
      v25[0] = v29;
      v25[1] = v30;
      v25[2] = v31;
      v25[3] = v32;
      (*(v24 + 8))(a1, v25, v23, v24);
      (*(v5 + 8))(v11, v4);
      return __swift_destroy_boxed_opaque_existential_1(&v26);
    }

    else
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      (*(v5 + 8))(v11, v4);
      return sub_1D5BFB774(&v26, &qword_1EC8854E8, &qword_1EC8854E0);
    }
  }

  return result;
}

unint64_t sub_1D62A9004(unint64_t a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[2];
  v21[3] = a2[3];
  v21[4] = v7;
  v10 = a2[6];
  v21[5] = v8;
  v21[6] = v10;
  v11 = a2[1];
  v21[0] = *a2;
  v21[1] = v11;
  v21[2] = v9;
  swift_beginAccess();
  v20 = v2[8];
  sub_1D5C82CD8(v20);
  sub_1D5CF9048(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v20);
  }

  sub_1D5C92A8C(v20);
  swift_beginAccess();
  v13 = v2[11];

  sub_1D5CF9258(a1, v21, v13);

  swift_beginAccess();
  sub_1D62A920C(a1);
  v14 = v4[13];
  if (v14)
  {
    v15 = v4[17];
    v22 = v4[18];
    v17 = v4[15];
    v16 = v4[16];
    v18 = v4[14];
    sub_1D62A42E0(a1);
    sub_1D5EB1D80(v14, v18, v17, v16, v15);

    sub_1D5CBF568(v15);
  }

  swift_beginAccess();
  v19 = v4[19];

  sub_1D5CF6090(a1, v21, v19);
}

uint64_t sub_1D62A920C(uint64_t a1)
{
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  result = nullsub_1(a1);
  if (!v1)
  {
    swift_beginAccess();
    nullsub_1(a1);
    return swift_beginAccess();
  }

  return result;
}

char **sub_1D62A9398(char **result, __int128 *a2)
{
  if (*v2)
  {
    return sub_1D5CFCC3C(result, a2);
  }

  return result;
}

char **sub_1D62A93D8(char **result, __int128 *a2)
{
  if (*(v2 + 24) < 0)
  {
    return sub_1D5CFCC3C(result, a2);
  }

  return result;
}

uint64_t sub_1D62A9404(char **a1, __int128 *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  sub_1D6057D14(v6, v7, v8, v9);
  sub_1D62A93D8(a1, a2);
  return sub_1D6057D74(v6, v7, v8, v9);
}

uint64_t sub_1D62A9520(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v15[4] = a2[4];
  v15[5] = v5;
  v15[6] = a2[6];
  v6 = a2[1];
  v15[0] = *a2;
  v15[1] = v6;
  v7 = a2[3];
  v15[2] = a2[2];
  v15[3] = v7;
  v8 = v2[8];
  if (!v8 || (v9 = v2[12], v11 = v2[10], v10 = v2[11], v12 = v2[9], sub_1D62A42E0(a1), sub_1D5EB1D80(v8, v12, v11, v10, v9), , , , , sub_1D5CBF568(v9), result = , !v3))
  {
    swift_beginAccess();
    v14 = v2[7];

    sub_1D5CF6090(a1, v15, v14);
  }

  return result;
}

uint64_t sub_1D62A967C(uint64_t result, __int128 *a2)
{
  v4 = result;
  v5 = *(v2 + 64);
  v6 = *(v2 + 80);
  if (v5 <= -2049)
  {
    result = *(v2 + 16);
    v7 = 1 << ((v5 >> 7) & 0x7E | ((v5 & 8) != 0));
    if ((v7 & 0x3EE2) != 0 || (v7 & 0x4119) == 0 && ((1 << (v5 >> 4)) & 0xDF6) != 0)
    {
      result = sub_1D60107DC(result, *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v5);
    }
  }

  if ((~v6 & 0xF000000000000007) != 0)
  {

    sub_1D5CF9A24(v4, a2);
  }

  return result;
}

uint64_t sub_1D62A978C(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v13[4] = a2[4];
  v13[5] = v5;
  v13[6] = a2[6];
  v6 = a2[1];
  v13[0] = *a2;
  v13[1] = v6;
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = v2[10];
  v9 = v2[11];
  v11 = v2[14];
  v10 = v2[15];

  sub_1D5CF4060(a1, v13, v9);

  if (!v3)
  {

    sub_1D5CF6244(a1, v13, v11);

    sub_1D5CFD3E0(a1, v13, v10);

    sub_1D5CF6090(a1, v13, v8);
  }

  return result;
}

void sub_1D62A98C8(char **a1, __int128 *a2)
{
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  v6 = *(v2 + 40);
  v7 = v6 >> 5;
  if (v6 >> 5 > 3)
  {
    if (v6 >> 5 <= 5)
    {
      goto LABEL_6;
    }

    if (v7 == 6)
    {
      sub_1D62A99A4(a1, a2);
    }
  }

  else
  {
    if (v6 >> 5 <= 1)
    {
      if (!v7)
      {
        return;
      }

LABEL_6:
      v18 = *v2;
      v19 = v3;
      v20 = v4;
      v21 = v5;
      v8 = a2[5];
      v15 = a2[4];
      v16 = v8;
      v17 = a2[6];
      v9 = a2[1];
      v11 = *a2;
      v12 = v9;
      v10 = a2[3];
      v13 = a2[2];
      v14 = v10;
      sub_1D6AC6E60(a1, &v11);
      return;
    }

    if (v7 != 2)
    {
      *&v11 = *v2;
      *(&v11 + 1) = v3;
      LOWORD(v12) = v4;
      sub_1D62B2B9C(a1, a2);
    }
  }
}

char **sub_1D62A99A4(char **a1, __int128 *a2)
{
  v3 = *(v2 + 8);
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (*(v2 + 40))
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 & 0xFFFFFFFE | (v3 >> 1) & 1;
  if (!v7)
  {
    goto LABEL_7;
  }

  if (v7 == 1)
  {
    v3 &= ~2uLL;
LABEL_7:
    v24 = *v2;
    v25 = v3;
    v26 = v5;
    v27 = v4;
    v8 = a2[5];
    v21 = a2[4];
    v22 = v8;
    v23 = a2[6];
    v9 = a2[1];
    v17 = *a2;
    v18 = v9;
    v10 = a2[3];
    v19 = a2[2];
    v20 = v10;
    return sub_1D6AC6E60(a1, &v17);
  }

  v12 = *(v2 + 32);
  v24 = *(v2 + 8);
  v25 = v5;
  v26 = v4;
  v27 = v12;
  v13 = a2[5];
  v21 = a2[4];
  v22 = v13;
  v23 = a2[6];
  v14 = a2[1];
  v17 = *a2;
  v18 = v14;
  v15 = a2[3];
  v19 = a2[2];
  v20 = v15;
  sub_1D5F58484(v3, v5);
  sub_1D6AC6E60(a1, &v17);
  return sub_1D5F580D0(v24, v25);
}

uint64_t sub_1D62A9AB4(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v38[4] = a2[4];
  v38[5] = v5;
  v38[6] = a2[6];
  v6 = a2[1];
  v38[0] = *a2;
  v38[1] = v6;
  v7 = a2[3];
  v38[2] = a2[2];
  v38[3] = v7;
  swift_beginAccess();
  v8 = *(v2 + 48);

  sub_1D6E71844(a1, v38, v8);

  if (!v3)
  {
    v10 = *(v2 + 64);
    if (v10)
    {
      sub_1D5D0AE64(a1, v38, v10);
    }

    v37 = *(v2 + 176);
    v11 = *(v2 + 144);
    v34 = *(v2 + 128);
    v35 = v11;
    v36 = *(v2 + 160);
    v12 = *(v2 + 112);
    v33[0] = *(v2 + 96);
    v33[1] = v12;
    if (v37 != 254)
    {
      *&v22 = v34;
      swift_retain_n();
      sub_1D5CF9A24(a1, v38);

      sub_1D5D0ABCC(v33, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    v13 = *(v2 + 232);
    v14 = *(v2 + 248);
    v15 = *(v2 + 200);
    v22 = *(v2 + 184);
    v23 = v15;
    v24 = *(v2 + 216);
    v25 = v13;
    v16 = *(v2 + 296);
    v17 = *(v2 + 328);
    v30 = *(v2 + 312);
    v31 = v17;
    v18 = *(v2 + 264);
    v19 = *(v2 + 280);
    v26 = v14;
    v27 = v18;
    v32 = *(v2 + 344);
    v28 = v19;
    v29 = v16;
    result = sub_1D60081E0(&v22);
    if (result != 1)
    {
      v20[8] = v30;
      v20[9] = v31;
      v21 = v32;
      v20[4] = v26;
      v20[5] = v27;
      v20[6] = v28;
      v20[7] = v29;
      v20[0] = v22;
      v20[1] = v23;
      v20[2] = v24;
      v20[3] = v25;
      result = sub_1D62B4E2C(v20);
      if (result > 1)
      {
        if (result == 2)
        {
          sub_1D5D04BC4(v20);
          return sub_1D62A967C(a1, v38);
        }
      }

      else
      {
        return sub_1D5D04BC4(v20);
      }
    }
  }

  return result;
}

uint64_t sub_1D62A9CF8(unint64_t a1, __int128 *a2)
{
  v4 = v2;
  v6 = a2[5];
  v16[4] = a2[4];
  v16[5] = v6;
  v16[6] = a2[6];
  v7 = a2[1];
  v16[0] = *a2;
  v16[1] = v7;
  v8 = a2[3];
  v16[2] = a2[2];
  v16[3] = v8;
  if (!*(v2 + 16) || (result = sub_1D62A9EC8(a1, a2), !v3))
  {
    v10 = *(v2 + 24);
    if (!v10)
    {
      goto LABEL_8;
    }

    v11 = v3;
    swift_beginAccess();
    v12 = *(v10 + 72);
    if (v12)
    {

      sub_1D6E6120C(a1, v16, v12);

      if (v3)
      {
        return result;
      }

      v11 = 0;
    }

    swift_beginAccess();
    v13 = *(v10 + 88);

    v3 = v11;
    sub_1D6E71B64(a1, v16, v13);

    if (!v11)
    {
LABEL_8:
      swift_beginAccess();
      v15 = *(v4 + 32);
      sub_1D5C82CD8(v15);
      sub_1D5CF9048(a1, v16);
      result = sub_1D5C92A8C(v15);
      if (!v3)
      {
        swift_beginAccess();
        v14 = *(v4 + 40);

        sub_1D5CF9258(a1, v16, v14);
      }
    }
  }

  return result;
}

uint64_t sub_1D62A9EC8(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v26 = a2[4];
  v27 = v5;
  v28 = a2[6];
  v6 = a2[1];
  v22 = *a2;
  v23 = v6;
  v7 = a2[3];
  v24 = a2[2];
  v25 = v7;
  swift_beginAccess();
  v8 = *(v2 + 48);

  sub_1D6E714FC(a1, &v22, v8);
  if (v3)
  {
  }

  v10 = *(v2 + 56);
  v21 = *(v2 + 120);
  v11 = *(v2 + 72);
  v20[0] = v10;
  v20[1] = v11;
  v12 = *(v2 + 104);
  v20[2] = *(v2 + 88);
  v20[3] = v12;
  v13 = v10;
  if (v21 <= 1u)
  {
    if (v21)
    {
      v14 = *(v2 + 72);
      v15 = *(v2 + 104);
      v31 = *(v2 + 88);
      v32 = v15;
      LOBYTE(v33) = *(v2 + 120);
      v29 = *(v2 + 56);
      v30 = v14;
      sub_1D619916C(&v29, v19);
      sub_1D6E610B8(a1, &v22, v13);
      result = sub_1D5D0ABCC(v20, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    }
  }

  else if (v21 == 2)
  {
    v33 = v26;
    v34 = v27;
    v35 = v28;
    v29 = v22;
    v30 = v23;
    v31 = v24;
    v32 = v25;
    result = sub_1D5CF8C68(a1, &v29, *&v20[0]);
  }

  else if (v21 == 3)
  {
    result = sub_1D5D0ABCC(v20, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
  }

  v16 = *(v2 + 128);
  if (v16)
  {
    result = sub_1D5D0AE64(a1, &v22, v16);
  }

  LOBYTE(v34) = *(v2 + 216);
  v17 = *(v2 + 184);
  v31 = *(v2 + 168);
  v32 = v17;
  v33 = *(v2 + 200);
  v18 = *(v2 + 152);
  v29 = *(v2 + 136);
  v30 = v18;
  if (v34 != 254)
  {
    v19[0] = v31;
    swift_retain_n();
    sub_1D5CF9A24(a1, &v22);

    return sub_1D5D0ABCC(&v29, &qword_1EDF33718, &type metadata for FormatShadow);
  }

  return result;
}

uint64_t sub_1D62AA134(uint64_t result, __int128 *a2)
{
  v3 = a2[5];
  v6[4] = a2[4];
  v6[5] = v3;
  v6[6] = a2[6];
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v5 = a2[3];
  v6[2] = a2[2];
  v6[3] = v5;
  if (*(v2 + 64) > 1u)
  {
    if (*(v2 + 64) == 2)
    {
      return sub_1D62A6528(result, a2);
    }
  }

  else if (*(v2 + 64))
  {
    return sub_1D6E610B8(result, v6, *v2);
  }

  return result;
}

uint64_t sub_1D62AA1CC(uint64_t a1, __int128 *a2)
{

  sub_1D5CF9A24(a1, a2);
}

uint64_t sub_1D62AA254(uint64_t result, __int128 *a2)
{
  v4 = result;
  v5 = a2[5];
  v23[4] = a2[4];
  v23[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v23[0] = *a2;
  v23[1] = v7;
  v8 = a2[3];
  v23[2] = a2[2];
  v23[3] = v8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 32);
  v23[6] = v6;
  v24[0] = v9;
  v11 = *(v2 + 48);
  v12 = *(v2 + 64);
  v25 = *(v2 + 80);
  v24[2] = v11;
  v24[3] = v12;
  v24[1] = v10;
  v13 = *(v2 + 88);
  v30 = *(v2 + 176);
  v14 = *(v2 + 160);
  v28 = *(v2 + 144);
  v29 = v14;
  v15 = *(v2 + 128);
  v26[1] = *(v2 + 112);
  v27 = v15;
  v26[0] = *(v2 + 96);
  v16 = *&v24[0];
  if (v25 <= 1u)
  {
    if (v25)
    {
      v17 = *(v2 + 64);
      v33 = *(v2 + 48);
      v34 = v17;
      LOBYTE(v35) = *(v2 + 80);
      v18 = *(v2 + 32);
      v31 = *(v2 + 16);
      v32 = v18;
      sub_1D619916C(&v31, v22);
      sub_1D6E610B8(v4, v23, v16);
      result = sub_1D5D0ABCC(v24, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
      if (v3)
      {
        return result;
      }
    }
  }

  else if (v25 == 2)
  {
    v19 = a2[5];
    v35 = a2[4];
    v36 = v19;
    v37 = a2[6];
    v20 = a2[1];
    v31 = *a2;
    v32 = v20;
    v21 = a2[3];
    v33 = a2[2];
    v34 = v21;
    result = sub_1D5CF8C68(result, &v31, *&v24[0]);
    if (v3)
    {
      return result;
    }
  }

  if (!v13 || (result = sub_1D5D0AE64(v4, v23, v13), !v3))
  {
    if (v30 != 254)
    {
      *&v31 = v27;
      swift_retain_n();
      sub_1D5CF9A24(v4, v23);

      return sub_1D5D0ABCC(v26, &qword_1EDF33718, &type metadata for FormatShadow);
    }
  }

  return result;
}

uint64_t sub_1D62AA454(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v34[4] = a2[4];
  v34[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v34[0] = *a2;
  v34[1] = v7;
  v8 = a2[3];
  v34[2] = a2[2];
  v34[3] = v8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 48);
  v11 = *(v2 + 64);
  v34[6] = v6;
  v35[0] = v10;
  v12 = *(v2 + 80);
  v13 = *(v2 + 96);
  v14 = *(v2 + 112);
  v39 = *(v2 + 128);
  v37 = v13;
  v38 = v14;
  v35[1] = v11;
  v36 = v12;
  if (!v9 || (result = sub_1D5D0AE64(a1, v34, v9), !v3))
  {
    if (v39 != 254)
    {
      *&v23 = v36;
      swift_retain_n();
      sub_1D5CF9A24(a1, v34);

      if (v3)
      {
        return sub_1D5D0ABCC(v35, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      sub_1D5D0ABCC(v35, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    v16 = *(v2 + 296);
    v31 = *(v2 + 280);
    v32 = v16;
    v33 = *(v2 + 312);
    v17 = *(v2 + 232);
    v27 = *(v2 + 216);
    v28 = v17;
    v18 = *(v2 + 264);
    v29 = *(v2 + 248);
    v30 = v18;
    v19 = *(v2 + 168);
    v23 = *(v2 + 152);
    v24 = v19;
    v20 = *(v2 + 200);
    v25 = *(v2 + 184);
    v26 = v20;
    result = sub_1D60081E0(&v23);
    if (result != 1)
    {
      v21[8] = v31;
      v21[9] = v32;
      v22 = v33;
      v21[4] = v27;
      v21[5] = v28;
      v21[6] = v29;
      v21[7] = v30;
      v21[0] = v23;
      v21[1] = v24;
      v21[2] = v25;
      v21[3] = v26;
      result = sub_1D62B4E2C(v21);
      if (result > 1)
      {
        if (result == 2)
        {
          sub_1D5D04BC4(v21);
          return sub_1D62A967C(a1, v34);
        }
      }

      else
      {
        return sub_1D5D04BC4(v21);
      }
    }
  }

  return result;
}

uint64_t sub_1D62AA658(uint64_t result, __int128 *a2)
{
  v4 = a2[5];
  v16[4] = a2[4];
  v16[5] = v4;
  v16[6] = a2[6];
  v5 = a2[1];
  v16[0] = *a2;
  v16[1] = v5;
  v6 = a2[3];
  v7 = *v2;
  v8 = *v2 >> 61;
  v16[2] = a2[2];
  v16[3] = v6;
  if (v8 <= 3)
  {
    if (v8 != 2)
    {
      return result;
    }

    v9 = *(*((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 24);
    v10 = result;

    sub_1D6E73DD0(v10, v16, v9);
    if (!v3)
    {

      sub_1D62AA658(v10, v16);
    }
  }

  if (v8 == 4)
  {
    v14 = result;
    result = sub_1D62AA658(result, a2);
    if (!v3)
    {
      return sub_1D62AA658(v14, a2);
    }
  }

  else if (v8 == 5)
  {
    v11 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v12 = result;
    result = sub_1D62AA658(result, a2);
    if (!v3)
    {
      if (v11)
      {

        sub_1D5CF8420(v12, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1D62AA7E4(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v37[4] = a2[4];
  v37[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v37[0] = *a2;
  v37[1] = v7;
  v8 = a2[3];
  v37[2] = a2[2];
  v37[3] = v8;
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[3];
  v38[2] = v2[2];
  v38[3] = v11;
  v37[6] = v6;
  v38[0] = v9;
  v38[1] = v10;
  v12 = v2[4];
  v13 = v2[5];
  v14 = v2[6];
  v15 = v2[7];
  v39 = *(v2 + 128);
  v38[6] = v14;
  v38[7] = v15;
  v38[4] = v12;
  v38[5] = v13;
  v16 = sub_1D5F78DC4(v38);
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = sub_1D5DEA32C(v38);
      v33 = *(v17 + 80);
      v34 = *(v17 + 96);
      v35 = *(v17 + 112);
      v36 = *(v17 + 128);
      v29 = *(v17 + 16);
      v30 = *(v17 + 32);
      v31 = *(v17 + 48);
      v32 = *(v17 + 64);
      v28 = *v17;
      return sub_1D62AA984(a1, a2);
    }

    else
    {
      return sub_1D5DEA32C(v38);
    }
  }

  else
  {
    v19 = sub_1D5DEA32C(v38);
    sub_1D5F78F40(v19, v27);
    v32 = v27[4];
    v33 = v27[5];
    v34 = v27[6];
    v35 = v27[7];
    v28 = v27[0];
    v29 = v27[1];
    v30 = v27[2];
    v31 = v27[3];
    v20 = sub_1D6011280(&v28);
    v21 = sub_1D5D756C8(&v28);
    if (v20 == 1)
    {
      v22 = v21[14];
      v23 = v37;
    }

    else
    {
      v22 = *v21;
      v24 = a2[5];
      v40[4] = a2[4];
      v40[5] = v24;
      v40[6] = a2[6];
      v25 = a2[1];
      v40[0] = *a2;
      v40[1] = v25;
      v26 = a2[3];
      v40[2] = a2[2];
      v40[3] = v26;
      v23 = v40;
    }

    return sub_1D5CF8C68(a1, v23, v22);
  }
}

uint64_t sub_1D62AA984(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v45[4] = a2[4];
  v45[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v45[0] = *a2;
  v45[1] = v7;
  v8 = a2[3];
  v45[2] = a2[2];
  v45[3] = v8;
  v9 = *v2;
  v10 = *(v2 + 16);
  v45[6] = v6;
  v46 = v9;
  v11 = *(v2 + 32);
  v12 = *(v2 + 64);
  v49 = *(v2 + 48);
  v50 = v12;
  v14 = *(v2 + 16);
  v13 = *(v2 + 32);
  v15 = *v2;
  v47 = v10;
  v48 = v13;
  v16 = *(v2 + 96);
  v53 = *(v2 + 112);
  v17 = *(v2 + 96);
  v18 = *(v2 + 64);
  v51 = *(v2 + 80);
  v52 = v17;
  v19 = *(v2 + 112);
  v55[6] = v16;
  v55[7] = v19;
  v55[2] = v11;
  v55[3] = v49;
  v54 = *(v2 + 128);
  v56 = *(v2 + 128);
  v55[4] = v18;
  v55[5] = v51;
  v55[0] = v15;
  v55[1] = v14;
  if (sub_1D6011234(v55) == 1)
  {
    v34[0] = *sub_1D5D756B8(v55);
    v38 = v48;
    v39 = v49;
    v36 = v46;
    v37 = v47;
    v44 = v54;
    v42 = v52;
    v43 = v53;
    v40 = v50;
    v41 = v51;
    sub_1D5D756B8(&v36);

    sub_1D5CF9A24(a1, a2);
  }

  else
  {
    v21 = sub_1D5D756B8(v55);
    v22 = v21[3];
    v24 = *v21;
    v23 = v21[1];
    v35[2] = v21[2];
    v35[3] = v22;
    v35[0] = v24;
    v35[1] = v23;
    v25 = v21[7];
    v27 = v21[4];
    v26 = v21[5];
    v35[6] = v21[6];
    v35[7] = v25;
    v35[4] = v27;
    v35[5] = v26;
    if (sub_1D6011280(v35) == 1)
    {
      v28 = *(sub_1D5D756C8(v35) + 112);
      v44 = v54;
      v42 = v52;
      v43 = v53;
      v38 = v48;
      v39 = v49;
      v40 = v50;
      v41 = v51;
      v36 = v46;
      v37 = v47;
      v29 = sub_1D5D756B8(&v36);
      sub_1D62B73AC(v29, v34);
      sub_1D5CF8C68(a1, v45, v28);
      return sub_1D62B7408(&v46);
    }

    else
    {
      v30 = *sub_1D5D756C8(v35);
      v31 = a2[5];
      v40 = a2[4];
      v41 = v31;
      v42 = a2[6];
      v32 = a2[1];
      v36 = *a2;
      v37 = v32;
      v33 = a2[3];
      v38 = a2[2];
      v39 = v33;
      return sub_1D5CF8C68(a1, &v36, v30);
    }
  }
}

uint64_t sub_1D62AABD4(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v24[4] = a2[4];
  v24[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v24[0] = *a2;
  v24[1] = v7;
  v8 = a2[3];
  v24[2] = a2[2];
  v24[3] = v8;
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[3];
  v27 = v2[2];
  v28 = v11;
  v12 = v2[2];
  v13 = *v2;
  v26 = v2[1];
  v24[6] = v6;
  v25 = v9;
  v14 = v2[5];
  v15 = v2[7];
  v31 = v2[6];
  v32 = v15;
  v16 = v2[3];
  v17 = v2[5];
  v29 = v2[4];
  v30 = v17;
  v33[2] = v12;
  v33[3] = v16;
  v33[0] = v13;
  v33[1] = v10;
  v18 = v2[7];
  v33[6] = v31;
  v33[7] = v18;
  v33[4] = v29;
  v33[5] = v14;
  if (sub_1D6011280(v33) == 1)
  {
    v19 = *(sub_1D5D756C8(v33) + 112);
    v23[4] = v29;
    v23[5] = v30;
    v23[6] = v31;
    v23[7] = v32;
    v23[0] = v25;
    v23[1] = v26;
    v23[2] = v27;
    v23[3] = v28;
    v20 = sub_1D5D756C8(v23);
    sub_1D60865E4(v20, &v22);
    sub_1D5CF8C68(a1, v24, v19);
    return sub_1D62B7E78(&v25);
  }

  else
  {
    sub_1D5D756C8(v33);
    return sub_1D62A6528(a1, a2);
  }
}

uint64_t sub_1D62AAD28(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v11[4] = a2[4];
  v11[5] = v5;
  v11[6] = a2[6];
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  sub_1D5F78F40(v2, v12);
  sub_1D5F78F40(v12, v13);
  v14[4] = v13[4];
  v14[5] = v13[5];
  v14[6] = v13[6];
  v14[7] = v13[7];
  v14[0] = v13[0];
  v14[1] = v13[1];
  v14[2] = v13[2];
  v14[3] = v13[3];
  v8 = sub_1D6011280(v14);
  v9 = sub_1D5D756C8(v14);
  if (v8 == 1)
  {
    return sub_1D5CF8C68(a1, v11, *(v9 + 112));
  }

  else
  {
    return sub_1D62A6528(a1, a2);
  }
}

uint64_t sub_1D62AAE6C(uint64_t result, _OWORD *a2)
{
  v4 = result;
  v5 = a2[5];
  v10[4] = a2[4];
  v10[5] = v5;
  v10[6] = a2[6];
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9 = *v2;
  v8 = v2[1];
  if (!v9 || (, sub_1D6E5FB2C(v4, v10, v9), result = , !v3))
  {
    if (v8)
    {

      sub_1D6E5FB2C(v4, v10, v8);
    }
  }

  return result;
}

uint64_t sub_1D62AAF1C(uint64_t a1, _OWORD *a2)
{
  v4 = a2[5];
  v9[4] = a2[4];
  v9[5] = v4;
  v9[6] = a2[6];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  v7 = *v2;

  sub_1D6E5FB2C(a1, v9, v7);
}

unint64_t sub_1D62AAFCC(unint64_t result, _OWORD *a2)
{
  v3 = a2[5];
  v10[4] = a2[4];
  v10[5] = v3;
  v10[6] = a2[6];
  v4 = a2[1];
  v10[0] = *a2;
  v10[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = *v2;
  if (*v2 >= 3)
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = result;
    sub_1D5D0AFBC(v7);
    sub_1D5D0AFBC(v8);
    sub_1D5D0AFDC(v9, v10, v7, v8);
    sub_1D5D0AFCC(v7);
    return sub_1D5D0AFCC(v8);
  }

  return result;
}

uint64_t sub_1D62AB09C(unint64_t a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v28[4] = a2[4];
  v28[5] = v7;
  v28[6] = a2[6];
  v8 = a2[1];
  v28[0] = *a2;
  v28[1] = v8;
  v9 = a2[3];
  v28[2] = a2[2];
  v28[3] = v9;
  v23 = v2[4];
  sub_1D5C82CD8(v23);
  sub_1D5CF9048(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v23);
  }

  sub_1D5C92A8C(v23);
  swift_beginAccess();
  v11 = v2[6];

  sub_1D5CF9258(a1, v28, v11);

  if (v4[7])
  {
    sub_1D62AD47C(a1, v28, sub_1D6E7109C);
  }

  v12 = v4[8];
  if (v12)
  {
    swift_beginAccess();
    v13 = *(v12 + 72);
    if (v13)
    {

      sub_1D6E6120C(a1, v28, v13);
    }

    swift_beginAccess();
    v14 = *(v12 + 88);

    sub_1D6E71B64(a1, v28, v14);
  }

  v15 = v4[9];
  if (v15 < 0)
  {
    v20 = v15 & 0x7FFFFFFFFFFFFFFFLL;
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);

    sub_1D62A6198(a1, v28, v21, v22);
  }

  result = swift_beginAccess();
  v16 = v4[11];
  if (v16 >> 62 == 1)
  {
    v17 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v4[11]);
    sub_1D5EB1500(v17);

    sub_1D62A5D84(a1, v28, v17, v18);
    sub_1D5EB15C4(v17);

    result = sub_1D5EB15C4(v16);
  }

  v19 = v4[17];
  if (v19)
  {
    v24 = v4[18];
    v25 = v4[19];
    v26 = v4[20];
    v27 = v4[21];
    sub_1D62A42E0(a1);
    sub_1D5EB1D80(v19, v24, v25, v26, v27);

    sub_1D5CBF568(v27);
  }

  return result;
}

uint64_t sub_1D62AB410(uint64_t result, __int128 *a2)
{
  v4 = result;
  v5 = a2[5];
  v15[4] = a2[4];
  v15[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v15[0] = *a2;
  v15[1] = v7;
  v8 = a2[3];
  v15[2] = a2[2];
  v15[3] = v8;
  v9 = *(v2 + 24);
  v10 = *(v2 + 56);
  v11 = *(v2 + 72);
  v15[6] = v6;
  v16[0] = v10;
  v12 = *(v2 + 88);
  v13 = *(v2 + 104);
  v14 = *(v2 + 120);
  v17 = *(v2 + 136);
  v16[3] = v13;
  v16[4] = v14;
  v16[1] = v11;
  v16[2] = v12;
  if (!v9 || (result = sub_1D5D0AE64(result, v15, v9), !v3))
  {
    if (v17 != 254)
    {
      swift_retain_n();
      sub_1D5CF9A24(v4, v15);

      return sub_1D5D0ABCC(v16, &qword_1EDF33718, &type metadata for FormatShadow);
    }
  }

  return result;
}

uint64_t sub_1D62AB510(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v13[4] = a2[4];
  v13[5] = v5;
  v13[6] = a2[6];
  v6 = a2[1];
  v13[0] = *a2;
  v13[1] = v6;
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = v2[9];
  v9 = v2[11];
  v11 = v2[13];
  v10 = v2[14];
  if (!v2[10] || (result = sub_1D5D0578C(a1, a2), !v3))
  {

    sub_1D5CF4060(a1, v13, v9);

    if (!v3)
    {

      sub_1D5CF6244(a1, v13, v11);

      sub_1D5CFD3E0(a1, v13, v10);

      sub_1D5CF6090(a1, v13, v8);
    }
  }

  return result;
}

uint64_t sub_1D62AB64C(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v12[4] = a2[4];
  v12[5] = v5;
  v12[6] = a2[6];
  v6 = a2[1];
  v12[0] = *a2;
  v12[1] = v6;
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  swift_beginAccess();
  v8 = v2[7];

  sub_1D5CF6244(a1, v12, v8);

  if (!v3)
  {
    swift_beginAccess();
    v10 = v2[8];

    sub_1D5CF4060(a1, v12, v10);

    swift_beginAccess();
    v11 = v2[9];

    sub_1D5CF6090(a1, v12, v11);
  }

  return result;
}

uint64_t sub_1D62AB7B8(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatItemNodeAction();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62B50EC(v3, v9, type metadata accessor for FormatItemNodeAction);
  result = swift_getEnumCaseMultiPayload();
  if ((result - 2) >= 6)
  {
    if (result)
    {
      return sub_1D62B51D0(v9, type metadata accessor for FormatItemNodeAction);
    }

    else
    {
      v11 = *v9;
      v18 = *(v9 + 1);
      v19 = v11;
      v12 = *(v9 + 2);
      v13 = *(v9 + 3);
      v14 = *(v9 + 4);
      v17 = *(v9 + 5);
      v15 = v9[50];
      v28 = v15;
      v16 = *(v9 + 24);
      v20 = v11;
      v21 = v18;
      v22 = v12;
      v23 = v13;
      v24 = v14;
      v25 = v17;
      v26 = v16;
      v27 = v15;
      sub_1D5CF6D20(a1, a2);
      return sub_1D5E1DCFC(v19, v18, v12, v13, v14, v17, v16, v15, sub_1D5E1DE10, sub_1D5E1DE10, sub_1D5E1DE98);
    }
  }

  return result;
}

uint64_t sub_1D62AB9E4(uint64_t a1, __int128 *a2)
{
  v4 = v2;
  v7 = type metadata accessor for FormatItemNodeAction();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v34 - v14;
  v41 = *(v4 + 80);
  v16 = *(v4 + 32);
  v40[0] = *(v4 + 16);
  v40[1] = v16;
  v17 = *(v4 + 64);
  v40[2] = *(v4 + 48);
  v40[3] = v17;
  if ((v41 & 0xFE) != 0x7E)
  {
    v18 = *&v40[0];
    if ((*&v40[0] & 0xF000000000000007) != 0xF000000000000007)
    {
      v34 = v8;
      v35 = v11;
      v36 = v7;
      v42 = *&v40[0];
      sub_1D62B5354(v40, v37, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
      sub_1D5CFCFAC(v18);
      sub_1D5CF9A24(a1, a2);

      result = sub_1D5D0ABCC(v40, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
      if (v3)
      {
        return result;
      }

      v11 = v35;
      v7 = v36;
      v8 = v34;
    }
  }

  if (!*(v4 + 144) && (*(v4 + 136) & 0xF000000000000007) != 0xD000000000000007)
  {
    v20 = v8;
    v21 = *(v4 + 88);
    if ((v21 & 0xF000000000000007) != 0xF000000000000007)
    {
      v36 = v7;
      v37[0] = v21;

      sub_1D5CF9A24(a1, a2);

      if (v3)
      {
        return result;
      }

      v7 = v36;
    }

    v8 = v20;
  }

  v22 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  sub_1D5C00D70(v4 + *(v22 + 28), v15, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    return sub_1D5B6EF64(v15, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  }

  sub_1D62B50EC(v15, v11, type metadata accessor for FormatItemNodeAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 6)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D62B51D0(v11, type metadata accessor for FormatItemNodeAction);
    }

    else
    {
      v24 = *v11;
      v25 = *(v11 + 1);
      v26 = a1;
      v28 = *(v11 + 2);
      v27 = *(v11 + 3);
      v29 = *(v11 + 5);
      v35 = *(v11 + 4);
      v36 = v27;
      v34 = v29;
      v30 = v11[50];
      LOBYTE(v42) = v30;
      v31 = a2;
      v32 = *(v11 + 24);
      v37[0] = v24;
      v37[1] = v25;
      v33 = v24;
      v37[2] = v28;
      v37[3] = v27;
      v37[4] = v35;
      v37[5] = v29;
      v38 = v32;
      v39 = v30;
      sub_1D5CF6D20(v26, v31);
      sub_1D5E1DCFC(v33, v25, v28, v36, v35, v34, v32, v30, sub_1D5E1DE10, sub_1D5E1DE10, sub_1D5E1DE98);
    }
  }

  return sub_1D62B51D0(v15, type metadata accessor for FormatItemNodeAction);
}

unint64_t sub_1D62ABE28(unint64_t a1, __int128 *a2)
{
  v4 = v2;
  v6 = a2[5];
  v27[4] = a2[4];
  v27[5] = v6;
  v27[6] = a2[6];
  v7 = a2[1];
  v27[0] = *a2;
  v27[1] = v7;
  v8 = a2[3];
  v27[2] = a2[2];
  v27[3] = v8;
  v9 = v2[4];
  if ((v9 & 0x8000000000000000) == 0)
  {
    if (!v2[5])
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  v11 = v9 & 0x7FFFFFFFFFFFFFFFLL;
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);

  sub_1D62A6054(a1, v27, v12, v13);
  if (v3)
  {
  }

  if (v4[5])
  {
LABEL_3:
    result = sub_1D5D0B200(a1, v27);
    if (v3)
    {
      return result;
    }
  }

LABEL_8:
  v14 = v4[6];
  if (v14)
  {
    swift_beginAccess();
    v15 = *(v14 + 72);
    if (v15)
    {

      sub_1D6E6120C(a1, v27, v15);
      if (v3)
      {
      }
    }

    swift_beginAccess();
    v16 = *(v14 + 88);

    sub_1D6E71B64(a1, v27, v16);
    if (v3)
    {
    }
  }

  v22 = v4[7];
  sub_1D5C82CD8(v22);
  sub_1D5CF9048(a1, v27);
  if (v3)
  {
    return sub_1D5C92A8C(v22);
  }

  sub_1D5C92A8C(v22);
  swift_beginAccess();
  v17 = v4[9];

  sub_1D5CF9258(a1, v27, v17);

  result = swift_beginAccess();
  v18 = v4[11];
  if (v18 >> 62 == 1)
  {
    v19 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v20 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v4[11]);
    sub_1D5EB1500(v19);

    sub_1D62A5D84(a1, v27, v19, v20);
    sub_1D5EB15C4(v19);

    result = sub_1D5EB15C4(v18);
  }

  v21 = v4[16];
  if (v21)
  {
    v23 = v4[17];
    v24 = v4[18];
    v25 = v4[19];
    v26 = v4[20];
    sub_1D62A42E0(a1);
    sub_1D5EB1D80(v21, v23, v24, v25, v26);

    sub_1D5CBF568(v26);
  }

  return result;
}

uint64_t sub_1D62AC1A8(uint64_t result, _OWORD *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _OWORD *, uint64_t, uint64_t))
{
  v6 = a2[5];
  v14[4] = a2[4];
  v14[5] = v6;
  v14[6] = a2[6];
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  if ((*v5 & 0x8000000000000000) != 0)
  {
    v10 = *v5 & 0x7FFFFFFFFFFFFFFFLL;
    v11 = *(v10 + 0x10);
    v12 = *(v10 + 24);
    v13 = result;

    a5(v13, v14, v11, v12);
  }

  return result;
}

uint64_t sub_1D62AC270(uint64_t result, __int128 *a2)
{
  v4 = result;
  v5 = a2[5];
  v18[4] = a2[4];
  v18[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v18[0] = *a2;
  v18[1] = v7;
  v8 = a2[3];
  v18[2] = a2[2];
  v18[3] = v8;
  v10 = *(v2 + 24);
  v9 = *(v2 + 32);
  v11 = *(v2 + 64);
  v12 = *(v2 + 80);
  v18[6] = v6;
  v19[0] = v11;
  v13 = *(v2 + 96);
  v14 = *(v2 + 112);
  v15 = *(v2 + 128);
  v20 = *(v2 + 144);
  v19[3] = v14;
  v19[4] = v15;
  v19[1] = v12;
  v19[2] = v13;
  v16 = *(v2 + 200);
  if ((~v10 & 0xF000000000000007) == 0 || (, sub_1D5D0491C(v4, a2), result = , !v3))
  {
    if (!v9 || (result = sub_1D5D0AE64(v4, v18, v9), !v3))
    {
      if (v20 != 254)
      {
        swift_retain_n();
        sub_1D5CF9A24(v4, v18);

        if (v3)
        {
          return sub_1D5D0ABCC(v19, &qword_1EDF33718, &type metadata for FormatShadow);
        }

        result = sub_1D5D0ABCC(v19, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      if (v16)
      {
        return sub_1D6E5E92C(v4, v18, v16);
      }
    }
  }

  return result;
}

uint64_t sub_1D62AC3E8(uint64_t result, __int128 *a2)
{
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v10[6] = a2[6];
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  v6 = a2[3];
  v10[2] = a2[2];
  v10[3] = v6;
  v7 = *v2;
  v8 = v2[1];
  if (*v2)
  {
    v9 = result;
    result = sub_1D6E73EF0(result, v10, v7);
    if (v3)
    {
      return result;
    }

    result = v9;
  }

  if (v8)
  {
    return sub_1D5CF9E40(result, v10, v8);
  }

  return result;
}

uint64_t sub_1D62AC458(unint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v19[4] = a2[4];
  v19[5] = v5;
  v19[6] = a2[6];
  v6 = a2[1];
  v19[0] = *a2;
  v19[1] = v6;
  v7 = a2[3];
  v19[2] = a2[2];
  v19[3] = v7;
  v8 = *v2;
  v9 = v2[1];
  v11 = v2[2];
  v10 = v2[3];
  v12 = v2[4];
  v13 = v2[5];
  v14 = v2[6];
  v15 = v2[8];
  if ((~v9 & 0xF000000000000007) != 0 || (v2[3] & 7) != 7)
  {
    v18 = v2[8];
    if ((v10 & 4) != 0)
    {
      v20 = *v2;
      result = sub_1D5CFEE30(a1, a2);
      if (v3)
      {
        return result;
      }
    }

    else
    {
      sub_1D62B7098(v8, v9, v11, v10);
      sub_1D5CFE5E0(a1, v19, v8);
      if (v3)
      {
        return sub_1D62B7110(v8, v9, v11, v10);
      }

      sub_1D5CF9308(a1, v19, v9, v11, v10, sub_1D5CFF794, sub_1D5CFEE30);
      sub_1D62B7110(v8, v9, v11, v10);
    }

    v15 = v18;
  }

  if ((~(v12 & v14) & 0x3000000000000007) != 0)
  {
    v17 = v15;
    if ((v14 & 0x2000000000000000) != 0)
    {
      v20 = v12;
      result = sub_1D5D07D58(a1, v19);
      if (v3)
      {
        return result;
      }
    }

    else
    {
      sub_1D62B6FC0(v12, v13, v14);
      sub_1D62A3D94(a1, v19, v12, v13);
      result = sub_1D62B7020(v12, v13, v14);
      if (v3)
      {
        return result;
      }
    }

    v15 = v17;
  }

  return sub_1D5CF9E40(a1, v19, v15);
}

uint64_t sub_1D62AC654(uint64_t a1, __int128 *a2)
{
  v4 = a2[5];
  v13[4] = a2[4];
  v13[5] = v4;
  v13[6] = a2[6];
  v5 = a2[1];
  v13[0] = *a2;
  v13[1] = v5;
  v6 = a2[3];
  v13[2] = a2[2];
  v13[3] = v6;
  v7 = *v2;
  v8 = v2[3];
  if ((v8 & 4) != 0)
  {
    return sub_1D5CFEE30(a1, a2);
  }

  v9 = v2[1];
  v10 = v2[2];
  result = sub_1D5CFE5E0(a1, v13, v7);
  if (!v3)
  {
    return sub_1D5CF9308(a1, v13, v9, v10, v8, sub_1D5CFF794, sub_1D5CFEE30);
  }

  return result;
}

unint64_t sub_1D62AC710(unint64_t a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  if ((v2[2] & 0x2000000000000000) != 0)
  {
    return sub_1D5D07D58(a1, a2);
  }

  else
  {
    return sub_1D62A3D94(a1, v7, *v2, v2[1]);
  }
}