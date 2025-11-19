uint64_t sub_1AE1CDDA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_1AE23C32C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  if (a1 == a2 || (, , v14 = a3(a1, a2), , , (v14 & 1) != 0))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v15 = sub_1AE23CCBC();
    v16 = *(v7 + 8);
    v16(v10, v6);
    v16(v13, v6);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1AE1CDF28(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  sub_1ADE49D64(a1, a4);
  if (v20 & 1) != 0 && (sub_1ADDD6F8C(a2, a3, a5, a6))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v21 = sub_1AE23CCBC();
    v22 = *(v13 + 8);
    v22(v16, v12);
    v22(v19, v12);
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

void sub_1AE1CE0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, __n128))
{
  v10 = sub_1AE23C32C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a3 + 16))
  {
    if (!v19 || a1 == a3)
    {
LABEL_7:
      if (a5(a2, a4, v16))
      {
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        sub_1AE23CCBC();
        v22 = *(v11 + 8);
        v22(v14, v10);
        v22(v18, v10);
      }
    }

    else
    {
      v20 = (a1 + 32);
      v21 = (a3 + 32);
      while (*v20 == *v21)
      {
        ++v20;
        ++v21;
        if (!--v19)
        {
          goto LABEL_7;
        }
      }
    }
  }
}

uint64_t sub_1AE1CE254(void *a1, void *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  if (*a1 != *a2)
  {
    goto LABEL_12;
  }

  v12 = a1[1];
  v13 = a2[1];
  if (v12)
  {
    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = a1[2];
    v28 = v5;
    v15 = a2[2];
    sub_1ADE42C78(v13);
    sub_1ADE42C78(v12);
    sub_1AE1CE0A4(v12, v14, v13, v15, sub_1ADE4E544);
    v17 = v16;
    v5 = v28;

    sub_1ADE42CB8(v12);
    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v13)
  {
    goto LABEL_12;
  }

  v18 = a1[3];
  v19 = a2[3];
  if (v18)
  {
    if (v19)
    {
      v20 = a1[4];
      v21 = a2[4];
      sub_1ADE42C78(v19);
      sub_1ADE42C78(v18);
      sub_1AE1CE0A4(v18, v20, v19, v21, sub_1ADE4E544);
      v23 = v22;

      sub_1ADE42CB8(v18);
      if (v23)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v24 = 0;
    return v24 & 1;
  }

  if (v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v24 = sub_1AE23CCBC();
  v25 = *(v5 + 8);
  v25(v8, v4);
  v25(v11, v4);
  return v24 & 1;
}

uint64_t sub_1AE1CE4B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a8;
  v15 = sub_1AE23C32C();
  v25 = *(v15 - 8);
  v16 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v25 - v20;
  if (sub_1ADDD6F8C(a1, a2, a5, a6) & 1) != 0 && (sub_1ADE4DC50(a3, a7) & 1) != 0 && (sub_1ADE4AF74(a4, v26))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v22 = sub_1AE23CCBC();
    v23 = *(v25 + 8);
    v23(v18, v15);
    v23(v21, v15);
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

void sub_1AE1CE654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  v20 = *(a1 + 16);
  if (v20 == *(a4 + 16))
  {
    if (!v20 || a1 == a4)
    {
LABEL_7:
      sub_1ADE4DCE0(a2, a5);
      if (v24 & 1) != 0 && (sub_1ADE522B8(a3, a6, v23))
      {
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        sub_1AE23CCBC();
        v25 = *(v13 + 8);
        v25(v16, v12);
        v25(v19, v12);
      }
    }

    else
    {
      v21 = (a1 + 32);
      v22 = (a4 + 32);
      while (*v21 == *v22)
      {
        ++v21;
        ++v22;
        if (!--v20)
        {
          goto LABEL_7;
        }
      }
    }
  }
}

uint64_t sub_1AE1CE814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v52[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52[-v10];
  v12 = *a1;
  v13 = *a2;
  v14 = *a2 & 0xF000000000000007;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    if (v14 == 0xF000000000000007)
    {
      goto LABEL_9;
    }

    if (v12 >> 62)
    {
      if (v12 >> 62 != 1)
      {
        if (v13 >> 62 != 2)
        {
          goto LABEL_9;
        }

        v30 = *a2;
        if ((v12 & 0x3FFFFFFFFFFFFFFFLL) == (v13 & 0x3FFFFFFFFFFFFFFFLL))
        {
          sub_1ADE73AB0(v30);
          sub_1ADE73AB0(v12);
        }

        else
        {
          sub_1ADE73AB0(v30);
          sub_1ADE73AB0(v12);
          if ((sub_1AE1C1AA0(v12 & 0x3FFFFFFFFFFFFFFFLL, v13 & 0x3FFFFFFFFFFFFFFFLL) & 1) == 0)
          {
            sub_1ADE73AC8(v13);
            sub_1ADE73AC8(v12);
            goto LABEL_9;
          }
        }

        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        LODWORD(v58) = sub_1AE23CCBC();
        v39 = v5;
        v40 = *(v5 + 8);
        v40(v8, v4);
        v40(v11, v4);
        v5 = v39;
        sub_1ADE73AC8(v13);
        sub_1ADE73AC8(v12);
        if ((v58 & 1) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_3;
      }

      if (v13 >> 62 != 1)
      {
        goto LABEL_9;
      }

      sub_1ADE73AB0(*a2);
      sub_1ADE73AB0(v12);
      v24 = sub_1ADE51B2C;
      v25 = sub_1AE1CEE20;
      v26 = sub_1ADE51B48;
      v27 = v12 & 0x3FFFFFFFFFFFFFFFLL;
      v28 = v13 & 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      if (v13 >> 62)
      {
        goto LABEL_9;
      }

      sub_1ADE73AB0(*a2);
      sub_1ADE73AB0(v12);
      v24 = sub_1ADE5215C;
      v25 = sub_1AE1CFAF0;
      v26 = sub_1ADE52174;
      v27 = v12;
      v28 = v13;
    }

    v29 = sub_1AE1CF8DC(v27, v28, v24, v25, v26);
    sub_1ADE73AC8(v13);
    sub_1ADE73AC8(v12);
    if ((v29 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_3;
  }

  if (v14 != 0xF000000000000007)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_1ADE4E01C(*(a1 + 24), *(a2 + 24));
  if ((v15 & 1) == 0)
  {
    goto LABEL_9;
  }

  v16 = *(a1 + 64);
  v17 = *(a2 + 64);
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_9;
    }

    v56 = v5;
    v18 = *(a1 + 72);
    v19 = *(a2 + 72);
    sub_1ADE42C78(v17);
    sub_1ADE42C78(v16);
    sub_1AE1CE0A4(v16, v18, v17, v19, sub_1ADE4E544);
    v21 = v20;

    sub_1ADE42CB8(v16);
    if ((v21 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v56 = v5;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  v31 = *(a1 + 96);
  v61 = *(a1 + 80);
  v62 = v31;
  v32 = *(a2 + 96);
  v60[0] = *(a2 + 80);
  v60[1] = v32;
  v33 = *(&v61 + 1);
  v34 = v62;
  v57 = v61;
  v58 = *(&v62 + 1);
  v35 = *&v60[0];
  v36 = v32;
  if (v62)
  {
    if (v32)
    {
      v55 = *(&v60[0] + 1);
      sub_1ADDCEE40(&v61, v59, &qword_1EB5BABA0, &unk_1AE2580C0);
      sub_1ADDCEE40(v60, v59, &qword_1EB5BABA0, &unk_1AE2580C0);
      v37 = v33;
      v54 = v33;
      v38 = v55;
      v53 = sub_1AE1CE4B8(v57, v37, v34, v58, v35, v55, v36, *(&v36 + 1));
      sub_1ADE73B5C(v35, v38, v36);
      sub_1ADE73B5C(v57, v54, v34);
      if ((v53 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }

LABEL_31:
    v41 = *(&v60[0] + 1);
    sub_1ADDCEE40(&v61, v59, &qword_1EB5BABA0, &unk_1AE2580C0);
    sub_1ADDCEE40(v60, v59, &qword_1EB5BABA0, &unk_1AE2580C0);
    sub_1ADE73B5C(v57, v33, v34);
    sub_1ADE73B5C(v35, v41, v36);
    goto LABEL_9;
  }

  if (v32)
  {
    goto LABEL_31;
  }

  sub_1ADDCEE40(&v61, v59, &qword_1EB5BABA0, &unk_1AE2580C0);
  sub_1ADDCEE40(v60, v59, &qword_1EB5BABA0, &unk_1AE2580C0);
  sub_1ADE73B5C(v57, v33, 0);
LABEL_34:
  sub_1ADE4E034(*(a1 + 32), *(a2 + 32));
  if ((v42 & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((sub_1ADDD6F8C(*(a1 + 40), *(a1 + 48), *(a2 + 40), *(a2 + 48)) & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1ADE4E01C(*(a1 + 56), *(a2 + 56));
  if ((v43 & 1) == 0)
  {
    goto LABEL_9;
  }

  v44 = *(a1 + 112);
  v45 = *(a2 + 112);
  if (v44)
  {
    v46 = v56;
    if (!v45)
    {
      goto LABEL_9;
    }

    v47 = *(a1 + 120);
    v48 = *(a2 + 120);
    sub_1ADE42C78(v45);
    sub_1ADE42C78(v44);
    sub_1AE1CE0A4(v44, v47, v45, v48, sub_1ADE4E544);
    v50 = v49;

    sub_1ADE42CB8(v44);
    if ((v50 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_42:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v22 = sub_1AE23CCBC();
    v51 = *(v46 + 8);
    v51(v8, v4);
    v51(v11, v4);
    return v22 & 1;
  }

  v46 = v56;
  if (!v45)
  {
    goto LABEL_42;
  }

LABEL_9:
  v22 = 0;
  return v22 & 1;
}

void sub_1AE1CEE20(unint64_t a1, unint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 1)
      {
        *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      return;
    case 2uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 2)
      {
        goto LABEL_42;
      }

      return;
    case 3uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 3)
      {
        v31 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v30 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v32 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v33 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        sub_1ADDD86D8(v32, v33);
        sub_1ADDD6F8C(v31, v30, v32, v33);
        sub_1ADDCC35C(v32, v33);
      }

      return;
    case 4uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 4)
      {
        goto LABEL_42;
      }

      return;
    case 5uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 5)
      {
        goto LABEL_42;
      }

      return;
    case 6uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 6)
      {
        return;
      }

      v49 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v50 = a2 & 0xFFFFFFFFFFFFFFBLL;
      v51 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v52 = *(v49 + 16);
      if (v52 != *(v51 + 16))
      {
        return;
      }

      v53 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v54 = *(v50 + 24);
      if (v52)
      {
        v55 = v49 == v51;
      }

      else
      {
        v55 = 1;
      }

      if (v55)
      {
        goto LABEL_65;
      }

      v56 = (v49 + 32);
      v57 = (v51 + 32);
      while (1)
      {
        if (!v52)
        {
          goto LABEL_82;
        }

        if (*v56 != *v57)
        {
          return;
        }

        ++v56;
        ++v57;
        if (!--v52)
        {
LABEL_65:

          sub_1ADE4E544(v53, v54);
          if (v58)
          {
            goto LABEL_54;
          }

          goto LABEL_66;
        }
      }

    case 7uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 7)
      {
        return;
      }

      v34 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v35 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      if (v34 == v35)
      {
        goto LABEL_77;
      }

      v37 = sub_1AE1C1AA0(v36, v35);

      if (v37)
      {
        goto LABEL_77;
      }

      return;
    case 8uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 8)
      {
        v63 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v64 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        sub_1AE1CDB64(v63, v64);
      }

      return;
    case 9uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 9)
      {
        v28 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) && *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if (v28)
        {
          sub_1AE23C31C();
          sub_1AE23C31C();
          sub_1ADE51EAC();
          sub_1AE23CCBC();
          v29 = *(v5 + 8);
          v29(v8, v4);
          v29(v11, v4);
        }
      }

      return;
    case 0xAuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xA)
      {
        return;
      }

      v59 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v60 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      sub_1ADE49D64(v59, v60);
      if ((v61 & 1) == 0)
      {
        goto LABEL_72;
      }

      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      sub_1AE23CCBC();

      v62 = *(v5 + 8);
      v62(v8, v4);
      v62(v11, v4);
      return;
    case 0xBuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xB)
      {
        return;
      }

      v12 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v13 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      if (v12 == v13)
      {

LABEL_77:
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        sub_1AE23CCBC();
        v65 = *(v5 + 8);
        v65(v8, v4);
        v65(v11, v4);

        return;
      }

      swift_beginAccess();
      v14 = *(v12 + 16);
      swift_beginAccess();
      if (v14 != *(v13 + 16))
      {
        return;
      }

      swift_beginAccess();
      v15 = *(v12 + 24);
      swift_beginAccess();
      v16 = *(v13 + 24);
      if (v15)
      {
        if (v16)
        {

          v18 = sub_1AE1CF8DC(v17, v16, sub_1ADE51B2C, sub_1AE1CEE20, sub_1ADE51B48);

          if ((v18 & 1) == 0)
          {
            goto LABEL_79;
          }

          goto LABEL_76;
        }
      }

      else
      {

        if (!v16)
        {
LABEL_76:

          goto LABEL_77;
        }
      }

LABEL_79:

      return;
    case 0xCuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 0xC)
      {
        v19 = (a2 & 0xFFFFFFFFFFFFFFBLL);
        if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
        {
          v21 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
          v20 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
          v22 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
          v66 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
          v67 = v22;
          v23 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
          v24 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
          v25 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
          v26 = v19[6];
          sub_1ADDD86D8(v19[3], v19[4]);
          sub_1ADDD86D8(v25, v26);
          if (sub_1ADDD6F8C(v21, v20, v23, v24) & 1) != 0 && (sub_1ADDD6F8C(v67, v66, v25, v26))
          {
            sub_1AE23C31C();
            sub_1AE23C31C();
            sub_1ADE51EAC();
            sub_1AE23CCBC();
            v27 = *(v5 + 8);
            v27(v8, v4);
            v27(v11, v4);
            sub_1ADDCC35C(v23, v24);
            sub_1ADDCC35C(v25, v26);
          }

          else
          {
            sub_1ADDCC35C(v23, v24);
            sub_1ADDCC35C(v25, v26);
          }
        }
      }

      return;
    case 0xDuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xD)
      {
        return;
      }

      v38 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v39 = a2 & 0xFFFFFFFFFFFFFFBLL;
      v40 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v41 = *(v38 + 16);
      if (v41 != *(v40 + 16))
      {
        return;
      }

      v42 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v43 = *(v39 + 24);
      if (v41)
      {
        v44 = v38 == v40;
      }

      else
      {
        v44 = 1;
      }

      if (v44)
      {
        goto LABEL_53;
      }

      v45 = (v38 + 32);
      v46 = (v40 + 32);
      do
      {
        if (!v41)
        {
          __break(1u);
LABEL_82:
          __break(1u);
          return;
        }

        if (*v45 != *v46)
        {
          return;
        }

        ++v45;
        ++v46;
        --v41;
      }

      while (v41);
LABEL_53:

      sub_1ADE49D64(v42, v43);
      if (v47)
      {
LABEL_54:
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        sub_1AE23CCBC();

        v48 = *(v5 + 8);
        v48(v8, v4);
        v48(v11, v4);
      }

      else
      {
LABEL_66:

LABEL_72:
      }

      return;
    case 0xEuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 0xE)
      {
        *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      return;
    case 0xFuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 0xF)
      {
        goto LABEL_42;
      }

      return;
    case 0x10uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 0x10)
      {
LABEL_42:
        v28 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      return;
    default:
      if (!((a2 >> 59) & 0x1E | (a2 >> 2) & 1))
      {
        v28 = *(a1 + 16) == *(a2 + 16);
      }

      return;
  }
}

uint64_t sub_1AE1CF778(void *a1, void *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  if (*a1 == *a2 && (sub_1ADDD6F8C(a1[1], a1[2], a2[1], a2[2]) & 1) != 0 && (sub_1ADDD6F8C(a1[3], a1[4], a2[3], a2[4]) & 1) != 0)
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v12 = sub_1AE23CCBC();
    v13 = *(v5 + 8);
    v13(v8, v4);
    v13(v11, v4);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1AE1CF8DC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t), void (*a5)(uint64_t))
{
  v10 = sub_1AE23C32C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  if (a1 != a2)
  {
    v28 = a3;
    v29 = a4;
    v30 = a5;
    v18 = *(a1 + 16);
    v19 = *(a2 + 16);
    v20 = v19 & 0xF000000000000007;

    if ((~v18 & 0xF000000000000007) != 0)
    {
      if (v20 == 0xF000000000000007)
      {
        goto LABEL_9;
      }

      v21 = v28;
      v28(v19);
      v21(v18);
      v22 = v29(v18, v19);
      v23 = v30;
      v30(v19);
      v23(v18);
      if ((v22 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (v20 != 0xF000000000000007)
    {
LABEL_9:

      v24 = 0;
      return v24 & 1;
    }
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v24 = sub_1AE23CCBC();
  v25 = *(v11 + 8);
  v25(v14, v10);
  v25(v17, v10);
  return v24 & 1;
}

uint64_t sub_1AE1CFAF0(unint64_t a1, unint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v54 - v10;
  v12 = a1 >> 60;
  if ((a1 >> 60) > 4)
  {
    if (v12 <= 6)
    {
      if (v12 == 5)
      {
        v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        v60 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v61 = v26;
        v62 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v56 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v57 = v27;
        v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v58 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v59 = v28;
        if (a2 >> 60 != 5)
        {
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if (a2 >> 60 != 6)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v12 == 7)
      {
        v31 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v56 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v57 = v31;
        *&v58 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        if (a2 >> 60 == 7)
        {
          v32 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v63 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v64 = v32;
          *&v65 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v70 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v54[0] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          sub_1ADDCEE40(&v70, v55, &qword_1EB5BDA20, &qword_1AE253910);
          sub_1ADDCEE40(v54, v55, &qword_1EB5BDA20, &qword_1AE253910);
          v21 = sub_1AE1CE254(&v56, &v63);
          sub_1ADDCEDE0(&v70, &qword_1EB5BDA20, &qword_1AE253910);
          sub_1ADDCEDE0(v54, &qword_1EB5BDA20, &qword_1AE253910);
          return v21 & 1;
        }

LABEL_39:
        v21 = 0;
        return v21 & 1;
      }

      if (v12 != 8)
      {
        if (a2 >> 60 != 9)
        {
          goto LABEL_39;
        }

        v38 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v39 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

        sub_1ADE4AA04(v38, v39);
        if ((v40 & 1) == 0)
        {

          goto LABEL_39;
        }

        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        v41 = sub_1AE23CCBC();

        v42 = *(v5 + 8);
        v42(v8, v4);
        v42(v11, v4);
        if ((v41 & 1) == 0)
        {
          goto LABEL_39;
        }

LABEL_36:
        v21 = 1;
        return v21 & 1;
      }

      if (a2 >> 60 != 8)
      {
        goto LABEL_39;
      }
    }

    v47 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v48 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

    if (v47 == v48)
    {
LABEL_35:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v51 = sub_1AE23CCBC();
      v52 = *(v5 + 8);
      v52(v8, v4);
      v52(v11, v4);

      if ((v51 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v25 = sub_1AE1C5408(v49, v48);
LABEL_34:
    v50 = v25;

    if ((v50 & 1) == 0)
    {

      goto LABEL_39;
    }

    goto LABEL_35;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      v43 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v58 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v59 = v43;
      v60 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v44 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v56 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v57 = v44;
      if (a2 >> 60 != 1)
      {
        goto LABEL_39;
      }

LABEL_30:
      v45 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v64 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v65 = v45;
      v46 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v66 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v67 = v46;
      v63 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1ADFAEE10(&v63, v54);
      v21 = sub_1AE1CC624(&v56, &v63);
      sub_1ADFAECE8(&v63);
      return v21 & 1;
    }

    if (a2 >> 60)
    {
      goto LABEL_39;
    }

    v22 = *(a1 + 16);
    v23 = *(a2 + 16);

    if (v22 == v23)
    {
      goto LABEL_35;
    }

    v25 = sub_1AE1BF0F8(v24, v23);
    goto LABEL_34;
  }

  if (v12 == 2)
  {
    v29 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v58 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v59 = v29;
    v60 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
    v30 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v56 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v57 = v30;
    if (a2 >> 60 != 2)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  if (v12 != 3)
  {
    v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
    v60 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
    v61 = v33;
    v62 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
    v34 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v56 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v57 = v34;
    v35 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v58 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v59 = v35;
    if (a2 >> 60 != 4)
    {
      goto LABEL_39;
    }

LABEL_24:
    v36 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
    v66 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v67 = v36;
    v68 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
    v69 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
    v37 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v63 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v64 = v37;
    v65 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    sub_1ADE51B64(&v63, v54);
    v21 = sub_1AE1CD228(&v56, &v63);
    sub_1AE030800(&v63);
    return v21 & 1;
  }

  if (a2 >> 60 != 3)
  {
    goto LABEL_39;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v15 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v16 = a2 & 0xFFFFFFFFFFFFFFFLL;
  v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v18 = *(v16 + 24);
  v19 = *(v16 + 32);

  sub_1AE1CE654(v15, v14, v13, v17, v18, v19);
  v21 = v20;

  return v21 & 1;
}

unint64_t sub_1AE1D004C()
{
  result = qword_1EB5BDF88;
  if (!qword_1EB5BDF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF88);
  }

  return result;
}

void sub_1AE1D00A0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 >> 60 != 15)
  {
    sub_1ADDCC35C(a2, a3);

    sub_1ADDCC35C(a4, a5);
  }
}

uint64_t objectdestroy_183Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1AE1D0138()
{
  result = qword_1EB5BDF90;
  if (!qword_1EB5BDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF90);
  }

  return result;
}

uint64_t sub_1AE1D018C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AE1D01D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    sub_1ADE42CB8(a2);
    return sub_1ADE42CB8(a4);
  }

  return result;
}

unint64_t sub_1AE1D0220()
{
  result = qword_1EB5BDF98;
  if (!qword_1EB5BDF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF98);
  }

  return result;
}

unint64_t sub_1AE1D0274()
{
  result = qword_1EB5BDFA0;
  if (!qword_1EB5BDFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFA0);
  }

  return result;
}

unint64_t sub_1AE1D02C8()
{
  result = qword_1EB5BDFA8;
  if (!qword_1EB5BDFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFA8);
  }

  return result;
}

