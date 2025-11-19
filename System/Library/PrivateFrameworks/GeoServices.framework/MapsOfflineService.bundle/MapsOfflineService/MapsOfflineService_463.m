uint64_t sub_18C59B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_19;
  }

  if (v1)
  {
    v3 = *(a1 + 24);
    if (v3 < 0)
    {
      v2 = 11;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = *(a1 + 28);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v5;
LABEL_14:
  if ((v1 & 4) != 0)
  {
    v6 = *(a1 + 32);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v7;
  }

LABEL_19:
  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_18C5ABC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_27192D8;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15B6444((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = *(a2 + 48);
  if (v10)
  {
    sub_1958E5C((a1 + 48), v10);
    v11 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy(v11, *(a2 + 56), 4 * *(a2 + 48));
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v12 = *(a2 + 64);
  if (v12)
  {
    sub_1958E5C((a1 + 64), v12);
    v13 = *(a1 + 72);
    *(a1 + 64) += *(a2 + 64);
    memcpy(v13, *(a2 + 72), 4 * *(a2 + 64));
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v14 = *(a2 + 80);
  if (v14)
  {
    sub_1958E5C((a1 + 80), v14);
    v15 = *(a1 + 88);
    *(a1 + 80) += *(a2 + 80);
    memcpy(v15, *(a2 + 88), 4 * *(a2 + 80));
  }

  v16 = *(a2 + 8);
  if (v16)
  {
    sub_1957EF4(v4, (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 96) = &qword_278E990;
  if (*(a2 + 16))
  {
    v17 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 96), (*(a2 + 96) & 0xFFFFFFFFFFFFFFFELL), v17);
  }

  v18 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v18;
  return a1;
}

void sub_18C5CA0(_Unwind_Exception *a1)
{
  sub_1956ABC(v4);
  sub_1956ABC(v3);
  sub_15B5594(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18C5D18(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1956ABC(a1 + 80);
  sub_1956ABC(a1 + 64);
  sub_1956ABC(a1 + 48);
  sub_15B5594((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18C5DDC(uint64_t a1)
{
  sub_18C5D18(a1);

  operator delete();
}

uint64_t sub_18C5E14(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1402588(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0;
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = *(v1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
    }
  }

  if ((v5 & 0xFE) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
  }

  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 112) = 0;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_18C5EE0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v89 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v89, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = (*v89 + 1);
    v9 = **v89;
    if (**v89 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v89, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v89 + 2);
      }
    }

    *v89 = v8;
    switch(v9 >> 3)
    {
      case 1u:
        if (v9 != 8)
        {
          goto LABEL_144;
        }

        v13 = v8 + 1;
        v14 = *v8;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }

        v15 = *v13;
        v16 = (v15 << 7) + v14;
        LODWORD(v14) = v16 - 128;
        if (v15 < 0)
        {
          *v89 = sub_19587DC(v8, (v16 - 128));
          if (!*v89)
          {
            goto LABEL_160;
          }

          LODWORD(v14) = v80;
        }

        else
        {
          v13 = v8 + 2;
LABEL_13:
          *v89 = v13;
        }

        if (sub_13F67A0(v14))
        {
          *(a1 + 16) |= 2u;
          *(a1 + 104) = v14;
        }

        else
        {
          sub_12E8450();
        }

        goto LABEL_152;
      case 2u:
        if (v9 != 18)
        {
          goto LABEL_144;
        }

        *(a1 + 16) |= 1u;
        v51 = *(a1 + 8);
        v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
        if (v51)
        {
          v52 = *v52;
        }

        v53 = sub_194DB04((a1 + 96), v52);
        v54 = sub_1958890(v53, *v89, a3);
        goto LABEL_151;
      case 3u:
        if (v9 != 26)
        {
          goto LABEL_144;
        }

        v38 = v8 - 1;
        while (1)
        {
          v39 = (v38 + 1);
          *v89 = v38 + 1;
          v40 = *(a1 + 40);
          if (v40 && (v41 = *(a1 + 32), v41 < *v40))
          {
            *(a1 + 32) = v41 + 1;
            v42 = *&v40[2 * v41 + 2];
          }

          else
          {
            v43 = sub_14050A4(*(a1 + 24));
            v42 = sub_19593CC(a1 + 24, v43);
            v39 = *v89;
          }

          v38 = sub_2201B80(a3, v42, v39);
          *v89 = v38;
          if (!v38)
          {
            goto LABEL_160;
          }

          if (*a3 <= v38 || *v38 != 26)
          {
            goto LABEL_152;
          }
        }

      case 4u:
        if (v9 != 32)
        {
          goto LABEL_144;
        }

        v44 = v8 + 1;
        v45 = *v8;
        if ((v45 & 0x8000000000000000) == 0)
        {
          goto LABEL_72;
        }

        v46 = *v44;
        v47 = (v46 << 7) + v45;
        LODWORD(v45) = v47 - 128;
        if (v46 < 0)
        {
          *v89 = sub_19587DC(v8, (v47 - 128));
          if (!*v89)
          {
            goto LABEL_160;
          }

          LODWORD(v45) = v77;
        }

        else
        {
          v44 = v8 + 2;
LABEL_72:
          *v89 = v44;
        }

        if (sub_13560CC(v45))
        {
          *(a1 + 16) |= 4u;
          *(a1 + 108) = v45;
        }

        else
        {
          sub_12E8500();
        }

        goto LABEL_152;
      case 5u:
        if (v9 != 40)
        {
          goto LABEL_144;
        }

        v5 |= 8u;
        LODWORD(v25) = *v8;
        if ((v25 & 0x80000000) == 0)
        {
          v26 = v8 + 1;
LABEL_120:
          *v89 = v26;
          *(a1 + 112) = v25;
          goto LABEL_152;
        }

        v25 = (v8[1] << 7) + v25 - 128;
        if ((v8[1] & 0x80000000) == 0)
        {
          v26 = v8 + 2;
          goto LABEL_120;
        }

        v73 = sub_19587DC(v8, v25);
        *v89 = v73;
        *(a1 + 112) = v74;
        if (!v73)
        {
          goto LABEL_160;
        }

        goto LABEL_152;
      case 6u:
        if (v9 != 48)
        {
          goto LABEL_144;
        }

        v5 |= 0x10u;
        v56 = v8 + 1;
        v55 = *v8;
        if ((v55 & 0x8000000000000000) == 0)
        {
          goto LABEL_88;
        }

        v57 = *v56;
        v55 = (v57 << 7) + v55 - 128;
        if (v57 < 0)
        {
          v81 = sub_19587DC(v8, v55);
          *v89 = v81;
          *(a1 + 116) = v82 != 0;
          if (!v81)
          {
            goto LABEL_160;
          }
        }

        else
        {
          v56 = v8 + 2;
LABEL_88:
          *v89 = v56;
          *(a1 + 116) = v55 != 0;
        }

        goto LABEL_152;
      case 7u:
        if (v9 != 56)
        {
          goto LABEL_144;
        }

        v5 |= 0x20u;
        v59 = v8 + 1;
        v58 = *v8;
        if ((v58 & 0x8000000000000000) == 0)
        {
          goto LABEL_93;
        }

        v60 = *v59;
        v58 = (v60 << 7) + v58 - 128;
        if (v60 < 0)
        {
          v83 = sub_19587DC(v8, v58);
          *v89 = v83;
          *(a1 + 117) = v84 != 0;
          if (!v83)
          {
            goto LABEL_160;
          }
        }

        else
        {
          v59 = v8 + 2;
LABEL_93:
          *v89 = v59;
          *(a1 + 117) = v58 != 0;
        }

        goto LABEL_152;
      case 8u:
        if (v9 != 64)
        {
          goto LABEL_144;
        }

        v5 |= 0x40u;
        v49 = v8 + 1;
        v48 = *v8;
        if ((v48 & 0x8000000000000000) == 0)
        {
          goto LABEL_79;
        }

        v50 = *v49;
        v48 = (v50 << 7) + v48 - 128;
        if (v50 < 0)
        {
          v78 = sub_19587DC(v8, v48);
          *v89 = v78;
          *(a1 + 118) = v79 != 0;
          if (!v78)
          {
            goto LABEL_160;
          }
        }

        else
        {
          v49 = v8 + 2;
LABEL_79:
          *v89 = v49;
          *(a1 + 118) = v48 != 0;
        }

        goto LABEL_152;
      case 9u:
        if (v9 != 72)
        {
          goto LABEL_144;
        }

        v69 = v8 + 1;
        v70 = *v8;
        if ((v70 & 0x8000000000000000) == 0)
        {
          goto LABEL_115;
        }

        v71 = *v69;
        v72 = (v71 << 7) + v70;
        LODWORD(v70) = v72 - 128;
        if (v71 < 0)
        {
          *v89 = sub_19587DC(v8, (v72 - 128));
          if (!*v89)
          {
            goto LABEL_160;
          }

          LODWORD(v70) = v85;
        }

        else
        {
          v69 = v8 + 2;
LABEL_115:
          *v89 = v69;
        }

        if (sub_13560D8(v70))
        {
          *(a1 + 16) |= 0x100u;
          *(a1 + 120) = v70;
        }

        else
        {
          sub_13B6774();
        }

        goto LABEL_152;
      case 0xAu:
        if (v9 != 80)
        {
          goto LABEL_144;
        }

        v5 |= 0x80u;
        v36 = v8 + 1;
        v35 = *v8;
        if ((v35 & 0x8000000000000000) == 0)
        {
          goto LABEL_57;
        }

        v37 = *v36;
        v35 = (v37 << 7) + v35 - 128;
        if (v37 < 0)
        {
          v75 = sub_19587DC(v8, v35);
          *v89 = v75;
          *(a1 + 119) = v76 != 0;
          if (!v75)
          {
            goto LABEL_160;
          }
        }

        else
        {
          v36 = v8 + 2;
LABEL_57:
          *v89 = v36;
          *(a1 + 119) = v35 != 0;
        }

        goto LABEL_152;
      case 0xBu:
        if (v9 == 88)
        {
          v61 = (v8 - 1);
          while (1)
          {
            *v89 = v61 + 1;
            v62 = *(v61 + 1);
            v63 = (v61 + 2);
            if (v62 < 0)
            {
              v64 = *v63;
              v65 = (v64 << 7) + v62;
              LODWORD(v62) = v65 - 128;
              if (v64 < 0)
              {
                *v89 = sub_19587DC(v61 + 1, (v65 - 128));
                if (!*v89)
                {
                  goto LABEL_160;
                }

                LODWORD(v62) = v68;
                goto LABEL_100;
              }

              v63 = (v61 + 3);
            }

            *v89 = v63;
LABEL_100:
            if (sub_13AFAA4(v62))
            {
              v66 = *(a1 + 48);
              if (v66 == *(a1 + 52))
              {
                v67 = v66 + 1;
                sub_1958E5C((a1 + 48), v66 + 1);
                *(*(a1 + 56) + 4 * v66) = v62;
              }

              else
              {
                *(*(a1 + 56) + 4 * v66) = v62;
                v67 = v66 + 1;
              }

              *(a1 + 48) = v67;
            }

            else
            {
              sub_1313680();
            }

            v61 = *v89;
            if (*a3 <= *v89 || **v89 != 88)
            {
              goto LABEL_152;
            }
          }
        }

        if (v9 != 90)
        {
          goto LABEL_144;
        }

        *&v90 = a1 + 48;
        *(&v90 + 1) = sub_13AFAA4;
        v91 = a1 + 8;
        v86 = 11;
        goto LABEL_143;
      case 0xCu:
        if (v9 == 96)
        {
          v17 = (v8 - 1);
          while (1)
          {
            *v89 = v17 + 1;
            v18 = *(v17 + 1);
            v19 = (v17 + 2);
            if (v18 < 0)
            {
              v20 = *v19;
              v21 = (v20 << 7) + v18;
              LODWORD(v18) = v21 - 128;
              if (v20 < 0)
              {
                *v89 = sub_19587DC(v17 + 1, (v21 - 128));
                if (!*v89)
                {
                  goto LABEL_160;
                }

                LODWORD(v18) = v24;
                goto LABEL_22;
              }

              v19 = (v17 + 3);
            }

            *v89 = v19;
LABEL_22:
            if (sub_13AFAA4(v18))
            {
              v22 = *(a1 + 64);
              if (v22 == *(a1 + 68))
              {
                v23 = v22 + 1;
                sub_1958E5C((a1 + 64), v22 + 1);
                *(*(a1 + 72) + 4 * v22) = v18;
              }

              else
              {
                *(*(a1 + 72) + 4 * v22) = v18;
                v23 = v22 + 1;
              }

              *(a1 + 64) = v23;
            }

            else
            {
              sub_19481DC();
            }

            v17 = *v89;
            if (*a3 <= *v89 || **v89 != 96)
            {
              goto LABEL_152;
            }
          }
        }

        if (v9 != 98)
        {
          goto LABEL_144;
        }

        *&v90 = a1 + 64;
        *(&v90 + 1) = sub_13AFAA4;
        v91 = a1 + 8;
        v86 = 12;
        goto LABEL_143;
      case 0xDu:
        if (v9 == 104)
        {
          v27 = (v8 - 1);
          while (1)
          {
            *v89 = v27 + 1;
            v28 = *(v27 + 1);
            v29 = (v27 + 2);
            if (v28 < 0)
            {
              v30 = *v29;
              v31 = (v30 << 7) + v28;
              LODWORD(v28) = v31 - 128;
              if (v30 < 0)
              {
                *v89 = sub_19587DC(v27 + 1, (v31 - 128));
                if (!*v89)
                {
                  goto LABEL_160;
                }

                LODWORD(v28) = v34;
                goto LABEL_42;
              }

              v29 = (v27 + 3);
            }

            *v89 = v29;
LABEL_42:
            if (sub_13AFAA4(v28))
            {
              v32 = *(a1 + 80);
              if (v32 == *(a1 + 84))
              {
                v33 = v32 + 1;
                sub_1958E5C((a1 + 80), v32 + 1);
                *(*(a1 + 88) + 4 * v32) = v28;
              }

              else
              {
                *(*(a1 + 88) + 4 * v32) = v28;
                v33 = v32 + 1;
              }

              *(a1 + 80) = v33;
            }

            else
            {
              sub_13B6734();
            }

            v27 = *v89;
            if (*a3 <= *v89 || **v89 != 104)
            {
              goto LABEL_152;
            }
          }
        }

        if (v9 == 106)
        {
          *&v90 = a1 + 80;
          *(&v90 + 1) = sub_13AFAA4;
          v91 = a1 + 8;
          v86 = 13;
LABEL_143:
          v92 = v86;
          v54 = sub_1216588(a3, v8, &v90);
LABEL_151:
          *v89 = v54;
          if (!v54)
          {
            goto LABEL_160;
          }

LABEL_152:
          if (sub_195ADC0(a3, v89, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_144:
        if (v9)
        {
          v87 = (v9 & 7) == 4;
        }

        else
        {
          v87 = 1;
        }

        if (!v87)
        {
          if (*v7)
          {
            v88 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v88 = sub_11F1920((a1 + 8));
            v8 = *v89;
          }

          v54 = sub_1952690(v9, v88, v8, a3);
          goto LABEL_151;
        }

        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
        }

        else
        {
LABEL_160:
          *v89 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v89;
      default:
        goto LABEL_144;
    }
  }
}

char *sub_18C67E8(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 104);
    *a2 = 8;
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      a2[2] = v7 >> 7;
      v6 = a2 + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = a2[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = a2 + 2;
    }
  }

  else
  {
    v6 = a2;
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *v6 = 26;
      v14 = *(v13 + 44);
      v6[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v6 + 1);
      }

      else
      {
        v15 = v6 + 2;
      }

      v6 = sub_1403020(v13, v15, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 108);
    *v6 = 32;
    v6[1] = v17;
    if (v17 > 0x7F)
    {
      v6[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v6[2] = v17 >> 7;
      v16 = v6 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v19) = v6[2];
        do
        {
          *(v16 - 1) = v19 | 0x80;
          v19 = v18 >> 7;
          *v16++ = v18 >> 7;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v16 = v6 + 2;
    }
  }

  else
  {
    v16 = v6;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v22 = *(a1 + 112);
    *v16 = 40;
    v16[1] = v22;
    if (v22 > 0x7F)
    {
      v16[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v16[2] = v22 >> 7;
      v21 = v16 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v16) = v16[2];
        do
        {
          *(v21 - 1) = v16 | 0x80;
          v16 = (v23 >> 7);
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v21 = v16 + 2;
    }
  }

  else
  {
    v21 = v16;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v26 = *(a1 + 116);
    *v21 = 48;
    v21[1] = v26;
    v21 += 2;
    if ((v5 & 0x20) == 0)
    {
LABEL_40:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_41;
      }

LABEL_49:
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v28 = *(a1 + 118);
      *v21 = 64;
      v21[1] = v28;
      v21 += 2;
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_52;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_40;
  }

  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v27 = *(a1 + 117);
  *v21 = 56;
  v21[1] = v27;
  v21 += 2;
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_49;
  }

LABEL_41:
  if ((v5 & 0x100) == 0)
  {
LABEL_42:
    v25 = v21;
    goto LABEL_59;
  }

LABEL_52:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v29 = *(a1 + 120);
  *v21 = 72;
  v21[1] = v29;
  if (v29 > 0x7F)
  {
    v21[1] = v29 | 0x80;
    v30 = v29 >> 7;
    v21[2] = v29 >> 7;
    v25 = v21 + 3;
    if (v29 >= 0x4000)
    {
      LOBYTE(v31) = v21[2];
      do
      {
        *(v25 - 1) = v31 | 0x80;
        v31 = v30 >> 7;
        *v25++ = v30 >> 7;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
    }
  }

  else
  {
    v25 = v21 + 2;
  }

LABEL_59:
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v33 = *(a1 + 119);
    *v25 = 80;
    v25[1] = v33;
    v25 += 2;
  }

  v34 = *(a1 + 48);
  if (v34 < 1)
  {
    v37 = v25;
  }

  else
  {
    for (j = 0; j != v34; ++j)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v36 = *(*(a1 + 56) + 4 * j);
      *v25 = 88;
      v25[1] = v36;
      if (v36 > 0x7F)
      {
        v25[1] = v36 | 0x80;
        v38 = v36 >> 7;
        v25[2] = v36 >> 7;
        v37 = v25 + 3;
        if (v36 >= 0x4000)
        {
          LOBYTE(v25) = v25[2];
          do
          {
            *(v37 - 1) = v25 | 0x80;
            v25 = (v38 >> 7);
            *v37++ = v38 >> 7;
            v39 = v38 >> 14;
            v38 >>= 7;
          }

          while (v39);
        }
      }

      else
      {
        v37 = v25 + 2;
      }

      v25 = v37;
    }
  }

  v40 = *(a1 + 64);
  if (v40 < 1)
  {
    v43 = v37;
  }

  else
  {
    for (k = 0; k != v40; ++k)
    {
      if (*a3 <= v37)
      {
        v37 = sub_225EB68(a3, v37);
      }

      v42 = *(*(a1 + 72) + 4 * k);
      *v37 = 96;
      v37[1] = v42;
      if (v42 > 0x7F)
      {
        v37[1] = v42 | 0x80;
        v44 = v42 >> 7;
        v37[2] = v42 >> 7;
        v43 = v37 + 3;
        if (v42 >= 0x4000)
        {
          LOBYTE(v45) = v37[2];
          do
          {
            *(v43 - 1) = v45 | 0x80;
            v45 = v44 >> 7;
            *v43++ = v44 >> 7;
            v46 = v44 >> 14;
            v44 >>= 7;
          }

          while (v46);
        }
      }

      else
      {
        v43 = v37 + 2;
      }

      v37 = v43;
    }
  }

  v47 = *(a1 + 80);
  if (v47 < 1)
  {
    v50 = v43;
  }

  else
  {
    for (m = 0; m != v47; ++m)
    {
      if (*a3 <= v43)
      {
        v43 = sub_225EB68(a3, v43);
      }

      v49 = *(*(a1 + 88) + 4 * m);
      *v43 = 104;
      v43[1] = v49;
      if (v49 > 0x7F)
      {
        v43[1] = v49 | 0x80;
        v51 = v49 >> 7;
        v43[2] = v49 >> 7;
        v50 = v43 + 3;
        if (v49 >= 0x4000)
        {
          LOBYTE(v43) = v43[2];
          do
          {
            *(v50 - 1) = v43 | 0x80;
            v43 = (v51 >> 7);
            *v50++ = v51 >> 7;
            v52 = v51 >> 14;
            v51 >>= 7;
          }

          while (v52);
        }
      }

      else
      {
        v50 = v43 + 2;
      }

      v43 = v50;
    }
  }

  v53 = *(a1 + 8);
  if ((v53 & 1) == 0)
  {
    return v50;
  }

  v55 = v53 & 0xFFFFFFFFFFFFFFFCLL;
  v56 = *(v55 + 31);
  if (v56 < 0)
  {
    v57 = *(v55 + 8);
    v56 = *(v55 + 16);
  }

  else
  {
    v57 = (v55 + 8);
  }

  if ((*a3 - v50) >= v56)
  {
    v58 = v56;
    memcpy(v50, v57, v56);
    v50 += v58;
    return v50;
  }

  return sub_1957130(a3, v57, v56, v50);
}

uint64_t sub_18C6E30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_1403980(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 56) + 4 * v10);
      if (v11 < 0)
      {
        v12 = 10;
      }

      else
      {
        v12 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
      }

      v9 += v12;
      ++v10;
    }

    while (v8 != v10);
  }

  else
  {
    v9 = 0;
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(*(a1 + 72) + 4 * v14);
      if (v16 < 0)
      {
        v17 = 10;
      }

      else
      {
        v17 = (9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6;
      }

      v15 += v17;
      ++v14;
    }

    while (v13 != v14);
  }

  else
  {
    v15 = 0;
  }

  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(*(a1 + 88) + 4 * v19);
      if (v21 < 0)
      {
        v22 = 10;
      }

      else
      {
        v22 = (9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6;
      }

      v20 += v22;
      ++v19;
    }

    while (v18 != v19);
  }

  else
  {
    v20 = 0;
  }

  result = v2 + v8 + v9 + v13 + v15 + v18 + v20;
  v24 = *(a1 + 16);
  if (v24)
  {
    if (v24)
    {
      v31 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      v32 = *(v31 + 23);
      v33 = *(v31 + 8);
      if ((v32 & 0x80u) == 0)
      {
        v33 = v32;
      }

      result += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v24 & 2) == 0)
      {
LABEL_36:
        if ((v24 & 4) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_57;
      }
    }

    else if ((v24 & 2) == 0)
    {
      goto LABEL_36;
    }

    v34 = *(a1 + 104);
    if (v34 < 0)
    {
      v35 = 11;
    }

    else
    {
      v35 = ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v35;
    if ((v24 & 4) == 0)
    {
LABEL_37:
      if ((v24 & 8) == 0)
      {
LABEL_42:
        v28.i64[0] = 0x200000002;
        v28.i64[1] = 0x200000002;
        result += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v24), xmmword_232A1F0), v28));
        goto LABEL_43;
      }

