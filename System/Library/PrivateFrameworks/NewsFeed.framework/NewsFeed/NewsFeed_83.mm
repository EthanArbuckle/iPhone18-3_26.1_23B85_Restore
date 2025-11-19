void sub_1D62AC794(uint64_t a1, _OWORD *a2)
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
  v7 = *(v2 + 32);
  v8 = *(v2 + 56);
  if (v7 != 255 && (v7 & 1) != 0)
  {
    v9 = *(v2 + 56);
    v10 = *(v2 + 24);
    v11 = *(v10 + 24);
    v12 = a1;
    sub_1D62B5FC8(v10, 1);
    sub_1D6E6399C(v12, v13, v11);
    if (v3)
    {
      sub_1D62B5FD4(v10, v7);
      return;
    }

    sub_1D62A7BBC(v12, v13, *(v10 + 32));
    sub_1D62B5FD4(v10, v7);
    a1 = v12;
    v8 = v9;
  }

  sub_1D6E63788(a1, v13, v8);
}

unint64_t sub_1D62AC8A8(unint64_t result, __int128 *a2, unint64_t a3)
{
  v4 = result;
  v5 = a2[5];
  v14[4] = a2[4];
  v14[5] = v5;
  v14[6] = a2[6];
  v6 = a2[1];
  v14[0] = *a2;
  v14[1] = v6;
  v7 = a2[3];
  v8 = a3 >> 61;
  v14[2] = a2[2];
  v14[3] = v7;
  if ((a3 >> 61) <= 1)
  {
    if (v8)
    {
      return sub_1D62AC458(result, a2);
    }

    else
    {
      return sub_1D62ACA70(result, a2);
    }
  }

  else if (v8 == 2)
  {
    v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    sub_1D6E6994C(v4, v14, v12);
    if (!v3)
    {
      sub_1D62AC8A8(v4, v14, v13);
    }
  }

  else if (v8 == 3)
  {
    v9 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

    sub_1D5CF6D20(v4, a2);
    if (!v3)
    {
      sub_1D6E6738C(v4, v14, v9);
      sub_1D62AC8A8(v4, v14, v10);
    }
  }

  return result;
}

uint64_t sub_1D62ACA70(unint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v18[4] = a2[4];
  v18[5] = v5;
  v18[6] = a2[6];
  v6 = a2[1];
  v18[0] = *a2;
  v18[1] = v6;
  v7 = a2[3];
  v18[2] = a2[2];
  v18[3] = v7;
  v8 = *v2;
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = v2[7];
  if ((v9 & 4) != 0)
  {
    v19 = *v2;
    result = sub_1D5CFEE30(a1, a2);
    if (v3)
    {
      return result;
    }

    if ((v12 & 0x2000000000000000) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v17 = v2[7];
    v14 = v2[1];
    v15 = v2[2];

    sub_1D5CFE5E0(a1, v18, v8);
    if (v3)
    {
      return sub_1D62B7130(v8, v14, v15, v9);
    }

    sub_1D5CF9308(a1, v18, v14, v15, v9, sub_1D5CFF794, sub_1D5CFEE30);
    sub_1D62B7130(v8, v14, v15, v9);
    v13 = v17;
    if ((v12 & 0x2000000000000000) != 0)
    {
LABEL_8:
      v19 = v10;
      sub_1D5D07D58(a1, v18);
      return sub_1D62ACE6C(a1, v18, v13);
    }
  }

  sub_1D62A3D94(a1, v18, v10, v11);
  return sub_1D62ACE6C(a1, v18, v13);
}

void sub_1D62ACC30(uint64_t a1, _OWORD *a2)
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
  if (v8 <= 2)
  {
    if (v8)
    {
      v9 = v7 & 0x1FFFFFFFFFFFFFFFLL;
      if (v8 == 1)
      {
        sub_1D62AC794(a1, a2);
      }

      else
      {
        v12 = *(*(v9 + 16) + 24);

        sub_1D6E6198C(a1, v14, v12);
        if (!v3)
        {

          sub_1D62ACC30(a1, v14);
        }
      }
    }

    else if (*(v7 + 48))
    {
      v10 = *(v7 + 40);
      sub_1D6E6399C(a1, v14, *(v10 + 24));
      if (!v3)
      {
        sub_1D62A7BBC(a1, v14, *(v10 + 32));
      }
    }
  }
}

uint64_t sub_1D62ACD64(uint64_t result, _OWORD *a2)
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
  if (*(v2 + 32) == 1)
  {
    v7 = *(v2 + 24);
    v8 = result;
    result = sub_1D6E6399C(result, v9, *(v7 + 24));
    if (!v3)
    {
      return sub_1D62A7BBC(v8, v9, *(v7 + 32));
    }
  }

  return result;
}

uint64_t sub_1D62ACDF4(uint64_t result, _OWORD *a2)
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
  if (*(v2 + 8) == 1)
  {
    v7 = *v2;
    v8 = result;
    result = sub_1D6E6399C(result, v9, *(v7 + 24));
    if (!v3)
    {
      return sub_1D62A7BBC(v8, v9, *(v7 + 32));
    }
  }

  return result;
}

uint64_t sub_1D62ACE6C(uint64_t result, __int128 *a2, unint64_t a3)
{
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v11[6] = a2[6];
  v5 = a2[1];
  v11[0] = *a2;
  v11[1] = v5;
  v6 = a2[3];
  v7 = a3 >> 62;
  v11[2] = a2[2];
  v11[3] = v6;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v9 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v10 = result;

      sub_1D5D07FF0(v10, v11, v8);
      if (!v3)
      {
        sub_1D5D0868C(v10, v11, v9);
      }
    }
  }

  else if (v7)
  {
    return sub_1D5CF6D20(result, a2);
  }

  return result;
}

uint64_t sub_1D62ACFC0(uint64_t result, __int128 *a2)
{
  v4 = result;
  v5 = a2[5];
  v13[4] = a2[4];
  v13[5] = v5;
  v13[6] = a2[6];
  v6 = a2[1];
  v13[0] = *a2;
  v13[1] = v6;
  v7 = a2[3];
  v8 = *v2;
  v9 = *v2 >> 62;
  v13[2] = a2[2];
  v13[3] = v7;
  if (v9)
  {
    v10 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    if (v9 == 1)
    {

      sub_1D62A5850(v4, v13);
    }

    else
    {
      v11 = *(v10 + 24);
      swift_retain_n();

      sub_1D62ACFC0(v4, a2);
      if (v3)
      {
      }

      sub_1D6E71FD0(v4, v13, v11);
    }
  }

  else if (*(v8 + 16) >> 62 == 3)
  {
    return sub_1D62B3700(result, a2);
  }

  return result;
}

uint64_t sub_1D62AD138(unint64_t a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v49[4] = a2[4];
  v49[5] = v7;
  v49[6] = a2[6];
  v8 = a2[1];
  v49[0] = *a2;
  v49[1] = v8;
  v9 = a2[3];
  v49[2] = a2[2];
  v49[3] = v9;
  *&v40 = *(v2 + 32);
  sub_1D5C82CD8(v40);
  sub_1D5CF9048(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v40);
  }

  sub_1D5C92A8C(v40);
  swift_beginAccess();
  v11 = *(v2 + 48);

  sub_1D5CF9258(a1, v49, v11);

  if (*(v4 + 56))
  {
    sub_1D62AD47C(a1, v49, sub_1D6E73BCC);
  }

  v48 = *(v4 + 64);

  sub_1D62ACFC0(a1, v49);

  v12 = *(v4 + 152);
  v13 = *(v4 + 184);
  v38[6] = *(v4 + 168);
  v39[0] = v13;
  *(v39 + 9) = *(v4 + 193);
  v14 = *(v4 + 88);
  v15 = *(v4 + 120);
  v38[2] = *(v4 + 104);
  v38[3] = v15;
  v38[4] = *(v4 + 136);
  v38[5] = v12;
  v38[0] = *(v4 + 72);
  v38[1] = v14;
  v16 = *(v4 + 152);
  v17 = *(v4 + 184);
  v46 = *(v4 + 168);
  v47[0] = v17;
  *(v47 + 9) = *(v4 + 193);
  v18 = *(v4 + 88);
  v19 = *(v4 + 120);
  v42 = *(v4 + 104);
  v43 = v19;
  v44 = *(v4 + 136);
  v45 = v16;
  v40 = *(v4 + 72);
  v41 = v18;
  if (sub_1D60486AC(&v40) != 1)
  {
    v36 = v46;
    v37[0] = v47[0];
    *(v37 + 9) = *(v47 + 9);
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v45;
    v30 = v40;
    v31 = v41;
    sub_1D62B5354(v38, &v29, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
    sub_1D62B49F0(&v30);
  }

  result = swift_beginAccess();
  v20 = *(v4 + 232);
  if (v20 >> 62 == 1)
  {
    v21 = *((v20 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v22 = *((v20 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(*(v4 + 232));
    sub_1D5EB1500(v21);

    sub_1D62A5D84(a1, v49, v21, v22);
    sub_1D5EB15C4(v21);

    result = sub_1D5EB15C4(v20);
  }

  v23 = *(v4 + 272);
  if (v23)
  {
    v24 = *(v4 + 280);
    v25 = *(v4 + 288);
    v27 = *(v4 + 296);
    v26 = *(v4 + 304);
    v28 = *(v4 + 312);
    *&v30 = v23;
    *(&v30 + 1) = v24;
    *&v31 = v25;
    *(&v31 + 1) = v27;
    *&v32 = v26;
    *(&v32 + 1) = v28;
    sub_1D62A42E0(a1);
    sub_1D5EB1D80(v23, v24, v25, v27, v26);

    sub_1D5CBF568(v26);
  }

  return result;
}

uint64_t sub_1D62AD47C(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *, uint64_t))
{
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[2];
  v19[3] = a2[3];
  v19[4] = v7;
  v10 = a2[6];
  v19[5] = v8;
  v19[6] = v10;
  v11 = a2[1];
  v19[0] = *a2;
  v19[1] = v11;
  v19[2] = v9;
  swift_beginAccess();
  v12 = *(v3 + 48);

  a3(a1, v19, v12);

  if (!v4)
  {
    v14 = *(v3 + 64);
    if (v14)
    {
      result = sub_1D5D0AE64(a1, v19, v14);
    }

    v18 = *(v3 + 176);
    v15 = *(v3 + 144);
    v17[2] = *(v3 + 128);
    v17[3] = v15;
    v17[4] = *(v3 + 160);
    v16 = *(v3 + 112);
    v17[0] = *(v3 + 96);
    v17[1] = v16;
    if (v18 != 254)
    {
      swift_retain_n();
      sub_1D5CF9A24(a1, v19);

      return sub_1D5D0ABCC(v17, &qword_1EDF33718, &type metadata for FormatShadow);
    }
  }

  return result;
}

uint64_t sub_1D62AD630(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v26(v8, v47 + *(v29 + 52), v5);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1D5BFB774(&v37, &qword_1EC8854E8, &qword_1EC8854E0);
    v15(v8, v47 + *(v29 + 52), v5);
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

uint64_t sub_1D62AD91C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatRange();
  result = sub_1D62AD630(a1, a2, v5);
  if (!v2)
  {
    return sub_1D62AD630(a1, a2, v5);
  }

  return result;
}

uint64_t sub_1D62AD9A8(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v17[4] = a2[4];
  v17[5] = v5;
  v17[6] = a2[6];
  v6 = a2[1];
  v17[0] = *a2;
  v17[1] = v6;
  v7 = a2[3];
  v17[2] = a2[2];
  v17[3] = v7;
  swift_beginAccess();
  v8 = *(v2 + 88);

  sub_1D5CF6244(a1, v17, v8);

  if (!v3)
  {
    swift_beginAccess();
    v10 = *(v2 + 96);
    if (v10 >> 62)
    {
      goto LABEL_17;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v11)
    {
      v12 = 0;
      v18 = v10 & 0xC000000000000001;
      do
      {
        if (v18)
        {
          v13 = MEMORY[0x1DA6FB460](v12, v10);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_13:
            __break(1u);
          }
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_17:
            v11 = sub_1D7263BFC();
            goto LABEL_4;
          }

          v13 = *(v10 + 8 * v12 + 32);

          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_13;
          }
        }

        swift_beginAccess();
        v15 = *(v13 + 40);

        sub_1D5CF6244(a1, v17, v15);

        swift_beginAccess();
        v16 = *(v13 + 32);

        sub_1D5CF6090(a1, v17, v16);

        ++v12;
      }

      while (v14 != v11);
    }
  }

  return result;
}

uint64_t sub_1D62ADBBC(unint64_t a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v24[4] = a2[4];
  v24[5] = v7;
  v24[6] = a2[6];
  v8 = a2[1];
  v24[0] = *a2;
  v24[1] = v8;
  v9 = a2[3];
  v24[2] = a2[2];
  v24[3] = v9;
  swift_beginAccess();
  v19 = v2[4];
  sub_1D5C82CD8(v19);
  sub_1D5CF9048(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v19);
  }

  sub_1D5C92A8C(v19);
  swift_beginAccess();
  v11 = v2[6];

  sub_1D5CF9258(a1, v24, v11);

  sub_1D6E672BC(a1, v24, v4[9]);
  result = swift_beginAccess();
  v12 = v4[11];
  if (v12 >> 62 == 1)
  {
    v13 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v4[11]);
    sub_1D5EB1500(v13);

    sub_1D62A5D84(a1, v24, v13, v14);
    sub_1D5EB15C4(v13);

    result = sub_1D5EB15C4(v12);
  }

  v15 = v4[13];
  if (v15)
  {
    swift_beginAccess();
    v16 = *(v15 + 72);
    if (v16)
    {

      sub_1D6E6120C(a1, v24, v16);
    }

    swift_beginAccess();
    v17 = *(v15 + 88);

    sub_1D6E71B64(a1, v24, v17);
  }

  v18 = v4[15];
  if (v18)
  {
    v20 = v4[16];
    v21 = v4[17];
    v22 = v4[18];
    v23 = v4[19];
    sub_1D62A42E0(a1);
    sub_1D5EB1D80(v18, v20, v21, v22, v23);

    sub_1D5CBF568(v23);
  }

  return result;
}

uint64_t sub_1D62ADE80(unint64_t a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v24[4] = a2[4];
  v24[5] = v7;
  v24[6] = a2[6];
  v8 = a2[1];
  v24[0] = *a2;
  v24[1] = v8;
  v9 = a2[3];
  v24[2] = a2[2];
  v24[3] = v9;
  v19 = v2[4];
  sub_1D5C82CD8(v19);
  sub_1D5CF9048(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v19);
  }

  sub_1D5C92A8C(v19);
  swift_beginAccess();
  v11 = v2[6];

  sub_1D5CF9258(a1, v24, v11);

  if (v4[7])
  {
    sub_1D62AF268(a1, v24, sub_1D6E7124C);
  }

  v12 = v4[8];
  if (v12)
  {
    swift_beginAccess();
    v13 = *(v12 + 72);
    if (v13)
    {

      sub_1D6E6120C(a1, v24, v13);
    }

    swift_beginAccess();
    v14 = *(v12 + 88);

    sub_1D6E71B64(a1, v24, v14);
  }

  sub_1D62AF89C(a1, v24);

  result = swift_beginAccess();
  v15 = v4[11];
  if (v15 >> 62 == 1)
  {
    v16 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v17 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v4[11]);
    sub_1D5EB1500(v16);

    sub_1D62A5D84(a1, v24, v16, v17);
    sub_1D5EB15C4(v16);

    result = sub_1D5EB15C4(v15);
  }

  v18 = v4[29];
  if (v18)
  {
    v20 = v4[30];
    v21 = v4[31];
    v22 = v4[32];
    v23 = v4[33];
    sub_1D62A42E0(a1);
    sub_1D5EB1D80(v18, v20, v21, v22, v23);

    sub_1D5CBF568(v23);
  }

  return result;
}

uint64_t sub_1D62AE178(uint64_t a1, __int128 *a2)
{
  v6 = a2[5];
  v25[4] = a2[4];
  v25[5] = v6;
  v25[6] = a2[6];
  v7 = a2[1];
  v25[0] = *a2;
  v25[1] = v7;
  v8 = a2[3];
  v25[2] = a2[2];
  v25[3] = v8;
  v9 = v2[2];
  v23 = v2[6];
  v24 = v2[4];
  v21 = v2[12];
  v22 = v2[11];
  v10 = v2[13];
  v11 = v2[14];
  v12 = v2[15];
  sub_1D5C82CD8(v9);
  v26 = a1;
  sub_1D5CF9048(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v9);
  }

  v14 = v12;
  sub_1D5C92A8C(v9);

  v15 = v26;
  sub_1D5CF9258(v26, v25, v24);

  if (v23 >> 62)
  {
    if (v23 >> 62 != 1)
    {
      v19 = v21;
      v18 = v22;
      if (v23 == 0x8000000000000000)
      {
        v20 = 0x8000000000000000;
      }

      else
      {
        v20 = 0x8000000000000008;
      }

      result = sub_1D5EB15C4(v20);
      goto LABEL_11;
    }

    v17 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v23);
    sub_1D5EB1500(v17);

    sub_1D62A5D84(v15, v25, v17, v16);
    sub_1D5EB15C4(v17);

    result = sub_1D5EB15C4(v23);
  }

  v18 = v22;
  v19 = v21;
LABEL_11:
  if (v18)
  {
    sub_1D62A42E0(v15);
    sub_1D5EB1D80(v18, v19, v10, v11, v14);

    sub_1D5CBF568(v14);
  }

  return result;
}

uint64_t sub_1D62AE39C(unint64_t a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v31[4] = a2[4];
  v31[5] = v7;
  v31[6] = a2[6];
  v8 = a2[1];
  v31[0] = *a2;
  v31[1] = v8;
  v9 = a2[3];
  v31[2] = a2[2];
  v31[3] = v9;
  v30 = *(v2 + 32);
  sub_1D5C82CD8(v30);
  sub_1D5CF9048(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v30);
  }

  sub_1D5C92A8C(v30);
  swift_beginAccess();
  v11 = *(v2 + 48);

  sub_1D5CF9258(a1, v31, v11);

  if (*(v4 + 56))
  {
    sub_1D62AF268(a1, v31, sub_1D6E71048);
  }

  v12 = *(v4 + 64);
  if (v12)
  {
    swift_beginAccess();
    v13 = *(v12 + 72);
    if (v13)
    {

      sub_1D6E6120C(a1, v31, v13);
    }

    swift_beginAccess();
    v14 = *(v12 + 88);

    sub_1D6E71B64(a1, v31, v14);
  }

  v15 = *(v4 + 72);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);

    sub_1D6E60F24(a1, v31, v16);
    sub_1D62B28C0(a1, v31, v17);
  }

  sub_1D5CF94EC(a1, v31);

  if (*(v4 + 88))
  {
    sub_1D5CF8420(a1, v31);
  }

  if (*(v4 + 112) != 1)
  {
    v19 = *(v4 + 128);
    v18 = *(v4 + 136);
    v20 = *(v4 + 104);
    v21 = *(v4 + 144) & 1;

    sub_1D5DEA234(v20);

    v32 = v18;
    sub_1D5C75A4C(v19, v18, v21);
    sub_1D62B39B0(a1, v31);

    sub_1D5CBF568(v20);

    sub_1D5D2F2C8(v19, v32, v21);
  }

  result = swift_beginAccess();
  v22 = *(v4 + 192);
  if (v22 >> 62 == 1)
  {
    v23 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v24 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(*(v4 + 192));
    sub_1D5EB1500(v23);

    sub_1D62A5D84(a1, v31, v23, v24);
    sub_1D5EB15C4(v23);

    result = sub_1D5EB15C4(v22);
  }

  v25 = *(v4 + 272);
  if (v25)
  {
    v26 = *(v4 + 280);
    v27 = *(v4 + 288);
    v29 = *(v4 + 296);
    v28 = *(v4 + 304);
    sub_1D62A42E0(a1);
    sub_1D5EB1D80(v25, v26, v27, v29, v28);

    sub_1D5CBF568(v28);
  }

  return result;
}

