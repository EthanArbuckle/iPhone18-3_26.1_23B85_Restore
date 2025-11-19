uint64_t sub_1D6286C44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  if (!a2 || (, sub_1D6273544(v7, a2), result = , !v4))
  {
    if (!a3 || (, sub_1D6273544(v7, a3), result = , !v4))
    {
      if (a4)
      {

        sub_1D6273544(v7, a4);
      }
    }
  }

  return result;
}

uint64_t sub_1D6286D00(uint64_t result)
{
  v3 = result;
  v4 = *v1;
  if (*v1)
  {
    v5 = v1[1];

    sub_1D6273544(v3, v4);
    if (v2)
    {
LABEL_6:
      v7 = v4;
      return sub_1D5CDE22C(v7);
    }

    sub_1D6273544(v3, v5);
    result = sub_1D5CDE22C(v4);
  }

  v4 = v1[2];
  if (v4)
  {
    v6 = v1[3];

    sub_1D6273544(v3, v4);
    if (v2)
    {
      goto LABEL_6;
    }

    sub_1D6273544(v3, v6);
    result = sub_1D5CDE22C(v4);
  }

  v8 = v1[4];
  if (v8)
  {
    v9 = v1[5];

    sub_1D6273544(v3, v8);
    if (!v2)
    {
      sub_1D6273544(v3, v9);
    }

    v7 = v8;
    return sub_1D5CDE22C(v7);
  }

  return result;
}

uint64_t sub_1D6286E38(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = sub_1D726393C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - v12;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v35 - v17;
  v19 = *(v7 + 16);
  v37 = v3;
  v44 = v19;
  (v19)(&v35 - v17, v3, v6, v16);
  v40 = *(*(v5 - 8) + 48);
  v20 = v40(v18, 1, v5);
  v35 = a1;
  if (v20 == 1)
  {
    v21 = v7;
    (*(v7 + 8))(v18, v6);
LABEL_7:
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v7 = v21;
    v23 = v38;
    goto LABEL_8;
  }

  v21 = v7;
  sub_1D5B49474(0, &qword_1EC8854D0);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v22 = *(&v42 + 1);
  v23 = v38;
  if (!*(&v42 + 1))
  {
LABEL_8:
    sub_1D5BFB774(&v41, &qword_1EC8854D8, &qword_1EC8854D0);
    goto LABEL_9;
  }

  v24 = v43;
  __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
  v25 = v39;
  (*(v24 + 8))(v35, v22, v24);
  result = __swift_destroy_boxed_opaque_existential_1(&v41);
  v39 = v25;
  if (v25)
  {
    return result;
  }

  v7 = v21;
  v23 = v38;
LABEL_9:
  v27 = v37;
  v44(v13, v37 + *(v23 + 36), v6);
  if (v40(v13, 1, v5) == 1)
  {
    (*(v7 + 8))(v13, v6);
LABEL_15:
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    goto LABEL_16;
  }

  sub_1D5B49474(0, &qword_1EC8854D0);
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v28 = *(&v42 + 1);
  if (!*(&v42 + 1))
  {
LABEL_16:
    sub_1D5BFB774(&v41, &qword_1EC8854D8, &qword_1EC8854D0);
    goto LABEL_17;
  }

  v29 = v43;
  __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
  v30 = v39;
  (*(v29 + 8))(v35, v28, v29);
  result = __swift_destroy_boxed_opaque_existential_1(&v41);
  v39 = v30;
  if (!v30)
  {
    v23 = v38;
LABEL_17:
    v31 = v27 + *(v23 + 40);
    v32 = v36;
    v44(v36, v31, v6);
    if (v40(v32, 1, v5) == 1)
    {
      (*(v7 + 8))(v32, v6);
    }

    else
    {
      sub_1D5B49474(0, &qword_1EC8854D0);
      if (swift_dynamicCast())
      {
        v33 = *(&v42 + 1);
        if (*(&v42 + 1))
        {
          v34 = v43;
          __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
          (*(v34 + 8))(v35, v33, v34);
          return __swift_destroy_boxed_opaque_existential_1(&v41);
        }

        return sub_1D5BFB774(&v41, &qword_1EC8854D8, &qword_1EC8854D0);
      }
    }

    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    return sub_1D5BFB774(&v41, &qword_1EC8854D8, &qword_1EC8854D0);
  }

  return result;
}

uint64_t sub_1D62872F8(uint64_t a1)
{
  if (*(v1 + 48) == 4)
  {
    return sub_1D6286D00(a1);
  }

  else
  {
    return sub_1D6286C44(a1, *v1, *(v1 + 8), *(v1 + 16));
  }
}

uint64_t sub_1D62873B8(uint64_t a1)
{
  v2 = v1;
  v63 = a1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(v1 + 48);
  v6 = *(v1 + 56);
  v8 = *(v1 + 64);
  *&v55 = *(v1 + 16);
  *(&v55 + 1) = v3;
  *&v56 = v4;
  *(&v56 + 1) = v5;
  *&v57 = v7;
  *(&v57 + 1) = v6;
  LOBYTE(v58) = v8;
  sub_1D62B753C(v55, v3, v4, v5, v7, v6, v8);
  sub_1D62865A0(v63);
  result = sub_1D62B4A44(v55, v3, v4, v5, v7, v6, v8);
  if (!v34)
  {
    v10 = *(v1 + 88);
    v11 = v63;
    v12 = v1;
    if (v10 != 255 && (v10 & 1) != 0)
    {
      v13 = *(v1 + 72);
      v14 = *(v1 + 80);
      sub_1D6189668(v13, v14, *(v1 + 88));
      sub_1D6189668(v13, v14, v10);
      v15 = sub_1D5E26E28(&unk_1F5112988);
      v16 = swift_allocObject();
      *(v16 + 16) = v13;
      *(v16 + 24) = v14;
      *(v16 + 32) = v15;
      *(v16 + 40) = 0;
      sub_1D6C4D24C(v16 | 0x3000000000000000);
      sub_1D60107F0(v13, v14, v10);
    }

    v17 = *(v2 + 112);
    if (v17 != 255 && (v17 & 1) != 0)
    {
      v18 = *(v12 + 96);
      v19 = *(v12 + 104);
      sub_1D6189668(v18, v19, *(v12 + 112));
      sub_1D6189668(v18, v19, v17);
      v20 = sub_1D5E26E28(&unk_1F51129B0);
      v21 = swift_allocObject();
      *(v21 + 16) = v18;
      *(v21 + 24) = v19;
      *(v21 + 32) = v20;
      *(v21 + 40) = 0;
      sub_1D6C4D24C(v21 | 0x3000000000000000);
      sub_1D60107F0(v18, v19, v17);
    }

    v22 = *(v12 + 120);
    if (v22)
    {
      sub_1D6273544(v11, v22);
    }

    v23 = *(v12 + 128);
    if (v23)
    {
      sub_1D6273544(v11, v23);
    }

    v24 = *(v12 + 136);
    if (v24)
    {
      sub_1D6273544(v11, v24);
    }

    v25 = *(v12 + 144);
    if (v25)
    {
      sub_1D6273544(v11, v25);
    }

    v26 = *(v12 + 232);
    v27 = *(v12 + 264);
    v53 = *(v12 + 248);
    v54[0] = v27;
    *(v54 + 9) = *(v12 + 273);
    v28 = *(v12 + 168);
    v29 = *(v12 + 200);
    v49 = *(v12 + 184);
    v50 = v29;
    v51 = *(v12 + 216);
    v52 = v26;
    v47 = *(v12 + 152);
    v48 = v28;
    v30 = *(v12 + 232);
    v31 = *(v12 + 264);
    v61 = *(v12 + 248);
    v62[0] = v31;
    *(v62 + 9) = *(v12 + 273);
    v32 = *(v12 + 168);
    v33 = *(v12 + 200);
    v57 = *(v12 + 184);
    v58 = v33;
    v59 = *(v12 + 216);
    v60 = v30;
    v55 = *(v12 + 152);
    v56 = v32;
    result = sub_1D60486AC(&v55);
    if (result != 1)
    {
      v43 = v61;
      v44[0] = v62[0];
      *(v44 + 9) = *(v62 + 9);
      v39 = v57;
      v40 = v58;
      v41 = v59;
      v42 = v60;
      v37 = v55;
      v38 = v56;
      v45[6] = v53;
      v46[0] = v54[0];
      *(v46 + 9) = *(v54 + 9);
      v45[2] = v49;
      v45[3] = v50;
      v45[4] = v51;
      v45[5] = v52;
      v45[0] = v47;
      v45[1] = v48;
      sub_1D62B4994(v45, v35);
      sub_1D62867D4(v11);
      v35[6] = v43;
      v36[0] = v44[0];
      *(v36 + 9) = *(v44 + 9);
      v35[2] = v39;
      v35[3] = v40;
      v35[4] = v41;
      v35[5] = v42;
      v35[0] = v37;
      v35[1] = v38;
      return sub_1D62B49F0(v35);
    }
  }

  return result;
}

uint64_t sub_1D628773C(uint64_t *a1)
{
  swift_beginAccess();
  v4 = *(v1 + 72);
  if (!v4 || (, sub_1D62707E8(a1, v4), result = , !v2))
  {
    swift_beginAccess();
    v6 = *(v1 + 88);

    sub_1D6272D88(a1, v6);
  }

  return result;
}

void sub_1D6287818(uint64_t *a1)
{
  v4 = *(v1 + 40);

  sub_1D6EE4610(a1);

  if (!v2)
  {
    if (v4)
    {
      sub_1D62707E8(a1, v4);
    }
  }
}

uint64_t sub_1D6287888(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1 && (a3 & 0xF000000000000007) != 0xF000000000000007)
  {
    v5 = result;

    sub_1D6E5C118(v5);
  }

  return result;
}

uint64_t sub_1D62878FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v8 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + *(v7 + 36), v4, v5);
  sub_1D5B49474(0, &qword_1EC8854D0);
  if (swift_dynamicCast())
  {
    v9 = *(&v13 + 1);
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    (*(v10 + 8))(a1, v9, v10);
    return __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    return sub_1D5BFB774(&v12, &qword_1EC8854D8, &qword_1EC8854D0);
  }
}

unint64_t sub_1D6287A8C(unint64_t result)
{
  v3 = result;
  v4 = *v1;
  v5 = *v1 >> 60;
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {
        swift_retain_n();

        sub_1D6287A8C(v3);
        if (v2)
        {
        }

        sub_1D62938C4(v3);
      }

      else
      {
        if (v5 != 8)
        {
          return result;
        }

        v9 = *((v4 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        swift_retain_n();

        sub_1D6287A8C(v3);
        if (v2)
        {
        }

        sub_1D6285444(v3, v9, sub_1D6287A8C);
      }
    }

    v10 = v4 & 0xFFFFFFFFFFFFFFFLL;
    if (v5 != 5)
    {
      v12 = *(v10 + 16);
      v13 = *(v10 + 24);

      sub_1D628D658(v3, v12, v13, sub_1D6287A8C);
    }

    v11 = *(v10 + 16);

    sub_1D62846E0(v3, v11, sub_1D6287A8C);
    if (v2)
    {
    }

    else
    {

      sub_1D6287A8C(v3);
    }
  }

  else
  {
    if (v5 > 1)
    {
      v6 = v4 & 0xFFFFFFFFFFFFFFFLL;
      if (v5 == 2)
      {
        return sub_1D619F180(result);
      }

      if (v5 != 3)
      {
        return sub_1D62881C8(result);
      }

      v7 = *(v6 + 16);
      v8 = *(v6 + 24);

      sub_1D626CBD0(v3, v7, v8);
    }

    if (v5)
    {
      return sub_1D6287E20(result);
    }

    else
    {
      return sub_1D6B7947C(result);
    }
  }
}

unint64_t sub_1D6287E20(unint64_t a1)
{
  v3 = v2;
  v4 = a1;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 24);
  v25 = *(v1 + 32);
  v26 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v23 = *(v1 + 80);
  v24 = *(v1 + 72);
  v29 = *(v1 + 88);
  v27 = *(v1 + 96);
  if (v7 == 1)
  {
    v11 = *(v1 + 16);
    v28[0] = v5;
    v28[1] = v6;
    v28[2] = v11;
    v30 = 5;
    sub_1D5FB995C(v5, v6, v11, 1);
    result = sub_1D703E0C8(v28, &v30);
    if (v2)
    {
      return result;
    }

    v13 = result;
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    *(v14 + 24) = v6;
    *(v14 + 32) = v13;
    *(v14 + 40) = 0;
    v15 = 0x3000000000000000;
    v4 = a1;
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    *(v14 + 24) = v6;
    v15 = 0x8000000000000000;
  }

  sub_1D6C4D24C(v15 | v14);

  v16 = v8 >> 8;
  if (v8 >> 8 > 0xFE)
  {
    v17 = v9;
    goto LABEL_23;
  }

  v17 = v9;
  if (v8 >> 8 <= 1)
  {
    if (v16)
    {
      if (!v26)
      {
        v19 = v25;
        v18 = 0;
        goto LABEL_22;
      }

      sub_1D5F586A4(v25, v26, v8, 1);
      sub_1D6273544(v4, v26);
      if (v3)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v28[0] = v25;
      sub_1D5F586A4(v25, v26, v8, 0);

      sub_1D6290ACC(v4);
      if (v3)
      {

LABEL_17:
        v19 = v25;
        v18 = v26;
        return sub_1D5FBACE0(v19, v18, v8);
      }
    }

    v19 = v25;
    v18 = v26;
    goto LABEL_22;
  }

  v18 = v26;
  if (v16 == 2)
  {
    sub_1D5F586A4(v25, v26, v8, 2);
    sub_1D6273544(v4, v25);
    v19 = v25;
    v18 = v26;
    if (!v3)
    {
      goto LABEL_22;
    }

    return sub_1D5FBACE0(v19, v18, v8);
  }

  v19 = v25;
LABEL_22:
  result = sub_1D5FBACE0(v19, v18, v8);
LABEL_23:
  if ((~v10 & 0xF000000000000007) != 0)
  {
    v28[0] = v10;
    sub_1D5FB99B0(v10);

    sub_1D62895DC(v4);

    if (v3)
    {
      return sub_1D5FBACF4(v10);
    }

    v28[0] = v17;

    sub_1D62895DC(v4);

    result = sub_1D5FBACF4(v10);
  }

  if (v29)
  {
    sub_1D5C75A4C(v24, v23, 1);
    sub_1D5C75A4C(v24, v23, 1);
    v20 = sub_1D5E26E28(&unk_1F50F4708);
    v21 = swift_allocObject();
    *(v21 + 16) = v24;
    *(v21 + 24) = v23;
    *(v21 + 32) = v20;
    *(v21 + 40) = 0;
    sub_1D6C4D24C(v21 | 0x3000000000000000);
    sub_1D5D2F2C8(v24, v23, 1);
  }

  if ((~v27 & 0xF000000000000007) != 0)
  {
    v28[0] = v27;
    sub_1D5F33D5C(v27);
    sub_1D62A17B0(v4);
    return sub_1D5F33D8C(v27);
  }

  return result;
}

uint64_t sub_1D62881C8(uint64_t a1)
{
  v19 = v1[4];
  v20 = v1[3];
  v18 = v1[5];
  v21 = v1[7];
  v4 = v1[9];
  v16 = v1[8];
  v17 = v1[6];
  v6 = v1[10];
  v5 = v1[11];
  v8 = v1[12];
  v7 = v1[13];
  v9 = v1[14];

  sub_1D6298B34(a1);
  if (v2)
  {
  }

  v15 = v7;
  v14 = v9;

  sub_1D6298B34(a1);

  sub_1D6298B34(a1);

  if ((~v20 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
    v12 = v4;
    v11 = v5;
    v13 = v21;
  }

  else
  {
    v12 = v4;
    v11 = v5;
    v13 = v21;
  }

  if ((~v19 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v18 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v17 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v13 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v16 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v12 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v6 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v11 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v8 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v15 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  if ((~v14 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
  }

  return result;
}

uint64_t sub_1D628861C(uint64_t a1)
{
  v4 = *v1;
  v5 = type metadata accessor for FormatSwitchValue.CaseValue();
  result = sub_1D69F81A0(a1, v4, v5, &off_1F51420E8);
  if (!v2)
  {
    v7 = type metadata accessor for FormatSwitchValue.DefaultValue();
    return sub_1D6285A8C(a1, v7);
  }

  return result;
}

unint64_t sub_1D62886C0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = result;
  if (a2 >= 2)
  {
    v5 = a3;
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    sub_1D5D0A57C(v6);
    sub_1D5D0A57C(v7);
    sub_1D62886C0(v4, v6, v7);
    sub_1D5D0A58C(v6);
    result = sub_1D5D0A58C(v7);
    if (v3)
    {
      return result;
    }

    a3 = v5;
  }

  if (a3 >= 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);
    sub_1D62886C0(v4, v8, v9);
    sub_1D5D0A58C(v8);
    return sub_1D5D0A58C(v9);
  }

  return result;
}

unint64_t sub_1D6288794(unint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = result;
  if (a2 >= 3)
  {
    v5 = a3;
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    sub_1D5D0AFBC(v6);
    sub_1D5D0AFBC(v7);
    sub_1D6288794(v4, v6, v7);
    sub_1D5D0AFCC(v6);
    result = sub_1D5D0AFCC(v7);
    if (v3)
    {
      return result;
    }

    a3 = v5;
  }

  if (a3 >= 3)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    sub_1D5D0AFBC(v8);
    sub_1D5D0AFBC(v9);
    sub_1D6288794(v4, v8, v9);
    sub_1D5D0AFCC(v8);
    return sub_1D5D0AFCC(v9);
  }

  return result;
}

uint64_t sub_1D6288868(uint64_t a1)
{

  sub_1D629CE04(a1);

  if (!v1)
  {

    sub_1D629CE04(a1);
  }

  return result;
}

uint64_t sub_1D62888F4(uint64_t a1)
{

  sub_1D629836C(a1);

  if (!v1)
  {

    sub_1D629836C(a1);
  }

  return result;
}

uint64_t sub_1D6288980(uint64_t a1)
{

  sub_1D629DD00(a1);

  if (!v1)
  {

    sub_1D629DD00(a1);
  }

  return result;
}

uint64_t sub_1D6288A0C(uint64_t a1, uint64_t a2)
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

  (v13)(v9, v4 + *(v28 + 36), v6);
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

unint64_t sub_1D6288CD4(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v5 = a3;
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    sub_1D5D0A57C(v6);

    sub_1D6288CD4(a1, v6, v7);
    sub_1D5D0A58C(v6);

    if (v3)
    {
      return result;
    }

    a3 = v5;
  }

  return sub_1D6273C90(a1, a3);
}

unint64_t sub_1D6288D68(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 62 == 1)
  {
    v5 = a3;
    v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v6);

    sub_1D6288D68(a1, v6, v7);
    sub_1D5EB15C4(v6);

    if (v3)
    {
      return result;
    }

    a3 = v5;
  }

  return sub_1D62740D0(a1, a3);
}

uint64_t sub_1D6288E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5D0ACAC(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
  sub_1D5B49474(0, &qword_1EC8854D0);

  if (swift_dynamicCast())
  {
    v6 = *(&v10 + 1);
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
    (*(v7 + 8))(a1, v6, v7);
    result = __swift_destroy_boxed_opaque_existential_1(&v9);
    if (v3)
    {
      return result;
    }
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_1D5BFB774(&v9, &qword_1EC8854D8, &qword_1EC8854D0);
  }

  return sub_1D62768C8(a1, a3);
}

uint64_t sub_1D6288F48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    return sub_1D6273A6C(a1, a3, a5);
  }

  v8 = a3;
  v9 = a5;
  v10 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v11 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v12 = a1;

  a4(v12, v10, v11);

  if (!v5)
  {
    a5 = v9;
    a3 = v8;
    a1 = v12;
    return sub_1D6273A6C(a1, a3, a5);
  }

  return result;
}

uint64_t sub_1D6288FFC(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v9 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v6, v7);
  sub_1D5B49474(0, &qword_1EC8854D0);
  if (swift_dynamicCast())
  {
    v10 = *(&v16 + 1);
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    (*(v11 + 8))(a1, v10, v11);
    result = __swift_destroy_boxed_opaque_existential_1(&v15);
    if (v3)
    {
      return result;
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_1D5BFB774(&v15, &qword_1EC8854D8, &qword_1EC8854D0);
  }

  v13 = sub_1D61834A8(a2);
  v14 = type metadata accessor for FormatSelectorValueSelector();

  sub_1D69F81A0(a1, v13, v14, &off_1F51404E8);
}

uint64_t sub_1D62891F0(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        v19 = v3 & 0x1FFFFFFFFFFFFFFFLL;
        v20 = *(v19 + 128);
        v39 = *(v19 + 112);
        v40 = v20;
        v41 = *(v19 + 144);
        LOBYTE(v42[0]) = *(v19 + 160);
        v21 = *(v19 + 64);
        v35 = *(v19 + 48);
        v36 = v21;
        v22 = *(v19 + 96);
        v37 = *(v19 + 80);
        v38 = v22;
        v23 = *(v19 + 32);
        v33 = *(v19 + 16);
        v34 = v23;
        return sub_1D6289EC0(a1);
      }

      else
      {
        memmove(&v33, ((v3 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0xA2uLL);
        result = sub_1D62B4E2C(&v33);
        if (result > 1)
        {
          if (result == 2)
          {
            v32 = sub_1D5D04BC4(&v33);
            v43[7] = *(v32 + 112);
            v43[8] = *(v32 + 128);
            v43[9] = *(v32 + 144);
            v44 = *(v32 + 160);
            v43[3] = *(v32 + 48);
            v43[4] = *(v32 + 64);
            v43[5] = *(v32 + 80);
            v43[6] = *(v32 + 96);
            v43[0] = *v32;
            v43[1] = *(v32 + 16);
            v43[2] = *(v32 + 32);
            return sub_1D62914C8(a1);
          }
        }

        else
        {
          return sub_1D5D04BC4(&v33);
        }
      }
    }

    else
    {
      v6 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      if (v4 == 4)
      {
        v7 = *(v6 + 144);
        v40 = *(v6 + 128);
        v41 = v7;
        v42[0] = *(v6 + 160);
        *(v42 + 9) = *(v6 + 169);
        v8 = *(v6 + 80);
        v36 = *(v6 + 64);
        v37 = v8;
        v9 = *(v6 + 112);
        v38 = *(v6 + 96);
        v39 = v9;
        v10 = *(v6 + 32);
        v33 = *(v6 + 16);
        v34 = v10;
        v35 = *(v6 + 48);
        return sub_1D6289BE4(a1);
      }

      else
      {
        v29 = *(v6 + 24);
        *&v33 = *(v6 + 16);

        swift_retain_n();
        sub_1D6287A8C(a1);
        if (v2)
        {
        }

        else
        {

          if (v29)
          {
            sub_1D62938C4(a1);
          }
        }
      }
    }
  }

  else if (v4 > 1)
  {
    v11 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
    if (v4 == 2)
    {
      v12 = v11[6];
      v13 = v11[7];
      v14 = v11[8];
      v37 = v11[5];
      v38 = v12;
      v39 = v13;
      v40 = v14;
      v15 = v11[2];
      v33 = v11[1];
      v34 = v15;
      v16 = v11[4];
      v35 = v11[3];
      v36 = v16;
      v17 = v14;
      sub_1D60865E4(&v33, v43);
      sub_1D627683C(a1, v17);
      return sub_1D6086640(&v33);
    }

    else
    {
      *&v33 = *(v11 + 2);
      return sub_1D6289B90(a1);
    }
  }

  else if (v4)
  {
    v24 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
    v25 = v24[2];
    v27 = v24[8];
    v26 = v24[9];

    sub_1D5D615EC(v27);
    sub_1D627683C(a1, v25);
    if (v2)
    {

      return sub_1D5CDE22C(v27);
    }

    else if (v27)
    {

      sub_1D6273544(a1, v27);
      sub_1D6273544(a1, v26);
      sub_1D5CDE22C(v27);

      return sub_1D5CDE22C(v27);
    }

    else
    {

      return sub_1D5CDE22C(0);
    }
  }

  else
  {
    *&v33 = *(v3 + 16);
    return sub_1D62895DC(a1);
  }

  return result;
}