unint64_t sub_1AE1D031C()
{
  result = qword_1EB5BDFB0;
  if (!qword_1EB5BDFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFB0);
  }

  return result;
}

unint64_t sub_1AE1D0370()
{
  result = qword_1EB5BDFB8;
  if (!qword_1EB5BDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFB8);
  }

  return result;
}

unint64_t sub_1AE1D03C4()
{
  result = qword_1EB5BDFC0;
  if (!qword_1EB5BDFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFC0);
  }

  return result;
}

unint64_t sub_1AE1D0418()
{
  result = qword_1EB5BDFC8;
  if (!qword_1EB5BDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFC8);
  }

  return result;
}

unint64_t sub_1AE1D046C()
{
  result = qword_1EB5BDFD0;
  if (!qword_1EB5BDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFD0);
  }

  return result;
}

unint64_t sub_1AE1D04C0()
{
  result = qword_1EB5BDFD8;
  if (!qword_1EB5BDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFD8);
  }

  return result;
}

uint64_t sub_1AE1D0514(uint64_t a1)
{
  *(v1 + 192) = 0;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 200) = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 208) = 0;
  *(v1 + 216) = 1;
  swift_beginAccess();
  v3 = *(a1 + 64);
  v30 = *(a1 + 48);
  v31 = v3;
  v32 = *(a1 + 80);
  v4 = *(a1 + 32);
  v28 = *(a1 + 16);
  v29 = v4;
  swift_beginAccess();
  v5 = *(v1 + 32);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v33[2] = *(v1 + 48);
  v33[3] = v6;
  v33[4] = v7;
  v33[0] = *(v1 + 16);
  v33[1] = v5;
  v8 = v30;
  v9 = v31;
  v10 = v28;
  *(v1 + 32) = v29;
  *(v1 + 48) = v8;
  v11 = v32;
  *(v1 + 64) = v9;
  *(v1 + 80) = v11;
  *(v1 + 16) = v10;
  sub_1ADDCEE40(&v28, v41, &qword_1EB5BCC30, &qword_1AE2580D0);
  sub_1ADDCEDE0(v33, &qword_1EB5BCC30, &qword_1AE2580D0);
  swift_beginAccess();
  v12 = *(a1 + 176);
  v38 = *(a1 + 160);
  v39 = v12;
  v40 = *(a1 + 192);
  v13 = *(a1 + 112);
  v34 = *(a1 + 96);
  v35 = v13;
  v14 = *(a1 + 144);
  v36 = *(a1 + 128);
  v37 = v14;
  swift_beginAccess();
  v15 = *(v1 + 144);
  v16 = *(v1 + 176);
  v41[4] = *(v1 + 160);
  v41[5] = v16;
  v17 = *(v1 + 112);
  v18 = *(v1 + 128);
  v41[0] = *(v1 + 96);
  v41[1] = v17;
  v41[2] = v18;
  v41[3] = v15;
  v19 = v34;
  v20 = v36;
  v21 = v37;
  *(v1 + 112) = v35;
  *(v1 + 128) = v20;
  *(v1 + 96) = v19;
  v22 = v39;
  *(v1 + 160) = v38;
  *(v1 + 176) = v22;
  v42 = *(v1 + 192);
  *(v1 + 144) = v21;
  *(v1 + 192) = v40;
  sub_1ADDCEE40(&v34, v27, &qword_1EB5BCC28, &unk_1AE251820);
  sub_1ADDCEDE0(v41, &qword_1EB5BCC28, &unk_1AE251820);
  swift_beginAccess();
  v23 = *(a1 + 200);
  swift_beginAccess();
  v24 = *(v1 + 200);
  *(v1 + 200) = v23;

  swift_beginAccess();
  v25 = *(a1 + 208);
  LOBYTE(a1) = *(a1 + 216);
  swift_beginAccess();
  *(v1 + 208) = v25;
  *(v1 + 216) = a1;
  return v1;
}

unint64_t sub_1AE1D0788()
{
  result = qword_1EB5BDFE0;
  if (!qword_1EB5BDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFE0);
  }

  return result;
}

unint64_t sub_1AE1D07DC()
{
  result = qword_1EB5BDFE8;
  if (!qword_1EB5BDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFE8);
  }

  return result;
}

uint64_t sub_1AE1D0830(uint64_t result)
{
  if (result)
  {
    sub_1AE1CAF38();
    return sub_1AE23C66C();
  }

  return result;
}

unint64_t sub_1AE1D08B0()
{
  result = qword_1EB5BDFF0;
  if (!qword_1EB5BDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFF0);
  }

  return result;
}

unint64_t sub_1AE1D0904()
{
  result = qword_1EB5BDFF8;
  if (!qword_1EB5BDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFF8);
  }

  return result;
}

unint64_t sub_1AE1D0958()
{
  result = qword_1EB5B92C8[0];
  if (!qword_1EB5B92C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5B92C8);
  }

  return result;
}

unint64_t sub_1AE1D09AC()
{
  result = qword_1EB5BE000;
  if (!qword_1EB5BE000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE000);
  }

  return result;
}

unint64_t sub_1AE1D0A00()
{
  result = qword_1EB5BE008;
  if (!qword_1EB5BE008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE008);
  }

  return result;
}

unint64_t sub_1AE1D0A54()
{
  result = qword_1EB5BE010;
  if (!qword_1EB5BE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE010);
  }

  return result;
}

unint64_t sub_1AE1D0AA8()
{
  result = qword_1EB5BE018;
  if (!qword_1EB5BE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE018);
  }

  return result;
}

unint64_t sub_1AE1D0AFC()
{
  result = qword_1EB5BE020;
  if (!qword_1EB5BE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE020);
  }

  return result;
}

unint64_t sub_1AE1D0B50()
{
  result = qword_1EB5BE028;
  if (!qword_1EB5BE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE028);
  }

  return result;
}

unint64_t sub_1AE1D0BA4()
{
  result = qword_1EB5BE030;
  if (!qword_1EB5BE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE030);
  }

  return result;
}

unint64_t sub_1AE1D0BF8()
{
  result = qword_1EB5B91F8;
  if (!qword_1EB5B91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B91F8);
  }

  return result;
}

unint64_t sub_1AE1D0C4C()
{
  result = qword_1EB5BE038;
  if (!qword_1EB5BE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE038);
  }

  return result;
}

unint64_t sub_1AE1D0CA0()
{
  result = qword_1EB5BE040;
  if (!qword_1EB5BE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE040);
  }

  return result;
}

unint64_t sub_1AE1D0CF4()
{
  result = qword_1EB5BE048;
  if (!qword_1EB5BE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE048);
  }

  return result;
}

uint64_t sub_1AE1D0D48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (result)
  {
    a5();
    return sub_1AE23C66C();
  }

  return result;
}

unint64_t sub_1AE1D0DCC()
{
  result = qword_1EB5BE050;
  if (!qword_1EB5BE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE050);
  }

  return result;
}

unint64_t sub_1AE1D0E20()
{
  result = qword_1EB5BE058;
  if (!qword_1EB5BE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE058);
  }

  return result;
}

unint64_t sub_1AE1D0E74()
{
  result = qword_1EB5BE060;
  if (!qword_1EB5BE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE060);
  }

  return result;
}

unint64_t sub_1AE1D0EC8()
{
  result = qword_1EB5BE068;
  if (!qword_1EB5BE068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE068);
  }

  return result;
}

unint64_t sub_1AE1D0F1C()
{
  result = qword_1EB5BE070;
  if (!qword_1EB5BE070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE070);
  }

  return result;
}

uint64_t sub_1AE1D0F70(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_1AE1CB1F0();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1D0FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {

    sub_1ADE42CB8(a4);
    return sub_1ADE42CB8(a9);
  }

  return result;
}

uint64_t sub_1AE1D1058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {

    sub_1ADE42CB8(a6);
    sub_1ADE42CB8(a8);
    sub_1ADE42CB8(a10);
    return sub_1ADE42CB8(a12);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1AE1D1140(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AE1D1188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AE1D11EC(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AE1D1248(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1AE1D12C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1AE1D1324(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1AE1D1390(uint64_t a1, unsigned int a2)
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

uint64_t sub_1AE1D13EC(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AE1D1474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1AE1D14BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AE1D1504()
{
  result = qword_1EB5BE078;
  if (!qword_1EB5BE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE078);
  }

  return result;
}

unint64_t sub_1AE1D158C()
{
  result = qword_1EB5BE090;
  if (!qword_1EB5BE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE090);
  }

  return result;
}

uint64_t sub_1AE1D1610(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AE1D1668()
{
  result = qword_1EB5BE0A8;
  if (!qword_1EB5BE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE0A8);
  }

  return result;
}

unint64_t sub_1AE1D16C0()
{
  result = qword_1EB5BE0B0;
  if (!qword_1EB5BE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE0B0);
  }

  return result;
}

unint64_t sub_1AE1D1718()
{
  result = qword_1EB5BE0B8;
  if (!qword_1EB5BE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE0B8);
  }

  return result;
}

unint64_t sub_1AE1D1770()
{
  result = qword_1EB5BE0C0;
  if (!qword_1EB5BE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE0C0);
  }

  return result;
}

uint64_t sub_1AE1D17FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    sub_1ADDCEDE0(a1, &qword_1EB5B9E90, &qword_1AE240ED0);
    sub_1ADEBEDCC(a2, v10);
    v4 = sub_1AE23BDDC();
    (*(*(v4 - 8) + 8))(a2, v4);
    return sub_1ADDCEDE0(v10, &qword_1EB5B9E90, &qword_1AE240ED0);
  }

  else
  {
    sub_1ADE42D60(a1, v10);
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_1ADEBF0A4(v10, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_1AE23BDDC();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v9;
  }

  return result;
}

uint64_t sub_1AE1D1918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  if (a1)
  {
    v12 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;
    sub_1ADEBF3A0(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    result = sub_1ADDCC35C(a4, a5);
    *v5 = v26;
  }

  else
  {
    v15 = *v5;
    v16 = sub_1ADDDE7CC(a4, a5);
    if (v17)
    {
      v18 = v16;
      v19 = *v6;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v6;
      v27 = *v6;
      if (!v20)
      {
        sub_1ADF6F47C();
        v21 = v27;
      }

      sub_1ADDCC35C(*(*(v21 + 48) + 16 * v18), *(*(v21 + 48) + 16 * v18 + 8));
      v22 = (*(v21 + 56) + 24 * v18);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];

      sub_1ADF6D4DC(v18, v21);
      result = sub_1ADDCC35C(a4, a5);
      *v6 = v21;
    }

    else
    {

      return sub_1ADDCC35C(a4, a5);
    }
  }

  return result;
}

uint64_t sub_1AE1D1A7C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1ADDEE390(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1ADEBFD44(v10, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_1ADDCC35C(a2, a3);
    *v3 = v9;
  }

  else
  {
    sub_1ADDCEDE0(a1, &qword_1EB5BAA00, &qword_1AE2587A0);
    sub_1ADEBF000(a2, a3, v10);
    sub_1ADDCC35C(a2, a3);
    return sub_1ADDCEDE0(v10, &qword_1EB5BAA00, &qword_1AE2587A0);
  }

  return result;
}