uint64_t sub_1D62AE81C(unint64_t a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v32[4] = a2[4];
  v32[5] = v7;
  v32[6] = a2[6];
  v8 = a2[1];
  v32[0] = *a2;
  v32[1] = v8;
  v9 = a2[3];
  v32[2] = a2[2];
  v32[3] = v9;
  swift_beginAccess();
  *&v30[0] = *(v2 + 32);
  sub_1D5C82CD8(*&v30[0]);
  sub_1D5CF9048(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(*&v30[0]);
  }

  sub_1D5C92A8C(*&v30[0]);
  swift_beginAccess();
  v11 = *(v2 + 48);

  sub_1D5CF9258(a1, v32, v11);

  v12 = *(v4 + 72);
  v13 = *(v4 + 104);
  v30[2] = *(v4 + 88);
  v31[0] = v13;
  *(v31 + 15) = *(v4 + 119);
  v30[0] = *(v4 + 56);
  v30[1] = v12;
  v14 = *(v4 + 72);
  v15 = *(v4 + 104);
  v28 = *(v4 + 88);
  v29[0] = v15;
  *(v29 + 15) = *(v4 + 119);
  v26 = *(v4 + 56);
  v27 = v14;
  sub_1D62B62D8(v30, v24);
  sub_1D62B0188(a1, v32);
  v24[1] = v27;
  v24[2] = v28;
  v25[0] = v29[0];
  *(v25 + 15) = *(v29 + 15);
  v24[0] = v26;
  sub_1D62B6334(v24);
  swift_beginAccess();
  if (*(v4 + 136))
  {

    sub_1D62AF450(a1, v32);
  }

  swift_beginAccess();
  result = swift_beginAccess();
  v16 = *(v4 + 208);
  if (v16 >> 62 == 1)
  {
    v17 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(*(v4 + 208));
    sub_1D5EB1500(v17);

    sub_1D62A5D84(a1, v32, v17, v18);
    sub_1D5EB15C4(v17);

    result = sub_1D5EB15C4(v16);
  }

  v19 = *(v4 + 256);
  if (v19)
  {
    v20 = *(v4 + 264);
    v21 = *(v4 + 272);
    v23 = *(v4 + 280);
    v22 = *(v4 + 288);
    sub_1D62A42E0(a1);
    sub_1D5EB1D80(v19, v20, v21, v23, v22);

    sub_1D5CBF568(v22);
  }

  return result;
}

uint64_t sub_1D62AEB40(uint64_t a1, __int128 *a2)
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
  swift_beginAccess();
  v8 = v2[4];

  sub_1D5CF5C18(a1, v15, v8);

  if (!v3)
  {
    v10 = v2[5];
    if (v10)
    {
      v11 = v2[9];
      v13 = v2[7];
      v12 = v2[8];
      v14 = v2[6];
      sub_1D62A42E0(a1);
      sub_1D5EB1D80(v10, v14, v13, v12, v11);

      sub_1D5CBF568(v11);
    }
  }

  return result;
}

uint64_t sub_1D62AEC78(unint64_t a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[2];
  v27[3] = a2[3];
  v27[4] = v7;
  v10 = a2[6];
  v27[5] = v8;
  v27[6] = v10;
  v11 = a2[1];
  v27[0] = *a2;
  v27[1] = v11;
  v27[2] = v9;
  swift_beginAccess();
  v22 = v2[6];
  sub_1D5C82CD8(v22);
  sub_1D5CF9048(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v22);
  }

  sub_1D5C92A8C(v22);
  swift_beginAccess();
  v13 = v2[8];

  sub_1D5CF9258(a1, v27, v13);

  v14 = v4[9];
  if (v14 < 0)
  {
    v19 = v14 & 0x7FFFFFFFFFFFFFFFLL;
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);

    sub_1D62A6094(a1, v27, v20, v21);
  }

  result = swift_beginAccess();
  v15 = v4[20];
  if (v15 >> 62 == 1)
  {
    v16 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v17 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v4[20]);
    sub_1D5EB1500(v16);

    sub_1D62A5D84(a1, v27, v16, v17);
    sub_1D5EB15C4(v16);

    result = sub_1D5EB15C4(v15);
  }

  v18 = v4[28];
  if (v18)
  {
    v23 = v4[29];
    v24 = v4[30];
    v25 = v4[31];
    v26 = v4[32];
    sub_1D62A42E0(a1);
    sub_1D5EB1D80(v18, v23, v24, v25, v26);

    sub_1D5CBF568(v26);
  }

  return result;
}

unint64_t sub_1D62AEEDC(unint64_t a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[2];
  v23[3] = a2[3];
  v23[4] = v7;
  v10 = a2[6];
  v23[5] = v8;
  v23[6] = v10;
  v11 = a2[1];
  v23[0] = *a2;
  v23[1] = v11;
  v23[2] = v9;
  v18 = *(v2 + 32);
  sub_1D5C82CD8(v18);
  sub_1D5CF9048(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v18);
  }

  sub_1D5C92A8C(v18);
  swift_beginAccess();
  v13 = *(v2 + 48);

  sub_1D5CF9258(a1, v23, v13);

  swift_beginAccess();
  v14 = v4[7];
  if (v14 >> 62 == 1)
  {
    v15 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v4[7]);
    sub_1D5EB1500(v15);

    sub_1D62A5D84(a1, v23, v15, v16);
    sub_1D5EB15C4(v15);

    sub_1D5EB15C4(v14);
  }

  result = swift_beginAccess();
  if (v4[12])
  {

    sub_1D62AF578(a1, v23);
  }

  v17 = v4[13];
  if (v17)
  {
    v19 = v4[14];
    v20 = v4[15];
    v21 = v4[16];
    v22 = v4[17];
    sub_1D62A42E0(a1);
    sub_1D5EB1D80(v17, v19, v20, v21, v22);

    sub_1D5CBF568(v22);
  }

  return result;
}

uint64_t sub_1D62AF134(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(v1 + 56);

  sub_1D6E782FC(a1, v4);

  if (!v2 && *(v1 + 74) != 255)
  {
    v6 = *(v1 + 72) | (*(v1 + 74) << 16);
    v7 = *(v1 + 64);
    sub_1D610CA74(v7, v6, SBYTE2(v6), sub_1D610CA28, sub_1D610CA5C);
    sub_1D62A8A9C();
    return sub_1D610CA74(v7, v6, SBYTE2(v6), sub_1D60CF6A8, sub_1D60CF6DC);
  }

  return result;
}

uint64_t sub_1D62AF268(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *, uint64_t))
{
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[2];
  v19[3] = a2[3];
  v19[4] = v7;
  v10 = a2[6];
  v19[5] = v8;
  v19[6] = v10;
  v11 = a2[1];
  v19[0] = *a2;
  v19[1] = v11;
  v19[2] = v9;
  swift_beginAccess();
  v12 = *(v3 + 48);

  a3(a1, v19, v12);

  if (!v4)
  {
    if ((~*(v3 + 64) & 0xF000000000000007) != 0)
    {
      *&v17[0] = *(v3 + 64);

      sub_1D5D0491C(a1, v19);
    }

    v14 = *(v3 + 72);
    if (v14)
    {
      result = sub_1D5D0AE64(a1, v19, v14);
    }

    v18 = *(v3 + 184);
    v15 = *(v3 + 152);
    v17[2] = *(v3 + 136);
    v17[3] = v15;
    v17[4] = *(v3 + 168);
    v16 = *(v3 + 120);
    v17[0] = *(v3 + 104);
    v17[1] = v16;
    if (v18 != 254)
    {
      swift_retain_n();
      sub_1D5CF9A24(a1, v19);

      result = sub_1D5D0ABCC(v17, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    if ((~*(v3 + 192) & 0xF000000000000007) != 0)
    {

      sub_1D5CF9A24(a1, v19);
    }
  }

  return result;
}

uint64_t sub_1D62AF450(uint64_t a1, __int128 *a2)
{
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
  v8 = v2[6];

  sub_1D6E70E54(a1, v10, v8);

  if (!v3)
  {
    if ((~v2[8] & 0xF000000000000007) != 0)
    {
      v11 = v2[8];

      sub_1D5CF9A24(a1, v10);
    }

    if ((~v2[9] & 0xF000000000000007) != 0)
    {
      v11 = v2[9];

      sub_1D5CF9A24(a1, v10);
    }
  }

  return result;
}

unint64_t sub_1D62AF578(unint64_t a1, __int128 *a2)
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
  swift_beginAccess();
  v8 = v2[6];

  sub_1D6E70BF8(a1, v13, v8);

  if (!v3)
  {
    if ((~v2[7] & 0xF000000000000007) != 0)
    {
      v14 = v2[7];

      sub_1D5CF9A24(a1, v13);
    }

    if ((~v2[8] & 0xF000000000000007) != 0)
    {
      v14 = v2[8];

      sub_1D5CF9A24(a1, v13);
    }

    result = v2[10];
    if (result >= 2)
    {
      if (result == 2)
      {
        return result;
      }

      v10 = *(result + 16);
      v11 = *(result + 24);
      v12 = result;
      sub_1D5D0A59C(result);
      sub_1D5D0A57C(v10);
      sub_1D5D0A57C(v11);
      sub_1D6248A90(a1, v13, v10, v11);
      sub_1D5D0A58C(v10);
      sub_1D5D0A58C(v11);
      result = v12;
    }

    return sub_1D5D0A5AC(result);
  }

  return result;
}

uint64_t sub_1D62AF734(char **a1, __int128 *a2)
{

  sub_1D5CF6528(a1, a2);
}

uint64_t sub_1D62AF798(char **a1, __int128 *a2)
{

  sub_1D5CF41D4(a1, a2);
}

void sub_1D62AF7FC(char **a1, __int128 *a2)
{
  if ((*(v2 + 16) & 1) == 0)
  {
    sub_1D5CF41D4(a1, a2);
  }
}

void sub_1D62AF830(char **a1, __int128 *a2)
{
  v3 = *(v2 + 32);
  if ((v3 & 0x80000000) == 0 && (v3 & 1) == 0)
  {
    sub_1D5CF41D4(a1, a2);
  }
}

void sub_1D62AF868(char **a1, __int128 *a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    sub_1D5CF41D4(a1, a2);
  }
}

uint64_t sub_1D62AF89C(uint64_t result, __int128 *a2)
{
  v4 = result;
  v5 = a2[5];
  v13[4] = a2[4];
  v13[5] = v5;
  v13[6] = a2[6];
  v6 = a2[1];
  v13[0] = *a2;
  v13[1] = v6;
  v7 = a2[3];
  v8 = *v2;
  v9 = *v2 >> 61;
  v13[2] = a2[2];
  v13[3] = v7;
  if (v9 <= 1)
  {
    if (v9)
    {
      v12 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      sub_1D6E70AB4(v4, v13, v12);
      if (v3)
      {
      }

      else
      {

        sub_1D62AF89C(v4, v13);
      }
    }

    else
    {
      return sub_1D62B0A6C(result, a2);
    }
  }

  else
  {
    if (v9 == 2)
    {

      sub_1D62A57B8(v4, v13);
    }

    else
    {
      if (v9 == 3)
      {
        return result;
      }

      v10 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      sub_1D62AF89C(v4, a2);
      if (v3)
      {
      }

      sub_1D6E705CC(v4, v13, v10);
    }
  }
}

uint64_t sub_1D62AFAEC(uint64_t a1, __int128 *a2)
{
  v5 = *(v2 + 32);
  v10[0] = *(v2 + 16);
  v10[1] = v5;
  v11[0] = *(v2 + 48);
  *(v11 + 15) = *(v2 + 63);
  sub_1D5CF5DBC(v10, v8);
  sub_1D5CF5E6C(a1, a2);
  v6 = *(v2 + 32);
  v8[0] = *(v2 + 16);
  v8[1] = v6;
  v9[0] = *(v2 + 48);
  *(v9 + 15) = *(v2 + 63);
  return sub_1D5CF603C(v8);
}

uint64_t sub_1D62AFBA8(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if ((v3 & 0xF000000000000007) != 0x7000000000000007 && ((v3 >> 57) & 0xF8 | v3 & 7 | 0x20) != 0x7F && v3 >> 62 == 3)
  {
    return sub_1D62B3700(result, a2);
  }

  return result;
}

uint64_t sub_1D62AFC20(uint64_t a1, _OWORD *a2)
{
  v4 = a2[5];
  v37[4] = a2[4];
  v37[5] = v4;
  v37[6] = a2[6];
  v5 = a2[1];
  v37[0] = *a2;
  v37[1] = v5;
  v6 = a2[3];
  v37[2] = a2[2];
  v37[3] = v6;
  v7 = *v2;
  if (*v2 < 0)
  {

    sub_1D62A58E8(a1, v37);
  }

  else
  {
    v8 = *(v7 + 96);
    v33 = *(v7 + 80);
    v34 = v8;
    v35 = *(v7 + 112);
    v36 = *(v7 + 128);
    v9 = *(v7 + 32);
    v29 = *(v7 + 16);
    v30 = v9;
    v10 = *(v7 + 64);
    v31 = *(v7 + 48);
    v32 = v10;
    v11 = *(a1 + 8);
    sub_1D5D093E8(&v29, &v22);
    sub_1D5D093E8(&v29, &v22);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1D5D095A0(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1D5D095A0((v12 > 1), v13 + 1, 1, v11);
    }

    sub_1D5D09904(&v29);
    v26 = v33;
    v27 = v34;
    *v28 = v35;
    *&v28[16] = v36;
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v25 = v32;
    result = sub_1D5D09958(&v22);
    *(v11 + 2) = v13 + 1;
    v15 = &v11[128 * v13];
    v16 = v22;
    v17 = v23;
    v18 = v25;
    *(v15 + 4) = v24;
    *(v15 + 5) = v18;
    *(v15 + 2) = v16;
    *(v15 + 3) = v17;
    v19 = v26;
    v20 = v27;
    v21 = *v28;
    *(v15 + 137) = *&v28[9];
    *(v15 + 7) = v20;
    *(v15 + 8) = v21;
    *(v15 + 6) = v19;
    *(a1 + 8) = v11;
  }

  return result;
}

uint64_t sub_1D62AFDDC(uint64_t a1, _OWORD *a2)
{

  sub_1D62AFC20(a1, a2);
}

uint64_t sub_1D62AFE58(uint64_t result, uint64_t a2)
{
  if (((*v2 >> 57) & 0xF8 | *v2 & 7 | 0x20) != 0x7F && *v2 >> 62 == 3)
  {
    return sub_1D62B3700(result, a2);
  }

  return result;
}