uint64_t sub_1D62895DC(uint64_t result)
{
  v3 = result;
  v4 = *v1;
  v5 = *v1 >> 60;
  if (v5 <= 4)
  {
    if (v5 < 3)
    {
      return result;
    }

    v13 = v4 & 0xFFFFFFFFFFFFFFFLL;
    if (v5 != 3)
    {
      v31 = *(v13 + 24);
      v35 = *(v13 + 16);
      swift_retain_n();

      sub_1D62895DC(v3);
      if (!v2)
      {

        sub_1D6273600(v3, v31);
        goto LABEL_31;
      }

      goto LABEL_25;
    }

    v14 = *(v13 + 16);
    v15 = *(v13 + 24);

    sub_1D628D658(v3, v14, v15, sub_1D62895DC);
  }

  if (v5 > 8)
  {
    v16 = v4 & 0xFFFFFFFFFFFFFFFLL;
    if (v5 != 9)
    {
      if (v5 != 10)
      {
        v28 = *(v16 + 24);
        v29 = *(v16 + 32);
        v35 = *(v16 + 16);

        swift_retain_n();

        sub_1D62895DC(v3);
        if (!v2)
        {

          sub_1D6285444(v3, v28, sub_1D62895DC);
          v35 = v29;

          sub_1D62895DC(v3);

          goto LABEL_31;
        }

LABEL_25:
      }

      v17 = *(v16 + 16);
      v18 = *(v16 + 24);

      sub_1D628D6F0(v3, v17, v18);
    }

    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    v21 = *(v16 + 32);
    v22 = *(v16 + 40);
    v23 = *(v16 + 48);
    if (v22 > 3)
    {
      if (*(v16 + 40) > 5u)
      {
        v24 = *(v16 + 16);
        v25 = *(v16 + 24);
        v26 = *(v16 + 32);
        if (v22 == 6)
        {
          v27 = 6;
        }

        else
        {
          v27 = 7;
        }
      }

      else
      {
        v24 = *(v16 + 16);
        v25 = *(v16 + 24);
        v26 = *(v16 + 32);
        if (v22 == 4)
        {
          v27 = 4;
        }

        else
        {
          v27 = 5;
        }
      }
    }

    else if (*(v16 + 40) > 1u)
    {
      if (v22 != 2)
      {
        v35 = *(v16 + 16);
        v36 = v19;
        v37 = v21;
        v38 = 7;
        sub_1D5F58038(v20, v19, v21, 3);

        sub_1D5F58038(v20, v19, v21, 3);
        v32 = sub_1D703E0C8(&v35, &v38);
        if (v2)
        {
          sub_1D5F57FEC(v20, v19, v21, 3);
        }

        v33 = v32;
        v34 = swift_allocObject();
        *(v34 + 16) = v20;
        *(v34 + 24) = v19;
        *(v34 + 32) = v33;
        *(v34 + 40) = 0;

        sub_1D6C4D24C(v34 | 0x3000000000000000);

        goto LABEL_42;
      }

      v24 = *(v16 + 16);
      v25 = *(v16 + 24);
      v26 = *(v16 + 32);
      v27 = 2;
    }

    else
    {
      v24 = *(v16 + 16);
      v25 = *(v16 + 24);
      v26 = *(v16 + 32);
      v27 = v22 != 0;
    }

    sub_1D5F58038(v24, v25, v26, v27);

LABEL_42:
    v35 = v23;

    sub_1D62895DC(v3);
    sub_1D5F57FEC(v20, v19, v21, v22);
  }

  if ((v5 - 5) < 2)
  {
    return result;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFLL;
  if (v5 != 7)
  {
    v30 = *(v6 + 24);
    v35 = *(v6 + 16);
    swift_retain_n();

    sub_1D62895DC(v3);
    if (!v2)
    {

      sub_1D6285444(v3, v30, sub_1D62895DC);
LABEL_31:
    }

    goto LABEL_25;
  }

  if (*(v6 + 40) == 3)
  {
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    v9 = *(v6 + 32);
    v35 = v8;
    v36 = v7;
    v37 = v9;
    v38 = 7;
    sub_1D5F58038(v8, v7, v9, 3);
    sub_1D5F58038(v8, v7, v9, 3);
    v10 = sub_1D703E0C8(&v35, &v38);
    if (!v2)
    {
      v11 = v10;
      v12 = swift_allocObject();
      *(v12 + 16) = v8;
      *(v12 + 24) = v7;
      *(v12 + 32) = v11;
      *(v12 + 40) = 0;

      sub_1D6C4D24C(v12 | 0x3000000000000000);
    }

    return sub_1D5F57FEC(v8, v7, v9, 3);
  }

  return result;
}

uint64_t sub_1D6289BE4(uint64_t a1)
{
  v5 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 80);
  v17[2] = *(v1 + 64);
  v18 = v8;
  v19 = *(v1 + 96);
  v9 = *(v1 + 48);
  v17[0] = *(v1 + 32);
  v17[1] = v9;
  v10 = *(v1 + 104);
  v11 = *(v1 + 120);
  v12 = *(v1 + 136);
  v13 = *(v1 + 152);
  v22 = *(v1 + 168);
  v20[2] = v12;
  v21 = v13;
  v20[0] = v10;
  v20[1] = v11;
  swift_bridgeObjectRetain_n();

  sub_1D6273544(a1, v5);
  if (v2)
  {

    return swift_bridgeObjectRelease_n();
  }

  else
  {

    sub_1D6273544(a1, v4);

    swift_bridgeObjectRelease_n();
    sub_1D6273544(a1, v6);
    sub_1D6273544(a1, v7);
    if (v19)
    {

      sub_1D5D615EC(v18);
      sub_1D627683C(a1, *&v17[0]);
      if (v18)
      {

        sub_1D6273544(a1, v18);
        sub_1D6273544(a1, *(&v18 + 1));
        sub_1D5CDE22C(v18);
      }

      sub_1D60FBD38(v17);
    }

    else
    {
      v23 = *&v17[0];
      sub_1D62895DC(a1);
    }

    v15 = *&v20[0];
    if (v22)
    {
      v16 = v21;

      sub_1D5D615EC(v16);
      sub_1D627683C(a1, v15);
      if (v16)
      {

        sub_1D6273544(a1, v16);
        sub_1D6273544(a1, *(&v16 + 1));
        sub_1D5CDE22C(v16);
      }

      return sub_1D60FBD38(v20);
    }

    else
    {
      v23 = *&v20[0];
      return sub_1D62895DC(a1);
    }
  }
}

uint64_t sub_1D6289EC0(uint64_t a1)
{
  v4 = (v1 + 1);
  v34 = *v1;

  sub_1D629836C(a1);
  if (v2)
  {
  }

  v6 = *(v1 + 15);
  v32 = *(v1 + 13);
  v33[0] = v6;
  *(v33 + 9) = *(v1 + 129);
  v7 = *(v1 + 7);
  v28 = *(v1 + 5);
  v29 = v7;
  v8 = *(v1 + 11);
  v30 = *(v1 + 9);
  v31 = v8;
  v9 = *(v1 + 3);
  v26 = *v4;
  v27 = v9;
  result = sub_1D60486AC(&v26);
  if (result != 1)
  {
    v22 = v32;
    v23[0] = v33[0];
    *(v23 + 9) = *(v33 + 9);
    v18 = v28;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v16 = v26;
    v17 = v27;
    v10 = *(v1 + 15);
    v24[6] = *(v1 + 13);
    v25[0] = v10;
    *(v25 + 9) = *(v1 + 129);
    v11 = *(v1 + 7);
    v24[2] = *(v1 + 5);
    v24[3] = v11;
    v12 = *(v1 + 11);
    v24[4] = *(v1 + 9);
    v24[5] = v12;
    v13 = *(v1 + 3);
    v24[0] = *v4;
    v24[1] = v13;
    sub_1D62B4994(v24, v14);
    sub_1D62867D4(a1);
    v14[6] = v22;
    v15[0] = v23[0];
    *(v15 + 9) = *(v23 + 9);
    v14[2] = v18;
    v14[3] = v19;
    v14[4] = v20;
    v14[5] = v21;
    v14[0] = v16;
    v14[1] = v17;
    return sub_1D62B49F0(v14);
  }

  return result;
}

uint64_t sub_1D628A050(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = v1[4];

  sub_1D6273544(a1, v4);
  if (v2)
  {
  }

  else
  {
    sub_1D6273544(a1, v5);

    sub_1D6273544(a1, v7);
    sub_1D6273544(a1, v6);
    return sub_1D6273544(a1, v8);
  }
}

uint64_t sub_1D628A124(uint64_t result)
{
  v3 = result;
  v5 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 48);
  if (v9 > 2)
  {
    if (v9 == 3)
    {

      sub_1D6273544(v3, v5);
      if (!v2)
      {
        sub_1D6273544(v3, v4);

        sub_1D6273544(v3, v6);
        sub_1D6273544(v3, v7);
      }
    }

    else
    {
      if (v9 != 4)
      {
        return result;
      }

      sub_1D6273544(v3, v5);
      if (!v2)
      {
        sub_1D6273544(v3, v4);

        sub_1D6273544(v3, v6);
        sub_1D6273544(v3, v7);
        return sub_1D6273544(v3, v8);
      }
    }
  }

  else if (*(v1 + 48) && v9 != 1)
  {
    return sub_1D628A310(result);
  }

  else
  {
    result = sub_1D6273544(result, *v1);
    if (!v2)
    {
      return sub_1D6273544(v3, v4);
    }
  }

  return result;
}

uint64_t sub_1D628A310(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];

  sub_1D6273544(a1, v4);
  if (!v2)
  {
    sub_1D6273544(a1, v5);

    sub_1D6273544(a1, v6);
    sub_1D6273544(a1, v7);

    sub_1D6273544(a1, v8);
    sub_1D6273544(a1, v9);
  }
}

uint64_t sub_1D628A490(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];

  sub_1D6273544(a1, v4);
  if (!v2)
  {
    sub_1D6273544(a1, v5);

    sub_1D6273544(a1, v6);
    sub_1D6273544(a1, v7);
  }
}

uint64_t sub_1D628A57C(uint64_t result)
{
  v3 = result;
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = *v1 >> 62;
  if ((v7 - 2) >= 2)
  {
    if (v7)
    {
      v10 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v11 = *(v10 + 16);
      v8 = *(v10 + 24);

      sub_1D5F33D5C(v8);
      sub_1D6273544(v3, v11);
      if (v2)
      {
LABEL_10:

        return sub_1D5F33D8C(v8);
      }

      v21 = v8;
      sub_1D5F33D5C(v8);
      sub_1D628A8D0(v3);
      sub_1D5F33D8C(v8);

      result = sub_1D5F33D8C(v8);
    }

    else if (!*(v4 + 40))
    {
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      v14 = *(v4 + 32);
      v21 = v13;
      v22 = v12;
      v23 = v14;
      v24 = 1;
      sub_1D5D27950(v13, v12, v14, 0);
      sub_1D5D27950(v13, v12, v14, 0);
      v15 = sub_1D703E0C8(&v21, &v24);
      if (v2)
      {
        return sub_1D5D28C84(v13, v12, v14, 0);
      }

      v17 = v15;
      v18 = swift_allocObject();
      *(v18 + 16) = v13;
      *(v18 + 24) = v12;
      *(v18 + 32) = v17;
      *(v18 + 40) = 0;

      sub_1D6C4D24C(v18 | 0x3000000000000000);
      sub_1D5D28C84(v13, v12, v14, 0);
    }
  }

  if ((v5 & 0xFE) != 0xC && (v6 >> 62) - 2 >= 2)
  {
    if (v6 >> 62 == 1)
    {
      v9 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D5F33D5C(v8);
      sub_1D6273544(v3, v9);
      if (!v2)
      {
        v21 = v8;
        sub_1D5F33D5C(v8);
        sub_1D628A8D0(v3);
        sub_1D5F33D8C(v8);

        return sub_1D5F33D8C(v8);
      }

      goto LABEL_10;
    }

    if (!*(v6 + 40))
    {
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      v14 = *(v6 + 32);
      v21 = v13;
      v22 = v12;
      v23 = v14;
      v24 = 1;
      sub_1D5D27950(v13, v12, v14, 0);

      v16 = sub_1D703E0C8(&v21, &v24);
      if (v2)
      {
        return sub_1D5D28C84(v13, v12, v14, 0);
      }

      v19 = v16;
      v20 = swift_allocObject();
      *(v20 + 16) = v13;
      *(v20 + 24) = v12;
      *(v20 + 32) = v19;
      *(v20 + 40) = 0;

      sub_1D6C4D24C(v20 | 0x3000000000000000);
      sub_1D5D28C84(v13, v12, v14, 0);
    }
  }

  return result;
}

unint64_t sub_1D628A8D0(unint64_t result)
{
  v3 = *v1;
  v4 = *v1 >> 62;
  if ((v4 - 2) >= 2)
  {
    v5 = result;
    if (v4)
    {
      v10 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      v12 = *(v10 + 16);
      v11 = *(v10 + 24);

      sub_1D5F33D5C(v11);
      sub_1D6273544(v5, v12);
      if (!v2)
      {
        v15[0] = v11;
        sub_1D5F33D5C(v11);
        sub_1D628A8D0(v5);
        sub_1D5F33D8C(v11);
      }

      return sub_1D5F33D8C(v11);
    }

    else if (!*(v3 + 40))
    {
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      v8 = *(v3 + 32);
      v15[0] = v7;
      v15[1] = v6;
      v15[2] = v8;
      v16 = 1;
      sub_1D5D27950(v7, v6, v8, 0);
      sub_1D5D27950(v7, v6, v8, 0);
      v9 = sub_1D703E0C8(v15, &v16);
      if (v2)
      {
        return sub_1D5D28C84(v7, v6, v8, 0);
      }

      else
      {
        v13 = v9;
        v14 = swift_allocObject();
        *(v14 + 16) = v7;
        *(v14 + 24) = v6;
        *(v14 + 32) = v13;
        *(v14 + 40) = 0;

        sub_1D6C4D24C(v14 | 0x3000000000000000);
        sub_1D5D28C84(v7, v6, v8, 0);
      }
    }
  }

  return result;
}

unint64_t sub_1D628AAA0(unint64_t result)
{
  if ((*v1 & 0xFELL) != 0xC)
  {
    v3 = v1[1];
    v2 = result;
    sub_1D5F33D5C(v3);
    sub_1D628A8D0(v2);
    return sub_1D5F33D8C(v3);
  }

  return result;
}

unint64_t sub_1D628AB14(unint64_t a1)
{
  v4 = *(v1 + 8);
  sub_1D5F33D5C(v4);
  sub_1D628A8D0(a1);
  return sub_1D5F33D8C(v4);
}

uint64_t sub_1D628AB78(uint64_t result)
{
  v3 = v1[1];
  v17 = *v1;
  v18 = v3;
  *&v22[11] = *(v1 + 91);
  v4 = v1[3];
  v19 = v1[2];
  v20 = v4;
  v5 = v1[5];
  v21 = v1[4];
  *v22 = v5;
  v6 = v17;
  v7 = (v22[26] >> 1) & 8 | (*&v22[24] >> 13);
  if (v7 > 4)
  {
    if (v7 > 6)
    {
      if (v7 == 7 && (BYTE8(v17) & 0xFE) != 0xCLL)
      {
        *&v10 = v18;
        sub_1D62B50D4(*(&v17 + 1));
        sub_1D6012F58();
      }
    }

    else if (v7 == 5)
    {
      if (!BYTE8(v18))
      {
        v15 = v17;
        v16 = v18;
        v14 = 6;
        sub_1D62B48E4(&v17, &v10);
        result = sub_1D703E0C8(&v15, &v14);
        if (!v2)
        {
          v8 = result;
          v9 = swift_allocObject();
          *(v9 + 16) = v6;
          *(v9 + 32) = v8;
          *(v9 + 40) = 0;

          sub_1D6C4D24C(v9 | 0x3000000000000000);
        }
      }
    }

    else
    {
      v10 = v17;
      *&v11 = v18;
      return sub_1D628A57C(result);
    }
  }

  else if ((v7 - 2) >= 3)
  {
    if (v7)
    {
      return sub_1D628B13C(result);
    }

    else
    {
      v10 = v17;
      v11 = v18;
      v12 = v19;
      v13 = WORD4(v19) & 0x1FF;
      return sub_1D628AD9C(result);
    }
  }

  return result;
}

uint64_t sub_1D628AD9C(uint64_t result)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = (v8 >> 1) & 0xF;
  if (v9 <= 3)
  {
    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v10 = v8 >> 5;
      if (v8 >> 5 > 3)
      {
        if (v8 >> 5 > 5)
        {
          if (v10 == 6)
          {
            goto LABEL_5;
          }

          return result;
        }
      }

      else
      {
        if (v8 >> 5 > 1)
        {
          if (v10 == 2 || BYTE1(v6) > 2u)
          {
            return result;
          }

          if (BYTE1(v6))
          {
            if (BYTE1(v6) != 1)
            {
              return sub_1D6273544(result, *v1);
            }

            if (v3)
            {
              v17 = *(v1 + 40);
              v18 = result;
              v19 = v7;
              sub_1D62B4D50(v4, v3, v6, v5, v7, v8 & 0xE1, sub_1D5F58484, sub_1D5F586A4, sub_1D5F58484);
              sub_1D6273544(v18, v3);
              return sub_1D62B4C5C(v4, v3, v6, v5, v19, v17);
            }

            return result;
          }

          v22 = *v1;
          v20 = result;
          sub_1D62B4D50(v4, v3, v6, v5, v7, v8 & 0xE1, sub_1D5F58484, sub_1D5F586A4, sub_1D5F58484);
          sub_1D6290ACC(v20);
        }

        if (!v10)
        {
          return result;
        }
      }
    }

    v13 = (v3 >> 59) & 2 | (v3 >> 2) & 1;
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        return result;
      }

      v22 = v3 & 0xEFFFFFFFFFFFFFFBLL;
      v16 = result;

      v14 = v16;
      sub_1D6290ACC(v16);
      v15 = v2;
      if (!v2)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v14 = result;
      if (v13)
      {
        v22 = v3 & 0xEFFFFFFFFFFFFFFBLL;

        sub_1D6290ACC(v14);
        v15 = v2;
        if (!v2)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v22 = *(v1 + 8);

        sub_1D6290ACC(v14);
        v15 = v2;
        if (!v2)
        {
LABEL_19:

          sub_1D6273544(v14, v6);
          if (!v15)
          {

            sub_1D6273544(v14, v5);
          }
        }
      }
    }
  }

  if (((v8 >> 1) & 0xF) < 7)
  {
    return result;
  }

  if (v9 == 7)
  {
    v22 = *v1;
    v23 = v3;
    v24 = v6;
    v21 = 8;
    sub_1D62B4B68(v4, v3, v6, v5, v7, v8);
    result = sub_1D703E0C8(&v22, &v21);
    if (v2)
    {
      return result;
    }

    v11 = result;
    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    *(v12 + 24) = v3;
    *(v12 + 32) = v11;
    *(v12 + 40) = 0;

    sub_1D6C4D24C(v12 | 0x3000000000000000);
  }

  if (v9 == 8)
  {
LABEL_5:
    v22 = *v1;
    v23 = v3;
    v24 = v6;
    v25 = v5;
    v26 = v7;
    v27 = v8 & 1;
    return sub_1D6291E90(result);
  }

  return result;
}