LABEL_38:
      v25 = *(a1 + 112);
      v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v25 >= 0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 11;
      }

      result += v27;
      goto LABEL_42;
    }

LABEL_57:
    v37 = *(a1 + 108);
    if (v37 < 0)
    {
      v38 = 11;
    }

    else
    {
      v38 = ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v38;
    if ((v24 & 8) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_43:
  if ((v24 & 0x100) != 0)
  {
    v29 = *(a1 + 120);
    if (v29 < 0)
    {
      v30 = 11;
    }

    else
    {
      v30 = ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v30;
  }

  v36 = *(a1 + 8);
  if (v36)
  {
    v39 = v36 & 0xFFFFFFFFFFFFFFFCLL;
    v40 = *((v36 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v40 < 0)
    {
      v40 = *(v39 + 16);
    }

    result += v40;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_18C713C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15B6444((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a1 + 48);
    sub_1958E5C((a1 + 48), v10 + v9);
    v11 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy((v11 + 4 * v10), *(a2 + 56), 4 * *(a2 + 48));
  }

  v12 = *(a2 + 64);
  if (v12)
  {
    v13 = *(a1 + 64);
    sub_1958E5C((a1 + 64), v13 + v12);
    v14 = *(a1 + 72);
    *(a1 + 64) += *(a2 + 64);
    memcpy((v14 + 4 * v13), *(a2 + 72), 4 * *(a2 + 64));
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a1 + 80);
    sub_1958E5C((a1 + 80), v16 + v15);
    v17 = *(a1 + 88);
    *(a1 + 80) += *(a2 + 80);
    memcpy((v17 + 4 * v16), *(a2 + 88), 4 * *(a2 + 80));
  }

  v18 = *(a2 + 16);
  if (v18)
  {
    if (v18)
    {
      v21 = *(a2 + 96);
      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      sub_194EA1C((a1 + 96), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
      if ((v18 & 2) == 0)
      {
LABEL_13:
        if ((v18 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_31;
      }
    }

    else if ((v18 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 104) = *(a2 + 104);
    if ((v18 & 4) == 0)
    {
LABEL_14:
      if ((v18 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_32;
    }

LABEL_31:
    *(a1 + 108) = *(a2 + 108);
    if ((v18 & 8) == 0)
    {
LABEL_15:
      if ((v18 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }

LABEL_32:
    *(a1 + 112) = *(a2 + 112);
    if ((v18 & 0x10) == 0)
    {
LABEL_16:
      if ((v18 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_34;
    }

LABEL_33:
    *(a1 + 116) = *(a2 + 116);
    if ((v18 & 0x20) == 0)
    {
LABEL_17:
      if ((v18 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(a1 + 117) = *(a2 + 117);
    if ((v18 & 0x40) == 0)
    {
LABEL_18:
      if ((v18 & 0x80) == 0)
      {
LABEL_20:
        *(a1 + 16) |= v18;
        goto LABEL_21;
      }

LABEL_19:
      *(a1 + 119) = *(a2 + 119);
      goto LABEL_20;
    }

LABEL_35:
    *(a1 + 118) = *(a2 + 118);
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:
  if ((v18 & 0x100) != 0)
  {
    v19 = *(a2 + 120);
    *(a1 + 16) |= 0x100u;
    *(a1 + 120) = v19;
  }

  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_18C739C(uint64_t a1)
{
  v2 = *(a1 + 32);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_140441C(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_18C7404(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_2719358;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 149) = 0u;
  return a1;
}

void sub_18C748C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18C74BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_2719358;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 68) = 0;
  *(a1 + 52) = 0;
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  v6 = *(a2 + 56);
  if (v6)
  {
    v7 = *(a2 + 64);
    v8 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_19452F0((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
    v9 = *(a1 + 56) + v6;
    *(a1 + 56) = v9;
    v10 = *(a1 + 64);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v11 = *(a2 + 80);
  if (v11)
  {
    v12 = *(a2 + 88);
    v13 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1786CC4((a1 + 72), v13, (v12 + 8), v11, **(a1 + 88) - *(a1 + 80));
    v14 = *(a1 + 80) + v11;
    *(a1 + 80) = v14;
    v15 = *(a1 + 88);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v16 = *(a2 + 104);
  if (v16)
  {
    v17 = *(a2 + 112);
    v18 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_166E8BC((a1 + 96), v18, (v17 + 8), v16, **(a1 + 112) - *(a1 + 104));
    v19 = *(a1 + 104) + v16;
    *(a1 + 104) = v19;
    v20 = *(a1 + 112);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 8);
  if (v21)
  {
    sub_1957EF4(v4, (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  v22 = *(a2 + 40);
  if (v22)
  {
    operator new();
  }

  *(a1 + 120) = 0;
  if ((v22 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 128) = 0;
  if ((v22 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 136) = 0;
  v23 = *(a2 + 144);
  *(a1 + 157) = *(a2 + 157);
  *(a1 + 144) = v23;
  return a1;
}

uint64_t sub_18C7810(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  if (a1 != &off_2789ED8)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      sub_13F6DF4(v5);
      operator delete();
    }

    v6 = *(a1 + 128);
    if (v6)
    {
      sub_13F68CC(v6);
      operator delete();
    }

    v7 = *(a1 + 136);
    if (v7)
    {
      sub_19146C8(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_166DFC8((a1 + 96));
  sub_1786C40((a1 + 72));
  sub_1943AD0((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18C792C(uint64_t a1)
{
  sub_18C7810(a1);

  operator delete();
}

uint64_t sub_18C7964(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_18C5E14(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 80);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 88) + 8);
    do
    {
      v8 = *v7++;
      result = sub_18C54D8(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  v9 = *(a1 + 104);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 112) + 8);
    do
    {
      v11 = *v10++;
      result = sub_13F9E64(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 40);
  if ((v12 & 7) != 0)
  {
    if (v12)
    {
      result = sub_13F6E30(*(a1 + 120));
      if ((v12 & 2) == 0)
      {
LABEL_16:
        if ((v12 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else if ((v12 & 2) == 0)
    {
      goto LABEL_16;
    }

    result = sub_13F6908(*(a1 + 128));
    if ((v12 & 4) != 0)
    {
LABEL_17:
      result = sub_1870C90(*(a1 + 136));
    }
  }

LABEL_18:
  if ((v12 & 0xF8) != 0)
  {
    *(a1 + 144) = 0;
  }

  if ((v12 & 0x7F00) != 0)
  {
    *(a1 + 157) = 0;
    *(a1 + 152) = 0;
  }

  v14 = *(a1 + 8);
  v13 = a1 + 8;
  *(v13 + 32) = 0;
  if (v14)
  {

    return sub_1957EA8(v13);
  }

  return result;
}

char *sub_18C7A94(uint64_t a1, char *a2, int32x2_t *a3)
{
  v98 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v98, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v98 + 1;
    v8 = *v98;
    if (*v98 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v98, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v98 + 2;
      }
    }

    v98 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_120;
        }

        v11 = v7 - 1;
        while (1)
        {
          v12 = (v11 + 1);
          v98 = v11 + 1;
          v13 = *(a1 + 64);
          if (v13 && (v14 = *(a1 + 56), v14 < *v13))
          {
            *(a1 + 56) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = sub_1903D98(*(a1 + 48));
            v15 = sub_19593CC(a1 + 48, v16);
            v12 = v98;
          }

          v11 = sub_2254794(a3, v15, v12);
          v98 = v11;
          if (!v11)
          {
            goto LABEL_161;
          }

          if (*a3 <= v11 || *v11 != 10)
          {
            goto LABEL_130;
          }
        }

      case 2u:
        if (v8 != 16)
        {
          goto LABEL_120;
        }

        v5 |= 0x10u;
        v31 = v7 + 1;
        v30 = *v7;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if (v32 < 0)
        {
          v82 = sub_19587DC(v7, v30);
          v98 = v82;
          *(a1 + 148) = v83 != 0;
          if (!v82)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v31 = v7 + 2;
LABEL_44:
          v98 = v31;
          *(a1 + 148) = v30 != 0;
        }

        goto LABEL_130;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_120;
        }

        v5 |= 0x20u;
        v46 = v7 + 1;
        v45 = *v7;
        if ((v45 & 0x8000000000000000) == 0)
        {
          goto LABEL_69;
        }

        v47 = *v46;
        v45 = (v47 << 7) + v45 - 128;
        if (v47 < 0)
        {
          v88 = sub_19587DC(v7, v45);
          v98 = v88;
          *(a1 + 149) = v89 != 0;
          if (!v88)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v46 = v7 + 2;
LABEL_69:
          v98 = v46;
          *(a1 + 149) = v45 != 0;
        }

        goto LABEL_130;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_120;
        }

        v5 |= 8u;
        v42 = v7 + 1;
        v43 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_64;
        }

        v44 = *v42;
        v43 = v43 + (v44 << 7) - 128;
        if (v44 < 0)
        {
          v86 = sub_1958770(v7, v43);
          v98 = v86;
          *(a1 + 144) = v87;
          if (!v86)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v42 = v7 + 2;
LABEL_64:
          v98 = v42;
          *(a1 + 144) = v43;
        }

        goto LABEL_130;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_120;
        }

        v5 |= 0x40u;
        v25 = v7 + 1;
        v24 = *v7;
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v26 = *v25;
        v24 = (v26 << 7) + v24 - 128;
        if (v26 < 0)
        {
          v80 = sub_19587DC(v7, v24);
          v98 = v80;
          *(a1 + 150) = v81 != 0;
          if (!v80)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v25 = v7 + 2;
LABEL_33:
          v98 = v25;
          *(a1 + 150) = v24 != 0;
        }

        goto LABEL_130;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_120;
        }

        v33 = v7 - 1;
        while (1)
        {
          v34 = (v33 + 1);
          v98 = v33 + 1;
          v35 = *(a1 + 88);
          if (v35 && (v36 = *(a1 + 80), v36 < *v35))
          {
            *(a1 + 80) = v36 + 1;
            v37 = *&v35[2 * v36 + 2];
          }

          else
          {
            v38 = sub_1903D1C(*(a1 + 72));
            v37 = sub_19593CC(a1 + 72, v38);
            v34 = v98;
          }

          v33 = sub_223FFFC(a3, v37, v34);
          v98 = v33;
          if (!v33)
          {
            goto LABEL_161;
          }

          if (*a3 <= v33 || *v33 != 50)
          {
            goto LABEL_130;
          }
        }

      case 7u:
        if (v8 != 56)
        {
          goto LABEL_120;
        }

        v5 |= 0x80u;
        v49 = v7 + 1;
        v48 = *v7;
        if ((v48 & 0x8000000000000000) == 0)
        {
          goto LABEL_74;
        }

        v50 = *v49;
        v48 = (v50 << 7) + v48 - 128;
        if (v50 < 0)
        {
          v90 = sub_19587DC(v7, v48);
          v98 = v90;
          *(a1 + 151) = v91 != 0;
          if (!v90)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v49 = v7 + 2;
LABEL_74:
          v98 = v49;
          *(a1 + 151) = v48 != 0;
        }

        goto LABEL_130;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_120;
        }

        v51 = v7 - 1;
        while (1)
        {
          v52 = (v51 + 1);
          v98 = v51 + 1;
          v53 = *(a1 + 112);
          if (v53 && (v54 = *(a1 + 104), v54 < *v53))
          {
            *(a1 + 104) = v54 + 1;
            v55 = *&v53[2 * v54 + 2];
          }

          else
          {
            sub_140495C(*(a1 + 96));
            v55 = sub_19593CC(a1 + 96, v56);
            v52 = v98;
          }

          v51 = sub_222DB64(a3, v55, v52);
          v98 = v51;
          if (!v51)
          {
            goto LABEL_161;
          }

          if (*a3 <= v51 || *v51 != 122)
          {
            goto LABEL_130;
          }
        }

      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_120;
        }

        v5 |= 0x100u;
        v67 = v7 + 1;
        v66 = *v7;
        if ((v66 & 0x8000000000000000) == 0)
        {
          goto LABEL_109;
        }

        v68 = *v67;
        v66 = (v68 << 7) + v66 - 128;
        if (v68 < 0)
        {
          v92 = sub_19587DC(v7, v66);
          v98 = v92;
          *(a1 + 152) = v93 != 0;
          if (!v92)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v67 = v7 + 2;
LABEL_109:
          v98 = v67;
          *(a1 + 152) = v66 != 0;
        }

        goto LABEL_130;
      case 0x11u:
        if (v8 != 138)
        {
          goto LABEL_120;
        }

        *(a1 + 40) |= 1u;
        v63 = *(a1 + 120);
        if (!v63)
        {
          v64 = *(a1 + 8);
          v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
          if (v64)
          {
            v65 = *v65;
          }

          v63 = sub_140457C(v65);
          *(a1 + 120) = v63;
          v7 = v98;
        }

        v23 = sub_2235514(a3, v63, v7);
        goto LABEL_129;
      case 0x12u:
        if (v8 != 146)
        {
          goto LABEL_120;
        }

        *(a1 + 40) |= 2u;
        v20 = *(a1 + 128);
        if (!v20)
        {
          v21 = *(a1 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          v20 = sub_1404500(v22);
          *(a1 + 128) = v20;
          v7 = v98;
        }

        v23 = sub_2254824(a3, v20, v7);
        goto LABEL_129;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_120;
        }

        v5 |= 0x200u;
        v40 = v7 + 1;
        v39 = *v7;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_59;
        }

        v41 = *v40;
        v39 = (v41 << 7) + v39 - 128;
        if (v41 < 0)
        {
          v84 = sub_19587DC(v7, v39);
          v98 = v84;
          *(a1 + 153) = v85 != 0;
          if (!v84)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v40 = v7 + 2;
LABEL_59:
          v98 = v40;
          *(a1 + 153) = v39 != 0;
        }

        goto LABEL_130;
      case 0x14u:
        if (v8 != 162)
        {
          goto LABEL_120;
        }

        *(a1 + 40) |= 4u;
        v27 = *(a1 + 136);
        if (!v27)
        {
          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          v27 = sub_191637C(v29);
          *(a1 + 136) = v27;
          v7 = v98;
        }

        v23 = sub_22045B0(a3, v27, v7);
        goto LABEL_129;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_120;
        }

        v5 |= 0x400u;
        v18 = v7 + 1;
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_22;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if (v19 < 0)
        {
          v78 = sub_19587DC(v7, v17);
          v98 = v78;
          *(a1 + 154) = v79 != 0;
          if (!v78)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v18 = v7 + 2;
LABEL_22:
          v98 = v18;
          *(a1 + 154) = v17 != 0;
        }

        goto LABEL_130;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_120;
        }

        v58 = v7 + 1;
        v57 = *v7;
        if ((v57 & 0x8000000000000000) == 0)
        {
          goto LABEL_89;
        }

        v59 = *v58;
        v57 = (v59 << 7) + v57 - 128;
        if (v59 < 0)
        {
          v98 = sub_19587DC(v7, v57);
          if (!v98)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v58 = v7 + 2;
LABEL_89:
          v98 = v58;
        }

        if (v57 > 6)
        {
          sub_1313600();
        }

        else
        {
          *(a1 + 40) |= 0x1000u;
          *(a1 + 156) = v57;
        }

        goto LABEL_130;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_120;
        }

        v61 = v7 + 1;
        v60 = *v7;
        if ((v60 & 0x8000000000000000) == 0)
        {
          goto LABEL_96;
        }

        v62 = *v61;
        v60 = (v62 << 7) + v60 - 128;
        if (v62 < 0)
        {
          v98 = sub_19587DC(v7, v60);
          if (!v98)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v61 = v7 + 2;
LABEL_96:
          v98 = v61;
        }

        if (v60 > 2)
        {
          sub_15B6A8C();
        }

        else
        {
          *(a1 + 40) |= 0x2000u;
          *(a1 + 160) = v60;
        }

        goto LABEL_130;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_120;
        }

        v5 |= 0x800u;
        v73 = v7 + 1;
        v72 = *v7;
        if ((v72 & 0x8000000000000000) == 0)
        {
          goto LABEL_119;
        }

        v74 = *v73;
        v72 = (v74 << 7) + v72 - 128;
        if (v74 < 0)
        {
          v96 = sub_19587DC(v7, v72);
          v98 = v96;
          *(a1 + 155) = v97 != 0;
          if (!v96)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v73 = v7 + 2;
LABEL_119:
          v98 = v73;
          *(a1 + 155) = v72 != 0;
        }

        goto LABEL_130;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_120;
        }

        v5 |= 0x4000u;
        v70 = v7 + 1;
        v69 = *v7;
        if ((v69 & 0x8000000000000000) == 0)
        {
          goto LABEL_114;
        }

        v71 = *v70;
        v69 = (v71 << 7) + v69 - 128;
        if (v71 < 0)
        {
          v94 = sub_19587DC(v7, v69);
          v98 = v94;
          *(a1 + 164) = v95 != 0;
          if (!v94)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v70 = v7 + 2;
LABEL_114:
          v98 = v70;
          *(a1 + 164) = v69 != 0;
        }

        goto LABEL_130;
      default:
LABEL_120:
        if (v8)
        {
          v75 = (v8 & 7) == 4;
        }

        else
        {
          v75 = 1;
        }

        if (!v75)
        {
          if (v8 - 8000 > 0x18F)
          {
            v76 = *(a1 + 8);
            if (v76)
            {
              v77 = (v76 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v77 = sub_11F1920((a1 + 8));
              v7 = v98;
            }

            v23 = sub_1952690(v8, v77, v7, a3);
          }

          else
          {
            v23 = sub_19525AC((a1 + 16), v8, v7, &off_2789ED8, (a1 + 8), a3);
          }

LABEL_129:
          v98 = v23;
          if (!v23)
          {
            goto LABEL_161;
          }

LABEL_130:
          if (sub_195ADC0(a3, &v98, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_161:
          v98 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return v98;
    }
  }
}

char *sub_18C8424(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 64) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 20);
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, a2 + 1);
      }

      else
      {
        v10 = a2 + 2;
      }

      a2 = sub_18C67E8(v8, v10, a3);
    }
  }

  v11 = *(a1 + 40);
  if ((v11 & 0x10) == 0)
  {
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v14 = *(a1 + 149);
    *a2 = 24;
    a2[1] = v14;
    a2 += 2;
    if ((v11 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v13 = *(a1 + 148);
  *a2 = 16;
  a2[1] = v13;
  a2 += 2;
  if ((v11 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((v11 & 8) == 0)
  {
LABEL_12:
    v12 = a2;
    goto LABEL_26;
  }

LABEL_19:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v15 = *(a1 + 144);
  *a2 = 32;
  a2[1] = v15;
  if (v15 > 0x7F)
  {
    a2[1] = v15 | 0x80;
    v16 = v15 >> 7;
    a2[2] = v15 >> 7;
    v12 = a2 + 3;
    if (v15 >= 0x4000)
    {
      LOBYTE(a2) = a2[2];
      do
      {
        *(v12 - 1) = a2 | 0x80;
        LODWORD(a2) = v16 >> 7;
        *v12++ = v16 >> 7;
        v17 = v16 >> 14;
        v16 >>= 7;
      }

      while (v17);
    }
  }

  else
  {
    v12 = a2 + 2;
  }

LABEL_26:
  if ((v11 & 0x40) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 150);
    *v12 = 40;
    v12[1] = v18;
    v12 += 2;
  }

  v19 = *(a1 + 80);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v21 = *(*(a1 + 88) + 8 * j + 8);
      *v12 = 50;
      v22 = *(v21 + 20);
      v12[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v12 + 1);
      }

      else
      {
        v23 = v12 + 2;
      }

      v12 = sub_18C5780(v21, v23, a3);
    }
  }

  if ((v11 & 0x80) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v24 = *(a1 + 151);
    *v12 = 56;
    v12[1] = v24;
    v12 += 2;
  }

  v25 = *(a1 + 104);
  if (v25)
  {
    for (k = 0; k != v25; ++k)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v27 = *(*(a1 + 112) + 8 * k + 8);
      *v12 = 122;
      v28 = *(v27 + 20);
      v12[1] = v28;
      if (v28 > 0x7F)
      {
        v29 = sub_19575D0(v28, v12 + 1);
      }

      else
      {
        v29 = v12 + 2;
      }

      v12 = sub_13FA2D8(v27, v29, a3);
    }
  }

  if ((v11 & 0x100) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v31 = *(a1 + 152);
    *v12 = 384;
    v12[2] = v31;
    v12 += 3;
    if ((v11 & 1) == 0)
    {
LABEL_52:
      if ((v11 & 2) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_67;
    }
  }

  else if ((v11 & 1) == 0)
  {
    goto LABEL_52;
  }

  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v32 = *(a1 + 120);
  *v12 = 394;
  v33 = *(v32 + 40);
  v12[2] = v33;
  if (v33 > 0x7F)
  {
    v34 = sub_19575D0(v33, v12 + 2);
  }

  else
  {
    v34 = v12 + 3;
  }

  v12 = sub_13F6FB8(v32, v34, a3);
  if ((v11 & 2) == 0)
  {
LABEL_53:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_73;
  }

LABEL_67:
  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v35 = *(a1 + 128);
  *v12 = 402;
  v36 = *(v35 + 20);
  v12[2] = v36;
  if (v36 > 0x7F)
  {
    v37 = sub_19575D0(v36, v12 + 2);
  }

  else
  {
    v37 = v12 + 3;
  }

  v12 = sub_13F6A90(v35, v37, a3);
  if ((v11 & 0x200) == 0)
  {
LABEL_54:
    if ((v11 & 4) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_76;
  }

LABEL_73:
  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v38 = *(a1 + 153);
  *v12 = 408;
  v12[2] = v38;
  v12 += 3;
  if ((v11 & 4) == 0)
  {
LABEL_55:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_56;
    }

LABEL_82:
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v42 = *(a1 + 154);
    *v12 = 424;
    v12[2] = v42;
    v12 += 3;
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_85;
  }

LABEL_76:
  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v39 = *(a1 + 136);
  *v12 = 418;
  v40 = *(v39 + 20);
  v12[2] = v40;
  if (v40 > 0x7F)
  {
    v41 = sub_19575D0(v40, v12 + 2);
  }

  else
  {
    v41 = v12 + 3;
  }

  v12 = sub_1914A28(v39, v41, a3);
  if ((v11 & 0x400) != 0)
  {
    goto LABEL_82;
  }

LABEL_56:
  if ((v11 & 0x1000) == 0)
  {
LABEL_57:
    v30 = v12;
    goto LABEL_92;
  }

LABEL_85:
  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v43 = *(a1 + 156);
  *v12 = 432;
  v12[2] = v43;
  if (v43 > 0x7F)
  {
    v12[2] = v43 | 0x80;
    v44 = v43 >> 7;
    v12[3] = v43 >> 7;
    v30 = v12 + 4;
    if (v43 >= 0x4000)
    {
      LOBYTE(v12) = v12[3];
      do
      {
        *(v30 - 1) = v12 | 0x80;
        v12 = (v44 >> 7);
        *v30++ = v44 >> 7;
        v45 = v44 >> 14;
        v44 >>= 7;
      }

      while (v45);
    }
  }

  else
  {
    v30 = v12 + 3;
  }

LABEL_92:
  if ((v11 & 0x2000) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v47 = *(a1 + 160);
    *v30 = 440;
    v30[2] = v47;
    if (v47 > 0x7F)
    {
      v30[2] = v47 | 0x80;
      v48 = v47 >> 7;
      v30[3] = v47 >> 7;
      v46 = v30 + 4;
      if (v47 >= 0x4000)
      {
        LOBYTE(v30) = v30[3];
        do
        {
          *(v46 - 1) = v30 | 0x80;
          v30 = (v48 >> 7);
          *v46++ = v48 >> 7;
          v49 = v48 >> 14;
          v48 >>= 7;
        }

        while (v49);
      }
    }

    else
    {
      v46 = v30 + 3;
    }
  }

  else
  {
    v46 = v30;
  }

  if ((v11 & 0x800) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v50 = *(a1 + 155);
    *v46 = 448;
    v46[2] = v50;
    v46 += 3;
  }

  if ((v11 & 0x4000) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v51 = *(a1 + 164);
    *v46 = 456;
    v46[2] = v51;
    v46 += 3;
  }

  if (*(a1 + 26))
  {
    v46 = sub_1953428(a1 + 16, 1000, 1050, v46, a3);
  }

  v52 = *(a1 + 8);
  if ((v52 & 1) == 0)
  {
    return v46;
  }

  v54 = v52 & 0xFFFFFFFFFFFFFFFCLL;
  v55 = *(v54 + 31);
  if (v55 < 0)
  {
    v56 = *(v54 + 8);
    v55 = *(v54 + 16);
  }

  else
  {
    v56 = (v54 + 8);
  }

  if ((*a3 - v46) >= v55)
  {
    v57 = v55;
    memcpy(v46, v56, v55);
    v46 += v57;
    return v46;
  }

  return sub_1957130(a3, v56, v55, v46);
}

uint64_t sub_18C8B70(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + v3;
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_18C6E30(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 80);
  v11 = v4 + v10;
  v12 = *(a1 + 88);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 8 * v10;
    do
    {
      v15 = *v13++;
      v16 = sub_18C59B8(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 104);
  v18 = v11 + v17;
  v19 = *(a1 + 112);
  if (v19)
  {
    v20 = (v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  if (v17)
  {
    v21 = 8 * v17;
    do
    {
      v22 = *v20++;
      v23 = sub_13FA69C(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 40);
  if (v24)
  {
    if (v24)
    {
      v35 = sub_13F7080(*(a1 + 120));
      v18 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if ((v24 & 2) == 0)
      {
LABEL_22:
        if ((v24 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_52;
      }
    }

    else if ((v24 & 2) == 0)
    {
      goto LABEL_22;
    }

    v36 = sub_13F6BA8(*(a1 + 128));
    v18 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v24 & 4) == 0)
    {
LABEL_23:
      if ((v24 & 8) == 0)
      {
LABEL_25:
        v25.i64[0] = 0x200000002;
        v25.i64[1] = 0x200000002;
        v18 += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v24), xmmword_232A1F0), v25));
        goto LABEL_26;
      }

LABEL_24:
      v18 += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_25;
    }

LABEL_52:
    v37 = sub_1914C70(*(a1 + 136));
    v18 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v24 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_26:
  if ((v24 & 0x7F00) != 0)
  {
    v26 = v18 + 3;
    if ((v24 & 0x100) == 0)
    {
      v26 = v18;
    }

    if ((v24 & 0x200) != 0)
    {
      v26 += 3;
    }

    if ((v24 & 0x400) != 0)
    {
      v26 += 3;
    }

    if ((v24 & 0x800) != 0)
    {
      v26 += 3;
    }

    if ((v24 & 0x1000) != 0)
    {
      v27 = *(a1 + 156);
      v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v27 >= 0)
      {
        v29 = v28;
      }

      else
      {
        v29 = 12;
      }

      v26 += v29;
    }

    if ((v24 & 0x2000) != 0)
    {
      v30 = *(a1 + 160);
      v31 = ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v30 >= 0)
      {
        v32 = v31;
      }

      else
      {
        v32 = 12;
      }

      v26 += v32;
    }

    if ((v24 & 0x4000) != 0)
    {
      v18 = v26 + 3;
    }

    else
    {
      v18 = v26;
    }
  }

  v33 = *(a1 + 8);
  if (v33)
  {
    v38 = v33 & 0xFFFFFFFFFFFFFFFCLL;
    v39 = *((v33 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v39 < 0)
    {
      v39 = *(v38 + 16);
    }

    v18 += v39;
  }

  *(a1 + 44) = v18;
  return v18;
}

void sub_18C8E60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_19452F0((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1786CC4((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a2 + 112);
    v16 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_166E8BC((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 40);
  if (v19)
  {
    if (v19)
    {
      *(a1 + 40) |= 1u;
      v21 = *(a1 + 120);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v21 = sub_140457C(v23);
        *(a1 + 120) = v21;
      }

      if (*(a2 + 120))
      {
        v24 = *(a2 + 120);
      }

      else
      {
        v24 = &off_276F658;
      }

      sub_138F72C(v21, v24);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_51;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 40) |= 2u;
    v25 = *(a1 + 128);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_1404500(v27);
      *(a1 + 128) = v25;
    }

    if (*(a2 + 128))
    {
      v28 = *(a2 + 128);
    }

    else
    {
      v28 = &off_276F630;
    }

    sub_1336380(v25, v28);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_59;
    }

LABEL_51:
    *(a1 + 40) |= 4u;
    v29 = *(a1 + 136);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_191637C(v31);
      *(a1 + 136) = v29;
    }

    if (*(a2 + 136))
    {
      v32 = *(a2 + 136);
    }

    else
    {
      v32 = &off_278B7E0;
    }

    sub_1874EB4(v29, v32);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_60;
    }

LABEL_59:
    *(a1 + 144) = *(a2 + 144);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_61;
    }

LABEL_60:
    *(a1 + 148) = *(a2 + 148);
    if ((v19 & 0x20) == 0)
    {
LABEL_17:
      if ((v19 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_62;
    }

LABEL_61:
    *(a1 + 149) = *(a2 + 149);
    if ((v19 & 0x40) == 0)
    {
LABEL_18:
      if ((v19 & 0x80) == 0)
      {
LABEL_20:
        *(a1 + 40) |= v19;
        goto LABEL_21;
      }

LABEL_19:
      *(a1 + 151) = *(a2 + 151);
      goto LABEL_20;
    }

LABEL_62:
    *(a1 + 150) = *(a2 + 150);
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:
  if ((v19 & 0x7F00) == 0)
  {
    goto LABEL_31;
  }

  if ((v19 & 0x100) != 0)
  {
    *(a1 + 152) = *(a2 + 152);
    if ((v19 & 0x200) == 0)
    {
LABEL_24:
      if ((v19 & 0x400) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_66;
    }
  }

  else if ((v19 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  *(a1 + 153) = *(a2 + 153);
  if ((v19 & 0x400) == 0)
  {
LABEL_25:
    if ((v19 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(a1 + 154) = *(a2 + 154);
  if ((v19 & 0x800) == 0)
  {
LABEL_26:
    if ((v19 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(a1 + 155) = *(a2 + 155);
  if ((v19 & 0x1000) == 0)
  {
LABEL_27:
    if ((v19 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

LABEL_69:
    *(a1 + 160) = *(a2 + 160);
    if ((v19 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_68:
  *(a1 + 156) = *(a2 + 156);
  if ((v19 & 0x2000) != 0)
  {
    goto LABEL_69;
  }

LABEL_28:
  if ((v19 & 0x4000) != 0)
  {
LABEL_29:
    *(a1 + 164) = *(a2 + 164);
  }

LABEL_30:
  *(a1 + 40) |= v19;
LABEL_31:
  sub_225EA0C(a1 + 16, a2 + 16);
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18C91BC(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    result = sub_18C9220(a1 + 48);
    if (result)
    {
      v3 = *(a1 + 40);
      if (v3)
      {
        result = sub_13F70D0(*(a1 + 120));
        if (!result)
        {
          return result;
        }

        v3 = *(a1 + 40);
      }

      if ((v3 & 4) == 0)
      {
        return 1;
      }

      result = sub_1875124(*(a1 + 136));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_18C9220(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 32);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        v7 = sub_140441C(*(*(v4 + 40) + 8 * v5));
        v5 = v6;
        if ((v7 & 1) == 0)
        {
          return 0;
        }
      }
    }

    while (v3 >= 2);
  }

  return 1;
}

uint64_t sub_18C92BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_27193D8;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  *(a1 + 24) = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 16);
  }

  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_18C93F8(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2789F80)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1869B9C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18C94C4(uint64_t a1)
{
  sub_18C93F8(a1);

  operator delete();
}

unsigned __int8 *sub_18C94FC(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      result = sub_1869C8C(*(result + 4));
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
  {
    v1[40] = 0;
    *(v1 + 11) = 15;
  }

  v5 = v1[8];
  v4 = v1 + 8;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_18C95A4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v32, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v32 + 1);
    v8 = **v32;
    if (**v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v32 + 2);
      }
    }

    *v32 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_33;
      }

      v5 |= 8u;
      LODWORD(v23) = *v7;
      if ((v23 & 0x80000000) == 0)
      {
        v24 = v7 + 1;
LABEL_44:
        *v32 = v24;
        *(a1 + 44) = v23;
        goto LABEL_45;
      }

      v23 = (v7[1] << 7) + v23 - 128;
      if ((v7[1] & 0x80000000) == 0)
      {
        v24 = v7 + 2;
        goto LABEL_44;
      }

      v30 = sub_19587DC(v7, v23);
      *v32 = v30;
      *(a1 + 44) = v31;
      if (!v30)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_33;
      }

      v5 |= 4u;
      v18 = (v7 + 1);
      v17 = *v7;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v18 = (v7 + 2);
LABEL_25:
        *v32 = v18;
        *(a1 + 40) = v17 != 0;
        goto LABEL_45;
      }

      v28 = sub_19587DC(v7, v17);
      *v32 = v28;
      *(a1 + 40) = v29 != 0;
      if (!v28)
      {
        goto LABEL_54;
      }
    }

LABEL_45:
    if (sub_195ADC0(a3, v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_33;
    }

    *(a1 + 16) |= 1u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    v22 = sub_194DB04((a1 + 24), v21);
    v16 = sub_1958890(v22, *v32, a3);
LABEL_40:
    *v32 = v16;
    if (!v16)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  if (v11 == 2 && v8 == 18)
  {
    *(a1 + 16) |= 2u;
    v13 = *(a1 + 32);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_18FF354(v15);
      *(a1 + 32) = v13;
      v7 = *v32;
    }

    v16 = sub_2201670(a3, v13, v7);
    goto LABEL_40;
  }

LABEL_33:
  if (v8)
  {
    v25 = (v8 & 7) == 4;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    v26 = *(a1 + 8);
    if (v26)
    {
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v27 = sub_11F1920((a1 + 8));
      v7 = *v32;
    }

    v16 = sub_1952690(v8, v27, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  *v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_18C9848(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 18;
    v9 = *(v8 + 20);
    v4[1] = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, v4 + 1);
    }

    else
    {
      v10 = v4 + 2;
    }

    v4 = sub_1869F58(v8, v10, a3);
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 8) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_19;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 44);
  *v4 = 24;
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v4[1] = v11 | 0x80;
    v12 = v11 >> 7;
    v4[2] = v11 >> 7;
    v7 = v4 + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = v4[2];
      do
      {
        *(v7 - 1) = v13 | 0x80;
        v13 = v12 >> 7;
        *v7++ = v12 >> 7;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_19:
  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 40);
    *v7 = 32;
    v7[1] = v15;
    v7 += 2;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v7;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  v19 = *(v18 + 31);
  if (v19 < 0)
  {
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
  }

  else
  {
    v20 = (v18 + 8);
  }

  if (*a3 - v7 >= v19)
  {
    v21 = v19;
    memcpy(v7, v20, v19);
    v7 += v21;
    return v7;
  }

  return sub_1957130(a3, v20, v19, v7);
}

uint64_t sub_18C9A38(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = sub_186A16C(*(a1 + 32));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  result = v3 + ((v2 >> 1) & 2);
  if ((v2 & 8) != 0)
  {
    v9 = *(a1 + 44);
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 11;
    }

    result += v11;
  }

LABEL_15:
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    result += v14;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_18C9B58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 24), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_23;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 16) |= 2u;
    v9 = *(a1 + 32);
    if (!v9)
    {
      v10 = *(a1 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      v9 = sub_18FF354(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_2787BC0;
    }

    sub_186A25C(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        *(a1 + 16) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 44) = *(a2 + 44);
      goto LABEL_7;
    }

LABEL_23:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_18C9C78(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 32);
  if ((*(v1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E6614(*(v1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18C9CC4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2719458;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  *(a1 + 24) = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 16);
  }

  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_18C9E00(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2789FB0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1869B9C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18C9ECC(uint64_t a1)
{
  sub_18C9E00(a1);

  operator delete();
}

unsigned __int8 *sub_18C9F04(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      result = sub_1869C8C(*(result + 4));
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
  {
    v1[40] = 0;
    *(v1 + 11) = 15;
  }

  v5 = v1[8];
  v4 = v1 + 8;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_18C9FAC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v32, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v32 + 1);
    v8 = **v32;
    if (**v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v32 + 2);
      }
    }

    *v32 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_33;
      }

      v5 |= 8u;
      LODWORD(v23) = *v7;
      if ((v23 & 0x80000000) == 0)
      {
        v24 = v7 + 1;
LABEL_44:
        *v32 = v24;
        *(a1 + 44) = v23;
        goto LABEL_45;
      }

      v23 = (v7[1] << 7) + v23 - 128;
      if ((v7[1] & 0x80000000) == 0)
      {
        v24 = v7 + 2;
        goto LABEL_44;
      }

      v30 = sub_19587DC(v7, v23);
      *v32 = v30;
      *(a1 + 44) = v31;
      if (!v30)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_33;
      }

      v5 |= 4u;
      v18 = (v7 + 1);
      v17 = *v7;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v18 = (v7 + 2);
LABEL_25:
        *v32 = v18;
        *(a1 + 40) = v17 != 0;
        goto LABEL_45;
      }

      v28 = sub_19587DC(v7, v17);
      *v32 = v28;
      *(a1 + 40) = v29 != 0;
      if (!v28)
      {
        goto LABEL_54;
      }
    }

LABEL_45:
    if (sub_195ADC0(a3, v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_33;
    }

    *(a1 + 16) |= 1u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    v22 = sub_194DB04((a1 + 24), v21);
    v16 = sub_1958890(v22, *v32, a3);
LABEL_40:
    *v32 = v16;
    if (!v16)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  if (v11 == 2 && v8 == 18)
  {
    *(a1 + 16) |= 2u;
    v13 = *(a1 + 32);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_18FF354(v15);
      *(a1 + 32) = v13;
      v7 = *v32;
    }

    v16 = sub_2201670(a3, v13, v7);
    goto LABEL_40;
  }

LABEL_33:
  if (v8)
  {
    v25 = (v8 & 7) == 4;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    v26 = *(a1 + 8);
    if (v26)
    {
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v27 = sub_11F1920((a1 + 8));
      v7 = *v32;
    }

    v16 = sub_1952690(v8, v27, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  *v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_18CA250(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 18;
    v9 = *(v8 + 20);
    v4[1] = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, v4 + 1);
    }

    else
    {
      v10 = v4 + 2;
    }

    v4 = sub_1869F58(v8, v10, a3);
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 8) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_19;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 44);
  *v4 = 24;
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v4[1] = v11 | 0x80;
    v12 = v11 >> 7;
    v4[2] = v11 >> 7;
    v7 = v4 + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = v4[2];
      do
      {
        *(v7 - 1) = v13 | 0x80;
        v13 = v12 >> 7;
        *v7++ = v12 >> 7;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_19:
  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 40);
    *v7 = 32;
    v7[1] = v15;
    v7 += 2;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v7;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  v19 = *(v18 + 31);
  if (v19 < 0)
  {
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
  }

  else
  {
    v20 = (v18 + 8);
  }

  if (*a3 - v7 >= v19)
  {
    v21 = v19;
    memcpy(v7, v20, v19);
    v7 += v21;
    return v7;
  }

  return sub_1957130(a3, v20, v19, v7);
}

uint64_t sub_18CA440(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = sub_186A16C(*(a1 + 32));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  result = v3 + ((v2 >> 1) & 2);
  if ((v2 & 8) != 0)
  {
    v9 = *(a1 + 44);
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 11;
    }

    result += v11;
  }

LABEL_15:
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    result += v14;
  }

  *(a1 + 20) = result;
  return result;
}

BOOL sub_18CA560(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 32);
  if ((*(v1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E6614(*(v1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18CA5AC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_27194D8;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  *(a1 + 24) = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 16);
  }

  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_18CA6E8(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2789FE0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1869B9C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18CA7B4(uint64_t a1)
{
  sub_18CA6E8(a1);

  operator delete();
}

unsigned __int8 *sub_18CA7EC(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      result = sub_1869C8C(*(result + 4));
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
  {
    v1[40] = 0;
    *(v1 + 11) = 15;
  }

  v5 = v1[8];
  v4 = v1 + 8;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_18CA894(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v32, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v32 + 1);
    v8 = **v32;
    if (**v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v32 + 2);
      }
    }

    *v32 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_33;
      }

      v5 |= 8u;
      LODWORD(v23) = *v7;
      if ((v23 & 0x80000000) == 0)
      {
        v24 = v7 + 1;
LABEL_44:
        *v32 = v24;
        *(a1 + 44) = v23;
        goto LABEL_45;
      }

      v23 = (v7[1] << 7) + v23 - 128;
      if ((v7[1] & 0x80000000) == 0)
      {
        v24 = v7 + 2;
        goto LABEL_44;
      }

      v30 = sub_19587DC(v7, v23);
      *v32 = v30;
      *(a1 + 44) = v31;
      if (!v30)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_33;
      }

      v5 |= 4u;
      v18 = (v7 + 1);
      v17 = *v7;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v18 = (v7 + 2);
LABEL_25:
        *v32 = v18;
        *(a1 + 40) = v17 != 0;
        goto LABEL_45;
      }

      v28 = sub_19587DC(v7, v17);
      *v32 = v28;
      *(a1 + 40) = v29 != 0;
      if (!v28)
      {
        goto LABEL_54;
      }
    }

LABEL_45:
    if (sub_195ADC0(a3, v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_33;
    }

    *(a1 + 16) |= 1u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    v22 = sub_194DB04((a1 + 24), v21);
    v16 = sub_1958890(v22, *v32, a3);
LABEL_40:
    *v32 = v16;
    if (!v16)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  if (v11 == 2 && v8 == 18)
  {
    *(a1 + 16) |= 2u;
    v13 = *(a1 + 32);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_18FF354(v15);
      *(a1 + 32) = v13;
      v7 = *v32;
    }

    v16 = sub_2201670(a3, v13, v7);
    goto LABEL_40;
  }

LABEL_33:
  if (v8)
  {
    v25 = (v8 & 7) == 4;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    v26 = *(a1 + 8);
    if (v26)
    {
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v27 = sub_11F1920((a1 + 8));
      v7 = *v32;
    }

    v16 = sub_1952690(v8, v27, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  *v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_18CAB38(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 18;
    v9 = *(v8 + 20);
    v4[1] = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, v4 + 1);
    }

    else
    {
      v10 = v4 + 2;
    }

    v4 = sub_1869F58(v8, v10, a3);
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 8) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_19;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 44);
  *v4 = 24;
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v4[1] = v11 | 0x80;
    v12 = v11 >> 7;
    v4[2] = v11 >> 7;
    v7 = v4 + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = v4[2];
      do
      {
        *(v7 - 1) = v13 | 0x80;
        v13 = v12 >> 7;
        *v7++ = v12 >> 7;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_19:
  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 40);
    *v7 = 32;
    v7[1] = v15;
    v7 += 2;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v7;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  v19 = *(v18 + 31);
  if (v19 < 0)
  {
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
  }

  else
  {
    v20 = (v18 + 8);
  }

  if (*a3 - v7 >= v19)
  {
    v21 = v19;
    memcpy(v7, v20, v19);
    v7 += v21;
    return v7;
  }

  return sub_1957130(a3, v20, v19, v7);
}

uint64_t sub_18CAD28(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = sub_186A16C(*(a1 + 32));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  result = v3 + ((v2 >> 1) & 2);
  if ((v2 & 8) != 0)
  {
    v9 = *(a1 + 44);
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 11;
    }

    result += v11;
  }

LABEL_15:
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    result += v14;
  }

  *(a1 + 20) = result;
  return result;
}

BOOL sub_18CAE48(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 32);
  if ((*(v1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E6614(*(v1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18CAE94(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2719558;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t sub_18CAF98(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  if (a1 != &off_278A010 && *(a1 + 24))
  {
    sub_16E4E08();
    operator delete();
  }

  if (*(a1 + 8))
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18CB050(uint64_t a1)
{
  sub_18CAF98(a1);

  operator delete();
}

unsigned __int8 *sub_18CB088(unsigned __int8 *result)
{
  v1 = result;
  if (result[16])
  {
    result = sub_16E4E44(*(result + 3));
  }

  v3 = v1[8];
  v2 = v1 + 8;
  *(v2 + 12) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_18CB0E8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v30 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v30 + 1;
    v8 = *v30;
    if (*v30 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v30, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v30 + 2;
      }
    }

    v30 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 4u;
    v21 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_29:
      v30 = v21;
      *(a1 + 33) = v20 != 0;
      goto LABEL_36;
    }

    v28 = sub_19587DC(v7, v20);
    v30 = v28;
    *(a1 + 33) = v29 != 0;
    if (!v28)
    {
      goto LABEL_45;
    }

LABEL_36:
    if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_24:
      v30 = v18;
      *(a1 + 32) = v17 != 0;
      goto LABEL_36;
    }

    v26 = sub_19587DC(v7, v17);
    v30 = v26;
    *(a1 + 32) = v27 != 0;
    if (!v26)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  if (v11 == 1 && v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v23 = *(a1 + 24);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_16F5828(v25);
      *(a1 + 24) = v23;
      v7 = v30;
    }

    v16 = sub_21F4D60(a3, v23, v7);
LABEL_35:
    v30 = v16;
    if (!v16)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

LABEL_13:
  if (v8)
  {
    v13 = (v8 & 7) == 4;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v30;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_35;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_45:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_18CB344(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *v4 = 10;
    v8 = *(v7 + 44);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_16E5070(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 32);
  *v4 = 16;
  v4[1] = v10;
  v4 += 2;
  if ((v6 & 4) != 0)
  {
LABEL_14:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 33);
    *v4 = 24;
    v4[1] = v11;
    v4 += 2;
  }

LABEL_17:
  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v4;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *(v14 + 31);
  if (v15 < 0)
  {
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
  }

  else
  {
    v16 = (v14 + 8);
  }

  if (*a3 - v4 >= v15)
  {
    v17 = v15;
    memcpy(v4, v16, v15);
    v4 += v17;
    return v4;
  }

  return sub_1957130(a3, v16, v15, v4);
}

uint64_t sub_18CB4D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      v5 = sub_16E51F0(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    result = v3 + ((v2 >> 1) & 2) + (v2 & 2);
  }

  else
  {
    result = 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    result += v8;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_18CB57C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        v6 = sub_16F5828(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277E5E8;
      }

      sub_16E527C(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(a1 + 16) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(a1 + 33) = *(a2 + 33);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18CB664(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_18CB6A4(void *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = off_27195D8;
  v4 = *(a2 + 16);
  a1[2] = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4(a1 + 1, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    operator new();
  }

  a1[3] = 0;
  a1[4] = *(a2 + 32);
  return a1;
}

uint64_t sub_18CB7A8(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 8) & 1;
  if (a1 != &off_278A038)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_18CAF98(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18CB860(uint64_t a1)
{
  sub_18CB7A8(a1);

  operator delete();
}

unsigned __int8 *sub_18CB898(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_18CB088(*(result + 3));
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 4) = 0;
  }

  v4 = v1[8];
  v3 = v1 + 8;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_18CB900(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v28, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v28 + 1;
    v7 = *v28;
    if (*v28 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v28, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v28 + 2;
      }
    }

    v28 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 24)
      {
        v19 = v6 + 1;
        v20 = *v6;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }

        v21 = *v19;
        v22 = (v21 << 7) + v20;
        LODWORD(v20) = v22 - 128;
        if (v21 < 0)
        {
          v28 = sub_19587DC(v6, (v22 - 128));
          if (!v28)
          {
            return 0;
          }

          LODWORD(v20) = v26;
        }

        else
        {
          v19 = v6 + 2;
LABEL_32:
          v28 = v19;
        }

        if (sub_1393054(v20))
        {
          *(a1 + 16) |= 4u;
          *(a1 + 36) = v20;
        }

        else
        {
          sub_1313740();
        }

        continue;
      }

      goto LABEL_13;
    }

    if (v10 != 2)
    {
      if (v10 == 1 && v7 == 8)
      {
        v24 = v6 + 1;
        v23 = *v6;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_38;
        }

        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if (v25 < 0)
        {
          v28 = sub_19587DC(v6, v23);
          if (!v28)
          {
            return 0;
          }
        }

        else
        {
          v24 = v6 + 2;
LABEL_38:
          v28 = v24;
        }

        if (v23 > 3)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v23;
        }

        continue;
      }

LABEL_13:
      if (v7)
      {
        v12 = (v7 & 7) == 4;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return v28;
        }

        return 0;
      }

      v13 = *(a1 + 8);
      if (v13)
      {
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v14 = sub_11F1920((a1 + 8));
        v6 = v28;
      }

      v15 = sub_1952690(v7, v14, v6, a3);
      goto LABEL_26;
    }

    if (v7 != 18)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v16 = *(a1 + 24);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v16 = sub_190407C(v18);
      *(a1 + 24) = v16;
      v6 = v28;
    }

    v15 = sub_22548B4(a3, v16, v6);
LABEL_26:
    v28 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v28;
}

char *sub_18CBB58(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 24);
    *v6 = 18;
    v12 = *(v11 + 20);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_18CB344(v11, v13, a3);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 36);
    *v6 = 24;
    v6[1] = v15;
    if (v15 > 0x7F)
    {
      v6[1] = v15 | 0x80;
      v16 = v15 >> 7;
      v6[2] = v15 >> 7;
      v14 = v6 + 3;
      if (v15 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v14 - 1) = v6 | 0x80;
          v6 = (v16 >> 7);
          *v14++ = v16 >> 7;
          v17 = v16 >> 14;
          v16 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v14 = v6 + 2;
    }
  }

  else
  {
    v14 = v6;
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v14;
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  v21 = *(v20 + 31);
  if (v21 < 0)
  {
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
  }

  else
  {
    v22 = (v20 + 8);
  }

  if (*a3 - v14 >= v21)
  {
    v23 = v21;
    memcpy(v14, v22, v21);
    v14 += v23;
    return v14;
  }

  return sub_1957130(a3, v22, v21, v14);
}

uint64_t sub_18CBD6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    result = 0;
    goto LABEL_16;
  }

  if (v2)
  {
    v4 = sub_18CB4D8(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 32);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 36);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
  }

LABEL_16:
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_18CBE68(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        v6 = sub_190407C(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_278A010;
      }

      sub_18CB57C(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(a1 + 16) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(a1 + 36) = *(a2 + 36);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18CBF50(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 24);
  if ((*(v1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(v1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

double sub_18CBF9C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_2719658;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = &qword_278E990;
  *(a1 + 112) = &qword_278E990;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 182) = 0;
  *&result = 0x50000000FLL;
  *(a1 + 192) = 0x50000000FLL;
  return result;
}

uint64_t sub_18CC020(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2719658;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  v5 = *(a2 + 24);
  if (v5)
  {
    sub_1958E5C((a1 + 24), v5);
    v6 = *(a1 + 32);
    *(a1 + 24) += *(a2 + 24);
    memcpy(v6, *(a2 + 32), 4 * *(a2 + 24));
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = *(a2 + 40);
  if (v7)
  {
    sub_1958E5C((a1 + 40), v7);
    v8 = *(a1 + 48);
    *(a1 + 40) += *(a2 + 40);
    memcpy(v8, *(a2 + 48), 4 * *(a2 + 40));
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v9 = *(a2 + 56);
  if (v9)
  {
    sub_1958E5C((a1 + 56), v9);
    v10 = *(a1 + 64);
    *(a1 + 56) += *(a2 + 56);
    memcpy(v10, *(a2 + 64), 4 * *(a2 + 56));
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v11 = *(a2 + 72);
  if (v11)
  {
    sub_1958E5C((a1 + 72), v11);
    v12 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy(v12, *(a2 + 80), 4 * *(a2 + 72));
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v13 = *(a2 + 88);
  if (v13)
  {
    sub_1958E5C((a1 + 88), v13);
    v14 = *(a1 + 96);
    *(a1 + 88) += *(a2 + 88);
    memcpy(v14, *(a2 + 96), 4 * *(a2 + 88));
  }

  v15 = *(a2 + 8);
  if (v15)
  {
    sub_1957EF4(v4, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 104) = &qword_278E990;
  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 104), (*(a2 + 104) & 0xFFFFFFFFFFFFFFFELL), v17);
    v16 = *(a2 + 16);
  }

  *(a1 + 112) = &qword_278E990;
  if ((v16 & 2) != 0)
  {
    v18 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v18 = *v18;
    }

    sub_194EA1C((a1 + 112), (*(a2 + 112) & 0xFFFFFFFFFFFFFFFELL), v18);
    v16 = *(a2 + 16);
  }

  if ((v16 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 120) = 0;
  if ((v16 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 128) = 0;
  if ((v16 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 136) = 0;
  if ((v16 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 144) = 0;
  if ((v16 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 152) = 0;
  if ((v16 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 160) = 0;
  if ((v16 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 168) = 0;
  v19 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v19;
  return a1;
}

void *sub_18CC4C8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
    goto LABEL_5;
  }

  sub_18CC574(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 11));
  sub_1956ABC((a1 + 9));
  sub_1956ABC((a1 + 7));
  sub_1956ABC((a1 + 5));
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_18CC574(uint64_t a1)
{
  v3 = *(a1 + 104);
  v2 = (a1 + 104);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 112);
  if (*(a1 + 112) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_278A060)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      sub_1869B9C(v5);
      operator delete();
    }

    if (*(a1 + 128))
    {
      sub_140254C();
      operator delete();
    }

    if (*(a1 + 136))
    {
      sub_14468F0();
      operator delete();
    }

    v6 = *(a1 + 144);
    if (v6)
    {
      sub_139532C(v6);
      operator delete();
    }

    if (*(a1 + 152))
    {
      sub_140254C();
      operator delete();
    }

    v7 = *(a1 + 160);
    if (v7)
    {
      sub_138D654(v7);
      operator delete();
    }

    result = *(a1 + 168);
    if (result)
    {
      sub_18CB7A8(result);

      operator delete();
    }
  }

  return result;
}

void sub_18CC6C8(void *a1)
{
  sub_18CC4C8(a1);

  operator delete();
}

uint64_t sub_18CC700(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 56) = 0;
  *(result + 72) = 0;
  *(result + 88) = 0;
  v2 = *(result + 16);
  if (!v2)
  {
    goto LABEL_11;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_25:
    v6 = *(result + 112) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

  v5 = *(result + 104) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_29:
  result = sub_1869C8C(*(result + 120));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = sub_1402588(*(v1 + 128));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_32:
    result = sub_1395368(*(v1 + 144));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_31:
  result = sub_144692C(*(v1 + 136));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_33:
  result = sub_1402588(*(v1 + 152));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = sub_138D690(*(v1 + 160));
  }

LABEL_11:
  if ((v2 & 0x100) != 0)
  {
    result = sub_18CB898(*(v1 + 168));
  }

  if ((v2 & 0xFE00) != 0)
  {
    *(v1 + 179) = 0;
    *(v1 + 176) = 0;
  }

  if ((v2 & 0x3F0000) != 0)
  {
    *(v1 + 186) = 0;
    *(v1 + 183) = 0;
    *(v1 + 192) = 0x50000000FLL;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_18CC86C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v137 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v137, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v136 = (a1 + 8);
  while (2)
  {
    v7 = (*v137 + 1);
    v8 = **v137;
    if (**v137 < 0)
    {
      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if (v9 < 0)
      {
        v7 = sub_1958824(*v137, v10 - 128);
        v8 = v11;
      }

      else
      {
        v7 = (*v137 + 2);
      }
    }

    *v137 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_251;
        }

        *(a1 + 16) |= 1u;
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v14 = (a1 + 104);
        goto LABEL_32;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_251;
        }

        *(a1 + 16) |= 4u;
        v52 = *(a1 + 120);
        if (!v52)
        {
          v53 = (*v136 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v136)
          {
            v53 = *v53;
          }

          v52 = sub_18FF354(v53);
          *(a1 + 120) = v52;
          v7 = *v137;
        }

        v26 = sub_2201670(a3, v52, v7);
        goto LABEL_258;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_251;
        }

        v5 |= 0x100000u;
        LODWORD(v43) = *v7;
        if ((v43 & 0x80000000) == 0)
        {
          v44 = v7 + 1;
LABEL_210:
          *v137 = v44;
          *(a1 + 192) = v43;
          goto LABEL_259;
        }

        v43 = (v7[1] << 7) + v43 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v44 = v7 + 2;
          goto LABEL_210;
        }

        v119 = sub_19587DC(v7, v43);
        *v137 = v119;
        *(a1 + 192) = v120;
        if (!v119)
        {
          goto LABEL_265;
        }

        goto LABEL_259;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_251;
        }

        v5 |= 0x200u;
        v48 = (v7 + 1);
        v47 = *v7;
        if ((v47 & 0x8000000000000000) == 0)
        {
          goto LABEL_76;
        }

        v49 = *v48;
        v47 = (v49 << 7) + v47 - 128;
        if (v49 < 0)
        {
          v123 = sub_19587DC(v7, v47);
          *v137 = v123;
          *(a1 + 176) = v124 != 0;
          if (!v123)
          {
            goto LABEL_265;
          }
        }

        else
        {
          v48 = (v7 + 2);
LABEL_76:
          *v137 = v48;
          *(a1 + 176) = v47 != 0;
        }

        goto LABEL_259;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_251;
        }

        *(a1 + 16) |= 2u;
        v24 = *(a1 + 8);
        v13 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v13 = *v13;
        }

        v14 = (a1 + 112);
LABEL_32:
        v25 = sub_194DB04(v14, v13);
        v26 = sub_1958890(v25, *v137, a3);
        goto LABEL_258;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_251;
        }

        *(a1 + 16) |= 8u;
        v65 = *(a1 + 128);
        if (v65)
        {
          goto LABEL_141;
        }

        v66 = (*v136 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v136)
        {
          v66 = *v66;
        }

        v65 = sub_14050A4(v66);
        *(a1 + 128) = v65;
        goto LABEL_140;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_251;
        }

        v5 |= 0x400u;
        v77 = (v7 + 1);
        v76 = *v7;
        if ((v76 & 0x8000000000000000) == 0)
        {
          goto LABEL_146;
        }

        v78 = *v77;
        v76 = (v78 << 7) + v76 - 128;
        if (v78 < 0)
        {
          v125 = sub_19587DC(v7, v76);
          *v137 = v125;
          *(a1 + 177) = v126 != 0;
          if (!v125)
          {
            goto LABEL_265;
          }
        }

        else
        {
          v77 = (v7 + 2);
LABEL_146:
          *v137 = v77;
          *(a1 + 177) = v76 != 0;
        }

        goto LABEL_259;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_251;
        }

        *(a1 + 16) |= 0x10u;
        v50 = *(a1 + 136);
        if (!v50)
        {
          v51 = (*v136 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v136)
          {
            v51 = *v51;
          }

          v50 = sub_1447C28(v51);
          *(a1 + 136) = v50;
          v7 = *v137;
        }

        v26 = sub_2202E10(a3, v50, v7);
        goto LABEL_258;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_251;
        }

        v5 |= 0x800u;
        v85 = (v7 + 1);
        v84 = *v7;
        if ((v84 & 0x8000000000000000) == 0)
        {
          goto LABEL_162;
        }

        v86 = *v85;
        v84 = (v86 << 7) + v84 - 128;
        if (v86 < 0)
        {
          v129 = sub_19587DC(v7, v84);
          *v137 = v129;
          *(a1 + 178) = v130 != 0;
          if (!v129)
          {
            goto LABEL_265;
          }
        }

        else
        {
          v85 = (v7 + 2);
LABEL_162:
          *v137 = v85;
          *(a1 + 178) = v84 != 0;
        }

        goto LABEL_259;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_251;
        }

        v5 |= 0x1000u;
        v36 = (v7 + 1);
        v35 = *v7;
        if ((v35 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v37 = *v36;
        v35 = (v37 << 7) + v35 - 128;
        if (v37 < 0)
        {
          v115 = sub_19587DC(v7, v35);
          *v137 = v115;
          *(a1 + 179) = v116 != 0;
          if (!v115)
          {
            goto LABEL_265;
          }
        }

        else
        {
          v36 = (v7 + 2);
LABEL_54:
          *v137 = v36;
          *(a1 + 179) = v35 != 0;
        }

        goto LABEL_259;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_251;
        }

        *(a1 + 16) |= 0x20u;
        v82 = *(a1 + 144);
        if (!v82)
        {
          v83 = (*v136 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v136)
          {
            v83 = *v83;
          }

          v82 = sub_13AE3BC(v83);
          *(a1 + 144) = v82;
          v7 = *v137;
        }

        v26 = sub_2208CB8(a3, v82, v7);
        goto LABEL_258;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_251;
        }

        v5 |= 0x2000u;
        v22 = (v7 + 1);
        v21 = *v7;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_27;
        }

        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if (v23 < 0)
        {
          v113 = sub_19587DC(v7, v21);
          *v137 = v113;
          *(a1 + 180) = v114 != 0;
          if (!v113)
          {
            goto LABEL_265;
          }
        }

        else
        {
          v22 = (v7 + 2);
LABEL_27:
          *v137 = v22;
          *(a1 + 180) = v21 != 0;
        }

        goto LABEL_259;
      case 0xDu:
        if (v8 == 104)
        {
          v27 = (v7 - 1);
          while (1)
          {
            *v137 = v27 + 1;
            v28 = *(v27 + 1);
            v29 = (v27 + 2);
            if (v28 < 0)
            {
              v30 = *v29;
              v31 = (v30 << 7) + v28;
              LODWORD(v28) = v31 - 128;
              if (v30 < 0)
              {
                *v137 = sub_19587DC(v27 + 1, (v31 - 128));
                if (!*v137)
                {
                  goto LABEL_265;
                }

                LODWORD(v28) = v34;
                goto LABEL_39;
              }

              v29 = (v27 + 3);
            }

            *v137 = v29;
LABEL_39:
            if (v28 > 2)
            {
              sub_13B6734();
            }

            else
            {
              v32 = *(a1 + 24);
              if (v32 == *(a1 + 28))
              {
                v33 = v32 + 1;
                sub_1958E5C((a1 + 24), v32 + 1);
                *(*(a1 + 32) + 4 * v32) = v28;
              }

              else
              {
                *(*(a1 + 32) + 4 * v32) = v28;
                v33 = v32 + 1;
              }

              *(a1 + 24) = v33;
            }

            v27 = *v137;
            if (*a3 <= *v137 || **v137 != 104)
            {
              goto LABEL_259;
            }
          }
        }

        if (v8 != 106)
        {
          goto LABEL_251;
        }

        *&v138 = a1 + 24;
        *(&v138 + 1) = sub_1869924;
        v139 = a1 + 8;
        v133 = 13;
        goto LABEL_250;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_251;
        }

        *(a1 + 16) |= 0x40u;
        v65 = *(a1 + 152);
        if (v65)
        {
          goto LABEL_141;
        }

        v75 = (*v136 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v136)
        {
          v75 = *v75;
        }

        v65 = sub_14050A4(v75);
        *(a1 + 152) = v65;