uint64_t sub_1D62AFEBC(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v29 = a1;
  v6 = *(a3 + 16);
  v7 = sub_1D726393C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v18 - v10;
  v12 = a2[5];
  v26 = a2[4];
  v27 = v12;
  v28 = a2[6];
  v13 = a2[1];
  v22 = *a2;
  v23 = v13;
  v14 = a2[3];
  v24 = a2[2];
  v25 = v14;
  (*(v8 + 16))(v18 - v10, v3 + *(a3 + 52), v7);
  if ((*(*(v6 - 8) + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
LABEL_6:
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    return sub_1D5BFB774(&v19, &qword_1EC8854E8, &qword_1EC8854E0);
  }

  sub_1D5B49474(0, &qword_1EC8854E0);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v15 = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    v16 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
    v18[4] = v26;
    v18[5] = v27;
    v18[6] = v28;
    v18[0] = v22;
    v18[1] = v23;
    v18[2] = v24;
    v18[3] = v25;
    (*(v16 + 8))(v29, v18, v15, v16);
    return __swift_destroy_boxed_opaque_existential_1(&v19);
  }

  return sub_1D5BFB774(&v19, &qword_1EC8854E8, &qword_1EC8854E0);
}

uint64_t sub_1D62B0188(uint64_t a1, __int128 *a2)
{
  v4 = *(v2 + 64) | (*(v2 + 66) << 16);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  v11 = *(v2 + 48);
  v12 = *(v2 + 56);
  sub_1D5D0A5BC(v7, v8, v9, v10, v11, v12, v4);
  sub_1D5D0A61C(a1, a2);
  return sub_1D5D0A678(v7, v8, v9, v10, v11, v12, v4);
}

uint64_t sub_1D62B02BC(uint64_t result, __int128 *a2)
{
  v5 = result;
  v6 = *(v2 + 32);
  if ((~*(v2 + 24) & 0xF000000000000007) == 0 || (, sub_1D5CF9A24(v5, a2), result = , !v3))
  {
    if ((~v6 & 0xF000000000000007) != 0)
    {

      sub_1D5CF9A24(v5, a2);
    }
  }

  return result;
}

uint64_t sub_1D62B0384(char **a1, __int128 *a2)
{
  v39[0] = a1;
  v3 = v2;
  sub_1D5C5A0E0(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v39 - v7;
  sub_1D5C5A0E0(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v39 - v11;
  sub_1D5C5A0E0(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v39 - v15;
  sub_1D5C5A0E0(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v39 - v19;
  sub_1D5C5A0E0(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = v39 - v23;
  v25 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2[5];
  v40[4] = a2[4];
  v40[5] = v29;
  v40[6] = a2[6];
  v30 = a2[1];
  v40[0] = *a2;
  v40[1] = v30;
  v31 = a2[3];
  v40[2] = a2[2];
  v40[3] = v31;
  sub_1D62B50EC(v3, v28, type metadata accessor for FormatPropertyDefinition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D62B6DB8(v28, v24);
      if ((~*(v24 + 9) & 0xF000000000000007) != 0)
      {
        v41 = *(v24 + 9);

        sub_1D5CF9A24(v39[0], a2);
      }

      return sub_1D62B6E54(v24);
    }

    return sub_1D62B51D0(v28, type metadata accessor for FormatPropertyDefinition);
  }

  if (EnumCaseMultiPayload > 8)
  {
    v34 = v39[1];
    if (EnumCaseMultiPayload == 9)
    {
      sub_1D62B6808(v28, v16);
      if ((~*(v16 + 9) & 0xF000000000000007) != 0)
      {
        v41 = *(v16 + 9);

        sub_1D62AF89C(v39[0], a2);
      }

      return sub_1D62B68A4(v16);
    }

    else if (EnumCaseMultiPayload == 10)
    {
      sub_1D62B66D8(v28, v12);
      if ((~*(v12 + 9) & 0xF000000000000007) != 0)
      {
        v41 = *(v12 + 9);

        sub_1D5D0350C(v39[0], a2);
      }

      return sub_1D62B6774(v12);
    }

    else
    {
      sub_1D62B65A8(v28, v8);
      v35 = *(v8 + 9);
      if ((~v35 & 0xF000000000000007) == 0 || v35 < 0)
      {
        return sub_1D62B6644(v8);
      }

      else
      {
        v36 = *(v35 + 16);
        v37 = *(v35 + 24);
        sub_1D612612C(*(v8 + 9));

        v38 = v39[0];
        sub_1D6E60F24(v39[0], v40, v36);
        if (!v34)
        {
          sub_1D62B28C0(v38, v40, v37);
        }

        sub_1D62B6644(v8);

        return sub_1D5BD9F54(v35);
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 7)
    {
      return sub_1D62B51D0(v28, type metadata accessor for FormatPropertyDefinition);
    }

    sub_1D62B6938(v28, v20);
    if ((~*(v20 + 9) & 0xF000000000000007) != 0)
    {
      v41 = *(v20 + 9);

      sub_1D5CF94EC(v39[0], a2);
    }

    return sub_1D62B69D4(v20);
  }
}

uint64_t sub_1D62B0914(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 56);
  if ((v3 & 0xF000000000000007) != 0x7000000000000007 && ((v3 >> 57) & 0xF8 | v3 & 7 | 0x20) != 0x7F && v3 >> 62 == 3)
  {
    return sub_1D62B3700(result, a2);
  }

  return result;
}

uint64_t sub_1D62B0A0C(uint64_t a1, __int128 *a2)
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
  return sub_1D5CF8C68(a1, v7, *(v2 + 112));
}

uint64_t sub_1D62B0A6C(uint64_t result, _OWORD *a2)
{
  v5 = a2[6];
  v98[5] = a2[5];
  v98[6] = v5;
  v6 = a2[2];
  v98[1] = a2[1];
  v98[2] = v6;
  v7 = *v2;
  v8 = v2[1];
  v10 = v2[2];
  v9 = v2[3];
  v11 = v2[4];
  v12 = v2[5];
  v14 = v2[6];
  v13 = v2[7];
  v16 = v2[8];
  v15 = v2[9];
  v18 = v2[10];
  v17 = v2[11];
  v20 = v2[12];
  v19 = v2[13];
  v21 = v2[14];
  v99 = v2[15];
  v22 = v2[16];
  v84 = v2[17];
  v80 = v2[18];
  v82 = v2[19];
  v81 = v2[20];
  v85 = v2[21];
  v79 = v2[22];
  v78 = v2[23];
  v75 = v2[24];
  v76 = v2[25];
  v77 = v2[26];
  v23 = v2[28];
  v74 = v2[27];
  v24 = v2[29];
  v25 = a2[4];
  v98[3] = a2[3];
  v98[4] = v25;
  v98[0] = *a2;
  v96 = v19;
  v97 = v21;
  v94 = v17;
  v95 = v20;
  v92 = v15;
  v93 = v18;
  v90 = v9;
  v91 = v16;
  v83 = v22;
  if (v7 >> 62 == 3)
  {
    v86 = v10;
    v88 = v11;
    v26 = v12;
    v27 = v14;
    v73 = v13;
    v28 = v23;
    v29 = v24;
    v30 = result;
    result = sub_1D62B3700(result, a2);
    if (v3)
    {
      return result;
    }

    result = v30;
    v24 = v29;
    v23 = v28;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v15 = v92;
    v18 = v93;
    v9 = v90;
    v16 = v91;
    v13 = v73;
    v14 = v27;
    v12 = v26;
    v10 = v86;
    v11 = v88;
  }

  if (v8 >> 62 == 3)
  {
    v87 = v10;
    v89 = v11;
    v31 = v12;
    v32 = v14;
    v33 = v24;
    v34 = v23;
    v35 = v13;
    v36 = result;
    result = sub_1D62B3700(result, a2);
    if (v3)
    {
      return result;
    }

    result = v36;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v15 = v92;
    v18 = v93;
    v9 = v90;
    v16 = v91;
    v13 = v35;
    v23 = v34;
    v24 = v33;
    v14 = v32;
    v12 = v31;
    v10 = v87;
    v11 = v89;
  }

  v37 = v99;
  if (v10 >> 62 == 3)
  {
    v38 = v11;
    v39 = v12;
    v40 = v14;
    v41 = v24;
    v42 = v23;
    v43 = v13;
    v44 = result;
    result = sub_1D62B3700(result, a2);
    if (v3)
    {
      return result;
    }

    result = v44;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v15 = v92;
    v18 = v93;
    v9 = v90;
    v16 = v91;
    v13 = v43;
    v23 = v42;
    v24 = v41;
    v14 = v40;
    v12 = v39;
    v11 = v38;
    v37 = v99;
  }

  if (v9 >> 62 == 3 && (v9 & 0xF000000000000007) != 0xF000000000000007)
  {
    v45 = v11;
    v46 = v13;
    v47 = result;
    result = sub_1D62B3700(result, a2);
    if (v3)
    {
      return result;
    }

    result = v47;
    v37 = v99;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v15 = v92;
    v18 = v93;
    v16 = v91;
    v13 = v46;
    v11 = v45;
  }

  if (v11 >> 62 == 3 && (v11 & 0xF000000000000007) != 0xF000000000000007)
  {
    v48 = v12;
    v49 = v13;
    v50 = result;
    result = sub_1D62B3700(result, a2);
    if (v3)
    {
      return result;
    }

    result = v50;
    v37 = v99;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v15 = v92;
    v18 = v93;
    v16 = v91;
    v13 = v49;
    v12 = v48;
  }

  if (v12 >> 62 == 3 && (v12 & 0xF000000000000007) != 0xF000000000000007)
  {
    v51 = v14;
    v52 = v13;
    v53 = result;
    result = sub_1D62B3700(result, a2);
    if (v3)
    {
      return result;
    }

    result = v53;
    v37 = v99;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v15 = v92;
    v18 = v93;
    v16 = v91;
    v13 = v52;
    v14 = v51;
  }

  if (v14 >> 62 == 3 && (v14 & 0xF000000000000007) != 0xF000000000000007)
  {
    v54 = v13;
    v55 = result;
    result = sub_1D62B3700(result, a2);
    if (v3)
    {
      return result;
    }

    result = v55;
    v37 = v99;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v15 = v92;
    v18 = v93;
    v16 = v91;
    v13 = v54;
  }

  if (v13 >> 62 == 3 && (v13 & 0xF000000000000007) != 0xF000000000000007)
  {
    v56 = result;
    result = sub_1D62B3700(result, a2);
    if (v3)
    {
      return result;
    }

    result = v56;
    v37 = v99;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v15 = v92;
    v18 = v93;
    v16 = v91;
  }

  if (v16 >> 62 == 3 && (v16 & 0xF000000000000007) != 0xF000000000000007)
  {
    v57 = result;
    result = sub_1D62B3700(result, a2);
    if (v3)
    {
      return result;
    }

    result = v57;
    v37 = v99;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v15 = v92;
    v18 = v93;
  }

  if (v15 >> 62 == 3 && (v15 & 0xF000000000000007) != 0xF000000000000007)
  {
    v58 = result;
    result = sub_1D62B3700(result, a2);
    if (v3)
    {
      return result;
    }

    result = v58;
    v37 = v99;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v18 = v93;
  }

  if (v18 >> 62 == 3 && (v18 & 0xF000000000000007) != 0xF000000000000007)
  {
    v59 = result;
    result = sub_1D62B3700(result, a2);
    if (v3)
    {
      return result;
    }

    result = v59;
    v37 = v99;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
  }

  if (v17 >> 62 == 3 && (v17 & 0xF000000000000007) != 0xF000000000000007)
  {
    v60 = result;
    result = sub_1D62B3700(result, a2);
    if (v3)
    {
      return result;
    }

    result = v60;
    v37 = v99;
    v19 = v96;
    v21 = v97;
    v20 = v95;
  }

  if (v20 >> 62 == 3 && (v20 & 0xF000000000000007) != 0xF000000000000007)
  {
    v61 = result;
    result = sub_1D62B3700(result, a2);
    if (v3)
    {
      return result;
    }

    result = v61;
    v37 = v99;
    v19 = v96;
    v21 = v97;
  }

  if (v19 >> 62 == 3 && (v19 & 0xF000000000000007) != 0xF000000000000007)
  {
    v62 = result;
    result = sub_1D62B3700(result, v98);
    if (v3)
    {
      return result;
    }

    result = v62;
    v37 = v99;
    v21 = v97;
  }

  if (v21 >> 62 == 3 && (v21 & 0xF000000000000007) != 0xF000000000000007)
  {
    v63 = result;
    result = sub_1D62B3700(result, v98);
    if (v3)
    {
      return result;
    }

    result = v63;
    v37 = v99;
  }

  if (v37 >> 62 == 3 && (v37 & 0xF000000000000007) != 0xF000000000000007)
  {
    v64 = result;
    result = sub_1D62B3700(result, v98);
    if (v3)
    {
      return result;
    }

    result = v64;
  }

  if (v83 >> 62 == 3 && (v83 & 0xF000000000000007) != 0xF000000000000007)
  {
    v65 = result;
    result = sub_1D62B3700(result, v98);
    if (v3)
    {
      return result;
    }

    result = v65;
  }

  if (v84 >> 62 == 3 && (v84 & 0xF000000000000007) != 0xF000000000000007)
  {
    v66 = result;
    result = sub_1D62B3700(result, v98);
    if (v3)
    {
      return result;
    }

    result = v66;
  }

  if (v80 >> 62 == 3 && (v80 & 0xF000000000000007) != 0xF000000000000007)
  {
    v67 = result;
    result = sub_1D62B3700(result, v98);
    if (v3)
    {
      return result;
    }

    result = v67;
  }

  if (v82 >> 62 == 3 && (v82 & 0xF000000000000007) != 0xF000000000000007)
  {
    v68 = result;
    result = sub_1D62B3700(result, v98);
    if (v3)
    {
      return result;
    }

    result = v68;
  }

  if (v81 >> 62 == 3 && (v81 & 0xF000000000000007) != 0xF000000000000007)
  {
    v69 = result;
    result = sub_1D62B3700(result, v98);
    if (v3)
    {
      return result;
    }

    result = v69;
  }

  if (v85 >> 62 == 3 && (v85 & 0xF000000000000007) != 0xF000000000000007)
  {
    v70 = result;
    result = sub_1D62B3700(result, v98);
    if (v3)
    {
      return result;
    }

    result = v70;
  }

  if (v79 >> 62 == 3 && (v79 & 0xF000000000000007) != 0xF000000000000007)
  {
    v71 = result;
    result = sub_1D62B3700(result, v98);
    if (v3)
    {
      return result;
    }

    result = v71;
  }

  if (v78 >> 62 != 3 || (v78 & 0xF000000000000007) == 0xF000000000000007)
  {
    v72 = result;
  }

  else
  {
    v72 = result;
    result = sub_1D62B3700(result, v98);
    if (v3)
    {
      return result;
    }
  }

  if (v75 >> 62 != 3 || (v75 & 0xF000000000000007) == 0xF000000000000007 || (result = sub_1D62B3700(v72, v98), !v3))
  {
    if (v76 >> 62 != 3 || (v76 & 0xF000000000000007) == 0xF000000000000007 || (result = sub_1D62B3700(v72, v98), !v3))
    {
      if (v77 >> 62 != 3 || (v77 & 0xF000000000000007) == 0xF000000000000007 || (result = sub_1D62B3700(v72, v98), !v3))
      {
        if (v74 >> 62 != 3 || (v74 & 0xF000000000000007) == 0xF000000000000007 || (result = sub_1D62B3700(v72, v98), !v3))
        {
          if (v23 >> 62 != 3 || (v23 & 0xF000000000000007) == 0xF000000000000007 || (result = sub_1D62B3700(v72, v98), !v3))
          {
            if (v24 >> 62 == 3 && (v24 & 0xF000000000000007) != 0xF000000000000007)
            {
              return sub_1D62B3700(v72, v98);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D62B14EC(uint64_t a1, __int128 *a2)
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
  v8 = *(v4 + 48);

  sub_1D5CF6090(a1, v10, v8);
}

uint64_t sub_1D62B15A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
  (*(v12 + 16))(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + *(v11 + 36), v5);
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

unint64_t sub_1D62B17B0(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  sub_1D5C82CD8(*v2);
  sub_1D5CF9048(a1, a2);
  result = sub_1D5C92A8C(v7);
  if (!v3 && (~v6 & 0xF000000000000007) != 0)
  {
    sub_1D5C82CD8(v6);
    sub_1D5CF9048(a1, a2);
    return sub_1D5C92A8C(v6);
  }

  return result;
}

uint64_t sub_1D62B187C(char **a1, __int128 *a2)
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
  v9 = *(v5 + 56);

  sub_1D5CF6244(a1, v12, v9);

  if (!v3)
  {
    swift_beginAccess();
    v11 = *(v5 + 40);

    sub_1D5CF6090(a1, v12, v11);
  }

  return result;
}

uint64_t sub_1D62B1964(char **a1, __int128 *a2)
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
  v8 = v2[9];

  sub_1D5CF6244(a1, v12, v8);

  if (!v3)
  {
    swift_beginAccess();
    v10 = v2[11];

    sub_1D5CFD3E0(a1, v12, v10);

    swift_beginAccess();
    v11 = v2[8];

    sub_1D5CF6090(a1, v12, v11);
  }

  return result;
}

uint64_t sub_1D62B1AD0(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v11[6] = a2[6];
  v5 = a2[1];
  v11[0] = *a2;
  v11[1] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v11[3] = v6;
  v7 = *v2;
  if (*v2 < 0)
  {
    v10 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

    sub_1D5D0A0A0(v3, v11, v10);
  }

  else if (*(v7 + 40))
  {
    v9 = *(v7 + 24);
    v8 = *(v7 + 32);
    sub_1D5F586D0(v9, v8, 1);
    sub_1D62A5EDC(v3, v11, v9, v8);
    return sub_1D5F5870C(v9, v8, 1);
  }

  return result;
}

uint64_t sub_1D62B1BE0(uint64_t result, _OWORD *a2)
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
  if (*(v2 + 24) == 1)
  {
    v8 = v2 + 8;
    v7 = *(v2 + 8);
    v6 = *(v8 + 8);
    v9 = result;
    sub_1D5F586D0(v7, v6, 1);
    sub_1D62A5EDC(v9, v10, v7, v6);
    return sub_1D5F5870C(v7, v6, 1);
  }

  return result;
}

uint64_t sub_1D62B1C84(uint64_t result, _OWORD *a2)
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
  if (*(v2 + 16) == 1)
  {
    return sub_1D62A5EDC(result, v6, *v2, *(v2 + 8));
  }

  return result;
}

uint64_t sub_1D62B1CD8(char **a1, __int128 *a2)
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
  v7 = *(v2 + 8);

  sub_1D5CF6244(a1, v9, v7);
}

uint64_t sub_1D62B1D70(uint64_t a1, __int128 *a2)
{
  v3 = *v2;
  if ((*(v2 + 64) & 1) == 0)
  {
    return sub_1D5CF9A24(a1, a2);
  }

  v4 = a2[5];
  v8[4] = a2[4];
  v8[5] = v4;
  v8[6] = a2[6];
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  v6 = a2[3];
  v8[2] = a2[2];
  v8[3] = v6;
  return sub_1D5CF8C68(a1, v8, v3);
}

unint64_t sub_1D62B1E50(unint64_t result, __int128 *a2)
{
  v5 = result;
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
  v9 = v2[3];
  v10 = v2[5];
  if ((~v2[2] & 0xF000000000000007) == 0 || (v15 = v2[2], , sub_1D5CF9A24(v5, a2), result = , !v3))
  {
    if ((~v9 & 0xF000000000000007) == 0 || (v15 = v9, , sub_1D5CF9A24(v5, a2), result = , !v3))
    {
      if (v10 >= 2)
      {
        if (v10 == 2)
        {
          return result;
        }

        v12 = *(v10 + 16);
        v13 = *(v10 + 24);
        sub_1D5D0A59C(v10);
        sub_1D5D0A57C(v12);
        sub_1D5D0A57C(v13);
        sub_1D6248A90(v5, v14, v12, v13);
        sub_1D5D0A58C(v12);
        sub_1D5D0A58C(v13);
        v11 = v10;
      }

      else
      {
        v11 = v10;
      }

      return sub_1D5D0A5AC(v11);
    }
  }

  return result;
}

unint64_t sub_1D62B1FD0(unint64_t result, _OWORD *a2)
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
  if (*v2 >= 2)
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = result;
    sub_1D5D0A57C(v7);
    sub_1D5D0A57C(v8);
    sub_1D6248A90(v9, v10, v7, v8);
    sub_1D5D0A58C(v7);
    return sub_1D5D0A58C(v8);
  }

  return result;
}

uint64_t sub_1D62B20A4(uint64_t result, __int128 *a2)
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
  if ((*(v2 + 48) & 1) == 0)
  {
    return sub_1D62A3D50(result, v6);
  }

  return result;
}

uint64_t sub_1D62B20F8(uint64_t result, __int128 *a2)
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
  if ((*(v2 + 32) & 1) == 0)
  {
    return sub_1D62A3D50(result, v6);
  }

  return result;
}

uint64_t sub_1D62B2170(uint64_t a1, __int128 *a2)
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
  v7 = *(v2 + 32);

  sub_1D5CF6090(a1, v9, v7);
}

uint64_t sub_1D62B21E4(char **a1, __int128 *a2)
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
  v9 = v2[6];
  v8 = v2[7];
  v10 = v2[8];

  sub_1D5CF4060(a1, v12, v9);

  if (!v3)
  {

    sub_1D5CFD3E0(a1, v12, v8);

    sub_1D5CF6244(a1, v12, v10);
  }

  return result;
}

uint64_t sub_1D62B22DC(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v18[4] = a2[4];
  v18[5] = v5;
  v18[6] = a2[6];
  v6 = a2[1];
  v18[0] = *a2;
  v18[1] = v6;
  v7 = a2[3];
  v18[2] = a2[2];
  v18[3] = v7;
  v9 = v2[6];
  v8 = v2[7];
  v10 = v2[8];
  v12 = v2[11];
  v11 = v2[12];
  if (v8)
  {
    swift_beginAccess();
    v13 = *(v8 + 56);

    sub_1D6E782FC(a1, v13);

    if (v3)
    {
      return result;
    }

    v15 = *(v8 + 74);
    if (v15 != 255)
    {
      v19 = v9;
      v16 = *(v8 + 72) | (v15 << 16);
      v17 = *(v8 + 64);
      sub_1D610CA74(v17, v16, SBYTE2(v16), sub_1D610CA28, sub_1D610CA5C);
      sub_1D62A8A9C();
      sub_1D610CA74(v17, v16, SBYTE2(v16), sub_1D60CF6A8, sub_1D60CF6DC);
      v9 = v19;
    }
  }

  sub_1D5CF4060(a1, v18, v10);

  if (!v3)
  {

    sub_1D5CF6244(a1, v18, v12);

    sub_1D5CFD3E0(a1, v18, v11);

    sub_1D5CF6090(a1, v18, v9);
  }

  return result;
}

unint64_t sub_1D62B2544()
{
  if (*(v0 + 9) == 1)
  {
    v1 = *(v0 + 8);
    if (v1 != 255)
    {
      v2 = *v0;
      sub_1D610CA28(v2, v1, 1);
      return sub_1D60CF6C8(v2, v1);
    }
  }

  return result;
}

void sub_1D62B25FC()
{
  v1 = *(v0 + 32) | (*(v0 + 34) << 16);
  v2 = WORD1(v1);
  if (*(v0 + 34) != 255 && v2 != 0)
  {
    v4 = *(v0 + 24);
    if (v2 == 1)
    {
      if ((v1 & 0x100) != 0 && v1 != 0xFF)
      {
        v5 = v4;
        v6 = v1;
LABEL_15:
        sub_1D62B7DCC(v5, v6);
        sub_1D60CF6C8(v4, v1);
      }
    }

    else if (BYTE1(v1) <= 0xFEu && (v1 & 0x100) != 0)
    {
      if (v1 != 0xFF)
      {
        v5 = v4;
        v6 = v1;
        goto LABEL_15;
      }

      sub_1D62B6F70(v4, v1);
    }
  }
}

uint64_t sub_1D62B272C(char **a1, __int128 *a2)
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

  sub_1D5CF6528(a1, a2);

  if (!v3)
  {
    swift_beginAccess();
    v10 = *(v2 + 24);

    sub_1D5CF6090(a1, v11, v10);
  }

  return result;
}

uint64_t sub_1D62B2824(uint64_t a1, __int128 *a2)
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
  v8 = *(v4 + 16);

  sub_1D5CF6090(a1, v10, v8);
}

uint64_t sub_1D62B28C0(uint64_t result, __int128 *a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = result;
    v6 = *(a3 + 16);
    v7 = *(a3 + 24);

    sub_1D6E60F24(v5, a2, v6);
    if (!v3)
    {
      sub_1D62B28C0(v5, a2, v7);
    }
  }

  return result;
}

uint64_t sub_1D62B2978(char **a1, __int128 *a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v11[5];
  v26 = v11[4];
  v27 = v12;
  v28 = v11[6];
  v13 = v11[1];
  v22 = *v11;
  v23 = v13;
  v14 = v11[3];
  v24 = v11[2];
  v25 = v14;
  *&v18[0] = *v3;

  sub_1D5CF6528(a1, a2);

  if (!v4)
  {
    (*(v29 + 16))(v10, &v3[*(a3 + 36)], v8);
    sub_1D5B49474(0, &qword_1EC8854E0);
    if (swift_dynamicCast())
    {
      v16 = *(&v20 + 1);
      v17 = v21;
      __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
      v18[4] = v26;
      v18[5] = v27;
      v18[6] = v28;
      v18[0] = v22;
      v18[1] = v23;
      v18[2] = v24;
      v18[3] = v25;
      (*(v17 + 8))(a1, v18, v16, v17);
      return __swift_destroy_boxed_opaque_existential_1(&v19);
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      return sub_1D5BFB774(&v19, &qword_1EC8854E8, &qword_1EC8854E0);
    }
  }

  return result;
}

void sub_1D62B2B9C(char **a1, __int128 *a2)
{
  v3 = a2[5];
  v25[4] = a2[4];
  v25[5] = v3;
  v25[6] = a2[6];
  v4 = a2[1];
  v25[0] = *a2;
  v25[1] = v4;
  v5 = a2[3];
  v25[2] = a2[2];
  v25[3] = v5;
  if (!*(v2 + 17))
  {
    v6 = *v2;
    v7 = *v2 >> 61;
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        v11 = a2[5];
        v22 = a2[4];
        v23 = v11;
        v24 = a2[6];
        v12 = a2[1];
        v18 = *a2;
        v19 = v12;
        v13 = a2[3];
        v20 = a2[2];
        v21 = v13;
        sub_1D607AC1C(a1);
      }

      else
      {
        v14 = *(v2 + 8);
        v15 = *(v2 + 16);
        v16 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v26[0] = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v26[1] = v16;
        v27 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        sub_1D5F586A4(v6, v14, v15, 0);
        sub_1D62B50EC(v26, &v18, sub_1D62B5154);
        sub_1D62A7020(a1, v25);
        sub_1D62B51D0(v26, sub_1D62B5154);
        sub_1D5F5816C(v6, v14, v15, 0);
      }
    }

    else if (v7 >= 2)
    {
      v8 = a2[5];
      v22 = a2[4];
      v23 = v8;
      v24 = a2[6];
      v9 = a2[1];
      v18 = *a2;
      v19 = v9;
      v10 = a2[3];
      v20 = a2[2];
      v21 = v10;
      sub_1D5FD7C7C(a1);
    }
  }
}

uint64_t sub_1D62B2D84(char **a1, __int128 *a2)
{

  sub_1D5D0350C(a1, a2);
}

unint64_t sub_1D62B2DE8(unint64_t result, __int128 *a2)
{
  v4 = result;
  v5 = a2[5];
  v15[4] = a2[4];
  v15[5] = v5;
  v15[6] = a2[6];
  v6 = a2[1];
  v15[0] = *a2;
  v15[1] = v6;
  v7 = a2[3];
  v8 = *v2;
  v9 = *v2 >> 62;
  v15[2] = a2[2];
  v15[3] = v7;
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      return result;
    }

    v11 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    sub_1D5F33D5C(v12);

    sub_1D5F33D5C(v12);
    sub_1D62B2DE8(v4, a2);
    sub_1D5F33D8C(v12);
    if (v3)
    {

      return sub_1D5F33D8C(v12);
    }

    sub_1D6E6EB3C(v4, v15, v13);
    sub_1D5F33D8C(v12);
  }

  else
  {
    if (v9)
    {
      return sub_1D5CF9A24(result, a2);
    }

    v10 = *(v8 + 16);

    sub_1D5CF8C68(v4, v15, v10);
  }
}