uint64_t sub_1D628B13C(uint64_t result)
{
  v3 = v1[1];
  v33 = *v1;
  v34 = v3;
  v36 = *(v1 + 24);
  v35 = v1[2];
  v4 = *(v1 + 7);
  v5 = *(v1 + 8);
  v6 = *(v1 + 9);
  v7 = *(v1 + 10);
  v8 = *(v1 + 11);
  v9 = *(v1 + 12);
  v10 = *(v1 + 106);
  v11 = *(v1 + 52);
  v12 = ((2 * HIBYTE(v36)) | ((v36 & 8) != 0));
  if (v12 - 5 < 0xA || v12 < 2)
  {
    goto LABEL_2;
  }

  v25 = *(v1 + 10);
  v26 = *(v1 + 9);
  v28 = result;
  v14 = v2;
  v15 = v34;
  v27 = v33;
  if (v12 - 3 < 2)
  {
    v24 = v4;
    v16 = *(&v33 + 1);
    v31 = v33;
    v32 = v34;
    v37 = 5;
    sub_1D5FD78CC(&v33, &v29);
    sub_1D5FD78CC(&v33, &v29);

    v17 = sub_1D703E0C8(&v31, &v37);

    v14 = v2;
    if (v2)
    {

      return sub_1D5FD7B18(&v33);
    }

    v22 = swift_allocObject();
    *(v22 + 16) = v27;
    *(v22 + 24) = v16;
    *(v22 + 32) = v17;
    *(v22 + 40) = 0;
    sub_1D6C4D24C(v22 | 0x3000000000000000);

    v21 = v36;
    v4 = v24;
    switch((2 * HIBYTE(v36)) | ((v36 & 8) != 0))
    {
      case 1:
      case 5:
      case 6:
      case 7:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
        break;
      case 2:
        v15 = v34;
        v27 = v33;
        goto LABEL_17;
      default:
        sub_1D5FD7B18(&v33);
        break;
    }

    v2 = 0;
LABEL_22:
    result = v28;
    goto LABEL_23;
  }

  v21 = v36 & 0xF7;
  sub_1D5E1E0D4(v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36 & 0xF7, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
LABEL_17:
  if (v21 >> 4 == 3)
  {
    v2 = v14;
    v29 = v27;
    LOWORD(v30) = v15;
    sub_1D62921EC(v28);
    result = sub_1D5FD7B18(&v33);
    if (v14)
    {
      return result;
    }

    goto LABEL_22;
  }

  sub_1D5FD7B18(&v33);
  result = v28;
  v2 = v14;
LABEL_23:
  v7 = v25;
  v6 = v26;
LABEL_2:
  v13 = v11 | (v10 << 16);
  if (((v13 >> 21) & 7) == 5)
  {
    v18 = (v13 >> 7) & 0xFE | (v13 >> 3) & 1;
    if (v18 - 5 >= 0xA && v18 >= 2)
    {
      if (v18 - 3 >= 2)
      {
        if ((v11 & 0xF0) == 0x30)
        {
          *&v29 = v4;
          *(&v29 + 1) = v5;
          LOWORD(v30) = v6;
          return sub_1D62921EC(result);
        }
      }

      else
      {
        *&v29 = v4;
        *(&v29 + 1) = v5;
        v30 = v6;
        LOBYTE(v31) = 5;
        sub_1D5CA8444(v4, v5, v6, v7, v8, v9, v13);

        v20 = sub_1D703E0C8(&v29, &v31);

        if (v2)
        {
        }

        else
        {
          v23 = swift_allocObject();
          *(v23 + 16) = v4;
          *(v23 + 24) = v5;
          *(v23 + 32) = v20;
          *(v23 + 40) = 0;
          sub_1D6C4D24C(v23 | 0x3000000000000000);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D628B51C(uint64_t result)
{
  if (!*(v1 + 24))
  {
    v4 = *(v1 + 8);
    v3 = *(v1 + 16);
    v5 = *v1;
    v8[0] = v5;
    v8[1] = v4;
    v8[2] = v3;
    v9 = 6;
    sub_1D5D27950(v5, v4, v3, 0);
    result = sub_1D703E0C8(v8, &v9);
    if (!v2)
    {
      v6 = result;
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v4;
      *(v7 + 32) = v6;
      *(v7 + 40) = 0;

      sub_1D6C4D24C(v7 | 0x3000000000000000);
    }
  }

  return result;
}

uint64_t sub_1D628B604()
{
  if ((*(v0 + 8) & 0xFELL) != 0xC)
  {
    sub_1D62B50D4(*(v0 + 8));
    sub_1D6012F58();
  }

  return result;
}

uint64_t sub_1D628B674()
{
  if ((*v0 & 0xFELL) != 0xC)
  {

    sub_1D6012F58();
  }

  return result;
}

uint64_t sub_1D628B6DC()
{

  sub_1D6012F58();
}

uint64_t sub_1D628B734(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  sub_1D62B4B68(*v1, v5, v6, v7, v8, v9);
  sub_1D6B7947C(a1);
  return sub_1D62B4C5C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D628B7D0(uint64_t result)
{
  v2 = *(v1 + 50) >> 5;
  if (v2 >= 5 && v2 == 5)
  {
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    v6 = *(v1 + 32);
    v7 = *(v1 + 48) | (*(v1 + 50) << 16);
    *&v11 = *v1;
    *(&v11 + 1) = v4;
    v12 = v5;
    v13 = v6;
    v14 = v7;
    v15[0] = v11;
    v15[1] = v4;
    v16 = v5;
    v17 = v6;
    v18 = v7;
    v19 = BYTE2(v7) & 0x1F;
    v8 = result;
    sub_1D6157520(v15, v9);
    sub_1D5FD697C(v8);
    v9[0] = v11;
    v9[1] = v12;
    v9[2] = v13;
    v10 = v14;
    return sub_1D5FD7B18(v9);
  }

  return result;
}

uint64_t sub_1D628B89C(uint64_t a1)
{
  v3 = v1[1];
  v13[0] = *v1;
  v13[1] = v3;
  v5 = *v1;
  v4 = v1[1];
  v13[2] = v1[2];
  v14 = *(v1 + 24);
  v9 = v5;
  v10 = v4;
  v11 = v1[2];
  v12 = *(v1 + 24);
  sub_1D5FD78CC(v13, v7);
  sub_1D5FD697C(a1);
  v7[0] = v9;
  v7[1] = v10;
  v7[2] = v11;
  v8 = v12;
  return sub_1D5FD7B18(v7);
}

uint64_t sub_1D628B95C(unint64_t a1)
{
  v4 = *v1;
  swift_beginAccess();
  v5 = *(v4 + 40);

  sub_1D626DA28(a1, v5);

  if (!v2)
  {
    swift_beginAccess();
    v7 = *(v4 + 32);

    sub_1D626DB9C(a1, v7);
  }

  return result;
}

uint64_t sub_1D628BA14(uint64_t a1)
{

  sub_1D62895DC(a1);

  if (!v1)
  {

    sub_1D6012F58();
  }

  return result;
}

uint64_t sub_1D628BAB8(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16) && *(v1 + 16) != 1)
  {
    v4 = *(v1 + 8);
    v5 = a1;
    result = sub_1D6273544(a1, v3);
    if (v2)
    {
      return result;
    }

    a1 = v5;
    v3 = v4;
  }

  return sub_1D6273544(a1, v3);
}

unint64_t sub_1D628BB04(uint64_t *a1)
{
  v3 = v1;
  swift_beginAccess();
  v16 = *(v1 + 32);
  sub_1D5C82CD8(v16);
  sub_1D626D654(a1);
  if (v2)
  {
    return sub_1D5C92A8C(v16);
  }

  sub_1D5C92A8C(v16);
  swift_beginAccess();
  v6 = *(v1 + 48);

  sub_1D6274044(a1, v6);

  swift_beginAccess();
  v7 = v3[8];
  if (v7 >> 62 == 1)
  {
    v8 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v3[8]);
    sub_1D5EB1500(v8);

    sub_1D6288D68(a1, v8, v9);
    sub_1D5EB15C4(v8);

    sub_1D5EB15C4(v7);
  }

  sub_1D628BEFC(a1);

  if ((~v3[13] & 0xF000000000000007) != 0)
  {

    sub_1D6E5C118(a1);
  }

  if ((~v3[14] & 0xF000000000000007) != 0)
  {

    sub_1D628BEFC(a1);
  }

  if ((~v3[15] & 0xF000000000000007) != 0)
  {

    sub_1D6E5C118(a1);
  }

  v10 = v3[18];
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

  swift_beginAccess();
  v13 = v3[23];

  sub_1D62828D8(a1, v13);

  if (v3[24])
  {
    v14 = v3[28];

    sub_1D5DEA234(v14);

    sub_1D626D2A0(a1);

    sub_1D5CBF568(v14);
  }

  swift_beginAccess();
  v15 = v3[10];

  sub_1D626DB9C(a1, v15);
}

void sub_1D628BEFC(uint64_t *a1)
{
  v7 = &v101;
  v8 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v92 - v14;
  v16 = *v1;
  v17 = *v1 >> 60;
  if (v17 <= 5)
  {
    if (v17 > 2)
    {
      if (v17 == 3 || v17 != 4)
      {
        return;
      }

      v35 = v16 & 0xFFFFFFFFFFFFFFFLL;
      v36 = *(v35 + 16);
      v37 = *(v35 + 24);

      sub_1D62846E0(a1, v36, sub_1D628BEFC);
      if (!v2)
      {
        *&v101 = v37;

        sub_1D628BEFC(a1);

        return;
      }

      goto LABEL_70;
    }

    if (v17)
    {
      if (v17 == 1)
      {
        v18 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v21 = *(v18 + 32);
        v22 = *(v18 + 40);
        v23 = *(v18 + 64);
        if (*(v18 + 66))
        {
          v24 = 8;
        }

        else
        {
          v24 = 0;
        }

        v25 = v24 & 0xFFFFFFF8 | (v23 >> 11) & 7;
        if (v25 > 3)
        {
          if (((1 << v25) & 0x330) == 0)
          {
            if (v25 == 6)
            {
              *&v101 = *(v18 + 16);
              *(&v101 + 1) = v19;
              *&v102 = v21;
              BYTE8(v102) = v22;
LABEL_12:
              sub_1D628E970(a1);
              return;
            }

            *&v101 = *(v18 + 16);
            *(&v101 + 1) = v19;
            *&v102 = v21;
            *(&v102 + 1) = v22;
            v103 = *(v18 + 48);
            LOWORD(v104) = v23 & 0xC7FF;
            goto LABEL_35;
          }

          return;
        }

        if ((v25 - 1) < 2)
        {
          return;
        }

        if (!v25)
        {
          v54 = (v22 >> 3) & 7;
          if (v54 <= 1)
          {
            v55 = v20 & 0xF000000000000007;
            if (v54)
            {
              v56 = 0;
            }

            else
            {
              v56 = *(v18 + 32) == 1;
            }

LABEL_102:
            if (v56 && v55 != 0xF000000000000007)
            {
              *&v101 = *(v18 + 16);

              sub_1D5CFCFAC(v20);
              sub_1D6E5C118(a1);
            }

            return;
          }

          if (v54 != 2 && v54 != 3)
          {
            *&v101 = *(v18 + 16);
            *(&v101 + 1) = v19;
            *&v102 = v21;
            BYTE8(v102) = v22 & 0xC7;
            goto LABEL_12;
          }
        }

        v55 = v20 & 0xF000000000000007;
        v56 = *(v18 + 32) == 1;
        goto LABEL_102;
      }

      v53 = swift_projectBox();
      sub_1D62B50EC(v53, v15, type metadata accessor for FormatCommandOpenURL);
      sub_1D62B50EC(v15, v11, type metadata accessor for FormatCommandOpenURL);
      if (swift_getEnumCaseMultiPayload() <= 1)
      {
        sub_1D62B51D0(v15, type metadata accessor for FormatCommandOpenURL);
        sub_1D62B51D0(v11, type metadata accessor for FormatCommandOpenURL);
        return;
      }

      v59 = *v11;
      v58 = v11[1];
      v60 = v11[2];
      *&v101 = *v11;
      *(&v101 + 1) = v58;
      *&v102 = v60;
      LOBYTE(v95) = 6;

      v61 = sub_1D703E0C8(&v101, &v95);
      if (!v2)
      {
        v67 = v61;

        v68 = swift_allocObject();
        *(v68 + 16) = v59;
        *(v68 + 24) = v58;
        *(v68 + 32) = v67;
        *(v68 + 40) = 0;
        sub_1D6C4D24C(v68 | 0x3000000000000000);

        sub_1D62B51D0(v15, type metadata accessor for FormatCommandOpenURL);
        return;
      }

      sub_1D62B51D0(v15, type metadata accessor for FormatCommandOpenURL);

LABEL_70:

      return;
    }

    v41 = *(v16 + 16);
    v42 = *(v16 + 24);
    if (v41)
    {
      v43 = *(v41 + 16);

      if (v43)
      {
        v7 = 0;
        while (v7 < *(v41 + 16))
        {
          v3 = *(v41 + 8 * v7 + 32);

          sub_1D6297730(a1, v3);
          if (v2)
          {

            return;
          }

          v7 = (v7 + 1);
          if (v43 == v7)
          {
            goto LABEL_59;
          }
        }

        __break(1u);
LABEL_127:
        v75 = v41;
        *v7 = v3;
        v7[1] = v5;
        LOWORD(v102) = v4;
        sub_1D62921EC(a1);
        goto LABEL_98;
      }
    }

    else
    {
    }

LABEL_59:
    if (v42)
    {
      sub_1D627DA04(a1, v42);
    }

    goto LABEL_70;
  }

  if (v17 <= 8)
  {
    if ((v17 - 7) < 2)
    {
      return;
    }

    v26 = v16 & 0xFFFFFFFFFFFFFFFLL;
    v27 = *(v26 + 32);
    v101 = *(v26 + 16);
    v102 = v27;
    v28 = *(v26 + 64);
    v103 = *(v26 + 48);
    v104 = v28;
    v29 = *(v26 + 80);
    v105 = v29;
    v30 = v101;
    v31 = v28;
    v32 = *(&v28 + 1);
    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v95 = v101;
        v96 = v102;
        sub_1D629DA88(a1);
      }

      return;
    }

    if (v29)
    {
      v62 = *(&v104 + 1) & 0xF000000000000007;
      if ((*(&v104 + 1) & 0xF000000000000007) == 0x3000000000000007)
      {
        return;
      }

      v97 = v101;
      v98 = v102;
      v99 = v103;
      v100 = v104;
      v92 = v102;
      v93 = v103;
      sub_1D614F7FC(&v101, &v95);
      sub_1D5E1DA6C(v30, *(&v30 + 1), v92, *(&v92 + 1), v93, *(&v93 + 1), v31);
      sub_1D690A374(a1);
      if (v2)
      {
        sub_1D5E1DE98(v97, *(&v97 + 1), v98, *(&v98 + 1), v99, *(&v99 + 1), v100);
      }

      else
      {
        sub_1D5E1DE98(v97, *(&v97 + 1), v98, *(&v98 + 1), v99, *(&v99 + 1), v100);
        if (v62 != 0x7000000000000007)
        {
          v69 = (v32 >> 57) & 0x78 | v32 & 7;
          if (v69 != 95 && v69 != 127)
          {
            *&v95 = v32;
            sub_1D6298B34(a1);
          }
        }
      }

      goto LABEL_124;
    }

    if ((v101 & 0xF000000000000007) == 0x7000000000000007)
    {
      return;
    }

    v33 = (v101 >> 57) & 0x78 | v101 & 7;
    if (v33 != 95 && v33 != 127)
    {
      if ((v101 >> 62) <= 1)
      {
        return;
      }

      if (v101 >> 62 == 2)
      {
        if (*((v101 & 0x3FFFFFFFFFFFFFFFLL) + 0x28) > 2u || *((v101 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
        {
          return;
        }

        v87 = *((v101 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v86 = *((v101 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v88 = *((v101 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        *&v97 = v87;
        *(&v97 + 1) = v86;
        *&v98 = v88;
        v94 = 6;
        sub_1D5D27950(v87, v86, v88, 0);
        sub_1D614F7FC(&v101, &v95);
        sub_1D5D27950(v87, v86, v88, 0);
        v89 = sub_1D703E0C8(&v97, &v94);
        if (v2)
        {
          sub_1D5D28C84(v87, v86, v88, 0);
          goto LABEL_124;
        }

        v90 = v89;
        v91 = swift_allocObject();
        *(v91 + 16) = v87;
        *(v91 + 24) = v86;
        *(v91 + 32) = v90;
        *(v91 + 40) = 0;

        sub_1D6C4D24C(v91 | 0x3000000000000000);
        sub_1D5D28C84(v87, v86, v88, 0);
        goto LABEL_123;
      }

      v85 = *((v101 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      *&v97 = *((v101 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D614F7FC(&v101, &v95);
      swift_retain_n();

      sub_1D6298B34(a1);
      if (!v2)
      {

        sub_1D627496C(a1, v85);
        swift_bridgeObjectRelease_n();
LABEL_123:

        goto LABEL_124;
      }
    }

LABEL_124:
    sub_1D614F7CC(&v101);
    return;
  }

  if (v17 == 9)
  {
    LODWORD(v42) = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    if (!(v42 >> 14))
    {
      return;
    }

    v3 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v4 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    *&v93 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v44 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v41 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
    if (v42 >> 14 == 1)
    {
      *&v101 = v3;
      *(&v101 + 1) = v5;
      *&v102 = v4;
      LOBYTE(v95) = 5;
      v45 = v93;
      sub_1D5E1DA6C(v3, v5, v4, v93, v44, v41, v42);
      sub_1D5E1DA6C(v3, v5, v4, v45, v44, v41, v42);
      v46 = sub_1D703E0C8(&v101, &v95);
      v47 = v41;
      if (v2)
      {
        v48 = v3;
        v49 = v5;
        v50 = v4;
        v51 = v93;
        v52 = v44;
      }

      else
      {
        v63 = v46;
        v64 = swift_allocObject();
        *&v92 = v44;
        v65 = v64;
        v64[2] = v3;
        v64[3] = v5;
        v64[4] = v63;
        v64[5] = 0;

        sub_1D6C4D24C(v65 | 0x3000000000000000);

        v48 = v3;
        v49 = v5;
        v50 = v4;
        v51 = v93;
        v52 = v92;
      }

      v66 = v47;
      goto LABEL_121;
    }

    *&v92 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v57 = (v42 >> 7) & 0x7E | (v42 >> 3) & 1;
    if (v57 <= 4)
    {
      if (v57 > 2)
      {
        *&v101 = v3;
        *(&v101 + 1) = v5;
        *&v102 = v4;
        LOBYTE(v95) = 5;
        v73 = v92;
        sub_1D5E1DA6C(v3, v5, v4, v93, v92, v41, v42);
        sub_1D5E1DA6C(v3, v5, v4, v93, v73, v41, v42);

        v74 = sub_1D703E0C8(&v101, &v95);
        v75 = v41;
        if (v2)
        {

LABEL_98:
          v48 = v3;
          v49 = v5;
          v50 = v4;
          v51 = v93;
          v52 = v92;
          v66 = v75;
          goto LABEL_121;
        }

        v77 = v74;

        v78 = swift_allocObject();
        v106 = v75;
        *(v78 + 16) = v3;
        *(v78 + 24) = v5;
        *(v78 + 32) = v77;
        *(v78 + 40) = 0;
        sub_1D6C4D24C(v78 | 0x3000000000000000);

        v41 = v106;
        goto LABEL_110;
      }

      if (v57)
      {
        if (v57 != 1)
        {
          sub_1D5E1DA6C(v3, v5, v4, v93, v92, v41, v42);
          if ((v42 & 0xF0) == 0x30)
          {
            v106 = v41;
            *&v101 = v3;
            *(&v101 + 1) = v5;
            LOWORD(v102) = v4;
            sub_1D62921EC(a1);
            if (v2)
            {
              v48 = v3;
              v49 = v5;
              v50 = v4;
              v51 = v93;
              v52 = v92;
              v66 = v106;
LABEL_121:
              sub_1D5E1DE98(v48, v49, v50, v51, v52, v66, v42);
              return;
            }

            v41 = v106;
          }

          v52 = v92;
          if (v42 >> 4 == 3)
          {
            goto LABEL_127;
          }

          goto LABEL_119;
        }

        goto LABEL_63;
      }
    }

    else
    {
      if (((1 << v57) & 0x3EE0) != 0)
      {
LABEL_63:
        if (v57 > 7)
        {
          v52 = v92;
        }

        else
        {
          if (v57 <= 4)
          {
            if ((v57 - 3) >= 2)
            {
              goto LABEL_107;
            }

LABEL_110:
            *&v101 = v3;
            *(&v101 + 1) = v5;
            *&v102 = v4;
            LOBYTE(v95) = 5;
            v79 = v4;
            v80 = v92;
            sub_1D5E1DA6C(v3, v5, v4, v93, v92, v41, v42);

            v81 = sub_1D703E0C8(&v101, &v95);
            v82 = v41;
            if (v2)
            {

              v48 = v3;
              v49 = v5;
              v50 = v79;
              v51 = v93;
              v52 = v80;
            }

            else
            {
              v83 = v81;

              v84 = swift_allocObject();
              *(v84 + 16) = v3;
              *(v84 + 24) = v5;
              *(v84 + 32) = v83;
              *(v84 + 40) = 0;
              sub_1D6C4D24C(v84 | 0x3000000000000000);

              v48 = v3;
              v49 = v5;
              v50 = v79;
              v51 = v93;
              v52 = v92;
            }

            v66 = v82;
            goto LABEL_121;
          }

          if (v57 == 5)
          {
LABEL_107:
            v48 = v3;
            v49 = v5;
            v50 = v4;
            v51 = v93;
            v52 = v92;
            goto LABEL_120;
          }

          v52 = v92;
        }

LABEL_119:
        v48 = v3;
        v49 = v5;
        v50 = v4;
        v51 = v93;
        goto LABEL_120;
      }

      if (v57 == 8)
      {
        v70 = v92;
        sub_1D5E1DA6C(v3, v5, v4, v93, v92, v41, v42);
        v52 = v70;
        goto LABEL_119;
      }
    }

    v71 = v93;
    v72 = v92;
    sub_1D5E1DA6C(v3, v5, v4, v93, v92, v41, v42);
    v48 = v3;
    v49 = v5;
    v50 = v4;
    v51 = v71;
    v52 = v72;
LABEL_120:
    v66 = v41;
    goto LABEL_121;
  }

  if (v17 == 10)
  {
    v38 = v16 & 0xFFFFFFFFFFFFFFFLL;
    v39 = *(v38 + 64);
    v40 = *(v38 + 32);
    v101 = *(v38 + 16);
    v102 = v40;
    v103 = *(v38 + 48);
    LOWORD(v104) = v39;
LABEL_35:
    sub_1D690A374(a1);
  }
}

void sub_1D628CD5C(uint64_t *a1)
{
  v5 = *v1;
  v4 = v1[1];
  if (v5 && (v6 = *(v5 + 16)) != 0)
  {
    v7 = 0;
    while (v7 < *(v5 + 16))
    {
      v8 = *(v5 + 32 + 8 * v7);

      sub_1D6297730(a1, v8);

      if (v2)
      {
        return;
      }

      if (v6 == ++v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    if (v4)
    {
      sub_1D627DA04(a1, v4);
    }
  }
}

uint64_t sub_1D628CE04(uint64_t result)
{
  v2 = *(*v1 + 16);
  v3 = *(*v1 + 40);
  if (*(*v1 + 66))
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFF8 | (*(*v1 + 64) >> 11) & 7;
  if (v5 <= 3)
  {
    if ((v5 - 1) < 2)
    {
      return result;
    }

    if (!v5)
    {
      v9 = (v3 >> 3) & 7;
      if (v9 <= 1)
      {
        v11 = v2 & 0xF000000000000007;
        if (v9)
        {
          v12 = 0;
        }

        else
        {
          v12 = *(*v1 + 32) == 1;
        }

        goto LABEL_22;
      }

      if (v9 != 2 && v9 != 3)
      {
        v10 = *(*v1 + 40);
        if (v10 >> 6 > 1)
        {
          v6 = v10 & 7;
LABEL_10:
          if (v6 == 1 && (*(*v1 + 24) & 0xF000000000000007) != 0xF000000000000007)
          {
            v8 = result;
LABEL_27:

            sub_1D6E5C118(v8);
          }

          return result;
        }
      }
    }
  }

  else
  {
    if (((1 << v5) & 0x330) != 0)
    {
      return result;
    }

    if (v5 != 6)
    {
      return sub_1D690A374(result);
    }

    if (v3 >> 6 && v3 >> 6 != 1)
    {
      v6 = v3 & 0x3F;
      goto LABEL_10;
    }
  }

  v11 = v2 & 0xF000000000000007;
  v12 = *(*v1 + 32) == 1;
LABEL_22:
  if (v12 && v11 != 0xF000000000000007)
  {
    v8 = result;
    goto LABEL_27;
  }

  return result;
}

unint64_t sub_1D628CF74(unint64_t result)
{
  v3 = v1[1];
  v29 = *v1;
  v30 = v3;
  v4 = v1[3];
  v31 = v1[2];
  v32 = v4;
  v33 = *(v1 + 64);
  v5 = v29;
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      v23 = v29;
      v24 = v30;
      return sub_1D629DA88(result);
    }
  }

  else
  {
    if (v33)
    {
      v11 = *(&v32 + 1);
      v12 = *(&v32 + 1) & 0xF000000000000007;
      if ((*(&v32 + 1) & 0xF000000000000007) == 0x3000000000000007)
      {
        return result;
      }

      v20 = v30;
      v21 = v31;
      v13 = v32;
      v25 = v29;
      v26 = v30;
      v27 = v31;
      v28 = v32;
      v14 = result;
      sub_1D614F7FC(&v29, &v23);
      sub_1D5E1DA6C(v5, *(&v5 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v13);
      sub_1D690A374(v14);
      if (v2)
      {
        sub_1D5E1DE98(v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28);
      }

      else
      {
        sub_1D5E1DE98(v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28);
        if (v12 != 0x7000000000000007)
        {
          v15 = (v11 >> 57) & 0x78 | v11 & 7;
          if (v15 != 95 && v15 != 127)
          {
            *&v23 = v11;
            sub_1D6298B34(v14);
          }
        }
      }

      return sub_1D614F7CC(&v29);
    }

    if ((v29 & 0xF000000000000007) == 0x7000000000000007)
    {
      return result;
    }

    v6 = (v29 >> 57) & 0x78 | v29 & 7;
    if (v6 == 95 || v6 == 127)
    {
      return sub_1D614F7CC(&v29);
    }

    if ((v29 >> 62) < 2)
    {
      return result;
    }

    if (v29 >> 62 != 2)
    {
      v16 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      *&v25 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = result;
      sub_1D614F7FC(&v29, &v23);
      swift_retain_n();

      sub_1D6298B34(v17);
      if (v2)
      {
      }

      else
      {

        sub_1D627496C(v17, v16);
        swift_bridgeObjectRelease_n();
      }

      return sub_1D614F7CC(&v29);
    }

    if (!*((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
    {
      v8 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v9 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      *&v25 = v8;
      *(&v25 + 1) = v7;
      *&v26 = v9;
      v22 = 6;
      sub_1D5D27950(v8, v7, v9, 0);
      sub_1D614F7FC(&v29, &v23);
      sub_1D5D27950(v8, v7, v9, 0);
      v10 = sub_1D703E0C8(&v25, &v22);
      if (v2)
      {
        sub_1D5D28C84(v8, v7, v9, 0);
      }

      else
      {
        v18 = v10;
        v19 = swift_allocObject();
        *(v19 + 16) = v8;
        *(v19 + 24) = v7;
        *(v19 + 32) = v18;
        *(v19 + 40) = 0;

        sub_1D6C4D24C(v19 | 0x3000000000000000);
        sub_1D5D28C84(v8, v7, v9, 0);
      }

      return sub_1D614F7CC(&v29);
    }
  }

  return result;
}

void sub_1D628D2F4(uint64_t a1)
{
  v3 = *v1;
  if (!*(v1 + 56))
  {
    v5 = *(v1 + 48);
    if ((v5 & 0xF000000000000007) == 0xD000000000000007)
    {
      return;
    }

    v7 = *(v1 + 8);
    v6 = *(v1 + 16);
    v9 = *(v1 + 24);
    v8 = *(v1 + 32);
    v10 = *(v1 + 40);
    if ((~v3 & 0xF000000000000007) != 0)
    {
      sub_1D62B54E4(v3, v7, v6, v9, v8, v10, v5, 0);
      sub_1D5CFCFAC(v3);
      sub_1D62895DC(a1);

      if (v2)
      {
        v11 = v3;
        v12 = v7;
        v13 = v6;
        v14 = v9;
        v15 = v8;
        v16 = v10;
        goto LABEL_15;
      }

      v17 = v7;
      v18 = v6;
      v19 = v9;
      v20 = v8;
    }

    else
    {
      v17 = v7;
      v18 = v6;
      v19 = v9;
      v20 = v8;
      sub_1D62B545C(v3, v7, v6, v9, v8, v10, v5, sub_1D5CFCFAC, sub_1D5D04BD4);
    }

    if ((v5 & 0xF000000000000007) != 0xF000000000000007)
    {

      sub_1D6012F58();

      sub_1D62B53F0(v3, v17, v18, v19, v20, v10, v5, 0);
      return;
    }

    v11 = v3;
    v12 = v17;
    v13 = v18;
    v14 = v19;
    v15 = v20;
    v16 = v10;
LABEL_15:
    sub_1D62B53F0(v11, v12, v13, v14, v15, v16, v5, 0);
    return;
  }

  if (*(v1 + 56) == 1 && (~v3 & 0xD000000000000007) != 0)
  {
    sub_1D62B53D4(v3);
    sub_1D6012F58();
  }
}

uint64_t sub_1D628D520(uint64_t result)
{
  v3 = result;
  v4 = v1[6];
  if ((~*v1 & 0xF000000000000007) == 0 || (, sub_1D62895DC(v3), result = , !v2))
  {
    if ((~v4 & 0xF000000000000007) != 0)
    {

      sub_1D6012F58();
    }
  }

  return result;
}

uint64_t sub_1D628D5F4()
{
  if ((~*v0 & 0xF000000000000007) != 0)
  {

    sub_1D6012F58();
  }

  return result;
}

uint64_t sub_1D628D658(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a1);

  if (!v4)
  {

    a4(a1);
  }

  return result;
}

uint64_t sub_1D628D6F0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_retain_n();

  sub_1D62895DC(a1);
  if (v3)
  {
  }

  else
  {

    sub_1D6273600(a1, a3);

    sub_1D62895DC(a1);
  }
}

uint64_t sub_1D628D7D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v13 = MEMORY[0x1EEE9AC00](v12, v10);
  (*(v15 + 16))(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v11, v13);
  sub_1D5B49474(0, &qword_1EC8854D0);
  if (swift_dynamicCast())
  {
    v25 = v3;
    v16 = v5;
    v18 = *(&v27 + 1);
    v17 = v28;
    __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    v19 = v29;
    (*(v17 + 8))(v16, v18, v17);
    result = __swift_destroy_boxed_opaque_existential_1(&v26);
    if (v19)
    {
      return result;
    }

    v5 = v16;
    v3 = v25;
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_1D5BFB774(&v26, &qword_1EC8854D8, &qword_1EC8854D0);
  }

  (*(v7 + 16))(v9, v3 + *(a2 + 52), v6);
  if (swift_dynamicCast())
  {
    v21 = v5;
    v22 = *(&v27 + 1);
    v23 = v28;
    __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    (*(v23 + 8))(v21, v22, v23);
    return __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    return sub_1D5BFB774(&v26, &qword_1EC8854D8, &qword_1EC8854D0);
  }
}

uint64_t sub_1D628DAB8(uint64_t a1)
{

  sub_1D62895DC(a1);
}

uint64_t sub_1D628DB0C(uint64_t a1)
{

  sub_1D62895DC(a1);

  if (!v1)
  {

    sub_1D628DB94(a1);
  }

  return result;
}

uint64_t sub_1D628DB94(uint64_t result)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    v3 = result;

    swift_retain_n();
    sub_1D62895DC(v3);
    if (!v2)
    {

      sub_1D628DB94(v3);
    }
  }

  return result;
}

uint64_t sub_1D628DC74(unint64_t a1)
{
  v3 = v1[1];
  if ((*v1 & 0x8000000000000000) == 0)
  {
    return sub_1D6273600(a1, v3);
  }

  v5 = v1[1];
  v6 = a1;
  result = sub_1D628DB0C(a1);
  if (!v2)
  {
    a1 = v6;
    v3 = v5;
    return sub_1D6273600(a1, v3);
  }

  return result;
}

uint64_t sub_1D628DCDC(uint64_t result)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    return sub_1D628DB0C(result);
  }

  return result;
}

uint64_t sub_1D628DD1C(uint64_t result)
{
  v3 = *v1 >> 61;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      return sub_1D62895DC(result);
    }

    else if (v3 == 4)
    {
      v6 = result;

      sub_1D62895DC(v6);
    }
  }

  else if (v3 >= 2)
  {
    v4 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v5 = result;
    swift_retain_n();

    sub_1D628DB94(v5);
    if (v2)
    {
    }

    else
    {

      sub_1D6273600(v5, v4);
    }
  }

  return result;
}

uint64_t sub_1D628DE58(uint64_t a1)
{
  v3 = *(v1 + 8);

  sub_1D6273544(a1, v3);
}

uint64_t sub_1D628DEA4(uint64_t result)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 48);
  v8 = *(v1 + 50);
  if (v8)
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 & 0xFFFFFFF8 | (v7 >> 11) & 7;
  if (v10 > 3)
  {
    v11 = *(v1 + 32);
    v12 = *(v1 + 40);
    if (((1 << v10) & 0x330) != 0)
    {
      return result;
    }

    if (v10 == 6)
    {
      if (!(v5 >> 6) || v5 >> 6 == 1)
      {
        if (*(v1 + 16) != 1 || (v3 & 0xF000000000000007) == 0xF000000000000007)
        {
          return result;
        }

        goto LABEL_23;
      }

      if ((v5 & 0x3F) == 1 && (v4 & 0xF000000000000007) != 0xF000000000000007)
      {
        v34 = *(v1 + 8);
        v18 = result;

        v17 = v18;
        goto LABEL_24;
      }

      return result;
    }

    if (!(v7 >> 14))
    {
      return result;
    }

    if (v7 >> 14 == 1)
    {
      v34 = *v1;
      v35 = v4;
      v36 = v6;
      v38 = 5;
      sub_1D5E1DCFC(v3, v4, v6, v5, v11, v12, v7, v8, sub_1D5E1DA1C, sub_1D5E1DA1C, sub_1D5E1DA6C);
      result = sub_1D703E0C8(&v34, &v38);
      if (!v2)
      {
        v13 = result;
        v14 = swift_allocObject();
        *(v14 + 16) = v3;
        *(v14 + 24) = v4;
        *(v14 + 32) = v13;
        *(v14 + 40) = 0;

        sub_1D6C4D24C(v14 | 0x3000000000000000);
      }

      return result;
    }

    v19 = (v7 >> 7) & 0xE | (v7 >> 3) & 1;
    if (v19 - 5 >= 0xA && v19 >= 2)
    {
      if (v19 - 3 < 2)
      {
        v34 = *v1;
        v35 = v4;
        v36 = v6;
        v38 = 5;
        v31 = v12;
        v32 = v11;
        v33 = v5;
        v22 = v7;
        v23 = v8;
        v21 = v2;
        sub_1D5E1DCFC(v3, v4, v6, v5, v11, v12, v7, v8, sub_1D5E1DA1C, sub_1D5E1DA1C, sub_1D5E1DA6C);

        v24 = sub_1D703E0C8(&v34, &v38);
        if (v2)
        {
          goto LABEL_39;
        }

        v26 = v24;

        v27 = swift_allocObject();
        *(v27 + 16) = v3;
        *(v27 + 24) = v4;
        *(v27 + 32) = v26;
        *(v27 + 40) = 0;
        sub_1D6C4D24C(v27 | 0x3000000000000000);

        v11 = v32;
        v5 = v33;
        v8 = v23;
        v7 = v22;
        v12 = v31;
LABEL_46:
        v34 = v3;
        v35 = v4;
        v36 = v6;
        v38 = 5;
        sub_1D5E1DCFC(v3, v4, v6, v5, v11, v12, v7, v8, sub_1D5E1DA1C, sub_1D5E1DA1C, sub_1D5E1DA6C);

        v28 = sub_1D703E0C8(&v34, &v38);
        if (!v21)
        {
          v29 = v28;

          v30 = swift_allocObject();
          *(v30 + 16) = v3;
          *(v30 + 24) = v4;
          *(v30 + 32) = v29;
          *(v30 + 40) = 0;
          sub_1D6C4D24C(v30 | 0x3000000000000000);
        }

LABEL_39:
      }

      if ((v7 & 0xF0) != 0x30)
      {
        return result;
      }

      v34 = *v1;
      v35 = v4;
      LOWORD(v36) = v6;
      v25 = result;
      result = sub_1D62921EC(result);
      if (v2)
      {
        return result;
      }

      result = v25;
    }

    else
    {
      if (v19 - 5 < 0xA || v19 < 2)
      {
        return result;
      }

      if (v19 - 3 < 2)
      {
        v21 = v2;
        goto LABEL_46;
      }

      if ((v7 & 0xF0) != 0x30)
      {
        return result;
      }
    }

    v34 = v3;
    v35 = v4;
    LOWORD(v36) = v6;
    return sub_1D62921EC(result);
  }

  if ((v10 - 1) >= 2)
  {
    if (!v10)
    {
      v34 = *v1;
      v35 = v4;
      v36 = v6;
      v37 = v5;
      return sub_1D628E820(result);
    }

    if (*(v1 + 16) == 1 && (v3 & 0xF000000000000007) != 0xF000000000000007)
    {
LABEL_23:
      v34 = *v1;
      v16 = result;

      v17 = v16;
LABEL_24:
      sub_1D6E5C118(v17);
    }
  }

  return result;
}

void sub_1D628E374(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        sub_1D6297650(a1);
        return;
      }

      v10 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *(v10 + 24);

      sub_1D6277298(a1, v11);
      if (!v2)
      {
        sub_1D628E374(a1, *(v10 + 32));
      }
    }

    else
    {
      if ((*(a2 + 48) & 1) == 0)
      {
        return;
      }

      v5 = *(a2 + 16);
      v6 = *(a2 + 24);
      v7 = *(a2 + 32);
      v8 = *(a2 + 40);
      v9 = *(v8 + 24);
      sub_1D5F26358(v5, v6, v7);
      sub_1D62B5FC8(v8, 1);

      sub_1D6277824(a1, v9);
      if (!v2)
      {
        sub_1D628E4DC(a1, *(v8 + 32));
      }

      sub_1D5F26348(v5, v6, v7);
      sub_1D5FC4E9C(v8, 1);
    }
  }
}

uint64_t sub_1D628E4DC(uint64_t a1, void *a2)
{
  v11 = a2;
  sub_1D62B7E2C();
  sub_1D5B49474(0, &qword_1EC8854D0);
  v4 = a2;
  if (swift_dynamicCast())
  {
    v5 = *(&v9 + 1);
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    (*(v6 + 8))(a1, v5, v6);
    return __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    return sub_1D5BFB774(&v8, &qword_1EC8854D8, &qword_1EC8854D0);
  }
}

uint64_t sub_1D628E5E4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    v3 = result;
    v4 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *(v4 + 24);

    sub_1D627981C(v3, v5);
    if (!v2)
    {
      sub_1D628E5E4(v3, *(v4 + 32));
    }
  }

  return result;
}

uint64_t sub_1D628E690(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v8 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + *(v7 + 28), v4, v5);
  sub_1D5B49474(0, &qword_1EC8854D0);
  if (swift_dynamicCast())
  {
    v9 = *(&v13 + 1);
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    (*(v10 + 8))(a1, v9, v10);
    return __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    return sub_1D5BFB774(&v12, &qword_1EC8854D8, &qword_1EC8854D0);
  }
}

uint64_t sub_1D628E820(uint64_t result)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (v4 >> 3) & 7;
  if (v5 <= 1)
  {
    v6 = v2 & 0xF000000000000007;
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v3 == 1;
    }
  }

  else
  {
    if (v5 != 2 && v5 != 3)
    {
      if (v4 >> 6 > 1)
      {
        if ((v4 & 7) != 1)
        {
          return result;
        }

        v2 = v1[1];
      }

      else if (v3 != 1)
      {
        return result;
      }

      if ((v2 & 0xF000000000000007) == 0xF000000000000007)
      {
        return result;
      }

      goto LABEL_19;
    }

    v6 = v2 & 0xF000000000000007;
    v7 = v3 == 1;
  }

  if (v7 && v6 != 0xF000000000000007)
  {
LABEL_19:
    v9 = result;

    sub_1D6E5C118(v9);
  }

  return result;
}