LABEL_140:
        v7 = *v137;
LABEL_141:
        v26 = sub_2201B80(a3, v65, v7);
        goto LABEL_258;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_251;
        }

        v5 |= 0x4000u;
        v19 = (v7 + 1);
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_22;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          v111 = sub_19587DC(v7, v18);
          *v137 = v111;
          *(a1 + 181) = v112 != 0;
          if (!v111)
          {
            goto LABEL_265;
          }
        }

        else
        {
          v19 = (v7 + 2);
LABEL_22:
          *v137 = v19;
          *(a1 + 181) = v18 != 0;
        }

        goto LABEL_259;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_251;
        }

        v5 |= 0x200000u;
        LODWORD(v45) = *v7;
        if ((v45 & 0x80000000) == 0)
        {
          v46 = v7 + 1;
LABEL_213:
          *v137 = v46;
          *(a1 + 196) = v45;
          goto LABEL_259;
        }

        v45 = (v7[1] << 7) + v45 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v46 = v7 + 2;
          goto LABEL_213;
        }

        v121 = sub_19587DC(v7, v45);
        *v137 = v121;
        *(a1 + 196) = v122;
        if (!v121)
        {
          goto LABEL_265;
        }

        goto LABEL_259;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_251;
        }

        v5 |= 0x8000u;
        v16 = (v7 + 1);
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if (v17 < 0)
        {
          v109 = sub_19587DC(v7, v15);
          *v137 = v109;
          *(a1 + 182) = v110 != 0;
          if (!v109)
          {
            goto LABEL_265;
          }
        }

        else
        {
          v16 = (v7 + 2);
LABEL_17:
          *v137 = v16;
          *(a1 + 182) = v15 != 0;
        }

        goto LABEL_259;
      case 0x12u:
        if (v8 == 144)
        {
          v54 = (v7 - 2);
          while (1)
          {
            *v137 = v54 + 2;
            v55 = *(v54 + 2);
            v56 = (v54 + 3);
            if (v55 < 0)
            {
              v57 = *v56;
              v58 = (v57 << 7) + v55;
              LODWORD(v55) = v58 - 128;
              if (v57 < 0)
              {
                *v137 = sub_19587DC(v54 + 2, (v58 - 128));
                if (!*v137)
                {
                  goto LABEL_265;
                }

                LODWORD(v55) = v61;
                goto LABEL_95;
              }

              v56 = (v54 + 4);
            }

            *v137 = v56;
LABEL_95:
            if (v55 > 4)
            {
              sub_13ED138();
            }

            else
            {
              v59 = *(a1 + 40);
              if (v59 == *(a1 + 44))
              {
                v60 = v59 + 1;
                sub_1958E5C((a1 + 40), v59 + 1);
                *(*(a1 + 48) + 4 * v59) = v55;
              }

              else
              {
                *(*(a1 + 48) + 4 * v59) = v55;
                v60 = v59 + 1;
              }

              *(a1 + 40) = v60;
            }

            v54 = *v137;
            if (*a3 <= *v137 || **v137 != 400)
            {
              goto LABEL_259;
            }
          }
        }

        if (v8 != 146)
        {
          goto LABEL_251;
        }

        *&v138 = a1 + 40;
        *(&v138 + 1) = sub_18CD77C;
        v139 = a1 + 8;
        v133 = 18;
        goto LABEL_250;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_251;
        }

        v5 |= 0x10000u;
        v80 = (v7 + 1);
        v79 = *v7;
        if ((v79 & 0x8000000000000000) == 0)
        {
          goto LABEL_151;
        }

        v81 = *v80;
        v79 = (v81 << 7) + v79 - 128;
        if (v81 < 0)
        {
          v127 = sub_19587DC(v7, v79);
          *v137 = v127;
          *(a1 + 183) = v128 != 0;
          if (!v127)
          {
            goto LABEL_265;
          }
        }

        else
        {
          v80 = (v7 + 2);
LABEL_151:
          *v137 = v80;
          *(a1 + 183) = v79 != 0;
        }

        goto LABEL_259;
      case 0x14u:
        if (v8 == 160)
        {
          v89 = (v7 - 2);
          while (1)
          {
            *v137 = v89 + 2;
            v90 = *(v89 + 2);
            v91 = (v89 + 3);
            if (v90 < 0)
            {
              v92 = *v91;
              v93 = (v92 << 7) + v90;
              LODWORD(v90) = v93 - 128;
              if (v92 < 0)
              {
                *v137 = sub_19587DC(v89 + 2, (v93 - 128));
                if (!*v137)
                {
                  goto LABEL_265;
                }

                LODWORD(v90) = v96;
                goto LABEL_175;
              }

              v91 = (v89 + 4);
            }

            *v137 = v91;
LABEL_175:
            if (sub_1393078(v90))
            {
              v94 = *(a1 + 56);
              if (v94 == *(a1 + 60))
              {
                v95 = v94 + 1;
                sub_1958E5C((a1 + 56), v94 + 1);
                *(*(a1 + 64) + 4 * v94) = v90;
              }

              else
              {
                *(*(a1 + 64) + 4 * v94) = v90;
                v95 = v94 + 1;
              }

              *(a1 + 56) = v95;
            }

            else
            {
              sub_13B6824();
            }

            v89 = *v137;
            if (*a3 <= *v137 || **v137 != 416)
            {
              goto LABEL_259;
            }
          }
        }

        if (v8 != 162)
        {
          goto LABEL_251;
        }

        *&v138 = a1 + 56;
        *(&v138 + 1) = sub_1393078;
        v139 = a1 + 8;
        v133 = 20;
        goto LABEL_250;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_251;
        }

        v63 = (v7 + 1);
        v62 = *v7;
        if ((v62 & 0x8000000000000000) == 0)
        {
          goto LABEL_110;
        }

        v64 = *v63;
        v62 = (v64 << 7) + v62 - 128;
        if (v64 < 0)
        {
          *v137 = sub_19587DC(v7, v62);
          if (!*v137)
          {
            goto LABEL_265;
          }
        }

        else
        {
          v63 = (v7 + 2);
LABEL_110:
          *v137 = v63;
        }

        if (v62 > 0x24)
        {
          sub_1313640();
        }

        else
        {
          *(a1 + 16) |= 0x20000u;
          *(a1 + 184) = v62;
        }

        goto LABEL_259;
      case 0x16u:
        if (v8 == 176)
        {
          v67 = (v7 - 2);
          while (1)
          {
            *v137 = v67 + 2;
            v68 = *(v67 + 2);
            v69 = (v67 + 3);
            if (v68 < 0)
            {
              v70 = *v69;
              v71 = (v70 << 7) + v68;
              LODWORD(v68) = v71 - 128;
              if (v70 < 0)
              {
                *v137 = sub_19587DC(v67 + 2, (v71 - 128));
                if (!*v137)
                {
                  goto LABEL_265;
                }

                LODWORD(v68) = v74;
                goto LABEL_124;
              }

              v69 = (v67 + 4);
            }

            *v137 = v69;
LABEL_124:
            if (v68 > 4)
            {
              sub_1313600();
            }

            else
            {
              v72 = *(a1 + 72);
              if (v72 == *(a1 + 76))
              {
                v73 = v72 + 1;
                sub_1958E5C((a1 + 72), v72 + 1);
                *(*(a1 + 80) + 4 * v72) = v68;
              }

              else
              {
                *(*(a1 + 80) + 4 * v72) = v68;
                v73 = v72 + 1;
              }

              *(a1 + 72) = v73;
            }

            v67 = *v137;
            if (*a3 <= *v137 || **v137 != 432)
            {
              goto LABEL_259;
            }
          }
        }

        if (v8 != 178)
        {
          goto LABEL_251;
        }

        *&v138 = a1 + 72;
        *(&v138 + 1) = sub_186D42C;
        v139 = a1 + 8;
        v133 = 22;
        goto LABEL_250;
      case 0x17u:
        if (v8 != 186)
        {
          goto LABEL_251;
        }

        *(a1 + 16) |= 0x80u;
        v87 = *(a1 + 160);
        if (!v87)
        {
          v88 = (*v136 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v136)
          {
            v88 = *v88;
          }

          v87 = sub_1392AD4(v88);
          *(a1 + 160) = v87;
          v7 = *v137;
        }

        v26 = sub_22517C4(a3, v87, v7);
        goto LABEL_258;
      case 0x18u:
        if (v8 == 192)
        {
          v97 = (v7 - 2);
          while (1)
          {
            *v137 = v97 + 2;
            v98 = *(v97 + 2);
            v99 = (v97 + 3);
            if (v98 < 0)
            {
              v100 = *v99;
              v101 = (v100 << 7) + v98;
              LODWORD(v98) = v101 - 128;
              if (v100 < 0)
              {
                *v137 = sub_19587DC(v97 + 2, (v101 - 128));
                if (!*v137)
                {
                  goto LABEL_265;
                }

                LODWORD(v98) = v105;
                goto LABEL_192;
              }

              v99 = (v97 + 4);
            }

            *v137 = v99;
LABEL_192:
            v102 = (a1 + 88);
            if (v98 > 2)
            {
              sub_13136C0();
            }

            else
            {
              v103 = *(a1 + 88);
              if (v103 == *(a1 + 92))
              {
                v104 = v103 + 1;
                sub_1958E5C((a1 + 88), v103 + 1);
                v102 = (a1 + 88);
                *(*(a1 + 96) + 4 * v103) = v98;
              }

              else
              {
                *(*(a1 + 96) + 4 * v103) = v98;
                v104 = v103 + 1;
              }

              *v102 = v104;
            }

            v97 = *v137;
            if (*a3 <= *v137 || **v137 != 448)
            {
              goto LABEL_259;
            }
          }
        }

        if (v8 == 194)
        {
          *&v138 = a1 + 88;
          *(&v138 + 1) = sub_1869A54;
          v139 = a1 + 8;
          v133 = 24;
LABEL_250:
          v140 = v133;
          v26 = sub_1216588(a3, v7, &v138);
LABEL_258:
          *v137 = v26;
          if (!v26)
          {
            goto LABEL_265;
          }

LABEL_259:
          if (sub_195ADC0(a3, v137, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_251:
        if (v8)
        {
          v134 = (v8 & 7) == 4;
        }

        else
        {
          v134 = 1;
        }

        if (!v134)
        {
          if (*v136)
          {
            v135 = (*v136 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v135 = sub_11F1920(v136);
            v7 = *v137;
          }

          v26 = sub_1952690(v8, v135, v7, a3);
          goto LABEL_258;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_265:
          *v137 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v137;
      case 0x19u:
        if (v8 != 202)
        {
          goto LABEL_251;
        }

        *(a1 + 16) |= 0x100u;
        v41 = *(a1 + 168);
        if (!v41)
        {
          v42 = (*v136 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v136)
          {
            v42 = *v42;
          }

          v41 = sub_19040F8(v42);
          *(a1 + 168) = v41;
          v7 = *v137;
        }

        v26 = sub_2254944(a3, v41, v7);
        goto LABEL_258;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_251;
        }

        v5 |= 0x40000u;
        v39 = (v7 + 1);
        v38 = *v7;
        if ((v38 & 0x8000000000000000) == 0)
        {
          goto LABEL_59;
        }

        v40 = *v39;
        v38 = (v40 << 7) + v38 - 128;
        if (v40 < 0)
        {
          v117 = sub_19587DC(v7, v38);
          *v137 = v117;
          *(a1 + 188) = v118 != 0;
          if (!v117)
          {
            goto LABEL_265;
          }
        }

        else
        {
          v39 = (v7 + 2);
LABEL_59:
          *v137 = v39;
          *(a1 + 188) = v38 != 0;
        }

        goto LABEL_259;
      case 0x1Bu:
        if (v8 != 216)
        {
          goto LABEL_251;
        }

        v5 |= 0x80000u;
        v107 = (v7 + 1);
        v106 = *v7;
        if ((v106 & 0x8000000000000000) == 0)
        {
          goto LABEL_207;
        }

        v108 = *v107;
        v106 = (v108 << 7) + v106 - 128;
        if (v108 < 0)
        {
          v131 = sub_19587DC(v7, v106);
          *v137 = v131;
          *(a1 + 189) = v132 != 0;
          if (!v131)
          {
            goto LABEL_265;
          }
        }

        else
        {
          v107 = (v7 + 2);
LABEL_207:
          *v137 = v107;
          *(a1 + 189) = v106 != 0;
        }

        goto LABEL_259;
      default:
        goto LABEL_251;
    }
  }
}

char *sub_18CD788(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 120);
    *v4 = 18;
    v9 = *(v8 + 20);
    v4[1] = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, v4 + 1);
    }

    else
    {
      v10 = v4 + 2;
    }

    v4 = sub_1869F58(v8, v10, a3);
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, a2);
  if ((v6 & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 0x100000) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_19;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 192);
  *v4 = 24;
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v4[1] = v11 | 0x80;
    v12 = v11 >> 7;
    v4[2] = v11 >> 7;
    v7 = v4 + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        v4 = (v12 >> 7);
        *v7++ = v12 >> 7;
        v13 = v12 >> 14;
        v12 >>= 7;
      }

      while (v13);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_19:
  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v14 = *(a1 + 176);
    *v7 = 32;
    v7[1] = v14;
    v7 += 2;
    if ((v6 & 2) == 0)
    {
LABEL_21:
      if ((v6 & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_21;
  }

  v7 = sub_128AEEC(a3, 5, *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL, v7);
  if ((v6 & 8) == 0)
  {
LABEL_22:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_33:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v15 = *(a1 + 128);
  *v7 = 50;
  v16 = *(v15 + 44);
  v7[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, v7 + 1);
  }

  else
  {
    v17 = v7 + 2;
  }

  v7 = sub_1403020(v15, v17, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_23:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_42;
  }

LABEL_39:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v18 = *(a1 + 177);
  *v7 = 56;
  v7[1] = v18;
  v7 += 2;
  if ((v6 & 0x10) == 0)
  {
LABEL_24:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

LABEL_42:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v19 = *(a1 + 136);
  *v7 = 66;
  v20 = *(v19 + 44);
  v7[1] = v20;
  if (v20 > 0x7F)
  {
    v21 = sub_19575D0(v20, v7 + 1);
  }

  else
  {
    v21 = v7 + 2;
  }

  v7 = sub_14470C4(v19, v21, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_48:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v22 = *(a1 + 178);
  *v7 = 72;
  v7[1] = v22;
  v7 += 2;
  if ((v6 & 0x1000) == 0)
  {
LABEL_26:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_54;
  }

LABEL_51:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v23 = *(a1 + 179);
  *v7 = 80;
  v7[1] = v23;
  v7 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_27:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

LABEL_54:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v24 = *(a1 + 144);
  *v7 = 90;
  v25 = *(v24 + 20);
  v7[1] = v25;
  if (v25 > 0x7F)
  {
    v26 = sub_19575D0(v25, v7 + 1);
  }

  else
  {
    v26 = v7 + 2;
  }

  v7 = sub_13955E4(v24, v26, a3);
  if ((v6 & 0x2000) != 0)
  {
LABEL_60:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v27 = *(a1 + 180);
    *v7 = 96;
    v7[1] = v27;
    v7 += 2;
  }

LABEL_63:
  v28 = *(a1 + 24);
  if (v28 < 1)
  {
    v31 = v7;
  }

  else
  {
    for (i = 0; i != v28; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v30 = *(*(a1 + 32) + 4 * i);
      *v7 = 104;
      v7[1] = v30;
      if (v30 > 0x7F)
      {
        v7[1] = v30 | 0x80;
        v32 = v30 >> 7;
        v7[2] = v30 >> 7;
        v31 = v7 + 3;
        if (v30 >= 0x4000)
        {
          LOBYTE(v33) = v7[2];
          do
          {
            *(v31 - 1) = v33 | 0x80;
            v33 = v32 >> 7;
            *v31++ = v32 >> 7;
            v34 = v32 >> 14;
            v32 >>= 7;
          }

          while (v34);
        }
      }

      else
      {
        v31 = v7 + 2;
      }

      v7 = v31;
    }
  }

  if ((v6 & 0x40) == 0)
  {
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_77;
    }

LABEL_85:
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v39 = *(a1 + 181);
    *v31 = 120;
    v31[1] = v39;
    v31 += 2;
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_88;
  }

  if (*a3 <= v31)
  {
    v31 = sub_225EB68(a3, v31);
  }

  v36 = *(a1 + 152);
  *v31 = 114;
  v37 = *(v36 + 44);
  v31[1] = v37;
  if (v37 > 0x7F)
  {
    v38 = sub_19575D0(v37, v31 + 1);
  }

  else
  {
    v38 = v31 + 2;
  }

  v31 = sub_1403020(v36, v38, a3);
  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_85;
  }

LABEL_77:
  if ((v6 & 0x200000) == 0)
  {
LABEL_78:
    v35 = v31;
    goto LABEL_95;
  }

LABEL_88:
  if (*a3 <= v31)
  {
    v31 = sub_225EB68(a3, v31);
  }

  v40 = *(a1 + 196);
  *v31 = 384;
  v31[2] = v40;
  if (v40 > 0x7F)
  {
    v31[2] = v40 | 0x80;
    v41 = v40 >> 7;
    v31[3] = v40 >> 7;
    v35 = v31 + 4;
    if (v40 >= 0x4000)
    {
      LOBYTE(v31) = v31[3];
      do
      {
        *(v35 - 1) = v31 | 0x80;
        v31 = (v41 >> 7);
        *v35++ = v41 >> 7;
        v42 = v41 >> 14;
        v41 >>= 7;
      }

      while (v42);
    }
  }

  else
  {
    v35 = v31 + 3;
  }

LABEL_95:
  if ((v6 & 0x8000) != 0)
  {
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v43 = *(a1 + 182);
    *v35 = 392;
    v35[2] = v43;
    v35 += 3;
  }

  v44 = *(a1 + 40);
  if (v44 < 1)
  {
    v47 = v35;
  }

  else
  {
    for (j = 0; j != v44; ++j)
    {
      if (*a3 <= v35)
      {
        v35 = sub_225EB68(a3, v35);
      }

      v46 = *(*(a1 + 48) + 4 * j);
      *v35 = 400;
      v35[2] = v46;
      if (v46 > 0x7F)
      {
        v35[2] = v46 | 0x80;
        v48 = v46 >> 7;
        v35[3] = v46 >> 7;
        v47 = v35 + 4;
        if (v46 >= 0x4000)
        {
          LOBYTE(v35) = v35[3];
          do
          {
            *(v47 - 1) = v35 | 0x80;
            v35 = (v48 >> 7);
            *v47++ = v48 >> 7;
            v49 = v48 >> 14;
            v48 >>= 7;
          }

          while (v49);
        }
      }

      else
      {
        v47 = v35 + 3;
      }

      v35 = v47;
    }
  }

  if ((v6 & 0x10000) != 0)
  {
    if (*a3 <= v47)
    {
      v47 = sub_225EB68(a3, v47);
    }

    v50 = *(a1 + 183);
    *v47 = 408;
    v47[2] = v50;
    v47 += 3;
  }

  v51 = *(a1 + 56);
  if (v51 < 1)
  {
    v54 = v47;
  }

  else
  {
    for (k = 0; k != v51; ++k)
    {
      if (*a3 <= v47)
      {
        v47 = sub_225EB68(a3, v47);
      }

      v53 = *(*(a1 + 64) + 4 * k);
      *v47 = 416;
      v47[2] = v53;
      if (v53 > 0x7F)
      {
        v47[2] = v53 | 0x80;
        v55 = v53 >> 7;
        v47[3] = v53 >> 7;
        v54 = v47 + 4;
        if (v53 >= 0x4000)
        {
          LOBYTE(v56) = v47[3];
          do
          {
            *(v54 - 1) = v56 | 0x80;
            v56 = v55 >> 7;
            *v54++ = v55 >> 7;
            v57 = v55 >> 14;
            v55 >>= 7;
          }

          while (v57);
        }
      }

      else
      {
        v54 = v47 + 3;
      }

      v47 = v54;
    }
  }

  if ((v6 & 0x20000) != 0)
  {
    if (*a3 <= v54)
    {
      v54 = sub_225EB68(a3, v54);
    }

    v59 = *(a1 + 184);
    *v54 = 424;
    v54[2] = v59;
    if (v59 > 0x7F)
    {
      v54[2] = v59 | 0x80;
      v60 = v59 >> 7;
      v54[3] = v59 >> 7;
      v58 = v54 + 4;
      if (v59 >= 0x4000)
      {
        LOBYTE(v54) = v54[3];
        do
        {
          *(v58 - 1) = v54 | 0x80;
          v54 = (v60 >> 7);
          *v58++ = v60 >> 7;
          v61 = v60 >> 14;
          v60 >>= 7;
        }

        while (v61);
      }
    }

    else
    {
      v58 = v54 + 3;
    }
  }

  else
  {
    v58 = v54;
  }

  v62 = *(a1 + 72);
  if (v62 < 1)
  {
    v65 = v58;
  }

  else
  {
    for (m = 0; m != v62; ++m)
    {
      if (*a3 <= v58)
      {
        v58 = sub_225EB68(a3, v58);
      }

      v64 = *(*(a1 + 80) + 4 * m);
      *v58 = 432;
      v58[2] = v64;
      if (v64 > 0x7F)
      {
        v58[2] = v64 | 0x80;
        v66 = v64 >> 7;
        v58[3] = v64 >> 7;
        v65 = v58 + 4;
        if (v64 >= 0x4000)
        {
          LOBYTE(v58) = v58[3];
          do
          {
            *(v65 - 1) = v58 | 0x80;
            v58 = (v66 >> 7);
            *v65++ = v66 >> 7;
            v67 = v66 >> 14;
            v66 >>= 7;
          }

          while (v67);
        }
      }

      else
      {
        v65 = v58 + 3;
      }

      v58 = v65;
    }
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v65)
    {
      v65 = sub_225EB68(a3, v65);
    }

    v68 = *(a1 + 160);
    *v65 = 442;
    v69 = *(v68 + 80);
    v65[2] = v69;
    if (v69 > 0x7F)
    {
      v70 = sub_19575D0(v69, v65 + 2);
    }

    else
    {
      v70 = v65 + 3;
    }

    v65 = sub_138DA8C(v68, v70, a3);
  }

  v71 = *(a1 + 88);
  if (v71 < 1)
  {
    v74 = v65;
  }

  else
  {
    for (n = 0; n != v71; ++n)
    {
      if (*a3 <= v65)
      {
        v65 = sub_225EB68(a3, v65);
      }

      v73 = *(*(a1 + 96) + 4 * n);
      *v65 = 448;
      v65[2] = v73;
      if (v73 > 0x7F)
      {
        v65[2] = v73 | 0x80;
        v75 = v73 >> 7;
        v65[3] = v73 >> 7;
        v74 = v65 + 4;
        if (v73 >= 0x4000)
        {
          LOBYTE(v65) = v65[3];
          do
          {
            *(v74 - 1) = v65 | 0x80;
            v65 = (v75 >> 7);
            *v74++ = v75 >> 7;
            v76 = v75 >> 14;
            v75 >>= 7;
          }

          while (v76);
        }
      }

      else
      {
        v74 = v65 + 3;
      }

      v65 = v74;
    }
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v74)
    {
      v74 = sub_225EB68(a3, v74);
    }

    v77 = *(a1 + 168);
    *v74 = 458;
    v78 = *(v77 + 20);
    v74[2] = v78;
    if (v78 > 0x7F)
    {
      v79 = sub_19575D0(v78, v74 + 2);
    }

    else
    {
      v79 = v74 + 3;
    }

    v74 = sub_18CBB58(v77, v79, a3);
    if ((v6 & 0x40000) == 0)
    {
LABEL_169:
      if ((v6 & 0x80000) == 0)
      {
        goto LABEL_183;
      }

      goto LABEL_180;
    }
  }

  else if ((v6 & 0x40000) == 0)
  {
    goto LABEL_169;
  }

  if (*a3 <= v74)
  {
    v74 = sub_225EB68(a3, v74);
  }

  v80 = *(a1 + 188);
  *v74 = 464;
  v74[2] = v80;
  v74 += 3;
  if ((v6 & 0x80000) != 0)
  {
LABEL_180:
    if (*a3 <= v74)
    {
      v74 = sub_225EB68(a3, v74);
    }

    v81 = *(a1 + 189);
    *v74 = 472;
    v74[2] = v81;
    v74 += 3;
  }