char **sub_1D62B2F7C(char **result, __int128 *a2)
{
  if (((*(v2 + 8) >> 59) & 2 | (*(v2 + 8) >> 2) & 1) <= 2)
  {
    return sub_1D62B2FF8(result, a2);
  }

  return result;
}

uint64_t sub_1D62B2FF8(char **a1, __int128 *a2)
{

  sub_1D5D0350C(a1, a2);
}

uint64_t sub_1D62B3074(uint64_t result, __int128 *a2)
{
  if ((~*v2 & 0xF000000000000007) != 0)
  {
    v3 = result;

    sub_1D5CFEE30(v3, a2);
  }

  return result;
}

uint64_t sub_1D62B3108(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);

  sub_1D5CFEE30(a1, a2);

  if (!v3 && v6 >> 62 == 3)
  {
    return sub_1D62B3700(a1, a2);
  }

  return result;
}

uint64_t sub_1D62B31DC(uint64_t a1, __int128 *a2)
{

  sub_1D5CFEE30(a1, a2);

  if (!v2)
  {

    sub_1D5D05600(a1, a2);
  }

  return result;
}

uint64_t sub_1D62B3288(uint64_t a1, uint64_t a2)
{

  sub_1D5D05600(a1, a2);

  if (!v2)
  {

    sub_1D5D05600(a1, a2);
  }

  return result;
}

uint64_t sub_1D62B3334(uint64_t a1, uint64_t a2)
{

  sub_1D5D05600(a1, a2);
}

uint64_t sub_1D62B33B0(unint64_t a1, __int128 *a2)
{

  sub_1D5D07D58(a1, a2);
}

uint64_t sub_1D62B3454(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _OWORD *), uint64_t (*a6)(uint64_t, _OWORD *, uint64_t))
{
  v12 = a2[5];
  v17[4] = a2[4];
  v17[5] = v12;
  v17[6] = a2[6];
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  v14 = a2[3];
  v17[2] = a2[2];
  v17[3] = v14;
  v15 = v6[1];
  v18 = *v6;

  a5(a1, a2);

  if (!v7)
  {
    return a6(a1, v17, v15);
  }

  return result;
}

uint64_t sub_1D62B350C(char **a1, __int128 *a2)
{
  v6 = *(v2 + 24);

  sub_1D5CFEE30(a1, a2);

  if (!v3)
  {
    if (v6)
    {
      return sub_1D5CFCC3C(a1, a2);
    }
  }

  return result;
}

void sub_1D62B3600(char **a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v6 = *(v2 + 80);
  v7[2] = a2[2];
  v7[3] = v5;
  if (v6 >> 6)
  {
    if (v6 >> 6 == 1)
    {
      if ((v6 & 1) == 0)
      {
        sub_1D62A3D50(a1, v7);
      }
    }

    else
    {
      sub_1D62A82C0(a1, a2);
    }
  }
}

void sub_1D62B3680(char **a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v6 = *(v2 + 48);
  v7[2] = a2[2];
  v7[3] = v5;
  if (v6 >> 6)
  {
    if (v6 >> 6 == 1)
    {
      if ((v6 & 1) == 0)
      {
        sub_1D62A3D50(a1, v7);
      }
    }

    else
    {
      sub_1D62A82C0(a1, a2);
    }
  }
}

uint64_t sub_1D62B3700(uint64_t a1, uint64_t a2)
{
  if (*v2 >> 62 == 3)
  {
    v4 = a1;
    result = sub_1D62B3700(a1, a2);
    if (v3)
    {
      return result;
    }

    a1 = v4;
  }

  return nullsub_1(a1);
}

uint64_t sub_1D62B3764(uint64_t result, uint64_t a2)
{
  if (*v2 >> 62 == 3)
  {
    return sub_1D62B3700(result, a2);
  }

  return result;
}

uint64_t sub_1D62B37DC(uint64_t result, __int128 *a2)
{
  if ((~*(v2 + 8) & 0xF000000000000007) != 0)
  {
    v3 = result;

    sub_1D5CF9A24(v3, a2);
  }

  return result;
}

uint64_t sub_1D62B38FC(uint64_t result, __int128 *a2)
{
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v11[6] = a2[6];
  v5 = a2[1];
  v11[0] = *a2;
  v11[1] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v11[3] = v6;
  v7 = *v2;
  if ((*v2 & 0x8000000000000000) == 0)
  {
    v8 = result;
    v9 = *(v7 + 16);
    v10 = *(v7 + 24);

    sub_1D6E60F24(v8, v11, v9);
    if (!v3)
    {
      sub_1D62B28C0(v8, v11, v10);
    }
  }

  return result;
}

unint64_t sub_1D62B39B0(unint64_t a1, __int128 *a2)
{
  v6 = *(v2 + 16);

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

uint64_t sub_1D62B3A8C(uint64_t result, __int128 *a2)
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
  v16 = *(v2 + 152);
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

      if ((~v16 & 0xF000000000000007) != 0)
      {

        sub_1D5CF9A24(v4, v18);
      }
    }
  }

  return result;
}

uint64_t sub_1D62B3C70(uint64_t result, __int128 *a2)
{
  v4 = result;
  v5 = a2[5];
  v17[4] = a2[4];
  v17[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v17[0] = *a2;
  v17[1] = v7;
  v8 = a2[3];
  v17[2] = a2[2];
  v17[3] = v8;
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = *(v2 + 56);
  v12 = *(v2 + 72);
  v17[6] = v6;
  v18[0] = v11;
  v13 = *(v2 + 88);
  v14 = *(v2 + 104);
  v15 = *(v2 + 120);
  v19 = *(v2 + 136);
  v18[3] = v14;
  v18[4] = v15;
  v18[1] = v12;
  v18[2] = v13;
  if ((~v10 & 0xF000000000000007) == 0 || (, sub_1D5D0491C(v4, a2), result = , !v3))
  {
    if (!v9 || (result = sub_1D5D0AE64(v4, v17, v9), !v3))
    {
      if (v19 != 254)
      {
        swift_retain_n();
        sub_1D5CF9A24(v4, v17);

        return sub_1D5D0ABCC(v18, &qword_1EDF33718, &type metadata for FormatShadow);
      }
    }
  }

  return result;
}

uint64_t sub_1D62B3DBC(uint64_t result, _OWORD *a2)
{
  v3 = a2[5];
  v12[4] = a2[4];
  v12[5] = v3;
  v12[6] = a2[6];
  v4 = a2[1];
  v12[0] = *a2;
  v12[1] = v4;
  v5 = a2[3];
  v6 = *v2;
  v7 = *v2 >> 62;
  v12[2] = a2[2];
  v12[3] = v5;
  if (v7 == 1)
  {
    v8 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    v11 = result;
    sub_1D5EB1500(v9);

    sub_1D62A5D84(v11, v12, v9, v10);
    sub_1D5EB15C4(v9);
  }

  return result;
}

uint64_t sub_1D62B3E68(uint64_t a1, __int128 *a2)
{
  v5 = *(v2 + 144);
  v11[8] = *(v2 + 128);
  v11[9] = v5;
  v12 = *(v2 + 160);
  v6 = *(v2 + 80);
  v11[4] = *(v2 + 64);
  v11[5] = v6;
  v7 = *(v2 + 112);
  v11[6] = *(v2 + 96);
  v11[7] = v7;
  v8 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v8;
  v9 = *(v2 + 48);
  v11[2] = *(v2 + 32);
  v11[3] = v9;
  result = sub_1D62B4E2C(v11);
  if (result < 2)
  {
    return sub_1D5D04BC4(v11);
  }

  if (result == 2)
  {
    sub_1D5D04BC4(v11);
    return sub_1D62A967C(a1, a2);
  }

  return result;
}

uint64_t sub_1D62B3FAC(uint64_t result, _OWORD *a2)
{
  v3 = a2[5];
  v9[4] = a2[4];
  v9[5] = v3;
  v9[6] = a2[6];
  v4 = a2[1];
  v9[0] = *a2;
  v9[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  if ((*v2 & 0x8000000000000000) != 0)
  {
    v6 = *((*v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *((*v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v8 = result;

    sub_1D62A5E2C(v8, v9, v6, v7);
  }

  return result;
}

uint64_t sub_1D62B4048(uint64_t result, _OWORD *a2)
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
  if (*v2 >= 2)
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = result;
    sub_1D5D0A57C(v7);

    sub_1D62A5CE4(v9, v10, v7, v8);
    sub_1D5D0A58C(v7);
  }

  return result;
}

uint64_t sub_1D62B40EC(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16) & 1;
  sub_1D5C75A4C(*v1, v5, v6);
  sub_1D60ECF10(a1);
  return sub_1D5D2F2C8(v4, v5, v6);
}

uint64_t sub_1D62B416C(uint64_t a1)
{
  result = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  if (v5 < 4 && v4 <= 0xFD)
  {
    v6 = *v1;
    v7 = *(v1 + 8);
    v8 = *(v1 + 16);
    sub_1D5E1DCBC(result, v7, v4);
    sub_1D62B40EC(a1);
    return sub_1D5E1E15C(v6, v7, v8);
  }

  return result;
}

void sub_1D62B41FC(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v3 = type metadata accessor for FormatOption();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v50 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v49 = v48 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (v48 - v12);
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v54 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v53 = v48 - v19;
  v20 = *(a2 + 16);
  if (v20)
  {
    v21 = (a2 + 49);
    v51 = (v4 + 56);
    v52 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
    while (1)
    {
      if (*v21)
      {
        goto LABEL_4;
      }

      v22 = *(v21 - 17);
      v23 = *(v21 - 9);
      v24 = *(v21 - 1);
      if ((v24 & 1) == 0)
      {
        sub_1D5E04C68(*(v21 - 17), v23, *(v21 - 1), 0);
        goto LABEL_4;
      }

      v25 = *(v21 - 9);
      sub_1D5C75A4C(*(v21 - 17), v23, 1);
      v56 = sub_1D5E26E28(&unk_1F50F6620);
      v26 = *(v55 + v52);
      v27 = *(v26 + 16);
      swift_beginAccess();
      v28 = *(*(v27 + 16) + 16);
      v57 = v25;
      if (v28)
      {
        sub_1D5B69D90(v22, v25);
        if (v29)
        {
          break;
        }
      }

      swift_endAccess();
      swift_beginAccess();
      if (*(*(v26 + 24) + 16))
      {
        sub_1D5B69D90(v22, v57);
        if (v34)
        {
          swift_endAccess();
          v33 = v54;
          sub_1D5D25108(v54);
          goto LABEL_13;
        }
      }

      swift_endAccess();
      v38 = *v51;
      v39 = v54;
      (*v51)(v54, 1, 1, v3);

      sub_1D5B6EF64(v39, &qword_1EDF337F0, type metadata accessor for FormatOption);
      if ((*(v55 + 48) & 1) == 0)
      {
        type metadata accessor for FormatLayoutError();
        sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        v46 = v57;
        *v47 = v22;
        v47[1] = v46;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return;
      }

      sub_1D5E04C68(v22, v57, v24, 0);
      v40 = v53;
      v38(v53, 1, 1, v3);
      sub_1D5B6EF64(v40, &qword_1EDF337F0, type metadata accessor for FormatOption);
LABEL_4:
      v21 += 24;
      if (!--v20)
      {
        return;
      }
    }

    swift_endAccess();
    v30 = v50;
    sub_1D5D25108(v50);
    v31 = v30;
    v32 = v49;
    sub_1D5D5E33C(v31, v49, type metadata accessor for FormatOption);
    v33 = v54;
    sub_1D5D5E33C(v32, v54, type metadata accessor for FormatOption);
LABEL_13:
    v35 = *v51;
    (*v51)(v33, 0, 1, v3);
    sub_1D5D5E33C(v33, v13, type metadata accessor for FormatOption);
    v58 = v13[2];
    FormatOptionValue.type.getter(&v59);
    v36 = v56;
    if ((sub_1D6183C84(v59, v56) & 1) == 0)
    {
      type metadata accessor for FormatDerivedDataError();
      sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
      v48[1] = swift_allocError();
      v42 = v41;
      v43 = *v13;
      v44 = v13[1];
      v58 = v13[2];

      FormatOptionValue.type.getter(&v59);
      v45 = v59;
      *v42 = v43;
      *(v42 + 8) = v44;
      *(v42 + 16) = v45;
      *(v42 + 24) = v36;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D5E04C68(v22, v57, v24, 0);
      sub_1D62B51D0(v13, type metadata accessor for FormatOption);
      return;
    }

    sub_1D5E04C68(v22, v57, v24, 0);
    v37 = v53;
    sub_1D5D5E33C(v13, v53, type metadata accessor for FormatOption);
    v35(v37, 0, 1, v3);
    sub_1D5B6EF64(v37, &qword_1EDF337F0, type metadata accessor for FormatOption);
    goto LABEL_4;
  }
}

uint64_t sub_1D62B4820(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 48); ; i += 3)
    {
      v6 = *i;

      sub_1D62B41FC(v4, v6);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_1D62B48BC(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1D5C82CD8(result);
  }

  return result;
}

unint64_t sub_1D62B48D0(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1D5C92A8C(result);
  }

  return result;
}

uint64_t sub_1D62B4A44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 5u)
  {
    if (a7 > 8u)
    {
      if (a7 != 9 && a7 != 10 && a7 != 11)
      {
        return result;
      }
    }

    else if (a7 != 6 && a7 != 7 && a7 != 8)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (a7 < 4u)
  {
    goto LABEL_15;
  }

  if (a7 == 4)
  {
    sub_1D5CDE22C(result);
    sub_1D5CDE22C(a3);
    return sub_1D5CDE22C(a5);
  }

  if (a7 == 5)
  {
LABEL_15:
  }

  return result;
}

uint64_t sub_1D62B4B50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1D618909C(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_1D62B4B68(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v6 = (a6 >> 1) & 0xF;
  if (v6 > 6)
  {
    if (v6 == 7)
    {
    }

    else if (v6 == 8)
    {
      return sub_1D62B4DD8(result, a2, a3, a4, a5, a6 & 1, sub_1D5F58484);
    }
  }

  else if (v6 == 2)
  {
    return sub_1D62B4D50(result, a2, a3, a4, a5, a6 & 0xE1, sub_1D5F58484, sub_1D5F586A4, sub_1D5F58484);
  }

  else if (v6 == 3)
  {

    return sub_1D5F58484(result, a2);
  }

  return result;
}

uint64_t sub_1D62B4C5C(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v6 = (a6 >> 1) & 0xF;
  if (v6 > 6)
  {
    if (v6 == 7)
    {
    }

    else if (v6 == 8)
    {
      return sub_1D62B4DD8(result, a2, a3, a4, a5, a6 & 1, sub_1D5F580D0);
    }
  }

  else if (v6 == 2)
  {
    return sub_1D62B4D50(result, a2, a3, a4, a5, a6 & 0xE1, sub_1D5F580D0, sub_1D5F5816C, sub_1D5F580D0);
  }

  else if (v6 == 3)
  {

    return sub_1D5F580D0(result, a2);
  }

  return result;
}

uint64_t sub_1D62B4D50(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, uint64_t (*a7)(void), uint64_t (*a8)(uint64_t, uint64_t, unint64_t, unint64_t), uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = a6 >> 5;
  if (v10 > 3)
  {
    if (v10 != 4 && v10 != 5)
    {
      if (v10 == 6)
      {
        return sub_1D62B4DD8(result, a2, a3, a4, a5, a6 & 1, a9);
      }

      return result;
    }

    goto LABEL_11;
  }

  if (v10 == 1)
  {
LABEL_11:

    return a7();
  }

  if (v10 == 3)
  {

    return a8(result, a2, a3, a3 >> 8);
  }

  return result;
}

uint64_t sub_1D62B4DD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 & 0xFFFFFFFE | (a2 >> 1) & 1;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      return a7(a2, a3, a4, a5);
    }
  }

  else if (v8)
  {
    return (a7)(result, a2 & 0xFFFFFFFFFFFFFFFDLL);
  }

  else
  {
    return (a7)();
  }

  return result;
}

uint64_t sub_1D62B4E2C(uint64_t a1)
{
  v1 = *(a1 + 136) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

void sub_1D62B5004()
{
  if (!qword_1EC8854B0)
  {
    sub_1D62B5080();
    sub_1D5B5706C();
    v0 = type metadata accessor for FormatUnboundValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8854B0);
    }
  }
}

unint64_t sub_1D62B5080()
{
  result = qword_1EC8854B8;
  if (!qword_1EC8854B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8854B8);
  }

  return result;
}

uint64_t sub_1D62B50D4(uint64_t result)
{
  if ((result & 0xFE) != 0xC)
  {
  }

  return result;
}

uint64_t sub_1D62B50EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D62B5154()
{
  if (!qword_1EC8854C0)
  {
    sub_1D607B620();
    sub_1D5B55668();
    v0 = type metadata accessor for FormatUnboundValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8854C0);
    }
  }
}

uint64_t sub_1D62B51D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D62B5230(uint64_t result)
{
  if ((result & 0xFE) != 0xC)
  {
  }

  return result;
}

uint64_t sub_1D62B5354(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5D0ACAC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D62B53D4(uint64_t result)
{
  if ((result & 0xF000000000000007) != 0xD000000000000007)
  {
    return sub_1D5D04BD4(result);
  }

  return result;
}

void sub_1D62B53F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 == 1)
  {

    sub_1D62B54C8(a1);
  }

  else if (!a8)
  {
    sub_1D62B545C(a1, a2, a3, a4, a5, a6, a7, sub_1D5C84FF4, sub_1D5C8500C);
  }
}

void sub_1D62B545C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void), void (*a9)(uint64_t))
{
  if ((a7 & 0xF000000000000007) != 0xD000000000000007)
  {
    a8();

    a9(a7);
  }
}

uint64_t sub_1D62B54C8(uint64_t result)
{
  if ((result & 0xF000000000000007) != 0xD000000000000007)
  {
    return sub_1D5C8500C(result);
  }

  return result;
}

void sub_1D62B54E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 == 1)
  {

    sub_1D62B53D4(a1);
  }

  else if (!a8)
  {
    sub_1D62B545C(a1, a2, a3, a4, a5, a6, a7, sub_1D5CFCFAC, sub_1D5D04BD4);
  }
}

uint64_t sub_1D62B5550(uint64_t result)
{
  v3 = result;
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = *(v1 + 80);
  v16 = *(v1 + 96);
  if (v4 == 255 || (v13 = *(v1 + 8), v14 = *(v1 + 16), v15 = v4 & 1, sub_1D5C75A4C(v13, v14, v4 & 1), sub_1D60ECF10(v3), result = sub_1D5D2F2C8(v13, v14, v15), !v2))
  {
    if (v7 == 255 || (sub_1D5C75A4C(v5, v6, v7 & 1), sub_1D60ECF10(v3), result = sub_1D5D2F2C8(v5, v6, v7 & 1), !v2))
    {
      if (v10 == 255 || (sub_1D5C75A4C(v8, v9, v10 & 1), sub_1D60ECF10(v3), result = sub_1D5D2F2C8(v8, v9, v10 & 1), !v2))
      {
        if (v16 != 255)
        {
          sub_1D5C75A4C(v12, v11, v16 & 1);
          sub_1D60ECF10(v3);
          return sub_1D5D2F2C8(v12, v11, v16 & 1);
        }
      }
    }
  }

  return result;
}