uint64_t sub_1D628E900(uint64_t result)
{
  if (*(v1 + 16) == 1 && (*v1 & 0xF000000000000007) != 0xF000000000000007)
  {
    v3 = result;

    sub_1D6E5C118(v3);
  }

  return result;
}

uint64_t sub_1D628E970(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2 >> 6 > 1)
  {
    v5 = v2 & 0x3F;
    v3 = *(v1 + 8) & 0xF000000000000007;
    v4 = v5 == 1;
  }

  else
  {
    v3 = *v1 & 0xF000000000000007;
    v4 = *(v1 + 16) == 1;
  }

  if (v4 && v3 != 0xF000000000000007)
  {
    v7 = result;

    sub_1D6E5C118(v7);
  }

  return result;
}

uint64_t sub_1D628EA38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v8 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + *(v7 + 44), v4, v5);
  sub_1D5B49474(0, &qword_1EC8854D0);
  if (swift_dynamicCast())
  {
    v9 = *(&v13 + 1);
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    (*(v10 + 8))(a1, v9, v10);
    return __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    return sub_1D5BFB774(&v12, &qword_1EC8854D8, &qword_1EC8854D0);
  }
}

void sub_1D628EBC8(unint64_t a1)
{
  v4 = type metadata accessor for FormatPropertyDefinition(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *(*v1 + 16);
  if (v10)
  {
    v11 = 0;
    while (v11 < *(v9 + 16))
    {
      sub_1D62B50EC(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v8, type metadata accessor for FormatPropertyDefinition);
      sub_1D629E924(a1);
      if (v2)
      {
        sub_1D62B51D0(v8, type metadata accessor for FormatPropertyDefinition);
        return;
      }

      ++v11;
      sub_1D62B51D0(v8, type metadata accessor for FormatPropertyDefinition);
      if (v10 == v11)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D628ED30(uint64_t *a1)
{
  v3 = v1;
  v16 = v1[7];
  sub_1D5C82CD8(v16);
  sub_1D626D654(a1);
  if (v2)
  {
    sub_1D5C92A8C(v16);
  }

  else
  {
    sub_1D5C92A8C(v16);
    swift_beginAccess();
    v5 = v1[9];

    sub_1D6274044(a1, v5);

    v6 = v3[10];
    if (v6)
    {
      v7 = *(v6 + 56);
      if (v7)
      {
        sub_1D626DA28(a1, v7);
      }

      swift_beginAccess();
      v8 = *(v6 + 64);

      sub_1D626FD48(a1, v8);
    }

    v9 = v3[11];
    if (v9)
    {
      swift_beginAccess();
      v10 = *(v9 + 72);
      if (v10)
      {

        sub_1D62707E8(a1, v10);
      }

      swift_beginAccess();
      v11 = *(v9 + 88);

      sub_1D6272D88(a1, v11);
    }

    swift_beginAccess();
    v12 = v3[13];
    if (v12 >> 62 == 1)
    {
      v13 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v3[13]);
      sub_1D5EB1500(v13);

      sub_1D6288D68(a1, v13, v14);
      sub_1D5EB15C4(v13);

      sub_1D5EB15C4(v12);
    }

    if (v3[15])
    {
      v15 = v3[19];

      sub_1D5DEA234(v15);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v15);
    }
  }
}

void sub_1D628F024(unint64_t a1)
{
  v4 = *v1;
  v5 = *(*v1 + 56);
  if (!v5 || (sub_1D626DA28(a1, v5), !v2))
  {
    swift_beginAccess();
    v6 = *(v4 + 64);

    sub_1D626FD48(a1, v6);
  }
}

void sub_1D628F0B0(unint64_t a1)
{
  v4 = *(v1 + 24);

  sub_1D6EE4610(a1);

  if (!v2)
  {
    if (v4)
    {
      sub_1D626DA28(a1, v4);
    }
  }
}

unint64_t sub_1D628F138(unint64_t a1)
{
  v4 = v1[1];
  result = sub_1D6273544(a1, *v1);
  if (!v2)
  {
    sub_1D5F33D5C(v4);
    sub_1D628A8D0(a1);
    return sub_1D5F33D8C(v4);
  }

  return result;
}

uint64_t sub_1D628F1A4(unint64_t a1)
{
  v4 = *(v1 + 80);
  v5 = *(v1 + 96);
  v6 = *(v1 + 106);
  v7 = *(v1 + 104);

  sub_1D628F2F4(a1);

  if (!v2)
  {

    sub_1D626DA28(a1, v4);

    v9 = v7 | (v6 << 16);
    if (BYTE2(v9) != 255)
    {
      sub_1D610CA74(v5, v9, SBYTE2(v9), sub_1D610CA28, sub_1D610CA5C);
      sub_1D628F694(a1);
      return sub_1D610CA74(v5, v9, SBYTE2(v9), sub_1D60CF6A8, sub_1D60CF6DC);
    }
  }

  return result;
}

uint64_t sub_1D628F2F4(uint64_t result)
{
  v3 = result;
  v4 = *v1;
  v5 = *v1 >> 60;
  if (v5 <= 3)
  {
    if (v5 > 1)
    {
      v9 = v4 & 0xFFFFFFFFFFFFFFFLL;
      if (v5 == 2)
      {
        v10 = *(v9 + 96);
        v11 = *(v9 + 112);
        v12 = *(v9 + 128);
        v33 = *(v9 + 80);
        v34 = v10;
        v35 = v11;
        v36 = v12;
        v13 = *(v9 + 32);
        v29 = *(v9 + 16);
        v30 = v13;
        v14 = *(v9 + 64);
        v31 = *(v9 + 48);
        v32 = v14;
        v15 = v12;
        sub_1D60865E4(&v29, &v28);
        sub_1D627683C(v3, v15);
        return sub_1D6086640(&v29);
      }

      else
      {
        *&v29 = *(v9 + 24);

        sub_1D629DD00(v3);
      }
    }

    if (!v5)
    {
      *&v29 = *(v4 + 16);
      return sub_1D62895DC(result);
    }

    v23 = (v4 & 0xFFFFFFFFFFFFFFFLL);
    v24 = v23[2];
    v26 = v23[8];
    v25 = v23[9];

    sub_1D5D615EC(v26);
    sub_1D627683C(v3, v24);
    if (!v2)
    {
      if (!v26)
      {

        v27 = 0;
        return sub_1D5CDE22C(v27);
      }

      sub_1D6273544(v3, v26);
      sub_1D6273544(v3, v25);
      sub_1D5CDE22C(v26);
    }

    v27 = v26;
    return sub_1D5CDE22C(v27);
  }

  if (v5 <= 5)
  {
    v16 = v4 & 0xFFFFFFFFFFFFFFFLL;
    if (v5 == 4)
    {
      v17 = *(v16 + 128);
      v35 = *(v16 + 112);
      v36 = v17;
      v37 = *(v16 + 144);
      v38 = *(v16 + 160);
      v18 = *(v16 + 64);
      v31 = *(v16 + 48);
      v32 = v18;
      v19 = *(v16 + 96);
      v33 = *(v16 + 80);
      v34 = v19;
      v20 = *(v16 + 32);
      v29 = *(v16 + 16);
      v30 = v20;
      return sub_1D6289EC0(result);
    }

    else
    {
      *&v29 = *(v16 + 16);
      return sub_1D6289B90(result);
    }
  }

  else
  {
    if (v5 == 6)
    {
      v21 = v4 & 0xFFFFFFFFFFFFFFFLL;
      v22 = *(v21 + 24);
      *&v29 = *(v21 + 16);
      swift_retain_n();

      sub_1D628F2F4(v3);
      if (v2)
      {
        goto LABEL_15;
      }

      sub_1D6285444(v3, v22, sub_1D628F2F4);
    }

    else
    {
      if (v5 != 7)
      {
        return result;
      }

      v6 = (v4 & 0xFFFFFFFFFFFFFFFLL);
      v7 = v6[3];
      v8 = v6[4];
      *&v29 = v6[2];

      swift_retain_n();

      sub_1D628F2F4(v3);
      if (v2)
      {

LABEL_15:
      }

      sub_1D6285444(v3, v7, sub_1D628F2F4);
      *&v29 = v8;

      sub_1D628F2F4(v3);
    }
  }
}

uint64_t sub_1D628F694(uint64_t result)
{
  if (!*(v1 + 10))
  {
    return result;
  }

  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 10) == 1)
  {
    if ((v3 & 0x100) == 0)
    {
      return sub_1D6273544(result, *v1);
    }

    v8 = *(v1 + 8);
    if (v8 <= 1)
    {
      if (*(v1 + 8))
      {
        if (v2)
        {
          if (v2 != 1)
          {
            v9 = result;
            v10 = *v1;
            v11 = *(v1 + 8);
            v12 = 1;
            goto LABEL_38;
          }

          goto LABEL_28;
        }
      }

      else if (v2)
      {
        if (v2 != 1)
        {
          v9 = result;
          v10 = *v1;
          v11 = *(v1 + 8);
          v12 = 0;
          goto LABEL_38;
        }

LABEL_28:
        v6 = 1;
LABEL_39:
        v7 = 1;
        return sub_1D610CA74(v6, v3, v7, sub_1D60CF6A8, sub_1D60CF6DC);
      }
    }

    else if (v8 == 2)
    {
      if (v2)
      {
        if (v2 != 1)
        {
          v9 = result;
          v10 = *v1;
          v11 = *(v1 + 8);
          v12 = 2;
          goto LABEL_38;
        }

        goto LABEL_28;
      }
    }

    else
    {
      if (v8 != 3)
      {
        return result;
      }

      if (v2)
      {
        if (v2 != 1)
        {
          v9 = result;
          v10 = *v1;
          v11 = *(v1 + 8);
          v12 = 3;
LABEL_38:
          sub_1D610CA28(v10, v12, 1);
          sub_1D6273544(v9, v2);
          v6 = v2;
          v3 = v11;
          goto LABEL_39;
        }

        goto LABEL_28;
      }
    }

    v15 = 1;
    return sub_1D610CA74(0, v3, v15, sub_1D60CF6A8, sub_1D60CF6DC);
  }

  if (v3 >> 8 > 0xFE)
  {
    return result;
  }

  if ((v3 & 0x100) == 0)
  {
    v4 = result;
    v5 = v3;
    sub_1D610CA5C(v2, v3);
    sub_1D6273544(v4, v2);
    v6 = v2;
    v3 = v5;
    v7 = 2;
    return sub_1D610CA74(v6, v3, v7, sub_1D60CF6A8, sub_1D60CF6DC);
  }

  v13 = *(v1 + 8);
  if (v13 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v6 = 1;
      }

      else
      {
        v16 = result;
        v17 = *(v1 + 8);
        sub_1D610CA5C(v2, v3);
        sub_1D6273544(v16, v2);
        v6 = v2;
        v3 = v17;
      }

      v7 = 2;
      return sub_1D610CA74(v6, v3, v7, sub_1D60CF6A8, sub_1D60CF6DC);
    }

    goto LABEL_34;
  }

  if (v13 != 3)
  {
    return result;
  }

  if (!v2)
  {
LABEL_34:
    v15 = 2;
    return sub_1D610CA74(0, v3, v15, sub_1D60CF6A8, sub_1D60CF6DC);
  }

  if (v2 == 1)
  {
    v14 = 1;
  }

  else
  {
    v18 = result;
    v19 = *v1;
    v20 = *(v1 + 8);
    sub_1D610CA5C(v19, v3);
    sub_1D6273544(v18, v2);
    v14 = v2;
    v3 = v20;
  }

  return sub_1D610CA74(v14, v3, 2, sub_1D60CF6A8, sub_1D60CF6DC);
}