LABEL_183:
  v82 = *(a1 + 8);
  if ((v82 & 1) == 0)
  {
    return v74;
  }

  v84 = v82 & 0xFFFFFFFFFFFFFFFCLL;
  v85 = *(v84 + 31);
  if (v85 < 0)
  {
    v86 = *(v84 + 8);
    v85 = *(v84 + 16);
  }

  else
  {
    v86 = (v84 + 8);
  }

  if ((*a3 - v74) >= v85)
  {
    v87 = v85;
    memcpy(v74, v86, v85);
    v74 += v87;
    return v74;
  }

  return sub_1957130(a3, v86, v85, v74);
}

uint64_t sub_18CE288(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 4 * v4);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v3 += v6;
      ++v4;
    }

    while (v2 != v4);
  }

  else
  {
    v3 = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(*(a1 + 48) + 4 * v8);
      if (v10 < 0)
      {
        v11 = 10;
      }

      else
      {
        v11 = (9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6;
      }

      v9 += v11;
      ++v8;
    }

    while (v7 != v8);
  }

  else
  {
    v9 = 0;
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(*(a1 + 64) + 4 * v13);
      if (v15 < 0)
      {
        v16 = 10;
      }

      else
      {
        v16 = (9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6;
      }

      v14 += v16;
      ++v13;
    }

    while (v12 != v13);
  }

  else
  {
    v14 = 0;
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(*(a1 + 80) + 4 * v18);
      if (v20 < 0)
      {
        v21 = 10;
      }

      else
      {
        v21 = (9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6;
      }

      v19 += v21;
      ++v18;
    }

    while (v17 != v18);
  }

  else
  {
    v19 = 0;
  }

  v22 = *(a1 + 88);
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = *(*(a1 + 96) + 4 * v23);
      if (v25 < 0)
      {
        v26 = 10;
      }

      else
      {
        v26 = (9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6;
      }

      v24 += v26;
      ++v23;
    }

    while (v22 != v23);
  }

  else
  {
    v24 = 0;
  }

  v27 = v3 + v2 + v9 + v14 + v19 + 2 * (v12 + v7 + v17 + v22) + v24;
  v28 = *(a1 + 16);
  if (!v28)
  {
    goto LABEL_51;
  }

  if (v28)
  {
    v45 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    v46 = *(v45 + 23);
    v47 = *(v45 + 8);
    if ((v46 & 0x80u) == 0)
    {
      v47 = v46;
    }

    v27 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v28 & 2) == 0)
    {
LABEL_44:
      if ((v28 & 4) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_88;
    }
  }

  else if ((v28 & 2) == 0)
  {
    goto LABEL_44;
  }

  v48 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
  v49 = *(v48 + 23);
  v50 = *(v48 + 8);
  if ((v49 & 0x80u) == 0)
  {
    v50 = v49;
  }

  v27 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 4) == 0)
  {
LABEL_45:
    if ((v28 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_89;
  }

LABEL_88:
  v51 = sub_186A16C(*(a1 + 120));
  v27 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 8) == 0)
  {
LABEL_46:
    if ((v28 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_90;
  }

LABEL_89:
  v52 = sub_1403980(*(a1 + 128));
  v27 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 0x10) == 0)
  {
LABEL_47:
    if ((v28 & 0x20) == 0)
    {
      goto LABEL_48;
    }

LABEL_91:
    v54 = sub_1395750(*(a1 + 144));
    v27 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v28 & 0x40) == 0)
    {
LABEL_49:
      if ((v28 & 0x80) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    goto LABEL_92;
  }

LABEL_90:
  v53 = sub_1447824(*(a1 + 136));
  v27 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 0x20) != 0)
  {
    goto LABEL_91;
  }