void sub_1D62B56CC(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v3 = type metadata accessor for FormatOption();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v50 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v49 - v12;
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v58 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = *(a2 + 16);
  if (v20)
  {
    v56 = (v4 + 56);
    v57 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
    v21 = (a2 + 64);
    v52 = v13;
    v54 = &v49 - v19;
    v55 = v3;
    do
    {
      if (*v21 != 1)
      {
        goto LABEL_4;
      }

      v22 = *(v21 - 3);
      v23 = *(v21 - 2);
      v24 = *(v21 - 1);

      sub_1D5C75A4C(v23, v24, 1);
      v60 = sub_1D5E26E28(&unk_1F50F6E98);
      v25 = *(v59 + v57);
      v26 = *(v25 + 16);
      swift_beginAccess();
      if (*(*(v26 + 16) + 16) && (sub_1D5B69D90(v23, v24), (v27 & 1) != 0))
      {
        v53 = v22;
        swift_endAccess();
        v28 = v51;
        sub_1D5D25108(v51);
        v29 = v28;
        v30 = v50;
        sub_1D5D5E33C(v29, v50, type metadata accessor for FormatOption);
        v31 = v58;
        sub_1D5D5E33C(v30, v58, type metadata accessor for FormatOption);
        v32 = v56;
      }

      else
      {
        swift_endAccess();
        swift_beginAccess();
        v32 = v56;
        if (!*(*(v25 + 24) + 16) || (sub_1D5B69D90(v23, v24), (v33 & 1) == 0))
        {
          v39 = v24;
          swift_endAccess();
          v40 = *v32;
          v41 = v58;
          v42 = v55;
          (*v32)(v58, 1, 1, v55);

          sub_1D5B6EF64(v41, &qword_1EDF337F0, type metadata accessor for FormatOption);
          if ((*(v59 + 48) & 1) == 0)
          {
            type metadata accessor for FormatLayoutError();
            sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
            swift_allocError();
            *v48 = v23;
            v48[1] = v39;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            sub_1D5D2F2C8(v23, v39, 1);
            return;
          }

          sub_1D5D2F2C8(v23, v39, 1);
          v38 = v54;
          v40(v54, 1, 1, v42);
          goto LABEL_3;
        }

        v53 = v22;
        swift_endAccess();
        v31 = v58;
        sub_1D5D25108(v58);
      }

      v34 = *v32;
      v35 = v55;
      (*v32)(v31, 0, 1, v55);
      v36 = v52;
      sub_1D5D5E33C(v31, v52, type metadata accessor for FormatOption);
      v61 = v36[2];
      FormatOptionValue.type.getter(&v62);
      v37 = v60;
      if ((sub_1D6183C84(v62, v60) & 1) == 0)
      {
        v59 = type metadata accessor for FormatDerivedDataError();
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        swift_allocError();
        v44 = v43;
        v45 = *v36;
        v46 = v36[1];
        v61 = v36[2];

        FormatOptionValue.type.getter(&v62);
        v47 = v62;
        *v44 = v45;
        *(v44 + 8) = v46;
        *(v44 + 16) = v47;
        *(v44 + 24) = v37;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D5D2F2C8(v23, v24, 1);
        sub_1D62B51D0(v36, type metadata accessor for FormatOption);
        return;
      }

      sub_1D5D2F2C8(v23, v24, 1);
      v38 = v54;
      sub_1D5D5E33C(v36, v54, type metadata accessor for FormatOption);
      v34(v38, 0, 1, v35);
LABEL_3:
      sub_1D5B6EF64(v38, &qword_1EDF337F0, type metadata accessor for FormatOption);
LABEL_4:
      v21 += 40;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_1D62B5D00(uint64_t result, uint64_t a2)
{
  if (result != 9)
  {
    return sub_1D5C84FF4(a2);
  }

  return result;
}

uint64_t sub_1D62B5D18(uint64_t result, uint64_t a2)
{
  if (result != 9)
  {
    return sub_1D5CFCFAC(a2);
  }

  return result;
}

uint64_t sub_1D62B5D30(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1D62B5D44(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1D62B5D88(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1D62B5DD0(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_1D62B5E14(unint64_t result)
{
  if (result != 3)
  {
    return sub_1D62B5E24(result);
  }

  return result;
}

unint64_t sub_1D62B5E24(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

id sub_1D62B5FC8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

void sub_1D62B5FD4(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1D5FC4E9C(a1, a2 & 1);
  }
}

uint64_t sub_1D62B5FEC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D5F26348(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1D62B6164(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1D62B61A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1D62B6240(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  return result;
}

uint64_t sub_1D62B628C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  return result;
}

uint64_t sub_1D62B6438(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C5A0E0(0, a3, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D62B64C0()
{
  result = qword_1EDF1F870;
  if (!qword_1EDF1F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F870);
  }

  return result;
}

uint64_t sub_1D62B6514(uint64_t a1)
{
  sub_1D5C5A0E0(0, &qword_1EDF2ED78, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, type metadata accessor for FormatSwitchValue);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B65A8(uint64_t a1, uint64_t a2)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D62B6644(uint64_t a1)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B66D8(uint64_t a1, uint64_t a2)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D62B6774(uint64_t a1)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B6808(uint64_t a1, uint64_t a2)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D62B68A4(uint64_t a1)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B6938(uint64_t a1, uint64_t a2)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D62B69D4(uint64_t a1)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B6A68(uint64_t a1, uint64_t a2)
{
  sub_1D5CF4A48(0, &qword_1EDF43F78, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D62B6AE8(uint64_t a1)
{
  sub_1D5B4B554(0, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B6B70(uint64_t a1, uint64_t a2)
{
  sub_1D5B4B554(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D62B6C00(uint64_t a1)
{
  sub_1D5B4B554(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B6C88(uint64_t a1, uint64_t a2)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D62B6D24(uint64_t a1)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B6DB8(uint64_t a1, uint64_t a2)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D62B6E54(uint64_t a1)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B6EE8(uint64_t a1)
{
  sub_1D5B4B554(0, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B6F70(uint64_t result, uint64_t a2)
{
  if (BYTE2(a2) != 255)
  {
    return sub_1D610CA74(result, a2, SBYTE2(a2), sub_1D60CF6A8, sub_1D60CF6DC);
  }

  return result;
}

uint64_t sub_1D62B6FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
  }

  else
  {
  }
}

uint64_t sub_1D62B7020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~(a1 & a3) & 0x3000000000000007) != 0)
  {
    return sub_1D62B703C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D62B703C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
  }

  else
  {
  }
}

uint64_t sub_1D62B7098(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 4) != 0)
  {
  }

  else
  {
  }
}

uint64_t sub_1D62B7110(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((~a2 & 0xF000000000000007) != 0 || (a4 & 7) != 7)
  {
    return sub_1D62B7130(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1D62B7130(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 4) == 0)
  {
  }
}

uint64_t sub_1D62B7198(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5CF4A48(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D62B7204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5CF4A48(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D62B72BC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1D62B72CC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1D62B738C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((~a2 & 0xF000000000000007) != 0 || (a4 & 7) != 7)
  {
    return sub_1D62B7098(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1D62B7514(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 6 < 6 || a3 == 12)
  {
  }

  return result;
}

uint64_t sub_1D62B753C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 5u)
  {
    if (a7 > 8u)
    {
      if (a7 != 9 && a7 != 10 && a7 != 11)
      {
        return result;
      }
    }

    else if (a7 != 6 && a7 != 7 && a7 != 8)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (a7 < 4u)
  {
    goto LABEL_15;
  }

  if (a7 == 4)
  {
    sub_1D5D615EC(result);
    sub_1D5D615EC(a3);
    return sub_1D5D615EC(a5);
  }

  if (a7 == 5)
  {
LABEL_15:
  }

  return result;
}

uint64_t sub_1D62B7654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 == 3)
    {
LABEL_8:

      goto LABEL_9;
    }

    if (a7 != 4)
    {
      return result;
    }

LABEL_7:

    goto LABEL_8;
  }

  if (a7 >= 2u)
  {
    if (a7 != 2)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_9:
}

uint64_t sub_1D62B772C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 == 3)
    {
LABEL_8:

      goto LABEL_9;
    }

    if (a7 != 4)
    {
      return result;
    }

LABEL_7:

    goto LABEL_8;
  }

  if (a7 >= 2u)
  {
    if (a7 != 2)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_9:
}

uint64_t sub_1D62B78B4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7)
{
  v7 = a7 >> 13;
  if (v7 == 4 || v7 == 3)
  {
    return sub_1D5D27950(result, a2, a3, a4);
  }

  if (v7 == 2)
  {

    return sub_1D5E1DAEC(result, a2, a3, a4, a5, a6, a7, HIBYTE(a7) & 0x1F);
  }

  return result;
}

uint64_t sub_1D62B7904(uint64_t a1)
{
  sub_1D5C5A0E0(0, qword_1EDF2F000, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, type metadata accessor for FormatSwitchValue.CaseValue);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D62B7B54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a3 != 1)
  {

    sub_1D5DEA234(a2);

    sub_1D5C75A4C(a5, a6, a7 & 1);
  }
}

void sub_1D62B7BE0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a3 != 1)
  {

    sub_1D5CBF568(a2);

    sub_1D5D2F2C8(a5, a6, a7 & 1);
  }
}

uint64_t sub_1D62B7DCC(uint64_t result, uint64_t a2)
{
  if (BYTE2(a2) != 255)
  {
    return sub_1D610CA74(result, a2, SBYTE2(a2), sub_1D610CA28, sub_1D610CA5C);
  }

  return result;
}

unint64_t sub_1D62B7E1C(unint64_t result)
{
  if (result != 3)
  {
    return sub_1D62B5DD0(result);
  }

  return result;
}

unint64_t sub_1D62B7E2C()
{
  result = qword_1EDF1A690;
  if (!qword_1EDF1A690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1A690);
  }

  return result;
}

uint64_t sub_1D62B7ECC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D5F26358(result, a2, a3 & 1);
  }

  return result;
}

id sub_1D62B7EE4(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1D62B5FC8(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1D62B8660()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D08], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF18720 = result;
  return result;
}

uint64_t sub_1D62B8830()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D08], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF18698 = result;
  return result;
}

uint64_t sub_1D62B8A00()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF3C290 = result;
  return result;
}

uint64_t sub_1D62B8BD0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF186A8 = result;
  return result;
}

uint64_t sub_1D62B8DA0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC8854F0 = result;
  return result;
}

uint64_t sub_1D62B8F70()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF186C8 = result;
  return result;
}

uint64_t sub_1D62B9140()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC8854F8 = result;
  return result;
}

uint64_t sub_1D62B9310()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D08], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC885500 = result;
  return result;
}

uint64_t sub_1D62B94E0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D08], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF18668 = result;
  return result;
}

uint64_t sub_1D62B96D4()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885508 = result;
  return result;
}

uint64_t sub_1D62B98EC()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885510 = result;
  return result;
}

uint64_t sub_1D62B9AE0()
{
  v18 = sub_1D72597EC();
  v0 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D72597FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1D725967C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  v17 = v14;
  sub_1D726207C();
  (*(v10 + 104))(v13, *MEMORY[0x1E69D6D00], v9);
  *v8 = sub_1D726207C();
  v8[1] = v15;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D6E98], v4);
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6E90], v18);
  result = sub_1D725984C();
  qword_1EDF186B8 = result;
  return result;
}

uint64_t sub_1D62B9D78()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC885518 = result;
  return result;
}

uint64_t sub_1D62B9F48()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D10], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC885520 = result;
  return result;
}

uint64_t sub_1D62BA118()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D08], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF18678 = result;
  return result;
}

uint64_t sub_1D62BA2E8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF3C2A0 = result;
  return result;
}

uint64_t sub_1D62BA4B8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC885528 = result;
  return result;
}

uint64_t sub_1D62BA688()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF186E0 = result;
  return result;
}

uint64_t sub_1D62BA858()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF18688 = result;
  return result;
}

uint64_t sub_1D62BAA28()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D10], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC885530 = result;
  return result;
}

uint64_t sub_1D62BABF8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885538 = result;
  return result;
}

uint64_t sub_1D62BAE08()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885540 = result;
  return result;
}

uint64_t sub_1D62BAFF8()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF187B8 = result;
  return result;
}

uint64_t sub_1D62BB230()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF3C320 = result;
  return result;
}

uint64_t sub_1D62BB468()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF18830 = result;
  return result;
}

uint64_t sub_1D62BB6C8()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF18778 = result;
  return result;
}

uint64_t sub_1D62BB8E0()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF18748 = result;
  return result;
}

uint64_t sub_1D62BBAD0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885548 = result;
  return result;
}

uint64_t sub_1D62BBCC0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885550 = result;
  return result;
}

uint64_t sub_1D62BBEB0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6E12C(0, &qword_1EDF3C208);
  v6[2] = 0x3FD0000000000000;
  v6[3] = 0x3FF0000000000000;
  v6[1] = 0x3FF0000000000000;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  result = sub_1D725985C();
  qword_1EC885558 = result;
  return result;
}

uint64_t sub_1D62BC018()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF3C358 = result;
  return result;
}

uint64_t sub_1D62BC208()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF187E0 = result;
  return result;
}

uint64_t sub_1D62BC3F8()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B77E58(0, &qword_1EDF18188, sub_1D62C5834);
  v11[15] = 0;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  sub_1D70FBA8C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  sub_1D62C5888();
  result = sub_1D725982C();
  qword_1EDF187C8 = result;
  return result;
}

uint64_t sub_1D62BC60C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0x2E302E302E373231;
  v11[1] = 0xE900000000000031;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885560 = result;
  return result;
}

uint64_t sub_1D62BC814()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 808988728;
  v11[1] = 0xE400000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885568 = result;
  return result;
}

uint64_t sub_1D62BCA10()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 825765944;
  v11[1] = 0xE400000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885570 = result;
  return result;
}

uint64_t sub_1D62BCC0C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6E12C(0, &qword_1EDF18178);
  v6[2] = 6;
  v6[3] = 6;
  v6[1] = 18;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  result = sub_1D725985C();
  qword_1EC885578 = result;
  return result;
}

uint64_t sub_1D62BCD74()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885580 = result;
  return result;
}

uint64_t sub_1D62BCF64()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885588 = result;
  return result;
}

uint64_t sub_1D62BD154()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885590 = result;
  return result;
}

uint64_t sub_1D62BD348()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885598 = result;
  return result;
}

uint64_t sub_1D62BD53C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855A0 = result;
  return result;
}

uint64_t sub_1D62BD730()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855A8 = result;
  return result;
}

uint64_t sub_1D62BD920()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855B0 = result;
  return result;
}

uint64_t sub_1D62BDB10()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA7E8 = result;
  return result;
}

uint64_t sub_1D62BDCDC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B77E58(0, &qword_1EC8856A8, sub_1D62C546C);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA7F0 = result;
  return result;
}

uint64_t sub_1D62BDEB4()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B77E58(0, &qword_1EC8856A8, sub_1D62C546C);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA7F8 = result;
  return result;
}

uint64_t sub_1D62BE08C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA800 = result;
  return result;
}

uint64_t sub_1D62BE25C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855B8 = result;
  return result;
}

uint64_t sub_1D62BE450()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855C0 = result;
  return result;
}

uint64_t sub_1D62BE644()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[1] = 1;
  sub_1D62C57A0();
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855C8 = result;
  return result;
}

uint64_t sub_1D62BE820()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[1] = 0;
  sub_1D62C570C();
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855D0 = result;
  return result;
}

uint64_t sub_1D62BE9F8()
{
  sub_1D5B77F68(0, &unk_1EC88EC80, &type metadata for DebugFormatWeather, MEMORY[0x1E69D6EA8]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v16 - v4;
  v21 = sub_1D72597EC();
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v6);
  v20 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D72597FC();
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v9);
  v18 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D69990E4(0, 26, 0);
  v11 = 0;
  v12 = v22;
  do
  {
    sub_1D6F4C0D8();
    v22 = v12;
    v14 = *(v12 + 16);
    v13 = *(v12 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1D69990E4(v13 > 1, v14 + 1, 1);
      v12 = v22;
    }

    ++v11;
    *(v12 + 16) = v14 + 1;
    (*(v2 + 32))(v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14, v5, v1);
  }

  while (v11 != 26);
  sub_1D5B77E58(0, &qword_1EC885690, sub_1D62C52C0);
  (*(v8 + 104))(v18, *MEMORY[0x1E69D6EA0], v17);
  (*(v19 + 104))(v20, *MEMORY[0x1E69D6E88], v21);
  sub_1D62C5314();
  result = sub_1D725982C();
  qword_1EC9BA808 = result;
  return result;
}

uint64_t sub_1D62BED48()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855D8 = result;
  return result;
}

uint64_t sub_1D62BEF3C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855E0 = result;
  return result;
}

uint64_t sub_1D62BF12C()
{
  v12 = sub_1D72597EC();
  v0 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v1);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D72597FC();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B77E58(0, &qword_1EC885740, sub_1D5F5D990);
  v10[1] = "ormat.upload_diffing_enabled";
  v10[2] = v8;
  v16 = 0;
  sub_1D5B77FB8(0, &qword_1EC885748, &qword_1EC885750, &type metadata for DebugFormatUploadTarget);
  sub_1D5B77F68(0, &qword_1EC885750, &type metadata for DebugFormatUploadTarget, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7279970;
  v15 = 1;
  sub_1D725980C();
  v14 = 2;
  sub_1D725980C();
  v13 = 0;
  sub_1D725980C();
  (*(v4 + 104))(v7, *MEMORY[0x1E69D6EA0], v11);
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6E88], v12);
  sub_1D62C56B8();
  result = sub_1D725982C();
  qword_1EC8855E8 = result;
  return result;
}

uint64_t sub_1D62BF4A8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855F0 = result;
  return result;
}

uint64_t sub_1D62BF69C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8855F8 = result;
  return result;
}

uint64_t sub_1D62BF890()
{
  v12 = sub_1D72597EC();
  v0 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v1);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D72597FC();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B77E58(0, &qword_1EC885720, sub_1D5F5D93C);
  v10[1] = "ormat.asset_server_username";
  v10[2] = v8;
  v16 = 0;
  sub_1D5B77FB8(0, &qword_1EC885728, &qword_1EC885730, &type metadata for DebugFormatBackendEnvironment);
  sub_1D5B77F68(0, &qword_1EC885730, &type metadata for DebugFormatBackendEnvironment, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7279970;
  v15 = 0;
  sub_1D725980C();
  v14 = 1;
  sub_1D725980C();
  v13 = 2;
  sub_1D725980C();
  (*(v4 + 104))(v7, *MEMORY[0x1E69D6EA0], v11);
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6E88], v12);
  sub_1D62C5664();
  result = sub_1D725982C();
  qword_1EC885600 = result;
  return result;
}

uint64_t sub_1D62BFBFC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885608 = result;
  return result;
}

uint64_t sub_1D62BFDF0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885610 = result;
  return result;
}

uint64_t sub_1D62BFFE4()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA810 = result;
  return result;
}

uint64_t sub_1D62C01B4()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 3;
  sub_1D5B77E58(0, &qword_1EC8856B8, sub_1D62C54C0);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA818 = result;
  return result;
}

uint64_t sub_1D62C0390()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA820 = result;
  return result;
}

uint64_t sub_1D62C055C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA828 = result;
  return result;
}

uint64_t sub_1D62C0728()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA830 = result;
  return result;
}

uint64_t sub_1D62C08F4()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA838 = result;
  return result;
}

uint64_t sub_1D62C0AC0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA840 = result;
  return result;
}

uint64_t sub_1D62C0C90()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA848 = result;
  return result;
}

uint64_t sub_1D62C0E60()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC9BA850 = result;
  return result;
}

uint64_t sub_1D62C100C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC9BA858 = result;
  return result;
}

uint64_t sub_1D62C11B8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC9BA860 = result;
  return result;
}

uint64_t sub_1D62C1364()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EC9BA868 = result;
  return result;
}

uint64_t sub_1D62C1510()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA870 = result;
  return result;
}

uint64_t sub_1D62C16E0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[1] = 0;
  sub_1D5B6E12C(0, &qword_1EDF3C208);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA878 = result;
  return result;
}

uint64_t sub_1D62C18AC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[1] = MEMORY[0x1E69E7CC0];
  sub_1D62C5368();
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA880 = result;
  return result;
}

uint64_t sub_1D62C1A68()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[1] = MEMORY[0x1E69E7CC0];
  sub_1D62C5368();
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA888 = result;
  return result;
}

uint64_t sub_1D62C1C24()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[1] = MEMORY[0x1E69E7CC0];
  sub_1D5B77E58(0, &qword_1EC885678, sub_1D62C526C);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA890 = result;
  return result;
}

uint64_t sub_1D62C1E04()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA898 = result;
  return result;
}

uint64_t sub_1D62C1FD4()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA8A0 = result;
  return result;
}

uint64_t sub_1D62C21A4()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA8A8 = result;
  return result;
}

uint64_t sub_1D62C2374()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA8B0 = result;
  return result;
}

uint64_t sub_1D62C2540()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B77E58(0, &qword_1EC8856C8, sub_1D60CB71C);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA8B8 = result;
  return result;
}

uint64_t sub_1D62C271C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA8C0 = result;
  return result;
}

uint64_t sub_1D62C28EC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA8C8 = result;
  return result;
}

uint64_t sub_1D62C2ABC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF187F0 = result;
  return result;
}

uint64_t sub_1D62C2CB0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF3C348 = result;
  return result;
}

uint64_t sub_1D62C2EA0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF3C330 = result;
  return result;
}

uint64_t sub_1D62C3090()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885618 = result;
  return result;
}

uint64_t sub_1D62C3280()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885620 = result;
  return result;
}

uint64_t sub_1D62C34B8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF18848 = result;
  return result;
}

uint64_t sub_1D62C3688()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885628 = result;
  return result;
}

uint64_t sub_1D62C3898()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF18878 = result;
  return result;
}

uint64_t sub_1D62C3AA8()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF18860 = result;
  return result;
}

uint64_t sub_1D62C3C98()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885630 = result;
  return result;
}

uint64_t sub_1D62C3EA8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885638 = result;
  return result;
}

uint64_t sub_1D62C40B8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[1] = 0;
  sub_1D5B6E12C(0, &qword_1EDF18178);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885640 = result;
  return result;
}