uint64_t sub_1D628FA70(uint64_t a1)
{
  if ((*(v1 + 8) & 0x8000000000000000) == 0)
  {
    return sub_1D62881C8(a1);
  }

  sub_1D6288980(a1);
}

unint64_t sub_1D628FB34(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  sub_1D5D0A048(*v1);
  sub_1D628FBC4(a1);
  result = sub_1D5D09FB0(v5);
  if (!v2)
  {
    sub_1D5D0A048(v4);
    sub_1D628FBC4(a1);
    return sub_1D5D09FB0(v4);
  }

  return result;
}

uint64_t sub_1D628FBC4(uint64_t result)
{
  v2 = *v1;
  v3 = *v1 >> 61;
  if (v3 > 3)
  {
    if (v3 <= 5)
    {
      v4 = result;
      v2 &= 0x1FFFFFFFFFFFFFFFuLL;
LABEL_7:
      v5 = *(v2 + 16);

      sub_1D6273544(v4, v5);
    }

    if (v3 == 6)
    {
      v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = result;

      sub_1D6273544(v7, v6);
    }
  }

  else
  {
    if (v3 <= 1)
    {
      v4 = result;
      if (v3)
      {
        v2 &= 0x1FFFFFFFFFFFFFFFuLL;
      }

      goto LABEL_7;
    }

    if (v3 != 2)
    {
      return sub_1D628FBC4();
    }
  }

  return result;
}

uint64_t sub_1D628FCD8(uint64_t a1)
{
  v4 = v1[5];
  v13[4] = v1[4];
  v13[5] = v4;
  v5 = v1[7];
  v13[6] = v1[6];
  v13[7] = v5;
  v6 = v1[1];
  v13[0] = *v1;
  v13[1] = v6;
  v7 = v1[3];
  v13[2] = v1[2];
  v13[3] = v7;
  v8 = sub_1D6011280(v13);
  v9 = sub_1D5D756C8(v13);
  if (v8 == 1)
  {
    return sub_1D627683C(a1, v9[14]);
  }

  v12 = v9[6];
  v11 = v9[7];
  result = sub_1D627683C(a1, *v9);
  if (!v2)
  {
    if (v12)
    {

      sub_1D6273544(a1, v12);
      sub_1D6273544(a1, v11);
      return sub_1D5CDE22C(v12);
    }
  }

  return result;
}

uint64_t sub_1D628FDC8(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  sub_1D5E1DA6C(*v1, v5, v6, v7, v8, v9, v10);
  sub_1D690A374(a1);
  return sub_1D5E1DE98(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D628FE64(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22 - v10;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, a2, v14);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    (*(v5 + 32))(v11, v16, v4);
    (*(v5 + 16))(v7, v11, v4);
    sub_1D5B49474(0, &qword_1EC8854D0);
    if (swift_dynamicCast())
    {
      v20 = *(&v23 + 1);
      v21 = v24;
      __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
      (*(v21 + 8))(a1, v20, v21);
      (*(v5 + 8))(v11, v4);
      return __swift_destroy_boxed_opaque_existential_1(&v22);
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      (*(v5 + 8))(v11, v4);
      return sub_1D5BFB774(&v22, &qword_1EC8854D8, &qword_1EC8854D0);
    }
  }

  return result;
}

uint64_t sub_1D629012C(uint64_t a1)
{
  v4 = v1[5];
  v14[4] = v1[4];
  v14[5] = v4;
  v5 = v1[7];
  v14[6] = v1[6];
  v14[7] = v5;
  v6 = v1[1];
  v14[0] = *v1;
  v14[1] = v6;
  v7 = v1[3];
  v14[2] = v1[2];
  v14[3] = v7;
  v8 = sub_1D5CFD35C(v14);
  v9 = sub_1D5CFD34C(v14);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      return sub_1D627683C(a1, v9[14]);
    }

    else
    {
      v15 = *v9;
      return sub_1D6289B90(a1);
    }
  }

  else if (v8)
  {
    v13 = v9[6];
    v12 = v9[7];
    result = sub_1D627683C(a1, *v9);
    if (!v2 && v13)
    {

      sub_1D6273544(a1, v13);
      sub_1D6273544(a1, v12);
      return sub_1D5CDE22C(v13);
    }
  }

  else
  {
    v10 = v9[1];
    v15 = *v9;

    sub_1D62895DC(a1);

    if (!v2)
    {
      v15 = v10;

      sub_1D62895DC(a1);
    }
  }

  return result;
}

unint64_t sub_1D62902C0(unint64_t a1)
{
  v3 = v1;
  swift_beginAccess();
  v9 = v1[8];
  sub_1D5C82CD8(v9);
  sub_1D626D654(a1);
  result = sub_1D5C92A8C(v9);
  if (!v2)
  {
    swift_beginAccess();
    v6 = v1[11];

    sub_1D6274044(a1, v6);

    swift_beginAccess();

    sub_1D62904AC(a1);

    if (v3[13])
    {
      v7 = v3[17];

      sub_1D5DEA234(v7);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v7);
    }

    swift_beginAccess();
    v8 = v3[19];

    sub_1D626DB9C(a1, v8);
  }

  return result;
}

uint64_t sub_1D62904AC(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(v1 + 24);

  sub_1D6284A20(a1, v4);
  if (v2)
  {
  }

  swift_beginAccess();
  v5 = *(v1 + 40);

  sub_1D6284A20(a1, v5);

  swift_beginAccess();
  v6 = *(v1 + 56);

  sub_1D6284A20(a1, v6);

  swift_beginAccess();
  v7 = *(v1 + 72);

  sub_1D6284A20(a1, v7);

  swift_beginAccess();
  v8 = *(v1 + 88);

  sub_1D6284A20(a1, v8);

  swift_beginAccess();
  v9 = *(v1 + 104);

  sub_1D6284A20(a1, v9);

  swift_beginAccess();
  v10 = *(v1 + 112);
  v11 = *(v1 + 120);

  sub_1D6273544(a1, v10);
  sub_1D62843FC(a1, v11, sub_1D6273544);

  swift_beginAccess();
  v13 = *(v1 + 128);
  v14 = *(v1 + 136);

  sub_1D6273544(a1, v13);
  sub_1D62843FC(a1, v14, sub_1D6273544);

  swift_beginAccess();
  v38 = *(v1 + 144);
  v39 = *(v1 + 152);
  v15 = *(v1 + 168);
  v36 = *(v1 + 160);
  if (v36 == 1)
  {
    sub_1D5C75A4C(v38, v39, 1);

    sub_1D5C75A4C(v38, v39, 1);
    v16 = sub_1D5E26E28(&unk_1F51131F8);
    v17 = swift_allocObject();
    *(v17 + 16) = v38;
    *(v17 + 24) = v39;
    *(v17 + 32) = v16;
    *(v17 + 40) = 0;
    sub_1D6C4D24C(v17 | 0x3000000000000000);
  }

  else
  {
    sub_1D5C75A4C(v38, v39, 0);
  }

  v37 = *(v15 + 16);
  if (!v37)
  {
LABEL_20:
    sub_1D5D2F2C8(v38, v39, v36);
  }

  v18 = 0;
  while (v18 < *(v15 + 16))
  {
    v40 = v18;
    v19 = v15 + 32 + 40 * v18;
    v21 = *v19;
    v20 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    v24 = *(v19 + 32);

    v42 = v22;
    v46 = v23;
    v41 = v24;
    sub_1D5C75A4C(v22, v23, v24);
    v25 = qword_1EDF2AB18;

    if (v25 != -1)
    {
      swift_once();
    }

    v43[0] = v21;
    v43[1] = v20;
    result = sub_1D6844380(v43);
    v26 = result;
    v27 = *(result + 16);
    if (v27)
    {
      v28 = 0;
      v29 = 32;
      while (v28 < *(v26 + 16))
      {
        v30 = *(v26 + v29);
        v31 = *(v26 + v29 + 16);
        v32 = *(v26 + v29 + 32);
        v45 = *(v26 + v29 + 48);
        v44[1] = v31;
        v44[2] = v32;
        v44[0] = v30;
        sub_1D5E3B610(v44, v43);
        sub_1D6844F60(a1);
        ++v28;
        result = sub_1D5E3B66C(v44);
        v29 += 56;
        if (v27 == v28)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      break;
    }

LABEL_16:

    if (v41)
    {
      v33 = v46;
      sub_1D5C75A4C(v22, v46, 1);
      v34 = sub_1D5E26E28(&unk_1F5113220);
      v35 = swift_allocObject();
      *(v35 + 16) = v42;
      *(v35 + 24) = v33;
      *(v35 + 32) = v34;
      *(v35 + 40) = 0;
      sub_1D6C4D24C(v35 | 0x3000000000000000);

      sub_1D5D2F2C8(v42, v33, 1);
    }

    else
    {

      result = sub_1D5D2F2C8(v22, v46, 0);
    }

    v18 = v40 + 1;
    if (v40 + 1 == v37)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6290ACC(uint64_t result)
{
  v3 = result;
  v4 = *v1;
  v5 = *v1 >> 61;
  if (v5 > 1)
  {
    v6 = v4 & 0x1FFFFFFFFFFFFFFFLL;
    if (v5 == 2)
    {
      v29 = *(v6 + 32);

      sub_1D6298B34(v3);
    }

    if (v5 == 3)
    {
      if (*(v6 + 40) >= 3u)
      {
        v8 = *(v6 + 16);
        v7 = *(v6 + 24);
        v9 = *(v6 + 32);
        v29 = v8;
        v30 = v7;
        v31 = v9;
        v32 = 10;
        sub_1D5F58038(v8, v7, v9, 3);
        sub_1D5F58038(v8, v7, v9, 3);
        v10 = sub_1D703E0C8(&v29, &v32);
        if (v2)
        {
          return sub_1D5F57FEC(v8, v7, v9, 3);
        }

        else
        {
          v25 = v10;
          v26 = swift_allocObject();
          *(v26 + 16) = v8;
          *(v26 + 24) = v7;
          *(v26 + 32) = v25;
          *(v26 + 40) = 0;

          sub_1D6C4D24C(v26 | 0x3000000000000000);
          sub_1D5F57FEC(v8, v7, v9, 3);
        }
      }

      return result;
    }

    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    v17 = *(v6 + 32);
    v18 = *(v6 + 40);
    v19 = *(v6 + 48);
    if (v18 > 1)
    {
      if (v18 != 2)
      {
        v29 = *(v6 + 16);
        v30 = v15;
        v31 = v17;
        v32 = 10;
        sub_1D5F58038(v16, v15, v17, 3);

        sub_1D5F58038(v16, v15, v17, 3);
        v24 = sub_1D703E0C8(&v29, &v32);
        if (v2)
        {
          sub_1D5F57FEC(v16, v15, v17, 3);
        }

        v27 = v24;
        v28 = swift_allocObject();
        *(v28 + 16) = v16;
        *(v28 + 24) = v15;
        *(v28 + 32) = v27;
        *(v28 + 40) = 0;

        sub_1D6C4D24C(v28 | 0x3000000000000000);

        goto LABEL_15;
      }

      v20 = *(v6 + 16);
      v21 = *(v6 + 24);
      v22 = *(v6 + 32);
      v23 = 2;
    }

    else
    {
      v20 = *(v6 + 16);
      v21 = *(v6 + 24);
      v22 = *(v6 + 32);
      v23 = v18 != 0;
    }

    sub_1D5F58038(v20, v21, v22, v23);

LABEL_15:
    v29 = v19;

    sub_1D6290ACC(v3);
    sub_1D5F57FEC(v16, v15, v17, v18);
  }

  if (v5)
  {
    v11 = v4 & 0x1FFFFFFFFFFFFFFFLL;
    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;

    sub_1D6C4D24C(v14 | 0xB000000000000000);
  }

  return result;
}

uint64_t sub_1D6290E24(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(v1 + 48);

  sub_1D6284F74(a1, v4);
  if (v2)
  {
  }

  if ((~*(v1 + 56) & 0xF000000000000007) != 0)
  {
    *&v42 = *(v1 + 56);

    sub_1D6290ACC(a1);
  }

  v6 = *(v1 + 144);
  v38 = *(v1 + 128);
  v39 = v6;
  v7 = *(v1 + 176);
  v40 = *(v1 + 160);
  v41 = v7;
  v8 = *(v1 + 80);
  v34 = *(v1 + 64);
  v35 = v8;
  v9 = *(v1 + 112);
  v36 = *(v1 + 96);
  v37 = v9;
  v48 = v40;
  v49 = v7;
  v46 = v38;
  v47 = v6;
  v44 = v36;
  v45 = v9;
  v42 = v34;
  v43 = v8;
  result = sub_1D5CFD0B8(&v42);
  if (result != 1)
  {
    v22 = v46;
    v23 = v47;
    v24 = v48;
    v25 = v49;
    v18 = v42;
    v19 = v43;
    v20 = v44;
    v21 = v45;
    v28 = v36;
    v29 = v37;
    v26 = v34;
    v27 = v35;
    v32 = v40;
    v33 = v41;
    v30 = v38;
    v31 = v39;
    sub_1D5CFD190(&v26, v17);
    sub_1D629012C(a1);
    v17[4] = v22;
    v17[5] = v23;
    v17[6] = v24;
    v17[7] = v25;
    v17[0] = v18;
    v17[1] = v19;
    v17[2] = v20;
    v17[3] = v21;
    result = sub_1D5CFD368(v17);
  }

  v10 = *(v1 + 192);
  if (v10)
  {
    result = sub_1D626FA1C(a1, v10);
  }

  LOBYTE(v31) = *(v1 + 280);
  v11 = *(v1 + 248);
  v28 = *(v1 + 232);
  v29 = v11;
  v12 = *(v1 + 216);
  v26 = *(v1 + 200);
  v27 = v12;
  v30 = *(v1 + 264);
  if (v31 != 254)
  {
    *&v17[0] = v28;
    sub_1D62B5354(&v26, &v18, &qword_1EDF33718, &type metadata for FormatShadow);

    sub_1D62895DC(a1);

    result = sub_1D5D0ABCC(&v26, &qword_1EDF33718, &type metadata for FormatShadow);
  }

  v13 = *(v1 + 512);
  if (v13)
  {
    result = sub_1D6273544(a1, v13);
  }

  if (*(v1 + 520) != 9)
  {
    v14 = *(v1 + 528);
    if ((v14 & 0xF000000000000007) != 0xF000000000000007)
    {
      *&v18 = *(v1 + 528);
      sub_1D5CFCFAC(v14);
      sub_1D62895DC(a1);
    }
  }

  if (*(v1 + 536) != 9)
  {
    v15 = *(v1 + 544);
    if ((v15 & 0xF000000000000007) != 0xF000000000000007)
    {
      *&v18 = *(v1 + 544);
      sub_1D5CFCFAC(v15);
      sub_1D62895DC(a1);
    }
  }

  v16 = *(v1 + 560);
  if (v16)
  {
    return sub_1D6273544(a1, v16);
  }

  return result;
}

uint64_t sub_1D62911AC(uint64_t a1)
{
  v3 = v1[1];
  if (*v1)
  {
    v4 = a1;
    result = sub_1D6290E24(a1);
    if (v2)
    {
      return result;
    }

    a1 = v4;
  }

  return sub_1D62744A4(a1, v3);
}

uint64_t sub_1D62911F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (v7 >> 6 > 1)
  {

    sub_1D6273544(a1, v5);
    if (!v2)
    {
      sub_1D6290E24(a1);
    }
  }

  else
  {

    sub_1D6273544(a1, v5);
  }

  return sub_1D6057D74(v5, v4, v6, v7);
}

uint64_t sub_1D62912C0(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 24) >> 6 <= 1u)
  {
    return sub_1D6273544(a1, v3);
  }

  result = sub_1D6273544(a1, v3);
  if (!v2)
  {
    return sub_1D6290E24(a1);
  }

  return result;
}

uint64_t sub_1D6291314(uint64_t a1)
{
  result = sub_1D6273544(a1, *v1);
  if (!v2)
  {
    return sub_1D6290E24(a1);
  }

  return result;
}

uint64_t sub_1D629134C(unint64_t a1)
{
  v3 = v1;
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

uint64_t sub_1D62914C8(uint64_t result)
{
  v3 = result;
  v4 = *v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v29 = *(v1 + 80);
  v28 = *(v1 + 88);
  v20 = *(v1 + 104);
  v21 = *(v1 + 96);
  v26 = *(v1 + 112);
  v22 = *(v1 + 128);
  v23 = *(v1 + 120);
  v27 = *(v1 + 136);
  v24 = *(v1 + 152);
  v25 = *(v1 + 144);
  v12 = *(v1 + 160);
  if (!v4 || (result = sub_1D62744A4(result, v4), !v2))
  {
    if (v11 >> 11 > 0x1E || (sub_1D5E1DA6C(v5, v6, v7, v8, v9, v10, v11), sub_1D690A374(v3), result = sub_1D5E1DE98(v5, v6, v7, v8, v9, v10, v11), !v2))
    {
      if ((~v29 & 0xF000000000000007) == 0 || (, sub_1D62895DC(v3), result = , !v2))
      {
        if (!v28 || (result = sub_1D6273544(v3, v28), !v2))
        {
          v13 = v27;
          if (v26 != 255 && (v26 & 1) != 0)
          {
            sub_1D6189668(v21, v20, v26);
            sub_1D6189668(v21, v20, v26);
            v14 = sub_1D5E26E28(&unk_1F50F4780);
            v15 = swift_allocObject();
            *(v15 + 16) = v21;
            *(v15 + 24) = v20;
            *(v15 + 32) = v14;
            *(v15 + 40) = 0;
            sub_1D6C4D24C(v15 | 0x3000000000000000);
            sub_1D60107F0(v21, v20, v26);

            v13 = v27;
          }

          if (v13 != 255 && (v13 & 1) != 0)
          {
            sub_1D6189668(v23, v22, v13);
            sub_1D6189668(v23, v22, v13);
            v16 = sub_1D5E26E28(&unk_1F50F47A8);
            v17 = swift_allocObject();
            *(v17 + 16) = v23;
            *(v17 + 24) = v22;
            *(v17 + 32) = v16;
            *(v17 + 40) = 0;
            sub_1D6C4D24C(v17 | 0x3000000000000000);
            sub_1D60107F0(v23, v22, v13);
          }

          if (v12 != 255 && (v12 & 1) != 0)
          {
            sub_1D6189668(v25, v24, v12);
            sub_1D6189668(v25, v24, v12);
            v18 = sub_1D5E26E28(&unk_1F50F47D0);
            v19 = swift_allocObject();
            *(v19 + 16) = v25;
            *(v19 + 24) = v24;
            *(v19 + 32) = v18;
            *(v19 + 40) = 0;
            sub_1D6C4D24C(v19 | 0x3000000000000000);
            sub_1D60107F0(v25, v24, v12);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D629183C(uint64_t a1)
{
  v5 = v1[6];
  v4 = v1[7];
  result = sub_1D627683C(a1, *v1);
  if (!v2)
  {
    if (v5)
    {

      sub_1D6273544(a1, v5);
      sub_1D6273544(a1, v4);
      return sub_1D5CDE22C(v5);
    }
  }

  return result;
}

uint64_t sub_1D62918D4(uint64_t *a1)
{
  v5 = v1[9];
  v4 = v1[10];
  v6 = v1[11];
  v8 = v1[14];
  v7 = v1[15];
  v9 = v1[17];
  if (v5 < 3 || (v10 = v1[8], sub_1D62B5D30(v10, v5), sub_1D6284A20(a1, v5), result = sub_1D5C5D428(v10, v5), !v2))
  {

    sub_1D626DEC0(a1, v6);

    if (!v2)
    {

      sub_1D626DA28(a1, v8);

      sub_1D627AD20(a1, v7);

      sub_1D6284DD8(a1, v9);

      sub_1D626DB9C(a1, v4);
    }
  }

  return result;
}

uint64_t sub_1D6291A5C(uint64_t result)
{
  v3 = result;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 40);
  v8 = v7 >> 5;
  if (v7 >> 5 > 3)
  {
    if (v7 >> 5 <= 5)
    {
      v9 = (v4 >> 59) & 2 | (v4 >> 2) & 1;
      if (v9 <= 1)
      {
        if (!v9)
        {

          sub_1D6290ACC(v3);
          if (v2)
          {
          }

LABEL_25:

          sub_1D6273544(v3, v6);

          v12 = v3;
          v13 = v5;
LABEL_28:
          sub_1D6273544(v12, v13);
        }

LABEL_23:

        sub_1D6290ACC(v3);
        if (v2)
        {
        }

        goto LABEL_25;
      }

LABEL_22:
      if (v9 != 2)
      {
        return result;
      }

      goto LABEL_23;
    }

    if (v8 == 6)
    {
      return sub_1D6291E90(result);
    }
  }

  else
  {
    if (v7 >> 5 <= 1)
    {
      if (!v8)
      {
        return result;
      }

      v9 = (v4 >> 59) & 2 | (v4 >> 2) & 1;
      if (v9 <= 1)
      {

        sub_1D6290ACC(v3);

        if (v2)
        {
          return result;
        }

        sub_1D6273544(v3, v6);

        v12 = v3;
        v13 = v5;
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    if (v8 != 2 && BYTE1(v6) <= 2u)
    {
      if (!BYTE1(v6))
      {

        sub_1D6290ACC(v3);
      }

      if (BYTE1(v6) == 1)
      {
        if (!v4)
        {
          return result;
        }

        v11 = *(v1 + 8);
      }

      else
      {
        v11 = *v1;
      }

      return sub_1D6273544(result, v11);
    }
  }

  return result;
}

uint64_t sub_1D6291CFC(uint64_t result)
{
  v3 = result;
  v4 = v1[2];
  v5 = v1[3];
  v6 = (v1[1] >> 59) & 2 | (v1[1] >> 2) & 1;
  if (v6 <= 1)
  {

    sub_1D6290ACC(v3);

    if (v2)
    {
      return result;
    }

    sub_1D6273544(v3, v4);

    v7 = v3;
    v8 = v5;
  }

  else
  {
    if (v6 != 2)
    {
      return result;
    }

    sub_1D6290ACC(v3);
    if (v2)
    {
    }

    sub_1D6273544(v3, v4);

    v7 = v3;
    v8 = v5;
  }

  sub_1D6273544(v7, v8);
}

uint64_t sub_1D6291E90(uint64_t result)
{
  v3 = result;
  v5 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = *(v1 + 24);
  if (*(v1 + 40))
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 & 0xFFFFFFFE | (v5 >> 1) & 1;
  if (!v8)
  {
    v10 = (v5 >> 59) & 2 | (v5 >> 2) & 1;
    if (v10 <= 1)
    {

      sub_1D6290ACC(v3);

      if (v2)
      {
        return result;
      }

      sub_1D6273544(v3, v4);

      v14 = v3;
      v15 = v6;
      goto LABEL_26;
    }

    if (v10 != 2)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (v8 != 1)
  {
    v11 = *(v1 + 32);
    v12 = (v4 >> 59) & 2 | (v4 >> 2) & 1;
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        return result;
      }
    }

    else if (!v12)
    {

      sub_1D6290ACC(v3);
      v13 = v2;
      if (v2)
      {
      }

LABEL_22:

      sub_1D6273544(v3, v6);
      if (!v13)
      {

        sub_1D6273544(v3, v11);
      }
    }

    sub_1D6290ACC(v3);
    v13 = v2;
    if (v2)
    {
    }

    goto LABEL_22;
  }

  v9 = (v5 >> 59) & 2 | (v5 >> 2) & 1;
  if (v9 <= 1 || v9 == 2)
  {
LABEL_17:

    sub_1D6290ACC(v3);
    if (!v2)
    {

      sub_1D6273544(v3, v4);

      v14 = v3;
      v15 = v6;
LABEL_26:
      sub_1D6273544(v14, v15);
    }
  }

  return result;
}

uint64_t sub_1D6292190(uint64_t result)
{
  if ((*(v1 + 48) & 0xF0) == 0x30)
  {
    return sub_1D62921EC(result);
  }

  return result;
}

uint64_t sub_1D62921EC(uint64_t result)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  if (v5 <= 1)
  {
    if (!*(v1 + 17))
    {
      if (v4 > 0xFD)
      {
        return result;
      }

      v8 = v4 >> 6;
      if (v4 >> 6 > 1)
      {
        if (v8 == 2)
        {
          if (v4)
          {
            sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 0);
            sub_1D5C75A4C(v2, v3, 1);
            v9 = &unk_1F50F4600;
            goto LABEL_55;
          }
        }

        else if (v4)
        {
          sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 0);
          sub_1D5C75A4C(v2, v3, 1);
          v9 = &unk_1F50F4628;
          goto LABEL_55;
        }
      }

      else if (v8)
      {
        if (v4)
        {
          sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 0);
          sub_1D5C75A4C(v2, v3, 1);
          v9 = &unk_1F50F45D8;
          goto LABEL_55;
        }
      }

      else if (v4)
      {
        sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 0);
        sub_1D5C75A4C(v2, v3, 1);
        v9 = &unk_1F50F45B0;
LABEL_55:
        v22 = sub_1D5E26E28(v9);
        v23 = swift_allocObject();
        *(v23 + 16) = v2;
        *(v23 + 24) = v3;
        *(v23 + 32) = v22;
        *(v23 + 40) = 0;
        sub_1D6C4D24C(v23 | 0x3000000000000000);
      }

      v16 = v2;
      v17 = v3;
      v18 = v4;
      v19 = 0;
      return sub_1D5E1E134(v16, v17, v18, v19);
    }

    if (v4 > 0xFD)
    {
      return result;
    }

    v12 = v4 >> 6;
    if (v4 >> 6 > 1)
    {
      if (v12 == 2)
      {
        if (v4)
        {
          sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 1u);
          sub_1D5C75A4C(v2, v3, 1);
          v13 = &unk_1F50F4600;
          goto LABEL_59;
        }
      }

      else if (v4)
      {
        sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 1u);
        sub_1D5C75A4C(v2, v3, 1);
        v13 = &unk_1F50F4628;
        goto LABEL_59;
      }
    }

    else if (v12)
    {
      if (v4)
      {
        sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 1u);
        sub_1D5C75A4C(v2, v3, 1);
        v13 = &unk_1F50F45D8;
        goto LABEL_59;
      }
    }

    else if (v4)
    {
      sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 1u);
      sub_1D5C75A4C(v2, v3, 1);
      v13 = &unk_1F50F45B0;
LABEL_59:
      v24 = sub_1D5E26E28(v13);
      v25 = swift_allocObject();
      *(v25 + 16) = v2;
      *(v25 + 24) = v3;
      *(v25 + 32) = v24;
      *(v25 + 40) = 0;
      sub_1D6C4D24C(v25 | 0x3000000000000000);
    }

    v16 = v2;
    v17 = v3;
    v18 = v4;
    v19 = 1;
    return sub_1D5E1E134(v16, v17, v18, v19);
  }

  if (v5 == 2)
  {
    if (v4 > 0xFD)
    {
      return result;
    }

    v10 = v4 >> 6;
    if (v4 >> 6 > 1)
    {
      if (v10 == 2)
      {
        if (v4)
        {
          sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 2u);
          sub_1D5C75A4C(v2, v3, 1);
          v11 = &unk_1F50F4600;
          goto LABEL_41;
        }
      }

      else if (v4)
      {
        sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 2u);
        sub_1D5C75A4C(v2, v3, 1);
        v11 = &unk_1F50F4628;
        goto LABEL_41;
      }
    }

    else if (v10)
    {
      if (v4)
      {
        sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 2u);
        sub_1D5C75A4C(v2, v3, 1);
        v11 = &unk_1F50F45D8;
        goto LABEL_41;
      }
    }

    else if (v4)
    {
      sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 2u);
      sub_1D5C75A4C(v2, v3, 1);
      v11 = &unk_1F50F45B0;