uint64_t sub_1AE1D1B54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_1ADEC0170(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_1AE23BFEC();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1ADDDF300(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        sub_1ADF71354();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = sub_1AE23BFEC();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      sub_1ADF6DF54(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = sub_1AE23BFEC();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

uint64_t sub_1AE1D1D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  if (a1)
  {
    v12 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v5;
    sub_1ADEC01B0(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    result = sub_1ADDCC35C(a4, a5);
    *v5 = v23;
  }

  else
  {
    v15 = *v5;
    v16 = sub_1ADDDE7CC(a4, a5);
    if (v17)
    {
      v18 = v16;
      v19 = *v6;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v6;
      v24 = *v6;
      if (!v20)
      {
        sub_1ADF715D8();
        v21 = v24;
      }

      sub_1ADDCC35C(*(*(v21 + 48) + 16 * v18), *(*(v21 + 48) + 16 * v18 + 8));
      v22 = *(*(v21 + 56) + 24 * v18);
      swift_unknownObjectRelease();
      sub_1ADF6D4DC(v18, v21);
      result = sub_1ADDCC35C(a4, a5);
      *v6 = v21;
    }

    else
    {

      return sub_1ADDCC35C(a4, a5);
    }
  }

  return result;
}

uint64_t sub_1AE1D1E58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_1ADEC0320(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_1AE23BDDC();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1ADDFF050(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_1ADF71784();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_1AE23BDDC();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_1ADF6E274(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_1AE23BDDC();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1AE1D2018(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_1ADEC0360(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_1AE23BDDC();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1ADDFF050(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_1ADF71A10();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_1AE23BDDC();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_1ADF6E594(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_1AE23BDDC();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

void *sub_1AE1D21D8(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = objc_allocWithZone(type metadata accessor for CRAttributedStringEncoder());

  v6 = sub_1ADF8B964(v5);
  if (!v3)
  {
    __break(1u);
  }

  v7 = v6;
  v8 = [*(v3 + 16) fullyRenamed_];
  *&v30 = 0;
  v9 = [v8 saveToEncoder:v7 error:&v30];

  v10 = v30;
  if (v9)
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    inited = swift_initStaticObject();
    v12 = &v7[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence];
    swift_beginAccess();
    v13 = *v12;
    v14 = *(v12 + 2);
    v31 = *(v12 + 1);
    v32 = v14;
    v30 = v13;
    v15 = *(v12 + 3);
    v16 = *(v12 + 4);
    v17 = *(v12 + 5);
    v36 = *(v12 + 12);
    v34 = v16;
    v35 = v17;
    v33 = v15;
    v18 = v10;
    sub_1ADE51B64(&v30, &v29);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = swift_allocObject();
      v20 = inited[2];
      *(v19 + 16) = v20;
      sub_1ADE5215C(v20);

      inited = v19;
    }

    v21 = swift_allocObject();
    v22 = v35;
    *(v21 + 80) = v34;
    *(v21 + 96) = v22;
    *(v21 + 112) = v36;
    v23 = v31;
    *(v21 + 16) = v30;
    *(v21 + 32) = v23;
    v24 = v33;
    *(v21 + 48) = v32;
    *(v21 + 64) = v24;
    v25 = v21 | 0x4000000000000000;
    v26 = inited[2];
    inited[2] = v25;
    sub_1ADE52174(v26);
  }

  else
  {
    inited = v30;
    sub_1AE23BC9C();

    swift_willThrow();
  }

  v27 = *MEMORY[0x1E69E9840];
  return inited;
}

uint64_t sub_1AE1D240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  type metadata accessor for Key(0);
  sub_1ADDEE3A0();
  v10 = sub_1AE23CA0C();
  v9(v10, a3, a4, a5);
}

void sub_1AE1D24B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FinalizedTimestamp(0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 40))
  {
    goto LABEL_5;
  }

  v13 = *(v3 + 24);
  if (v13 > a2)
  {
    goto LABEL_5;
  }

  v14 = *(v3 + 32);
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v16 < a2)
  {
    goto LABEL_5;
  }

  v27 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
LABEL_20:
    __break(1u);
    return;
  }

  if (v27 < v13 || v16 < v27)
  {
LABEL_5:
    v29 = v9;
    v30 = a1;
    v17 = [*(v3 + 16) attributedString];
    objc_opt_self();
    v18 = swift_dynamicCastObjCClassUnconditional();
    v36 = 0;
    if (qword_1EB5B8BF0 != -1)
    {
      swift_once();
    }

    v19 = qword_1EB5B8BF8;
    v20 = swift_allocObject();
    *(v20 + 16) = &v36;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1ADE162C8;
    *(v21 + 24) = v20;
    v34 = sub_1AE1DD608;
    v35 = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADE160D4;
    v33 = &block_descriptor_274;
    v22 = _Block_copy(aBlock);

    [v18 enumerateAttribute:v19 inRange:a2 options:a3 usingBlock:{0x100000, v22}];
    swift_unknownObjectRelease();
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      isEscapingClosureAtFileLocation = v36;

      if (qword_1ED96AC50 == -1)
      {
LABEL_9:
        sub_1ADDD0F70();
        sub_1AE23BFBC();
        if (!__OFADD__(isEscapingClosureAtFileLocation, 1))
        {
          *&v12[*(v29 + 20)] = isEscapingClosureAtFileLocation + 1;
          v24 = type metadata accessor for ObjCFinalizedTimestamp(0);
          v25 = objc_allocWithZone(v24);
          sub_1ADED0548(v12, v25 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp);
          v31.receiver = v25;
          v31.super_class = v24;
          v26 = objc_msgSendSuper2(&v31, sel_init);
          sub_1ADDE5118(v12, type metadata accessor for FinalizedTimestamp);
          v33 = v24;
          aBlock[0] = v26;
          sub_1ADE15F98(aBlock, v19);
          return;
        }

        __break(1u);
        goto LABEL_19;
      }
    }

    swift_once();
    goto LABEL_9;
  }
}

uint64_t sub_1AE1D2894()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1AE1D28CC()
{
  result = sub_1ADE51044(MEMORY[0x1E69E7CC0]);
  qword_1EB5D7CC8 = result;
  return result;
}

uint64_t sub_1AE1D28F4()
{
  if (qword_1EB5B9C08 != -1)
  {
    swift_once();
  }
}

id static NSAttributedStringKey.timestamp.getter()
{
  if (qword_1EB5B8BF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB5B8BF8;

  return v1;
}

uint64_t sub_1AE1D29EC(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v6 = a3 + a4;
  v7 = *(a3 + a4 - 24);
  v8 = *(v6 - 1);
  swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = *a3;
  (*(v15 + 16))(&v18 - v12, a1, v11);

  return CRAttributedString.Attributes.subscript.setter(v13, v14, v16, v8);
}

void (*CRAttributedString.Attributes.subscript.modify(void *a1, void *a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  swift_getAssociatedTypeWitness();
  v13 = sub_1AE23D7CC();
  v11[4] = v13;
  v14 = *(v13 - 8);
  v11[5] = v14;
  v15 = *(v14 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v18 = *v4;
  CRAttributedString.Attributes.subscript.getter(a2, a4, v16);
  return sub_1AE1D2C8C;
}

void sub_1AE1D2C8C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v7 = v2[3];
    v9 = *v2;
    (*(v6 + 16))(*(*a1 + 48), v4, v5);

    CRAttributedString.Attributes.subscript.setter(v3, v9, v10, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v12 = v2[2];
    v11 = v2[3];
    v13 = *v2;

    CRAttributedString.Attributes.subscript.setter(v4, v13, v14, v12);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t static CRAttributedString.Attributes.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  *&v41[0] = *a1;
  v5 = CRAttributedString.Attributes.count.getter();
  v33 = v4;
  *&v38 = v4;
  if (v5 != CRAttributedString.Attributes.count.getter())
  {
    return 0;
  }

  v6 = v3 + 64;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v3 + 64);
  v10 = (v7 + 63) >> 6;
  v34 = v3;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CA0];
  while (v9)
  {
    v13 = v11;
LABEL_17:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = v16 | (v13 << 6);
    v18 = *(*(v34 + 48) + 8 * v17);
    sub_1ADDE4E28(*(v34 + 56) + 32 * v17, v37);
    *&v38 = v18;
    sub_1ADDEE390(v37, (&v38 + 8));
    v19 = v18;
LABEL_18:
    v41[0] = v38;
    v41[1] = v39;
    v42 = v40;
    v2 = v38;
    if (!v38)
    {

      return 1;
    }

    v20 = v12;
    sub_1ADDEE390((v41 + 8), &v38);
    if (qword_1EB5B8BF0 != -1)
    {
      swift_once();
    }

    v21 = sub_1AE23CD0C();
    v23 = v22;
    if (v21 == sub_1AE23CD0C() && v23 == v24)
    {

      goto LABEL_6;
    }

    v25 = sub_1AE23E00C();

    if (v25)
    {
LABEL_6:
      __swift_destroy_boxed_opaque_existential_1(&v38);

      v12 = v20;
    }

    else
    {
      if (!*(v33 + 16) || (v12 = v20, v26 = sub_1ADDF1D10(v2), (v27 & 1) == 0))
      {

        __swift_destroy_boxed_opaque_existential_1(&v38);
        return 0;
      }

      sub_1ADDE4E28(*(v33 + 56) + 32 * v26, v36);
      sub_1ADDEE390(v36, v37);
      sub_1ADDE4E28(&v38, v36);
      if (swift_dynamicCast())
      {
        sub_1ADDE4E28(v37, v36);

        if (swift_dynamicCast())
        {
          v28 = v35;
        }

        else
        {
          v28 = 0;
        }

        if (v35)
        {
          if (!v28)
          {
            goto LABEL_41;
          }

          v32 = *(*v35 + 96);
          swift_retain_n();

          v30 = v32(v29);

          __swift_destroy_boxed_opaque_existential_1(v37);
          __swift_destroy_boxed_opaque_existential_1(&v38);

          v12 = v20;
          if ((v30 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v37);
          __swift_destroy_boxed_opaque_existential_1(&v38);
          if (v28)
          {
            goto LABEL_42;
          }

          v12 = v20;
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v37);
        __swift_destroy_boxed_opaque_existential_1(&v38);
      }
    }
  }

  if (v10 <= v11 + 1)
  {
    v14 = v11 + 1;
  }

  else
  {
    v14 = v10;
  }

  v15 = v14 - 1;
  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      v9 = 0;
      v40 = 0;
      v11 = v15;
      v38 = 0u;
      v39 = 0u;
      goto LABEL_18;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_41:

  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(&v38);
LABEL_42:

LABEL_43:

  return 0;
}

uint64_t CRAttributedString.Attributes.count.getter()
{
  v1 = *v0;
  v2 = *(v1 + 16);
  if (qword_1EB5B8BF0 == -1)
  {
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    swift_once();
    if (!*(v1 + 16))
    {
      goto LABEL_6;
    }
  }

  v3 = sub_1ADDF1D10(qword_1EB5B8BF8);
  if (v4)
  {
    sub_1ADDE4E28(*(v1 + 56) + 32 * v3, v7);
    v5 = 1;
    goto LABEL_7;
  }

LABEL_6:
  v5 = 0;
  memset(v7, 0, sizeof(v7));
LABEL_7:
  sub_1ADDCEDE0(v7, &qword_1EB5BAA00, &qword_1AE2587A0);
  result = v2 - v5;
  if (__OFSUB__(v2, v5))
  {
    __break(1u);
  }

  return result;
}

uint64_t CRAttributedString.Attributes.description.getter()
{
  v1 = *v0;
  v28 = *v0;
  if (CRAttributedString.Attributes.count.getter() < 1)
  {
    return 6109787;
  }

  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (v4)
  {
LABEL_10:
    v9 = __clz(__rbit64(v4)) | (v6 << 6);
    v10 = *(*(v1 + 48) + 8 * v9);
    sub_1ADDE4E28(*(v1 + 56) + 32 * v9, v29);
    v28 = v10;
    v11 = v10;
    sub_1AE1D355C(&v28, &v26);
    v4 &= v4 - 1;
    sub_1ADDCEDE0(&v28, &qword_1EB5BE0C8, &unk_1AE2587A8);
    v12 = v27;
    if (v27)
    {
      v25 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1ADE55240(0, *(v7 + 2) + 1, 1, v7);
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v24 = v14 + 1;
        v17 = v7;
        v18 = *(v7 + 2);
        v19 = sub_1ADE55240((v13 > 1), v14 + 1, 1, v17);
        v14 = v18;
        v15 = v24;
        v7 = v19;
      }

      *(v7 + 2) = v15;
      v16 = &v7[16 * v14];
      *(v16 + 4) = v25;
      *(v16 + 5) = v12;
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      v28 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
      sub_1ADDCC7D4(&qword_1EB5B8C10, &qword_1EB5BA250, &unk_1AE251E30);
      v20 = sub_1AE23CBFC();
      v22 = v21;

      v28 = 91;
      v29[0] = 0xE100000000000000;
      MEMORY[0x1B26FB670](v20, v22);

      MEMORY[0x1B26FB670](93, 0xE100000000000000);

      return v28;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v6;
    if (v4)
    {
      v6 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);

  sub_1ADDCEDE0(&v28, &qword_1EB5BE0C8, &unk_1AE2587A8);

  __break(1u);
  return result;
}

uint64_t sub_1AE1D355C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  if (qword_1EB5B8BF0 != -1)
  {
    swift_once();
  }

  v5 = sub_1AE23CD0C();
  v7 = v6;
  if (v5 == sub_1AE23CD0C() && v7 == v8)
  {

    goto LABEL_11;
  }

  v10 = sub_1AE23E00C();

  if (v10)
  {
LABEL_11:
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  sub_1ADDCEE40(a1, &v21, &qword_1EB5BE0C8, &unk_1AE2587A8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE68, &unk_1AE24FCD0);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    v12 = sub_1AE23E02C();
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    sub_1ADDCEDE0(&v23, qword_1EB5BBE70, &unk_1AE25AA00);
    sub_1ADDCEE40(a1, &v21, &qword_1EB5BE0C8, &unk_1AE2587A8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB390, &unk_1AE24FCE0);
    if (!swift_dynamicCast())
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      sub_1ADDCEDE0(&v23, &unk_1EB5BEB20, &qword_1AE24C510);
      *&v23 = 0;
      *(&v23 + 1) = 0xE000000000000000;
      __swift_project_boxed_opaque_existential_1(a1 + 1, a1[4]);
      sub_1AE23DFCC();
      v15 = *(&v23 + 1);
      v14 = v23;
      goto LABEL_16;
    }

    __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    v12 = sub_1AE23DD9C();
  }

  v14 = v12;
  v15 = v13;
  __swift_destroy_boxed_opaque_existential_1(&v23);
LABEL_16:
  sub_1ADDCEE40(a1, &v23, &qword_1EB5BE0C8, &unk_1AE2587A8);
  v16 = v23;
  v17 = sub_1AE23CD0C();
  v19 = v18;

  v21 = v17;
  v22 = v19;
  __swift_destroy_boxed_opaque_existential_1(&v23 + 1);
  MEMORY[0x1B26FB670](8250, 0xE200000000000000);
  MEMORY[0x1B26FB670](v14, v15);

  v20 = v22;
  *a2 = v21;
  a2[1] = v20;
  return result;
}

NSAttributedStringKey_optional __swiftcall CRAttributedString.Attributes.Keys.Iterator.next()()
{
  sub_1AE1D3950();
  v1 = v0;
  if (qword_1EB5B8BF0 == -1)
  {
    if (!v0)
    {
      return v1;
    }
  }

  else
  {
    swift_once();
    if (!v1)
    {
      return v1;
    }
  }

  v2 = qword_1EB5B8BF8;
  v3 = sub_1AE23CD0C();
  v5 = v4;
  if (v3 == sub_1AE23CD0C() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1AE23E00C();

    if ((v8 & 1) == 0)
    {
      return v1;
    }
  }

  sub_1AE1D3950();
  v11.value = v10;

  return v11;
}

void sub_1AE1D3950()
{
  v1 = v0;
  while (1)
  {
    v2 = v1[3];
    v3 = v1[4];
    if (!v3)
    {
      break;
    }

    v4 = v1[3];
LABEL_8:
    v7 = *(*(*v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v3)))));
    v1[3] = v4;
    v1[4] = (v3 - 1) & v3;
    v12 = v7;
    v9 = v1[5];
    v8 = v1[6];
    v10 = v7;
    if (v9(&v12))
    {
      return;
    }
  }

  v5 = (v1[2] + 64) >> 6;
  v6 = v1[3];
  while (1)
  {
    v4 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v4 >= v5)
    {
      break;
    }

    v3 = *(v1[1] + 8 * v4);
    ++v6;
    if (v3)
    {
      goto LABEL_8;
    }
  }

  if (v5 <= v2 + 1)
  {
    v11 = v2 + 1;
  }

  else
  {
    v11 = (v1[2] + 64) >> 6;
  }

  v1[3] = v11 - 1;
  v1[4] = 0;
}

NSAttributedStringKey_optional sub_1AE1D3A2C@<X0>(NSAttributedStringKey_optional *a1@<X8>)
{
  result.value = CRAttributedString.Attributes.Keys.Iterator.next()().value;
  a1->value = result.value;
  return result;
}

uint64_t CRAttributedString.Attributes.Keys.makeIterator()@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = -1 << *(*v1 + 32);
  v5 = ~v4;
  v6 = *v1 + 64;
  v7 = -v4;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(*v1 + 64);
  *a1 = *v1;
  a1[1] = v6;
  a1[2] = v5;
  a1[3] = 0;
  a1[4] = v9;
  a1[5] = v2;
  a1[6] = v3;
}

BOOL static CRAttributedString.Attributes.Keys.Index.< infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result < *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL static CRAttributedString.Attributes.Keys.Index.== infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result == *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void CRAttributedString.Attributes.Keys.startIndex.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1AE1D3B8C(*v1, *(v1 + 8));
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
}

void sub_1AE1D3B8C(uint64_t a1, uint64_t (*a2)(id *))
{
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  v5 = sub_1AE23D8EC();
  v6 = *(a1 + 36);
  while (1)
  {
    v8 = 1 << *(a1 + 32);
    if (v5 == v8)
    {
      break;
    }

    if (v5 < 0 || v5 >= v8)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v9 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_20;
    }

    v20 = *(*(a1 + 48) + 8 * v5);
    v10 = v20;
    v11 = a2(&v20);

    if (v11)
    {
      return;
    }

    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_21;
    }

    v12 = *(v3 + 8 * v9);
    if ((v12 & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v6 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v13 = v12 & (-2 << (v5 & 0x3F));
    if (v13)
    {
      v7 = __clz(__rbit64(v13)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v14 = v9 << 6;
      v15 = v9 + 1;
      v16 = (a1 + 72 + 8 * v9);
      while (v15 < (v7 + 63) >> 6)
      {
        v18 = *v16++;
        v17 = v18;
        v14 += 64;
        ++v15;
        if (v18)
        {
          sub_1ADDFFBC8(v5, v6, 0);
          v7 = __clz(__rbit64(v17)) + v14;
          goto LABEL_3;
        }
      }

      sub_1ADDFFBC8(v5, v6, 0);
    }

LABEL_3:
    v5 = v7;
    if (v6 != *(a1 + 36))
    {
      goto LABEL_24;
    }
  }
}

void CRAttributedString.Attributes.Keys.endIndex.getter(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 36);
  *a1 = 1 << *(*v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

double CRAttributedString.Attributes.Keys.index(after:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  *&v11 = *a1;
  *(&v11 + 1) = v4;
  v12 = v5;
  sub_1ADFAF2D8(v11, v4, v5);
  sub_1AE1DCAB0(&v11, v6, v7);
  v9 = v12;
  result = *&v11;
  *a2 = v11;
  *(a2 + 16) = v9;
  return result;
}

id CRAttributedString.Attributes.Keys.subscript.getter(uint64_t a1)
{
  v1 = sub_1AE1DCCFC(a1);

  return v1;
}

uint64_t static CRAttributedString.Attributes.Keys.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];

  sub_1ADF7BA70(v2, v3);
  v9 = v8;
  sub_1ADF7BA70(v5, v6);
  LOBYTE(v4) = sub_1AE1D3EBC(v9, v10);

  return v4 & 1;
}

uint64_t sub_1AE1D3EBC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v26 = v8;
  v27 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v28 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      v14 = *(a2 + 40);
      sub_1AE23CD0C();
      sub_1AE23E31C();
      v29 = v13;
      sub_1AE23CDAC();
      v15 = sub_1AE23E34C();

      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v18 = ~v16;
      while (1)
      {
        v19 = *(*(a2 + 48) + 8 * v17);
        v20 = sub_1AE23CD0C();
        v22 = v21;
        if (v20 == sub_1AE23CD0C() && v22 == v23)
        {

          goto LABEL_24;
        }

        v25 = sub_1AE23E00C();

        if (v25)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v8 = v26;
      result = v27;
      v7 = v28;
      if (!v28)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void (*sub_1AE1D40F8(uint64_t *a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1AE1D41CC(v4, a2);
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  return sub_1AE1D4184;
}

void sub_1AE1D4184(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t sub_1AE1D4224(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v1 = v5[0];
  v5[1] = v2;
  v6 = v3;
  CRAttributedString.Attributes.Keys.index(after:)(v5, a1);

  return sub_1ADDFFBC8(v1, v2, v3);
}

uint64_t sub_1AE1D428C@<X0>(void *a1@<X8>)
{
  CRAttributedString.Attributes.Keys.makeIterator()(a1);
  v2 = *v1;
  v3 = v1[2];
}

uint64_t sub_1AE1D42CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AE1D4320()
{
  swift_getWitnessTable();
  v1 = sub_1AE23836C();
  v2 = *v0;
  v3 = v0[2];

  return v1;
}

uint64_t CRAttributedString.Attributes.keys.getter@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = sub_1AE1D43B0;
  a1[2] = 0;
}

uint64_t sub_1AE1D43B0(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EB5B8BF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1AE23CD0C();
  v4 = v3;
  if (v2 == sub_1AE23CD0C() && v4 == v5)
  {

    v8 = 0;
  }

  else
  {
    v7 = sub_1AE23E00C();

    v8 = v7 ^ 1;
  }

  return v8 & 1;
}

uint64_t sub_1AE1D448C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static CRAttributedString.Attributes.== infix(_:_:)(a1, a2);
}

void CRAttributedString.version.getter(void *a1@<X8>)
{
  if (*v1)
  {
    v3 = [*(*v1 + 16) version];
    sub_1AE23D83C();
    swift_unknownObjectRelease();
    type metadata accessor for ObjCVersion();
    swift_dynamicCast();
    v4 = &v7[OBJC_IVAR____TtC9Coherence11ObjCVersion_version];
    swift_beginAccess();
    v6 = *v4;
    v5 = *(v4 + 1);

    *a1 = v6;
    a1[1] = v5;
  }

  else
  {
    __break(1u);
  }
}

void CRAttributedString.copy(renamingReferences:)(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v8 = *v2;
  CRAttributedString.attributedString.getter();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);

  sub_1AE1D45D0(v5, a2);
}

void sub_1AE1D45D0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CRAttributedStringRef();
  v4 = swift_allocObject();
  sub_1ADDEBF04();
  CRAttributedString.insert(contentsOf:at:)(a1, 0);
  if (v4)
  {
    v5 = [*(v4 + 16) attributedString];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClassUnconditional();
    if (qword_1EB5B8BF0 != -1)
    {
      swift_once();
    }

    v7 = qword_1EB5B8BF8;
    CRAttributedString.count.getter();
    [v6 removeAttribute:v7 range:{0, v8, v4}];
    swift_unknownObjectRelease();

    *a2 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t CRAttributedString.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  CRAttributedString.attributedString.getter();
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_1AE1D45D0(v9, a3);
}

void CRAttributedString.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CRAttributedStringRef();
  v4 = swift_allocObject();
  sub_1ADDEBF04();

  *a2 = v4;
}

void CRAttributedString.init(_:string:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  CRAttributedString.init(_:)(a2, a3, &v7);
  v6 = v7;

  *a4 = v6;
}

uint64_t CRAttributedString.init(string:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = CRAttributedString.init(_:)(a1, a2, &v5);
  *a3 = v5;
  return result;
}

void CRAttributedString.init(_:string:)(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AE1D45D0(a2, &v6);
  v5 = v6;

  *a3 = v5;
}

uint64_t CRAttributedString.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  type metadata accessor for CRAttributedStringRef();
  v6 = swift_allocObject();
  sub_1ADDEBF04();
  *a3 = v6;
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  CRAttributedString.insert(contentsOf:at:)(v7, 0);
}

Swift::Void __swiftcall CRAttributedString.insert(contentsOf:at:)(Swift::String contentsOf, Swift::Int at)
{
  sub_1ADE0B3D0();
  v4 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v5 = sub_1AE23CCDC();
  v6 = [v4 initWithString_];

  v7 = *v2;
  if (!*v2)
  {
    goto LABEL_15;
  }

  v8 = *(v7 + 16);
  v9 = [v6 length];
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1ADE0F07C;
  *(v11 + 24) = v10;
  v20[4] = sub_1ADE0F074;
  v20[5] = v11;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1ADE0EEE0;
  v20[3] = &block_descriptor_16;
  v12 = _Block_copy(v20);
  v13 = v6;

  [v8 insertAtIndex:at length:v9 getStorage:v12];

  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v14 = [v13 length];

    if (*(v7 + 40))
    {
      goto LABEL_10;
    }

    v15 = *(v7 + 24);
    v16 = *(v7 + 32);
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (!v17)
    {
      if (v18 != at)
      {
        goto LABEL_10;
      }

      v19 = v14 + at;
      if (!__OFADD__(at, v14))
      {
        v14 = (v19 - v15);
        if (!__OFSUB__(v19, v15))
        {
          goto LABEL_11;
        }

        __break(1u);
LABEL_10:
        *(v7 + 24) = at;
LABEL_11:
        *(v7 + 32) = v14;
        *(v7 + 40) = 0;

        return;
      }

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void CRAttributedString.init(_:)(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v3 = CRAttributedString.Substring.attributedString.getter();

  sub_1AE1D45D0(v3, &v6);
  *a2 = v6;
}

id CRAttributedString.Substring.attributedString.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = [*(v0[2] + 16) attributedString];
  objc_opt_self();
  result = swift_dynamicCastObjCClassUnconditional();
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
  }

  else
  {
    v5 = [result attributedSubstringFromRange_];
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

void CRAttributedString.init(_:transformAttributes:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = 0;
  [a1 mutableCopy];
  sub_1AE23D83C();
  swift_unknownObjectRelease();
  sub_1ADDEE524(0, &unk_1EB5B8BB8, 0x1E696AD40);
  swift_dynamicCast();
  v12 = v22;
  v13 = [v22 length];
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v14 = v13;
    v15 = swift_allocObject();
    v15[2] = a4;
    v15[3] = a5;
    v15[4] = a2;
    v15[5] = a3;
    v15[6] = v12;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1AE1DCD28;
    *(v16 + 24) = v15;
    aBlock[4] = sub_1AE1DCD40;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AE1D240C;
    aBlock[3] = &block_descriptor_22_0;
    v17 = _Block_copy(aBlock);
    v18 = v12;

    [v18 enumerateAttributesInRange:0 options:v14 usingBlock:{0, v17}];
    _Block_release(v17);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      type metadata accessor for CRAttributedStringRef();
      v19 = swift_allocObject();
      sub_1ADDEBF04();
      v20 = *a6;

      *a6 = v19;
      CRAttributedString.insert(contentsOf:at:)(v18, 0);

      return;
    }
  }

  __break(1u);
}