uint64_t sub_1D62C42A8()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B77E58(0, &qword_1EC8856F8, sub_1D62C55BC);
  v12[1] = "Ineligible Non-Member";
  v12[2] = v10;
  v18 = 0;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  sub_1D5B77FB8(0, &qword_1EC885708, &qword_1EC885710, &type metadata for SimulatedBundleSubscriptionDetection);
  sub_1D5B77F68(0, &qword_1EC885710, &type metadata for SimulatedBundleSubscriptionDetection, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7279960;
  v17 = 0;
  sub_1D725980C();
  v16 = 1;
  sub_1D725980C();
  v15 = 2;
  sub_1D725980C();
  v14 = 3;
  sub_1D725980C();
  v13 = 4;
  sub_1D725980C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  sub_1D62C5610();
  result = sub_1D725982C();
  qword_1EC885648 = result;
  return result;
}

uint64_t sub_1D62C46C0()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B77E58(0, &qword_1EC8856D0, sub_1D62C5514);
  v12[1] = "an_number_of_members";
  v12[2] = v10;
  v17 = 0;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  sub_1D5B77FB8(0, &qword_1EC8856E0, &qword_1EC8856E8, &type metadata for BundleSessionFamilyStatus);
  sub_1D5B77F68(0, &qword_1EC8856E8, &type metadata for BundleSessionFamilyStatus, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7274590;
  v16 = 0;
  sub_1D725980C();
  v15 = 1;
  sub_1D725980C();
  v14 = 2;
  sub_1D725980C();
  v13 = 3;
  sub_1D725980C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  sub_1D62C5568();
  result = sub_1D725982C();
  qword_1EC885650 = result;
  return result;
}

uint64_t sub_1D62C4A70()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[1] = 0;
  sub_1D5B6E12C(0, &qword_1EDF18178);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC885658 = result;
  return result;
}

uint64_t Settings.NewsFeedModule.BundleSession.FamilyStatusOverrides.__allocating_init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v9, a4, v5);
  v10 = sub_1D725969C();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.NewsFeedModule.BundleSession.FamilyStatusOverrides.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  (*(v6 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5, v8);
  v10 = sub_1D725969C();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.NewsFeedModule.BundleSession.FamilyStatusOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C8NewsFeedE0cD6ModuleV13BundleSessionV21FamilyStatusOverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D62C4ED0()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.NewsFeedModule.BundleSession.FamilyStatusOverrides();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D726207C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D725968C();
  qword_1EC885660 = result;
  return result;
}

uint64_t type metadata accessor for Settings.NewsFeedModule.BundleSession.FamilyStatusOverrides()
{
  result = qword_1EC885668;
  if (!qword_1EC885668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D62C526C()
{
  result = qword_1EC885680;
  if (!qword_1EC885680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885680);
  }

  return result;
}

unint64_t sub_1D62C52C0()
{
  result = qword_1EC88DE60;
  if (!qword_1EC88DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DE60);
  }

  return result;
}

unint64_t sub_1D62C5314()
{
  result = qword_1EC885698;
  if (!qword_1EC885698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885698);
  }

  return result;
}

void sub_1D62C5368()
{
  if (!qword_1EC8856A0)
  {
    sub_1D5B77F68(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D62C53F0();
    v0 = sub_1D725986C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8856A0);
    }
  }
}

unint64_t sub_1D62C53F0()
{
  result = qword_1EC88DE20;
  if (!qword_1EC88DE20)
  {
    sub_1D5B77F68(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DE20);
  }

  return result;
}

unint64_t sub_1D62C546C()
{
  result = qword_1EC8856B0;
  if (!qword_1EC8856B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8856B0);
  }

  return result;
}

unint64_t sub_1D62C54C0()
{
  result = qword_1EC8856C0;
  if (!qword_1EC8856C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8856C0);
  }

  return result;
}

unint64_t sub_1D62C5514()
{
  result = qword_1EC8856D8;
  if (!qword_1EC8856D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8856D8);
  }

  return result;
}

unint64_t sub_1D62C5568()
{
  result = qword_1EC8856F0;
  if (!qword_1EC8856F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8856F0);
  }

  return result;
}

unint64_t sub_1D62C55BC()
{
  result = qword_1EC885700;
  if (!qword_1EC885700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885700);
  }

  return result;
}

unint64_t sub_1D62C5610()
{
  result = qword_1EC885718;
  if (!qword_1EC885718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885718);
  }

  return result;
}

unint64_t sub_1D62C5664()
{
  result = qword_1EC885738;
  if (!qword_1EC885738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885738);
  }

  return result;
}

unint64_t sub_1D62C56B8()
{
  result = qword_1EC885758;
  if (!qword_1EC885758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885758);
  }

  return result;
}

void sub_1D62C570C()
{
  if (!qword_1EC885760)
  {
    type metadata accessor for UIUserInterfaceLayoutDirection(255);
    sub_1D5B46248(&qword_1EC88DDD0, type metadata accessor for UIUserInterfaceLayoutDirection);
    v0 = sub_1D725986C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC885760);
    }
  }
}

void sub_1D62C57A0()
{
  if (!qword_1EC885768)
  {
    type metadata accessor for UIUserInterfaceStyle(255);
    sub_1D5B46248(&qword_1EC88DDC0, type metadata accessor for UIUserInterfaceStyle);
    v0 = sub_1D725986C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC885768);
    }
  }
}

unint64_t sub_1D62C5834()
{
  result = qword_1EDF0DBB8;
  if (!qword_1EDF0DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DBB8);
  }

  return result;
}

unint64_t sub_1D62C5888()
{
  result = qword_1EDF0DBC0;
  if (!qword_1EDF0DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DBC0);
  }

  return result;
}

uint64_t WebEmbedDataSourceManagerError.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D62C5968()
{
  result = qword_1EC885770;
  if (!qword_1EC885770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885770);
  }

  return result;
}

uint64_t dispatch thunk of WebEmbedDataSourceManagerType.prepare(visualizations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5B64684;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WebEmbedDataSourceManagerType.record(for:standing:standingRecordConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 72) + **(a6 + 72));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D5B64684;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D62C5CE8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1D62C5F40;
  }

  else
  {

    v2 = sub_1D62C5E38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62C5E38()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[10];
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = v1;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  sub_1D7262EDC();
  sub_1D725C30C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D62C5F40()
{
  v1 = v0[17];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];

  sub_1D7262EBC();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7270C10;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = v2;
  v0[2] = 0;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  v0[3] = 0xE000000000000000;
  v0[4] = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v7 = v0[2];
  v8 = v0[3];
  *(v5 + 96) = v6;
  *(v5 + 104) = v2;
  *(v5 + 72) = v7;
  *(v5 + 80) = v8;
  sub_1D725C30C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D62C60D0(uint64_t a1)
{
  v3 = 0;
  v115 = *v1;
  v148 = sub_1D725891C();
  v4 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148, v5);
  v142 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v141 = &v115 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v147 = &v115 - v12;
  v140 = type metadata accessor for WebEmbedDataSourceJson();
  MEMORY[0x1EEE9AC00](v140, v13);
  v139 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62D5684(0, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v115 - v17;
  v151 = type metadata accessor for WebEmbedDataSourceCacheEntry();
  v19 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151, v20);
  v146 = (&v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v115 - v24;
  v26 = sub_1D72585BC();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v124 = &v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v155 = &v115 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v158 = &v115 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v115 - v38;
  v126 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v126, v40);
  v125 = &v115 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v129, v42);
  v128 = (&v115 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v44, v45);
  v136 = &v115 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v51 = MEMORY[0x1E69E7CC0];
  v163 = MEMORY[0x1E69E7CC0];
  v52 = *(a1 + 16);
  v149 = v26;
  v118 = v52;
  v116 = a1;
  if (!v52)
  {
    goto LABEL_48;
  }

  v122 = *(v49 + 80);
  v121 = (v122 + 32) & ~v122;
  v120 = a1 + v121;
  v133 = *(v49 + 72);
  v159 = (v27 + 16);
  v160 = (v27 + 32);
  v150 = (v19 + 48);
  v53 = 0;
  v145 = (v4 + 8);
  v138 = (v4 + 16);
  v137 = (v27 + 8);
  v119 = xmmword_1D7273AE0;
  v144 = v18;
  v152 = v25;
  v54 = v27;
  v154 = v27;
  v127 = v39;
  v55 = &v115 - v50;
  v117 = &v115 - v50;
  while (1)
  {
    v123 = v53;
    v157 = type metadata accessor for WebEmbedDataVisualization;
    sub_1D62D47DC(v120 + v133 * v53, v55, type metadata accessor for WebEmbedDataVisualization);
    sub_1D62D5684(0, &qword_1EDF01F70, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6F90]);
    v59 = v121;
    v60 = swift_allocObject();
    *(v60 + 16) = v119;
    sub_1D62D47DC(v55, v60 + v59, v157);
    v61 = sub_1D6D28B24();
    v162 = v60;
    sub_1D5CFED40(v61);
    v62 = v162;
    v162 = v51;
    v132 = *(v62 + 16);
    if (v132)
    {
      break;
    }

    v56 = v51;
LABEL_4:
    v57 = v123 + 1;
    v55 = v117;
    sub_1D5BF1B4C(v117, type metadata accessor for WebEmbedDataVisualization);
    v58 = v56;
    v53 = v57;
    sub_1D698563C(v58);
    if (v57 == v118)
    {
      goto LABEL_47;
    }
  }

  v63 = 0;
  v131 = v62 + v59;
  v64 = v152;
  v130 = v62;
  while (1)
  {
    if (v63 >= *(v62 + 16))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v134 = v63;
    v72 = v131 + v63 * v133;
    v73 = v136;
    sub_1D62D47DC(v72, v136, type metadata accessor for WebEmbedDataVisualization);
    v74 = v73;
    v75 = v128;
    sub_1D62D47DC(v74, v128, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v76 = v125;
      sub_1D5BE74F4(v75, v125, type metadata accessor for GenericDataVisualization);
      v77 = *(v76 + *(v126 + 24));

      sub_1D5BF1B4C(v76, type metadata accessor for GenericDataVisualization);
      if (v77 >> 62)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v161 = *v75;
      v77 = sub_1D6F88478();

      v54 = v154;

      if (v77 >> 62)
      {
LABEL_12:
        v78 = sub_1D7263BFC();
        goto LABEL_15;
      }
    }

    v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
    v135 = v3;
    if (!v78)
    {

      v83 = *(v51 + 16);
      if (v83)
      {
        break;
      }

      goto LABEL_7;
    }

    v161 = v51;
    sub_1D69971B4(0, v78 & ~(v78 >> 63), 0);
    if (v78 < 0)
    {
      goto LABEL_53;
    }

    v51 = v161;
    if ((v77 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v78; ++i)
      {
        v80 = MEMORY[0x1DA6FB460](i, v77);
        (*v159)(v39, v80 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v26);
        swift_unknownObjectRelease();
        v161 = v51;
        v82 = *(v51 + 16);
        v81 = *(v51 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_1D69971B4(v81 > 1, v82 + 1, 1);
          v51 = v161;
        }

        *(v51 + 16) = v82 + 1;
        (*(v54 + 32))(v51 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v82, v39, v26);
      }
    }

    else
    {
      v84 = *v159;
      v85 = 32;
      v86 = v124;
      do
      {
        v84(v86, *(v77 + v85) + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v26);
        v161 = v51;
        v88 = *(v51 + 16);
        v87 = *(v51 + 24);
        if (v88 >= v87 >> 1)
        {
          sub_1D69971B4(v87 > 1, v88 + 1, 1);
          v51 = v161;
        }

        *(v51 + 16) = v88 + 1;
        (*(v54 + 32))(v51 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v88, v86, v26);
        v85 += 8;
        --v78;
      }

      while (v78);
    }

    v18 = v144;
    v64 = v152;
    v83 = *(v51 + 16);
    if (v83)
    {
      break;
    }

LABEL_7:
    v65 = MEMORY[0x1E69E7CC0];
LABEL_8:
    v66 = v134 + 1;

    MEMORY[0x1EEE9AC00](v67, v68);
    v69 = v136;
    *(&v115 - 2) = v153;
    *(&v115 - 1) = v69;
    v3 = v135;
    v70 = sub_1D5FBB884(sub_1D62D4898, (&v115 - 4), v65);
    v63 = v66;

    sub_1D5BF1B4C(v69, type metadata accessor for WebEmbedDataVisualization);
    sub_1D698563C(v70);
    v71 = v66 == v132;
    v51 = MEMORY[0x1E69E7CC0];
    v39 = v127;
    v62 = v130;
    if (v71)
    {

      v56 = v162;
      goto LABEL_4;
    }
  }

  v89 = 0;
  v65 = MEMORY[0x1E69E7CC0];
  v143 = v83;
  while (v89 < *(v51 + 16))
  {
    v157 = ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v156 = *(v54 + 72);
    (*(v54 + 16))(v158, &v157[v51 + v156 * v89], v26);
    sub_1D725B86C();
    if ((*v150)(v18, 1, v151) == 1)
    {
      sub_1D62D4718(v18, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry);
LABEL_40:
      v101 = *v160;
      (*v160)(v155, v158, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v161 = v65;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D69971B4(0, *(v65 + 16) + 1, 1);
        v65 = v161;
      }

      v104 = *(v65 + 16);
      v103 = *(v65 + 24);
      if (v104 >= v103 >> 1)
      {
        sub_1D69971B4(v103 > 1, v104 + 1, 1);
        v65 = v161;
      }

      *(v65 + 16) = v104 + 1;
      v101(&v157[v65 + v104 * v156], v155, v26);
      v64 = v152;
      v54 = v154;
      goto LABEL_32;
    }

    sub_1D5BE74F4(v18, v64, type metadata accessor for WebEmbedDataSourceCacheEntry);
    v90 = v146;
    sub_1D62D47DC(v64, v146, type metadata accessor for WebEmbedDataSourceCacheEntry);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v91 = v142;
      v92 = v148;
      (*v138)(v142, *v90 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_fetchDate, v148);
      v93 = v141;
      sub_1D725880C();
      v94 = *v145;
      (*v145)(v91, v92);
      v95 = v147;
      sub_1D725890C();
      v96 = sub_1D725882C();

      v97 = v95;
      v18 = v144;
      v94(v97, v92);
      v98 = v92;
      v64 = v152;
      v94(v93, v98);
      v83 = v143;
    }

    else
    {
      v99 = v139;
      sub_1D5BE74F4(v90, v139, type metadata accessor for WebEmbedDataSourceJson);
      v100 = v147;
      sub_1D725890C();
      v96 = sub_1D725882C();
      (*v145)(v100, v148);
      sub_1D5BF1B4C(v99, type metadata accessor for WebEmbedDataSourceJson);
    }

    sub_1D5BF1B4C(v64, type metadata accessor for WebEmbedDataSourceCacheEntry);
    v26 = v149;
    v54 = v154;
    if (v96)
    {
      goto LABEL_40;
    }

    (*v137)(v158, v149);
LABEL_32:
    if (v83 == ++v89)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_47:
  v51 = v163;
LABEL_48:
  v163 = v51;
  sub_1D62D5684(0, &qword_1EDF052C8, type metadata accessor for WebEmbedDataVisualizationDataRequest, MEMORY[0x1E69E62F8]);
  sub_1D62D5234(&qword_1EDF052C0, &qword_1EDF052C8, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  sub_1D62D48B4(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
  v105 = sub_1D72623CC();

  if (*(v105 + 16))
  {
    MEMORY[0x1EEE9AC00](v106, v107);
    v108 = v153;
    *(&v115 - 2) = v105;
    *(&v115 - 1) = v108;
    sub_1D62D4918();
    sub_1D725BDCC();

    *(swift_allocObject() + 16) = v116;

    v109 = sub_1D725B92C();
    v110 = sub_1D725BA9C();

    return v110;
  }

  if (qword_1EDF0E798 != -1)
  {
LABEL_54:
    swift_once();
  }

  sub_1D7262EDC();
  v112 = sub_1D725C30C();
  MEMORY[0x1EEE9AC00](v112, v113);
  *(&v115 - 2) = v114;
  *(&v115 - 1) = v116;
  sub_1D5D077AC(0, &qword_1EDF3B8E0, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D62C7210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v90 = a2;
  v93 = a1;
  v80 = *v3;
  sub_1D62D5684(0, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v88 = &v78 - v7;
  v8 = type metadata accessor for WebEmbedDatastoreUpdate();
  v86 = *(v8 - 8);
  v87 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v79 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v78 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v85 = &v78 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v84 = &v78 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v78 - v27;
  v92 = type metadata accessor for WebEmbedDatastoreCacheKey();
  MEMORY[0x1EEE9AC00](v92, v29);
  v89 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v94 = &v78 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = (&v78 - v36);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v78 - v40;
  v42 = sub_1D7261B9C();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v44);
  v46 = (&v78 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v46 = sub_1D726308C();
  (*(v43 + 104))(v46, *MEMORY[0x1E69E8020], v42);
  v47 = sub_1D7261BBC();
  (*(v43 + 8))(v46, v42);
  if ((v47 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1D62D47DC(a3, v28, type metadata accessor for WebEmbedDataVisualization);
  sub_1D62D47DC(v28, v41, type metadata accessor for WebEmbedDataVisualization);
  v95[0] = sub_1D6D28818();

  sub_1D6CD315C(v95);

  sub_1D5BF1B4C(v28, type metadata accessor for WebEmbedDataVisualization);
  v48 = v91;
  *&v41[*(v92 + 20)] = v95[0];
  swift_beginAccess();
  v49 = v48[7];
  v46 = v37;
  if (*(v49 + 16) && (v50 = sub_1D6D6303C(v41), (v51 & 1) != 0))
  {
    v28 = *(*(v49 + 56) + 8 * v50);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v82 = a3;
  v97 = v28;
  swift_endAccess();
  sub_1D5BF1B4C(v41, type metadata accessor for WebEmbedDatastoreCacheKey);
  v83 = v14;
  v81 = 0;
  if (v28 >> 62)
  {
LABEL_22:
    v52 = sub_1D7263BFC();
    v53 = v94;
    if (v52)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  v52 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v53 = v94;
  if (v52)
  {
LABEL_8:
    v54 = 0;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v54, v28);
        v56 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
LABEL_18:
          __break(1u);
        }
      }

      else
      {
        if (v54 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v56 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_18;
        }
      }

      v57 = v18;
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == v93)
        {
        }
      }

      ++v54;
      v55 = v56 == v52;
      v18 = v57;
      v53 = v94;
      v46 = v37;
    }

    while (!v55);
  }

LABEL_23:
  v60 = v82;
  v61 = v84;
  sub_1D62D47DC(v82, v84, type metadata accessor for WebEmbedDataVisualization);
  type metadata accessor for WeakWebEmbedDataSourceManagerObserver();
  v62 = swift_allocObject();
  *(v62 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v62 + 24) = v90;
  swift_unknownObjectWeakAssign();
  v63 = sub_1D5BE74F4(v61, v62 + OBJC_IVAR____TtC8NewsFeed37WeakWebEmbedDataSourceManagerObserver_dataVisualization, type metadata accessor for WebEmbedDataVisualization);
  MEMORY[0x1DA6F9CE0](v63);
  if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  v64 = v97;
  v65 = v85;
  sub_1D62D47DC(v60, v85, type metadata accessor for WebEmbedDataVisualization);
  sub_1D62D47DC(v65, v46, type metadata accessor for WebEmbedDataVisualization);
  v95[0] = sub_1D6D28818();

  v66 = v46;
  v67 = v81;
  sub_1D6CD315C(v95);
  v68 = v91;
  if (v67)
  {

    __break(1u);
  }

  else
  {

    sub_1D5BF1B4C(v65, type metadata accessor for WebEmbedDataVisualization);
    v69 = v92;
    *(v66 + *(v92 + 20)) = v95[0];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96 = v68[7];
    v68[7] = 0x8000000000000000;
    sub_1D6D7A064(v64, v66, isUniquelyReferenced_nonNull_native);
    sub_1D5BF1B4C(v66, type metadata accessor for WebEmbedDatastoreCacheKey);
    v68[7] = v96;
    swift_endAccess();
    sub_1D62D47DC(v60, v18, type metadata accessor for WebEmbedDataVisualization);
    sub_1D62D47DC(v18, v53, type metadata accessor for WebEmbedDataVisualization);
    v95[0] = sub_1D6D28818();

    sub_1D6CD315C(v95);

    sub_1D5BF1B4C(v18, type metadata accessor for WebEmbedDataVisualization);
    *(v53 + *(v69 + 20)) = v95[0];
    v71 = v88;
    sub_1D725B86C();
    sub_1D5BF1B4C(v53, type metadata accessor for WebEmbedDatastoreCacheKey);
    if ((*(v86 + 48))(v71, 1, v87) == 1)
    {
      sub_1D62D4718(v71, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate);
    }

    else
    {
      v72 = v79;
      sub_1D5BE74F4(v71, v79, type metadata accessor for WebEmbedDatastoreUpdate);
      ObjectType = swift_getObjectType();
      v95[3] = v80;
      v95[4] = &off_1F5142C60;
      v95[0] = v68;
      v74 = v90;
      v75 = *(v90 + 8);

      v75(v95, v60, v72, ObjectType, v74);
      sub_1D5BF1B4C(v72, type metadata accessor for WebEmbedDatastoreUpdate);
      __swift_destroy_boxed_opaque_existential_1(v95);
    }

    sub_1D62C7C60(v60);
    sub_1D6CD06D0(v60);
    v76 = v83;
    sub_1D62D47DC(v60, v83, type metadata accessor for WebEmbedDataVisualization);
    v77 = v89;
    sub_1D62D47DC(v76, v89, type metadata accessor for WebEmbedDataVisualization);
    v95[0] = sub_1D6D28818();

    sub_1D6CD315C(v95);

    sub_1D5BF1B4C(v76, type metadata accessor for WebEmbedDataVisualization);
    *(v77 + *(v92 + 20)) = v95[0];
    sub_1D6CD0FB8(v77, 0, 0);
    return sub_1D5BF1B4C(v77, type metadata accessor for WebEmbedDatastoreCacheKey);
  }

  return result;
}

uint64_t sub_1D62C7C60(uint64_t a1)
{
  v2 = v1;
  v152 = sub_1D725891C();
  v4 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152, v5);
  v143 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v142 = &v131 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v141 = &v131 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v140 = &v131 - v15;
  v151 = type metadata accessor for WebEmbedDataSourceJson();
  MEMORY[0x1EEE9AC00](v151, v16);
  v139 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v138 = &v131 - v20;
  sub_1D62D5684(0, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v131 - v23;
  v167 = type metadata accessor for WebEmbedDataSourceCacheEntry();
  v25 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167, v26);
  v150 = (&v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28, v29);
  v149 = &v131 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v131 - v33;
  v133 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v133, v35);
  v132 = &v131 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for WebEmbedDataVisualization();
  v37 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165, v38);
  v172 = &v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v171 = &v131 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v137 = (&v131 - v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  v166 = &v131 - v48;
  sub_1D62D5684(0, &qword_1EDF01F70, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6F90]);
  v49 = *(v37 + 80);
  v50 = (v49 + 32) & ~v49;
  v164 = *(v37 + 72);
  v160 = v49;
  v161 = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1D7273AE0;
  sub_1D62D47DC(a1, v52 + v50, type metadata accessor for WebEmbedDataVisualization);
  v53 = sub_1D6D28B24();
  v175 = v52;
  sub_1D5CFED40(v53);
  result = v175;
  v136 = *(v175 + 16);
  if (!v136)
  {
  }

  v157 = v24;
  v55 = 0;
  v135 = v175 + v50;
  v154 = (v25 + 48);
  v148 = (v4 + 16);
  v147 = (v4 + 8);
  v146 = xmmword_1D7270C10;
  v145 = xmmword_1D7279970;
  v158 = a1;
  v159 = v2;
  v156 = v34;
  v155 = v50;
  v134 = v175;
  while (1)
  {
    if (v55 >= *(result + 16))
    {
      goto LABEL_64;
    }

    sub_1D62D47DC(v135 + v55 * v164, v166, type metadata accessor for WebEmbedDataVisualization);
    v56 = v137;
    sub_1D62D47DC(a1, v137, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v57 = v132;
      sub_1D5BE74F4(v56, v132, type metadata accessor for GenericDataVisualization);
      v58 = *(v57 + *(v133 + 24));

      sub_1D5BF1B4C(v57, type metadata accessor for GenericDataVisualization);
      goto LABEL_22;
    }

    v59 = *v56;
    v60 = *v56 >> 61;
    if (v60 > 2)
    {
      v61 = v59 & 0x1FFFFFFFFFFFFFFFLL;
      if (v60 > 4)
      {
        if (v60 == 5)
        {
          v62 = *(v61 + 16);
          v63 = &OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_urlDataSources;
        }

        else
        {
          v62 = *(v61 + 16);
          v63 = &OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources;
        }
      }

      else if (v60 == 3)
      {
        v62 = *(v61 + 16);
        v63 = &OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_urlDataSources;
      }

      else
      {
        v62 = *(v61 + 16);
        v63 = &OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources;
      }

LABEL_20:
      v58 = *(v62 + *v63);

      goto LABEL_21;
    }

    if (v60)
    {
      v64 = v59 & 0x1FFFFFFFFFFFFFFFLL;
      if (v60 == 1)
      {
        v62 = *(v64 + 16);
        v63 = &OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources;
      }

      else
      {
        v62 = *(v64 + 16);
        v63 = &OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_urlDataSources;
      }

      goto LABEL_20;
    }

    v58 = *(*(v59 + 16) + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_urlDataSources);

LABEL_21:

LABEL_22:
    v65 = v58;
    if (v58 >> 62)
    {
      break;
    }

    result = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_24;
    }