LABEL_41:
      v14 = sub_1D5E26E28(v11);
      v15 = swift_allocObject();
      *(v15 + 16) = v2;
      *(v15 + 24) = v3;
      *(v15 + 32) = v14;
      *(v15 + 40) = 0;
      sub_1D6C4D24C(v15 | 0x3000000000000000);
    }

    v16 = v2;
    v17 = v3;
    v18 = v4;
    v19 = 2;
    return sub_1D5E1E134(v16, v17, v18, v19);
  }

  if (v5 == 3 && v4 <= 0xFD)
  {
    v6 = v4 >> 6;
    if (v4 >> 6 > 1)
    {
      if (v6 == 2)
      {
        if (v4)
        {
          sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 3u);
          sub_1D5C75A4C(v2, v3, 1);
          v7 = &unk_1F50F4600;
          goto LABEL_47;
        }
      }

      else if (v4)
      {
        sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 3u);
        sub_1D5C75A4C(v2, v3, 1);
        v7 = &unk_1F50F4628;
        goto LABEL_47;
      }
    }

    else if (v6)
    {
      if (v4)
      {
        sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 3u);
        sub_1D5C75A4C(v2, v3, 1);
        v7 = &unk_1F50F45D8;
        goto LABEL_47;
      }
    }

    else if (v4)
    {
      sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 3u);
      sub_1D5C75A4C(v2, v3, 1);
      v7 = &unk_1F50F45B0;
LABEL_47:
      v20 = sub_1D5E26E28(v7);
      v21 = swift_allocObject();
      *(v21 + 16) = v2;
      *(v21 + 24) = v3;
      *(v21 + 32) = v20;
      *(v21 + 40) = 0;
      sub_1D6C4D24C(v21 | 0x3000000000000000);
    }

    v16 = v2;
    v17 = v3;
    v18 = v4;
    v19 = 3;
    return sub_1D5E1E134(v16, v17, v18, v19);
  }

  return result;
}

uint64_t sub_1D629274C(uint64_t result)
{
  v2 = *(v1 + 8);
  if (v2 >= 2)
  {
    return sub_1D6284A20(result, v2);
  }

  return result;
}

unint64_t sub_1D6292770(uint64_t *a1)
{
  v3 = v1;
  swift_beginAccess();
  v15 = *(v1 + 32);
  sub_1D5C82CD8(v15);
  sub_1D626D654(a1);
  if (v2)
  {
    return sub_1D5C92A8C(v15);
  }

  sub_1D5C92A8C(v15);
  swift_beginAccess();
  v6 = *(v1 + 48);

  sub_1D6274044(a1, v6);

  swift_beginAccess();
  v7 = v3[8];
  if (v7 >> 62 == 1)
  {
    v8 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v3[8]);
    sub_1D5EB1500(v8);

    sub_1D6288D68(a1, v8, v9);
    sub_1D5EB15C4(v8);

    sub_1D5EB15C4(v7);
  }

  if (v3[10])
  {
    sub_1D6292A8C(a1);
  }

  v10 = v3[15];
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

  swift_beginAccess();
  if (v3[16])
  {

    sub_1D6292CB8(a1);
  }

  if (v3[17])
  {
    v13 = v3[21];

    sub_1D5DEA234(v13);

    sub_1D626D2A0(a1);

    sub_1D5CBF568(v13);
  }

  swift_beginAccess();
  v14 = v3[11];

  sub_1D626DB9C(a1, v14);
}

uint64_t sub_1D6292A8C(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(v1 + 48);

  sub_1D6270510(a1, v4);

  if (!v2)
  {
    v6 = *(v1 + 56);
    if (v6)
    {
      sub_1D6273544(a1, v6);
    }

    v7 = *(v1 + 64);
    if (v7)
    {
      sub_1D626FA1C(a1, v7);
    }

    v34 = *(v1 + 176);
    v8 = *(v1 + 144);
    v31 = *(v1 + 128);
    v32 = v8;
    v33 = *(v1 + 160);
    v9 = *(v1 + 112);
    v30[0] = *(v1 + 96);
    v30[1] = v9;
    if (v34 != 254)
    {
      *&v19 = v31;
      swift_retain_n();
      sub_1D62895DC(a1);

      sub_1D5D0ABCC(v30, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    v10 = *(v1 + 232);
    v11 = *(v1 + 248);
    v12 = *(v1 + 200);
    v19 = *(v1 + 184);
    v20 = v12;
    v21 = *(v1 + 216);
    v22 = v10;
    v13 = *(v1 + 296);
    v14 = *(v1 + 328);
    v27 = *(v1 + 312);
    v28 = v14;
    v15 = *(v1 + 264);
    v16 = *(v1 + 280);
    v23 = v11;
    v24 = v15;
    v29 = *(v1 + 344);
    v25 = v16;
    v26 = v13;
    result = sub_1D60081E0(&v19);
    if (result != 1)
    {
      v17[8] = v27;
      v17[9] = v28;
      v18 = v29;
      v17[4] = v23;
      v17[5] = v24;
      v17[6] = v25;
      v17[7] = v26;
      v17[0] = v19;
      v17[1] = v20;
      v17[2] = v21;
      v17[3] = v22;
      result = sub_1D62B4E2C(v17);
      if (result > 1)
      {
        if (result == 2)
        {
          sub_1D5D04BC4(v17);
          return sub_1D62914C8(a1);
        }
      }

      else
      {
        return sub_1D5D04BC4(v17);
      }
    }
  }

  return result;
}

uint64_t sub_1D6292CB8(uint64_t *a1)
{
  v3 = v1;
  if (!*(v1 + 16) || (result = sub_1D673266C(a1), !v2))
  {
    v6 = *(v1 + 24);
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = v2;
    swift_beginAccess();
    v8 = *(v6 + 72);
    if (v8)
    {

      sub_1D62707E8(a1, v8);

      if (v2)
      {
        return result;
      }

      v7 = 0;
    }

    swift_beginAccess();
    v9 = *(v6 + 88);

    v2 = v7;
    sub_1D6272D88(a1, v9);

    if (!v7)
    {
LABEL_8:
      swift_beginAccess();
      v11 = *(v3 + 32);
      sub_1D5C82CD8(v11);
      sub_1D626D654(a1);
      result = sub_1D5C92A8C(v11);
      if (!v2)
      {
        swift_beginAccess();
        v10 = *(v3 + 40);

        sub_1D6274044(a1, v10);
      }
    }
  }

  return result;
}

uint64_t sub_1D6292E58(uint64_t result)
{
  v3 = *v1;
  if (*(v1 + 64) > 1u)
  {
    if (*(v1 + 64) == 2)
    {
      v5 = *(v1 + 48);
      v4 = *(v1 + 56);
      v6 = result;
      result = sub_1D627683C(result, v3);
      if (!v2)
      {
        if (v5)
        {

          sub_1D6273544(v6, v5);
          sub_1D6273544(v6, v4);
          return sub_1D5CDE22C(v5);
        }
      }
    }
  }

  else if (*(v1 + 64))
  {
    return sub_1D6276AB0(result, v3);
  }

  return result;
}

uint64_t sub_1D6292F10(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(v1 + 48);

  sub_1D6283774(a1, v4);
  if (v2)
  {
  }

  v6 = *(v1 + 56);
  v7 = *(v1 + 104);
  v27 = *(v1 + 120);
  v8 = *(v1 + 72);
  v25[0] = v6;
  v25[1] = v8;
  v25[2] = *(v1 + 88);
  v26 = v7;
  v9 = v6;
  if (v27 <= 1u)
  {
    if (v27)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 104);
      v21 = *(v1 + 88);
      v22 = v11;
      LOBYTE(v23) = *(v1 + 120);
      v19 = *(v1 + 56);
      v20 = v10;
      sub_1D619916C(&v19, v18);
      sub_1D6276AB0(a1, v9);
      goto LABEL_10;
    }
  }

  else
  {
    if (v27 == 2)
    {
      v15 = v26;
      v16 = *(v1 + 72);
      v17 = *(v1 + 104);
      v21 = *(v1 + 88);
      v22 = v17;
      LOBYTE(v23) = *(v1 + 120);
      v19 = *(v1 + 56);
      v20 = v16;
      sub_1D619916C(&v19, v18);
      sub_1D627683C(a1, v9);
      if (v15)
      {

        sub_1D6273544(a1, v15);
        sub_1D6273544(a1, *(&v15 + 1));
        sub_1D5CDE22C(v15);
      }

      goto LABEL_10;
    }

    if (v27 == 3)
    {
LABEL_10:
      result = sub_1D5D0ABCC(v25, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    }
  }

  v12 = *(v1 + 128);
  if (v12)
  {
    result = sub_1D626FA1C(a1, v12);
  }

  v24 = *(v1 + 216);
  v13 = *(v1 + 184);
  v21 = *(v1 + 168);
  v22 = v13;
  v23 = *(v1 + 200);
  v14 = *(v1 + 152);
  v19 = *(v1 + 136);
  v20 = v14;
  if (v24 != 254)
  {
    v18[0] = v21;
    swift_retain_n();
    sub_1D62895DC(a1);

    return sub_1D5D0ABCC(&v19, &qword_1EDF33718, &type metadata for FormatShadow);
  }

  return result;
}

uint64_t sub_1D62931B8(uint64_t a1)
{

  sub_1D62895DC(a1);
}

uint64_t sub_1D629320C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = *(v1 + 4);
  v26 = *(v1 + 3);
  v27 = v6;
  v28 = *(v1 + 80);
  v7 = *(v1 + 2);
  v24 = *(v1 + 1);
  v25 = v7;
  v8 = v1[11];
  v9 = *(v1 + 7);
  v29[0] = *(v1 + 6);
  v29[1] = v9;
  v10 = *(v1 + 8);
  v11 = *(v1 + 9);
  v12 = *(v1 + 10);
  v33 = *(v1 + 176);
  v31 = v11;
  v32 = v12;
  v30 = v10;
  v22 = v5;
  v23 = v4;

  sub_1D6EE4610(a1);
  if (v2)
  {
  }

  v14 = v24;
  if (v28 <= 1u)
  {
    if (!v28)
    {
      goto LABEL_11;
    }

    v19 = v26;
    v20 = v27;
    v21 = v28;
    v17 = v24;
    v18 = v25;
    sub_1D619916C(&v17, v16);
    sub_1D6276AB0(a1, v14);
LABEL_10:
    result = sub_1D5D0ABCC(&v24, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
LABEL_11:
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v28 != 2)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_12:
    result = sub_1D626FA1C(a1, v8);
    goto LABEL_13;
  }

  v15 = v27;
  v19 = v26;
  v20 = v27;
  v21 = v28;
  v17 = v24;
  v18 = v25;
  sub_1D619916C(&v17, v16);
  sub_1D627683C(a1, v14);
  if (v15)
  {

    sub_1D6273544(a1, v15);
    sub_1D6273544(a1, *(&v15 + 1));
    sub_1D5CDE22C(v15);
    goto LABEL_10;
  }

  result = sub_1D5D0ABCC(&v24, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
  if (v8)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v33 != 254)
  {
    *&v17 = v30;
    swift_retain_n();
    sub_1D62895DC(a1);

    return sub_1D5D0ABCC(v29, &qword_1EDF33718, &type metadata for FormatShadow);
  }

  return result;
}