void sub_1AE1D4F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr), uint64_t a6, void *a7)
{
  a5(&v11);
  type metadata accessor for Key(0);
  sub_1ADDEE3A0();
  v10 = sub_1AE23C9FC();

  [a7 setAttributes:v10 range:{a2, a3}];
}

Swift::Void __swiftcall CRAttributedString.append(_:)(Swift::String a1)
{
  v2 = v1;
  sub_1ADE0B3D0();
  v3 = *v1;
  v28[0] = *v1;
  CRAttributedString.attributedString.getter();
  v5 = v4;
  v6 = [v4 length];

  if (v6 < 1)
  {
    sub_1ADE0F4FC(MEMORY[0x1E69E7CC0]);
    goto LABEL_6;
  }

  v28[0] = *v2;
  v3 = v28[0];
  CRAttributedString.attributedString.getter();
  if (v28[0])
  {
    v8 = v7;
    v9 = [objc_msgSend(*(v28[0] + 16) attributedString];
    swift_unknownObjectRelease();
    if (__OFSUB__(v9, 1))
    {
      goto LABEL_18;
    }

    v10 = [v8 attributesAtIndex:v9 - 1 effectiveRange:0];

    type metadata accessor for Key(0);
    sub_1ADDEE3A0();
    sub_1AE23CA0C();

LABEL_6:
    v11 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v12 = sub_1AE23CCDC();
    type metadata accessor for Key(0);
    sub_1ADDEE3A0();
    v13 = sub_1AE23C9FC();

    v14 = [v11 initWithString:v12 attributes:v13];

    if (!v3)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v15 = [*(v3 + 16) length];
    v16 = *(v3 + 16);
    v17 = [v14 length];
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1ADE0F080;
    *(v19 + 24) = v18;
    v28[4] = sub_1AE16B1E4;
    v28[5] = v19;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 1107296256;
    v28[2] = sub_1ADE0EEE0;
    v28[3] = &block_descriptor_32;
    v20 = _Block_copy(v28);
    v21 = v14;

    [v16 insertAtIndex:v15 length:v17 getStorage:v20];

    _Block_release(v20);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if ((v16 & 1) == 0)
    {
      v22 = [v21 length];

      if (*(v3 + 40))
      {
        goto LABEL_15;
      }

      v23 = *(v3 + 24);
      v24 = *(v3 + 32);
      v25 = __OFADD__(v23, v24);
      v26 = (v23 + v24);
      if (!v25)
      {
        if (v26 != v15)
        {
          goto LABEL_15;
        }

        v27 = &v22[v15];
        if (!__OFADD__(v15, v22))
        {
          v22 = &v27[-v23];
          if (!__OFSUB__(v27, v23))
          {
            goto LABEL_16;
          }

          __break(1u);
LABEL_15:
          *(v3 + 24) = v15;
LABEL_16:
          *(v3 + 32) = v22;
          *(v3 + 40) = 0;

          return;
        }

        goto LABEL_20;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_22:
  __break(1u);
}

void CRAttributedString.removeSubrange(_:)(uint64_t a1, uint64_t a2)
{
  sub_1ADE0B3D0();
  v5 = *v2;
  if (!*v2)
  {
    goto LABEL_11;
  }

  if (qword_1EB5B9C00 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB5D7CC0);
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  os_unfair_lock_unlock(&dword_1EB5D7CC0);
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v8 = *(v5 + 16);
  [v8 removeObjectsInRange_];
}

{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  if (v5 < 1)
  {
    return;
  }

  v3 = a1;
  sub_1ADE0B3D0();
  v4 = *v2;
  if (!*v2)
  {
    __break(1u);
    return;
  }

  if (qword_1EB5B9C00 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  os_unfair_lock_lock(&dword_1EB5D7CC0);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 1;
  os_unfair_lock_unlock(&dword_1EB5D7CC0);
  v6 = *(v4 + 16);
  [v6 removeObjectsInRange_];
}

void CRAttributedString.replaceSubrange(_:with:)(uint64_t a1, uint64_t a2)
{
  sub_1ADE0B3D0();
  v5 = *v2;
  if (!*v2)
  {
    goto LABEL_9;
  }

  if (qword_1EB5B9C00 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB5D7CC0);
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  os_unfair_lock_unlock(&dword_1EB5D7CC0);
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v7 = MEMORY[0x1E696AAB0];
  v8 = *(v5 + 16);
  v9 = objc_allocWithZone(v7);
  v10 = sub_1AE23CCDC();
  v11 = [v9 initWithString_];

  [v8 replaceStorageInRange:a1 withStorage:{v6, v11}];
}

uint64_t CRAttributedString.Runs.Run.range.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t CRAttributedString.Runs.Run.attributes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

uint64_t static CRAttributedString.Runs.Run.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v4 = a1[2];
    v6 = a2[2];
    v7 = v4;

    v3 = static CRAttributedString.Attributes.== infix(_:_:)(&v7, &v6);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1AE1D57A0(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static CRAttributedString.Runs.Run.== infix(_:_:)(a1, a2);
}

uint64_t sub_1AE1D57B0()
{
  v1 = sub_1AE1DCD68();
  v2 = *(v0 + 16);

  return v1;
}

uint64_t CRAttributedString.Substring.runs.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
}

id sub_1AE1D5814()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v4 = *(v3 + 16);

    return [v4 useRenameIfAvailable];
  }

  else
  {
    type metadata accessor for CRAttributedStringRef();
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 40) = 1;
    if (qword_1EB5B9C00 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EB5D7CC0);
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 1;
    os_unfair_lock_unlock(&dword_1EB5D7CC0);
    [*(v3 + 16) copy];
    sub_1AE23D83C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
    swift_dynamicCast();
    *(v6 + 16) = v7;

    *(v0 + 16) = v6;
  }

  return result;
}

void CRAttributedString.Substring.attributes.getter(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [*(v1[2] + 16) attributedString];
  objc_opt_self();
  v5 = [swift_dynamicCastObjCClassUnconditional() attributesAtIndex:v3 effectiveRange:0];
  swift_unknownObjectRelease();
  type metadata accessor for Key(0);
  sub_1ADDEE3A0();
  v6 = sub_1AE23CA0C();

  *a1 = v6;
}

void sub_1AE1D5A38(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 2);
  v5 = *a1;
  v6 = v3;
  CRAttributedString.Substring.attributes.getter(&v4);
  *a2 = v4;
}

uint64_t sub_1AE1D5A84(uint64_t *a1)
{
  v2 = *a1;

  return CRAttributedString.Substring.attributes.setter(&v2);
}

uint64_t CRAttributedString.Substring.attributes.setter(uint64_t *a1)
{
  v2 = *a1;
  sub_1AE1D5814();
  [*(v1[2] + 16) attributedString];
  objc_opt_self();
  result = swift_dynamicCastObjCClassUnconditional();
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 - *v1;
  if (__OFSUB__(v4, *v1))
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    v9 = v2;
    sub_1AE1D24B8(&v9, v5, v6);
    type metadata accessor for Key(0);
    sub_1ADDEE3A0();
    v8 = sub_1AE23C9FC();

    [v7 setAttributes:v8 range:{v5, v6}];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*CRAttributedString.Substring.attributes.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  v4 = *v2;
  v5 = *(v2 + 16);
  CRAttributedString.Substring.attributes.getter(a1);
  return sub_1AE1D5C40;
}

uint64_t sub_1AE1D5C40(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[2];
  if (a2)
  {
    v5 = *a1;

    CRAttributedString.Substring.attributes.setter(&v5);
  }

  else
  {
    v5 = *a1;
    return CRAttributedString.Substring.attributes.setter(&v5);
  }
}

uint64_t CRAttributedString.Substring.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *v3;
  v8 = *(v3[2] + 16);
  v9 = v6;
  v10 = [v8 attributedString];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  (*(a2 + 40))(*(v9 + *MEMORY[0x1E69E6CE8] + 8), a2);
  v12 = sub_1AE23CCDC();

  v13 = [v11 attribute:v12 atIndex:v7 effectiveRange:0];

  if (v13)
  {
    sub_1AE23D83C();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    swift_unknownObjectRelease();
    sub_1ADDCEDE0(&v20, &qword_1EB5BAA00, &qword_1AE2587A0);
LABEL_9:
    v20 = 0u;
    v21 = 0u;
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  (*(*v17 + 80))(&v20);

  swift_unknownObjectRelease();
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA00, &qword_1AE2587A0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a3, v15 ^ 1u, 1, AssociatedTypeWitness);
}

uint64_t sub_1AE1D5F38@<X0>(__int128 *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  return CRAttributedString.Substring.subscript.getter(*a2, *(a2 + a3 - 8), a4);
}

void *sub_1AE1D5F84(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v6 = a3 + a4;
  v7 = *(a3 + a4 - 24);
  v8 = *(v6 - 1);
  swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = *a3;
  (*(v15 + 16))(&v18 - v12, a1, v11);

  return CRAttributedString.Substring.subscript.setter(v13, v14, v16, v8);
}

void *CRAttributedString.Substring.subscript.setter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v45 = a2;
  v46 = a1;
  v6 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  sub_1AE1D5814();
  v43 = v4[2];
  v20 = [*(v43 + 16) attributedString];
  objc_opt_self();
  v44 = v20;
  result = swift_dynamicCastObjCClassUnconditional();
  v23 = *v4;
  v22 = v4[1];
  v24 = __OFSUB__(v22, *v4);
  v25 = v22 - *v4;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    v42 = result;
    (*(v47 + 16))(v11, v46, v48);
    if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
    {
      v26 = *(v47 + 8);
      v27 = v11;
      v28 = v48;
      v26(v27, v48);
      v49[0] = sub_1ADE0F4FC(MEMORY[0x1E69E7CC0]);
      v29 = v25;
      sub_1AE1D24B8(v49, v23, v25);
      type metadata accessor for Key(0);
      sub_1ADDEE3A0();
      v30 = sub_1AE23C9FC();

      v31 = v42;
      [v42 addAttributes:v30 range:{v23, v29}];

      (*(a4 + 40))(v6, a4);
      v32 = sub_1AE23CCDC();

      [v31 removeAttribute:v32 range:{v23, v29}];

      swift_unknownObjectRelease();
      return (v26)(v46, v28);
    }

    else
    {
      (*(v12 + 32))(v19, v11, AssociatedTypeWitness);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BE0D0, &unk_1AE2587B8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AE2418F0;
      v34 = *(a4 + 40);
      v40 = v25;
      v34(v6, a4);
      v35 = sub_1AE23CCDC();
      v41 = v19;
      v36 = v35;

      *(inited + 32) = v36;
      (*(v12 + 16))(v16, v19, AssociatedTypeWitness);
      *(inited + 64) = &type metadata for AnyCRValue;
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      AnyCRValue.init<A>(_:)(v16, AssociatedTypeWitness, (inited + 40));
      v37 = sub_1ADE0F4FC(inited);
      swift_setDeallocating();
      sub_1ADDCEDE0(inited + 32, &qword_1EB5BA0A0, &qword_1AE241880);
      v49[0] = v37;
      v38 = v40;
      sub_1AE1D24B8(v49, v23, v40);
      type metadata accessor for Key(0);
      sub_1ADDEE3A0();
      v39 = sub_1AE23C9FC();

      [v42 addAttributes:v39 range:{v23, v38}];

      swift_unknownObjectRelease();

      (*(v47 + 8))(v46, v48);
      return (*(v12 + 8))(v41, AssociatedTypeWitness);
    }
  }

  return result;
}