LABEL_3:
    ++v55;

    sub_1D5BF1B4C(v166, type metadata accessor for WebEmbedDataVisualization);
    result = v134;
    if (v55 == v136)
    {
    }
  }

  result = sub_1D7263BFC();
  v65 = v58;
  if (!result)
  {
    goto LABEL_3;
  }

LABEL_24:
  v66 = 0;
  v173 = *(v2 + 72);
  v169 = v65;
  v170 = v65 & 0xC000000000000001;
  v162 = v55;
  v163 = v65 & 0xFFFFFFFFFFFFFF8;
  v168 = result;
  while (2)
  {
    if (v170)
    {
      result = MEMORY[0x1DA6FB460](v66);
      v70 = result;
      v71 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      goto LABEL_33;
    }

    if (v66 >= *(v163 + 16))
    {
      goto LABEL_63;
    }

    v70 = *(v65 + 8 * v66 + 32);

    v71 = v66 + 1;
    if (!__OFADD__(v66, 1))
    {
LABEL_33:
      v72 = OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url;
      sub_1D725B86C();
      v174 = v71;
      if (v175)
      {
        v67 = *(v175 + 16);

        os_unfair_lock_lock(v67 + 6);
        v68 = v172;
        sub_1D62D47DC(a1, v172, type metadata accessor for WebEmbedDataVisualization);
        v69 = v171;
        sub_1D5FEA660(v171, v68);
        sub_1D5BF1B4C(v69, type metadata accessor for WebEmbedDataVisualization);
        os_unfair_lock_unlock(v67 + 6);
      }

      else
      {
        v73 = v157;
        sub_1D725B86C();
        if ((*v154)(v73, 1, v167) == 1)
        {
          sub_1D62D4718(v73, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry);
          if (qword_1EDF0E798 != -1)
          {
            swift_once();
          }

          sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v74 = swift_allocObject();
          *(v74 + 16) = v146;
          v75 = v166;
          v76 = sub_1D62CB840();
          v78 = v77;
          v79 = MEMORY[0x1E69E6158];
          *(v74 + 56) = MEMORY[0x1E69E6158];
          v80 = sub_1D5B7E2C0();
          *(v74 + 64) = v80;
          *(v74 + 32) = v76;
          *(v74 + 40) = v78;
          v81 = sub_1D72583DC();
          *(v74 + 96) = v79;
          *(v74 + 104) = v80;
          *(v74 + 72) = v81;
          *(v74 + 80) = v82;
          sub_1D7262EDC();
          sub_1D725C30C();

          v83 = v155;
          v84 = swift_allocObject();
          sub_1D62D47DC(v75, v84 + v83, type metadata accessor for WebEmbedDataVisualization);
          v85 = sub_1D62D48B4(&qword_1EDF0BB88, type metadata accessor for WebEmbedDataVisualization);
          v175 = MEMORY[0x1DA6FA1E0](1, v165, v85);
          v86 = v172;
          sub_1D62D47DC(v84 + v83, v172, type metadata accessor for WebEmbedDataVisualization);
          v87 = v171;
          sub_1D5FEA660(v171, v86);
          sub_1D5BF1B4C(v87, type metadata accessor for WebEmbedDataVisualization);
          swift_setDeallocating();
          sub_1D5BF1B4C(v84 + v83, type metadata accessor for WebEmbedDataVisualization);
          swift_deallocClassInstance();
          v2 = v159;
          sub_1D62CE158(v70 + v72, v175, 0, 1);
        }

        else
        {
          v88 = v156;
          sub_1D5BE74F4(v73, v156, type metadata accessor for WebEmbedDataSourceCacheEntry);
          v89 = v149;
          if (qword_1EDF0E798 != -1)
          {
            swift_once();
          }

          v90 = qword_1EDFFC588;
          sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v91 = swift_allocObject();
          *(v91 + 16) = v145;
          v92 = sub_1D62CB840();
          v94 = v93;
          *(v91 + 56) = MEMORY[0x1E69E6158];
          v153 = sub_1D5B7E2C0();
          *(v91 + 64) = v153;
          *(v91 + 32) = v92;
          *(v91 + 40) = v94;
          sub_1D62D47DC(v88, v89, type metadata accessor for WebEmbedDataSourceCacheEntry);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v95 = v141;
            v96 = v152;
            (*v148)(v141, *v89 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_fetchDate, v152);
            v97 = v140;
            sub_1D725880C();
            v144 = v90;
            v98 = *v147;
            (*v147)(v95, v96);
            sub_1D725887C();
            v100 = v99;

            v98(v97, v96);
            v88 = v156;
          }

          else
          {
            v101 = v89;
            v102 = v138;
            sub_1D5BE74F4(v101, v138, type metadata accessor for WebEmbedDataSourceJson);
            sub_1D725887C();
            v100 = v103;
            sub_1D5BF1B4C(v102, type metadata accessor for WebEmbedDataSourceJson);
          }

          if (v100 < 0.0)
          {
            v104 = 0.0;
          }

          else
          {
            v104 = v100;
          }

          *(v91 + 96) = MEMORY[0x1E69E63B0];
          *(v91 + 104) = MEMORY[0x1E69E6438];
          *(v91 + 72) = v104;
          v105 = sub_1D72583DC();
          v106 = v153;
          *(v91 + 136) = MEMORY[0x1E69E6158];
          *(v91 + 144) = v106;
          *(v91 + 112) = v105;
          *(v91 + 120) = v107;
          sub_1D7262EDC();
          sub_1D725C30C();

          v108 = v150;
          sub_1D62D47DC(v88, v150, type metadata accessor for WebEmbedDataSourceCacheEntry);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v109 = *v108 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_fetchDate;
            v110 = v143;
            v111 = v152;
            (*v148)(v143, v109, v152);
            v112 = v142;
            sub_1D725880C();
            v113 = *v147;
            (*v147)(v110, v111);
            sub_1D725887C();
            v115 = v114;

            v116 = v156;
            v113(v112, v111);
          }

          else
          {
            v117 = v139;
            sub_1D5BE74F4(v108, v139, type metadata accessor for WebEmbedDataSourceJson);
            sub_1D725887C();
            v115 = v118;
            sub_1D5BF1B4C(v117, type metadata accessor for WebEmbedDataSourceJson);
            v116 = v88;
          }

          if (v115 < 0.0)
          {
            v119 = 0.0;
          }

          else
          {
            v119 = v115;
          }

          v120 = *&v119;
          v121 = v155;
          v122 = swift_allocObject();
          sub_1D62D47DC(v166, v122 + v121, type metadata accessor for WebEmbedDataVisualization);
          v123 = sub_1D62D48B4(&qword_1EDF0BB88, type metadata accessor for WebEmbedDataVisualization);
          v175 = MEMORY[0x1DA6FA1E0](1, v165, v123);
          v124 = v172;
          sub_1D62D47DC(v122 + v121, v172, type metadata accessor for WebEmbedDataVisualization);
          v125 = v171;
          sub_1D5FEA660(v171, v124);
          sub_1D5BF1B4C(v125, type metadata accessor for WebEmbedDataVisualization);
          swift_setDeallocating();
          sub_1D5BF1B4C(v122 + v121, type metadata accessor for WebEmbedDataVisualization);
          swift_deallocClassInstance();
          v2 = v159;
          sub_1D62CE158(v70 + v72, v175, v120, 0);

          sub_1D5BF1B4C(v116, type metadata accessor for WebEmbedDataSourceCacheEntry);
        }

        a1 = v158;
        sub_1D725B86C();
        if (v175)
        {
          v126 = *(v175 + 16);

          os_unfair_lock_lock(v126 + 6);
          v127 = v172;
          sub_1D62D47DC(a1, v172, type metadata accessor for WebEmbedDataVisualization);
          v128 = v2;
          v129 = v171;
          sub_1D5FEA660(v171, v127);
          v130 = v129;
          v2 = v128;
          sub_1D5BF1B4C(v130, type metadata accessor for WebEmbedDataVisualization);
          os_unfair_lock_unlock(v126 + 6);
        }

        v55 = v162;
      }

      ++v66;
      v65 = v169;
      if (v174 == v168)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_1D62C8E30(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v80 = a1;
  v76 = sub_1D72585BC();
  v70 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v6);
  v75 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62D5684(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v78 = &v69 - v10;
  v11 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  *&v73 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v71 = &v69 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v69 - v19;
  v77 = type metadata accessor for WebEmbedDatastoreCacheKey();
  MEMORY[0x1EEE9AC00](v77, v21);
  v74 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v72 = &v69 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v69 - v28;
  v30 = sub_1D7261B9C();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = (&v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v34 = sub_1D726308C();
  (*(v31 + 104))(v34, *MEMORY[0x1E69E8020], v30);
  v35 = sub_1D7261BBC();
  (*(v31 + 8))(v34, v30);
  if ((v35 & 1) == 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v79 = a3;
  sub_1D62D47DC(a3, v20, type metadata accessor for WebEmbedDataVisualization);
  sub_1D62D47DC(v20, v29, type metadata accessor for WebEmbedDataVisualization);
  v81[0] = sub_1D6D28818();

  v30 = 0;
  sub_1D6CD315C(v81);

  sub_1D5BF1B4C(v20, type metadata accessor for WebEmbedDataVisualization);
  *&v29[*(v77 + 20)] = v81[0];
  swift_beginAccess();
  v36 = *(v4 + 56);
  v37 = MEMORY[0x1E69E7CC0];
  if (*(v36 + 16))
  {
    v38 = sub_1D6D6303C(v29);
    if (v39)
    {
      v20 = *(*(v36 + 56) + 8 * v38);
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  swift_endAccess();
  sub_1D5BF1B4C(v29, type metadata accessor for WebEmbedDatastoreCacheKey);
  v81[0] = v37;
  if (v20 >> 62)
  {
LABEL_25:
    v40 = sub_1D7263BFC();
    if (v40)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

  v40 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v40)
  {
LABEL_9:
    v69 = v4;
    v41 = 0;
    v4 = v20 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v41, v20);
        v42 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          v45 = v81[0];
          v4 = v69;
          goto LABEL_27;
        }
      }

      else
      {
        if (v41 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_24;
        }

        v42 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_21;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v44 = Strong, swift_unknownObjectRelease(), v44 == v80) || !swift_unknownObjectWeakLoadStrong())
      {
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      ++v41;
      if (v42 == v40)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_26:
  v45 = MEMORY[0x1E69E7CC0];
LABEL_27:

  v46 = v79;
  v47 = v71;
  sub_1D62D47DC(v79, v71, type metadata accessor for WebEmbedDataVisualization);
  v48 = v72;
  sub_1D62D47DC(v47, v72, type metadata accessor for WebEmbedDataVisualization);
  v81[0] = sub_1D6D28818();

  sub_1D6CD315C(v81);
  if (v30)
  {
    goto LABEL_58;
  }

  sub_1D5BF1B4C(v47, type metadata accessor for WebEmbedDataVisualization);
  *(v48 + *(v77 + 20)) = v81[0];
  v49 = v73;
  if ((v45 & 0x8000000000000000) == 0 && (v45 & 0x4000000000000000) == 0)
  {
    if (*(v45 + 16))
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_53:
  if (!sub_1D7263BFC())
  {
LABEL_31:

    v45 = 0;
  }

LABEL_32:
  swift_beginAccess();
  sub_1D6D6123C(v45, v48);
  swift_endAccess();
  sub_1D62D47DC(v46, v49, type metadata accessor for WebEmbedDataVisualization);
  v50 = v74;
  sub_1D62D47DC(v49, v74, type metadata accessor for WebEmbedDataVisualization);
  v81[0] = sub_1D6D28818();

  sub_1D6CD315C(v81);
  if (!v30)
  {

    sub_1D5BF1B4C(v49, type metadata accessor for WebEmbedDataVisualization);
    *(v50 + *(v77 + 20)) = v81[0];
    swift_beginAccess();
    if (*(*(v4 + 56) + 16))
    {
      sub_1D6D6303C(v50);
      if (v51)
      {
        swift_endAccess();
        return sub_1D5BF1B4C(v50, type metadata accessor for WebEmbedDatastoreCacheKey);
      }
    }

    swift_endAccess();
    sub_1D5BF1B4C(v50, type metadata accessor for WebEmbedDatastoreCacheKey);
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v74 = v53;
    v30 = swift_allocObject();
    v73 = xmmword_1D7273AE0;
    *(v30 + 16) = xmmword_1D7273AE0;
    v54 = WebEmbedDataVisualization.identifier.getter();
    v45 = v55;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    v72 = sub_1D5B7E2C0();
    *(v30 + 64) = v72;
    *(v30 + 32) = v54;
    *(v30 + 40) = v45;
    v71 = sub_1D5B5A498(0, &qword_1EDF3C6A0);
    v56 = sub_1D72638FC();
    sub_1D7262EDC();
    sub_1D725C30C();

    sub_1D6CCDF90(v46);
    v57 = WebEmbedDataVisualization.urlDataSources.getter();
    v58 = v57;
    if (v57 >> 62)
    {
      v59 = sub_1D7263BFC();
      if (v59)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v59 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v59)
      {
LABEL_38:
        if (v59 >= 1)
        {
          v60 = 0;
          v48 = *(v4 + 72);
          v80 = v58 & 0xC000000000000001;
          v77 = v58 & 0xFFFFFFFFFFFFFF8;
          v70 += 2;
          while (1)
          {
            if (v80)
            {
              v45 = MEMORY[0x1DA6FB460](v60, v58);
            }

            else
            {
              if (v60 >= *(v77 + 16))
              {
                __break(1u);
                goto LABEL_53;
              }

              v45 = *(v58 + 8 * v60 + 32);
            }

            v4 = OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url;
            sub_1D725B86C();
            v49 = v81[0];
            if (v81[0])
            {
              v61 = v81[0][2];

              os_unfair_lock_lock(v61 + 6);
              v30 = v78;
              sub_1D62D1D18(v79, v78);
              sub_1D62D4718(v30, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
              os_unfair_lock_unlock(v61 + 6);

              v62 = v49[2];

              os_unfair_lock_lock((v62 + 24));
              v63 = *(v62 + 16);

              os_unfair_lock_unlock((v62 + 24));

              v46 = *(v63 + 16);

              if (!v46)
              {
                v64 = swift_allocObject();
                *(v64 + 16) = v73;
                v65 = sub_1D72583DC();
                v66 = v72;
                *(v64 + 56) = MEMORY[0x1E69E6158];
                *(v64 + 64) = v66;
                *(v64 + 32) = v65;
                *(v64 + 40) = v67;
                v68 = sub_1D72638FC();
                sub_1D7262EDC();
                sub_1D725C30C();

                sub_1D725B86C();
                if (v81[0])
                {

                  sub_1D7261B7C();
                }

                v46 = v75;
                (*v70)(v75, v45 + v4, v76);
                v81[0] = 0;
                sub_1D725B87C();
              }
            }

            if (v59 == ++v60)
            {
            }
          }
        }

        __break(1u);
        goto LABEL_58;
      }
    }
  }

LABEL_58:

  __break(1u);
  return result;
}

uint64_t sub_1D62C991C(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebEmbedDatastoreCacheKey();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62D5684(0, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v17 - v12;
  sub_1D62D47DC(a1, v5, type metadata accessor for WebEmbedDataVisualization);
  sub_1D62D47DC(v5, v9, type metadata accessor for WebEmbedDataVisualization);
  v18 = sub_1D6D28818();

  sub_1D6CD315C(&v18);

  sub_1D5BF1B4C(v5, type metadata accessor for WebEmbedDataVisualization);
  *&v9[*(v6 + 20)] = v18;
  sub_1D725B86C();
  sub_1D5BF1B4C(v9, type metadata accessor for WebEmbedDatastoreCacheKey);
  v14 = type metadata accessor for WebEmbedDatastoreUpdate();
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    sub_1D62D4718(v13, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate);
    return 0;
  }

  else
  {
    v15 = *&v13[*(v14 + 20)];

    sub_1D5BF1B4C(v13, type metadata accessor for WebEmbedDatastoreUpdate);
  }

  return v15;
}

uint64_t sub_1D62C9BD0(uint64_t *a1)
{
  v2 = type metadata accessor for WebEmbedDatastoreUpdate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  v13 = *a1;
  v14 = v7;
  v8 = sub_1D6CCE3D8(&v13);
  v9 = v8[2];
  if (v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v10 = v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      sub_1D62D47DC(v10, v6, type metadata accessor for WebEmbedDatastoreUpdate);

      sub_1D5BF1B4C(v6, type metadata accessor for WebEmbedDatastoreUpdate);
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      v10 += v11;
      --v9;
    }

    while (v9);

    return v13;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

size_t sub_1D62C9D84()
{
  v1 = v0;
  v2 = type metadata accessor for WebEmbedDataVisualization();
  v60 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v61 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v50 - v11;
  sub_1D62D5190();
  v58 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v57 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v50 - v18;
  sub_1D725B7FC();
  v20 = type metadata accessor for WebEmbedDatastoreCacheKey();
  type metadata accessor for WebEmbedDatastoreUpdate();
  type metadata accessor for WebEmbedDatastore();
  sub_1D62D48B4(qword_1EDF23AD0, type metadata accessor for WebEmbedDatastoreCacheKey);
  sub_1D62D48B4(&qword_1EDF0BB88, type metadata accessor for WebEmbedDataVisualization);
  sub_1D7261D6C();

  v21 = v12;

  swift_beginAccess();
  v22 = *(v1 + 56);
  v24 = v22 + 64;
  v23 = *(v22 + 64);
  v63 = MEMORY[0x1E69E7CD0];
  v25 = 1 << *(v22 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v23;
  v28 = (v25 + 63) >> 6;
  v56 = v20 - 8;
  v59 = v22;
  result = swift_bridgeObjectRetain_n();
  v30 = 0;
  v51 = v28;
  v52 = v24;
  v54 = v21;
  v55 = v5;
  v53 = v19;
  while (v27)
  {
LABEL_10:
    v32 = __clz(__rbit64(v27)) | (v30 << 6);
    v33 = v59;
    sub_1D62D47DC(*(v59 + 48) + *(*v56 + 72) * v32, v19, type metadata accessor for WebEmbedDatastoreCacheKey);
    v34 = *(*(v33 + 56) + 8 * v32);
    v35 = v58;
    *&v19[*(v58 + 48)] = v34;
    v36 = v19;
    v37 = v57;
    sub_1D62D47DC(v36, v57, sub_1D62D5190);
    v38 = *(v37 + *(v35 + 48));

    sub_1D5BF1B4C(v37, type metadata accessor for WebEmbedDatastoreCacheKey);
    if (v38 >> 62)
    {
      v39 = sub_1D7263BFC();
      if (!v39)
      {
LABEL_22:

        v41 = MEMORY[0x1E69E7CC0];
        goto LABEL_23;
      }
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v39)
      {
        goto LABEL_22;
      }
    }

    v62 = MEMORY[0x1E69E7CC0];
    result = sub_1D6997134(0, v39 & ~(v39 >> 63), 0);
    if (v39 < 0)
    {
      goto LABEL_29;
    }

    v40 = 0;
    v41 = v62;
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x1DA6FB460](v40, v38);
        sub_1D62D47DC(v42 + OBJC_IVAR____TtC8NewsFeed37WeakWebEmbedDataSourceManagerObserver_dataVisualization, v61, type metadata accessor for WebEmbedDataVisualization);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1D62D47DC(*(v38 + 8 * v40 + 32) + OBJC_IVAR____TtC8NewsFeed37WeakWebEmbedDataSourceManagerObserver_dataVisualization, v61, type metadata accessor for WebEmbedDataVisualization);
      }

      v62 = v41;
      v44 = *(v41 + 16);
      v43 = *(v41 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1D6997134(v43 > 1, v44 + 1, 1);
        v41 = v62;
      }

      ++v40;
      *(v41 + 16) = v44 + 1;
      sub_1D5BE74F4(v61, v41 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v44, type metadata accessor for WebEmbedDataVisualization);
    }

    while (v39 != v40);

LABEL_23:
    v45 = *(v41 + 16);
    v47 = v54;
    v46 = v55;
    if (v45)
    {
      v48 = v41 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
      v49 = *(v60 + 72);
      do
      {
        sub_1D62D47DC(v48, v47, type metadata accessor for WebEmbedDataVisualization);
        sub_1D5FEA660(v46, v47);
        sub_1D5BF1B4C(v46, type metadata accessor for WebEmbedDataVisualization);
        v48 += v49;
        --v45;
      }

      while (v45);
    }

    v27 &= v27 - 1;
    v19 = v53;
    sub_1D5BF1B4C(v53, sub_1D62D5190);

    v28 = v51;
    v24 = v52;
  }

  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v28)
    {

      return v63;
    }

    v27 = *(v24 + 8 * v31);
    ++v30;
    if (v27)
    {
      v30 = v31;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1D62CA380(uint64_t a1)
{
  v71 = type metadata accessor for WebEmbedDataSourceJson();
  MEMORY[0x1EEE9AC00](v71, v2);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v62 - v7;
  v75 = type metadata accessor for WebEmbedDataSourceCacheEntry();
  MEMORY[0x1EEE9AC00](v75, v9);
  v70 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v62 - v13;
  v15 = type metadata accessor for WebEmbedDatastoreProperty();
  v64 = *(v15 - 8);
  v65 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v74 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v68 = &v62 - v20;
  v21 = MEMORY[0x1E69E7CC0];
  v76 = MEMORY[0x1E69E7CC0];
  v22 = *(a1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents);
  v73 = v4;
  v62 = a1;
  if (v22)
  {
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = *(v65 + 20);
      v66 = v8;
      v67 = v24;
      v25 = v22 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
      v26 = *(v64 + 72);
      v63 = v14;
      while (1)
      {
        v69 = v23;
        v27 = v68;
        sub_1D62D47DC(v25, v68, type metadata accessor for WebEmbedDatastoreProperty);
        sub_1D62D47DC(v27 + v67, v14, type metadata accessor for WebEmbedDataSourceCacheEntry);
        sub_1D5BF1B4C(v27, type metadata accessor for WebEmbedDatastoreProperty);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        MEMORY[0x1DA6F9CE0](v28);
        if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();

        v21 = v76;
        v29 = v69;
LABEL_6:
        v25 += v26;
        v23 = v29 - 1;
        if (!v23)
        {
          goto LABEL_20;
        }
      }

      sub_1D5BE74F4(v14, v8, type metadata accessor for WebEmbedDataSourceJson);
      v30 = __swift_project_boxed_opaque_existential_1((v72 + 16), *(v72 + 40));
      v31 = *(v71 + 32);
      v32 = v8;
      v33 = *v30;
      sub_1D725A76C();
      v34 = OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_lastFailedResponses;
      swift_beginAccess();
      v35 = *(v33 + v34);
      if (*(v35 + 16))
      {
        v36 = v21;
        v37 = sub_1D6D62B84(&v32[v31]);
        if (v38)
        {
          v39 = *(*(v35 + 56) + 8 * v37);

LABEL_16:
          v4 = v73;
          v29 = v69;
          swift_endAccess();
          sub_1D725A77C();
          if (v39)
          {

            MEMORY[0x1DA6F9CE0](v40);
            v8 = v66;
            if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
              v4 = v73;
            }

            sub_1D726278C();

            sub_1D5BF1B4C(v8, type metadata accessor for WebEmbedDataSourceJson);
            v21 = v76;
          }

          else
          {
            v8 = v66;
            sub_1D5BF1B4C(v66, type metadata accessor for WebEmbedDataSourceJson);
            v21 = v36;
          }

          v14 = v63;
          goto LABEL_6;
        }
      }

      else
      {
        v36 = v21;
      }

      v39 = 0;
      goto LABEL_16;
    }
  }

LABEL_20:
  v41 = *(v62 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents);
  if (v41 && (v67 = *(v41 + 2)) != 0)
  {
    v42 = 0;
    v66 = v41 + 32;
    v43 = v70;
    v63 = v41;
    while (v42 < *(v41 + 2))
    {
      v44 = *&v66[8 * v42];
      v45 = *(v44 + 16);
      if (v45)
      {
        v68 = *&v66[8 * v42];
        v69 = v42;
        v46 = v64;
        v47 = *(v65 + 20);
        v48 = v44 + ((*(v64 + 80) + 32) & ~*(v64 + 80));

        v49 = *(v46 + 72);
        while (1)
        {
          v51 = v74;
          sub_1D62D47DC(v48, v74, type metadata accessor for WebEmbedDatastoreProperty);
          sub_1D62D47DC(v51 + v47, v43, type metadata accessor for WebEmbedDataSourceCacheEntry);
          sub_1D5BF1B4C(v51, type metadata accessor for WebEmbedDatastoreProperty);
          if (swift_getEnumCaseMultiPayload() == 1)
          {

            MEMORY[0x1DA6F9CE0](v50);
            if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
            }

            sub_1D726278C();
          }

          else
          {
            v52 = v21;
            sub_1D5BE74F4(v43, v4, type metadata accessor for WebEmbedDataSourceJson);
            v53 = __swift_project_boxed_opaque_existential_1((v72 + 16), *(v72 + 40));
            v54 = *(v71 + 32);
            v55 = *v53;
            sub_1D725A76C();
            v56 = OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_lastFailedResponses;
            swift_beginAccess();
            v57 = *(v55 + v56);
            if (*(v57 + 16) && (v58 = sub_1D6D62B84(&v4[v54]), (v59 & 1) != 0))
            {
              v60 = *(*(v57 + 56) + 8 * v58);
            }

            else
            {
              v60 = 0;
            }

            v43 = v70;
            swift_endAccess();
            sub_1D725A77C();
            if (!v60)
            {
              v4 = v73;
              sub_1D5BF1B4C(v73, type metadata accessor for WebEmbedDataSourceJson);
              v21 = v52;
              goto LABEL_32;
            }

            MEMORY[0x1DA6F9CE0](v61);
            v4 = v73;
            if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
              v4 = v73;
            }

            sub_1D726278C();

            sub_1D5BF1B4C(v4, type metadata accessor for WebEmbedDataSourceJson);
          }

          v21 = v76;
LABEL_32:
          v48 += v49;
          if (!--v45)
          {

            v41 = v63;
            v42 = v69;
            break;
          }
        }
      }

      if (++v42 == v67)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_43:
    type metadata accessor for WebEmbedDatastoreFailures();
    *(swift_allocObject() + 16) = v21;
  }
}