uint64_t sub_1D62934C4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v7 = *(v1 + 6);
  v30 = *(v1 + 5);
  v31 = v7;
  v32 = *(v1 + 7);
  v33 = *(v1 + 128);
  v8 = *(v1 + 4);
  v29[0] = *(v1 + 3);
  v29[1] = v8;
  v9 = v1[17];
  *&v18 = v5;
  *(&v18 + 1) = v4;

  sub_1D6EE4610(a1);

  if (!v2)
  {
    if (v6)
    {
      sub_1D626FA1C(a1, v6);
    }

    if (v33 != 254)
    {
      *&v18 = v30;
      swift_retain_n();
      sub_1D62895DC(a1);

      sub_1D5D0ABCC(v29, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    if (v9)
    {
      sub_1D6273544(a1, v9);
    }

    v11 = *(v1 + 37);
    v26 = *(v1 + 35);
    v27 = v11;
    v28 = *(v1 + 156);
    v12 = *(v1 + 29);
    v22 = *(v1 + 27);
    v23 = v12;
    v13 = *(v1 + 33);
    v24 = *(v1 + 31);
    v25 = v13;
    v14 = *(v1 + 21);
    v18 = *(v1 + 19);
    v19 = v14;
    v15 = *(v1 + 25);
    v20 = *(v1 + 23);
    v21 = v15;
    result = sub_1D60081E0(&v18);
    if (result != 1)
    {
      v16[8] = v26;
      v16[9] = v27;
      v17 = v28;
      v16[4] = v22;
      v16[5] = v23;
      v16[6] = v24;
      v16[7] = v25;
      v16[0] = v18;
      v16[1] = v19;
      v16[2] = v20;
      v16[3] = v21;
      result = sub_1D62B4E2C(v16);
      if (result > 1)
      {
        if (result == 2)
        {
          sub_1D5D04BC4(v16);
          return sub_1D62914C8(a1);
        }
      }

      else
      {
        return sub_1D5D04BC4(v16);
      }
    }
  }

  return result;
}

uint64_t sub_1D62936F0(uint64_t result)
{
  if (*(v1 + 16) >= 0xCu)
  {
    return sub_1D6EE4610(result);
  }

  return result;
}

uint64_t sub_1D6293788(uint64_t result)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 <= 3)
  {
    if (v4 < 2 || v4 != 2)
    {
      return result;
    }

    v6 = *(*((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 24);
    v7 = result;

    sub_1D6284CF8(v7, v6);
    if (!v2)
    {

      sub_1D6293788(v7);
    }
  }

  if (v4 != 4)
  {
    if (v4 != 5)
    {
      return result;
    }

    v8 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v9 = result;
    result = sub_1D6293788(result);
    if (v2 || !v8)
    {
      return result;
    }

    sub_1D62938C4(v9);
  }

  v10 = result;
  result = sub_1D6293788(result);
  if (!v2)
  {
    return sub_1D6293788(v10);
  }

  return result;
}

unint64_t sub_1D62938C4(unint64_t a1)
{
  swift_beginAccess();
  v4 = *(v1 + 48);

  sub_1D6283A60(a1, v4);
  if (v2)
  {
  }

  v6 = *(v1 + 56);
  if (v6)
  {
    sub_1D6273544(a1, v6);
  }

  swift_beginAccess();
  v7 = *(v1 + 64);
  if (v7)
  {

    sub_1D627A76C(a1, v7);
  }

  if ((~*(v1 + 72) & 0xF000000000000007) != 0)
  {
    *&v16[0] = *(v1 + 72);

    sub_1D62891F0(a1);
  }

  v8 = *(v1 + 80);
  if (v8)
  {
    sub_1D626FA1C(a1, v8);
  }

  result = *(v1 + 120);
  if (result >= 3)
  {
    if (result != 3)
    {
      v9 = *(result + 16);
      v10 = *(result + 24);
      v11 = *(v1 + 120);
      sub_1D5D0AF9C(result);
      sub_1D5D0AFBC(v9);
      sub_1D5D0AFBC(v10);
      sub_1D6288794(a1, v9, v10);
      sub_1D5D0AFCC(v9);
      sub_1D5D0AFCC(v10);
      result = sub_1D5D0AFAC(v11);
    }
  }

  else
  {
    result = sub_1D5D0AFAC(result);
  }

  v17 = *(v1 + 224);
  v12 = *(v1 + 192);
  v16[2] = *(v1 + 176);
  v16[3] = v12;
  v16[4] = *(v1 + 208);
  v13 = *(v1 + 160);
  v16[0] = *(v1 + 144);
  v16[1] = v13;
  if (v17 != 254)
  {
    swift_retain_n();
    sub_1D62895DC(a1);

    result = sub_1D5D0ABCC(v16, &qword_1EDF33718, &type metadata for FormatShadow);
  }

  if ((~*(v1 + 232) & 0xF000000000000007) != 0)
  {

    sub_1D62895DC(a1);
  }

  v15 = *(v1 + 248);
  v14 = *(v1 + 256);
  if (v15)
  {
    if (v15 == 1)
    {
      return result;
    }

    sub_1D62B5D88(v15);

    sub_1D6276054(a1, v15);
  }

  else
  {
  }

  if (v14)
  {

    sub_1D6276054(a1, v14);
  }

  return sub_1D62B5D44(v15);
}

uint64_t sub_1D6293C0C(uint64_t a1)
{
  v4 = v1[7];
  v33[6] = v1[6];
  v33[7] = v4;
  v34 = *(v1 + 128);
  v5 = v1[3];
  v33[2] = v1[2];
  v33[3] = v5;
  v6 = v1[5];
  v33[4] = v1[4];
  v33[5] = v6;
  v7 = v1[1];
  v33[0] = *v1;
  v33[1] = v7;
  if (sub_1D6011234(v33) == 1)
  {
    sub_1D5D756B8(v33);
    v8 = v1[3];
    v26 = v1[2];
    v27 = v8;
    v9 = v1[1];
    v24 = *v1;
    v25 = v9;
    v32 = *(v1 + 128);
    v10 = v1[7];
    v30 = v1[6];
    v31 = v10;
    v11 = v1[5];
    v28 = v1[4];
    v29 = v11;
    sub_1D5D756B8(&v24);

    sub_1D62895DC(a1);
  }

  else
  {
    v13 = sub_1D5D756B8(v33);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    v26 = v13[2];
    v27 = v14;
    v24 = v16;
    v25 = v15;
    v17 = v13[7];
    v19 = v13[4];
    v18 = v13[5];
    v30 = v13[6];
    v31 = v17;
    v28 = v19;
    v29 = v18;
    v20 = sub_1D6011280(&v24);
    v21 = sub_1D5D756C8(&v24);
    if (v20 == 1)
    {
      return sub_1D627683C(a1, v21[14]);
    }

    else
    {
      v23 = v21[6];
      v22 = v21[7];
      result = sub_1D627683C(a1, *v21);
      if (!v2)
      {
        if (v23)
        {

          sub_1D6273544(a1, v23);
          sub_1D6273544(a1, v22);
          return sub_1D5CDE22C(v23);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D6293DB8(uint64_t a1)
{
  v4 = *(v1 + 112);
  v26[6] = *(v1 + 96);
  v26[7] = v4;
  v27 = *(v1 + 128);
  v5 = *(v1 + 48);
  v26[2] = *(v1 + 32);
  v26[3] = v5;
  v6 = *(v1 + 80);
  v26[4] = *(v1 + 64);
  v26[5] = v6;
  v7 = *(v1 + 16);
  v26[0] = *v1;
  v26[1] = v7;
  v8 = sub_1D5F78DC4(v26);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = sub_1D5DEA32C(v26);
      v22 = *(v9 + 80);
      v23 = *(v9 + 96);
      v24 = *(v9 + 112);
      v25 = *(v9 + 128);
      v18 = *(v9 + 16);
      v19 = *(v9 + 32);
      v20 = *(v9 + 48);
      v21 = *(v9 + 64);
      v17 = *v9;
      return sub_1D6293C0C(a1);
    }

    else
    {
      return sub_1D5DEA32C(v26);
    }
  }

  else
  {
    v11 = sub_1D5DEA32C(v26);
    sub_1D5F78F40(v11, v16);
    v21 = v16[4];
    v22 = v16[5];
    v23 = v16[6];
    v24 = v16[7];
    v17 = v16[0];
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    v12 = sub_1D6011280(&v17);
    v13 = sub_1D5D756C8(&v17);
    if (v12 == 1)
    {
      return sub_1D627683C(a1, v13[14]);
    }

    else
    {
      v15 = v13[6];
      v14 = v13[7];
      result = sub_1D627683C(a1, *v13);
      if (!v2 && v15)
      {

        sub_1D6273544(a1, v15);
        sub_1D6273544(a1, v14);
        return sub_1D5CDE22C(v15);
      }
    }
  }

  return result;
}

uint64_t sub_1D6293F70(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[7];
  v44 = v1[6];
  v45 = v5;
  v6 = v1[1];
  v7 = v1[3];
  v40 = v1[2];
  v41 = v7;
  v8 = v1[3];
  v9 = v1[5];
  v42 = v1[4];
  v43 = v9;
  v10 = v1[1];
  v38 = *v1;
  v39 = v10;
  v11 = v1[7];
  v47[6] = v44;
  v47[7] = v11;
  v47[2] = v40;
  v47[3] = v8;
  v47[4] = v42;
  v47[5] = v4;
  v46 = *(v1 + 128);
  v48 = *(v1 + 128);
  v47[0] = v38;
  v47[1] = v6;
  if (sub_1D6011234(v47) == 1)
  {
    v27[0] = *sub_1D5D756B8(v47);
    v31 = v40;
    v32 = v41;
    v29 = v38;
    v30 = v39;
    v37 = v46;
    v35 = v44;
    v36 = v45;
    v33 = v42;
    v34 = v43;
    sub_1D5D756B8(&v29);

    sub_1D62895DC(a1);
  }

  else
  {
    v13 = sub_1D5D756B8(v47);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    v28[2] = v13[2];
    v28[3] = v14;
    v28[0] = v16;
    v28[1] = v15;
    v17 = v13[7];
    v19 = v13[4];
    v18 = v13[5];
    v28[6] = v13[6];
    v28[7] = v17;
    v28[4] = v19;
    v28[5] = v18;
    if (sub_1D6011280(v28) == 1)
    {
      v20 = *(sub_1D5D756C8(v28) + 112);
      v37 = v46;
      v35 = v44;
      v36 = v45;
      v31 = v40;
      v32 = v41;
      v33 = v42;
      v34 = v43;
      v29 = v38;
      v30 = v39;
      v21 = sub_1D5D756B8(&v29);
      sub_1D62B73AC(v21, v27);
      sub_1D627683C(a1, v20);
    }

    else
    {
      v22 = sub_1D5D756C8(v28);
      v23 = *v22;
      v25 = v22[6];
      v24 = v22[7];
      v29 = v38;
      v30 = v39;
      v35 = v44;
      v36 = v45;
      v37 = v46;
      v31 = v40;
      v32 = v41;
      v33 = v42;
      v34 = v43;
      v26 = sub_1D5D756B8(&v29);
      sub_1D62B73AC(v26, v27);
      sub_1D627683C(a1, v23);
      if (!v2)
      {
        if (v25)
        {

          sub_1D6273544(a1, v25);
          sub_1D6273544(a1, v24);
          sub_1D5CDE22C(v25);
        }
      }
    }

    return sub_1D62B7408(&v38);
  }
}

uint64_t sub_1D62941E4(uint64_t a1)
{
  sub_1D5F78F40(v1, v9);
  sub_1D5F78F40(v9, v10);
  v11[4] = v10[4];
  v11[5] = v10[5];
  v11[6] = v10[6];
  v11[7] = v10[7];
  v11[0] = v10[0];
  v11[1] = v10[1];
  v11[2] = v10[2];
  v11[3] = v10[3];
  v4 = sub_1D6011280(v11);
  v5 = sub_1D5D756C8(v11);
  if (v4 == 1)
  {
    return sub_1D627683C(a1, v5[14]);
  }

  v8 = v5[6];
  v7 = v5[7];
  result = sub_1D627683C(a1, *v5);
  if (!v2)
  {
    if (v8)
    {

      sub_1D6273544(a1, v8);
      sub_1D6273544(a1, v7);
      return sub_1D5CDE22C(v8);
    }
  }

  return result;
}

unint64_t sub_1D62942F4(unint64_t a1)
{
  v4 = *(v1 + 8);

  sub_1D6287A8C(a1);

  if (!v2)
  {
    if (v4)
    {
      return sub_1D62938C4(a1);
    }
  }

  return result;
}

uint64_t sub_1D6294364(uint64_t *a1)
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
    sub_1D62938C4(a1);
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

  sub_1D6287A8C(a1);

  result = swift_beginAccess();
  v10 = v3[11];
  if (v10 >> 62 == 1)
  {
    v11 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v12 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v3[11]);
    sub_1D5EB1500(v11);

    sub_1D6288D68(a1, v11, v12);
    sub_1D5EB15C4(v11);

    result = sub_1D5EB15C4(v10);
  }

  if (v3[18])
  {
    v13 = v3[22];

    sub_1D5DEA234(v13);

    sub_1D626D2A0(a1);

    sub_1D5CBF568(v13);
  }

  return result;
}

uint64_t sub_1D6294640(uint64_t result)
{
  v3 = result;
  v5 = *v1;
  v4 = v1[1];
  if (!*v1 || (, sub_1D6276054(v3, v5), result = , !v2))
  {
    if (v4)
    {

      sub_1D6276054(v3, v4);
    }
  }

  return result;
}

uint64_t sub_1D62946C0(uint64_t result)
{
  v3 = *v1;
  switch(*(v1 + 32))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
      goto LABEL_2;
    case 0xC:
      return result;
    default:
      v5 = *(v1 + 16);
      v4 = *(v1 + 24);
      v6 = *(v1 + 8);
      v7 = result;
      result = sub_1D6273544(result, v3);
      if (!v2)
      {
        sub_1D6273544(v7, v6);
        sub_1D6273544(v7, v5);
        result = v7;
        v3 = v4;
LABEL_2:
        result = sub_1D6273544(result, v3);
      }

      break;
  }

  return result;
}

uint64_t sub_1D6294750(uint64_t a1)
{
  v3 = *v1;

  sub_1D6276054(a1, v3);
}

uint64_t sub_1D62947BC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v21 = *(v1 + 16);
  v5 = *(v1 + 104);
  v19[2] = *(v1 + 88);
  v19[3] = v5;
  v19[4] = *(v1 + 120);
  v20 = *(v1 + 136);
  v6 = *(v1 + 72);
  v19[0] = *(v1 + 56);
  v19[1] = v6;
  v7 = *(v1 + 144);
  v8 = *(v1 + 176);
  v9 = *(v1 + 184);
  v11 = *(v1 + 192);
  v10 = *(v1 + 200);
  v12 = *(v1 + 208);

  sub_1D6EE4610(a1);
  if (v2)
  {
  }

  v18 = v8;

  if ((~v21 & 0xF000000000000007) != 0)
  {

    v14 = a1;
    sub_1D62891F0(a1);

    v15 = v4;
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = a1;
  v15 = v4;
  if (v4)
  {
LABEL_7:
    sub_1D626FA1C(v14, v15);
  }

LABEL_8:
  if (v20 != 254)
  {
    swift_retain_n();
    sub_1D62895DC(v14);

    sub_1D5D0ABCC(v19, &qword_1EDF33718, &type metadata for FormatShadow);
  }

  if ((~v7 & 0xF000000000000007) != 0)
  {

    sub_1D62895DC(v14);
  }

  result = v18;
  if (v18 >= 3)
  {
    if (v18 != 3)
    {
      v16 = *(v18 + 16);
      v17 = *(v18 + 24);
      sub_1D5D0AF9C(v18);
      sub_1D5D0AFBC(v16);
      sub_1D5D0AFBC(v17);
      sub_1D6288794(v14, v16, v17);
      sub_1D5D0AFCC(v16);
      sub_1D5D0AFCC(v17);
      result = sub_1D5D0AFAC(v18);
    }
  }

  else
  {
    result = sub_1D5D0AFAC(v18);
  }

  if (v9)
  {
    result = sub_1D6273544(v14, v9);
  }

  if (v11)
  {
    result = sub_1D627A76C(v14, v11);
  }

  if (v10)
  {
    if (v10 == 1)
    {
      return result;
    }

    sub_1D62B5D88(v10);

    sub_1D6276054(v14, v10);
  }

  else
  {
  }

  if (v12)
  {

    sub_1D6276054(v14, v12);
  }

  return sub_1D62B5D44(v10);
}

unint64_t sub_1D6294B3C(unint64_t result)
{
  v2 = *v1;
  if (*v1 >= 3)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24);
    v5 = result;
    sub_1D5D0AFBC(v3);
    sub_1D5D0AFBC(v4);
    sub_1D6288794(v5, v3, v4);
    sub_1D5D0AFCC(v3);
    return sub_1D5D0AFCC(v4);
  }

  return result;
}

uint64_t sub_1D6294BE0(uint64_t *a1)
{
  v3 = v1;
  v18 = v1[4];
  sub_1D5C82CD8(v18);
  sub_1D626D654(a1);
  if (v2)
  {
    return sub_1D5C92A8C(v18);
  }

  sub_1D5C92A8C(v18);
  swift_beginAccess();
  v6 = v1[6];

  sub_1D6274044(a1, v6);

  if (v3[7])
  {
    sub_1D62989EC(a1, sub_1D6270360);
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

  v10 = v3[9];
  if (v10 < 0)
  {
    v15 = v10 & 0x7FFFFFFFFFFFFFFFLL;
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);

    sub_1D6288C94(a1, v16, v17);
  }

  result = swift_beginAccess();
  v11 = v3[11];
  if (v11 >> 62 == 1)
  {
    v12 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v3[11]);
    sub_1D5EB1500(v12);

    sub_1D6288D68(a1, v12, v13);
    sub_1D5EB15C4(v12);

    result = sub_1D5EB15C4(v11);
  }

  if (v3[17])
  {
    v14 = v3[21];

    sub_1D5DEA234(v14);

    sub_1D626D2A0(a1);

    sub_1D5CBF568(v14);
  }

  return result;
}

uint64_t sub_1D6294F28(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 104);
  v9[2] = *(v1 + 88);
  v9[3] = v6;
  v9[4] = *(v1 + 120);
  v10 = *(v1 + 136);
  v7 = *(v1 + 72);
  v9[0] = *(v1 + 56);
  v9[1] = v7;

  sub_1D6EE4610(a1);

  if (!v2)
  {
    if (v5)
    {
      result = sub_1D6273544(a1, v5);
    }

    if (v4)
    {
      result = sub_1D626FA1C(a1, v4);
    }

    if (v10 != 254)
    {
      swift_retain_n();
      sub_1D62895DC(a1);

      return sub_1D5D0ABCC(v9, &qword_1EDF33718, &type metadata for FormatShadow);
    }
  }

  return result;
}

uint64_t sub_1D6295048(uint64_t *a1)
{
  v4 = v1[9];
  v5 = v1[11];
  v7 = v1[13];
  v6 = v1[14];
  if (!v1[10] || (result = sub_1D6295134(a1), !v2))
  {

    sub_1D626DEC0(a1, v5);

    if (!v2)
    {

      sub_1D626DA28(a1, v7);

      sub_1D627AD20(a1, v6);

      sub_1D626DB9C(a1, v4);
    }
  }

  return result;
}