void (*CRAttributedString.Substring.subscript.modify(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  swift_getAssociatedTypeWitness();
  v13 = sub_1AE23D7CC();
  v11[4] = v13;
  v14 = *(v13 - 8);
  v11[5] = v14;
  v15 = *(v14 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v18 = *v4;
  v19 = *(v4 + 2);
  CRAttributedString.Substring.subscript.getter(a2, a4, v16);
  return sub_1AE1D6790;
}

void sub_1AE1D6790(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v7 = v2[3];
    v9 = *v2;
    (*(v6 + 16))(*(*a1 + 48), v4, v5);

    CRAttributedString.Substring.subscript.setter(v3, v9, v10, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v12 = v2[2];
    v11 = v2[3];
    v13 = *v2;

    CRAttributedString.Substring.subscript.setter(v4, v13, v14, v12);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CRAttributedString.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = *v3;
  if (*v3)
  {
    *a3 = a1;
    a3[1] = a2;
    a3[2] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1AE1D6890@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v11 = v4;
  CRAttributedString.subscript.getter(v5, v6, &v9);
  v7 = v10;
  result = *&v9;
  *a3 = v9;
  *(a3 + 16) = v7;
  return result;
}

uint64_t sub_1AE1D68E0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];

  v8 = CRAttributedString.subscript.modify(v12, v3, v4);
  v10 = v9[2];
  *v9 = v5;
  v9[1] = v6;
  v9[2] = v7;

  return v8(v12, 0);
}

uint64_t (*CRAttributedString.subscript.modify(uint64_t (*result)(uint64_t a1, char a2), uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  *(result + 3) = v3;
  v4 = *v3;
  if (*v3)
  {
    *result = a2;
    *(result + 1) = a3;
    *(result + 2) = v4;
    *v3 = 0;
    return sub_1AE1D69B0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1D69B0(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if ((a2 & 1) == 0)
  {
    v3 = *(a1 + 24);
    v4 = *v3;
    v5 = *(a1 + 16);

    *v3 = v2;
  }
}

uint64_t CRAttributedString.subscript.setter(uint64_t a1)
{
  result = *v1;
  if (*v1)
  {
    v4 = *(a1 + 16);

    *v1 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void CRAttributedString.attributes(at:effectiveRange:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*v3)
  {
    v7 = [*(*v3 + 16) attributedString];
    objc_opt_self();
    v8 = [swift_dynamicCastObjCClassUnconditional() attributesAtIndex:a1 effectiveRange:a2];
    swift_unknownObjectRelease();
    type metadata accessor for Key(0);
    sub_1ADDEE3A0();
    v9 = sub_1AE23CA0C();

    *a3 = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AE1D6B20(uint64_t result, uint64_t a2)
{
  if (*v2)
  {
    v3 = result;
    v4 = [*(*v2 + 16) characterRangesForMergeableRange_];
    v5 = sub_1AE23CFDC();

    v6 = v5;
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = v6 + 32;
      do
      {
        sub_1ADDE4E28(v8, v13);
        sub_1ADDEE524(0, qword_1EB5BE3E8, 0x1E696B098);
        if (swift_dynamicCast())
        {
          v9 = [v12 rangeValue];
          v11 = v10;

          sub_1ADE0F9AC(v3, v9, v11);
        }

        v8 += 32;
        --v7;
      }

      while (v7);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CRAttributedString.addAttributes(_:range:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  result = sub_1ADE0B3D0();
  v8 = *v3;
  if (v8)
  {
    [*(v8 + 16) attributedString];
    objc_opt_self();
    v9 = swift_dynamicCastObjCClassUnconditional();
    v11 = v6;

    sub_1AE1D24B8(&v11, a2, a3);
    type metadata accessor for Key(0);
    sub_1ADDEE3A0();
    v10 = sub_1AE23C9FC();

    [v9 addAttributes:v10 range:{a2, a3}];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void CRAttributedString.merge(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (*v2)
  {
    if (*v2 == v4)
    {
LABEL_3:
      if (qword_1ED9670C0 != -1)
      {
        swift_once();
      }

      v5 = &word_1ED96F220;
LABEL_21:
      v13 = *v5;
      v14 = *(v5 + 2);
      *a2 = v13;
      *(a2 + 2) = v14;
      return;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  sub_1ADE0B3D0();
  v6 = *v2;
  if (*v2)
  {
    if (v4)
    {
      v7 = *(v4 + 16);
      v8 = qword_1EB5B96D8;
      v9 = *(v6 + 16);
      v10 = v7;
      if (v8 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_1EB5D7500);
      v11 = byte_1EB5D7504;
      os_unfair_lock_unlock(&dword_1EB5D7500);
      if (v11 == 1)
      {
        if (qword_1EB5B9940 != -1)
        {
          swift_once();
        }

        v12 = qword_1EB5B9948;
      }

      else
      {
        v12 = 0;
      }

      [v9 mergeWithString:v10 optimized:0 suggestedContext:v12];

      if (qword_1EB5B9C00 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_1EB5D7CC0);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 1;
      os_unfair_lock_unlock(&dword_1EB5D7CC0);
      if (qword_1EB5B9528 != -1)
      {
        swift_once();
      }

      v5 = &word_1EB5D74C0;
      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t CRAttributedString.newRefs(from:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *v2;
  if (*v2)
  {
    if (v3)
    {
      v5 = MEMORY[0x1E69E7CD0];
      if (v4 != v3)
      {
        v7 = swift_allocObject();
        *(v7 + 16) = v5;
        v8 = *(v3 + 16);
        v9 = *(v4 + 16);
        v10 = swift_allocObject();
        *(v10 + 16) = *(a2 + 16);
        *(v10 + 32) = v4;
        *(v10 + 40) = v7;
        *(v10 + 48) = v3;
        v15[4] = sub_1AE1DCD6C;
        v15[5] = v10;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 1107296256;
        v15[2] = sub_1AE168B70;
        v15[3] = &block_descriptor_41;
        v11 = _Block_copy(v15);

        v12 = v8;
        v13 = v9;

        [v12 addedRefsInRangesTo:v13 newRange:v11];

        _Block_release(v11);
        swift_beginAccess();
        v5 = *(v7 + 16);
      }

      return v5;
    }

    swift_allocObject();

    __break(1u);
  }

  else
  {

    if (!v3)
    {

      return MEMORY[0x1E69E7CD0];
    }
  }

  result = swift_allocObject();
  __break(1u);
  return result;
}

uint64_t sub_1AE1D71E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  v11 = result;
  v12 = (a6 + 16);
  if (a4)
  {
    if (!a7)
    {
      goto LABEL_10;
    }

    v16 = result;
    v17 = [*(a7 + 16) attributedString];
    objc_opt_self();
    v18 = swift_dynamicCastObjCClassUnconditional();
    v37 = a5;
    CRAttributedString.attributedString.getter();
    v29 = v19;
    if (qword_1EB5B8BF0 != -1)
    {
      swift_once();
    }

    v28 = qword_1EB5B8BF8;
    v11 = swift_allocObject();
    v11[2] = a8;
    v11[3] = a9;
    v20 = v16;
    v11[4] = v16;
    v10 = a2;
    v11[5] = a2;
    v11[6] = a3;
    v11[7] = a4;
    v11[8] = v18;
    v11[9] = a5;
    v11[10] = v12;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1AE1DD524;
    *(v21 + 24) = v11;
    v35 = sub_1AE1DD608;
    v36 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_1ADE160D4;
    v34 = &block_descriptor_234;
    v22 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();

    v12 = v29;
    [v29 enumerateAttribute:v28 inRange:v20 options:a2 usingBlock:{0, v22}];

    swift_unknownObjectRelease();
    _Block_release(v22);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if ((v22 & 1) == 0)
    {
      return 1;
    }

    __break(1u);
  }

  v37 = a5;
  CRAttributedString.attributedString.getter();
  v24 = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = v12;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1AE1DD564;
  *(v26 + 24) = v25;
  v35 = sub_1AE1DD604;
  v36 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1AE1D240C;
  v34 = &block_descriptor_244;
  v27 = _Block_copy(&aBlock);

  [v24 enumerateAttributesInRange:v11 options:v10 usingBlock:{0, v27}];

  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if ((v27 & 1) == 0)
  {
    return 1;
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

void sub_1AE1D758C(uint64_t a1)
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

  v7 = 0;
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
    while (1)
    {
      v14 = v7;
LABEL_16:
      v15 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v16 = v15 | (v14 << 6);
      v17 = *(*(a1 + 48) + 8 * v16);
      sub_1ADDE4E28(*(a1 + 56) + 32 * v16, v28);
      *&v29 = v17;
      sub_1ADDEE390(v28, (&v29 + 8));
      v18 = v17;
LABEL_17:
      v32[0] = v29;
      v32[1] = v30;
      v33 = v31;
      v19 = v29;
      if (!v29)
      {

        return;
      }

      sub_1ADDEE390((v32 + 8), v28);
      if (qword_1EB5B8BF0 != -1)
      {
        swift_once();
      }

      v20 = sub_1AE23CD0C();
      v22 = v21;
      if (v20 == sub_1AE23CD0C() && v22 == v23)
      {

        break;
      }

      v24 = sub_1AE23E00C();

      if (v24)
      {
        break;
      }

      sub_1ADDE4E28(v28, v27);
      swift_dynamicCast();
      v8 = type metadata accessor for AllRefsVisitor();
      v9 = swift_allocObject();
      *(v9 + 24) = 0;
      *(v9 + 16) = MEMORY[0x1E69E7CD0];
      v10 = (v9 + 16);
      *(&v30 + 1) = v8;
      v31 = &off_1F23C4500;
      *&v29 = v9;
      v25 = *(*v26 + 120);

      v25(&v29);
      __swift_destroy_boxed_opaque_existential_1(&v29);
      swift_beginAccess();
      v11 = *v10;

      swift_beginAccess();
      sub_1AE00F014(v11);
      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_1(v28);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  while (v5);
LABEL_6:
  if (v6 <= v7 + 1)
  {
    v12 = v7 + 1;
  }

  else
  {
    v12 = v6;
  }

  v13 = v12 - 1;
  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v14 >= v6)
    {
      v5 = 0;
      v31 = 0;
      v7 = v13;
      v29 = 0u;
      v30 = 0u;
      goto LABEL_17;
    }

    v5 = *(v2 + 8 * v14);
    ++v7;
    if (v5)
    {
      v7 = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1AE1D78BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v21 = a2 - a5;
  if (__OFSUB__(a2, a5))
  {
    __break(1u);
  }

  else
  {
    v14 = v21 + a7;
    if (!__OFADD__(v21, a7))
    {
      v17 = a6;
      v18 = a5;
      v13 = a3;
      v15 = a12;
      v20 = a13;
      v16 = a10;
      v19 = a11;
      v30 = a9;
      if (qword_1EB5B8BF0 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  v29 = a1;
  swift_once();
  a1 = v29;
LABEL_4:
  v22 = qword_1EB5B8BF8;
  sub_1ADDCEE40(a1, v32, &qword_1EB5BAA00, &qword_1AE2587A0);
  v23 = swift_allocObject();
  *(v23 + 16) = v15;
  *(v23 + 24) = v20;
  v24 = v32[1];
  *(v23 + 32) = v32[0];
  *(v23 + 48) = v24;
  *(v23 + 64) = v18;
  *(v23 + 72) = v17;
  *(v23 + 80) = v14;
  *(v23 + 88) = v13;
  *(v23 + 96) = v16;
  *(v23 + 104) = v19;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1AE1DD56C;
  *(v25 + 24) = v23;
  aBlock[4] = sub_1AE1DD608;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE160D4;
  aBlock[3] = &block_descriptor_254;
  v26 = _Block_copy(aBlock);

  [v30 enumerateAttribute:v22 inRange:v14 options:v13 usingBlock:{0, v26}];
  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1AE1D7AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  v17 = type metadata accessor for FinalizedTimestamp(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &aBlock[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &aBlock[-1] - v22;
  sub_1ADDCEE40(a5, aBlock, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (v41)
  {
    type metadata accessor for ObjCFinalizedTimestamp(0);
    if (swift_dynamicCast())
    {
      v24 = v44;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    sub_1ADDCEDE0(aBlock, &qword_1EB5BAA00, &qword_1AE2587A0);
    v24 = 0;
  }

  sub_1ADDCEE40(a1, aBlock, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (v41)
  {
    v39 = a3;
    type metadata accessor for ObjCFinalizedTimestamp(0);
    v25 = swift_dynamicCast();
    v26 = v44;
    if (v25)
    {
      isEscapingClosureAtFileLocation = v44;
    }

    else
    {
      isEscapingClosureAtFileLocation = 0;
    }

    if (!v24)
    {
      goto LABEL_25;
    }

    if (isEscapingClosureAtFileLocation)
    {
      sub_1ADED0548(v24 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v23);
      sub_1ADED0548(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v20);
      v28 = *(v17 + 20);
      v29 = *&v20[v28];
      v30 = *&v23[v28];
      if (v29 == v30)
      {
        v31 = sub_1ADF5EB00();
      }

      else
      {
        v31 = v29 < v30;
      }

      sub_1ADDE5118(v20, type metadata accessor for FinalizedTimestamp);
      sub_1ADDE5118(v23, type metadata accessor for FinalizedTimestamp);
      if ((v31 & 1) == 0)
      {
LABEL_24:

        goto LABEL_25;
      }

LABEL_20:
      v32 = a6 + a2;
      if (__OFADD__(a6, a2))
      {
        __break(1u);
      }

      else
      {
        v33 = v32 - a8;
        if (!__OFSUB__(v32, a8))
        {
          v44 = a10;
          CRAttributedString.attributedString.getter();
          v35 = v34;
          v36 = swift_allocObject();
          *(v36 + 16) = a11;
          v37 = swift_allocObject();
          *(v37 + 16) = sub_1AE1DD5B0;
          *(v37 + 24) = v36;
          v42 = sub_1AE1DD604;
          v43 = v37;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1AE1D240C;
          v41 = &block_descriptor_264;
          v38 = _Block_copy(aBlock);

          [v35 enumerateAttributesInRange:v33 options:v39 usingBlock:{0, v38}];

          _Block_release(v38);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
          goto LABEL_24;
        }
      }

      __break(1u);
      return;
    }

LABEL_16:
    v26 = 0;
    goto LABEL_20;
  }

  sub_1ADDCEDE0(aBlock, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (v24)
  {
    v39 = a3;
    goto LABEL_16;
  }

  isEscapingClosureAtFileLocation = 0;
LABEL_25:
}

uint64_t sub_1AE1D7E88(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CA0];
  if (!v4)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v9 = v7;
LABEL_14:
      v12 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v13 = v12 | (v9 << 6);
      v14 = *(*(a1 + 48) + 8 * v13);
      sub_1ADDE4E28(*(a1 + 56) + 32 * v13, v25);
      *&v26 = v14;
      sub_1ADDEE390(v25, (&v26 + 8));
      v15 = v14;
      v11 = v9;
LABEL_15:
      v29[0] = v26;
      v29[1] = v27;
      v30 = v28;
      if (!v26)
      {
      }

      sub_1ADDEE390((v29 + 8), &v26);
      result = swift_dynamicCast();
      if (result)
      {
        break;
      }

      v7 = v11;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    v16 = *&v25[0];
    v17 = type metadata accessor for AllRefsVisitor();
    v18 = swift_allocObject();
    *(v18 + 24) = 0;
    *(v18 + 16) = MEMORY[0x1E69E7CD0];
    v19 = (v18 + 16);
    *(&v27 + 1) = v17;
    v28 = &off_1F23C4500;
    *&v26 = v18;
    v24 = v11;
    v20 = v8;
    v21 = *(*v16 + 120);

    v21(&v26);
    v8 = v20;
    __swift_destroy_boxed_opaque_existential_1(&v26);
    swift_beginAccess();
    v22 = *v19;

    swift_beginAccess();
    sub_1AE00F014(v22);
    swift_endAccess();

    v7 = v24;
  }

  while (v4);
LABEL_7:
  if (v5 <= v7 + 1)
  {
    v10 = v7 + 1;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10 - 1;
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {
      v4 = 0;
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      goto LABEL_15;
    }

    v4 = *(v1 + 8 * v9);
    ++v7;
    if (v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_1AE1D8108(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  sub_1ADDEE524(0, &qword_1ED966B40, 0x1E69E58C0);
  CRAttributedString.attributedString.getter();
  v5 = v4;
  CRAttributedString.attributedString.getter();
  v7 = v6;
  v8 = sub_1AE23D78C();

  if (v8)
  {
    if (v3)
    {
      if (v2)
      {
        [*(v3 + 16) graphIsEqual_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t static CRAttributedString.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v5[0] = *a2;
  v5[1] = v2;
  sub_1AE1D8108(v5);
  return v3 & 1;
}

uint64_t CRAttributedString.visitReferences(_:)(uint64_t a1)
{
  v14 = *v1;
  CRAttributedString.attributedString.getter();
  v4 = v3;
  CRAttributedString.attributedString.getter();
  v6 = v5;
  v7 = [v5 length];

  sub_1ADF4E010(a1, v13);
  v8 = swift_allocObject();
  sub_1ADE23E6C(v13, v8 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1AE1DCDA0;
  *(v9 + 24) = v8;
  v12[4] = sub_1AE1DD604;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1AE1D240C;
  v12[3] = &block_descriptor_51;
  v10 = _Block_copy(v12);

  [v4 enumerateAttributesInRange:0 options:v7 usingBlock:{0, v10}];

  _Block_release(v10);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_1AE1D83B8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (!v10)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v13 = v12;
LABEL_16:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = v16 | (v13 << 6);
      v18 = *(*(a1 + 48) + 8 * v17);
      sub_1ADDE4E28(*(a1 + 56) + 32 * v17, v30);
      *&v31 = v18;
      sub_1ADDEE390(v30, (&v31 + 8));
      v19 = v18;
LABEL_17:
      v34[0] = v31;
      v34[1] = v32;
      v35 = v33;
      v20 = v31;
      if (!v31)
      {

        return;
      }

      sub_1ADDEE390((v34 + 8), &v31);
      if (qword_1EB5B8BF0 != -1)
      {
        swift_once();
      }

      v21 = sub_1AE23CD0C();
      v23 = v22;
      if (v21 != sub_1AE23CD0C() || v23 != v24)
      {
        break;
      }

LABEL_6:
      __swift_destroy_boxed_opaque_existential_1(&v31);

      if (!v10)
      {
        goto LABEL_8;
      }
    }

    v25 = sub_1AE23E00C();

    if (v25)
    {
      goto LABEL_6;
    }

    v26 = a5[3];
    v27 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v26);
    if ((*(v27 + 8))(v26, v27))
    {
      *a4 = 1;

      __swift_destroy_boxed_opaque_existential_1(&v31);
      return;
    }

    sub_1ADDE4E28(&v31, v30);
    swift_dynamicCast();
    (*(*v29 + 120))(a5);

    __swift_destroy_boxed_opaque_existential_1(&v31);
  }

  while (v10);
LABEL_8:
  if (v11 <= v12 + 1)
  {
    v14 = v12 + 1;
  }

  else
  {
    v14 = v11;
  }

  v15 = v14 - 1;
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      v10 = 0;
      v33 = 0;
      v12 = v15;
      v31 = 0u;
      v32 = 0u;
      goto LABEL_17;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_16;
    }
  }

  __break(1u);
}

id CRAttributedString.finalizeTimestamps(_:)(uint64_t a1)
{
  v3 = *v1;

  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = [*(v3 + 16) needToFinalizeTimestamps];

  if (!v5)
  {
    return result;
  }

  result = sub_1ADE0B3D0();
  if (!*v1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = *(*v1 + 16);

  return [v6 finalizeTimestamps_];
}

void *CRAttributedString.actionUndoingDifference(from:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *result;
  v7 = *v3;
  if (!*v3)
  {

    if (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v6)
  {

    goto LABEL_9;
  }

  if (v7 == v6)
  {
LABEL_7:
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

LABEL_9:
  aBlock = v6;
  v45[0] = v7;
  if (CRAttributedString.hasDelta(from:)(v45))
  {
    v45[0] = v7;
    v52[0] = v6;
    WitnessTable = swift_getWitnessTable();
    CRDT.merging(_:)(v52, a2, WitnessTable, &aBlock);
    v45[0] = aBlock;
    v52[0] = v6;
    CRAttributedString.actionUndoingDifference(from:)(v52, a2);
  }

  v9 = MEMORY[0x1E69E7CC0];
  v52[0] = MEMORY[0x1E69E7CC0];
  result = swift_allocObject();
  result[2] = v9;
  if (!v7)
  {
    goto LABEL_27;
  }

  v43 = a3;
  if (v6)
  {
    v10 = result;
    v11 = *(v7 + 16);
    v12 = *(v6 + 16);
    v13 = swift_allocObject();
    *(v13 + 16) = *(a2 + 16);
    *(v13 + 32) = v10;
    *(v13 + 40) = v7;
    *(v13 + 48) = v6;
    v50 = sub_1AE1DCDA8;
    v51 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v14 = v10;
    v48 = sub_1AE1DAE38;
    v49 = &block_descriptor_60;
    v15 = _Block_copy(&aBlock);

    v16 = v11;
    v17 = v12;

    v18 = [v16 undoCommandToChangeFrom:v17 unedited:v15];
    _Block_release(v15);

    [*(v6 + 16) attributedString];
    objc_opt_self();
    v19 = swift_dynamicCastObjCClassUnconditional();
    swift_beginAccess();
    v20 = v14[2];
    v21 = v20[2];
    if (v21)
    {
      v41 = v18;
      v22 = v20[4];
      v23 = v20[5];
      v24 = v20[6];
      v25 = swift_allocObject();
      v25[2] = v22;
      v25[3] = v23;
      v25[4] = v24;
      v25[5] = v52;
      v26 = v24;
      v42 = v20;

      sub_1ADDDCE80(0);
      v27 = swift_allocObject();
      *(v27 + 16) = sub_1AE1DCDD8;
      *(v27 + 24) = v25;
      v50 = sub_1AE1DD604;
      v51 = v27;
      v44 = MEMORY[0x1E69E9820];
      aBlock = MEMORY[0x1E69E9820];
      v47 = 1107296256;
      v48 = sub_1AE1D240C;
      v49 = &block_descriptor_70;
      v28 = _Block_copy(&aBlock);

      v29 = v19;
      [v19 enumerateAttributesInRange:v22 options:v23 usingBlock:{0, v28}];

      _Block_release(v28);
      LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

      if (v26)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v30 = v21 - 1;
      if (v30)
      {
        v31 = (v42 + 9);
        do
        {
          v33 = *(v31 - 2);
          v32 = *(v31 - 1);
          v34 = *v31;
          v35 = swift_allocObject();
          v35[2] = v33;
          v35[3] = v32;
          v35[4] = v34;
          v35[5] = v52;
          v36 = v34;
          sub_1ADDDCE80(sub_1AE1DCDD8);
          v37 = swift_allocObject();
          *(v37 + 16) = sub_1AE1DCDD8;
          *(v37 + 24) = v35;
          v50 = sub_1AE1DD604;
          v51 = v37;
          aBlock = v44;
          v47 = 1107296256;
          v48 = sub_1AE1D240C;
          v49 = &block_descriptor_70;
          v38 = _Block_copy(&aBlock);

          [v29 enumerateAttributesInRange:v33 options:v32 usingBlock:{0, v38}];

          _Block_release(v38);
          LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

          if (v32)
          {
            goto LABEL_26;
          }

          v31 += 3;
        }

        while (--v30);
      }

      swift_unknownObjectRelease();
      v39 = sub_1AE1DCDD8;
      v40 = v52[0];
      v18 = v41;
      if (v41)
      {
        goto LABEL_23;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      v39 = 0;
      v40 = MEMORY[0x1E69E7CC0];
      if (v18)
      {
        goto LABEL_23;
      }
    }

    if (!*(v40 + 16))
    {

      *v43 = 0;
      v43[1] = 0;
      goto LABEL_24;
    }

LABEL_23:

    *v43 = v18;
    v43[1] = v40;
LABEL_24:

    return sub_1ADDDCE80(v39);
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t *CRAttributedString.apply(_:)(uint64_t *result)
{
  v2 = result[1];
  if (!v2)
  {
    return result;
  }

  v3 = *result;
  swift_unknownObjectRetain();

  sub_1ADE0B3D0();
  if (!v3)
  {
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    v6 = *(v2 + 16);
    if (v6)
    {
LABEL_7:

      v7 = (v2 + 40);
      do
      {
        v8 = *v7;
        v9 = *(v7 - 1);

        sub_1AE1D6B20(v10, v9);

        v7 += 2;
        --v6;
      }

      while (v6);
      sub_1AE1DCDE4(v3, v2);
    }

    goto LABEL_14;
  }

  if (!*v1)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = *(*v1 + 16);
  LOBYTE(v4) = [v4 applyToString_];

  swift_unknownObjectRelease();
  if (v4)
  {
LABEL_6:
    v6 = *(v2 + 16);
    if (v6)
    {
      goto LABEL_7;
    }
  }

LABEL_14:

  return sub_1AE1DCDE4(v3, v2);
}

void *CRAttributedString.hasDelta(from:)(void *result)
{
  v2 = *result;
  v3 = *v1;
  if (*v1)
  {
    if (v3 != v2)
    {
      v4 = [*(v3 + 16) attributedString];
      objc_opt_self();
      result = swift_dynamicCastObjCClassUnconditional();
      if (v2)
      {
        v5 = result;
        v6 = [*(v2 + 16) attributedString];
        objc_opt_self();
        v7 = swift_dynamicCastObjCClassUnconditional();
        v8 = *(v2 + 16);
        v9 = *(v3 + 16);
        v10 = swift_allocObject();
        *(v10 + 16) = v5;
        *(v10 + 24) = v7;
        v15[4] = sub_1AE1DCE28;
        v15[5] = v10;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 1107296256;
        v15[2] = sub_1AE168B70;
        v15[3] = &block_descriptor_76;
        v11 = _Block_copy(v15);
        v12 = v8;
        v13 = v9;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();

        v14 = [v12 hasDeltaTo:v13 compareElements:v11];
        _Block_release(v11);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return v14;
      }

      goto LABEL_9;
    }
  }

  else if (v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t CRAttributedString.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a2;
  v9 = *v4;
  v20 = *a2;
  v21 = v9;

  CRAttributedString.finalizeTimestamps(_:)(a1);
  result = CRAttributedString.finalizeTimestamps(_:)(a1);
  if (v9)
  {
    if (v20)
    {
      v11 = *(v21 + 16);
      v12 = *(v20 + 16);
      v13 = swift_allocObject();
      *(v13 + 16) = *(a3 + 16);
      *(v13 + 32) = v9;
      *(v13 + 40) = v8;
      v14 = objc_allocWithZone(_TtC9Coherence24CRTTMergeableStringDelta);
      v19[4] = sub_1AE1DCE30;
      v19[5] = v13;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 1107296256;
      v19[2] = sub_1AE1DC9FC;
      v19[3] = &block_descriptor_82_0;
      v15 = _Block_copy(v19);

      v16 = v11;
      v17 = v12;

      v18 = [v14 initWithDeltasTo:v16 from:v17 compareElements:v15];
      _Block_release(v15);

      *a4 = v18;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *CRAttributedString.canMerge(delta:)(void *result)
{
  if (*v1)
  {
    return [*(*v1 + 16) canDeltaMerge_];
  }

  __break(1u);
  return result;
}

id CRAttributedString.merge(delta:)(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1ADE0B3D0();
  if (*v1)
  {
    return [*(*v1 + 16) deltaMerge_];
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1D92C4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static CRAttributedString.== infix(_:_:)(a1, a2);
}

uint64_t *CRAttributedString.observableDifference(from:with:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *result;
  v9 = *v4;
  if (!*v4)
  {

    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v8)
  {

    goto LABEL_9;
  }

  if (v9 == v8)
  {
LABEL_7:
    *a4 = 0;
    return result;
  }

LABEL_9:
  aBlock = v8;
  v33 = v9;
  if (CRAttributedString.hasDelta(from:)(&v33))
  {
    v33 = v9;
    v26 = v8;
    WitnessTable = swift_getWitnessTable();
    CRDT.merging(_:)(&v26, a3, WitnessTable, &aBlock);
    v33 = aBlock;
    v26 = v8;
    CRAttributedString.observableDifference(from:with:)(&v26, a2, a3);
  }

  v11 = swift_allocObject();
  v12 = *(a3 + 16);
  v13 = *(a3 + 24);
  type metadata accessor for CRAttributedString.ObservableDifference.Edit();
  result = sub_1AE23C9DC();
  *(v11 + 16) = result;
  if (!v8)
  {
    __break(1u);
    goto LABEL_17;
  }

  v25 = a4;
  if (!v9)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v14 = *(v8 + 16);
  v24 = *(v9 + 16);
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v13;
  v15[4] = v11;
  v31 = sub_1AE1DCE54;
  v32 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1ADE4EFB0;
  v30 = &block_descriptor_91_0;
  v16 = _Block_copy(&aBlock);
  v17 = v14;
  v18 = v24;

  v19 = swift_allocObject();
  v19[2] = v12;
  v19[3] = v13;
  v19[4] = v11;
  v19[5] = v9;
  v19[6] = v8;
  v31 = sub_1AE1DCEA8;
  v32 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1AE1D9FE4;
  v30 = &block_descriptor_97;
  v20 = _Block_copy(&aBlock);

  [v17 deltaTo:v18 edited:v16 unedited:v20];
  _Block_release(v20);
  _Block_release(v16);

  swift_beginAccess();
  v21 = *(v11 + 16);

  v22 = sub_1AE23D0AC();

  if (v22 < 1)
  {

    *v25 = 0;
  }

  else
  {
    v23 = *(v11 + 16);

    *v25 = v23;
  }

  return result;
}

uint64_t CRAttributedString.encode(to:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  result = sub_1ADDFCC74();
  if (!v3)
  {
    v9 = v5;
    v8 = *(a2 + 16);
    v7 = *(a2 + 24);

    sub_1ADE6BF6C(&v9, v8, v7);
  }

  return result;
}

id sub_1AE1D9724(uint64_t a1, SEL *a2)
{
  if (*v2)
  {
    return [*(*v2 + 16) *a2];
  }

  __break(1u);
  return result;
}

uint64_t CRAttributedString.ObservableDifference.Edit.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_1AE23DA2C();

    v11 = 0x7475626972747461;
    v6 = sub_1AE23DD9C();
    MEMORY[0x1B26FB670](v6);

    result = MEMORY[0x1B26FB670](3943982, 0xE300000000000000);
    if (!__OFADD__(a1, a2))
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  else
  {
    sub_1AE23DA2C();

    v11 = 0x6574636172616863;
    v8 = sub_1AE23DD9C();
    MEMORY[0x1B26FB670](v8);

    result = MEMORY[0x1B26FB670](3943982, 0xE300000000000000);
    if (!__OFADD__(a1, a2))
    {
      v9 = sub_1AE23DD9C();
      MEMORY[0x1B26FB670](v9);

      MEMORY[0x1B26FB670](0xD000000000000012, 0x80000001AE263C70);
LABEL_6:
      v10 = sub_1AE23DD9C();
      MEMORY[0x1B26FB670](v10);

      MEMORY[0x1B26FB670](41, 0xE100000000000000);
      return v11;
    }
  }

  __break(1u);
  return result;
}

BOOL static CRAttributedString.ObservableDifference.Edit.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = a1 == a5 && a2 == a6;
  if ((a8 & 1) == 0)
  {
    v9 = 0;
  }

  v12 = a1 == a5 && a2 == a6 && a3 == a7;
  if (a8)
  {
    v12 = 0;
  }

  if (a4)
  {
    return v9;
  }

  else
  {
    return v12;
  }
}

uint64_t static CRAttributedString.ObservableDifference.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for CRAttributedString.ObservableDifference.Edit();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69530](v2, v3, v4, WitnessTable);
}

uint64_t sub_1AE1D9A64(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static CRAttributedString.ObservableDifference.== infix(_:_:)(a1, a2);
}

uint64_t sub_1AE1D9A70()
{
  swift_beginAccess();
  type metadata accessor for CRAttributedString.ObservableDifference.Edit();
  sub_1AE23D11C();
  sub_1AE23D0CC();
  return swift_endAccess();
}

uint64_t sub_1AE1D9AFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (__OFSUB__(a3, result))
  {
    __break(1u);
  }

  else
  {
    v19[11] = v9;
    v19[12] = v10;
    v19[0] = a7;
    v18 = sub_1AE1D9CB8(v19, result, a2, a3 - result);
    MEMORY[0x1EEE9AC00](v18);
    v17[2] = a8;
    v17[3] = a9;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE3D8, &qword_1AE259220);
    v13 = type metadata accessor for CRAttributedString.ObservableDifference.Edit();
    v14 = sub_1ADDCC7D4(&qword_1EB5BE3E0, &qword_1EB5BE3D8, &qword_1AE259220);
    v16 = sub_1ADE08EB0(sub_1AE1DD468, v17, v12, v13, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);

    v19[0] = v16;
    swift_beginAccess();
    sub_1AE23D11C();
    swift_getWitnessTable();
    sub_1AE23D0BC();
    return swift_endAccess();
  }

  return result;
}

char *sub_1AE1D9CB8(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *result;
  v6 = *v4;
  v28 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v10 = [*(v6 + 16) attributedString];
    objc_opt_self();
    result = swift_dynamicCastObjCClassUnconditional();
    if (v5)
    {
      v11 = result;
      v12 = [*(v5 + 16) attributedString];
      objc_opt_self();
      v13 = swift_dynamicCastObjCClassUnconditional();
      v25 = 0;
      v26 = 0;
      v27 = 1;
      if (qword_1EB5B8BF0 != -1)
      {
        swift_once();
      }

      v14 = qword_1EB5B8BF8;
      v15 = swift_allocObject();
      v15[2] = v13;
      v15[3] = a4;
      v15[4] = &v25;
      v15[5] = &v28;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_1AE1DD480;
      *(v16 + 24) = v15;
      v24[4] = sub_1ADE162D0;
      v24[5] = v16;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 1107296256;
      v24[2] = sub_1ADE160D4;
      v24[3] = &block_descriptor_194;
      v17 = _Block_copy(v24);
      swift_unknownObjectRetain();

      [v11 enumerateAttribute:v14 inRange:a2 options:a3 usingBlock:{0, v17}];
      _Block_release(v17);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        if (v27 == 1)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v19 = v28;
LABEL_12:

          return v19;
        }

        v11 = v25;
        v16 = v26;
        isEscapingClosureAtFileLocation = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = isEscapingClosureAtFileLocation;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_9:
          v22 = *(isEscapingClosureAtFileLocation + 16);
          v21 = *(isEscapingClosureAtFileLocation + 24);
          if (v22 >= v21 >> 1)
          {
            v28 = sub_1ADE563D4((v21 > 1), v22 + 1, 1, isEscapingClosureAtFileLocation);
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v19 = v28;
          *(v28 + 2) = v22 + 1;
          v23 = &v19[16 * v22];
          *(v23 + 4) = v11;
          *(v23 + 5) = v16;
          v28 = v19;
          goto LABEL_12;
        }
      }

      isEscapingClosureAtFileLocation = sub_1ADE563D4(0, *(isEscapingClosureAtFileLocation + 16) + 1, 1, isEscapingClosureAtFileLocation);
      v28 = isEscapingClosureAtFileLocation;
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1D9FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v10(a2, a3, a4, a5);
}

uint64_t sub_1AE1DA05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v21 = 0;
  if (qword_1EB5B8BF0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EB5B8BF8;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a6;
  v13[7] = &v21;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1AE1DD49C;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1AE1DD608;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE160D4;
  aBlock[3] = &block_descriptor_214;
  v15 = _Block_copy(aBlock);
  v16 = a6;

  [a5 enumerateAttribute:v12 inRange:a3 options:a4 usingBlock:{0, v15}];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v19 = v21;

    return v19;
  }

  return result;
}

uint64_t sub_1AE1DA234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v15 = a2 - a5;
  if (__OFSUB__(a2, a5))
  {
    __break(1u);
  }

  else
  {
    v11 = v15 + a7;
    if (!__OFADD__(v15, a7))
    {
      v13 = a4;
      v10 = a3;
      v12 = a9;
      v14 = a10;
      if (qword_1EB5B8BF0 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  v23 = a1;
  swift_once();
  a1 = v23;
LABEL_4:
  v16 = qword_1EB5B8BF8;
  sub_1ADDCEE40(a1, v25, &qword_1EB5BAA00, &qword_1AE2587A0);
  v17 = swift_allocObject();
  v18 = v25[1];
  *(v17 + 16) = v25[0];
  *(v17 + 32) = v18;
  *(v17 + 48) = v14;
  *(v17 + 56) = v13;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1AE1DD518;
  *(v19 + 24) = v17;
  v24[4] = sub_1AE1DD608;
  v24[5] = v19;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = sub_1ADE160D4;
  v24[3] = &block_descriptor_224;
  v20 = _Block_copy(v24);

  [v12 enumerateAttribute:v16 inRange:v11 options:v10 usingBlock:{0, v20}];
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1AE1DA420(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, _BYTE *a6, _BYTE *a7)
{
  v12 = type metadata accessor for FinalizedTimestamp(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  sub_1ADDCEE40(a5, v29, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (v30)
  {
    type metadata accessor for ObjCFinalizedTimestamp(0);
    if (swift_dynamicCast())
    {
      v19 = v28;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    sub_1ADDCEDE0(v29, &qword_1EB5BAA00, &qword_1AE2587A0);
    v19 = 0;
  }

  sub_1ADDCEE40(a1, v29, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (!v30)
  {
    sub_1ADDCEDE0(v29, &qword_1EB5BAA00, &qword_1AE2587A0);
    v22 = 0;
    if (!v19)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  type metadata accessor for ObjCFinalizedTimestamp(0);
  v20 = swift_dynamicCast();
  v21 = v28;
  if (v20)
  {
    v22 = v28;
  }

  else
  {
    v22 = 0;
  }

  if (v19)
  {
    if (v22)
    {
      sub_1ADED0548(v19 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v18);
      sub_1ADED0548(v22 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v15);
      v23 = *(v12 + 20);
      v24 = *&v15[v23];
      v25 = *&v18[v23];
      if (v24 == v25)
      {
        v26 = sub_1ADF5EB00();
      }

      else
      {
        v26 = v24 < v25;
      }

      sub_1ADDE5118(v15, type metadata accessor for FinalizedTimestamp);
      sub_1ADDE5118(v18, type metadata accessor for FinalizedTimestamp);
      if ((v26 & 1) == 0)
      {
        goto LABEL_20;
      }

      v22 = v21;
    }

LABEL_19:
    *a6 = 1;
    *a7 = 1;
    *a4 = 1;
LABEL_20:
  }

LABEL_21:
}

uint64_t sub_1AE1DA678(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1EB5B8BF0 == -1)
  {
    v13 = a2 + a6;
    if (!__OFADD__(a2, a6))
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v20 = result;
  swift_once();
  result = v20;
  v13 = a2 + a6;
  if (__OFADD__(a2, a6))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = qword_1EB5B8BF8;
  sub_1ADDCEE40(result, v23, &qword_1EB5BAA00, &qword_1AE2587A0);
  v15 = swift_allocObject();
  v16 = v23[1];
  *(v15 + 16) = v23[0];
  *(v15 + 32) = v16;
  *(v15 + 48) = a7;
  *(v15 + 56) = a6;
  *(v15 + 64) = a8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1AE1DD48C;
  *(v17 + 24) = v15;
  v22[4] = sub_1AE1DD608;
  v22[5] = v17;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1ADE160D4;
  v22[3] = &block_descriptor_204;
  v18 = _Block_copy(v22);

  [a5 enumerateAttribute:v14 inRange:v13 options:a3 usingBlock:{0, v18}];
  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_1AE1DA870(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, char **a8)
{
  *&v47 = a7;
  v14 = type metadata accessor for FinalizedTimestamp(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  sub_1ADDCEE40(a5, v49, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (v50)
  {
    type metadata accessor for ObjCFinalizedTimestamp(0);
    if (swift_dynamicCast())
    {
      v21 = v48;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    sub_1ADDCEDE0(v49, &qword_1EB5BAA00, &qword_1AE2587A0);
    v21 = 0;
  }

  sub_1ADDCEE40(a1, v49, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (!v50)
  {
    sub_1ADDCEDE0(v49, &qword_1EB5BAA00, &qword_1AE2587A0);
    if (!v21)
    {
      a1 = 0;
      goto LABEL_23;
    }

LABEL_15:
    v23 = 0;
    goto LABEL_19;
  }

  type metadata accessor for ObjCFinalizedTimestamp(0);
  v22 = swift_dynamicCast();
  v23 = v48;
  if (v22)
  {
    a1 = v48;
  }

  else
  {
    a1 = 0;
  }

  if (!v21)
  {
    goto LABEL_23;
  }

  if (!a1)
  {
    goto LABEL_15;
  }

  v46 = a3;
  sub_1ADED0548(v21 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v20);
  sub_1ADED0548(&a1[OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp], v17);
  v24 = *(v14 + 20);
  v25 = *&v17[v24];
  v26 = *&v20[v24];
  if (v25 == v26)
  {
    v27 = v21;
    v28 = sub_1ADF5EB00();
  }

  else
  {
    v28 = v25 < v26;
    v29 = v21;
  }

  sub_1ADDE5118(v17, type metadata accessor for FinalizedTimestamp);
  sub_1ADDE5118(v20, type metadata accessor for FinalizedTimestamp);

  a1 = v23;
  a3 = v46;
  if ((v28 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (a6[1])
  {

    v30 = a2 - v47;
    if (!__OFSUB__(a2, v47))
    {
LABEL_40:
      *a6 = v30;
      *(a6 + 1) = a3;
      *(a6 + 16) = 0;
      return;
    }

    __break(1u);
LABEL_23:
    if (*(a6 + 16) == 1)
    {

      return;
    }

    v47 = *a6;
    v23 = *a8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a8 = v23;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

  v31 = *a6;
  if (__OFADD__(v31, *(&v31 + 1)))
  {
    __break(1u);
    goto LABEL_42;
  }

  v30 = a2 - v47;
  if (__OFSUB__(a2, v47))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    v23 = sub_1ADE563D4(0, *(v23 + 2) + 1, 1, v23);
    *a8 = v23;
LABEL_32:
    v37 = *(v23 + 2);
    v36 = *(v23 + 3);
    if (v37 >= v36 >> 1)
    {
      *a8 = sub_1ADE563D4((v36 > 1), v37 + 1, 1, v23);
    }

    v38 = *a8;
    *(v38 + 2) = v37 + 1;
    *&v38[16 * v37 + 32] = v47;
    *a6 = 0;
    *(a6 + 1) = 0;
    *(a6 + 16) = 1;
    return;
  }

  if (v31 + *(&v31 + 1) != v30)
  {
    v47 = *a6;
    v39 = a3;
    v40 = *a8;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    *a8 = v40;
    if ((v41 & 1) == 0)
    {
      v40 = sub_1ADE563D4(0, *(v40 + 2) + 1, 1, v40);
      *a8 = v40;
    }

    v43 = *(v40 + 2);
    v42 = *(v40 + 3);
    if (v43 >= v42 >> 1)
    {
      *a8 = sub_1ADE563D4((v42 > 1), v43 + 1, 1, v40);
    }

    v44 = *a8;
    *(v44 + 2) = v43 + 1;
    *&v44[16 * v43 + 32] = v47;
    a3 = v39;
    goto LABEL_40;
  }

  if ((a6[1] & 1) == 0)
  {

    v32 = *(a6 + 1);
    v33 = __OFADD__(v32, a3);
    v34 = v32 + a3;
    if (!v33)
    {
      *(a6 + 1) = v34;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_1AE1DACA4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4 - a2;
  if (__OFSUB__(a4, a2))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v22 = result;
  v25 = a8;
  v10 = sub_1AE1D9CB8(&v25, a2, a3, a4 - a2);
  v11 = *(v10 + 2);
  if (v11)
  {
    v23 = MEMORY[0x1E69E7CC0];
    result = sub_1ADE6F4BC(0, v11, 0);
    v12 = v22;
    v13 = v23;
    v14 = v10 + 40;
    while (1)
    {
      v15 = *(v14 - 1);
      v16 = v15 + v8;
      if (__OFADD__(v15, v8))
      {
        break;
      }

      if (__OFSUB__(v16, a4))
      {
        goto LABEL_13;
      }

      v17 = *v14;
      result = [v12 subrangeFrom_];
      v24 = v13;
      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        v21 = result;
        sub_1ADE6F4BC((v18 > 1), v19 + 1, 1);
        result = v21;
        v12 = v22;
        v13 = v24;
      }

      v14 += 2;
      v13[2] = v19 + 1;
      v20 = &v13[3 * v19];
      v20[4] = v16;
      v20[5] = v17;
      v20[6] = result;
      if (!--v11)
      {

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_11:
  swift_beginAccess();
  sub_1ADFB704C(v13);
  return swift_endAccess();
}

void sub_1AE1DAE38(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1AE1DAED4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, id a7, void **a8)
{
  if (__OFSUB__(a2, a5))
  {
    __break(1u);
  }

  else
  {
    v9 = a8;
    v8 = a1;
    v10 = [a7 subrangeFrom_];
    v11 = *v9;

    result = swift_isUniquelyReferenced_nonNull_native();
    *v9 = v11;
    if (result)
    {
      goto LABEL_3;
    }
  }

  result = sub_1ADE5662C(0, v11[2] + 1, 1, v11);
  v11 = result;
  *v9 = result;
LABEL_3:
  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    result = sub_1ADE5662C((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
    *v9 = result;
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = v10;
  v15[5] = v8;
  return result;
}

uint64_t CRAttributedString.Cursor.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = CRString.Cursor.init(from:)(a1, &v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void CRAttributedString.Cursor.encode(to:)(uint64_t a1)
{
  v4 = *v1;
  v3 = *v1;
  CRString.Cursor.encode(to:)(a1);
}

Swift::Bool __swiftcall CRAttributedString.Cursor.needToFinalizeTimestamps()()
{
  v1 = *v0;
  objc_opt_self();
  return [swift_dynamicCastObjCClassUnconditional() needToFinalizeTimestamps];
}

void CRAttributedString.Cursor.finalizeTimestamps(_:)(uint64_t a1)
{
  v3 = *v1;
  objc_opt_self();
  v4 = [swift_dynamicCastObjCClassUnconditional() finalizedInContext_];

  *v1 = v4;
}

uint64_t static CRAttributedString.Cursor.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1ADDEE524(0, &qword_1ED966B40, 0x1E69E58C0);
  v4 = v2;
  v5 = v3;
  v6 = sub_1AE23D78C();

  return v6 & 1;
}

id sub_1AE1DB180()
{
  v0 = sub_1ADFAEA70();

  return v0;
}

void CRAttributedString.cursor(at:affinity:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = *v3;
  if (*v3)
  {
    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    v9 = type metadata accessor for CRAttributedString.Cursor();
    v11 = *(v4 + 16);
    WitnessTable = swift_getWitnessTable();
    sub_1ADEDD190(v11, a1, a2, v9, WitnessTable);
  }

  else
  {
    __break(1u);
  }
}

void CRAttributedString.cursor(range:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = *v4;
  if (*v4)
  {
    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
    v11 = type metadata accessor for CRAttributedString.Cursor();
    v13 = *(v5 + 16);
    WitnessTable = swift_getWitnessTable();
    sub_1ADEDD2B4(v13, a1, a2, v11, WitnessTable, a4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t *CRAttributedString.index(of:)(uint64_t *result, uint64_t a2)
{
  v3 = *v2;
  if (*v2)
  {
    v4 = result;
    v6 = *(a2 + 16);
    v5 = *(a2 + 24);
    v7 = type metadata accessor for CRAttributedString.Cursor();
    v8 = *(v3 + 16);
    v12 = *v4;
    v9 = v8;
    WitnessTable = swift_getWitnessTable();
    v11 = sub_1ADEDD5A0(v9, &v12, v7, WitnessTable);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__int128 *CRAttributedString.range(of:)(__int128 *result, uint64_t a2)
{
  v3 = *v2;
  if (*v2)
  {
    v4 = result;
    v6 = *(a2 + 16);
    v5 = *(a2 + 24);
    v7 = type metadata accessor for CRAttributedString.Cursor();
    v8 = *(v3 + 16);
    v12 = *v4;
    v9 = v8;
    WitnessTable = swift_getWitnessTable();
    v11 = sub_1ADEDD634(v9, &v12, v7, WitnessTable);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void CRAttributedString.cursor(range:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  CRAttributedString.cursor(range:)(a3, a4, a5, v10);
  v8 = v10[1];
  *a1 = v10[0];
  *a2 = v8;
}

__int128 *CRAttributedString.range(of:)(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *a2;
  v16 = *v3;
  *&v13 = v5;
  v14 = v6;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = type metadata accessor for CRAttributedString.Cursor();
  swift_getWitnessTable();
  CursorRange.init(lowerBound:upperBound:)(&v13, &v14, v9, &v15);
  v10 = v15;
  v13 = v15;
  v11 = CRAttributedString.range(of:)(&v13, a3);

  return v11;
}

uint64_t CRAttributedString.encode(to:)()
{
  v5 = *v0;
  CRAttributedString.attributedString.getter();
  v2 = v1;
  v3 = [v1 string];

  sub_1AE23CD0C();
  sub_1AE23CDDC();
}

uint64_t *sub_1AE1DB6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = *(a1 + 16);
  if ((~v6 & 0xF000000000000007) != 0 && ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 0xA)
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v8 + 16);

  type metadata accessor for Key(0);
  v11 = v10;
  v12 = sub_1ADDEE3A0();
  v13 = MEMORY[0x1B26FB2D0](v9 >> 1, v11, MEMORY[0x1E69E7CA0] + 8, v12);
  v14 = *(a1 + 16);
  if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xA)
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v63 = v4;
  v61 = *(v15 + 16);
  if (!v61)
  {

    v16 = 0;
LABEL_49:

    *a4 = v13;
    return result;
  }

  v16 = 0;
  v17 = 0;
  v59 = v15;
  while (v17 < *(v15 + 16))
  {
    v19 = *(v15 + 8 * v17 + 32);
    type metadata accessor for CRDecoder();
    swift_allocObject();
    swift_retain_n();

    v20 = sub_1ADE0262C(v19, a2);

    if (v16)
    {
      v21 = *(a3 + 8);
      v22 = v16;
      v23 = v21();
      v24 = sub_1AE23CD0C();
      if (*(v23 + 16))
      {
        v26 = sub_1ADDD7A10(v24, v25);
        v28 = v27;

        if (v28)
        {
          v29 = (*(v23 + 56) + 16 * v26);
          v30 = *v29;
          v31 = v29[1];

          v32 = *(v31 + 8);
          v66 = &type metadata for AnyCRValue;
          v32(v65, v20, v30, v31);
          if (v63)
          {
            goto LABEL_50;
          }

          v63 = 0;

          sub_1ADDEE390(v65, v64);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v67 = v13;
          v34 = sub_1ADDF1D10(v22);
          v36 = v13[2];
          v37 = (v35 & 1) == 0;
          v38 = __OFADD__(v36, v37);
          v39 = v36 + v37;
          if (v38)
          {
            goto LABEL_57;
          }

          v40 = v35;
          if (v13[3] < v39)
          {
            sub_1ADDEBC08(v39, isUniquelyReferenced_nonNull_native);
            v34 = sub_1ADDF1D10(v22);
            if ((v40 & 1) != (v41 & 1))
            {
              goto LABEL_59;
            }

LABEL_40:
            v13 = v67;
            if (v40)
            {
              goto LABEL_41;
            }

LABEL_45:
            v13[(v34 >> 6) + 8] |= 1 << v34;
            *(v13[6] + 8 * v34) = v22;
            sub_1ADDEE390(v64, (v13[7] + 32 * v34));

            v55 = v13[2];
            v38 = __OFADD__(v55, 1);
            v53 = v55 + 1;
            if (v38)
            {
              goto LABEL_58;
            }

LABEL_46:
            v13[2] = v53;
LABEL_13:

            v16 = 0;
            v15 = v59;
            goto LABEL_14;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_40;
          }

          v54 = v34;
          sub_1ADE1B924();
          v34 = v54;
          v13 = v67;
          if ((v40 & 1) == 0)
          {
            goto LABEL_45;
          }

LABEL_41:
          v18 = (v13[7] + 32 * v34);
LABEL_12:
          __swift_destroy_boxed_opaque_existential_1(v18);
          sub_1ADDEE390(v64, v18);

          goto LABEL_13;
        }
      }

      else
      {
      }

      v66 = &type metadata for AnyCRValue;

      AnyCRValue.init(from:)(v42, v65);
      if (v63)
      {
LABEL_50:

        return __swift_deallocate_boxed_opaque_existential_0(v65);
      }

      v63 = 0;

      sub_1ADDEE390(v65, v64);
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v13;
      v45 = sub_1ADDF1D10(v22);
      v46 = v13[2];
      v47 = (v44 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_55;
      }

      v49 = v44;
      if (v13[3] >= v48)
      {
        if (v43)
        {
          v13 = v67;
          if ((v44 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_1ADE1B924();
          v13 = v67;
          if ((v49 & 1) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        sub_1ADDEBC08(v48, v43);
        v50 = sub_1ADDF1D10(v22);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_59;
        }

        v45 = v50;
        v13 = v67;
        if ((v49 & 1) == 0)
        {
LABEL_36:
          v13[(v45 >> 6) + 8] |= 1 << v45;
          *(v13[6] + 8 * v45) = v22;
          sub_1ADDEE390(v64, (v13[7] + 32 * v45));

          v52 = v13[2];
          v38 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v38)
          {
            goto LABEL_56;
          }

          goto LABEL_46;
        }
      }

      v18 = (v13[7] + 32 * v45);
      goto LABEL_12;
    }

    if (!*(v20 + 72))
    {

      sub_1ADE42E40();
      swift_allocError();
      *v57 = 0xD000000000000017;
      *(v57 + 8) = 0x80000001AE25FB70;
      *(v57 + 16) = 0;
      swift_willThrow();
    }

    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = v20;
    sub_1ADE05C74();
    if (v63)
    {
    }

    v63 = 0;

    v16 = sub_1AE23CCDC();

LABEL_14:
    if (v61 == ++v17)
    {

      goto LABEL_49;
    }
  }

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
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1AE1DBD98(uint64_t a1)
{
  v3 = v2;
  v4 = *v1 + 64;
  v5 = 1 << *(*v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v1 + 64);
  v25 = (v5 + 63) >> 6;
  v27 = *v1;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v30 = v10;
    if (!v7)
    {
      while (1)
      {
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v12 >= v25)
        {

          return v30;
        }

        v7 = *(v4 + 8 * v12);
        ++v9;
        if (v7)
        {
          v9 = v12;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

LABEL_10:
    v13 = __clz(__rbit64(v7)) | (v9 << 6);
    v14 = *(*(v27 + 48) + 8 * v13);
    sub_1ADDE4E28(*(v27 + 56) + 32 * v13, v29);
    v28 = v14;
    v15 = sub_1AE1DBFD8(v14, v29, a1);
    if (v3)
    {
      break;
    }

    v16 = v15;
    sub_1ADDCEDE0(&v28, &qword_1EB5BE0C8, &unk_1AE2587A8);
    v17 = *(v16 + 16);
    result = v30;
    v18 = *(v30 + 16);
    if (__OFADD__(v18, v17))
    {
      goto LABEL_24;
    }

    v19 = v30;
    result = swift_isUniquelyReferenced_nonNull_native();
    v20 = v19;
    if ((result & 1) == 0 || v18 + v17 > *(v19 + 24) >> 1)
    {
      result = sub_1AE23DACC();
      v20 = result;
    }

    v3 = 0;
    v7 &= v7 - 1;
    if (*(v16 + 16))
    {
      if ((*(v20 + 24) >> 1) - *(v20 + 16) < v17)
      {
        goto LABEL_26;
      }

      v21 = v20;
      swift_arrayInitWithCopy();

      v10 = v21;
      if (v17)
      {
        v22 = *(v21 + 16);
        v23 = __OFADD__(v22, v17);
        v24 = v22 + v17;
        if (v23)
        {
          goto LABEL_27;
        }

        *(v21 + 16) = v24;
      }
    }

    else
    {
      v11 = v20;

      v10 = v11;
      if (v17)
      {
        goto LABEL_25;
      }
    }
  }

  sub_1ADDCEDE0(&v28, &qword_1EB5BE0C8, &unk_1AE2587A8);

  return v30;
}

uint64_t sub_1AE1DBFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADDE4E28(a2, v24);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v25;
  type metadata accessor for Proto_Value._StorageClass();
  inited = swift_initStaticObject();
  v7 = sub_1AE23CD0C();
  v9 = sub_1ADE66494(v7, v8);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = swift_allocObject();
    v11 = *(inited + 16);
    *(v10 + 16) = v11;
    sub_1ADE51B2C(v11);

    inited = v10;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v13 = v12 | 0x1000000000000000;
  v14 = *(inited + 16);
  *(inited + 16) = v13;
  sub_1ADE51B48(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA290, &qword_1AE241D78);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AE241900;
  *(v15 + 32) = inited;
  v16 = *(a3 + 112);
  v23 = *(a3 + 120);
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  v17 = *(*v5 + 152);

  v17(a3);
  if (v3)
  {

    *(v15 + 16) = 0;
  }

  else
  {
    v19 = sub_1ADE71C08();
    swift_beginAccess();
    v20 = *(v19 + 24);
    v21 = *(a3 + 112);
    *(a3 + 112) = v16;

    v22 = *(a3 + 120);
    *(a3 + 120) = v23;

    *(v15 + 40) = v20;
  }

  return v15;
}

uint64_t *CRAttributedString.Attributes.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  if (*(a1 + 72))
  {

    result = sub_1AE1DB6F8(v7, a1, a2, &v10);
    if (!v3)
    {
      *a3 = v10;
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v9 = 0xD000000000000017;
    *(v9 + 8) = 0x80000001AE25FB70;
    *(v9 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t CRAttributedString.Attributes.encode(to:)(uint64_t a1)
{
  v4 = *v1;
  result = sub_1ADE71C08();
  if (!v2)
  {

    v6 = sub_1AE1DBD98(a1);
    swift_beginAccess();
    sub_1AE1B71F0(v6);
    swift_endAccess();
  }

  return result;
}

uint64_t CRAttributedString.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    v8 = *(sub_1ADDE78C8() + 16);
    v9 = (~v8 & 0xF000000000000007) != 0 && (v8 & 0xF000000000000000) == 0x4000000000000000;
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v16 = v8 & 0xFFFFFFFFFFFFFFFLL;
      v17 = *(v16 + 80);
      *&v40[16] = *(v16 + 64);
      *&v40[32] = v17;
      *&v40[48] = *(v16 + 96);
      *&v40[64] = *(v16 + 112);
      v18 = *(v16 + 32);
      v38 = *(v16 + 16);
      v39 = v18;
      *v40 = *(v16 + 48);
      sub_1ADE51B64(&v38, v37);

      v32 = *&v40[40];
      v33 = *&v40[56];
      v31 = *&v40[24];
      v13 = *v40;
      v34 = v39;
      v35 = *&v40[8];
      v12 = *(&v38 + 1);
      v11 = v38;
    }

    else
    {

      v11 = 0;
      v34 = vdupq_n_s64(v10);
      v35 = 0u;
      v12 = 0xE000000000000000;
      v13 = v10;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
    }

    v19 = objc_allocWithZone(type metadata accessor for CRAttributedStringDecoder());
    v20 = &v19[OBJC_IVAR____TtC9Coherence25CRAttributedStringDecoder_scope];
    *v20 = a2;
    *(v20 + 1) = a3;
    v21 = &v19[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence[0]];
    LOBYTE(v38) = 1;
    *v21 = 0;
    *(v21 + 1) = v10;
    *(v21 + 2) = v10;
    *(v21 + 3) = v10;
    *(v21 + 4) = 0;
    v21[40] = 1;
    *(v21 + 41) = v37[0];
    *(v21 + 11) = *(v37 + 3);
    *(v21 + 6) = 0;
    *(v21 + 7) = 0;
    v21[64] = 1;
    v22 = &v19[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded];
    *v22 = v11;
    *(v22 + 1) = v12;
    *(v22 + 1) = v34;
    *(v22 + 4) = v13;
    *(v22 + 40) = v35;
    *(v22 + 56) = v31;
    *(v22 + 72) = v32;
    *(v22 + 88) = v33;
    *&v19[OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder] = a1;
    v36.receiver = v19;
    v36.super_class = type metadata accessor for CRStringDecoder();

    v23 = objc_msgSendSuper2(&v36, sel_init);
    v24 = objc_allocWithZone(_TtC9Coherence24CRTTMergeableStringDelta);
    *&v38 = 0;
    v25 = [v24 initWithDecoder:v23 error:&v38];
    if (v25)
    {
      v26 = v25;
      v27 = v38;

      *a4 = v26;
    }

    else
    {
      v28 = v38;
      sub_1AE23BC9C();

      swift_willThrow();
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v14 = 0xD000000000000014;
    *(v14 + 8) = 0x80000001AE25FB50;
    *(v14 + 16) = 0;
    swift_willThrow();
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void CRAttributedString.Partial.encode(to:)()
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  sub_1ADDFCC74();
  if (!v1)
  {
    v3 = objc_allocWithZone(type metadata accessor for CRAttributedStringEncoder());

    v5 = sub_1ADF8B964(v4);
    v17[0] = 0;
    v6 = [v2 saveToEncoder:v5 error:v17];
    v7 = v17[0];
    if (v6)
    {
      v8 = &v5[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence];
      swift_beginAccess();
      v9 = *v8;
      v10 = *(v8 + 2);
      v18[1] = *(v8 + 1);
      v18[2] = v10;
      v18[0] = v9;
      v11 = *(v8 + 3);
      v12 = *(v8 + 4);
      v13 = *(v8 + 5);
      v19 = *(v8 + 12);
      v18[4] = v12;
      v18[5] = v13;
      v18[3] = v11;
      swift_beginAccess();
      v14 = v7;
      sub_1ADE51B64(v18, v17);
      sub_1AE1B6CF4(v18);
      swift_endAccess();
    }

    else
    {
      v15 = v17[0];
      sub_1AE23BC9C();

      swift_willThrow();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1AE1DC8E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a6;
  v13 = a5;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
  }

  else
  {
    v6 = sub_1AE1D9CB8(&v12, result, a2, a3 - result);
    v7 = *(v6 + 2);
    if (v7)
    {
      v13 = MEMORY[0x1E69E7CC0];
      sub_1AE23DB1C();
      v8 = objc_opt_self();
      v9 = v6 + 40;
      do
      {
        v10 = [v8 valueWithRange_];
        sub_1AE23DAEC();
        v11 = *(v13 + 16);
        sub_1AE23DB2C();
        sub_1AE23DB3C();
        sub_1AE23DAFC();
        v9 += 2;
        --v7;
      }

      while (v7);

      return v13;
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

id sub_1AE1DC9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v10(a2, a3, a4, a5);

  sub_1ADDEE524(0, qword_1EB5BE3E8, 0x1E696B098);
  v11 = sub_1AE23CFCC();

  return v11;
}

void sub_1AE1DCAB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a1 + 16))
  {
    goto LABEL_32;
  }

  v4 = *(a1 + 8);
  if (*(a2 + 36) != v4)
  {
    goto LABEL_30;
  }

  v5 = *a1;
  if (*a1 != 1 << *(a2 + 32))
  {
    v7 = a2 + 64;
    v8 = v4;
    v23 = a2 + 72;
    while ((v5 & 0x8000000000000000) == 0)
    {
      v9 = 1 << *(a2 + 32);
      if (v5 >= v9)
      {
        break;
      }

      v10 = v5 >> 6;
      v11 = *(v7 + 8 * (v5 >> 6));
      if (((v11 >> v5) & 1) == 0)
      {
        goto LABEL_25;
      }

      if (*(a2 + 36) != v4)
      {
        goto LABEL_26;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v5 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = a3;
        v14 = v10 << 6;
        v15 = v10 + 1;
        v16 = (v23 + 8 * v10);
        while (v15 < (v9 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            sub_1ADDFFBC8(v5, v4, 0);
            v5 = __clz(__rbit64(v17)) + v14;
            goto LABEL_16;
          }
        }

        sub_1ADDFFBC8(v5, v4, 0);
        v5 = v9;
LABEL_16:
        a3 = v13;
      }

      if (*(a2 + 36) != v4)
      {
        goto LABEL_27;
      }

      v19 = 1 << *(a2 + 32);
      if (v5 == v19)
      {
        goto LABEL_23;
      }

      if ((v5 & 0x8000000000000000) != 0 || v5 >= v19)
      {
        goto LABEL_28;
      }

      if (((*(v7 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        goto LABEL_29;
      }

      v24 = *(*(a2 + 48) + 8 * v5);
      v20 = v24;
      v21 = a3(&v24);

      v4 = v8;
      if (v21)
      {
LABEL_23:
        *a1 = v5;
        *(a1 + 8) = v8;
        *(a1 + 16) = 0;
        return;
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
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_1AE1DCCAC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1AE1DCD40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void *sub_1AE1DCDA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5[2];
  v8 = v5[3];
  return sub_1AE1DACA4(a1, a2, a3, a4, a5, v5[4], v5[5], v5[6]);
}

uint64_t sub_1AE1DCDE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AE1DCE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  return sub_1AE1DC8E0(a1, a2, a3, a4, v4[4], v4[5]);
}

uint64_t sub_1AE1DCE54()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1AE1D9A70();
}

uint64_t objectdestroy_37Tm_0()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AE1DCFA8(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1AE1DD008(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AE1DD0BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE1DD110()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_1AE1DD174(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AE1DD1BC(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1AE1DD220()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE1DD2A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_1AE1DD2D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AE1DD318(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AE1DD374()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE1DD3C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE1DD404()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1AE1DD468@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u8[8] = 1;
  return result;
}

uint64_t objectdestroy_196Tm(uint64_t a1)
{
  if (*(v1 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

void sub_1AE1DD56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  sub_1AE1D7AD4(a1, a2, a3, a4, v4 + 32, *(v4 + 64), *(v4 + 72), *(v4 + 80), *(v4 + 88), *(v4 + 96), *(v4 + 104));
}

void sub_1AE1DD680(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AE23BDDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (!*(v10 + 16))
  {
    return;
  }

  v11 = sub_1ADDFF050(a1);
  if ((v12 & 1) == 0)
  {
    return;
  }

  v27 = a1;
  v28 = v6;
  v13 = *(*(v10 + 56) + 8 * v11);
  if (v13 >> 62)
  {
LABEL_24:
    v14 = sub_1AE23D97C();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  while (1)
  {
    if (v14 == v15)
    {
      goto LABEL_19;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (*(v13 + 8 * v15 + 32) == a2)
    {
      goto LABEL_14;
    }

LABEL_10:
    if (__OFADD__(v15++, 1))
    {
      goto LABEL_23;
    }
  }

  v26 = MEMORY[0x1B26FC360](v15, v13);
  swift_unknownObjectRelease();
  if (v26 != a2)
  {
    goto LABEL_10;
  }

LABEL_14:

  v17 = v27;
  v18 = v28;
  if (*(v10 + 16))
  {
    v19 = sub_1ADDFF050(v27);
    if (v20)
    {
      v21 = *(*(v10 + 56) + 8 * v19);
      if (v21 >> 62)
      {
        if (v21 < 0)
        {
          v22 = *(*(v10 + 56) + 8 * v19);
        }

        if (sub_1AE23D97C() == 1)
        {
          goto LABEL_18;
        }
      }

      else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
LABEL_18:
        sub_1ADF5F378(v17);
LABEL_19:

        return;
      }
    }
  }

  (*(v18 + 16))(v9, v17, v5);
  v23 = sub_1ADF5F0D4(v29);
  if (*v24)
  {
    sub_1AE031418(v15);
  }

  (v23)(v29, 0);
  (*(v18 + 8))(v9, v5);
}

uint64_t sub_1AE1DD918()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v3 = *(v2 + 96);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1DDA10, 0, 0);
}

uint64_t sub_1AE1DDA10()
{
  v1 = v0[3];
  v2 = *(v0[2] + 16);
  v3 = *(MEMORY[0x1E69E86A8] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  *v4 = v0;
  v4[1] = sub_1AE1DDABC;
  v7 = v0[6];
  v8 = v0[4];

  return MEMORY[0x1EEE6DA10](v7, v2, v8, v5, v6);
}

uint64_t sub_1AE1DDABC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1AE1DDC4C;
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);
    v4 = sub_1AE1DDBE8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1AE1DDBE8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AE1DDC4C()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

unint64_t sub_1AE1DDCB8()
{
  type metadata accessor for FileActor();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 112) = sub_1ADE51734(MEMORY[0x1E69E7CC0]);
  result = sub_1ADE51734(v1);
  *(v0 + 120) = result;
  qword_1EB5D7CD0 = v0;
  return result;
}

uint64_t sub_1AE1DDD14(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = sub_1AE23BDDC();
  (*(*(v8 - 8) + 24))(a2, a1, v8);
  v9 = [a4 retainAccess];
  v10 = *a3;
  *a3 = v9;

  return swift_unknownObjectRelease();
}

uint64_t sub_1AE1DDDB8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1AE1DDF08(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  type metadata accessor for CRDecodeContext.DecodingReference();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  swift_beginAccess();
  sub_1ADDD86D8(v5, v6);
  v8 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_1ADDE9748(v7, v5, v6, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v12;
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE2418F0;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  sub_1ADDD86D8(v5, v6);
  sub_1AE1DE048(inited, a3);
  swift_setDeallocating();
  return sub_1ADECDAB4(inited + 32);
}

uint64_t sub_1AE1DE048(uint64_t result, uint64_t a2)
{
  v4 = v3;
  v5 = *(result + 16);
  if (!v5)
  {
    return result;
  }

  v6 = v2;
  v7 = result;
  result = swift_beginAccess();
  v8 = (v7 + 40);
  v67 = v2;
  while (1)
  {
    v9 = *(v6 + 16);
    if (!*(v9 + 16))
    {
      goto LABEL_4;
    }

    v10 = *(v8 - 1);
    v11 = *v8;
    sub_1ADDD86D8(v10, *v8);

    v12 = sub_1ADDDE7CC(v10, v11);
    if (v13)
    {
      break;
    }

    sub_1ADDCC35C(v10, v11);

LABEL_4:
    v8 += 2;
    if (!--v5)
    {
      return result;
    }
  }

  v75 = v10;
  v14 = *(*(v9 + 56) + 8 * v12);

  v15 = v14[2];
  v16 = v14[3];
  swift_beginAccess();
  v17 = *(v6 + 16);
  v18 = sub_1ADDDE7CC(v15, v16);
  if (v19)
  {
    v20 = v18;
    v21 = *(v6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v6 + 16);
    v82 = v23;
    *(v6 + 16) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1ADF6F03C();
      v23 = v82;
    }

    sub_1ADDCC35C(*(*(v23 + 48) + 16 * v20), *(*(v23 + 48) + 16 * v20 + 8));
    v24 = *(*(v23 + 56) + 8 * v20);

    sub_1ADDEA654(v20, v23);
    *(v6 + 16) = v23;
  }

  swift_endAccess();
  v25 = v4;
  (*(*v14 + 96))(v81, v6, a2);
  if (v4)
  {
    sub_1ADDCC35C(v75, v11);
  }

  v26 = v81[0];
  v79 = v81[1];
  v27 = v81[2];
  v28 = v81[3];
  v29 = v14;
  v30 = v81[5];
  v77 = v81[4];
  v71 = v29[3];
  v72 = v29[2];
  swift_beginAccess();
  v76 = v27;
  v80 = v26;
  v78 = v28;
  if (!v27)
  {
    v43 = *(v6 + 24);
    v44 = sub_1ADDDE7CC(v72, v71);
    v45 = 0;
    if (v46)
    {
      v47 = v44;
      v70 = v11;
      v48 = *(v6 + 24);
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v50 = *(v6 + 24);
      v82 = v50;
      *(v6 + 24) = 0x8000000000000000;
      if (!v49)
      {
        sub_1ADF706B8();
        v50 = v82;
      }

      sub_1ADDCC35C(*(*(v50 + 48) + 16 * v47), *(*(v50 + 48) + 16 * v47 + 8));
      v51 = (*(v50 + 56) + 48 * v47);
      v73 = *v51;
      v52 = v51[2];
      v53 = v51[3];
      v55 = v51[4];
      v54 = v51[5];

      sub_1ADF6DBD4(v47, v50);
      *(v6 + 24) = v50;
      v11 = v70;
      v4 = v25;
      v45 = 0;
    }

    goto LABEL_28;
  }

  v69 = v11;

  v31 = *(v6 + 24);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *(v6 + 24);
  v33 = v82;
  *(v6 + 24) = 0x8000000000000000;
  v35 = sub_1ADDDE7CC(v72, v71);
  v36 = v33[2];
  v37 = (v34 & 1) == 0;
  v38 = v36 + v37;
  if (!__OFADD__(v36, v37))
  {
    v39 = v34;
    if (v33[3] >= v38)
    {
      v42 = v80;
      if ((v32 & 1) == 0)
      {
        sub_1ADF706B8();
        goto LABEL_17;
      }
    }

    else
    {
      sub_1ADE17954(v38, v32);
      v40 = sub_1ADDDE7CC(v72, v71);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_34;
      }

      v35 = v40;
LABEL_17:
      v42 = v80;
    }

    v56 = v82;
    if (v39)
    {
      v57 = (v82[7] + 48 * v35);
      v74 = *v57;
      v59 = v57[2];
      v58 = v57[3];
      v61 = v57[4];
      v60 = v57[5];
      *v57 = v42;
      v57[1] = v79;
      v45 = v76;
      v57[2] = v76;
      v57[3] = v78;
      v57[4] = v77;
      v57[5] = v30;
    }

    else
    {
      v82[(v35 >> 6) + 8] |= 1 << v35;
      v62 = (v56[6] + 16 * v35);
      *v62 = v72;
      v62[1] = v71;
      v63 = (v56[7] + 48 * v35);
      *v63 = v42;
      v63[1] = v79;
      v45 = v76;
      v63[2] = v76;
      v63[3] = v28;
      v63[4] = v77;
      v63[5] = v30;
      v64 = v56[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_33;
      }

      v56[2] = v66;
      sub_1ADDD86D8(v72, v71);
    }

    v6 = v67;
    *(v67 + 24) = v56;
    v11 = v69;
    v4 = v25;
LABEL_28:
    swift_endAccess();
    sub_1ADDCC35C(v75, v11);
    sub_1ADDDC21C(v80, v79, v45);

    goto LABEL_4;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1AE1DE5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 48);
  if (*(v8 + 16))
  {

    v9 = sub_1ADDDE7CC(a2, a3);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      *a4 = v11;
      return result;
    }
  }

  sub_1ADE42E40();
  swift_allocError();
  *v13 = xmmword_1AE2592F0;
  *(v13 + 16) = 0;
  return swift_willThrow();
}

double sub_1AE1DE750@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a6;
  v40 = *v6;
  v38 = *(v40 + 14);
  v39 = *(v38 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  sub_1ADDD86D8(v18, v19);
  sub_1ADDD86D8(a3, a4);
  sub_1ADDCC35C(a3, a4);
  type metadata accessor for CRDecoder();
  swift_allocObject();

  v20 = v42;
  v21 = sub_1ADE64748(a1, a2, a5);
  if (!v20)
  {
    v42 = v14;
    v23 = v39;
    v24 = v38;
    (*(*(*(*(v40 + 15) + 16) + 8) + 8))(v21, v38);
    v40 = v17;
    inited = swift_initStackObject();
    v26 = MEMORY[0x1E69E7CC0];
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    *(inited + 40) = v26;
    v27 = MEMORY[0x1E69E7CC8];
    *(inited + 48) = MEMORY[0x1E69E7CC8];
    *(inited + 56) = 256;
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    *(inited + 16) = a5;
    *(inited + 24) = v26;

    sub_1ADE62FA4(a3, a4, &v41);
    swift_setDeallocating();
    CRDecoder.deinit();
    swift_deallocClassInstance();
    v36 = v41;
    v28 = v23;
    v29 = v42;
    v30 = v40;
    (*(v23 + 16))(v42, v40, v24);
    sub_1ADDD9FE4(v29, v24, &v41);
    v31 = v27;
    v32 = v41;
    v33 = MEMORY[0x1E69E7CC0];
    v42 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v34 = sub_1ADDD9ECC(v33);
    v35 = v37;
    *(v37 + 16) = v31;
    *(v35 + 24) = v31;
    sub_1ADDDA5BC(v33);
    sub_1ADDD9ECC(v33);
    (*(v28 + 8))(v30, v24);
    *v35 = v32;
    *(v35 + 8) = 0;

    swift_bridgeObjectRelease_n();
    result = *&v36;
    *(v35 + 16) = v36;
    *(v35 + 32) = v42;
    *(v35 + 40) = v34;
  }

  return result;
}

__int128 *sub_1AE1DEAC4(uint64_t a1, void *a2)
{
  v47 = type metadata accessor for Proto_CRDT._StorageClass();
  inited = swift_initStaticObject();
  if (qword_1ED967F98 != -1)
  {
    swift_once();
  }

  v5 = off_1ED967FA0;
  v67 = *v2;
  v49 = v2;
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  type metadata accessor for CROrderedSetElement();
  v9 = type metadata accessor for CRSequence();

  v10 = v71;
  sub_1AE1650E8(a1, v68);
  if (v10)
  {
    goto LABEL_4;
  }

  v45 = v8;
  v46 = v6;
  v11 = v7;
  v7 = &v51;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = a1;
  v44 = 0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_OrderedSet._StorageClass();
    swift_allocObject();
    v13 = sub_1AE1D0514(v5);

    v5 = v13;
  }

  v62 = v68[4];
  v63 = v68[5];
  v64 = v69;
  v58 = v68[0];
  v59 = v68[1];
  v60 = v68[2];
  v61 = v68[3];
  swift_beginAccess();
  v66 = v5[24];
  v14 = *(v5 + 11);
  v65[4] = *(v5 + 10);
  v65[5] = v14;
  v15 = *(v5 + 7);
  v65[0] = *(v5 + 6);
  v65[1] = v15;
  v16 = *(v5 + 9);
  v65[2] = *(v5 + 8);
  v65[3] = v16;
  v17 = v59;
  *(v5 + 6) = v58;
  *(v5 + 7) = v17;
  v18 = v60;
  v19 = v61;
  v20 = v62;
  v21 = v63;
  v5[24] = v64;
  *(v5 + 10) = v20;
  *(v5 + 11) = v21;
  *(v5 + 8) = v18;
  *(v5 + 9) = v19;
  v22 = sub_1ADDCEDE0(v65, &qword_1EB5BCC28, &unk_1AE251820);
  v57 = v49[1];
  MEMORY[0x1EEE9AC00](v22);
  v42[8] = v11;
  v42[9] = v46;
  v42[10] = v45;
  v42[11] = v23;
  v24 = v71;
  v42[12] = v71;
  type metadata accessor for CRSet();

  sub_1AE17F010(v24, sub_1AE1EA5A8, v70);
  if (v44)
  {
LABEL_4:
  }

  else
  {
    v44 = &v43;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v25 = sub_1AE1D0514(v5);

      v5 = v25;
    }

    v26 = v71;
    v53 = v70[2];
    v54 = v70[3];
    v55 = v70[4];
    v51 = v70[0];
    v52 = v70[1];
    swift_beginAccess();
    v27 = *(v5 + 2);
    v28 = *(v5 + 3);
    v29 = *(v5 + 5);
    v56[3] = *(v5 + 4);
    v56[4] = v29;
    v56[1] = v27;
    v56[2] = v28;
    v56[0] = *(v5 + 1);
    v30 = v55;
    *(v5 + 1) = v51;
    *(v5 + 4) = v54;
    *(v5 + 5) = v30;
    v31 = v53;
    *(v5 + 2) = v52;
    *(v5 + 3) = v31;
    sub_1ADDCEDE0(v56, &qword_1EB5BCC30, &qword_1AE2580D0);
    v50 = *v49;
    MEMORY[0x1EEE9AC00](v50);
    v42[2] = v11;
    v42[3] = v46;
    v42[4] = v45;
    v42[5] = v26;

    v32 = sub_1AE165268(sub_1AE1EA5CC, v42, v9, &type metadata for Proto_Timestamp);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v33 = sub_1AE1D0514(v5);

      v5 = v33;
    }

    v7 = inited;
    swift_beginAccess();
    v34 = v5[25];
    v5[25] = v32;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v35 = sub_1AE1D0514(v5);

      v5 = v35;
    }

    swift_beginAccess();
    v5[26] = 0;
    *(v5 + 216) = 1;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = swift_allocObject();
      v37 = *(v7 + 2);
      *(v36 + 16) = v37;
      sub_1ADE5215C(v37);

      v7 = v36;
    }

    v38 = swift_allocObject();
    *(v38 + 16) = v5;
    v39 = v38 | 0x8000000000000000;
    v40 = *(v7 + 2);
    *(v7 + 2) = v39;
    sub_1ADE52174(v40);
  }

  return v7;
}

void (*sub_1AE1DF030(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = *(a4 + 8);
  v13 = sub_1AE23E2DC();
  v11[3] = v13;
  v14 = *(v13 - 8);
  v11[4] = v14;
  v15 = *(v14 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v17 = v16;
  v11[6] = v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = sub_1AE23D5CC();
  v11[7] = v18;
  v19 = *(v18 - 8);
  v20 = v19;
  v11[8] = v19;
  if (v9)
  {
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v21 = malloc(*(v19 + 64));
  }

  v11[9] = v21;
  (*(v20 + 16))();
  sub_1AE1DF3FC(a2, a3, a4, v17);
  return sub_1AE1DF254;
}

void sub_1AE1DF254(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[8];
  v5 = (*a1)[9];
  v7 = (*a1)[6];
  v14 = (*a1)[7];
  v9 = (*a1)[2];
  v8 = (*a1)[3];
  v11 = **a1;
  v10 = (*a1)[1];
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    sub_1AE23DD8C();
    v12 = *(v4 + 8);
    v12(v3, v8);
    (*(v6 + 8))(v5, v14);
    v12(v7, v8);
  }

  else
  {
    v13 = v2[3];
    swift_getWitnessTable();
    sub_1AE23DD8C();
    (*(v6 + 8))(v5, v14);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t sub_1AE1DF3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v52 = a1;
  v50 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v44 = *(AssociatedTypeWitness - 8);
  v13 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  swift_getAssociatedConformanceWitness();
  v47 = sub_1AE23D5CC();
  v45 = *(v47 - 8);
  v20 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v22 = &v39 - v21;
  sub_1AE23D41C();
  v51 = v4;
  v48 = v6;
  v49 = a2;
  sub_1AE23D46C();
  result = sub_1AE23CC1C();
  if (result)
  {
    v24 = v44;
    v25 = *(v44 + 32);
    v25(v12, v19, AssociatedTypeWitness);
    v26 = TupleTypeMetadata2;
    v25(&v12[*(TupleTypeMetadata2 + 48)], v16, AssociatedTypeWitness);
    v27 = v25;
    v28 = v46;
    v29 = v42;
    (*(v46 + 16))(v42, v12, v26);
    v40 = *(v26 + 48);
    v27(v22, v29, AssociatedTypeWitness);
    v41 = v27;
    v30 = *(v24 + 8);
    v30(&v29[v40], AssociatedTypeWitness);
    (*(v28 + 32))(v29, v12, v26);
    v31 = v47;
    v27(&v22[*(v47 + 36)], &v29[*(v26 + 48)], AssociatedTypeWitness);
    v30(v29, AssociatedTypeWitness);
    v32 = v51;
    v33 = v52;
    v34 = v49;
    sub_1AE23D42C();
    v35 = v45;
    (*(v45 + 8))(v22, v31);
    v36 = sub_1AE23E2DC();
    v37 = v50;
    (*(*(v34 - 8) + 16))(&v50[*(v36 + 40)], v32, v34);
    (*(v35 + 16))(v22, v33, v31);
    v38 = v41;
    v41(v37, v22, AssociatedTypeWitness);
    return v38(&v37[*(v36 + 36)], &v22[*(v31 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1DF8D8(uint64_t a1)
{
  v1 = *(*(*(a1 + 16) - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB390, &unk_1AE24FCE0);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
    v5 = sub_1AE23DD9C();
    __swift_destroy_boxed_opaque_existential_1(&v7);
    return v5;
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_1ADDCEDE0(&v7, &unk_1EB5BEB20, &qword_1AE24C510);
    return 63;
  }
}

BOOL sub_1AE1DFA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);
  result = 0;
  if (sub_1AE23CCBC())
  {
    v8 = *(type metadata accessor for CROrderedSetElement() + 44);
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = type metadata accessor for Timestamp(0);
    if (*(v9 + *(v11 + 20)) == *(v10 + *(v11 + 20)))
    {
      v12 = type metadata accessor for Replica();
      if (*(v9 + *(v12 + 20)) == *(v10 + *(v12 + 20)) && (sub_1AE23BF8C() & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1AE1DFAE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  sub_1AE23CBCC();
  v6 = v2 + *(a2 + 44);
  sub_1AE23BFAC();
  v7 = type metadata accessor for Replica();
  MEMORY[0x1B26FCBD0](*(v6 + *(v7 + 20)));
  v8 = type metadata accessor for Timestamp(0);
  return MEMORY[0x1B26FCBD0](*(v6 + *(v8 + 20)));
}

uint64_t sub_1AE1DFB60(uint64_t a1)
{
  sub_1AE23E31C();
  sub_1AE1DFAE8(v3, a1);
  return sub_1AE23E34C();
}

uint64_t sub_1AE1DFBB0(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE1DFAE8(v4, a2);
  return sub_1AE23E34C();
}

uint64_t sub_1AE1DFC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for CROrderedSet.DeduplicatedInfo() + 44);
  v6 = sub_1AE23C12C();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}