LABEL_48:
  if ((v28 & 0x40) == 0)
  {
    goto LABEL_49;
  }

LABEL_92:
  v55 = sub_1403980(*(a1 + 152));
  v27 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 0x80) != 0)
  {
LABEL_50:
    v29 = sub_138DD08(*(a1 + 160));
    v27 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_51:
  if ((v28 & 0xFF00) != 0)
  {
    if ((v28 & 0x100) != 0)
    {
      v30 = sub_18CBD6C(*(a1 + 168));
      v27 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v31.i64[0] = 0x200000002;
    v31.i64[1] = 0x200000002;
    v32 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v28), xmmword_23342A0), v31));
    if ((v28 & 0x8000) != 0)
    {
      v27 += v32 + ((v28 >> 12) & 2) + ((v28 >> 13) & 2) + 3;
    }

    else
    {
      v27 += v32 + ((v28 >> 12) & 2) + ((v28 >> 13) & 2);
    }
  }

  if ((v28 & 0x3F0000) != 0)
  {
    v33 = v27 + 3;
    if ((v28 & 0x10000) == 0)
    {
      v33 = v27;
    }

    if ((v28 & 0x20000) != 0)
    {
      v34 = *(a1 + 184);
      v35 = ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v34 >= 0)
      {
        v36 = v35;
      }

      else
      {
        v36 = 12;
      }

      v33 += v36;
    }

    if ((v28 & 0x40000) != 0)
    {
      v33 += 3;
    }

    if ((v28 & 0x80000) != 0)
    {
      v27 = v33 + 3;
    }

    else
    {
      v27 = v33;
    }

    if ((v28 & 0x100000) != 0)
    {
      v37 = *(a1 + 192);
      v38 = ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v37 >= 0)
      {
        v39 = v38;
      }

      else
      {
        v39 = 11;
      }

      v27 += v39;
    }

    if ((v28 & 0x200000) != 0)
    {
      v40 = *(a1 + 196);
      v41 = ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v40 >= 0)
      {
        v42 = v41;
      }

      else
      {
        v42 = 12;
      }

      v27 += v42;
    }
  }

  v43 = *(a1 + 8);
  if (v43)
  {
    v56 = v43 & 0xFFFFFFFFFFFFFFFCLL;
    v57 = *((v43 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v57 < 0)
    {
      v57 = *(v56 + 16);
    }

    v27 += v57;
  }

  *(a1 + 20) = v27;
  return v27;
}