unint64_t sub_1D6295134(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v53, v10);
  v54 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v55 = &v52 - v14;
  v15 = type metadata accessor for FormatItemNodeAction();
  v67 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v52 - v21;
  if ((*(v1 + 112) & 0xFE) != 0x7E)
  {
    v23 = v18;
    v24 = &v52 - v21;
    v25 = a1;
    v26 = *(v1 + 48);
    if ((v26 & 0xF000000000000007) == 0xF000000000000007)
    {
      a1 = v25;
      v22 = &v52 - v21;
      v18 = v23;
    }

    else
    {
      v52 = v6;
      *&v62 = v26;

      sub_1D62895DC(v25);
      if (v2)
      {
      }

      a1 = v25;
      v22 = v24;
      v18 = v23;
      v6 = v52;
    }
  }

  v28 = *(v1 + 176);
  if (v28 != 255)
  {
    v29 = *(v1 + 136);
    v59 = *(v1 + 120);
    v60 = v29;
    *v61 = *(v1 + 152);
    *&v61[16] = *(v1 + 168);
    v61[24] = v28;
    v62 = v59;
    v63 = v29;
    v64 = *v61;
    v65 = *&v61[16];
    v66 = v28;
    sub_1D62B5E68(&v62, &v56);
    sub_1D628D2F4(a1);
    if (v2)
    {
      v56 = v59;
      v57 = v60;
      v58[0] = *v61;
      *(v58 + 9) = *&v61[9];
      return sub_1D62B5EC4(&v56);
    }

    v56 = v59;
    v57 = v60;
    v58[0] = *v61;
    *(v58 + 9) = *&v61[9];
    sub_1D62B5EC4(&v56);
  }

  sub_1D5C00D70(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v22, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  if ((*(v67 + 6))(v22, 1, v15) != 1)
  {
    sub_1D62B50EC(v22, v18, type metadata accessor for FormatItemNodeAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 2) < 6)
    {
LABEL_14:
      sub_1D62B51D0(v22, type metadata accessor for FormatItemNodeAction);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload)
    {
      v42 = v18;
      v43 = v55;
      sub_1D5D5E33C(v42, v55, type metadata accessor for FormatCommandOpenURL);
      v44 = v54;
      sub_1D62B50EC(v43, v54, type metadata accessor for FormatCommandOpenURL);
      v45 = swift_getEnumCaseMultiPayload();
      if (!v45)
      {
        sub_1D62B51D0(v43, type metadata accessor for FormatCommandOpenURL);
        sub_1D62B51D0(v44, type metadata accessor for FormatCommandOpenURL);
        goto LABEL_14;
      }

      v41 = v1;
      if (v45 == 1)
      {
        sub_1D62B51D0(v43, type metadata accessor for FormatCommandOpenURL);
        sub_1D62B51D0(v44, type metadata accessor for FormatCommandOpenURL);
      }

      else
      {
        v67 = v22;
        v47 = *v44;
        v46 = v44[1];
        v48 = v44[2];
        *&v62 = v47;
        *(&v62 + 1) = v46;
        *&v63 = v48;
        LOBYTE(v59) = 6;

        v49 = sub_1D703E0C8(&v62, &v59);
        if (v2)
        {
          sub_1D62B51D0(v55, type metadata accessor for FormatCommandOpenURL);

          v22 = v67;
LABEL_40:
          v37 = type metadata accessor for FormatItemNodeAction;
          v38 = v22;
          return sub_1D62B51D0(v38, v37);
        }

        v50 = v49;

        v51 = swift_allocObject();
        *(v51 + 16) = v47;
        *(v51 + 24) = v46;
        *(v51 + 32) = v50;
        *(v51 + 40) = 0;
        sub_1D6C4D24C(v51 | 0x3000000000000000);

        sub_1D62B51D0(v55, type metadata accessor for FormatCommandOpenURL);
        v22 = v67;
      }
    }

    else
    {
      v41 = v1;
      sub_1D62B5F18(v18, &v62);
      sub_1D62B5F18(&v62, &v59);
      sub_1D6295E98(a1);
      if (v2)
      {
        sub_1D62B5F74(&v62);
        goto LABEL_40;
      }

      sub_1D62B5F74(&v62);
    }

    v1 = v41;
    goto LABEL_14;
  }

  sub_1D5B6EF64(v22, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
LABEL_15:
  v31 = *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
  v32 = v1;
  if (v31 >= 3)
  {
    if (v31 != 3)
    {
      v39 = *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
      v40 = *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
      sub_1D62B5DD0(v31);
      sub_1D6273544(a1, v39);
      if (v2)
      {
        return sub_1D62B5E14(v39);
      }

      sub_1D6273544(a1, v40);
      v3 = 0;
      sub_1D62B5E14(v39);
    }
  }

  else
  {
    sub_1D62B5E14(v31);
  }

  v33 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
  swift_beginAccess();
  v34 = *(v32 + v33);
  v35 = *(v34 + 16);

  if (!v35)
  {
  }

  v36 = 0;
  while (v36 < *(v34 + 16))
  {
    sub_1D62B50EC(v34 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v36, v9, type metadata accessor for FormatItemNodeStyle.Selector);
    sub_1D62960AC(a1);
    if (v3)
    {

      v37 = type metadata accessor for FormatItemNodeStyle.Selector;
      v38 = v9;
      return sub_1D62B51D0(v38, v37);
    }

    ++v36;
    result = sub_1D62B51D0(v9, type metadata accessor for FormatItemNodeStyle.Selector);
    if (v35 == v36)
    {
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D6295934(uint64_t *a1)
{
  v3 = v1;
  v14 = v1[6];
  sub_1D5C82CD8(v14);
  sub_1D626D654(a1);
  if (v2)
  {
    return sub_1D5C92A8C(v14);
  }

  sub_1D5C92A8C(v14);
  swift_beginAccess();
  v6 = v1[8];

  sub_1D6274044(a1, v6);

  swift_beginAccess();
  v7 = v3[9];

  sub_1D626DEC0(a1, v7);

  swift_beginAccess();
  v8 = v3[11];

  sub_1D626DA28(a1, v8);

  swift_beginAccess();
  v9 = v3[14];
  if (v9 >> 62 == 1)
  {
    v10 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v3[14]);
    sub_1D5EB1500(v10);

    sub_1D6288D68(a1, v10, v11);
    sub_1D5EB15C4(v10);

    sub_1D5EB15C4(v9);
  }

  swift_beginAccess();
  v12 = v3[15];

  sub_1D62828D8(a1, v12);

  if (v3[16])
  {
    v13 = v3[20];

    sub_1D5DEA234(v13);

    sub_1D626D2A0(a1);

    sub_1D5CBF568(v13);
  }

  return result;
}

uint64_t sub_1D6295BD4(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v24[-v11];
  v13 = type metadata accessor for FormatItemNodeAction();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D62B50EC(v3, v16, type metadata accessor for FormatItemNodeAction);
  result = swift_getEnumCaseMultiPayload();
  if ((result - 2) >= 6)
  {
    if (!result)
    {
      sub_1D62B5F18(v16, v25);
      sub_1D62B5F18(v25, v24);
      sub_1D6295E98(a1);
      return sub_1D62B5F74(v25);
    }

    sub_1D5D5E33C(v16, v12, type metadata accessor for FormatCommandOpenURL);
    sub_1D62B50EC(v12, v8, type metadata accessor for FormatCommandOpenURL);
    if (swift_getEnumCaseMultiPayload() <= 1)
    {
      sub_1D62B51D0(v12, type metadata accessor for FormatCommandOpenURL);
      v12 = v8;
      return sub_1D62B51D0(v12, type metadata accessor for FormatCommandOpenURL);
    }

    v19 = *v8;
    v18 = *(v8 + 1);
    v20 = *(v8 + 2);
    v25[0] = v19;
    v25[1] = v18;
    v25[2] = v20;
    v24[0] = 6;

    v21 = sub_1D703E0C8(v25, v24);
    if (!v2)
    {
      v22 = v21;

      v23 = swift_allocObject();
      *(v23 + 16) = v19;
      *(v23 + 24) = v18;
      *(v23 + 32) = v22;
      *(v23 + 40) = 0;
      sub_1D6C4D24C(v23 | 0x3000000000000000);

      return sub_1D62B51D0(v12, type metadata accessor for FormatCommandOpenURL);
    }

    sub_1D62B51D0(v12, type metadata accessor for FormatCommandOpenURL);
  }

  return result;
}

uint64_t sub_1D6295E98(uint64_t result)
{
  v2 = *v1;
  v3 = v1[3];
  if (*(v1 + 50))
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFF8 | (*(v1 + 24) >> 11) & 7;
  if (v5 <= 3)
  {
    if ((v5 - 1) < 2)
    {
      return result;
    }

    if (v5)
    {
      if (v1[2] == 1 && (v2 & 0xF000000000000007) != 0xF000000000000007)
      {
        goto LABEL_30;
      }

      return result;
    }

    v7 = (v3 >> 3) & 7;
    if (v7 <= 1)
    {
      if (v7)
      {
        return result;
      }
    }

    else if (v7 != 2 && v7 != 3)
    {
      v8 = v1[3];
      if (v8 >> 6 >= 2)
      {
        if ((v8 & 7) == 1)
        {
LABEL_10:
          if ((v1[1] & 0xF000000000000007) == 0xF000000000000007)
          {
            return result;
          }

          v6 = result;
          goto LABEL_31;
        }

        return result;
      }
    }
  }

  else
  {
    if (((1 << v5) & 0x330) != 0)
    {
      return result;
    }

    if (v5 != 6)
    {
      return sub_1D690A374(result);
    }

    if (v3 >> 6 && v3 >> 6 != 1)
    {
      if ((v3 & 0x3F) != 1)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  if (v1[2] == 1 && (v2 & 0xF000000000000007) != 0xF000000000000007)
  {
LABEL_30:
    v6 = result;
LABEL_31:

    sub_1D6E5C118(v6);
  }

  return result;
}

unint64_t sub_1D62960AC(uint64_t a1)
{
  v56 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v56, v3);
  v55 = (&v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v52 - v7;
  v9 = type metadata accessor for FormatItemNodeAction();
  v57 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v52 - v15;
  v17 = v1[1];
  v71 = *v1;
  v72 = v17;

  v18 = a1;
  v19 = v73;
  sub_1D6EE4610(a1);
  if (v19)
  {
  }

  v52 = v8;
  v53 = v12;

  v70 = *(v1 + 80);
  v21 = *(v1 + 2);
  v69[0] = *(v1 + 1);
  v69[1] = v21;
  v22 = *(v1 + 4);
  v69[2] = *(v1 + 3);
  v69[3] = v22;
  v54 = v16;
  v23 = v1;
  if ((v70 & 0xFE) == 0x7E)
  {
    v73 = 0;
    v25 = v57;
  }

  else
  {
    v24 = *&v69[0];
    if ((*&v69[0] & 0xF000000000000007) == 0xF000000000000007)
    {
      v73 = 0;
      a1 = v18;
      v16 = v54;
      v25 = v57;
    }

    else
    {
      *&v66 = *&v69[0];
      sub_1D62B5354(v69, &v58, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
      sub_1D5CFCFAC(v24);
      sub_1D62895DC(v18);
      v25 = v57;
      v73 = 0;

      sub_1D5D0ABCC(v69, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
      a1 = v18;
      v16 = v54;
    }
  }

  v26 = *(v1 + 144);
  if (v26 != 255)
  {
    v27 = *(v1 + 13);
    v66 = *(v1 + 11);
    v67 = v27;
    v68[0] = *(v1 + 15);
    *&v68[1] = v1[17];
    BYTE8(v68[1]) = v26;
    v58 = v66;
    v59 = v27;
    v60 = v68[0];
    v61 = *&v68[1];
    v62 = v26;
    sub_1D62B5E68(&v58, &v63);
    v28 = v73;
    sub_1D628D2F4(a1);
    if (v28)
    {
      v63 = v66;
      v64 = v67;
      v65[0] = v68[0];
      *(v65 + 9) = *(v68 + 9);
      return sub_1D62B5EC4(&v63);
    }

    v73 = 0;
    v63 = v66;
    v64 = v67;
    v65[0] = v68[0];
    *(v65 + 9) = *(v68 + 9);
    sub_1D62B5EC4(&v63);
    v16 = v54;
  }

  v29 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  sub_1D5C00D70(v1 + *(v29 + 28), v16, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  if ((*(v25 + 48))(v16, 1, v9) == 1)
  {
    result = sub_1D5B6EF64(v16, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
    goto LABEL_17;
  }

  v30 = v16;
  v31 = v16;
  v32 = v53;
  sub_1D62B50EC(v31, v53, type metadata accessor for FormatItemNodeAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 6)
  {
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload)
  {
    v41 = v32;
    v42 = v52;
    sub_1D5D5E33C(v41, v52, type metadata accessor for FormatCommandOpenURL);
    v43 = v55;
    sub_1D62B50EC(v42, v55, type metadata accessor for FormatCommandOpenURL);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      v57 = v29;
      v44 = a1;
      v46 = *v43;
      v45 = v43[1];
      v47 = v43[2];
      *&v58 = *v43;
      *(&v58 + 1) = v45;
      *&v59 = v47;
      LOBYTE(v66) = 6;

      v48 = v73;
      v49 = sub_1D703E0C8(&v58, &v66);
      v73 = v48;
      if (!v48)
      {
        v50 = v49;

        v51 = swift_allocObject();
        *(v51 + 16) = v46;
        *(v51 + 24) = v45;
        *(v51 + 32) = v50;
        *(v51 + 40) = 0;
        a1 = v44;
        sub_1D6C4D24C(v51 | 0x3000000000000000);

        sub_1D62B51D0(v52, type metadata accessor for FormatCommandOpenURL);
        v34 = v54;
        v29 = v57;
        goto LABEL_16;
      }

      sub_1D62B51D0(v52, type metadata accessor for FormatCommandOpenURL);

      v40 = v54;
      return sub_1D62B51D0(v40, type metadata accessor for FormatItemNodeAction);
    }

    sub_1D62B51D0(v42, type metadata accessor for FormatCommandOpenURL);
    sub_1D62B51D0(v43, type metadata accessor for FormatCommandOpenURL);
  }

  else
  {
    sub_1D62B5F18(v32, &v58);
    sub_1D62B5F18(&v58, &v66);
    v39 = v73;
    sub_1D6295E98(a1);
    if (v39)
    {
      sub_1D62B5F74(&v58);
      v40 = v30;
      return sub_1D62B51D0(v40, type metadata accessor for FormatItemNodeAction);
    }

    v73 = 0;
    sub_1D62B5F74(&v58);
  }

LABEL_15:
  v34 = v30;
LABEL_16:
  result = sub_1D62B51D0(v34, type metadata accessor for FormatItemNodeAction);
LABEL_17:
  v35 = (v23 + *(v29 + 40));
  v36 = *v35;
  if (*v35 >= 4)
  {
    v37 = v35[1];
    sub_1D62B5DD0(*v35);
    v38 = v73;
    sub_1D6273544(a1, v36);
    if (!v38)
    {
      sub_1D6273544(a1, v37);
    }

    return sub_1D62B5E14(v36);
  }

  return result;
}

uint64_t sub_1D629678C(uint64_t result)
{
  v3 = *v1;
  if (*v1 >= 3)
  {
    v4 = v1[1];
    v5 = result;
    result = sub_1D6273544(result, v3);
    if (!v2)
    {
      return sub_1D6273544(v5, v4);
    }
  }

  return result;
}

uint64_t sub_1D62967D0(uint64_t result)
{
  v3 = result;
  v4 = v1[1];
  v5 = v1[2];
  if ((~*v1 & 0xF000000000000007) == 0 || (, sub_1D62895DC(v3), result = , !v2))
  {
    if ((~v4 & 0xF000000000000007) == 0 || (, sub_1D6012F58(), result = , !v2))
    {
      if ((~v5 & 0xF000000000000007) != 0)
      {

        sub_1D6012F58();
      }
    }
  }

  return result;
}

unint64_t sub_1D629690C(uint64_t *a1)
{
  v3 = v1;
  v5 = v1[4];
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (!v1[5])
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  v7 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_1D6288C94(a1, v8, v9);
  if (v2)
  {
  }

  if (v3[5])
  {
LABEL_3:
    result = sub_1D6296C18(a1);
    if (v2)
    {
      return result;
    }
  }

LABEL_8:
  v10 = v3[6];
  if (v10)
  {
    swift_beginAccess();
    v11 = *(v10 + 72);
    if (v11)
    {

      sub_1D62707E8(a1, v11);
      if (v2)
      {
      }
    }

    swift_beginAccess();
    v12 = *(v10 + 88);

    sub_1D6272D88(a1, v12);
    if (v2)
    {
    }
  }

  v18 = v3[7];
  sub_1D5C82CD8(v18);
  sub_1D626D654(a1);
  result = sub_1D5C92A8C(v18);
  if (!v2)
  {
    swift_beginAccess();
    v13 = v3[9];

    sub_1D6274044(a1, v13);

    result = swift_beginAccess();
    v14 = v3[11];
    if (v14 >> 62 == 1)
    {
      v15 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v3[11]);
      sub_1D5EB1500(v15);

      sub_1D6288D68(a1, v15, v16);
      sub_1D5EB15C4(v15);

      result = sub_1D5EB15C4(v14);
    }

    if (v3[16])
    {
      v17 = v3[20];

      sub_1D5DEA234(v17);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v17);
    }
  }

  return result;
}

uint64_t sub_1D6296C18(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(v1 + 48);

  sub_1D6283604(a1, v4);

  if (!v2)
  {
    v6 = *(v1 + 56);
    if (v6)
    {
      result = sub_1D6273544(a1, v6);
    }

    if ((~*(v1 + 64) & 0xF000000000000007) != 0)
    {
      *&v21[0] = *(v1 + 64);

      sub_1D62891F0(a1);
    }

    v7 = *(v1 + 72);
    if (v7)
    {
      result = sub_1D626FA1C(a1, v7);
    }

    v22 = *(v1 + 184);
    v8 = *(v1 + 152);
    v21[2] = *(v1 + 136);
    v21[3] = v8;
    v21[4] = *(v1 + 168);
    v9 = *(v1 + 120);
    v21[0] = *(v1 + 104);
    v21[1] = v9;
    if (v22 != 254)
    {
      swift_retain_n();
      sub_1D62895DC(a1);

      result = sub_1D5D0ABCC(v21, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    v10 = *(v1 + 208);
    if (v10 != 255 && (v10 & 1) != 0)
    {
      v11 = *(v1 + 192);
      v12 = *(v1 + 200);
      sub_1D6189668(v11, v12, *(v1 + 208));
      sub_1D6189668(v11, v12, v10);
      v13 = sub_1D5E26E28(&unk_1F5112AC8);
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v12;
      *(v14 + 32) = v13;
      *(v14 + 40) = 0;
      sub_1D6C4D24C(v14 | 0x3000000000000000);
      sub_1D60107F0(v11, v12, v10);
    }

    v15 = *(v1 + 232);
    if (v15 != 255 && (v15 & 1) != 0)
    {
      v16 = *(v1 + 216);
      v17 = *(v1 + 224);
      sub_1D6189668(v16, v17, *(v1 + 232));
      sub_1D6189668(v16, v17, v15);
      v18 = sub_1D5E26E28(&unk_1F5112AF0);
      v19 = swift_allocObject();
      *(v19 + 16) = v16;
      *(v19 + 24) = v17;
      *(v19 + 32) = v18;
      *(v19 + 40) = 0;
      sub_1D6C4D24C(v19 | 0x3000000000000000);
      sub_1D60107F0(v16, v17, v15);
    }

    v20 = *(v1 + 240);
    if (v20)
    {
      return sub_1D6273EA4(a1, v20);
    }
  }

  return result;
}

uint64_t sub_1D6296F08(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  if ((*v4 & 0x8000000000000000) != 0)
  {
    v6 = *v4 & 0x7FFFFFFFFFFFFFFFLL;
    v7 = *(v6 + 0x10);
    v8 = *(v6 + 24);
    v9 = result;

    a4(v9, v7, v8);
  }

  return result;
}

uint64_t sub_1D6296FA4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v26 = *(v1 + 16);
  v22 = *(v1 + 32);
  v23 = v4;
  v5 = *(v1 + 112);
  v24[2] = *(v1 + 96);
  v24[3] = v5;
  v24[4] = *(v1 + 128);
  v25 = *(v1 + 144);
  v6 = *(v1 + 80);
  v24[0] = *(v1 + 64);
  v24[1] = v6;
  v7 = *(v1 + 152);
  v8 = *(v1 + 160);
  v9 = *(v1 + 168);
  v10 = *(v1 + 176);
  v11 = *(v1 + 184);
  v12 = *(v1 + 192);
  v13 = *(v1 + 200);

  sub_1D6EE4610(a1);

  if (!v2)
  {
    v21 = v13;
    if (v26)
    {
      sub_1D6273544(a1, v26);
    }

    if ((~v23 & 0xF000000000000007) != 0)
    {

      sub_1D62891F0(a1);
    }

    if (v22)
    {
      sub_1D626FA1C(a1, v22);
    }

    if (v25 != 254)
    {
      swift_retain_n();
      sub_1D62895DC(a1);

      sub_1D5D0ABCC(v24, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    v15 = v11;
    result = v10;
    if (v9 != 255 && (v9 & 1) != 0)
    {
      sub_1D6189668(v7, v8, v9);
      sub_1D6189668(v7, v8, v9);
      v16 = sub_1D5E26E28(&unk_1F5112A78);
      v17 = swift_allocObject();
      *(v17 + 16) = v7;
      *(v17 + 24) = v8;
      *(v17 + 32) = v16;
      *(v17 + 40) = 0;
      sub_1D6C4D24C(v17 | 0x3000000000000000);
      sub_1D60107F0(v7, v8, v9);

      v15 = v11;
      result = v10;
    }

    if (v12 != 255 && (v12 & 1) != 0)
    {
      v18 = result;
      sub_1D6189668(result, v15, v12);
      sub_1D6189668(v18, v15, v12);
      v19 = sub_1D5E26E28(&unk_1F5112AA0);
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = v15;
      *(v20 + 32) = v19;
      *(v20 + 40) = 0;
      sub_1D6C4D24C(v20 | 0x3000000000000000);
      sub_1D60107F0(v18, v15, v12);
    }

    if (v21)
    {
      return sub_1D6273EA4(a1, v21);
    }
  }

  return result;
}

uint64_t sub_1D62972FC(uint64_t result)
{
  if (*(v1 + 32) == 1)
  {
    v3 = result;
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    v6 = *(v1 + 8);
    result = sub_1D6273544(result, *v1);
    if (!v2)
    {
      sub_1D6273544(v3, v6);
      sub_1D6273544(v3, v4);
      return sub_1D6273544(v3, v5);
    }
  }

  return result;
}

uint64_t sub_1D629736C(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  result = sub_1D6273544(a1, v4);
  if (!v2)
  {
    sub_1D6273544(a1, v5);
    sub_1D6273544(a1, v7);
    return sub_1D6273544(a1, v6);
  }

  return result;
}

void sub_1D62973E8(uint64_t *a1)
{
  v4 = v1[1];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[8];
  if ((~v4 & 0xF000000000000007) != 0 || (v1[3] & 7) != 7)
  {
    v11 = *v1;
    if ((v5 & 4) != 0)
    {
      sub_1D6E5C118(a1);
      if (v2)
      {
        return;
      }
    }

    else
    {
      v13 = v1[8];
      v12 = v1[2];
      sub_1D62B7098(v11, v4, v12, v5);
      sub_1D6282658(a1, v11);
      if (v2)
      {
        sub_1D62B7110(v11, v4, v12, v5);
        return;
      }

      sub_1D626CB38(a1, v4, v12);
      sub_1D62B7110(v11, v4, v12, v5);
      v9 = v13;
    }
  }

  if ((~(v6 & v8) & 0x3000000000000007) == 0)
  {
    goto LABEL_12;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    sub_1D6297BE8(a1);
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_1D62B6FC0(v6, v7, v8);
    sub_1D626CAA4(a1, v6, v7);
    sub_1D62B7020(v6, v7, v8);
    if (!v2)
    {
LABEL_12:
      sub_1D627DA04(a1, v9);
    }
  }
}

unint64_t sub_1D629758C(unint64_t a1)
{
  if ((v1[3] & 4) != 0)
  {
    return sub_1D6E5C118(a1);
  }

  v3 = v1[1];
  v4 = v1[2];
  result = sub_1D6282658(a1, *v1);
  if (!v2)
  {
    return sub_1D626CB38(a1, v3, v4);
  }

  return result;
}

unint64_t sub_1D62975F8(uint64_t *a1)
{
  if ((v1[2] & 0x2000000000000000) != 0)
  {
    return sub_1D6297BE8(a1);
  }

  else
  {
    return sub_1D626CAA4(a1, *v1, v1[1]);
  }
}

void sub_1D6297650(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  if (v3 != 255 && (v3 & 1) != 0)
  {
    v5 = *(v1 + 56);
    v6 = *(v1 + 24);
    v7 = *(v6 + 24);
    v8 = a1;
    sub_1D62B5FC8(v6, 1);
    sub_1D6277824(v8, v7);
    if (v2)
    {
      sub_1D62B5FD4(v6, v3);
      return;
    }

    sub_1D628E4DC(v8, *(v6 + 32));
    sub_1D62B5FD4(v6, v3);
    a1 = v8;
    v4 = v5;
  }

  sub_1D62779BC(a1, v4);
}

void sub_1D6297730(uint64_t *a1, unint64_t a2)
{
  v4 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v4)
    {
      sub_1D62973E8(a1);
    }

    else
    {
      sub_1D62978C0(a1);
    }
  }

  else if (v4 == 2)
  {
    v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    sub_1D627EC58(a1, v7);
    if (!v2)
    {
      sub_1D6297730(a1, v8);
    }
  }

  else if (v4 == 3)
  {
    v5 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v6 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

    sub_1D628DEA4(a1);
    if (!v2)
    {
      sub_1D627B710(a1, v5);
      sub_1D6297730(a1, v6);
    }
  }
}

void sub_1D62978C0(uint64_t *a1)
{
  v4 = *v1;
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  if ((v5 & 4) != 0)
  {
    sub_1D6E5C118(a1);
    if (v2)
    {
      return;
    }

    if ((v8 & 0x2000000000000000) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = v1[7];
    v10 = v1[1];
    v11 = v1[2];

    sub_1D6282658(a1, v4);
    if (v2)
    {
      sub_1D62B7130(v4, v10, v11, v5);
      return;
    }

    sub_1D626CB38(a1, v10, v11);
    sub_1D62B7130(v4, v10, v11, v5);
    v9 = v12;
    if ((v8 & 0x2000000000000000) != 0)
    {
LABEL_8:
      sub_1D6297BE8(a1);
      goto LABEL_9;
    }
  }

  sub_1D626CAA4(a1, v6, v7);
LABEL_9:
  sub_1D6297F18(a1, v9);
}

void sub_1D6297A24(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 <= 2)
  {
    if (v4)
    {
      v6 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      if (v4 == 1)
      {
        sub_1D6297650(a1);
        return;
      }

      v12 = *(v6 + 16);
      v13 = *(v12 + 24);

      sub_1D6277298(a1, v13);
      if (!v2)
      {
        sub_1D628E374(a1, *(v12 + 32));
      }
    }

    else
    {
      if ((*(v3 + 48) & 1) == 0)
      {
        return;
      }

      v7 = *(v3 + 16);
      v8 = *(v3 + 24);
      v9 = *(v3 + 32);
      v10 = *(v3 + 40);
      v11 = *(v10 + 24);
      sub_1D5F26358(v7, v8, v9);
      sub_1D62B5FC8(v10, 1);

      sub_1D6277824(a1, v11);
      if (!v2)
      {
        sub_1D628E4DC(a1, *(v10 + 32));
      }

      sub_1D5F26348(v7, v8, v9);
      sub_1D5FC4E9C(v10, 1);
    }
  }
}

uint64_t sub_1D6297B88(uint64_t result)
{
  if (*(v1 + 32) == 1)
  {
    v3 = *(v1 + 24);
    v4 = result;
    result = sub_1D6277824(result, *(v3 + 24));
    if (!v2)
    {
      return sub_1D628E4DC(v4, *(v3 + 32));
    }
  }

  return result;
}

unint64_t sub_1D6297BE8(unint64_t a1)
{
  v4 = *v1;
  v5 = *v1 >> 62;
  if (!v5)
  {
    return sub_1D6287E20(a1);
  }

  if (v5 == 1)
  {
    v6 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v10 = *(v6 + 32);
    v9 = *(v6 + 40);
    v12 = *(v6 + 48);
    v11 = *(v6 + 56);
    v13 = *(v6 + 64);
    v14 = swift_allocObject();
    *(v14 + 16) = v7;
    *(v14 + 24) = v8;
    *(v14 + 32) = v10;
    *(v14 + 40) = v9;

    swift_bridgeObjectRetain_n();
    sub_1D5E433CC(v12, v11, v13);

    sub_1D6C4D24C(v14 | 0x9000000000000000);

    if (v13 > 1)
    {
      if (v13 != 2)
      {

        return sub_1D5E4342C(v12, v11, 0xFFu);
      }

      sub_1D5E433E0(v12, v11, 2u);
      sub_1D6273544(a1, v12);
      if (!v2)
      {
        sub_1D6273544(a1, v11);
      }

      sub_1D5E4342C(v12, v11, 2u);
      v15 = v12;
      v16 = v11;
      v17 = 2;
    }

    else if (v13)
    {
      sub_1D5E433E0(v12, v11, 1u);
      sub_1D6273544(a1, v12);

      sub_1D5E4342C(v12, v11, 1u);
      v15 = v12;
      v16 = v11;
      v17 = 1;
    }

    else
    {
      sub_1D5E433E0(v12, v11, 0);
      sub_1D6273544(a1, v12);

      sub_1D5E4342C(v12, v11, 0);
      v15 = v12;
      v16 = v11;
      v17 = 0;
    }

    return sub_1D5E4342C(v15, v16, v17);
  }

  else
  {
    v19 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    swift_retain_n();

    sub_1D6297BE8(a1);
    if (v2)
    {
    }

    else
    {

      sub_1D62844E8(a1, v19, sub_1D6297BE8);
    }
  }
}

uint64_t sub_1D6297ED0(uint64_t result)
{
  if (*(v1 + 8) == 1)
  {
    v3 = *v1;
    v4 = result;
    result = sub_1D6277824(result, *(v3 + 24));
    if (!v2)
    {
      return sub_1D628E4DC(v4, *(v3 + 32));
    }
  }

  return result;
}

void sub_1D6297F18(uint64_t *a1, unint64_t a2)
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

uint64_t sub_1D629836C(uint64_t result)
{
  v3 = result;
  v4 = *v1;
  v5 = *v1 >> 62;
  if (v5)
  {
    v6 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    if (v5 == 1)
    {

      sub_1D62888F4(v3);
    }

    v12 = *(v6 + 24);
    v17[0] = *(v6 + 16);
    swift_retain_n();

    sub_1D629836C(v3);
    if (!v2)
    {

      sub_1D62844E8(v3, v12, sub_1D629836C);
    }
  }

  v7 = *(v4 + 16);
  if ((v7 >> 62) < 2)
  {
    return result;
  }

  if (v7 >> 62 != 2)
  {
    v13 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v17[0] = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    swift_retain_n();

    sub_1D6298B34(v3);
    if (!v2)
    {

      sub_1D627496C(v3, v13);

      swift_bridgeObjectRelease_n();
    }
  }

  if (!*((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
  {
    v9 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v8 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v10 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v17[0] = v9;
    v17[1] = v8;
    v17[2] = v10;
    v16 = 6;
    sub_1D5D27950(v9, v8, v10, 0);

    sub_1D5D27950(v9, v8, v10, 0);
    v11 = sub_1D703E0C8(v17, &v16);
    if (v2)
    {
      sub_1D5D28C84(v9, v8, v10, 0);
    }

    else
    {
      v14 = v11;
      v15 = swift_allocObject();
      *(v15 + 16) = v9;
      *(v15 + 24) = v8;
      *(v15 + 32) = v14;
      *(v15 + 40) = 0;

      sub_1D6C4D24C(v15 | 0x3000000000000000);
      sub_1D5D28C84(v9, v8, v10, 0);
    }
  }

  return result;
}

uint64_t sub_1D629863C(unint64_t a1)
{
  v3 = v1;
  *&v50 = *(v1 + 32);
  sub_1D5C82CD8(v50);
  sub_1D626D654(a1);
  if (v2)
  {
    return sub_1D5C92A8C(v50);
  }

  sub_1D5C92A8C(v50);
  swift_beginAccess();
  v6 = *(v1 + 48);

  sub_1D6274044(a1, v6);

  if (*(v3 + 56))
  {
    sub_1D62989EC(a1, sub_1D62701B4);
  }

  v58 = *(v3 + 64);

  sub_1D629836C(a1);

  v7 = *(v3 + 152);
  v8 = *(v3 + 184);
  v48 = *(v3 + 168);
  v49[0] = v8;
  *(v49 + 9) = *(v3 + 193);
  v9 = *(v3 + 88);
  v10 = *(v3 + 120);
  v44 = *(v3 + 104);
  v45 = v10;
  v46 = *(v3 + 136);
  v47 = v7;
  v42 = *(v3 + 72);
  v43 = v9;
  v11 = *(v3 + 152);
  v12 = *(v3 + 184);
  v56 = *(v3 + 168);
  v57[0] = v12;
  *(v57 + 9) = *(v3 + 193);
  v13 = *(v3 + 88);
  v14 = *(v3 + 120);
  v52 = *(v3 + 104);
  v53 = v14;
  v54 = *(v3 + 136);
  v55 = v11;
  v50 = *(v3 + 72);
  v51 = v13;
  if (sub_1D60486AC(&v50) != 1)
  {
    v32 = v56;
    v33[0] = v57[0];
    *(v33 + 9) = *(v57 + 9);
    v28 = v52;
    v29 = v53;
    v30 = v54;
    v31 = v55;
    v26 = v50;
    v27 = v51;
    v40 = v48;
    v41[0] = v49[0];
    *(v41 + 9) = *(v49 + 9);
    v36 = v44;
    v37 = v45;
    v38 = v46;
    v39 = v47;
    v34 = v42;
    v35 = v43;
    sub_1D62B4994(&v34, v24);
    sub_1D62867D4(a1);
    v24[6] = v32;
    v25[0] = v33[0];
    *(v25 + 9) = *(v33 + 9);
    v24[2] = v28;
    v24[3] = v29;
    v24[4] = v30;
    v24[5] = v31;
    v24[0] = v26;
    v24[1] = v27;
    sub_1D62B49F0(v24);
  }

  result = swift_beginAccess();
  v15 = *(v3 + 232);
  if (v15 >> 62 == 1)
  {
    v16 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v17 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(*(v3 + 232));
    sub_1D5EB1500(v16);

    sub_1D6288D68(a1, v16, v17);
    sub_1D5EB15C4(v16);

    result = sub_1D5EB15C4(v15);
  }

  v18 = *(v3 + 272);
  if (v18)
  {
    v20 = *(v3 + 304);
    v19 = *(v3 + 312);
    v21 = *(v3 + 288);
    v22 = *(v3 + 296);
    v23 = *(v3 + 280);
    *&v34 = v18;
    *(&v34 + 1) = v23;
    *&v35 = v21;
    *(&v35 + 1) = v22;
    *&v36 = v20;
    *(&v36 + 1) = v19;

    sub_1D5DEA234(v20);

    sub_1D626D2A0(a1);

    sub_1D5CBF568(v20);
  }

  return result;
}

uint64_t sub_1D62989EC(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_beginAccess();
  v6 = *(v2 + 48);

  a2(a1, v6);

  if (!v3)
  {
    v8 = *(v2 + 56);
    if (v8)
    {
      result = sub_1D6273544(a1, v8);
    }

    v9 = *(v2 + 64);
    if (v9)
    {
      result = sub_1D626FA1C(a1, v9);
    }

    v16 = *(v2 + 176);
    v10 = *(v2 + 144);
    v13 = *(v2 + 128);
    v14 = v10;
    v15 = *(v2 + 160);
    v11 = *(v2 + 112);
    v12[0] = *(v2 + 96);
    v12[1] = v11;
    if (v16 != 254)
    {
      v17 = v13;
      swift_retain_n();
      sub_1D62895DC(a1);

      return sub_1D5D0ABCC(v12, &qword_1EDF33718, &type metadata for FormatShadow);
    }
  }

  return result;
}