uint64_t sub_1D62CAAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v7 = sub_1D72620DC();
  *(v5 + 56) = v7;
  *(v5 + 64) = *(v7 - 8);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = type metadata accessor for WebEmbedDataSourceJson();
  *(v5 + 88) = swift_task_alloc();
  sub_1D62D5684(0, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry, MEMORY[0x1E69E6720]);
  *(v5 + 96) = swift_task_alloc();
  v8 = type metadata accessor for WebEmbedDataSourceCacheEntry();
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a4;
  v11 = a4[1];
  *(v5 + 128) = v9;
  *(v5 + 136) = v10;
  *(v5 + 144) = v11;
  *(v5 + 152) = *(a4 + 1);

  return MEMORY[0x1EEE6DFA0](sub_1D62CACB0, 0, 0);
}

uint64_t sub_1D62CACB0()
{
  v1 = *(v0 + 40);
  sub_1D62D5684(0, &qword_1EDF01F70, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6F90]);
  v2 = *(*(type metadata accessor for WebEmbedDataVisualization() - 8) + 80);
  *(v0 + 184) = v2;
  v3 = (v2 + 32) & ~v2;
  v4 = swift_allocObject();
  *(v0 + 168) = v4;
  *(v4 + 16) = xmmword_1D7273AE0;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v4 + v3) = v5 | 0x2000000000000000;
  swift_storeEnumTagMultiPayload();

  v6 = swift_task_alloc();
  *(v0 + 176) = v6;
  *v6 = v0;
  v6[1] = sub_1D62CAE50;

  return sub_1D5D03420(v4);
}

uint64_t sub_1D62CAE50()
{
  v1 = *(*v0 + 168);
  v2 = (*(*v0 + 184) + 32) & ~*(*v0 + 184);

  swift_setDeallocating();
  sub_1D5BF1B4C(v1 + v2, type metadata accessor for WebEmbedDataVisualization);
  swift_deallocClassInstance();

  return MEMORY[0x1EEE6DFA0](sub_1D62CAFA0, 0, 0);
}

uint64_t sub_1D62CAFA0()
{
  v45 = v0;
  v1 = v0;
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources);
  if (v2 >> 62)
  {
LABEL_43:
    v39 = sub_1D7263BFC();
  }

  else
  {
    v39 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v39)
  {
LABEL_28:

    sub_1D62D4788();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();

    goto LABEL_38;
  }

  v3 = 0;
  v37 = v1;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1DA6FB460](v3, v2);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        v1 = v37;
        goto LABEL_28;
      }
    }

    else
    {
      if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_43;
      }

      v4 = *(v2 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_26;
      }
    }

    v6 = *(v4 + 16);
    v1 = *(v4 + 24);
    if (v1 > 1)
    {
      break;
    }

    v7 = 0x617453746E657665;
    v8 = 0xEF61746144636974;
    if (!v1)
    {
      goto LABEL_20;
    }

    if (v1 != 1)
    {
      goto LABEL_19;
    }

LABEL_22:
    v9 = sub_1D72646CC();
    sub_1D5F8E840(v6, v1);
    sub_1D5F8E840(v6, v1);
    sub_1D5F8E840(v6, v1);
    sub_1D5F8E840(0, 0);

    sub_1D62D46F4(v6, v1);
    sub_1D62D46F4(0, 0);
    sub_1D62D46F4(v6, v1);
    if (v9)
    {
      goto LABEL_30;
    }

LABEL_7:
    ++v3;
    if (v5 == v39)
    {
      goto LABEL_27;
    }
  }

  if (v1 == 2 || v1 == 3)
  {
    goto LABEL_22;
  }

  if (v1 == 4)
  {
    sub_1D5F8E840(*(v4 + 16), 4uLL);

    sub_1D62D46F4(v6, 4uLL);
    sub_1D62D46F4(0, 0);
    goto LABEL_7;
  }

LABEL_19:
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
LABEL_20:
  if (v7 != 0x617453746E657665 || v8 != 0xEF61746144636974)
  {
    goto LABEL_22;
  }

  sub_1D5F8E840(*(v4 + 16), *(v4 + 24));
  sub_1D5F8E840(v6, v1);
  sub_1D5F8E840(v6, v1);
  sub_1D5F8E840(0, 0);

  sub_1D62D46F4(v6, v1);
  sub_1D62D46F4(0, 0);
  sub_1D62D46F4(v6, v1);
LABEL_30:
  v1 = v37;
  v11 = *(v37 + 104);
  v12 = *(v37 + 112);
  v13 = *(v37 + 96);

  sub_1D725B86C();
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    sub_1D62D4718(*(v37 + 96), qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry);
    sub_1D62D4788();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();

    goto LABEL_38;
  }

  v16 = *(v37 + 120);
  v15 = *(v37 + 128);
  v17 = *(v37 + 96);

  sub_1D5BE74F4(v17, v15, type metadata accessor for WebEmbedDataSourceCacheEntry);
  sub_1D62D47DC(v15, v16, type metadata accessor for WebEmbedDataSourceCacheEntry);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(v37 + 128);
    sub_1D5BF1B4C(*(v37 + 120), type metadata accessor for WebEmbedDataSourceCacheEntry);
    sub_1D62D4788();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    v20 = v18;
    v21 = type metadata accessor for WebEmbedDataSourceCacheEntry;
    v1 = v37;
  }

  else
  {
    v23 = *(v37 + 64);
    v22 = *(v37 + 72);
    v24 = *(v37 + 56);
    sub_1D5BE74F4(*(v37 + 120), *(v37 + 88), type metadata accessor for WebEmbedDataSourceJson);
    sub_1D72620CC();
    v25 = sub_1D726208C();
    v27 = v26;
    (*(v23 + 8))(v22, v24);
    if (v27 >> 60 != 15)
    {
      sub_1D725A6CC();
      swift_allocObject();
      sub_1D725A6BC();
      sub_1D62D4844();
      sub_1D725A69C();
      v33 = *(v37 + 152);
      v32 = *(v37 + 160);
      v38 = *(v37 + 136);
      v34 = *(v37 + 24);
      v40 = *(v37 + 32);

      v41 = *(v37 + 16);
      v42 = v38;
      v43 = v33;
      v44 = v32;
      sub_1D611D2A8(v40, &v41, &v42, v34);
      v35 = *(v37 + 88);
      sub_1D5BF1B4C(*(v37 + 128), type metadata accessor for WebEmbedDataSourceCacheEntry);
      sub_1D5B952E4(v25, v27);

      sub_1D5BF1B4C(v35, type metadata accessor for WebEmbedDataSourceJson);

      v36 = *(v37 + 8);
      goto LABEL_39;
    }

    v28 = *(v37 + 128);
    v29 = *(v37 + 88);
    sub_1D62D4788();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();

    sub_1D5BF1B4C(v28, type metadata accessor for WebEmbedDataSourceCacheEntry);
    v21 = type metadata accessor for WebEmbedDataSourceJson;
    v20 = v29;
  }

  sub_1D5BF1B4C(v20, v21);
LABEL_38:

  v36 = *(v1 + 8);
LABEL_39:

  return v36();
}

uint64_t sub_1D62CB840()
{
  v1 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D62D47DC(v0, v8, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE74F4(v8, v4, type metadata accessor for GenericDataVisualization);
    v16 = WebEmbedDataVisualization.kind.getter();
    v17 = v9;
    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](*v4, v4[1]);
    v10 = v16;
    sub_1D5BF1B4C(v4, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v11 = *v8;
    v16 = WebEmbedDataVisualization.kind.getter();
    v17 = v12;
    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    v15[1] = v11;
    v13 = SportsDataVisualization.umcCanonicalId.getter();
    MEMORY[0x1DA6F9910](v13);

    return v16;
  }

  return v10;
}

uint64_t sub_1D62CB9E4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D62CBAD4()
{
  sub_1D725B7FC();
  type metadata accessor for WebEmbedDatastoreCacheKey();
  type metadata accessor for WebEmbedDatastoreUpdate();
  type metadata accessor for WebEmbedDataVisualization();
  type metadata accessor for WebEmbedDatastore();
  sub_1D62D48B4(qword_1EDF23AD0, type metadata accessor for WebEmbedDatastoreCacheKey);
  sub_1D62D48B4(&qword_1EDF0BB88, type metadata accessor for WebEmbedDataVisualization);
  v0 = sub_1D7261D6C();

  return v0;
}

uint64_t sub_1D62CBC04()
{
  sub_1D725B7FC();
  type metadata accessor for WebEmbedDatastoreCacheKey();
  type metadata accessor for WebEmbedDatastoreUpdate();
  type metadata accessor for WebEmbedDataVisualization();
  type metadata accessor for WebEmbedDatastore();
  sub_1D62D48B4(qword_1EDF23AD0, type metadata accessor for WebEmbedDatastoreCacheKey);
  sub_1D62D48B4(&qword_1EDF0BB88, type metadata accessor for WebEmbedDataVisualization);
  v0 = sub_1D7261D6C();

  sub_1D62C9D84();
  sub_1D62D4F64(v0, sub_1D62D4D44);
  v2 = v1;

  return v2;
}

uint64_t sub_1D62CBDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64684;

  return sub_1D62CAAE4(a1, a2, a3, a4);
}

uint64_t sub_1D62CBE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for WebEmbedDataVisualizationDataRequest(0) + 24);
  v5 = sub_1D72585BC();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_1D62CBEE4(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v36 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v4 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v5);
  v34 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v29 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v29[1] = v2;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v12 = *(v4 + 80);
    v13 = a1 + ((v12 + 32) & ~v12);
    v32 = *(v4 + 72);
    v33 = v12;
    v31 = (v12 + 16) & ~v12;
    v30 = xmmword_1D7273AE0;
    do
    {
      v40 = v13;
      v41 = v11;
      sub_1D62D47DC(v13, v10, type metadata accessor for WebEmbedDataVisualizationDataRequest);
      if (qword_1EDF0E798 != -1)
      {
        swift_once();
      }

      sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v14 = swift_allocObject();
      *(v14 + 16) = v30;
      v15 = sub_1D72583DC();
      v17 = v16;
      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = sub_1D5B7E2C0();
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      sub_1D7262EDC();
      sub_1D725C30C();

      MEMORY[0x1EEE9AC00](v18, v19);
      v29[-2] = v37;
      v29[-1] = v10;
      type metadata accessor for WebEmbedDataVisualizationDataResult(0);
      sub_1D725BDCC();
      v39 = type metadata accessor for WebEmbedDataVisualizationDataRequest;
      v20 = v34;
      sub_1D62D47DC(v10, v34, type metadata accessor for WebEmbedDataVisualizationDataRequest);
      v21 = v31;
      v22 = swift_allocObject();
      v38 = type metadata accessor for WebEmbedDataVisualizationDataRequest;
      sub_1D5BE74F4(v20, v22 + v21, type metadata accessor for WebEmbedDataVisualizationDataRequest);
      v23 = sub_1D725B92C();
      sub_1D725BA8C();

      sub_1D62D47DC(v10, v20, v39);
      v24 = swift_allocObject();
      sub_1D5BE74F4(v20, v24 + v21, v38);
      v25 = sub_1D725B92C();
      sub_1D725BACC();

      sub_1D5BF1B4C(v10, type metadata accessor for WebEmbedDataVisualizationDataRequest);
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      v13 = v40 + v32;
      v11 = v41 - 1;
    }

    while (v41 != 1);
  }

  v26 = sub_1D725B92C();
  v27 = sub_1D725BEFC();

  return v27;
}