void sub_18CE7C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1958E5C((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 4 * v6), *(a2 + 32), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(a1 + 40);
    sub_1958E5C((a1 + 40), v9 + v8);
    v10 = *(a1 + 48);
    *(a1 + 40) += *(a2 + 40);
    memcpy((v10 + 4 * v9), *(a2 + 48), 4 * *(a2 + 40));
  }

  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = *(a1 + 56);
    sub_1958E5C((a1 + 56), v12 + v11);
    v13 = *(a1 + 64);
    *(a1 + 56) += *(a2 + 56);
    memcpy((v13 + 4 * v12), *(a2 + 64), 4 * *(a2 + 56));
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a1 + 72);
    sub_1958E5C((a1 + 72), v15 + v14);
    v16 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy((v16 + 4 * v15), *(a2 + 80), 4 * *(a2 + 72));
  }

  v17 = *(a2 + 88);
  if (v17)
  {
    v18 = *(a1 + 88);
    sub_1958E5C((a1 + 88), v18 + v17);
    v19 = *(a1 + 96);
    *(a1 + 88) += *(a2 + 88);
    memcpy((v19 + 4 * v18), *(a2 + 96), 4 * *(a2 + 88));
  }

  v20 = *(a2 + 16);
  if (!v20)
  {
    goto LABEL_76;
  }

  if (v20)
  {
    v21 = *(a2 + 104);
    *(a1 + 16) |= 1u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    sub_194EA1C((a1 + 104), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
    if ((v20 & 2) == 0)
    {
LABEL_14:
      if ((v20 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }
  }

  else if ((v20 & 2) == 0)
  {
    goto LABEL_14;
  }

  v24 = *(a2 + 112);
  *(a1 + 16) |= 2u;
  v25 = *(a1 + 8);
  v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
  if (v25)
  {
    v26 = *v26;
  }

  sub_194EA1C((a1 + 112), (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
  if ((v20 & 4) != 0)
  {
LABEL_22:
    *(a1 + 16) |= 4u;
    v27 = *(a1 + 120);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_18FF354(v29);
      *(a1 + 120) = v27;
    }

    if (*(a2 + 120))
    {
      v30 = *(a2 + 120);
    }

    else
    {
      v30 = &off_2787BC0;
    }

    sub_186A25C(v27, v30);
  }

LABEL_30:
  if ((v20 & 8) != 0)
  {
    *(a1 + 16) |= 8u;
    v31 = *(a1 + 128);
    if (!v31)
    {
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v31 = sub_14050A4(v33);
      *(a1 + 128) = v31;
    }

    if (*(a2 + 128))
    {
      v34 = *(a2 + 128);
    }

    else
    {
      v34 = &off_276FAB8;
    }

    sub_1403E5C(v31, v34);
    if ((v20 & 0x10) == 0)
    {
LABEL_32:
      if ((v20 & 0x20) == 0)
      {
        goto LABEL_33;
      }

LABEL_52:
      *(a1 + 16) |= 0x20u;
      v39 = *(a1 + 144);
      if (!v39)
      {
        v40 = *(a1 + 8);
        v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        if (v40)
        {
          v41 = *v41;
        }

        v39 = sub_13AE3BC(v41);
        *(a1 + 144) = v39;
      }

      if (*(a2 + 144))
      {
        v42 = *(a2 + 144);
      }

      else
      {
        v42 = &off_276D878;
      }

      sub_128E5DC(v39, v42);
      if ((v20 & 0x40) == 0)
      {
LABEL_34:
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_76;
        }

        goto LABEL_68;
      }

      goto LABEL_60;
    }
  }

  else if ((v20 & 0x10) == 0)
  {
    goto LABEL_32;
  }

  *(a1 + 16) |= 0x10u;
  v35 = *(a1 + 136);
  if (!v35)
  {
    v36 = *(a1 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    v35 = sub_1447C28(v37);
    *(a1 + 136) = v35;
  }

  if (*(a2 + 136))
  {
    v38 = *(a2 + 136);
  }

  else
  {
    v38 = &off_2771340;
  }

  sub_1447A58(v35, v38);
  if ((v20 & 0x20) != 0)
  {
    goto LABEL_52;
  }

LABEL_33:
  if ((v20 & 0x40) == 0)
  {
    goto LABEL_34;
  }

LABEL_60:
  *(a1 + 16) |= 0x40u;
  v43 = *(a1 + 152);
  if (!v43)
  {
    v44 = *(a1 + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    v43 = sub_14050A4(v45);
    *(a1 + 152) = v43;
  }

  if (*(a2 + 152))
  {
    v46 = *(a2 + 152);
  }

  else
  {
    v46 = &off_276FAB8;
  }

  sub_1403E5C(v43, v46);
  if ((v20 & 0x80) != 0)
  {
LABEL_68:
    *(a1 + 16) |= 0x80u;
    v47 = *(a1 + 160);
    if (!v47)
    {
      v48 = *(a1 + 8);
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
      if (v48)
      {
        v49 = *v49;
      }

      v47 = sub_1392AD4(v49);
      *(a1 + 160) = v47;
    }

    if (*(a2 + 160))
    {
      v50 = *(a2 + 160);
    }

    else
    {
      v50 = &off_276D5B8;
    }

    sub_138DE18(v47, v50);
  }

LABEL_76:
  if ((v20 & 0xFF00) == 0)
  {
    goto LABEL_87;
  }

  if ((v20 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v52 = *(a1 + 168);
    if (!v52)
    {
      v53 = *(a1 + 8);
      v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
      if (v53)
      {
        v54 = *v54;
      }

      v52 = sub_19040F8(v54);
      *(a1 + 168) = v52;
    }

    if (*(a2 + 168))
    {
      v55 = *(a2 + 168);
    }

    else
    {
      v55 = &off_278A038;
    }

    sub_18CBE68(v52, v55);
    if ((v20 & 0x200) == 0)
    {
LABEL_79:
      if ((v20 & 0x400) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_109;
    }
  }

  else if ((v20 & 0x200) == 0)
  {
    goto LABEL_79;
  }

  *(a1 + 176) = *(a2 + 176);
  if ((v20 & 0x400) == 0)
  {
LABEL_80:
    if ((v20 & 0x800) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(a1 + 177) = *(a2 + 177);
  if ((v20 & 0x800) == 0)
  {
LABEL_81:
    if ((v20 & 0x1000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(a1 + 178) = *(a2 + 178);
  if ((v20 & 0x1000) == 0)
  {
LABEL_82:
    if ((v20 & 0x2000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_112;
  }

LABEL_111:
  *(a1 + 179) = *(a2 + 179);
  if ((v20 & 0x2000) == 0)
  {
LABEL_83:
    if ((v20 & 0x4000) == 0)
    {
      goto LABEL_84;
    }

LABEL_113:
    *(a1 + 181) = *(a2 + 181);
    if ((v20 & 0x8000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_112:
  *(a1 + 180) = *(a2 + 180);
  if ((v20 & 0x4000) != 0)
  {
    goto LABEL_113;
  }

LABEL_84:
  if ((v20 & 0x8000) != 0)
  {
LABEL_85:
    *(a1 + 182) = *(a2 + 182);
  }

LABEL_86:
  *(a1 + 16) |= v20;
LABEL_87:
  if ((v20 & 0x3F0000) == 0)
  {
    goto LABEL_96;
  }

  if ((v20 & 0x10000) != 0)
  {
    *(a1 + 183) = *(a2 + 183);
    if ((v20 & 0x20000) == 0)
    {
LABEL_90:
      if ((v20 & 0x40000) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_117;
    }
  }

  else if ((v20 & 0x20000) == 0)
  {
    goto LABEL_90;
  }

  *(a1 + 184) = *(a2 + 184);
  if ((v20 & 0x40000) == 0)
  {
LABEL_91:
    if ((v20 & 0x80000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_118;
  }

LABEL_117:
  *(a1 + 188) = *(a2 + 188);
  if ((v20 & 0x80000) == 0)
  {
LABEL_92:
    if ((v20 & 0x100000) == 0)
    {
      goto LABEL_93;
    }

LABEL_119:
    *(a1 + 192) = *(a2 + 192);
    if ((v20 & 0x200000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_118:
  *(a1 + 189) = *(a2 + 189);
  if ((v20 & 0x100000) != 0)
  {
    goto LABEL_119;
  }

LABEL_93:
  if ((v20 & 0x200000) != 0)
  {
LABEL_94:
    *(a1 + 196) = *(a2 + 196);
  }

LABEL_95:
  *(a1 + 16) |= v20;
LABEL_96:
  v51 = *(a2 + 8);
  if (v51)
  {

    sub_1957EF4((a1 + 8), (v51 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}