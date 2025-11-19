__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_248839934(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24883997C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy233_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_248839A30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 233))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_248839A78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 233) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 233) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_248839B2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v9 = (a1 + 56);
  v8 = *(a1 + 56);
  if (v8 < 0)
  {
    v8 = 274;
    *v9 = 274;
  }

  sub_24883C9F0(v8, a1, a4 - *(a1 + 64));
  v21[0] = &v20;
  v21[1] = &v19;
  v21[2] = &v18;
  v21[3] = &v17;
  v21[4] = &v16;
  sub_24883CB1C(a2, v15);
  sub_24889A5A4(a1, v9, a2, v21, a4);
  v11 = v19;
  result = v20;
  v13 = v17;
  v12 = v18;
  v14 = v16;
  *a3 = v20;
  *(a3 + 1) = v11;
  *(a3 + 2) = v12;
  *(a3 + 3) = v13;
  *(a3 + 4) = v14;
  return result;
}

void sub_248839BF4(double *a1@<X0>, uint64_t a2@<X2>, double *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_2488A566C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 32) * 1.2;
  v16 = 0.0;
  v17 = v15 * 0.0;
  if (a4 < 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = a4;
  }

  v19 = v18 * v15;
  if (v19 >= v17)
  {
    v22 = v17 + 0.0;
    v23 = a5;
    v20 = 0.666667;
    v24 = v17 + 0.666667;
    if (v23 >= 0.0)
    {
      v16 = v23;
    }

    v25 = v16 * v24;
    v26 = v19 - v22;
    if (v25 <= v19 - v22)
    {
      v28 = v26 - v25;
      if (v28 < 0.000001)
      {
        *a1 = a4;
      }

      v20 = v28 + 0.666667;
    }

    else
    {
      v27 = fmod(v26, v24);
      if (v27 >= 0.666667)
      {
        *a1 = (v24 - v27) / v15 + a4;
      }

      else
      {
        *a1 = a4;
        v20 = v27 + 0.0;
      }
    }
  }

  else
  {
    v20 = v19 - v17;
    v21 = -(v19 - v17);
    if (v20 <= 0.0)
    {
      v16 = v21;
    }

    *a1 = v16 / v15 + a4;
    if (v20 < 0.0)
    {
      v20 = 0.0;
    }
  }

  v29 = 0;
  v30 = 4;
  do
  {
    v31 = v30 >> 1;
    v32 = v29 + (v30 >> 1);
    if (__OFADD__(v29, v30 >> 1))
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (v32 > 3)
    {
      goto LABEL_87;
    }

    v30 += ~v31;
    if (*(&unk_285B484D8 + 4 * v32 + 5) <= v20)
    {
      v29 = v32 + 1;
    }

    else
    {
      v30 = v31;
    }
  }

  while (v30 > 0);
  v33 = 0.0;
  v34 = 0.0;
  if (!v29)
  {
LABEL_33:
    v45 = v20 >= 0.0833333;
    if (v20 >= 0.283333)
    {
      v45 = 2;
    }

    if (v45)
    {
      v33 = dbl_285B48578[4 * v45];
      if (v20 < 0.283333)
      {
        v46 = &dbl_285B48578[4 * v45];
        v47 = (v20 - v46[1]) / (0.283333 - v46[1]);
        v48 = *(v46 + 4);
        v49 = *(v46 + 6);
        v50 = *(v46 + 7);
        sub_2488A565C();
        sub_2488A564C();
        v52 = v51;
        (*(v11 + 8))(v14, v10);
        v33 = v33 + (1.0 - v33) * v52;
      }
    }

    v53 = 0;
    v54 = 4;
    do
    {
      v55 = v54 >> 1;
      v56 = v53 + (v54 >> 1);
      if (__OFADD__(v53, v54 >> 1))
      {
        goto LABEL_88;
      }

      if (v56 > 3)
      {
        goto LABEL_89;
      }

      v54 += ~v55;
      if (*(&unk_285B485D8 + 4 * v56 + 5) <= v20)
      {
        v53 = v56 + 1;
      }

      else
      {
        v54 = v55;
      }
    }

    while (v54 > 0);
    v57 = 0.0;
    if (!v53)
    {
LABEL_53:
      v69 = 0;
      v70 = 4;
      do
      {
        v71 = v70 >> 1;
        v72 = v69 + (v70 >> 1);
        if (__OFADD__(v69, v70 >> 1))
        {
          goto LABEL_90;
        }

        if (v72 > 3)
        {
          goto LABEL_91;
        }

        v70 += ~v71;
        if (*(&unk_285B48678 + 4 * v72 + 5) <= v20)
        {
          v69 = v72 + 1;
        }

        else
        {
          v70 = v71;
        }
      }

      while (v70 > 0);
      v73 = 1.0;
      if (!v69)
      {
        goto LABEL_68;
      }

      v74 = v69 - 1;
      if (!__OFSUB__(v69, 1))
      {
        if ((v74 & 0x8000000000000000) == 0 && v74 < 4)
        {
          v73 = *(&unk_285B48678 + 4 * v74 + 4);
          if (v69 != 4)
          {
            if (v69 > 3)
            {
              goto LABEL_103;
            }

            v75 = (&unk_285B48698 + 32 * v69);
            v76 = (&unk_285B48698 + 32 * v74);
            v77 = *v75;
            v78 = (v20 - v76[1]) / (v75[1] - v76[1]);
            v79 = *(v76 + 4);
            v80 = *(v76 + 5);
            v81 = *(v76 + 6);
            v82 = *(v76 + 7);
            sub_2488A565C();
            sub_2488A564C();
            v84 = v83;
            (*(v11 + 8))(v14, v10);
            v73 = v73 + (v77 - v73) * v84;
          }

LABEL_68:
          v85 = 0;
          v86 = 3;
          do
          {
            v87 = v86 >> 1;
            v88 = v85 + (v86 >> 1);
            if (__OFADD__(v85, v86 >> 1))
            {
              goto LABEL_92;
            }

            if (v88 > 2)
            {
              goto LABEL_93;
            }

            v86 += ~v87;
            if (*(&unk_285B48718 + 4 * v88 + 5) <= v20)
            {
              v85 = v88 + 1;
            }

            else
            {
              v86 = v87;
            }
          }

          while (v86 > 0);
          if (v85)
          {
            v89 = v85 - 1;
            if (__OFSUB__(v85, 1))
            {
              goto LABEL_97;
            }

            if ((v89 & 0x8000000000000000) == 0 && v89 < 3)
            {
              v90 = *(&unk_285B48718 + 4 * v89 + 4);
              if (v85 != 3)
              {
                if (v85 > 2)
                {
                  goto LABEL_104;
                }

                v91 = (&unk_285B48738 + 32 * v85);
                v92 = (&unk_285B48738 + 32 * v89);
                v93 = *v91;
                v94 = (v20 - v92[1]) / (v91[1] - v92[1]);
                v95 = *(v92 + 4);
                v96 = *(v92 + 5);
                v97 = *(v92 + 6);
                v98 = *(v92 + 7);
                sub_2488A565C();
                sub_2488A564C();
                v100 = v99;
                (*(v11 + 8))(v14, v10);
                v90 = v90 + (v93 - v90) * v100;
              }

              goto LABEL_85;
            }

            v90 = 1.0;
            if (v85 == 3)
            {
LABEL_85:
              *a3 = v34;
              a3[1] = v33;
              a3[2] = v57;
              a3[3] = v73;
              a3[4] = v90;
              return;
            }

            __break(1u);
          }

          v90 = 0.0;
          goto LABEL_85;
        }

        if (v69 == 4)
        {
          goto LABEL_68;
        }

LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      goto LABEL_96;
    }

    v58 = v53 - 1;
    if (!__OFSUB__(v53, 1))
    {
      if ((v58 & 0x8000000000000000) != 0 || v58 >= 4)
      {
        if (v53 != 4)
        {
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }
      }

      else
      {
        v57 = *(&unk_285B485D8 + 4 * v58 + 4);
        if (v53 != 4)
        {
          if (v53 > 3)
          {
            goto LABEL_102;
          }

          v59 = (&unk_285B485F8 + 32 * v53);
          v60 = (&unk_285B485F8 + 32 * v58);
          v61 = *v59;
          v62 = (v20 - v60[1]) / (v59[1] - v60[1]);
          v63 = *(v60 + 4);
          v64 = *(v60 + 5);
          v65 = *(v60 + 6);
          v66 = *(v60 + 7);
          sub_2488A565C();
          sub_2488A564C();
          v68 = v67;
          (*(v11 + 8))(v14, v10);
          v57 = v57 + (v61 - v57) * v68;
        }
      }

      goto LABEL_53;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v35 = v29 - 1;
  if (__OFSUB__(v29, 1))
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if ((v35 & 0x8000000000000000) != 0 || v35 >= 4)
  {
    v34 = 1.0;
    if (v29 == 4)
    {
      goto LABEL_33;
    }

    goto LABEL_98;
  }

  v34 = *(&unk_285B484D8 + 4 * v35 + 4);
  if (v29 == 4)
  {
    goto LABEL_33;
  }

  if (v29 <= 3)
  {
    v36 = (&unk_285B484F8 + 32 * v29);
    v37 = (&unk_285B484F8 + 32 * v35);
    v38 = *v36;
    v39 = (v20 - v37[1]) / (v36[1] - v37[1]);
    v40 = *(v37 + 4);
    v41 = *(v37 + 6);
    v42 = *(v37 + 7);
    sub_2488A565C();
    sub_2488A564C();
    v44 = v43;
    (*(v11 + 8))(v14, v10);
    v34 = v34 + (v38 - v34) * v44;
    goto LABEL_33;
  }

LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
}

void sub_24883A2BC(uint64_t a1, uint64_t a2, double a3)
{
  v73 = a2;
  v76 = sub_2488A566C();
  v5 = *(v76 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 104);
  if (v8 < 0)
  {
    v8 = 276;
    *(a1 + 104) = 276;
  }

  sub_24883CB54(v8, a1, a3 - *(a1 + 112));
  v9 = 0;
  v10 = *(*(a1 + 120) + 16);
  v74 = (v5 + 8);
  v11 = 1;
  v12 = 88;
  v70 = -56;
  v71 = a1;
  v13 = 0.0;
  v72 = 88;
  v14 = 88;
  if (v10 > 0)
  {
    goto LABEL_10;
  }

LABEL_23:
  v18 = *(a1 + 112);
  if (*(a1 + 104) == 277)
  {
    v21 = a3 - v18;
    v22 = *(v73 + 32);
    v23 = v22 * 0.0;
    v20 = 1.0;
    goto LABEL_25;
  }

LABEL_32:
  v33 = 0.0;
  v21 = INFINITY;
  if (v11)
  {
    while (1)
    {
      v15 = *a1;
      if (v18 + v21 < *a1)
      {
        v15 = v18 + v21;
      }

      *a1 = v15;
      v13 = v33;
LABEL_8:
      v11 = 0;
      ++v9;
      v14 += 56;
      if (v10 < v9)
      {
        return;
      }

      if (v9 >= v10)
      {
        goto LABEL_23;
      }

      while (1)
      {
LABEL_10:
        if (v9 < 0)
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v16 = *(a1 + 120);
        if (v9 >= *(v16 + 2))
        {
          goto LABEL_59;
        }

        v17 = &v16[v14];
        v18 = *&v16[v14 - 24];
        if (v18 <= a3 && *&v16[v14 - 56] + *&v16[v14 - 48] > a3)
        {
          break;
        }

        v24 = *(a1 + 120);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 120) = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_248858894(v16);
          *(a1 + 120) = v16;
        }

        v26 = *(v16 + 2);
        if (v26 <= v9)
        {
          goto LABEL_63;
        }

        v27 = v26 - 1;
        memmove(&v16[v14 - 56], &v16[v14], v70 + 56 * (v26 - v9));
        *(v16 + 2) = v27;
        *(a1 + 120) = v16;
        --v10;
        v14 = v12 + 56 * v9;
        if (v9 >= v10)
        {
          goto LABEL_23;
        }
      }

      if (*(v17 - 4) != 277)
      {
        goto LABEL_32;
      }

      v20 = *(v17 - 5);
      v21 = a3 - v18;
      v22 = *(v73 + 32);
      v23 = v22 * 0.0;
LABEL_25:
      v28 = v21;
      if (v21 < 0.0)
      {
        v28 = 0.0;
      }

      v29 = v28 * v22;
      if (v29 >= v23)
      {
        v34 = v23 + 0.0;
        v35 = 0.133333;
        v36 = v22 * 0.0 + 0.133333;
        if (v20 < 0.0)
        {
          v20 = 0.0;
        }

        v37 = v20 * v36;
        v38 = v29 - v34;
        if (v37 <= v29 - v34)
        {
          v40 = v38 - v37;
          if (v40 >= 0.000001)
          {
            v21 = INFINITY;
          }

          v35 = v40 + 0.133333;
        }

        else
        {
          v39 = fmod(v38, v22 * 0.0 + 0.133333);
          if (v39 >= 0.133333)
          {
            v21 = v21 + (v36 - v39) / v22;
          }

          else
          {
            v35 = v39;
          }
        }

        v30 = v35 + 0.0;
      }

      else
      {
        v30 = v29 - v23;
        v31 = -(v29 - v23);
        v32 = 0.0;
        if (v30 > 0.0)
        {
          v31 = 0.0;
        }

        v21 = v21 + v31 / v22;
        if (v30 < 0.0)
        {
          goto LABEL_46;
        }
      }

      if (v30 >= 0.133333)
      {
        v41 = 2;
        goto LABEL_47;
      }

      v32 = v30;
LABEL_46:
      v41 = v32 >= 0.0;
      v30 = v32;
      if (v32 < 0.0)
      {
        v33 = 0.0;
        if ((v11 & 1) == 0)
        {
          break;
        }
      }

      else
      {
LABEL_47:
        v33 = dbl_285B49230[4 * v41];
        if (v41 != 2)
        {
          v42 = &dbl_285B49230[4 * v41];
          v43 = *(v42 + 4);
          v44 = (v30 - v42[1]) / (0.133333 - v42[1]);
          v45 = *(v42 + 5);
          v46 = *(v42 + 6);
          v47 = *(v42 + 7);
          v48 = v75;
          sub_2488A565C();
          sub_2488A564C();
          v50 = v49;
          (*v74)(v48, v76);
          v33 = v33 + (0.75 - v33) * v50;
        }

        if ((v11 & 1) == 0)
        {
          break;
        }
      }
    }
  }

  v51 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
LABEL_60:
    __break(1u);
  }

  else if ((v51 & 0x8000000000000000) == 0)
  {
    v52 = *(a1 + 120);
    if (v51 < *(v52 + 16))
    {
      v53 = v52 + 56 * v51;
      v54 = *(v53 + 80);
      v55 = *(v53 + 84);
      *(v53 + 32);
      *(v53 + 40);
      v56 = *(v53 + 72);
      v57 = *(v53 + 76);
      v58 = v75;
      sub_2488A565C();
      sub_2488A564C();
      v60 = v59;
      v61 = (*v74)(v58, v76);
      v77 = &v70;
      v79 = v33;
      v80 = v13;
      v62 = MEMORY[0x277D839F8];
      v63 = *(MEMORY[0x277D839F8] - 8);
      v64 = v63[8];
      MEMORY[0x28223BE20](v61);
      v78 = v14;
      v65 = (&v70 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
      v66 = v63[2];
      v67 = v66(v65, &v80, v62);
      MEMORY[0x28223BE20](v67);
      v66(v65, &v79, v62);
      v68 = off_285B4A610(v65, v81, v60);
      v69 = v63[1];
      v14 = v78;
      v69(v65, v62, v68);
      (v69)(v65, v62);
      a1 = v71;
      v12 = v72;
      v13 = v81[0];
      *v71 = a3;
      goto LABEL_8;
    }

    goto LABEL_62;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
}

void sub_24883A8D0(uint64_t a1, uint64_t a2, double a3)
{
  v73 = a2;
  v76 = sub_2488A566C();
  v5 = *(v76 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 176);
  if (v8 < 0)
  {
    v8 = 276;
    *(a1 + 176) = 276;
  }

  sub_24883CC80(v8, a1, a3 - *(a1 + 184));
  v9 = 0;
  v10 = *(*(a1 + 192) + 16);
  v74 = (v5 + 8);
  v11 = 1;
  v12 = 88;
  v70 = -56;
  v71 = a1;
  v13 = 0.0;
  v72 = 88;
  v14 = 88;
  if (v10 > 0)
  {
    goto LABEL_10;
  }

LABEL_23:
  v18 = *(a1 + 184);
  if (*(a1 + 176) == 277)
  {
    v21 = a3 - v18;
    v22 = *(v73 + 32);
    v23 = v22 * 0.0;
    v20 = 1.0;
    goto LABEL_25;
  }

LABEL_32:
  v33 = 0.0;
  v21 = INFINITY;
  if (v11)
  {
    while (1)
    {
      v15 = *a1;
      if (v18 + v21 < *a1)
      {
        v15 = v18 + v21;
      }

      *a1 = v15;
      v13 = v33;
LABEL_8:
      v11 = 0;
      ++v9;
      v14 += 56;
      if (v10 < v9)
      {
        return;
      }

      if (v9 >= v10)
      {
        goto LABEL_23;
      }

      while (1)
      {
LABEL_10:
        if (v9 < 0)
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v16 = *(a1 + 192);
        if (v9 >= *(v16 + 2))
        {
          goto LABEL_59;
        }

        v17 = &v16[v14];
        v18 = *&v16[v14 - 24];
        if (v18 <= a3 && *&v16[v14 - 56] + *&v16[v14 - 48] > a3)
        {
          break;
        }

        v24 = *(a1 + 192);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 192) = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_248858894(v16);
          *(a1 + 192) = v16;
        }

        v26 = *(v16 + 2);
        if (v26 <= v9)
        {
          goto LABEL_63;
        }

        v27 = v26 - 1;
        memmove(&v16[v14 - 56], &v16[v14], v70 + 56 * (v26 - v9));
        *(v16 + 2) = v27;
        *(a1 + 192) = v16;
        --v10;
        v14 = v12 + 56 * v9;
        if (v9 >= v10)
        {
          goto LABEL_23;
        }
      }

      if (*(v17 - 4) != 277)
      {
        goto LABEL_32;
      }

      v20 = *(v17 - 5);
      v21 = a3 - v18;
      v22 = *(v73 + 32);
      v23 = v22 * 0.0;
LABEL_25:
      v28 = v21;
      if (v21 < 0.0)
      {
        v28 = 0.0;
      }

      v29 = v28 * v22;
      if (v29 >= v23)
      {
        v34 = v23 + 0.0;
        v35 = 0.2;
        v36 = v22 * 0.0 + 0.2;
        if (v20 < 0.0)
        {
          v20 = 0.0;
        }

        v37 = v20 * v36;
        v38 = v29 - v34;
        if (v37 <= v29 - v34)
        {
          v40 = v38 - v37;
          if (v40 >= 0.000001)
          {
            v21 = INFINITY;
          }

          v35 = v40 + 0.2;
        }

        else
        {
          v39 = fmod(v38, v22 * 0.0 + 0.2);
          if (v39 >= 0.2)
          {
            v21 = v21 + (v36 - v39) / v22;
          }

          else
          {
            v35 = v39;
          }
        }

        v30 = v35 + 0.0;
      }

      else
      {
        v30 = v29 - v23;
        v31 = -(v29 - v23);
        v32 = 0.0;
        if (v30 > 0.0)
        {
          v31 = 0.0;
        }

        v21 = v21 + v31 / v22;
        if (v30 < 0.0)
        {
          goto LABEL_46;
        }
      }

      if (v30 >= 0.2)
      {
        v41 = 2;
        goto LABEL_47;
      }

      v32 = v30;
LABEL_46:
      v41 = v32 >= 0.0;
      v30 = v32;
      if (v32 < 0.0)
      {
        v33 = 0.75;
        if ((v11 & 1) == 0)
        {
          break;
        }
      }

      else
      {
LABEL_47:
        v33 = dbl_285B49488[4 * v41];
        if (v41 != 2)
        {
          v42 = &dbl_285B49488[4 * v41];
          v43 = *(v42 + 4);
          v44 = (v30 - v42[1]) / (0.2 - v42[1]);
          v45 = *(v42 + 5);
          v46 = *(v42 + 6);
          v47 = *(v42 + 7);
          v48 = v75;
          sub_2488A565C();
          sub_2488A564C();
          v50 = v49;
          (*v74)(v48, v76);
          v33 = v33 + (0.0 - v33) * v50;
        }

        if ((v11 & 1) == 0)
        {
          break;
        }
      }
    }
  }

  v51 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
LABEL_60:
    __break(1u);
  }

  else if ((v51 & 0x8000000000000000) == 0)
  {
    v52 = *(a1 + 192);
    if (v51 < *(v52 + 16))
    {
      v53 = v52 + 56 * v51;
      v54 = *(v53 + 80);
      v55 = *(v53 + 84);
      *(v53 + 32);
      *(v53 + 40);
      v56 = *(v53 + 72);
      v57 = *(v53 + 76);
      v58 = v75;
      sub_2488A565C();
      sub_2488A564C();
      v60 = v59;
      v61 = (*v74)(v58, v76);
      v77 = &v70;
      v79 = v33;
      v80 = v13;
      v62 = MEMORY[0x277D839F8];
      v63 = *(MEMORY[0x277D839F8] - 8);
      v64 = v63[8];
      MEMORY[0x28223BE20](v61);
      v78 = v14;
      v65 = (&v70 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
      v66 = v63[2];
      v67 = v66(v65, &v80, v62);
      MEMORY[0x28223BE20](v67);
      v66(v65, &v79, v62);
      v68 = off_285B4A610(v65, v81, v60);
      v69 = v63[1];
      v14 = v78;
      v69(v65, v62, v68);
      (v69)(v65, v62);
      a1 = v71;
      v12 = v72;
      v13 = v81[0];
      *v71 = a3;
      goto LABEL_8;
    }

    goto LABEL_62;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
}

double sub_24883AEE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v9 = (a1 + 80);
  v8 = *(a1 + 80);
  if (v8 < 0)
  {
    v8 = 276;
    *v9 = 276;
  }

  sub_24883CDAC(v8, a1, a4 - *(a1 + 88));
  v23[0] = &v22;
  v23[1] = &v21;
  v23[2] = &v20;
  v23[3] = &v19;
  v23[4] = &v18;
  v23[5] = &v17;
  sub_24883CB1C(a2, v16);
  sub_24889AE44(a1, v9, a2, v23, a4);
  result = v22;
  v12 = v20;
  v11 = v21;
  v14 = v18;
  v13 = v19;
  v15 = v17;
  *a3 = v22;
  *(a3 + 1) = v11;
  *(a3 + 2) = v12;
  *(a3 + 3) = v13;
  *(a3 + 4) = v14;
  *(a3 + 5) = v15;
  return result;
}

void sub_24883AFB8(double *a1@<X0>, uint64_t a2@<X2>, double *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_2488A566C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 32) * 1.4;
  v16 = 0.0;
  v17 = v15 * 0.0;
  if (a4 < 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = a4;
  }

  v19 = v18 * v15;
  if (v19 >= v17)
  {
    v22 = v17 + 0.0;
    v23 = a5;
    v24 = v17 + 1.0;
    if (v23 >= 0.0)
    {
      v16 = v23;
    }

    v25 = v16 * v24;
    v26 = v19 - v22;
    if (v25 <= v19 - v22)
    {
      v28 = v26 - v25;
      if (v28 < 0.000001)
      {
        *a1 = a4;
      }

      v20 = v28 + 1.0;
    }

    else
    {
      v27 = fmod(v26, v24);
      if (v27 >= 1.0)
      {
        *a1 = (v24 - v27) / v15 + a4;
        v20 = 1.0;
      }

      else
      {
        *a1 = a4;
        v20 = v27 + 0.0;
      }
    }
  }

  else
  {
    v20 = v19 - v17;
    v21 = -(v19 - v17);
    if (v20 <= 0.0)
    {
      v16 = v21;
    }

    *a1 = v16 / v15 + a4;
    if (v20 < 0.0)
    {
      v20 = 0.0;
    }
  }

  v29 = 0;
  v30 = 4;
  do
  {
    v31 = v30 >> 1;
    v32 = v29 + (v30 >> 1);
    if (__OFADD__(v29, v30 >> 1))
    {
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
      goto LABEL_125;
    }

    if (v32 > 3)
    {
      goto LABEL_114;
    }

    v30 += ~v31;
    if (*(&unk_285B48798 + 4 * v32 + 5) <= v20)
    {
      v29 = v32 + 1;
    }

    else
    {
      v30 = v31;
    }
  }

  while (v30 > 0);
  v33 = 1.0;
  if (!v29)
  {
LABEL_33:
    v44 = 0;
    v45 = 3;
    do
    {
      v46 = v45 >> 1;
      v47 = v44 + (v45 >> 1);
      if (__OFADD__(v44, v45 >> 1))
      {
        goto LABEL_115;
      }

      if (v47 > 2)
      {
        goto LABEL_116;
      }

      v45 += ~v46;
      if (*(&unk_285B48838 + 4 * v47 + 5) <= v20)
      {
        v44 = v47 + 1;
      }

      else
      {
        v45 = v46;
      }
    }

    while (v45 > 0);
    v48 = 1.0;
    if (!v44)
    {
LABEL_48:
      v59 = 0;
      v60 = 4;
      do
      {
        v61 = v60 >> 1;
        v62 = v59 + (v60 >> 1);
        if (__OFADD__(v59, v60 >> 1))
        {
          goto LABEL_117;
        }

        if (v62 > 3)
        {
          goto LABEL_118;
        }

        v60 += ~v61;
        if (*(&unk_285B488B8 + 4 * v62 + 5) <= v20)
        {
          v59 = v62 + 1;
        }

        else
        {
          v60 = v61;
        }
      }

      while (v60 > 0);
      v63 = 1.0;
      if (!v59)
      {
LABEL_63:
        v74 = 0;
        v75 = 4;
        do
        {
          v76 = v75 >> 1;
          v77 = v74 + (v75 >> 1);
          if (__OFADD__(v74, v75 >> 1))
          {
            goto LABEL_119;
          }

          if (v77 > 3)
          {
            goto LABEL_120;
          }

          v75 += ~v76;
          if (*(&unk_285B48958 + 4 * v77 + 5) <= v20)
          {
            v74 = v77 + 1;
          }

          else
          {
            v75 = v76;
          }
        }

        while (v75 > 0);
        if (!v74)
        {
          goto LABEL_79;
        }

        v78 = v74 - 1;
        if (!__OFSUB__(v74, 1))
        {
          if ((v78 & 0x8000000000000000) == 0 && v78 < 4)
          {
            v79 = *(&unk_285B48958 + 4 * v78 + 4);
            if (v74 != 4)
            {
              if (v74 > 3)
              {
                goto LABEL_138;
              }

              v80 = (&unk_285B48978 + 32 * v74);
              v81 = (&unk_285B48978 + 32 * v78);
              v82 = *v80;
              v83 = (v20 - v81[1]) / (v80[1] - v81[1]);
              v84 = *(v81 + 4);
              v85 = *(v81 + 6);
              v86 = *(v81 + 7);
              sub_2488A565C();
              sub_2488A564C();
              v88 = v87;
              (*(v11 + 8))(v14, v10);
              v79 = v79 + (v82 - v79) * v88;
            }

LABEL_80:
            v89 = 0;
            v90 = 4;
            do
            {
              v91 = v90 >> 1;
              v92 = v89 + (v90 >> 1);
              if (__OFADD__(v89, v90 >> 1))
              {
                goto LABEL_121;
              }

              if (v92 > 3)
              {
                goto LABEL_122;
              }

              v90 += ~v91;
              if (*(&unk_285B489F8 + 4 * v92 + 5) <= v20)
              {
                v89 = v92 + 1;
              }

              else
              {
                v90 = v91;
              }
            }

            while (v90 > 0);
            if (v89)
            {
              v93 = v89 - 1;
              if (__OFSUB__(v89, 1))
              {
                goto LABEL_129;
              }

              if ((v93 & 0x8000000000000000) == 0 && v93 < 4)
              {
                v94 = *(&unk_285B489F8 + 4 * v93 + 4);
                if (v89 != 4)
                {
                  if (v89 > 3)
                  {
                    goto LABEL_139;
                  }

                  v95 = (&unk_285B48A18 + 32 * v89);
                  v96 = (&unk_285B48A18 + 32 * v93);
                  v97 = *v95;
                  v98 = (v20 - v96[1]) / (v95[1] - v96[1]);
                  v99 = *(v96 + 4);
                  v100 = *(v96 + 5);
                  v101 = *(v96 + 6);
                  v102 = *(v96 + 7);
                  sub_2488A565C();
                  sub_2488A564C();
                  v104 = v103;
                  (*(v11 + 8))(v14, v10);
                  v94 = v94 + (v97 - v94) * v104;
                }

                goto LABEL_97;
              }

              v94 = 0.0;
              if (v89 == 4)
              {
LABEL_97:
                v105 = 0;
                v106 = 3;
                while (1)
                {
                  v107 = v106 >> 1;
                  v108 = v105 + (v106 >> 1);
                  if (__OFADD__(v105, v106 >> 1))
                  {
                    goto LABEL_123;
                  }

                  if (v108 > 2)
                  {
                    goto LABEL_124;
                  }

                  v106 += ~v107;
                  if (*(&unk_285B48A98 + 4 * v108 + 5) <= v20)
                  {
                    v105 = v108 + 1;
                  }

                  else
                  {
                    v106 = v107;
                  }

                  if (v106 <= 0)
                  {
                    v109 = 0.0;
                    if (v105)
                    {
                      v110 = v105 - 1;
                      if (__OFSUB__(v105, 1))
                      {
                        goto LABEL_130;
                      }

                      if ((v110 & 0x8000000000000000) != 0 || v110 >= 3)
                      {
                        if (v105 != 3)
                        {
                          goto LABEL_134;
                        }
                      }

                      else
                      {
                        v109 = *(&unk_285B48A98 + 4 * v110 + 4);
                        if (v105 != 3)
                        {
                          if (v105 > 2)
                          {
                            goto LABEL_140;
                          }

                          v111 = &unk_285B48AB8 + 32 * v105;
                          v112 = &unk_285B48AB8 + 32 * v110;
                          v113 = *(v112 + 6);
                          v114 = *(v112 + 7);
                          v115 = *(v112 + 4);
                          v116 = *(v112 + 5);
                          v117 = *(v112 + 1);
                          v118 = *(v111 + 1);
                          v122 = *v111;
                          sub_2488A565C();
                          sub_2488A564C();
                          v120 = v119;
                          (*(v11 + 8))(v14, v10);
                          v109 = v109 + (v122 - v109) * v120;
                        }
                      }
                    }

                    *a3 = v33;
                    a3[1] = v48;
                    a3[2] = v63;
                    a3[3] = v79;
                    a3[4] = v94;
                    a3[5] = v109;
                    return;
                  }
                }
              }

              __break(1u);
            }

            v94 = 1.0;
            goto LABEL_97;
          }

          v79 = 0.0;
          if (v74 == 4)
          {
            goto LABEL_80;
          }

          __break(1u);
LABEL_79:
          v79 = 0.75;
          goto LABEL_80;
        }

        goto LABEL_128;
      }

      v64 = v59 - 1;
      if (!__OFSUB__(v59, 1))
      {
        if ((v64 & 0x8000000000000000) != 0 || v64 >= 4)
        {
          if (v59 != 4)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v63 = *(&unk_285B488B8 + 4 * v64 + 4);
          if (v59 != 4)
          {
            if (v59 > 3)
            {
              goto LABEL_137;
            }

            v65 = (&unk_285B488D8 + 32 * v59);
            v66 = (&unk_285B488D8 + 32 * v64);
            v67 = *v65;
            v68 = (v20 - v66[1]) / (v65[1] - v66[1]);
            v69 = *(v66 + 4);
            v70 = *(v66 + 6);
            v71 = *(v66 + 7);
            sub_2488A565C();
            sub_2488A564C();
            v73 = v72;
            (*(v11 + 8))(v14, v10);
            v63 = v63 + (v67 - v63) * v73;
          }
        }

        goto LABEL_63;
      }

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
      goto LABEL_132;
    }

    v49 = v44 - 1;
    if (!__OFSUB__(v44, 1))
    {
      if ((v49 & 0x8000000000000000) != 0 || v49 >= 3)
      {
        if (v44 != 3)
        {
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }
      }

      else
      {
        v48 = *(&unk_285B48838 + 4 * v49 + 4);
        if (v44 != 3)
        {
          if (v44 > 2)
          {
            goto LABEL_136;
          }

          v50 = (&unk_285B48858 + 32 * v44);
          v51 = (&unk_285B48858 + 32 * v49);
          v52 = *v50;
          v53 = (v20 - v51[1]) / (v50[1] - v51[1]);
          v54 = *(v51 + 4);
          v55 = *(v51 + 6);
          v56 = *(v51 + 7);
          sub_2488A565C();
          sub_2488A564C();
          v58 = v57;
          (*(v11 + 8))(v14, v10);
          v48 = v48 + (v52 - v48) * v58;
        }
      }

      goto LABEL_48;
    }

LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v34 = v29 - 1;
  if (__OFSUB__(v29, 1))
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if ((v34 & 0x8000000000000000) != 0 || v34 >= 4)
  {
    if (v29 == 4)
    {
      goto LABEL_33;
    }

    goto LABEL_131;
  }

  v33 = *(&unk_285B48798 + 4 * v34 + 4);
  if (v29 == 4)
  {
    goto LABEL_33;
  }

  if (v29 <= 3)
  {
    v35 = (&unk_285B487B8 + 32 * v29);
    v36 = (&unk_285B487B8 + 32 * v34);
    v37 = *v35;
    v38 = (v20 - v36[1]) / (v35[1] - v36[1]);
    v39 = *(v36 + 4);
    v40 = *(v36 + 6);
    v41 = *(v36 + 7);
    sub_2488A565C();
    sub_2488A564C();
    v43 = v42;
    (*(v11 + 8))(v14, v10);
    v33 = v33 + (v37 - v33) * v43;
    goto LABEL_33;
  }

LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

double sub_24883B804@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = (a1 + 152);
  v8 = *(a1 + 152);
  if (v8 < 0)
  {
    v8 = 276;
    *v9 = 276;
  }

  sub_24883CFBC(v8, a1, a4 - *(a1 + 160));
  v29[0] = &v28;
  v29[1] = &v27;
  v29[2] = &v26;
  v29[3] = &v25;
  v29[4] = &v24;
  v29[5] = &v23;
  v29[6] = &v22;
  v29[7] = &v21;
  v29[8] = &v20;
  sub_24883CB1C(a2, v19);
  sub_24889B7EC(a1, v9, a2, v29, a4);
  result = v28;
  v12 = v26;
  v11 = v27;
  v14 = v24;
  v13 = v25;
  v16 = v22;
  v15 = v23;
  v17 = v21;
  v18 = v20;
  *a3 = v28;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  *(a3 + 40) = v15;
  *(a3 + 48) = v16;
  *(a3 + 56) = v17;
  *(a3 + 64) = v18;
  return result;
}

void sub_24883B904(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_2488A566C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 32) * 1.6;
  v16 = 0.0;
  v17 = v15 * 0.0;
  if (a4 < 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = a4;
  }

  v19 = v18 * v15;
  if (v19 >= v17)
  {
    v22 = v17 + 0.0;
    v23 = a5;
    v20 = 1.08333;
    v24 = v17 + 1.08333;
    if (v23 >= 0.0)
    {
      v16 = v23;
    }

    v25 = v16 * v24;
    v26 = v19 - v22;
    if (v25 <= v19 - v22)
    {
      v28 = v26 - v25;
      if (v28 < 0.000001)
      {
        *a1 = a4;
      }

      v20 = v28 + 1.08333;
    }

    else
    {
      v27 = fmod(v26, v24);
      if (v27 >= 1.08333)
      {
        *a1 = (v24 - v27) / v15 + a4;
      }

      else
      {
        *a1 = a4;
        v20 = v27 + 0.0;
      }
    }
  }

  else
  {
    v20 = v19 - v17;
    v21 = -(v19 - v17);
    if (v20 <= 0.0)
    {
      v16 = v21;
    }

    *a1 = v16 / v15 + a4;
    if (v20 < 0.0)
    {
      v20 = 0.0;
    }
  }

  v29 = 0;
  v30 = 4;
  do
  {
    v31 = v30 >> 1;
    v32 = v29 + (v30 >> 1);
    if (__OFADD__(v29, v30 >> 1))
    {
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    if (v32 > 3)
    {
      goto LABEL_152;
    }

    v30 += ~v31;
    if (*(&unk_285B48B18 + 4 * v32 + 5) <= v20)
    {
      v29 = v32 + 1;
    }

    else
    {
      v30 = v31;
    }
  }

  while (v30 > 0);
  v168 = 1.0;
  if (!v29)
  {
LABEL_33:
    v43 = 0;
    v44 = 3;
    do
    {
      v45 = v44 >> 1;
      v46 = v43 + (v44 >> 1);
      if (__OFADD__(v43, v44 >> 1))
      {
        goto LABEL_153;
      }

      if (v46 > 2)
      {
        goto LABEL_154;
      }

      v44 += ~v45;
      if (*(&unk_285B48BB8 + 4 * v46 + 5) <= v20)
      {
        v43 = v46 + 1;
      }

      else
      {
        v44 = v45;
      }
    }

    while (v44 > 0);
    v47 = 1.0;
    if (!v43)
    {
LABEL_48:
      v58 = 0;
      v59 = 4;
      do
      {
        v60 = v59 >> 1;
        v61 = v58 + (v59 >> 1);
        if (__OFADD__(v58, v59 >> 1))
        {
          goto LABEL_155;
        }

        if (v61 > 3)
        {
          goto LABEL_156;
        }

        v59 += ~v60;
        if (*(&unk_285B48C38 + 4 * v61 + 5) <= v20)
        {
          v58 = v61 + 1;
        }

        else
        {
          v59 = v60;
        }
      }

      while (v59 > 0);
      v62 = 1.0;
      if (!v58)
      {
LABEL_63:
        v74 = 0;
        v75 = 4;
        do
        {
          v76 = v75 >> 1;
          v77 = v74 + (v75 >> 1);
          if (__OFADD__(v74, v75 >> 1))
          {
            goto LABEL_157;
          }

          if (v77 > 3)
          {
            goto LABEL_158;
          }

          v75 += ~v76;
          if (*(&unk_285B48CD8 + 4 * v77 + 5) <= v20)
          {
            v74 = v77 + 1;
          }

          else
          {
            v75 = v76;
          }
        }

        while (v75 > 0);
        if (!v74)
        {
          goto LABEL_79;
        }

        v78 = v74 - 1;
        if (!__OFSUB__(v74, 1))
        {
          if ((v78 & 0x8000000000000000) == 0 && v78 < 4)
          {
            v79 = *(&unk_285B48CD8 + 4 * v78 + 4);
            if (v74 != 4)
            {
              if (v74 > 3)
              {
                goto LABEL_184;
              }

              v80 = v62;
              v81 = (&unk_285B48CF8 + 32 * v74);
              v82 = (&unk_285B48CF8 + 32 * v78);
              v83 = *v81;
              v84 = (v20 - v82[1]) / (v81[1] - v82[1]);
              v85 = *(v82 + 4);
              v86 = *(v82 + 6);
              v87 = *(v82 + 7);
              sub_2488A565C();
              sub_2488A564C();
              v89 = v88;
              (*(v11 + 8))(v14, v10);
              v79 = v79 + (v83 - v79) * v89;
              v62 = v80;
            }

            goto LABEL_80;
          }

          v79 = 0.0;
          if (v74 == 4)
          {
LABEL_80:
            v90 = 0;
            v91 = 4;
            do
            {
              v92 = v91 >> 1;
              v93 = v90 + (v91 >> 1);
              if (__OFADD__(v90, v91 >> 1))
              {
                goto LABEL_159;
              }

              if (v93 > 3)
              {
                goto LABEL_160;
              }

              v91 += ~v92;
              if (*(&unk_285B48D78 + 4 * v93 + 5) <= v20)
              {
                v90 = v93 + 1;
              }

              else
              {
                v91 = v92;
              }
            }

            while (v91 > 0);
            v94 = 1.0;
            if (!v90)
            {
LABEL_95:
              v106 = 0;
              v107 = 4;
              do
              {
                v108 = v107 >> 1;
                v109 = v106 + (v107 >> 1);
                if (__OFADD__(v106, v107 >> 1))
                {
                  goto LABEL_161;
                }

                if (v109 > 3)
                {
                  goto LABEL_162;
                }

                v107 += ~v108;
                if (*(&unk_285B48E18 + 4 * v109 + 5) <= v20)
                {
                  v106 = v109 + 1;
                }

                else
                {
                  v107 = v108;
                }
              }

              while (v107 > 0);
              v110 = v47;
              v111 = 0.0;
              if (!v106)
              {
                goto LABEL_110;
              }

              v112 = v106 - 1;
              if (!__OFSUB__(v106, 1))
              {
                if ((v112 & 0x8000000000000000) == 0 && v112 < 4)
                {
                  v111 = *(&unk_285B48E18 + 4 * v112 + 4);
                  if (v106 != 4)
                  {
                    if (v106 > 3)
                    {
                      goto LABEL_186;
                    }

                    v113 = v62;
                    v114 = (&unk_285B48E38 + 32 * v106);
                    v115 = (&unk_285B48E38 + 32 * v112);
                    v116 = *v114;
                    v117 = (v20 - v115[1]) / (v114[1] - v115[1]);
                    v118 = *(v115 + 4);
                    v119 = *(v115 + 5);
                    v120 = *(v115 + 6);
                    v121 = *(v115 + 7);
                    sub_2488A565C();
                    sub_2488A564C();
                    v123 = v122;
                    (*(v11 + 8))(v14, v10);
                    v111 = v111 + (v116 - v111) * v123;
                    v62 = v113;
                  }

LABEL_110:
                  v124 = 0;
                  v125 = 3;
                  do
                  {
                    v126 = v125 >> 1;
                    v127 = v124 + (v125 >> 1);
                    if (__OFADD__(v124, v125 >> 1))
                    {
                      goto LABEL_163;
                    }

                    if (v127 > 2)
                    {
                      goto LABEL_164;
                    }

                    v125 += ~v126;
                    if (*(&unk_285B48EB8 + 4 * v127 + 5) <= v20)
                    {
                      v124 = v127 + 1;
                    }

                    else
                    {
                      v125 = v126;
                    }
                  }

                  while (v125 > 0);
                  if (v124)
                  {
                    v128 = v124 - 1;
                    if (__OFSUB__(v124, 1))
                    {
                      goto LABEL_173;
                    }

                    if ((v128 & 0x8000000000000000) == 0 && v128 < 3)
                    {
                      v129 = *(&unk_285B48EB8 + 4 * v128 + 4);
                      if (v124 != 3)
                      {
                        v167 = v62;
                        if (v124 > 2)
                        {
                          goto LABEL_187;
                        }

                        v130 = (&unk_285B48ED8 + 32 * v124);
                        v131 = (&unk_285B48ED8 + 32 * v128);
                        v132 = *v130;
                        v133 = (v20 - v131[1]) / (v130[1] - v131[1]);
                        v134 = *(v131 + 4);
                        v135 = *(v131 + 6);
                        v136 = *(v131 + 7);
                        sub_2488A565C();
                        sub_2488A564C();
                        v138 = v137;
                        (*(v11 + 8))(v14, v10);
                        v129 = v129 + (v132 - v129) * v138;
                        v62 = v167;
                      }

                      goto LABEL_127;
                    }

                    v129 = 0.0;
                    if (v124 == 3)
                    {
LABEL_127:
                      v139 = v20 >= 0.0166667;
                      if (v20 >= 1.1)
                      {
                        v139 = 2;
                      }

                      if (v139)
                      {
                        v140 = byte_285B48F38[32 * v139];
                        if (v20 < 1.1)
                        {
                          v141 = v62;
                          v142 = &byte_285B48F38[32 * v139];
                          v143 = *(v142 + 32);
                          v144 = (v20 - v142[1]) / (v142[5] - v142[1]);
                          v145 = *(v142 + 4);
                          v146 = *(v142 + 6);
                          v147 = *(v142 + 7);
                          sub_2488A565C();
                          sub_2488A564C();
                          v149 = v148;
                          (*(v11 + 8))(v14, v10);
                          if (v149 >= 1.0)
                          {
                            v140 = v143;
                          }

                          v62 = v141;
                        }
                      }

                      else
                      {
                        v140 = 1;
                      }

                      v150 = 0;
                      v151 = 4;
                      while (1)
                      {
                        v152 = v151 >> 1;
                        v153 = v150 + (v151 >> 1);
                        if (__OFADD__(v150, v151 >> 1))
                        {
                          goto LABEL_165;
                        }

                        if (v153 > 3)
                        {
                          goto LABEL_166;
                        }

                        v151 += ~v152;
                        if (*(&unk_285B48F98 + 4 * v153 + 5) <= v20)
                        {
                          v150 = v153 + 1;
                        }

                        else
                        {
                          v151 = v152;
                        }

                        if (v151 <= 0)
                        {
                          v154 = 0.0;
                          if (v150)
                          {
                            v155 = v150 - 1;
                            if (__OFSUB__(v150, 1))
                            {
                              goto LABEL_174;
                            }

                            if ((v155 & 0x8000000000000000) != 0 || v155 >= 4)
                            {
                              if (v150 != 4)
                              {
                                goto LABEL_180;
                              }
                            }

                            else
                            {
                              v154 = *(&unk_285B48F98 + 4 * v155 + 4);
                              if (v150 != 4)
                              {
                                v167 = v62;
                                if (v150 > 3)
                                {
                                  goto LABEL_188;
                                }

                                v156 = &unk_285B48FB8 + 32 * v150;
                                v157 = &unk_285B48FB8 + 32 * v155;
                                v159 = *(v157 + 6);
                                v158 = *(v157 + 7);
                                v160 = *(v157 + 4);
                                v161 = *(v157 + 1);
                                v162 = *(v156 + 1);
                                v166 = *v156;
                                sub_2488A565C();
                                sub_2488A564C();
                                v164 = v163;
                                (*(v11 + 8))(v14, v10);
                                v62 = v167;
                                v154 = v154 + (v166 - v154) * v164;
                              }
                            }
                          }

                          *a3 = v168;
                          *(a3 + 8) = v110;
                          *(a3 + 16) = v62;
                          *(a3 + 24) = v79;
                          *(a3 + 32) = v94;
                          *(a3 + 40) = v111;
                          *(a3 + 48) = v129;
                          *(a3 + 56) = v140;
                          *(a3 + 64) = v154;
                          return;
                        }
                      }
                    }

                    __break(1u);
                  }

                  v129 = 1.0;
                  goto LABEL_127;
                }

                if (v106 == 4)
                {
                  goto LABEL_110;
                }

LABEL_179:
                __break(1u);
LABEL_180:
                __break(1u);
                goto LABEL_181;
              }

              goto LABEL_172;
            }

            v95 = v90 - 1;
            if (!__OFSUB__(v90, 1))
            {
              if ((v95 & 0x8000000000000000) != 0 || v95 >= 4)
              {
                if (v90 != 4)
                {
LABEL_178:
                  __break(1u);
                  goto LABEL_179;
                }
              }

              else
              {
                v94 = *(&unk_285B48D78 + 4 * v95 + 4);
                if (v90 != 4)
                {
                  if (v90 > 3)
                  {
                    goto LABEL_185;
                  }

                  v96 = v62;
                  v97 = (&unk_285B48D98 + 32 * v90);
                  v98 = (&unk_285B48D98 + 32 * v95);
                  v99 = *v97;
                  v100 = (v20 - v98[1]) / (v97[1] - v98[1]);
                  v101 = *(v98 + 4);
                  v102 = *(v98 + 6);
                  v103 = *(v98 + 7);
                  sub_2488A565C();
                  sub_2488A564C();
                  v105 = v104;
                  (*(v11 + 8))(v14, v10);
                  v94 = v94 + (v99 - v94) * v105;
                  v62 = v96;
                }
              }

              goto LABEL_95;
            }

LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
            goto LABEL_176;
          }

          __break(1u);
LABEL_79:
          v79 = 0.75;
          goto LABEL_80;
        }

LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      v63 = v58 - 1;
      if (!__OFSUB__(v58, 1))
      {
        if ((v63 & 0x8000000000000000) != 0 || v63 >= 4)
        {
          if (v58 != 4)
          {
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }
        }

        else
        {
          v62 = *(&unk_285B48C38 + 4 * v63 + 4);
          if (v58 != 4)
          {
            if (v58 > 3)
            {
              goto LABEL_183;
            }

            v64 = *(&unk_285B48C38 + 4 * v63 + 4);
            v65 = (&unk_285B48C58 + 32 * v58);
            v66 = (&unk_285B48C58 + 32 * v63);
            v67 = *v65;
            v68 = (v20 - v66[1]) / (v65[1] - v66[1]);
            v69 = *(v66 + 4);
            v70 = *(v66 + 6);
            v71 = *(v66 + 7);
            sub_2488A565C();
            sub_2488A564C();
            v73 = v72;
            (*(v11 + 8))(v14, v10);
            v62 = v64 + (v67 - v64) * v73;
          }
        }

        goto LABEL_63;
      }

LABEL_169:
      __break(1u);
      goto LABEL_170;
    }

    v48 = v43 - 1;
    if (!__OFSUB__(v43, 1))
    {
      if ((v48 & 0x8000000000000000) != 0 || v48 >= 3)
      {
        if (v43 != 3)
        {
LABEL_176:
          __break(1u);
          goto LABEL_177;
        }
      }

      else
      {
        v47 = *(&unk_285B48BB8 + 4 * v48 + 4);
        if (v43 != 3)
        {
          if (v43 > 2)
          {
            goto LABEL_182;
          }

          v49 = (&unk_285B48BD8 + 32 * v43);
          v50 = (&unk_285B48BD8 + 32 * v48);
          v51 = *v49;
          v52 = (v20 - v50[1]) / (v49[1] - v50[1]);
          v53 = *(v50 + 4);
          v54 = *(v50 + 6);
          v55 = *(v50 + 7);
          sub_2488A565C();
          sub_2488A564C();
          v57 = v56;
          (*(v11 + 8))(v14, v10);
          v47 = v47 + (v51 - v47) * v57;
        }
      }

      goto LABEL_48;
    }

LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v33 = v29 - 1;
  if (__OFSUB__(v29, 1))
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  if ((v33 & 0x8000000000000000) != 0 || v33 >= 4)
  {
    if (v29 == 4)
    {
      goto LABEL_33;
    }

    goto LABEL_175;
  }

  v168 = *(&unk_285B48B18 + 4 * v33 + 4);
  if (v29 == 4)
  {
    goto LABEL_33;
  }

  if (v29 <= 3)
  {
    v34 = (&unk_285B48B38 + 32 * v29);
    v35 = (&unk_285B48B38 + 32 * v33);
    v36 = *v34;
    v37 = (v20 - v35[1]) / (v34[1] - v35[1]);
    v38 = *(v35 + 4);
    v39 = *(v35 + 6);
    v40 = *(v35 + 7);
    sub_2488A565C();
    sub_2488A564C();
    v42 = v41;
    (*(v11 + 8))(v14, v10);
    v168 = v168 + (v36 - v168) * v42;
    goto LABEL_33;
  }

LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
}

uint64_t sub_24883C484()
{
  if ((*(v0 + 224) & 1) == 0 && (*(v0 + 8) & 0x8000000000000000) == 0)
  {
    *(v0 + 8) = -1;
    v1 = *(v0 + 24);

    *(v0 + 24) = MEMORY[0x277D84F90];
  }

  if ((*(v0 + 226) & 1) == 0 && (*(v0 + 32) & 0x8000000000000000) == 0)
  {
    *(v0 + 32) = -1;
    v3 = *(v0 + 48);

    *(v0 + 48) = MEMORY[0x277D84F90];
  }

  if ((*(v0 + 225) & 1) == 0 && (*(v0 + 56) & 0x8000000000000000) == 0)
  {
    *(v0 + 56) = -1;
    v4 = *(v0 + 72);

    *(v0 + 72) = MEMORY[0x277D84F90];
  }

  if ((*(v0 + 228) & 1) == 0 && (*(v0 + 80) & 0x8000000000000000) == 0)
  {
    *(v0 + 80) = -1;
    v5 = *(v0 + 96);

    *(v0 + 96) = MEMORY[0x277D84F90];
  }

  if ((*(v0 + 229) & 1) == 0 && (*(v0 + 104) & 0x8000000000000000) == 0)
  {
    *(v0 + 104) = -1;
    v6 = *(v0 + 120);

    *(v0 + 120) = MEMORY[0x277D84F90];
  }

  if ((*(v0 + 230) & 1) == 0 && (*(v0 + 128) & 0x8000000000000000) == 0)
  {
    *(v0 + 128) = -1;
    v7 = *(v0 + 144);

    *(v0 + 144) = MEMORY[0x277D84F90];
  }

  if ((*(v0 + 231) & 1) == 0 && (*(v0 + 152) & 0x8000000000000000) == 0)
  {
    *(v0 + 152) = -1;
    v8 = *(v0 + 168);

    *(v0 + 168) = MEMORY[0x277D84F90];
  }

  if ((*(v0 + 232) & 1) == 0 && (*(v0 + 176) & 0x8000000000000000) == 0)
  {
    *(v0 + 176) = -1;
    v9 = *(v0 + 192);

    *(v0 + 192) = MEMORY[0x277D84F90];
  }

  if ((*(v0 + 227) & 1) == 0 && (*(v0 + 200) & 0x8000000000000000) == 0)
  {
    *(v0 + 200) = -1;
    v10 = *(v0 + 216);

    *(v0 + 216) = MEMORY[0x277D84F90];
  }

  *v0 = 0x7FF0000000000000;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  return result;
}

uint64_t sub_24883C634()
{
  v0 = sub_2488A538C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_2488A544C();
  qword_27EEB0FF8 = result;
  return result;
}

uint64_t sub_24883C744(uint64_t a1, uint64_t *a2)
{
  sub_2488A53DC();
  v3 = sub_2488A542C();

  *a2 = v3;
  return result;
}

double sub_24883C798()
{
  sub_2488A520C();
  result = *&v1;
  xmmword_27EEB1028 = v1;
  unk_27EEB1038 = v2;
  byte_27EEB1048 = v3;
  return result;
}

uint64_t sub_24883C800()
{
  v0 = sub_2488A538C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2488A4CDC();
  __swift_allocate_value_buffer(v5, qword_27EEB1058);
  __swift_project_value_buffer(v5, qword_27EEB1058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB10B0, &qword_2488A65B8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2488A6490;
  v7 = *MEMORY[0x277CE0EE0];
  v8 = *(v1 + 104);
  v8(v4, v7, v0);
  sub_2488A544C();
  *(v6 + 32) = sub_2488A559C();
  *(v6 + 40) = v9;
  v8(v4, v7, v0);
  sub_2488A544C();
  *(v6 + 48) = sub_2488A559C();
  *(v6 + 56) = v10;
  sub_2488A55AC();
  sub_2488A4CCC();
}

BOOL sub_24883C9F0(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 == 274)
  {
    v3 = *(a2 + 64);
    v4 = v3 + a3;
    v5 = *(a2 + 56);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = *(a2 + 72);
      v7 = a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 72) = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        a2 = v7;
      }

      else
      {
        v13 = sub_24885890C(0, *(v6 + 2) + 1, 1, v6);
        a2 = v7;
        v6 = v13;
        *(v7 + 72) = v13;
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v14 = sub_24885890C((v9 > 1), v10 + 1, 1, v6);
        a2 = v7;
        v6 = v14;
        a1 = 274;
        *(v7 + 72) = v6;
      }

      else
      {
        a1 = 274;
      }

      v11 = &v6[56 * v10];
      *(v11 + 4) = v4;
      v4 = v4 + 0.0;
      *(v6 + 2) = v10 + 1;
      *(v11 + 40) = xmmword_2488A64A0;
      *(v11 + 7) = v5;
      *(v11 + 8) = v3;
      *(v11 + 72) = xmmword_2488A64B0;
    }

    *(a2 + 56) = 275;
    *(a2 + 64) = v4;
  }

  return a1 == 274;
}

BOOL sub_24883CB54(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 == 276)
  {
    v3 = *(a2 + 112);
    v4 = v3 + a3;
    v5 = *(a2 + 104);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = *(a2 + 120);
      v7 = a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 120) = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        a2 = v7;
      }

      else
      {
        v13 = sub_24885890C(0, *(v6 + 2) + 1, 1, v6);
        a2 = v7;
        v6 = v13;
        *(v7 + 120) = v13;
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v14 = sub_24885890C((v9 > 1), v10 + 1, 1, v6);
        a2 = v7;
        v6 = v14;
        a1 = 276;
        *(v7 + 120) = v6;
      }

      else
      {
        a1 = 276;
      }

      v11 = &v6[56 * v10];
      *(v11 + 4) = v4;
      v4 = v4 + 0.0;
      *(v6 + 2) = v10 + 1;
      *(v11 + 40) = xmmword_2488A64A0;
      *(v11 + 7) = v5;
      *(v11 + 8) = v3;
      *(v11 + 72) = xmmword_2488A64B0;
    }

    *(a2 + 104) = 277;
    *(a2 + 112) = v4;
  }

  return a1 == 276;
}

BOOL sub_24883CC80(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 == 276)
  {
    v3 = *(a2 + 184);
    v4 = v3 + a3;
    v5 = *(a2 + 176);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = *(a2 + 192);
      v7 = a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 192) = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        a2 = v7;
      }

      else
      {
        v13 = sub_24885890C(0, *(v6 + 2) + 1, 1, v6);
        a2 = v7;
        v6 = v13;
        *(v7 + 192) = v13;
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v14 = sub_24885890C((v9 > 1), v10 + 1, 1, v6);
        a2 = v7;
        v6 = v14;
        a1 = 276;
        *(v7 + 192) = v6;
      }

      else
      {
        a1 = 276;
      }

      v11 = &v6[56 * v10];
      *(v11 + 4) = v4;
      v4 = v4 + 0.0;
      *(v6 + 2) = v10 + 1;
      *(v11 + 40) = xmmword_2488A64A0;
      *(v11 + 7) = v5;
      *(v11 + 8) = v3;
      *(v11 + 72) = xmmword_2488A64B0;
    }

    *(a2 + 176) = 277;
    *(a2 + 184) = v4;
  }

  return a1 == 276;
}

BOOL sub_24883CDAC(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 == 276)
  {
    v3 = *(a2 + 88);
    v4 = v3 + a3;
    v5 = *(a2 + 80);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = *(a2 + 96);
      v7 = a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 96) = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        a2 = v7;
      }

      else
      {
        v13 = sub_24885890C(0, *(v6 + 2) + 1, 1, v6);
        a2 = v7;
        v6 = v13;
        *(v7 + 96) = v13;
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v14 = sub_24885890C((v9 > 1), v10 + 1, 1, v6);
        a2 = v7;
        v6 = v14;
        a1 = 276;
        *(v7 + 96) = v6;
      }

      else
      {
        a1 = 276;
      }

      v11 = &v6[56 * v10];
      *(v11 + 4) = v4;
      v4 = v4 + 0.0;
      *(v6 + 2) = v10 + 1;
      *(v11 + 40) = xmmword_2488A64A0;
      *(v11 + 7) = v5;
      *(v11 + 8) = v3;
      *(v11 + 72) = xmmword_2488A64B0;
    }

    *(a2 + 80) = 277;
    *(a2 + 88) = v4;
  }

  return a1 == 276;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

BOOL sub_24883CFBC(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 == 276)
  {
    v3 = *(a2 + 160);
    v4 = v3 + a3;
    v5 = *(a2 + 152);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = *(a2 + 168);
      v7 = a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 168) = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        a2 = v7;
      }

      else
      {
        v13 = sub_24885890C(0, *(v6 + 2) + 1, 1, v6);
        a2 = v7;
        v6 = v13;
        *(v7 + 168) = v13;
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v14 = sub_24885890C((v9 > 1), v10 + 1, 1, v6);
        a2 = v7;
        v6 = v14;
        a1 = 276;
        *(v7 + 168) = v6;
      }

      else
      {
        a1 = 276;
      }

      v11 = &v6[56 * v10];
      *(v11 + 4) = v4;
      v4 = v4 + 0.0;
      *(v6 + 2) = v10 + 1;
      *(v11 + 40) = xmmword_2488A64A0;
      *(v11 + 7) = v5;
      *(v11 + 8) = v3;
      *(v11 + 72) = xmmword_2488A64B0;
    }

    *(a2 + 152) = 284;
    *(a2 + 160) = v4;
  }

  return a1 == 276;
}

void sub_24883D110(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_24883D1A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24883D1E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24883D284(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24883D2CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24883D340()
{
  v0 = sub_2488A495C();
  v29 = *(v0 - 8);
  v30 = v0;
  v1 = *(v29 + 64);
  (MEMORY[0x28223BE20])();
  v28 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2488A49EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v11 = sub_2488A56BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v27 - v17;
  v19 = sub_2488A497C();
  __swift_allocate_value_buffer(v19, qword_27EEB1C28);
  v27[1] = __swift_project_value_buffer(v19, qword_27EEB1C28);
  v20 = v18;
  sub_2488A56AC();
  sub_24883E438();
  v21 = sub_2488A590C();
  if (!v21)
  {
    v21 = [objc_opt_self() mainBundle];
  }

  v22 = v21;
  sub_2488A49DC();
  (*(v12 + 16))(v16, v18, v11);
  (*(v4 + 16))(v8, v10, v3);
  v23 = [v22 bundleURL];
  v27[0] = v3;
  v24 = v23;
  v25 = v28;
  sub_2488A49AC();

  (*(v29 + 104))(v25, *MEMORY[0x277CC9118], v30);
  sub_2488A498C();

  (*(v4 + 8))(v10, v27[0]);
  return (*(v12 + 8))(v20, v11);
}

__n128 sub_24883D6C8@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB10C8, &qword_2488A6728);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-v6];
  v16 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB10D0, &qword_2488A6730);
  sub_24883E5F8(&qword_27EEB10D8, &qword_27EEB10D0, &qword_2488A6730);
  sub_2488A54CC();
  v8 = sub_2488A543C();
  KeyPath = swift_getKeyPath();
  v10 = &v7[*(v4 + 44)];
  *v10 = KeyPath;
  v10[1] = v8;
  sub_2488A55FC();
  sub_2488A4DCC();
  sub_24883E06C(v7, a1);
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB10E0, &qword_2488A6768) + 36);
  v12 = v22;
  *(v11 + 64) = v21;
  *(v11 + 80) = v12;
  *(v11 + 96) = v23;
  v13 = v18;
  *v11 = v17;
  *(v11 + 16) = v13;
  result = v20;
  *(v11 + 32) = v19;
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_24883D8A4@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2488A4F2C();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB10E8, &qword_2488A6770);
  v7 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v9 = (&v45 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB10F0, &qword_2488A6778);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v52 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v55 = &v45 - v15;
  v16 = sub_2488A497C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEB1070 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v16, qword_27EEB1C28);
  (*(v17 + 16))(v20, v21, v16);
  v22 = sub_2488A524C();
  v46 = v23;
  v47 = v22;
  v48 = v24;
  v49 = v25;
  v26 = -(a1[2] * a1[3]);
  *v9 = sub_2488A4F1C();
  v9[1] = v26;
  *(v9 + 16) = 0;
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB10F8, &unk_2488A6780) + 44);
  v29 = *a1;
  v28 = *(a1 + 1);
  v57 = *(a1 + 4);
  v58 = v28;
  v30 = swift_allocObject();
  v31 = *(a1 + 1);
  *(v30 + 16) = *a1;
  *(v30 + 32) = v31;
  *(v30 + 48) = a1[4];
  swift_bridgeObjectRetain_n();

  sub_24883E12C(&v58, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1100, &qword_2488A6790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1108, &qword_2488A6798);
  sub_24883E19C();
  sub_24883E24C();
  sub_24883E358();
  sub_2488A555C();
  v33 = v53;
  v32 = v54;
  v34 = v51;
  (*(v53 + 104))(v51, *MEMORY[0x277CE00F0], v54);
  sub_24883E5F8(&qword_27EEB1150, &qword_27EEB10E8, &qword_2488A6770);
  v35 = v55;
  sub_2488A52BC();
  (*(v33 + 8))(v34, v32);
  sub_24883E3B0(v9);
  v36 = v11[2];
  v37 = v52;
  v36(v52, v35, v10);
  v38 = v47;
  v39 = v10;
  v40 = v46;
  *a2 = v47;
  *(a2 + 8) = v40;
  v41 = v48 & 1;
  *(a2 + 16) = v48 & 1;
  *(a2 + 24) = v49;
  *(a2 + 32) = 0x4014000000000000;
  *(a2 + 40) = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1158, &qword_2488A67B0);
  v36((a2 + *(v42 + 64)), v37, v39);
  sub_24883E418(v38, v40, v41);
  v43 = v11[1];

  v43(v55, v39);
  v43(v37, v39);
  sub_24883E428(v38, v40, v41);
}

double sub_24883DDDC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  v6 = *(*a1 + 32);
  v7 = *(a2 + 32);
  if (v7 >> 62)
  {
LABEL_22:
    v8 = sub_2488A596C();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      v9 = 1;
      goto LABEL_19;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x24C1DB410](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    swift_beginAccess();
    if (*(v10 + 16) == *(v4 + 16) && *(v10 + 24) == *(v4 + 24))
    {
      break;
    }

    v12 = sub_2488A5A8C();

    if (v12)
    {
      goto LABEL_19;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_21;
    }
  }

LABEL_19:
  result = v9;
  *a3 = v4;
  *(a3 + 8) = 0x4030501020607uLL >> (8 * v6);
  *(a3 + 16) = v5;
  *(a3 + 24) = xmmword_2488A6680;
  *(a3 + 40) = v9;
  return result;
}

double sub_24883DF88@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  *&result = sub_24883D6C8(a1).n128_u64[0];
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_24883E014@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2488A4E2C();
  *a1 = result;
  return result;
}

uint64_t sub_24883E040(uint64_t *a1)
{
  v1 = *a1;

  return sub_2488A4E3C();
}

uint64_t sub_24883E06C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB10C8, &qword_2488A6728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24883E0DC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24883E12C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB17F0, &unk_2488A7500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24883E19C()
{
  result = qword_27EEB1110;
  if (!qword_27EEB1110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1100, &qword_2488A6790);
    sub_24883E5F8(&qword_27EEB1118, &qword_27EEB1120, &qword_2488A67A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1110);
  }

  return result;
}

unint64_t sub_24883E24C()
{
  result = qword_27EEB1128;
  if (!qword_27EEB1128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1108, &qword_2488A6798);
    sub_24883E304();
    sub_24883E5F8(&qword_27EEB1138, &qword_27EEB1140, &qword_2488A67A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1128);
  }

  return result;
}

unint64_t sub_24883E304()
{
  result = qword_27EEB1130;
  if (!qword_27EEB1130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1130);
  }

  return result;
}

unint64_t sub_24883E358()
{
  result = qword_27EEB1148;
  if (!qword_27EEB1148)
  {
    type metadata accessor for DSLightweightTagInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1148);
  }

  return result;
}

uint64_t sub_24883E3B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB10E8, &qword_2488A6770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24883E418(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24883E428(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24883E438()
{
  result = qword_27EEB1590;
  if (!qword_27EEB1590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEB1590);
  }

  return result;
}

unint64_t sub_24883E488()
{
  result = qword_27EEB1160;
  if (!qword_27EEB1160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB10E0, &qword_2488A6768);
    sub_24883E514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1160);
  }

  return result;
}

unint64_t sub_24883E514()
{
  result = qword_27EEB1168;
  if (!qword_27EEB1168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB10C8, &qword_2488A6728);
    sub_24883E5F8(&qword_27EEB1170, &qword_27EEB1178, &qword_2488A67B8);
    sub_24883E5F8(&qword_27EEB1180, &qword_27EEB1188, &unk_2488A67C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1168);
  }

  return result;
}

uint64_t sub_24883E5F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_24883E640()
{
  result = [objc_opt_self() defaultValue];
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      qword_27EEB1C40 = result;
      return result;
    }

    result = swift_unknownObjectRelease();
  }

  qword_27EEB1C40 = 0;
  return result;
}

void sub_24883E6EC(uint64_t a1, SEL *a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() *a2];
  v7 = sub_2488A56DC();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

id sub_24883E75C()
{
  result = [objc_opt_self() affectsColorAppearance];
  byte_27EEB1C68 = result;
  return result;
}

uint64_t sub_24883E7E0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t sub_24883E840()
{
  if (qword_27EEB1090 != -1)
  {
    swift_once();
  }

  return byte_27EEB1C68;
}

id sub_24883E898()
{
  sub_24883EC18();
  sub_2488A4EEC();
  result = v2;
  if (!v2)
  {
    v1 = [objc_opt_self() defaultStyleConfiguration];

    return v1;
  }

  return result;
}

uint64_t sub_24883E910@<X0>(void *a1@<X8>)
{
  sub_24883EA9C();
  result = sub_2488A58FC();
  *a1 = v3;
  return result;
}

id sub_24883E970@<X0>(void *a1@<X8>)
{
  if (qword_27EEB1078 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27EEB1C40;
  *a1 = qword_27EEB1C40;

  return v2;
}

uint64_t sub_24883E9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24883EAF0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_24883EA48()
{
  result = qword_27EEB1190;
  if (!qword_27EEB1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1190);
  }

  return result;
}

unint64_t sub_24883EA9C()
{
  result = qword_27EEB1198;
  if (!qword_27EEB1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1198);
  }

  return result;
}

unint64_t sub_24883EAF0()
{
  result = qword_27EEB11A0;
  if (!qword_27EEB11A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB11A8, &unk_2488A6840);
    sub_24883EB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB11A0);
  }

  return result;
}

unint64_t sub_24883EB74()
{
  result = qword_27EEB11B0;
  if (!qword_27EEB11B0)
  {
    sub_24883EBCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB11B0);
  }

  return result;
}

unint64_t sub_24883EBCC()
{
  result = qword_27EEB11B8;
  if (!qword_27EEB11B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEB11B8);
  }

  return result;
}

unint64_t sub_24883EC18()
{
  result = qword_27EEB1860;
  if (!qword_27EEB1860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1860);
  }

  return result;
}

uint64_t LabelColor.description.getter()
{
  v1 = *v0;
  v2 = 2036429383;
  v3 = 6579538;
  if (v1 != 5)
  {
    v3 = 0x65676E61724FLL;
  }

  v4 = 1702194242;
  if (v1 != 3)
  {
    v4 = 0x776F6C6C6559;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E65657247;
  if (v1 != 1)
  {
    v5 = 0x656C70727550;
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

uint64_t LabelColor.debugDescription.getter()
{
  v1 = *v0;
  sub_2488A59EC();

  strcpy(v14, "<LabelColor:");
  BYTE5(v14[1]) = 0;
  HIWORD(v14[1]) = -5120;
  v2 = sub_2488A5A7C();
  MEMORY[0x24C1DB190](v2);

  MEMORY[0x24C1DB190](10016, 0xE200000000000000);
  v3 = 0xE400000000000000;
  v4 = 2036429383;
  v5 = 0xE300000000000000;
  v6 = 6579538;
  if (v1 != 5)
  {
    v6 = 0x65676E61724FLL;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1702194242;
  if (v1 != 3)
  {
    v8 = 0x776F6C6C6559;
    v7 = 0xE600000000000000;
  }

  if (v1 <= 4)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6E65657247;
  if (v1 != 1)
  {
    v10 = 0x656C70727550;
    v9 = 0xE600000000000000;
  }

  if (v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (v1 <= 2)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v1 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x24C1DB190](v11, v12);

  MEMORY[0x24C1DB190](15911, 0xE200000000000000);
  return v14[0];
}

DesktopServicesUI::LabelColor_optional __swiftcall LabelColor.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x605040302010007uLL >> (8 * rawValue);
  if (rawValue >= 8)
  {
    LOBYTE(v2) = 7;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24883EF08()
{
  v1 = *v0;
  sub_2488A5ADC();
  MEMORY[0x24C1DB500](v1 + 1);
  return sub_2488A5AFC();
}

uint64_t sub_24883EF80()
{
  v1 = *v0;
  sub_2488A5ADC();
  MEMORY[0x24C1DB500](v1 + 1);
  return sub_2488A5AFC();
}

UITraitCollection_optional __swiftcall DSFolderIconCustomizationApplicator.initialTraitCollection()()
{
  v0 = 0;
  result.value.super.isa = v0;
  return result;
}

uint64_t sub_24883F054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_248851654();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24883F0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_248851654();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24883F11C()
{
  sub_248851654();
  sub_2488A510C();
  __break(1u);
}

uint64_t sub_24883F194@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_24883F254(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_24883F3BC(v2, v3);
}

uint64_t sub_24883F294()
{
  swift_getKeyPath();
  v4 = v0;
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_24883F35C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_24883F3BC(v2, v3);
}

uint64_t sub_24883F3BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (v6 = *(v2 + 24), (sub_2488A5A8C() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
    sub_2488A4A1C();
  }
}

uint64_t sub_24883F510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

void (*sub_24883F59C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17DesktopServicesUI16DSFolderIconInfo___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  *v4 = v1;
  swift_getKeyPath();
  sub_2488A4A4C();

  v4[7] = sub_24883F144();
  return sub_24883F6D4;
}

uint64_t sub_24883F730@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_24883F808()
{
  swift_getKeyPath();
  v4 = v0;
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_24883F8E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 32) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 40);
      if (sub_2488A5A8C())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A1C();
}

uint64_t sub_24883FA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 40);
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

void (*sub_24883FAD8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17DesktopServicesUI16DSFolderIconInfo___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  *v4 = v1;
  swift_getKeyPath();
  sub_2488A4A4C();

  v4[7] = sub_24883F6E0();
  return sub_24883FC10;
}

uint64_t sub_24883FC6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t keypath_set_3Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_24883FD8C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v2 = *(v0 + 48);
  v1 = *(v4 + 56);

  return v2;
}

uint64_t sub_24883FE6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 48) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 56);
      if (sub_2488A5A8C())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A1C();
}

uint64_t sub_24883FFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 56);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
}

void (*sub_24884005C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17DesktopServicesUI16DSFolderIconInfo___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  *v4 = v1;
  swift_getKeyPath();
  sub_2488A4A4C();

  v4[7] = sub_24883FC1C();
  return sub_248840194;
}

uint64_t sub_2488401F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_2488402B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2488403C4(v4);
}

uint64_t sub_2488402DC()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t sub_248840398(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2488403C4(v4);
}

uint64_t sub_2488403C4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);

  v5 = sub_24884F334(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 64);
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
    sub_2488A4A1C();
  }
}

uint64_t sub_24884050C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 64);
  *(a1 + 64) = a2;
}

void (*sub_248840574(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17DesktopServicesUI16DSFolderIconInfo___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  *v4 = v1;
  swift_getKeyPath();
  sub_2488A4A4C();

  v4[7] = sub_2488401A0();
  return sub_2488406AC;
}

uint64_t sub_24884070C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_2488407F0()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  return *(v0 + 72);
}

uint64_t sub_2488408A4(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 72) == v2)
  {
    *(v1 + 72) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
    sub_2488A4A1C();
  }

  return result;
}

void (*sub_2488409C8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17DesktopServicesUI16DSFolderIconInfo___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  *v4 = v1;
  swift_getKeyPath();
  sub_2488A4A4C();

  v4[7] = sub_2488406B8();
  return sub_248840B00;
}

void sub_248840B0C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_2488A4A3C();

  free(v1);
}

uint64_t sub_248840BA0()
{
  v1 = v0;
  swift_getKeyPath();
  *&v14 = v0;
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v2 = v0[7];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v1[6];
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v15 = MEMORY[0x277D837D0];
    *&v14 = v3;
    *(&v14 + 1) = v2;
    sub_24884F64C(&v14, v13);

    v5 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v5;
    sub_24884FE18(v13, 7174515, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
    return v16;
  }

  else
  {
LABEL_6:
    swift_getKeyPath();
    *&v14 = v1;
    sub_2488A4A2C();

    swift_beginAccess();
    v8 = v1[5];
    if (v8)
    {
      v9 = v1[4];
      v10 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v10 = v9 & 0xFFFFFFFFFFFFLL;
      }

      result = MEMORY[0x277D84F98];
      if (v10)
      {
        v15 = MEMORY[0x277D837D0];
        *&v14 = v9;
        *(&v14 + 1) = v8;
        v11 = MEMORY[0x277D84F98];
        sub_24884F64C(&v14, v13);

        v12 = swift_isUniquelyReferenced_nonNull_native();
        sub_24884FE18(v13, 0x696A6F6D65, 0xE500000000000000, v12);
        return v11;
      }
    }

    else
    {
      return MEMORY[0x277D84F98];
    }
  }

  return result;
}

unint64_t sub_248840DA8()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v1 = *(v0 + 64);
  if (v1 >> 62)
  {
LABEL_18:
    v2 = sub_2488A596C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  while (v2)
  {
    if (__OFSUB__(v2--, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C1DB410](v2, v1);
    }

    else
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(v1 + 32 + 8 * v2);
    }

    v6 = *(v5 + 32);

    if (v6 != 7)
    {
      MEMORY[0x28223BE20](v7);
      v10 = v2;
      sub_24885053C(&v10, &v11);
      v8 = v11;
      goto LABEL_14;
    }
  }

  v8 = 0;
LABEL_14:

  return v8;
}

uint64_t DSFolderIconInfo.__allocating_init(name:symbol:emoji:folderEmpty:tags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  v19 = swift_allocObject();
  sub_2488A4A5C();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 48) = a3;
  *(v19 + 56) = a4;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  *(v19 + 72) = a7;
  *(v19 + 64) = a8;
  return v19;
}

uint64_t DSFolderIconInfo.init(name:symbol:emoji:folderEmpty:tags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 72) = 1;
  sub_2488A4A5C();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v17 = *(v8 + 56);

  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  v18 = *(v8 + 40);

  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 72) = a7;
  *(v8 + 64) = a8;
  return v8;
}

uint64_t DSFolderIconInfo.__allocating_init(name:dictionary:folderEmpty:tags:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(v6 + 48);
  v13 = *(v6 + 52);
  v14 = swift_allocObject();
  sub_2488A4A5C();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = *(a3 + 16);
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = sub_24884F6E0(7174515, 0xE300000000000000);
  if ((v17 & 1) == 0)
  {
    v15 = 0;
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  sub_24885055C(*(a3 + 56) + 32 * v16, v28);
  v18 = swift_dynamicCast();
  v15 = v26;
  v19 = v27;
  if (!v18)
  {
    v15 = 0;
    v19 = 0;
  }

LABEL_7:
  *(v14 + 48) = v15;
  *(v14 + 56) = v19;
  if (*(a3 + 16) && (v20 = sub_24884F6E0(0x696A6F6D65, 0xE500000000000000), (v21 & 1) != 0))
  {
    sub_24885055C(*(a3 + 56) + 32 * v20, v28);

    v22 = swift_dynamicCast();
    v23 = v26;
    v24 = v27;
    if (!v22)
    {
      v23 = 0;
      v24 = 0;
    }
  }

  else
  {

    v23 = 0;
    v24 = 0;
  }

  *(v14 + 32) = v23;
  *(v14 + 40) = v24;
  *(v14 + 72) = a4 & 1;
  *(v14 + 64) = a5;
  return v14;
}

uint64_t DSFolderIconInfo.init(name:dictionary:folderEmpty:tags:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 72) = 1;
  sub_2488A4A5C();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  if (*(a3 + 16) && (v12 = sub_24884F6E0(7174515, 0xE300000000000000), (v13 & 1) != 0))
  {
    sub_24885055C(*(a3 + 56) + 32 * v12, v27);
    v14 = swift_dynamicCast();
    if (v14)
    {
      v15 = v25;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v26;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v17 = *(v6 + 56);

  *(v6 + 48) = v15;
  *(v6 + 56) = v16;
  if (*(a3 + 16) && (v18 = sub_24884F6E0(0x696A6F6D65, 0xE500000000000000), (v19 & 1) != 0))
  {
    sub_24885055C(*(a3 + 56) + 32 * v18, v27);

    v20 = swift_dynamicCast();
    if (v20)
    {
      v21 = v25;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v26;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {

    v21 = 0;
    v22 = 0;
  }

  v23 = *(v6 + 40);

  *(v6 + 32) = v21;
  *(v6 + 40) = v22;
  *(v6 + 72) = a4 & 1;
  *(v6 + 64) = a5;
  return v6;
}

uint64_t DSFolderIconInfo.__allocating_init(name:symbol:emoji:tags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  *(v17 + 72) = 1;
  sub_2488A4A5C();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 48) = a3;
  *(v17 + 56) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  *(v17 + 64) = a7;
  return v17;
}

uint64_t DSFolderIconInfo.init(name:symbol:emoji:tags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 72) = 1;
  sub_2488A4A5C();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v15 = *(v7 + 56);

  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  v16 = *(v7 + 40);

  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 64) = a7;
  return v7;
}

uint64_t DSFolderIconInfo.__allocating_init(name:dictionary:tags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  DSFolderIconInfo.init(name:dictionary:tags:)(a1, a2, a3, a4);
  return v11;
}

uint64_t DSFolderIconInfo.init(name:dictionary:tags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 72) = 1;
  sub_2488A4A5C();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  if (*(a3 + 16) && (v10 = sub_24884F6E0(7174515, 0xE300000000000000), (v11 & 1) != 0))
  {
    sub_24885055C(*(a3 + 56) + 32 * v10, v25);
    v12 = swift_dynamicCast();
    if (v12)
    {
      v13 = v23;
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = v24;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v15 = *(v5 + 56);

  *(v5 + 48) = v13;
  *(v5 + 56) = v14;
  if (*(a3 + 16) && (v16 = sub_24884F6E0(0x696A6F6D65, 0xE500000000000000), (v17 & 1) != 0))
  {
    sub_24885055C(*(a3 + 56) + 32 * v16, v25);

    v18 = swift_dynamicCast();
    if (v18)
    {
      v19 = v23;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = v24;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {

    v19 = 0;
    v20 = 0;
  }

  v21 = *(v5 + 40);

  *(v5 + 32) = v19;
  *(v5 + 40) = v20;
  *(v5 + 64) = a4;
  return v5;
}

uint64_t sub_248841698()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getKeyPath();

  sub_2488A4A2C();

  swift_beginAccess();
  v3 = *(v0 + 56);
  v15 = *(v0 + 48);
  swift_getKeyPath();

  sub_2488A4A2C();

  swift_beginAccess();
  v4 = *(v0 + 40);
  v14 = *(v0 + 32);
  swift_getKeyPath();

  sub_2488A4A2C();

  swift_beginAccess();
  v5 = *(v0 + 72);
  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  v6 = *(v0 + 64);
  v7 = type metadata accessor for DSFolderIconInfo(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();

  sub_2488A4A5C();
  *&v12 = v14;
  *&v11 = v15;
  *(&v12 + 1) = v4;
  *(&v11 + 1) = v3;
  *(v10 + 16) = v2;
  *(v10 + 24) = v1;
  *(v10 + 32) = v12;
  *(v10 + 48) = v11;
  *(v10 + 72) = v5;
  *(v10 + 64) = v6;
  return v10;
}

uint64_t sub_248841900(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  swift_getKeyPath();

  sub_2488A4A2C();

  swift_beginAccess();
  v6 = *(v1 + 56);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    if (v5 == *(v1 + 48) && v4 == v6)
    {
    }

    else
    {
      v7 = sub_2488A5A8C();

      if ((v7 & 1) == 0)
      {
        goto LABEL_54;
      }
    }
  }

  else if (v6)
  {
    goto LABEL_54;
  }

  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  swift_getKeyPath();

  sub_2488A4A2C();

  swift_beginAccess();
  v10 = *(v2 + 40);
  if (!v8)
  {
    if (!v10)
    {
      goto LABEL_18;
    }

LABEL_54:
    v20 = 1;
    return v20 & 1;
  }

  if (!v10)
  {
LABEL_14:

    goto LABEL_54;
  }

  if (v9 == *(v2 + 32) && v8 == v10)
  {

    goto LABEL_18;
  }

  v11 = sub_2488A5A8C();

  if ((v11 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_18:
  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  v12 = *(a1 + 72);
  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  if (v12 != *(v2 + 72))
  {
    goto LABEL_54;
  }

  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  v13 = *(a1 + 64);
  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_21;
    }

LABEL_29:
    v15 = 0;
    goto LABEL_30;
  }

  if (v13 < 0)
  {
    v16 = *(a1 + 64);
  }

  result = sub_2488A596C();
  if (!result)
  {
    goto LABEL_29;
  }

LABEL_21:
  v15 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_48;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_48:

    v15 = MEMORY[0x24C1DB410](v15, v13);

    goto LABEL_30;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_50:
    __break(1u);
LABEL_51:

    v17 = MEMORY[0x24C1DB410](v2, v13);

    if (v15)
    {
LABEL_37:
      if (v17)
      {
        swift_beginAccess();
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        swift_beginAccess();
        if (v18 == *(v17 + 16) && v19 == *(v17 + 24))
        {

          v20 = 0;
        }

        else
        {
          v21 = sub_2488A5A8C();

          v20 = v21 ^ 1;
        }

        return v20 & 1;
      }

      goto LABEL_53;
    }

LABEL_52:
    if (v17)
    {
LABEL_53:

      goto LABEL_54;
    }

LABEL_56:
    v20 = 0;
    return v20 & 1;
  }

  if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_58;
  }

  v15 = *(v13 + 8 * v15 + 32);

LABEL_30:
  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  v13 = *(v2 + 64);
  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_32;
    }

LABEL_45:
    if (v15)
    {
      goto LABEL_53;
    }

    goto LABEL_56;
  }

  if (v13 < 0)
  {
    v22 = *(v2 + 64);
  }

  result = sub_2488A596C();
  if (!result)
  {
    goto LABEL_45;
  }

LABEL_32:
  v2 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_50;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_51;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v2 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v13 + 8 * v2 + 32);

    if (v15)
    {
      goto LABEL_37;
    }

    goto LABEL_52;
  }

LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_248841E68(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_2488A576C();
  return sub_2488A57DC();
}

uint64_t sub_248841EE8(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);

  sub_24883F3BC(v4, v5);
  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  sub_24883F8E8(v6, v7);
  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);

  sub_24883FE6C(v8, v9);
  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  v10 = *(a1 + 72);
  swift_beginAccess();
  if (v10 == *(v2 + 72))
  {
    *(v2 + 72) = v10;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488A4A1C();
  }

  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  v12 = *(a1 + 64);

  return sub_2488403C4(v13);
}

char *DSFolderIconInfo.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 8);

  v5 = OBJC_IVAR____TtC17DesktopServicesUI16DSFolderIconInfo___observationRegistrar;
  v6 = sub_2488A4A6C();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  return v0;
}

uint64_t DSFolderIconInfo.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 8);

  v5 = OBJC_IVAR____TtC17DesktopServicesUI16DSFolderIconInfo___observationRegistrar;
  v6 = sub_2488A4A6C();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t static DSFolderCustomizationController.controller(forFolder:allTags:delegate:retainDelegate:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB11D0, &qword_2488A69C8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = type metadata accessor for FolderCustomizationModel(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  swift_unknownObjectRetain();

  sub_2488444CC(v20, a2, a3, a4, a5);
  sub_248850668();
  sub_2488A4D8C();
  (*(v10 + 16))(v14, v16, v9);
  v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB11E0, &qword_2488A69D0));
  v22 = sub_2488A4FBC();

  (*(v10 + 8))(v16, v9);
  return v22;
}

uint64_t sub_2488424F8@<X0>(uint64_t a1@<X8>)
{
  sub_2488A54DC();
  *(a1 + 16) = v5;
  *(a1 + 32) = 1;
  sub_2488A54DC();
  *(a1 + 40) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = sub_2488A4B8C() & 1;
  *(a1 + 72) = v2;
  *(a1 + 80) = v3 & 1;
  *(a1 + 88) = swift_getKeyPath();
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x4030000000000000;
  type metadata accessor for FolderCustomizationModel(0);
  result = sub_2488A54DC();
  *a1 = v5;
  return result;
}

uint64_t sub_24884261C()
{
  v1 = [v0 topViewController];
  v2 = [v0 viewControllers];
  sub_248853D5C(0, &qword_27EEB11F0, 0x277D75D28);
  v3 = sub_2488A584C();

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    if (v1)
    {
LABEL_13:

      return 0;
    }

    return 1;
  }

  result = sub_2488A596C();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x24C1DB410](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
LABEL_6:
    v6 = v5;

    if (v1)
    {
      if (v6)
      {
        swift_unknownObjectRelease();

        return v1 == v6;
      }

      goto LABEL_13;
    }

    if (v6)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    return 1;
  }

  __break(1u);
  return result;
}

id static DSFolderCustomizationNavigationController.controller(forFolder:allTags:delegate:initialCustomIcon:retainDelegate:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v12 = type metadata accessor for FolderCustomizationModel(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  swift_unknownObjectRetain();

  sub_2488444CC(v15, a2, a3, a4, a6);
  if (a5)
  {
    v16 = a5;
    sub_24884433C(a5);
    sub_24884557C(a1);
  }

  sub_2488424F8(&v24);
  v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB11E8, &qword_2488A69D8));
  v18 = sub_2488A4FBC();
  [v18 setAdditionalSafeAreaInsets_];
  v19 = [objc_allocWithZone(type metadata accessor for DSFolderCustomizationNavigationController()) initWithRootViewController_];
  v20 = [v19 popoverPresentationController];
  if (v20)
  {
    v21 = v20;
    v22 = v19;
    [v21 setDelegate_];
  }

  return v19;
}

id DSFolderCustomizationNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id static DSFolderCustomizationNavigationController.controller(forFolder:allTags:delegate:retainDelegate:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = type metadata accessor for FolderCustomizationModel(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  swift_unknownObjectRetain();

  sub_2488444CC(v12, a2, a3, a4, a5);

  sub_2488424F8(&v20);
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB11E8, &qword_2488A69D8));
  v14 = sub_2488A4FBC();
  [v14 setAdditionalSafeAreaInsets_];
  v15 = [objc_allocWithZone(type metadata accessor for DSFolderCustomizationNavigationController()) initWithRootViewController_];
  v16 = [v15 popoverPresentationController];
  if (v16)
  {
    v17 = v16;
    v18 = v15;
    [v17 setDelegate_];
  }

  return v15;
}

void sub_248842AF4(void *a1, char a2)
{
  v9 = [a1 topViewController];
  v4 = [a1 viewControllers];
  sub_248853D5C(0, &qword_27EEB11F0, 0x277D75D28);
  v5 = sub_2488A584C();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:

    v8 = v9;
    if (v9)
    {
LABEL_16:

      return;
    }

LABEL_19:
    if (*(a1 + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) == 1)
    {

      [a1 setNavigationBarHidden:1 animated:a2 & 1];
    }

    return;
  }

  if (!sub_2488A596C())
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x24C1DB410](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = v9;
  if (v9)
  {
    if (v7)
    {
      swift_unknownObjectRelease();

      if (v9 != v7)
      {
        return;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (!v7)
  {
    goto LABEL_19;
  }

  swift_unknownObjectRelease();
}

void sub_248842D50(uint64_t a1, id a2, char a3)
{
  v6 = [a2 viewControllers];
  sub_248853D5C(0, &qword_27EEB11F0, 0x277D75D28);
  v7 = sub_2488A584C();

  if (v7 >> 62)
  {
    if (sub_2488A596C())
    {
      goto LABEL_3;
    }

LABEL_11:

    return;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x24C1DB410](0, v7);
    swift_unknownObjectRelease();

    if (v9 != a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v8 = *(v7 + 32);

  if (v8 == a1)
  {
LABEL_6:
    if (*(a2 + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) == 1)
    {

      [a2 setNavigationBarHidden:1 animated:a3 & 1];
    }
  }
}

void sub_2488430F8(uint64_t a1, uint64_t a2)
{
  if (a2 != 7)
  {
    v2[OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover] = 0;
    if (sub_24884261C())
    {

      [v2 setNavigationBarHidden:0 animated:0];
    }
  }
}

uint64_t sub_2488431D0()
{
  v0[OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover] = 1;
  result = sub_24884261C();
  if (result)
  {

    return [v0 setNavigationBarHidden:1 animated:0];
  }

  return result;
}

id DSFolderCustomizationNavigationController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id DSFolderCustomizationNavigationController.init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v2[OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover] = 0;
  if (!a1)
  {
    ObjCClassFromMetadata = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  return objc_msgSendSuper2(&v6, sel_initWithNavigationBarClass_toolbarClass_, ObjCClassFromMetadata, v3);
}

id DSFolderCustomizationNavigationController.init(rootViewController:)(void *a1)
{
  v1[OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithRootViewController_, a1);

  return v3;
}

id DSFolderCustomizationNavigationController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2488A56CC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DSFolderCustomizationNavigationController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover] = 0;
  if (a2)
  {
    v5 = sub_2488A56CC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id DSFolderCustomizationNavigationController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DSFolderCustomizationNavigationController.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DSFolderCustomizationNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2488437D8()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v1 = *(v0 + 24);
}

uint64_t sub_24884387C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  *a2 = *(v3 + 24);
}

uint64_t sub_248843928(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
    sub_2488A4A1C();
  }
}

uint64_t sub_248843A5C()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_248843B04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_248843BB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A1C();
}

uint64_t sub_248843C84()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v1 = *(v0 + 64);
}

uint64_t sub_248843D28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  *a2 = *(v3 + 64);
}

uint64_t sub_248843DD4(uint64_t a1)
{
  if (*(v1 + 64) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
    sub_2488A4A1C();
  }
}

id sub_248843F08()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v1 = *(v0 + 72);

  return v1;
}

id sub_248843FB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_248844070(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  sub_248853D5C(0, &qword_27EEB1360, 0x277D755B8);
  v5 = v4;
  v6 = sub_2488A591C();

  if (v6)
  {
    v7 = *(v2 + 72);
    *(v2 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
    sub_2488A4A1C();
  }
}

void *sub_2488441DC()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

id sub_248844284@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v4 = *(v3 + 80);
  *a2 = v4;

  return v4;
}

void sub_24884433C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 80);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
    sub_2488A4A1C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_248853D5C(0, &unk_27EEB1870, 0x277D1B1A8);
  v5 = v4;
  v6 = a1;
  v7 = sub_2488A591C();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 80);
LABEL_8:
  *(v2 + 80) = a1;
}

void *sub_2488444CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  *(v5 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  sub_2488A4A5C();
  *(v5 + 24) = a1;

  *(v5 + 64) = sub_248841698();
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v12 = *(a1 + 64);
  v13 = type metadata accessor for TagModel();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v6[2] = sub_248856104(a2, v12);
  v16 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  v17 = 0;
  v18 = 0;
  v6[9] = v16;
  if (a5)
  {
    swift_unknownObjectRetain();
    v17 = a3;
    v18 = a4;
  }

  v6[6] = v17;
  v6[7] = v18;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  swift_unknownObjectRetain();
  sub_2488A4A1C();

  swift_unknownObjectRelease();
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v21 = *(a4 + 40);
    swift_unknownObjectRetain();
    v22 = v21(ObjectType, a4);
    swift_unknownObjectRelease();
    if (v22)
    {
      sub_24883EA9C();
      sub_2488A58FC();

      if (v6)
      {
        v23 = [v6 tintColor];
        if (v23)
        {
          v24 = v23;
          v25 = [v23 UIColor];

          if (v25)
          {
            v26 = [v25 CGColor];
            v27 = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithCGColor_];

            v28 = v27;
            goto LABEL_11;
          }
        }
      }
    }
  }

  v28 = 0;
LABEL_11:
  sub_248844A38(v28);
  swift_getKeyPath();
  sub_2488A4A2C();

  v29 = v6[3];

  v30 = sub_248841698();

  sub_24884557C(v30);

  if (a3)
  {
    v31 = swift_getObjectType();
    v32 = *(a4 + 32);
    swift_unknownObjectRetain();

    v32(sub_248853DCC, v6, v31, a4);

    swift_unknownObjectRelease_n();
  }

  else
  {
  }

  return v6;
}

uint64_t sub_248844928(uint64_t result)
{
  if (*(v1 + 88) == (result & 1))
  {
    *(v1 + 88) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
    sub_2488A4A1C();
  }

  return result;
}

void sub_248844A38(void *a1)
{
  v3 = *(v1 + 96);
  if (!v3)
  {
    if (!a1)
    {
      v9 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
    sub_2488A4A1C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_248853D5C(0, &qword_27EEB1358, 0x277D1B150);
  v4 = v3;
  v5 = a1;
  v6 = sub_2488A591C();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v1 + 96);
LABEL_8:
  *(v1 + 96) = a1;
  v8 = v5;
  sub_2488451E0(v9);
}

uint64_t sub_248844BF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_2488A58CC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_2488A58AC();

  v6 = sub_2488A589C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  sub_24889D460(0, 0, v3, &unk_2488A7560, v7);
}

uint64_t sub_248844D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_2488A58AC();
  v4[7] = sub_2488A589C();
  v6 = sub_2488A588C();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_248844DDC, v6, v5);
}

uint64_t sub_248844DDC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_248844EE0;

    return sub_24884681C();
  }

  else
  {
    v5 = *(v0 + 56);

    **(v0 + 40) = *(v0 + 80) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_248844EE0()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_248845024, v5, v4);
}

uint64_t sub_248845024()
{
  v1 = *(v0 + 56);

  **(v0 + 40) = *(v0 + 80) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_248845098()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  return *(v0 + 88);
}

uint64_t sub_248845138@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  *a2 = *(v3 + 88);
  return result;
}

void sub_2488451E0(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v4 = *(v1 + 96);
  if (a1)
  {
    if (v4)
    {
      sub_248853D5C(0, &qword_27EEB1358, 0x277D1B150);
      v5 = v4;
      v6 = a1;
      v7 = sub_2488A591C();

      if (v7)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v4)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  sub_2488A4A2C();

  if (*(v2 + 88) == 1)
  {
    swift_getKeyPath();
    sub_2488A4A2C();

    v8 = *(v2 + 24);

    v9 = sub_248841698();

    sub_24884557C(v9);
  }

LABEL_8:
  if (*(v2 + 88) == 1)
  {
    *(v2 + 88) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488A4A1C();
  }
}

void *sub_24884541C()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

id sub_2488454C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v4 = *(v3 + 96);
  *a2 = v4;

  return v4;
}

uint64_t sub_24884557C(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  if (a1)
  {
    swift_getKeyPath();
    v40[7] = a1;
    sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
    sub_2488A4A2C();

    swift_beginAccess();
    v8 = *(a1 + 56);
    v37 = *(a1 + 48);
    swift_getKeyPath();
    v40[4] = a1;
    v35 = v8;

    sub_2488A4A2C();

    swift_beginAccess();
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    swift_getKeyPath();
    v40[1] = a1;

    sub_2488A4A2C();

    swift_beginAccess();
    v11 = *(a1 + 64);
    v40[0] = v11;
    v36 = v7;
    v38 = v9;
    v34 = v10;
    if (v11 >> 62)
    {
LABEL_24:
      v12 = sub_2488A596C();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    while (v12)
    {
      if (__OFSUB__(v12--, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x24C1DB410](v12, v11);
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (v12 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v14 = *(v11 + 32 + 8 * v12);
      }

      v16 = *(v15 + 32);

      if (v16 != 7)
      {
        MEMORY[0x28223BE20](v17);
        *(&v33 - 2) = v40;
        v41 = v12;
        sub_248853F7C(&v41, v39);
        v23 = v39[0];
        goto LABEL_16;
      }
    }

    v23 = 0;
LABEL_16:
    v7 = v36;
    v18 = v2;

    if (v23)
    {
      v22 = *(v23 + 32);
    }

    else
    {
      v22 = 7;
    }

    v20 = v37;
    swift_getKeyPath();
    v39[0] = a1;
    sub_2488A4A2C();

    swift_beginAccess();
    LODWORD(v37) = *(a1 + 72);
    v19 = v34;
    v21 = v35;
  }

  else
  {
    v18 = v1;
    v38 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 7;
    LODWORD(v37) = 1;
  }

  swift_getKeyPath();
  v24 = v18;
  v41 = v18;
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v25 = *(v18 + 96);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v27 = sub_2488A58CC();
  (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
  sub_2488A58AC();
  v28 = v25;

  v29 = sub_2488A589C();
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  *(v30 + 16) = v29;
  *(v30 + 24) = v31;
  *(v30 + 32) = 0;
  *(v30 + 40) = v20;
  *(v30 + 48) = v21;
  *(v30 + 56) = v22;
  *(v30 + 64) = v38;
  *(v30 + 72) = v19;
  *(v30 + 80) = v37;
  *(v30 + 88) = sub_248853AEC;
  *(v30 + 96) = v26;
  *(v30 + 104) = v24;
  sub_24889D1A0(0, 0, v7, &unk_2488A7548, v30);
}

uint64_t sub_248845A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 336) = v19;
  *(v8 + 344) = v20;
  *(v8 + 425) = v17;
  *(v8 + 320) = v16;
  *(v8 + 328) = v18;
  *(v8 + 424) = a7;
  *(v8 + 304) = a6;
  *(v8 + 312) = a8;
  *(v8 + 288) = a4;
  *(v8 + 296) = a5;
  v9 = sub_2488A4ABC();
  *(v8 + 352) = v9;
  v10 = *(v9 - 8);
  *(v8 + 360) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 368) = swift_task_alloc();
  sub_2488A58AC();
  *(v8 + 376) = sub_2488A589C();
  v13 = sub_2488A588C();
  *(v8 + 384) = v13;
  *(v8 + 392) = v12;

  return MEMORY[0x2822009F8](sub_248845B8C, v13, v12);
}

uint64_t sub_248845B8C()
{
  v1 = *(v0 + 288);
  if (v1)
  {
    v2 = *(v0 + 288);
  }

  else
  {
    v3 = qword_2488A7578[*(v0 + 424)];
    if (*(v0 + 304))
    {
      v4 = *(v0 + 296);
      v5 = sub_2488A56CC();
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v0 + 320);
    v7 = [objc_allocWithZone(MEMORY[0x277D1B190]) initWithSymbolName:v5 systemTintColor:v3];

    if (v6)
    {
      v8 = *(v0 + 312);
      v9 = *(v0 + 320);
      v10 = sub_2488A56CC();
    }

    else
    {
      v10 = 0;
    }

    v12 = *(v0 + 360);
    v11 = *(v0 + 368);
    v13 = *(v0 + 352);
    v14 = *(v0 + 425);
    v1 = *(v0 + 288);
    [v7 setEmoji_];

    [v7 setFolderEmpty_];
    sub_2488A4AAC();
    sub_2488A4A8C();
    (*(v12 + 8))(v11, v13);
    v15 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v16 = v7;
    v17 = sub_2488A56CC();

    v2 = [v15 initWithType:v17 iconConfiguration:v16];
  }

  *(v0 + 400) = v2;
  v19 = *(v0 + 328);
  v18 = *(v0 + 336);
  v20 = objc_allocWithZone(MEMORY[0x277D1B1C8]);
  v21 = v1;
  v22 = [v20 initWithSize:90.0 scale:{90.0, 2.0}];
  *(v0 + 408) = v22;
  v19();
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 272;
  *(v0 + 24) = sub_248845E4C;
  v23 = swift_continuation_init();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1868, &qword_2488A7550);
  *(v0 + 416) = v24;
  *(v0 + 200) = v24;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_248846260;
  *(v0 + 168) = &block_descriptor;
  *(v0 + 176) = v23;
  [v2 getCGImageForImageDescriptor:v22 completion:v0 + 144];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_248845E4C()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248845F54, v2, v1);
}

uint64_t sub_248845F54()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = *(v0 + 400);

  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 280;
  *(v0 + 88) = sub_248846070;
  v4 = swift_continuation_init();
  *(v0 + 264) = v2;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_248846260;
  *(v0 + 232) = &block_descriptor_228;
  *(v0 + 240) = v4;
  [v3 getCGImageForImageDescriptor:v1 completion:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_248846070()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248846178, v2, v1);
}

uint64_t sub_248846178()
{
  v1 = v0[47];

  v2 = v0[35];
  if (v2 && (v3 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_], v2, v3))
  {
    v4 = v3;
    v5 = v4;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v5 = 0;
  }

  v7 = v0[50];
  v6 = v0[51];
  v8 = v0[46];
  v9 = v0[43];
  sub_248844070(v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_248846260(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_2488462C4()
{
  v1[4] = v0;
  sub_2488A58AC();
  v1[5] = sub_2488A589C();
  v3 = sub_2488A588C();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_24884635C, v3, v2);
}

uint64_t sub_24884635C()
{
  v1 = v0[4];
  swift_getKeyPath();
  v0[2] = v1;
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v2 = *(v1 + 24);

  v3 = sub_248841698();
  v0[8] = v3;

  sub_24884557C(v4);

  swift_getKeyPath();
  v0[3] = v1;
  sub_2488A4A2C();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v6 = *(v0[4] + 40);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    v14 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_2488465DC;

    return v14(v3, ObjectType, v6);
  }

  else
  {
    v12 = v0[5];

    v13 = v0[1];

    return v13(0);
  }
}

uint64_t sub_2488465DC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_248846790;
  }

  else
  {
    v7 = sub_248846718;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_248846718()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];

  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4(1);
}

uint64_t sub_248846790()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];

  swift_unknownObjectRelease();

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_24884681C()
{
  v1[14] = v0;
  sub_2488A58AC();
  v1[15] = sub_2488A589C();
  v3 = sub_2488A588C();
  v1[16] = v3;
  v1[17] = v2;

  return MEMORY[0x2822009F8](sub_2488468B4, v3, v2);
}

uint64_t sub_2488468B4()
{
  v1 = v0[14];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC17DesktopServicesUI24FolderCustomizationModel___observationRegistrar;
  v0[8] = v1;
  v0[18] = v2;
  v0[19] = sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v4 = *(v0[14] + 40);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    v12 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[21] = v8;
    *v8 = v0;
    v8[1] = sub_248846AAC;

    return v12(ObjectType, v4);
  }

  else
  {
    v10 = v0[15];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_248846AAC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v7 = *(v3 + 136);
  v8 = *(v3 + 128);
  if (v1)
  {
    v9 = sub_248846FB8;
  }

  else
  {
    v9 = sub_248846BF0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_248846BF0()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v5 = v0[14];
  v4 = v0[15];

  swift_getKeyPath();
  v0[9] = v5;
  sub_2488A4A2C();

  v6 = *(v5 + 24);

  LOBYTE(v1) = sub_248841900(v1);

  if (v1)
  {
    v7 = v0[22];
    v8 = v0[14];

    sub_24884557C(v9);
  }

  v10 = v0[22];
  v12 = v0[18];
  v11 = v0[19];
  v13 = v0[14];
  swift_getKeyPath();
  v0[10] = v13;
  sub_2488A4A2C();

  v14 = *(v5 + 24);

  sub_248841EE8(v10);

  v15 = *(v13 + 16);
  swift_getKeyPath();
  v0[11] = v15;
  sub_2488516B0(&qword_27EEB1350, type metadata accessor for TagModel);
  sub_2488A4A2C();

  swift_beginAccess();
  v16 = *(v15 + 40);
  swift_getKeyPath();
  v0[12] = v10;
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);

  sub_2488A4A2C();

  swift_beginAccess();
  v17 = *(v10 + 64);

  v18 = sub_24884F334(v16, v17);

  if ((v18 & 1) == 0)
  {
    v19 = v0[22];
    sub_2488583FC();
    swift_getKeyPath();
    v0[13] = v19;
    sub_2488A4A2C();

    v20 = *(v10 + 64);
    if (v20 >> 62)
    {
      goto LABEL_21;
    }

    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

    if (v21)
    {
      v22 = 0;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x24C1DB410](v22, v20);
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_15:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_21:
            v21 = sub_2488A596C();
            goto LABEL_6;
          }

          v23 = *(v20 + 8 * v22 + 32);

          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_15;
          }
        }

        sub_248856F94(v23, 0, 0);

        ++v22;
      }

      while (v24 != v21);
    }
  }

  v25 = v0[22];
  v26 = v0[20];
  v27 = v0[14];
  v28 = sub_248841698();
  sub_248843DD4(v28);

  swift_unknownObjectRelease();
  v29 = v0[1];

  return v29();
}

uint64_t sub_248846FB8()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[15];

  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_248847030()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_248851954(v0 + 32);
  v3 = *(v0 + 48);
  swift_unknownObjectRelease();
  v4 = *(v0 + 64);

  v5 = OBJC_IVAR____TtC17DesktopServicesUI24FolderCustomizationModel___observationRegistrar;
  v6 = sub_2488A4A6C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_2488470D0()
{
  sub_248847030();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_248847128()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v3 = *(v8 + 24);

  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v4 = *(v3 + 56);

  if (!v4)
  {
    sub_2488A54EC();
    swift_getKeyPath();
    sub_2488A4A2C();

    v5 = *(v9 + 24);

    swift_getKeyPath();
    sub_2488A4A2C();

    swift_beginAccess();
    v6 = *(v5 + 40);

    if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t FolderCustomizationView.init(info:allTags:delegate:)@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_2488A54DC();
  *(a4 + 16) = v15;
  *(a4 + 32) = 1;
  sub_2488A54DC();
  *(a4 + 40) = v15;
  *(a4 + 56) = v16;
  *(a4 + 64) = sub_2488A4B8C() & 1;
  *(a4 + 72) = v8;
  *(a4 + 80) = v9 & 1;
  *(a4 + 88) = swift_getKeyPath();
  *(a4 + 96) = 0;
  *(a4 + 104) = 0x4030000000000000;
  v10 = type metadata accessor for FolderCustomizationModel(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();

  sub_2488444CC(v13, a1, a2, a3, 0);

  sub_2488A54DC();

  result = swift_unknownObjectRelease();
  *a4 = v15;
  return result;
}

uint64_t sub_2488474EC@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v34 = sub_2488A4EDC();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2488A548C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1820, &qword_2488A7520);
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11);
  v35 = &v33 - v13;
  v14 = v1[5];
  v57 = v1[4];
  v58 = v14;
  v59 = v1[6];
  v15 = v1[1];
  v53 = *v1;
  v54 = v15;
  v16 = v1[3];
  v55 = v1[2];
  v56 = v16;
  v43[0] = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  v17 = v46;
  swift_getKeyPath();
  *&v43[0] = v17;
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v18 = *(v17 + 72);

  sub_2488A547C();
  (*(v7 + 104))(v10, *MEMORY[0x277CE0FE0], v6);
  v19 = sub_2488A54BC();

  (*(v7 + 8))(v10, v6);
  sub_2488A55FC();
  sub_2488A4BEC();
  v49 = 0;
  *&v48[22] = v51;
  *&v48[38] = v52;
  *&v48[6] = v50;
  *&v46 = v19;
  *(&v46 + 1) = 0x3FF0000000000000;
  *v47 = 256;
  *&v47[2] = *v48;
  *&v47[18] = *&v48[16];
  *&v47[34] = *&v48[32];
  *&v47[48] = *(&v52 + 1);
  v61 = v59;
  v60 = *(&v58 + 1);
  if (v59 == 1)
  {
    v45 = *(&v58 + 1);
    v20 = *(&v58 + 1);
  }

  else
  {

    sub_2488A58EC();
    v21 = sub_2488A513C();
    sub_2488A4ACC();

    sub_2488A4ECC();
    swift_getAtKeyPath();
    sub_2488532FC(&v60, &qword_27EEB1828, &qword_2488A7528);
    (*(v2 + 8))(v5, v34);
    v20 = v45;
  }

  v39 = v20;
  v22 = swift_allocObject();
  v23 = v58;
  v22[5] = v57;
  v22[6] = v23;
  v22[7] = v59;
  v24 = v54;
  v22[1] = v53;
  v22[2] = v24;
  v25 = v56;
  v22[3] = v55;
  v22[4] = v25;
  sub_248851FE8(&v53, v43);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB1830, &qword_2488A7530);
  v27 = sub_248853D5C(0, &qword_27EEB11B8, 0x277D66AB0);
  v28 = sub_2488539A4();
  v29 = sub_24883EB74();
  v30 = v35;
  sub_2488A535C();

  v43[2] = *&v47[16];
  v43[3] = *&v47[32];
  v44 = *&v47[48];
  v43[0] = v46;
  v43[1] = *v47;
  sub_2488532FC(v43, &unk_27EEB1830, &qword_2488A7530);
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v42 = v29;
  swift_getOpaqueTypeConformance2();
  v31 = v37;
  sub_2488A533C();
  return (*(v36 + 8))(v30, v31);
}

uint64_t sub_248847A94(uint64_t a1, void **a2, __int128 *a3)
{
  v3 = *a2;
  v10 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  v4 = [v3 tintColor];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 UIColor];

    if (v6)
    {
      v7 = [v6 CGColor];
      v8 = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithCGColor_];

      v4 = v8;
    }

    else
    {
      v4 = 0;
    }
  }

  sub_248844A38(v4);
}

uint64_t sub_248847B8C@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1640, &qword_2488A7370);
  v3 = *(v2 - 8);
  v36 = v2;
  v37 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1648, &qword_2488A7378);
  v8 = *(v7 - 8);
  v39 = v7;
  v40 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v35 = v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1650, &qword_2488A7380);
  v12 = *(v11 - 8);
  v41 = v11;
  v42 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v38 = v34 - v14;
  v15 = v1[5];
  v54 = v1[4];
  v55 = v15;
  v56 = v1[6];
  v16 = v1[1];
  v50 = *v1;
  v51 = v16;
  v17 = v1[3];
  v52 = v1[2];
  v53 = v17;
  v18 = sub_2488A4F3C();
  v34[0] = v19;
  v34[1] = v18;
  v57 = *(v1 + 40);
  v58 = *(v1 + 7);
  v48 = *(v1 + 40);
  v49 = *(v1 + 7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1658, &qword_2488A7388);
  sub_2488A550C();
  sub_2488A4F3C();
  sub_2488A523C();
  sub_2488A563C();
  v20 = sub_24883E5F8(&qword_27EEB1660, &qword_27EEB1640, &qword_2488A7370);
  v22 = v35;
  v21 = v36;
  sub_2488A52CC();
  (*(v37 + 8))(v6, v21);
  v45 = v57;
  v46 = v58;
  sub_2488A54EC();
  v23 = swift_allocObject();
  v24 = v55;
  v23[5] = v54;
  v23[6] = v24;
  v23[7] = v56;
  v25 = v51;
  v23[1] = v50;
  v23[2] = v25;
  v26 = v53;
  v23[3] = v52;
  v23[4] = v26;
  sub_248851FE8(&v50, &v45);
  *&v45 = v21;
  *(&v45 + 1) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = MEMORY[0x277D837D0];
  v30 = v38;
  v29 = v39;
  sub_2488A535C();

  (*(v40 + 8))(v22, v29);
  v45 = v54;
  LOBYTE(v46) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1668, &qword_2488A7390);
  sub_2488A4B7C();
  v44 = 1;
  *&v45 = v29;
  *(&v45 + 1) = v28;
  v46 = OpaqueTypeConformance2;
  v47 = MEMORY[0x277D837F8];
  swift_getOpaqueTypeConformance2();
  v31 = v43;
  v32 = v41;
  sub_2488A534C();

  (*(v42 + 8))(v30, v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1670, &qword_2488A7398);
  *(v31 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2488480C4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v37 - v8;
  v10 = *a1;
  v11 = a1[1];
  v12 = *a2;
  v13 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1680, &qword_2488A73A8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2488A68D0;
  v15 = MEMORY[0x277D837D0];
  *(v14 + 32) = v10;
  *(v14 + 40) = v11;
  *(v14 + 88) = v15;
  *(v14 + 56) = v15;
  *(v14 + 64) = v12;
  *(v14 + 72) = v13;
  v46 = *(a3 + 40);
  v47 = *(a3 + 56);
  v39 = *(a3 + 40);
  v40 = *(a3 + 56);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1658, &qword_2488A7388);
  sub_2488A54EC();
  v17 = v43;
  v18 = v44;
  *(v14 + 120) = v15;
  *(v14 + 96) = v17;
  *(v14 + 104) = v18;
  sub_2488A5ACC();

  v19 = sub_248841E68(v12, v13);
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    v37[1] = v16;
    v38 = v9;
    v45 = *a3;
    v39 = *a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
    sub_2488A54EC();
    v23 = v43;
    swift_getKeyPath();
    *&v39 = v23;
    sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
    sub_2488A4A2C();

    v24 = *(v23 + 24);

    sub_24883F8E8(v21, v22);

    v39 = v45;
    sub_2488A54EC();
    v25 = v43;
    swift_getKeyPath();
    *&v39 = v25;
    sub_2488A4A2C();

    v26 = *(v25 + 24);

    swift_beginAccess();
    if (*(v26 + 56))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v37[-3] = 0;
      v37[-2] = 0;
      v37[-4] = v26;
      *&v39 = v26;
      sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
      sub_2488A4A1C();
    }

    else
    {
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
    }

    v29 = v38;
    v39 = *(a3 + 64);
    LOBYTE(v40) = *(a3 + 80);
    LOBYTE(v41) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1668, &qword_2488A7390);
    sub_2488A4B6C();
    v39 = v46;
    v40 = v47;
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_2488A54FC();
    v30 = sub_2488A58CC();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    sub_2488A58AC();
    sub_248851FE8(a3, &v39);
    v31 = sub_2488A589C();
    v32 = swift_allocObject();
    v33 = MEMORY[0x277D85700];
    *(v32 + 16) = v31;
    *(v32 + 24) = v33;
    v34 = *(a3 + 80);
    *(v32 + 96) = *(a3 + 64);
    *(v32 + 112) = v34;
    *(v32 + 128) = *(a3 + 96);
    v35 = *(a3 + 16);
    *(v32 + 32) = *a3;
    *(v32 + 48) = v35;
    v36 = *(a3 + 48);
    *(v32 + 64) = *(a3 + 32);
    *(v32 + 80) = v36;
    sub_24889D734(0, 0, v29, &unk_2488A73B8, v32);
  }

  else
  {
    v39 = v46;
    v40 = v47;
    v43 = 0;
    v44 = 0xE000000000000000;
    return sub_2488A54FC();
  }
}

uint64_t sub_248848618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_2488A58AC();
  v4[7] = sub_2488A589C();
  v6 = sub_2488A588C();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_2488486B0, v6, v5);
}

uint64_t sub_2488486B0()
{
  *(v0 + 16) = **(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  *(v0 + 80) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_248848770;

  return sub_2488462C4();
}

uint64_t sub_248848770(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 96) = a1;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_2488488BC, v6, v5);
}

uint64_t sub_2488488BC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);

  *v3 = v1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_248848928@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v158 = a2;
  v154 = sub_2488A495C();
  v152 = *(v154 - 8);
  v3 = *(v152 + 64);
  MEMORY[0x28223BE20](v154);
  v155 = v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_2488A49EC();
  v153 = *(v157 - 8);
  v5 = *(v153 + 64);
  v6 = MEMORY[0x28223BE20](v157);
  v146 = v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v148 = v121 - v8;
  v165 = sub_2488A56BC();
  v144 = *(v165 - 8);
  v9 = *(v144 + 64);
  v10 = MEMORY[0x28223BE20](v165);
  v139 = v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v159 = v121 - v12;
  v151 = sub_2488A497C();
  v150 = *(v151 - 8);
  v13 = *(v150 + 64);
  v14 = MEMORY[0x28223BE20](v151);
  v138 = v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v142 = v121 - v16;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14D8, &qword_2488A7268);
  v131 = *(v130 - 8);
  v17 = *(v131 + 64);
  MEMORY[0x28223BE20](v130);
  v129 = v121 - v18;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14E0, &qword_2488A7270);
  v19 = *(*(v134 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v134);
  v164 = v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v137 = v121 - v22;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14E8, &qword_2488A7278);
  v23 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v143 = v121 - v24;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14F0, &qword_2488A7280);
  v145 = *(v149 - 8);
  v25 = *(v145 + 64);
  MEMORY[0x28223BE20](v149);
  v141 = v121 - v26;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14F8, &qword_2488A7288);
  v27 = *(*(v135 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v135);
  v156 = v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v136 = v121 - v31;
  MEMORY[0x28223BE20](v30);
  v147 = v121 - v32;
  v163 = sub_2488A504C();
  v167 = *(v163 - 8);
  v33 = *(v167 + 64);
  MEMORY[0x28223BE20](v163);
  v162 = v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_2488A546C();
  v166 = *(v161 - 8);
  v35 = *(v166 + 64);
  MEMORY[0x28223BE20](v161);
  v160 = v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1500, &qword_2488A7290);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = v121 - v40;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1508, &qword_2488A7298);
  v42 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v44 = v121 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1510, &qword_2488A72A0);
  v46 = *(v45 - 8);
  v132 = (v45 - 8);
  v47 = *(v46 + 64);
  v48 = MEMORY[0x28223BE20](v45 - 8);
  v133 = v121 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v51 = v121 - v50;
  v52 = swift_allocObject();
  v53 = a1[5];
  v52[5] = a1[4];
  v52[6] = v53;
  v52[7] = a1[6];
  v54 = a1[1];
  v52[1] = *a1;
  v52[2] = v54;
  v55 = a1[3];
  v52[3] = a1[2];
  v52[4] = v55;
  sub_248851FE8(a1, &v169);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1518, &qword_2488A72A8);
  v121[0] = MEMORY[0x277CE1138];
  sub_24883E5F8(&qword_27EEB1520, &qword_27EEB1518, &qword_2488A72A8);
  sub_2488A551C();
  sub_24883E5F8(&qword_27EEB1528, &qword_27EEB1500, &qword_2488A7290);
  sub_2488A533C();
  (*(v38 + 8))(v41, v37);
  v56 = a1[5];
  v173 = a1[4];
  v174 = v56;
  v175 = a1[6];
  v57 = a1[1];
  v169 = *a1;
  v170 = v57;
  v58 = a1[3];
  v171 = a1[2];
  v172 = v58;
  LOBYTE(v37) = sub_248847128();
  KeyPath = swift_getKeyPath();
  v60 = swift_allocObject();
  *(v60 + 16) = v37 & 1;
  v61 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1530, &qword_2488A72E0) + 36)];
  *v61 = KeyPath;
  v61[1] = sub_248852220;
  v61[2] = v60;
  sub_2488A55FC();
  sub_2488A4BEC();
  v62 = &v44[*(v128 + 36)];
  v63 = v177;
  *v62 = v176;
  *(v62 + 1) = v63;
  *(v62 + 2) = v178;
  v64 = v160;
  sub_2488A545C();
  v65 = v162;
  sub_2488A503C();
  sub_248852238();
  v66 = sub_2488516B0(&qword_27EEB1570, MEMORY[0x277CE0638]);
  v67 = v64;
  v68 = v163;
  v128 = v66;
  sub_2488A529C();
  v69 = *(v167 + 8);
  v167 += 8;
  v127 = v69;
  v69(v65, v68);
  v70 = *(v166 + 8);
  v166 += 8;
  v126 = v70;
  v70(v67, v161);
  sub_2488532FC(v44, &qword_27EEB1508, &qword_2488A7298);
  v71 = *(v132 + 11);
  v132 = v51;
  v72 = &v51[v71];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1470, &qword_2488A7220);
  v74 = &v72[*(v73 + 40)];
  sub_2488A4DDC();
  v75 = *MEMORY[0x277CE0118];
  v76 = sub_2488A4F4C();
  v77 = *(v76 - 8);
  v78 = *(v77 + 104);
  v124 = v75;
  v123 = v76;
  v122 = v78;
  v121[1] = v77 + 104;
  (v78)(v72, v75);
  v125 = v73;
  v72[*(v73 + 36)] = 0;
  v79 = swift_allocObject();
  v80 = a1[5];
  v79[5] = a1[4];
  v79[6] = v80;
  v79[7] = a1[6];
  v81 = a1[1];
  v79[1] = *a1;
  v79[2] = v81;
  v82 = a1[3];
  v79[3] = a1[2];
  v79[4] = v82;
  v168 = a1;
  sub_248851FE8(a1, &v169);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1578, &qword_2488A72F8);
  sub_24883E5F8(&qword_27EEB1580, &qword_27EEB1578, &qword_2488A72F8);
  v83 = v129;
  sub_2488A551C();
  sub_24883E5F8(&qword_27EEB1588, &qword_27EEB14D8, &qword_2488A7268);
  v84 = v130;
  sub_2488A533C();
  (*(v131 + 8))(v83, v84);
  v85 = v159;
  sub_2488A56AC();
  sub_248853D5C(0, &qword_27EEB1590, 0x277CCA8D8);
  v86 = sub_2488A590C();
  if (!v86)
  {
    v86 = [objc_opt_self() mainBundle];
  }

  v87 = v86;
  v88 = v148;
  sub_2488A49DC();
  v89 = v144;
  (*(v144 + 16))(v139, v85, v165);
  v90 = v153;
  v91 = v157;
  (*(v153 + 16))(v146, v88, v157);
  v92 = [v87 bundleURL];
  v93 = v155;
  sub_2488A49AC();

  (*(v152 + 104))(v93, *MEMORY[0x277CC9118], v154);
  v94 = v142;
  sub_2488A498C();

  (*(v90 + 8))(v88, v91);
  (*(v89 + 8))(v159, v165);
  v95 = v150;
  v96 = v151;
  (*(v150 + 16))(v138, v94, v151);
  v97 = sub_2488A524C();
  v99 = v98;
  LOBYTE(v93) = v100;
  v101 = v137;
  v102 = v164;
  sub_2488A4D5C();
  sub_24883E428(v97, v99, v93 & 1);

  (*(v95 + 8))(v94, v96);
  sub_2488532FC(v102, &qword_27EEB14E0, &qword_2488A7270);
  sub_2488A55FC();
  sub_2488A4BEC();
  v103 = v143;
  sub_2488533E4(v101, v143, &qword_27EEB14E0, &qword_2488A7270);
  v104 = (v103 + *(v140 + 36));
  v105 = v170;
  *v104 = v169;
  v104[1] = v105;
  v104[2] = v171;
  v106 = v160;
  sub_2488A545C();
  v107 = v162;
  sub_2488A503C();
  sub_248852474();
  v108 = v141;
  v109 = v163;
  sub_2488A529C();
  v127(v107, v109);
  v126(v106, v161);
  sub_2488532FC(v103, &qword_27EEB14E8, &qword_2488A7278);
  v110 = v136;
  v111 = &v136[*(v135 + 36)];
  v112 = v125;
  v113 = &v111[*(v125 + 40)];
  sub_2488A4DDC();
  v122(v111, v124, v123);
  v111[*(v112 + 36)] = 0;
  (*(v145 + 32))(v110, v108, v149);
  v114 = v147;
  sub_2488533E4(v110, v147, &qword_27EEB14F8, &qword_2488A7288);
  v115 = v132;
  v116 = v133;
  sub_2488527B8(v132, v133, &qword_27EEB1510, &qword_2488A72A0);
  v117 = v156;
  sub_2488527B8(v114, v156, &qword_27EEB14F8, &qword_2488A7288);
  v118 = v158;
  sub_2488527B8(v116, v158, &qword_27EEB1510, &qword_2488A72A0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB15A8, &qword_2488A7300);
  sub_2488527B8(v117, v118 + *(v119 + 48), &qword_27EEB14F8, &qword_2488A7288);
  sub_2488532FC(v114, &qword_27EEB14F8, &qword_2488A7288);
  sub_2488532FC(v115, &qword_27EEB1510, &qword_2488A72A0);
  sub_2488532FC(v117, &qword_27EEB14F8, &qword_2488A7288);
  return sub_2488532FC(v116, &qword_27EEB1510, &qword_2488A72A0);
}

uint64_t sub_248849BBC(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v22[0] = v22 - v4;
  v26 = *a1;
  v23[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  v5 = v25;
  swift_getKeyPath();
  v6 = &qword_27EEB1000;
  *&v23[0] = v5;
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v7 = *(v5 + 24);

  swift_beginAccess();
  if (*(v7 + 40))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v22[-3] = 0;
    v22[-2] = 0;
    v22[-4] = v7;
    *&v23[0] = v7;
    sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
    sub_2488A4A1C();

    v6 = &qword_27EEB1000;
  }

  else
  {
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
  }

  v23[0] = v26;
  sub_2488A54EC();
  v9 = v24;
  swift_getKeyPath();
  v10 = v6[96];
  *&v23[0] = v9;
  sub_2488A4A2C();

  v11 = *(v9 + 24);

  swift_beginAccess();
  if (*(v11 + 56))
  {
    v12 = swift_getKeyPath();
    MEMORY[0x28223BE20](v12);
    v22[-3] = 0;
    v22[-2] = 0;
    v22[-4] = v11;
    *&v23[0] = v11;
    sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
    sub_2488A4A1C();
  }

  else
  {
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
  }

  v13 = sub_2488A58CC();
  v14 = v22[0];
  (*(*(v13 - 8) + 56))(v22[0], 1, 1, v13);
  sub_2488A58AC();
  sub_248851FE8(a1, v23);
  v15 = sub_2488A589C();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  v18 = a1[5];
  *(v16 + 96) = a1[4];
  *(v16 + 112) = v18;
  *(v16 + 128) = a1[6];
  v19 = a1[1];
  *(v16 + 32) = *a1;
  *(v16 + 48) = v19;
  v20 = a1[3];
  *(v16 + 64) = a1[2];
  *(v16 + 80) = v20;
  sub_24889D734(0, 0, v14, &unk_2488A73C8, v16);
}

uint64_t sub_24884A05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_2488A58AC();
  v4[7] = sub_2488A589C();
  v6 = sub_2488A588C();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_24884A0F4, v6, v5);
}

uint64_t sub_24884A0F4()
{
  *(v0 + 16) = **(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  *(v0 + 80) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_24884A1B4;

  return sub_2488462C4();
}

uint64_t sub_24884A1B4(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 96) = a1;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_248853F0C, v6, v5);
}

__n128 sub_24884A300@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_2488A4F1C();
  sub_24884A39C(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  v4[71] = v6;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 81) = *&v4[64];
  *(a1 + 17) = *v4;
  return result;
}

uint64_t sub_24884A39C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2488A495C();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2488A49EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v13 = sub_2488A56BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v21 = sub_2488A497C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v39 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v20;
  sub_2488A56AC();
  sub_248853D5C(0, &qword_27EEB1590, 0x277CCA8D8);
  v25 = sub_2488A590C();
  if (!v25)
  {
    v25 = [objc_opt_self() mainBundle];
  }

  v26 = v25;
  sub_2488A49DC();
  (*(v14 + 16))(v18, v24, v13);
  (*(v6 + 16))(v10, v12, v5);
  v27 = [v26 bundleURL];
  v37 = v5;
  v38 = v13;
  v28 = v27;
  v29 = v40;
  sub_2488A49AC();

  (*(v41 + 104))(v29, *MEMORY[0x277CC9118], v42);
  sub_2488A498C();

  (*(v6 + 8))(v12, v37);
  (*(v14 + 8))(v24, v38);
  v30 = sub_2488A524C();
  v32 = v31;
  v45 = 1;
  v34 = v33 & 1;
  v44 = v33 & 1;
  v43 = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v30;
  *(a1 + 24) = v31;
  *(a1 + 32) = v33 & 1;
  *(a1 + 40) = v35;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  sub_24883E418(v30, v31, v33 & 1);

  sub_24883E428(v30, v32, v34);
}

uint64_t sub_24884A7C4(uint64_t a1)
{
  v3 = *(a1 + 64);
  v5 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1668, &qword_2488A7390);
  sub_2488A4B5C();
  v4 = *(a1 + 64);
  v6 = *(a1 + 80);
  return sub_2488A4B6C();
}

uint64_t sub_24884A858@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2488A4F1C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB15B0, &qword_2488A7308);
  return sub_24884A8B0(a1, a2 + *(v4 + 44));
}

uint64_t sub_24884A8B0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB15B8, &qword_2488A7310);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v16 - v9);
  *v10 = sub_2488A55FC();
  v10[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB15C0, &qword_2488A7318);
  sub_24884AA14(a1, v10 + *(v12 + 44));
  sub_2488527B8(v10, v8, &qword_27EEB15B8, &qword_2488A7310);
  *a2 = 0;
  *(a2 + 8) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB15C8, &qword_2488A7320);
  sub_2488527B8(v8, a2 + *(v13 + 48), &qword_27EEB15B8, &qword_2488A7310);
  v14 = a2 + *(v13 + 64);
  *v14 = 0;
  *(v14 + 8) = 1;
  sub_2488532FC(v10, &qword_27EEB15B8, &qword_2488A7310);
  return sub_2488532FC(v8, &qword_27EEB15B8, &qword_2488A7310);
}

uint64_t sub_24884AA14@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB15D0, &qword_2488A7328);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB15D8, &qword_2488A7330);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = a1[5];
  v40 = a1[4];
  v41 = v19;
  v42 = a1[6];
  v20 = a1[1];
  v36 = *a1;
  v37 = v20;
  v21 = a1[3];
  v38 = a1[2];
  v39 = v21;
  sub_248847B8C(&v33 - v17);
  v22 = sub_2488A516C();
  sub_2488A4B4C();
  v23 = &v18[*(v12 + 44)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB15E0, &qword_2488A7338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB15E8, &qword_2488A7340);
  sub_248852748(&qword_27EEB15F0, &qword_27EEB15E0, &qword_2488A7338);
  sub_2488525F0();
  sub_2488A54CC();
  v33 = v16;
  sub_2488527B8(v18, v16, &qword_27EEB15D8, &qword_2488A7330);
  v28 = v4[2];
  v28(v8, v10, v3);
  v29 = v34;
  sub_2488527B8(v16, v34, &qword_27EEB15D8, &qword_2488A7330);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1630, &qword_2488A7360);
  v28((v29 + *(v30 + 48)), v8, v3);
  v31 = v4[1];
  v31(v10, v3);
  sub_2488532FC(v18, &qword_27EEB15D8, &qword_2488A7330);
  v31(v8, v3);
  return sub_2488532FC(v33, &qword_27EEB15D8, &qword_2488A7330);
}

uint64_t sub_24884AD58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2488A495C();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2488A49EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v13 = sub_2488A56BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  v21 = sub_2488A497C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v46 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v20;
  sub_2488A56AC();
  sub_248853D5C(0, &qword_27EEB1590, 0x277CCA8D8);
  v25 = sub_2488A590C();
  if (!v25)
  {
    v25 = [objc_opt_self() mainBundle];
  }

  v26 = v25;
  sub_2488A49DC();
  (*(v14 + 16))(v18, v24, v13);
  (*(v6 + 16))(v10, v12, v5);
  v27 = [v26 bundleURL];
  v44 = v5;
  v45 = v13;
  v28 = v27;
  v29 = v47;
  sub_2488A49AC();

  (*(v48 + 104))(v29, *MEMORY[0x277CC9118], v49);
  sub_2488A498C();

  (*(v6 + 8))(v12, v44);
  (*(v14 + 8))(v24, v45);
  v30 = sub_2488A524C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = sub_2488A516C();
  result = sub_2488A4B4C();
  *a1 = v30;
  *(a1 + 8) = v32;
  *(a1 + 16) = v34 & 1;
  *(a1 + 24) = v36;
  *(a1 + 32) = v37;
  *(a1 + 40) = v39;
  *(a1 + 48) = v40;
  *(a1 + 56) = v41;
  *(a1 + 64) = v42;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_24884B160(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1638, &qword_2488A7368);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1628, &qword_2488A7358);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v31 - v8;
  v31[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  v10 = v34;
  swift_getKeyPath();
  *&v31[0] = v10;
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v11 = *(v10 + 24);

  swift_getKeyPath();
  *&v31[0] = v11;
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v13 = *(v11 + 32);
  v12 = *(v11 + 40);

  if (v12)
  {
    *&v31[0] = v13;
    *(&v31[0] + 1) = v12;
    sub_2488519D0();
    v14 = sub_2488A525C();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    sub_2488A55FC();
    sub_2488A4DCC();
    v21 = v18 & 1;
    v32 = v18 & 1;
    v22 = sub_2488A516C();
    sub_2488A4B4C();
    v33 = 0;
    *v5 = v14;
    *(v5 + 1) = v16;
    v5[16] = v21;
    *(v5 + 3) = v20;
    v23 = v31[5];
    *(v5 + 6) = v31[4];
    *(v5 + 7) = v23;
    *(v5 + 8) = v31[6];
    v24 = v31[1];
    *(v5 + 2) = v31[0];
    *(v5 + 3) = v24;
    v25 = v31[3];
    *(v5 + 4) = v31[2];
    *(v5 + 5) = v25;
    v5[144] = v22;
    *(v5 + 19) = v26;
    *(v5 + 20) = v27;
    *(v5 + 21) = v28;
    *(v5 + 22) = v29;
    v5[184] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1608, &qword_2488A7348);
    sub_24885269C();
    sub_24885302C(&qword_27EEB1620, &qword_27EEB1628, &qword_2488A7358);
    return sub_2488A4FCC();
  }

  else
  {
    *&v31[0] = sub_2488A549C();
    sub_2488A531C();

    sub_2488527B8(v9, v5, &qword_27EEB1628, &qword_2488A7358);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1608, &qword_2488A7348);
    sub_24885269C();
    sub_24885302C(&qword_27EEB1620, &qword_27EEB1628, &qword_2488A7358);
    sub_2488A4FCC();
    return sub_2488532FC(v9, &qword_27EEB1628, &qword_2488A7358);
  }
}

uint64_t FolderCustomizationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v8[4] = v1[4];
  v8[5] = v3;
  v8[6] = v1[6];
  v4 = v1[1];
  v8[0] = *v1;
  v8[1] = v4;
  v5 = v1[3];
  v8[2] = v1[2];
  v8[3] = v5;
  *a1 = sub_2488A4FAC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1200, &qword_2488A6A08);
  return sub_24884B640(v8, (a1 + *(v6 + 44)));
}

uint64_t sub_24884B640@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v147 = a2;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1368, &qword_2488A7100);
  v157 = *(v146 - 8);
  v3 = v157[8];
  v4 = MEMORY[0x28223BE20](v146);
  v145 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v155 = &v124 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1370, &qword_2488A7108);
  v8 = *(v7 - 8);
  v144 = v7 - 8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v156 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v151 = &v124 - v12;
  v13 = sub_2488A508C();
  v137 = *(v13 - 8);
  v138 = v13;
  v14 = *(v137 + 64);
  MEMORY[0x28223BE20](v13);
  v136 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1378, &qword_2488A7110);
  v16 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v134 = &v124 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1380, &qword_2488A7118);
  v19 = *(v18 - 8);
  v139 = v18 - 8;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18 - 8);
  v153 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v149 = &v124 - v23;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1388, &qword_2488A7120);
  v24 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v132 = &v124 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1390, &qword_2488A7128);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v152 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v158 = &v124 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1398, &qword_2488A7130);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v150 = &v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v124 - v35;
  v154 = &v124 - v35;
  sub_2488A55FC();
  sub_2488A4BEC();
  v142 = v173;
  v143 = v171;
  v140 = v176;
  v141 = v175;
  v197 = 1;
  v196 = v172;
  v195 = v174;
  v37 = a1[5];
  v168 = a1[4];
  v169 = v37;
  v170 = a1[6];
  v38 = a1[1];
  v164 = *a1;
  v165 = v38;
  v39 = a1[3];
  v166 = a1[2];
  v167 = v39;
  sub_2488474EC(v36);
  v148 = a1;
  v192 = *a1;
  v164 = *a1;
  *(&v129 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  v40 = v186;
  swift_getKeyPath();
  *&v164 = v40;
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v41 = *(v40 + 24);

  swift_getKeyPath();
  *&v164 = v41;
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v43 = *(v41 + 16);
  v42 = *(v41 + 24);

  *&v164 = v43;
  *(&v164 + 1) = v42;
  sub_2488519D0();
  v44 = sub_2488A525C();
  v46 = v45;
  LOBYTE(v41) = v47;
  sub_2488A51CC();
  v48 = sub_2488A522C();
  v50 = v49;
  v52 = v51;
  v54 = v53;

  sub_24883E428(v44, v46, v41 & 1);

  *&v164 = v48;
  *(&v164 + 1) = v50;
  LOBYTE(v46) = v52 & 1;
  LOBYTE(v165) = v52 & 1;
  *(&v165 + 1) = v54;
  v55 = v132;
  sub_2488A536C();
  sub_24883E428(v48, v50, v46);

  KeyPath = swift_getKeyPath();
  v57 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13B0, &qword_2488A7170) + 36);
  *v57 = KeyPath;
  *(v57 + 8) = 1;
  v58 = (v55 + *(v133 + 36));
  v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13B8, &qword_2488A7178) + 28);
  v60 = *MEMORY[0x277CE0B28];
  v61 = sub_2488A521C();
  (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
  *v58 = swift_getKeyPath();
  sub_248851AA0();
  sub_2488A533C();
  sub_2488532FC(v55, &qword_27EEB1388, &qword_2488A7120);
  v62 = v148;
  v63 = *(v148 + 13);
  sub_2488A55FC();
  sub_2488A4BEC();
  v132 = v179;
  v133 = v177;
  v130 = v182;
  v131 = v181;
  v200 = 1;
  v199 = v178;
  v198 = v180;
  v164 = v192;
  sub_2488A54EC();
  v64 = *(v186 + 16);

  v186 = v64;
  type metadata accessor for TagModel();

  sub_2488A54DC();
  v65 = v164;
  v129 = v164;
  swift_getKeyPath();
  *&v164 = v64;
  sub_2488516B0(&qword_27EEB1350, type metadata accessor for TagModel);
  sub_2488A4A2C();

  swift_beginAccess();
  v128 = *(v64 + 40);
  v66 = v128;

  v193[0] = v65;
  v193[1] = xmmword_2488A68E0;
  v194 = v66;
  v160 = v62;
  v161 = v193;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13E8, &qword_2488A71B8);
  sub_248851C48();
  v67 = v134;
  sub_2488A55EC();
  v68 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1410, &qword_2488A71C8) + 36));
  v69 = *(sub_2488A4DBC() + 20);
  v70 = *MEMORY[0x277CE0118];
  v71 = sub_2488A4F4C();
  v72 = *(*(v71 - 8) + 104);
  v72(&v68[v69], v70, v71);
  __asm { FMOV            V0.2D, #26.0 }

  *v68 = _Q0;
  *&v68[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1418, &qword_2488A71D0) + 36)] = 256;
  sub_2488A55FC();
  sub_2488A4BEC();
  v78 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1420, &qword_2488A71D8) + 36));
  v79 = v184;
  *v78 = v183;
  v78[1] = v79;
  v78[2] = v185;
  v80 = swift_getKeyPath();
  v81 = v136;
  v82 = v67 + *(v135 + 36);
  *v82 = v80;
  *(v82 + 8) = 1;
  sub_2488A507C();
  sub_248851DA8();
  v83 = v149;
  sub_2488A532C();
  (*(v137 + 8))(v81, v138);
  sub_2488532FC(v67, &qword_27EEB1378, &qword_2488A7110);
  v84 = v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1468, &qword_2488A7218) + 36);
  v85 = v83;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1470, &qword_2488A7220);
  v87 = v84 + *(v86 + 40);
  sub_2488A4DDC();
  v72(v84, v70, v71);
  *(v84 + *(v86 + 36)) = 0;
  LOBYTE(v84) = sub_2488A515C();
  sub_2488A4B4C();
  v88 = v85 + *(v139 + 44);
  *v88 = v84;
  *(v88 + 8) = v89;
  *(v88 + 16) = v90;
  *(v88 + 24) = v91;
  *(v88 + 32) = v92;
  *(v88 + 40) = 0;
  sub_2488A55FC();
  sub_2488A4BEC();
  v138 = v188;
  v139 = v186;
  v136 = v191;
  v137 = v190;
  v203 = 1;
  v202 = v187;
  v201 = v189;
  v93 = v151;
  sub_2488A553C();
  LOBYTE(v84) = sub_2488A515C();
  sub_2488A4B4C();
  v94 = v93 + *(v144 + 44);
  *v94 = v84;
  *(v94 + 8) = v95;
  *(v94 + 16) = v96;
  *(v94 + 24) = v97;
  *(v94 + 32) = v98;
  *(v94 + 40) = 0;
  v99 = swift_allocObject();
  v100 = v148;
  v101 = v148[5];
  v99[5] = v148[4];
  v99[6] = v101;
  v99[7] = v100[6];
  v102 = v100[1];
  v99[1] = *v100;
  v99[2] = v102;
  v103 = v100[3];
  v99[3] = v100[2];
  v99[4] = v103;
  v162 = sub_248851FE0;
  v163 = v99;
  sub_248851FE8(v100, &v164);
  sub_2488A4FAC();
  v159 = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1478, &qword_2488A7228);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1480, &qword_2488A7230);
  sub_24883E5F8(&qword_27EEB1488, &qword_27EEB1478, &qword_2488A7228);
  sub_248852028();
  v104 = v155;
  sub_2488A52AC();

  LOBYTE(v100) = v197;
  v124 = v196;
  LOBYTE(v48) = v195;
  v105 = v150;
  sub_2488527B8(v154, v150, &qword_27EEB1398, &qword_2488A7130);
  v106 = v152;
  sub_2488527B8(v158, v152, &qword_27EEB1390, &qword_2488A7128);
  v125 = v200;
  v126 = v199;
  v127 = v198;
  v107 = v153;
  sub_2488527B8(v85, v153, &qword_27EEB1380, &qword_2488A7118);
  LODWORD(v134) = v203;
  LODWORD(v135) = v202;
  LODWORD(v144) = v201;
  v108 = v93;
  v109 = v156;
  sub_2488527B8(v108, v156, &qword_27EEB1370, &qword_2488A7108);
  v148 = v157[2];
  v110 = v145;
  v111 = v104;
  v112 = v146;
  (v148)(v145, v111, v146);
  v113 = v147;
  *v147 = 0;
  *(v113 + 8) = v100;
  v113[2] = v143;
  *(v113 + 24) = v124;
  v114 = v141;
  v113[4] = v142;
  *(v113 + 40) = v48;
  v115 = v140;
  v113[6] = v114;
  v113[7] = v115;
  v116 = v113;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14B8, &qword_2488A7248);
  sub_2488527B8(v105, v116 + v117[12], &qword_27EEB1398, &qword_2488A7130);
  sub_2488527B8(v106, v116 + v117[16], &qword_27EEB1390, &qword_2488A7128);
  v118 = v116 + v117[20];
  *v118 = 0;
  *(v118 + 8) = v125;
  *(v118 + 16) = v133;
  *(v118 + 24) = v126;
  *(v118 + 32) = v132;
  *(v118 + 40) = v127;
  v119 = v130;
  *(v118 + 48) = v131;
  *(v118 + 56) = v119;
  sub_2488527B8(v107, v116 + v117[24], &qword_27EEB1380, &qword_2488A7118);
  v120 = v116 + v117[28];
  *v120 = 0;
  *(v120 + 8) = v134;
  *(v120 + 16) = v139;
  *(v120 + 24) = v135;
  *(v120 + 32) = v138;
  *(v120 + 40) = v144;
  v121 = v136;
  *(v120 + 48) = v137;
  *(v120 + 56) = v121;
  sub_2488527B8(v109, v116 + v117[32], &qword_27EEB1370, &qword_2488A7108);
  (v148)(v116 + v117[36], v110, v112);

  v122 = v157[1];
  v122(v155, v112);
  sub_2488532FC(v151, &qword_27EEB1370, &qword_2488A7108);
  sub_2488532FC(v149, &qword_27EEB1380, &qword_2488A7118);
  sub_2488532FC(v158, &qword_27EEB1390, &qword_2488A7128);
  sub_2488532FC(v154, &qword_27EEB1398, &qword_2488A7130);
  v122(v110, v112);
  sub_2488532FC(v156, &qword_27EEB1370, &qword_2488A7108);
  sub_2488532FC(v153, &qword_27EEB1380, &qword_2488A7118);
  sub_2488532FC(v152, &qword_27EEB1390, &qword_2488A7128);
  return sub_2488532FC(v150, &qword_27EEB1398, &qword_2488A7130);
}

uint64_t sub_24884C6A4@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1400, &qword_2488A71C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25[-v9 - 8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB17E8, &qword_2488A74F8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25[-v13 - 8];
  v26 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  v15 = v27;
  swift_getKeyPath();
  *&v26 = v15;
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = *(v15 + 40);

  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v19 = (*(v17 + 24))(ObjectType, v17);
    v24 = a3;
    *&v26 = v19;
    MEMORY[0x28223BE20](v19);
    *(&v24 - 2) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1800, &qword_2488A7510);
    sub_248853868();
    sub_248851540();
    sub_2488A4C2C();
    (*(v7 + 16))(v14, v10, v6);
    swift_storeEnumTagMultiPayload();
    sub_24883E5F8(&qword_27EEB13F8, &qword_27EEB1400, &qword_2488A71C0);
    sub_248851D00();
    sub_2488A4FCC();
    swift_unknownObjectRelease();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    v21 = *a2;
    *&v26 = a2[1];
    v27 = a2[4];
    v22 = v27;
    v23 = *(a2 + 1);
    *v14 = *a2;
    *(v14 + 1) = v23;
    *(v14 + 4) = v22;
    swift_storeEnumTagMultiPayload();

    sub_2488527B8(&v26, v25, &unk_27EEB17F0, &unk_2488A7500);
    sub_2488527B8(&v27, v25, &qword_27EEB1120, &qword_2488A67A0);
    sub_24883E5F8(&qword_27EEB13F8, &qword_27EEB1400, &qword_2488A71C0);
    sub_248851D00();
    return sub_2488A4FCC();
  }
}

uint64_t sub_24884CA9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = a1[4];
  v8 = a1[1];
  v3 = v8;
  v7 = v4;
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 1);
  *(a2 + 32) = v4;
  *(a2 + 40) = 0x3FF3333333333333;

  sub_2488527B8(&v8, v6, &unk_27EEB17F0, &unk_2488A7500);
  return sub_2488527B8(&v7, v6, &qword_27EEB1120, &qword_2488A67A0);
}

uint64_t sub_24884CB20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1688, &qword_2488A73D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-v7];
  sub_2488A514C();
  v11 = a2;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1690, &qword_2488A73D8);
  sub_248852994();
  sub_2488A4B9C();
  sub_24883E5F8(&qword_27EEB16D0, &qword_27EEB1688, &qword_2488A73D0);
  sub_2488A533C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24884CCBC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v92 = a3;
  v91 = sub_2488A495C();
  v89 = *(v91 - 8);
  v4 = *(v89 + 64);
  MEMORY[0x28223BE20](v91);
  v88 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2488A49EC();
  v87 = *(v90 - 8);
  v6 = *(v87 + 64);
  v7 = MEMORY[0x28223BE20](v90);
  v83 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = v73 - v9;
  v95 = sub_2488A56BC();
  v82 = *(v95 - 8);
  v10 = *(v82 + 64);
  v11 = MEMORY[0x28223BE20](v95);
  v79 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v93 = v73 - v13;
  v86 = sub_2488A497C();
  v85 = *(v86 - 8);
  v14 = *(v85 + 64);
  v15 = MEMORY[0x28223BE20](v86);
  v80 = v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v81 = v73 - v17;
  v77 = sub_2488A4DAC();
  v18 = *(v77 - 8);
  v76 = *(v18 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2488A4FDC();
  v20 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v73[1] = v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73[0] = sub_2488A55BC();
  v22 = *(v73[0] - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v73[0]);
  v25 = (v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB16A8, &qword_2488A73E0);
  v26 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v28 = v73 - v27;
  v99 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  v29 = v100;
  swift_getKeyPath();
  *&v99 = v29;
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v30 = *(v29 + 24);

  swift_getKeyPath();
  *&v99 = v30;
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v32 = *(v30 + 48);
  v31 = *(v30 + 56);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB16D8, &qword_2488A73F8);
  v33 = *(sub_2488A55CC() - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  *(swift_allocObject() + 16) = xmmword_2488A68F0;
  *v25 = vdupq_n_s64(0x4048800000000000uLL);
  (*(v22 + 104))(v25, *MEMORY[0x277CDF100], v73[0]);
  sub_2488A55DC();
  v96 = v32;
  v97 = v31;
  v98 = a1;
  sub_2488A4FAC();
  LODWORD(v99) = 0;
  sub_2488516B0(&qword_27EEB16E0, MEMORY[0x277CE0428]);
  sub_2488A5B0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB16E8, &qword_2488A7400);
  sub_248852BA0();
  sub_2488A562C();

  LOBYTE(v25) = sub_2488A515C();
  v36 = *(a1 + 104);
  sub_2488A4B4C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB16B8, &qword_2488A73E8) + 36)];
  *v45 = v25;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  v46 = v75;
  v47 = v77;
  (*(v18 + 16))(v75, v78, v77);
  v48 = (*(v18 + 80) + 128) & ~*(v18 + 80);
  v49 = swift_allocObject();
  v50 = *(a1 + 80);
  *(v49 + 5) = *(a1 + 64);
  *(v49 + 6) = v50;
  *(v49 + 7) = *(a1 + 96);
  v51 = *(a1 + 16);
  *(v49 + 1) = *a1;
  *(v49 + 2) = v51;
  v52 = *(a1 + 48);
  *(v49 + 3) = *(a1 + 32);
  *(v49 + 4) = v52;
  (*(v18 + 32))(&v49[v48], v46, v47);
  v53 = *(v94 + 36);
  v78 = v28;
  v54 = &v28[v53];
  *v54 = sub_2488532D0;
  v54[1] = v49;
  v54[2] = 0;
  v54[3] = 0;
  sub_248851FE8(a1, &v99);
  v55 = v93;
  sub_2488A56AC();
  sub_248853D5C(0, &qword_27EEB1590, 0x277CCA8D8);
  v56 = sub_2488A590C();
  if (!v56)
  {
    v56 = [objc_opt_self() mainBundle];
  }

  v57 = v56;
  v58 = v84;
  sub_2488A49DC();
  v59 = v82;
  (*(v82 + 16))(v79, v55, v95);
  v60 = v87;
  v61 = v90;
  (*(v87 + 16))(v83, v58, v90);
  v62 = [v57 bundleURL];
  v63 = v88;
  sub_2488A49AC();

  (*(v89 + 104))(v63, *MEMORY[0x277CC9118], v91);
  v64 = v81;
  sub_2488A499C();

  (*(v60 + 8))(v58, v61);
  (*(v59 + 8))(v93, v95);
  v65 = v85;
  v66 = v86;
  (*(v85 + 16))(v80, v64, v86);
  v67 = sub_2488A524C();
  v69 = v68;
  LOBYTE(v63) = v70;
  sub_248852A50();
  v71 = v78;
  sub_2488A52FC();
  sub_24883E428(v67, v69, v63 & 1);

  (*(v65 + 8))(v64, v66);
  return sub_2488532FC(v71, &qword_27EEB16A8, &qword_2488A73E0);
}

uint64_t sub_24884D828(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (qword_27EEB1098 != -1)
  {
    swift_once();
  }

  v12 = qword_27EEB1978;
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = a3[5];
  *(v6 + 96) = a3[4];
  *(v6 + 112) = v7;
  *(v6 + 128) = a3[6];
  v8 = a3[1];
  *(v6 + 32) = *a3;
  *(v6 + 48) = v8;
  v9 = a3[3];
  *(v6 + 64) = a3[2];
  *(v6 + 80) = v9;

  sub_248851FE8(a3, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB17A8, &qword_2488A7480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1700, &qword_2488A7408);
  sub_24883E5F8(&qword_27EEB17B0, &qword_27EEB17A8, &qword_2488A7480);
  sub_2488516B0(&qword_27EEB17B8, type metadata accessor for SymbolGroup);
  sub_248852C24();
  return sub_2488A554C();
}

uint64_t sub_24884D9F4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1710, &qword_2488A7410);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  sub_24884E410(a1, &v12[-v10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1790, &qword_2488A7450);
  sub_248852CBC();
  sub_2488530D4();
  return sub_2488A556C();
}

uint64_t sub_24884DB04(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v14[14] = *(a1 + *(type metadata accessor for SymbolGroup(0) + 24));
  swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = a4[5];
  *(v7 + 96) = a4[4];
  *(v7 + 112) = v8;
  *(v7 + 128) = a4[6];
  v9 = a4[1];
  *(v7 + 32) = *a4;
  *(v7 + 48) = v9;
  v10 = a4[3];
  *(v7 + 64) = a4[2];
  *(v7 + 80) = v10;

  sub_248851FE8(a4, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB17C8, &qword_2488A74D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB17D0, &qword_2488A74E0);
  sub_24883E5F8(&qword_27EEB17D8, &qword_27EEB17C8, &qword_2488A74D8);
  sub_2488516B0(&qword_27EEB17E0, type metadata accessor for SymbolMetadata);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1798, &unk_2488A7458);
  v12 = sub_24883E5F8(&qword_27EEB17A0, &qword_27EEB1798, &unk_2488A7458);
  v14[0] = v11;
  v14[1] = v12;
  swift_getOpaqueTypeConformance2();
  return sub_2488A554C();
}

uint64_t sub_24884DD1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a5;
  v9 = type metadata accessor for SymbolMetadata(0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v35 - v12);
  v14 = type metadata accessor for SymbolView();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1798, &unk_2488A7458);
  v18 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v20 = &v35 - v19;
  sub_248851594(a1, v13);
  v22 = *a1;
  v21 = a1[1];
  v35 = v21;
  if (a3)
  {
    if (v22 == a2 && v21 == a3)
    {
      v23 = 1;
    }

    else
    {
      v23 = sub_2488A5A8C();
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = v13[1];
  *v17 = *v13;
  *(v17 + 1) = v24;
  sub_2488534E4(v13, &v17[*(v14 + 24)], type metadata accessor for SymbolMetadata);
  v17[16] = v23 & 1;
  sub_2488534E4(v17, v20, type metadata accessor for SymbolView);
  v25 = &v20[*(v38 + 52)];
  v26 = v35;
  *v25 = v22;
  *(v25 + 1) = v26;
  v27 = a1;
  v28 = v37;
  sub_248851594(v27, v37);
  v29 = (*(v36 + 80) + 128) & ~*(v36 + 80);
  v30 = swift_allocObject();
  v31 = a4[5];
  v30[5] = a4[4];
  v30[6] = v31;
  v30[7] = a4[6];
  v32 = a4[1];
  v30[1] = *a4;
  v30[2] = v32;
  v33 = a4[3];
  v30[3] = a4[2];
  v30[4] = v33;
  sub_2488534E4(v28, v30 + v29, type metadata accessor for SymbolMetadata);

  sub_248851FE8(a4, v40);
  sub_24883E5F8(&qword_27EEB17A0, &qword_27EEB1798, &unk_2488A7458);
  sub_2488A52DC();

  return sub_2488532FC(v20, &qword_27EEB1798, &unk_2488A7458);
}

uint64_t sub_24884E068(__int128 *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25[-v6];
  v29 = *a1;
  v26[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  v8 = v28;
  swift_getKeyPath();
  v9 = &qword_27EEB1000;
  *&v26[0] = v8;
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v10 = *(v8 + 24);

  swift_beginAccess();
  if (*(v10 + 40))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v25[-24] = 0;
    *&v25[-16] = 0;
    *&v25[-32] = v10;
    *&v26[0] = v10;
    sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
    sub_2488A4A1C();

    v9 = &qword_27EEB1000;
  }

  else
  {
    *(v10 + 32) = 0;
    *(v10 + 40) = 0;
  }

  v26[0] = v29;
  sub_2488A54EC();
  v12 = v27;
  swift_getKeyPath();
  v13 = v9[96];
  *&v26[0] = v12;
  sub_2488A4A2C();

  v14 = *(v12 + 24);

  v15 = *a2;
  v16 = a2[1];

  sub_24883FE6C(v15, v16);

  v17 = sub_2488A58CC();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_2488A58AC();
  sub_248851FE8(a1, v26);
  v18 = sub_2488A589C();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  v21 = a1[5];
  *(v19 + 96) = a1[4];
  *(v19 + 112) = v21;
  *(v19 + 128) = a1[6];
  v22 = a1[1];
  *(v19 + 32) = *a1;
  *(v19 + 48) = v22;
  v23 = a1[3];
  *(v19 + 64) = a1[2];
  *(v19 + 80) = v23;
  sub_24889D734(0, 0, v7, &unk_2488A74F0, v19);
}

uint64_t sub_24884E410@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = sub_2488A497C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1760, &qword_2488A7438);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v69 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1750, &qword_2488A7430);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v70 = &v68 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1738, &qword_2488A7428);
  v15 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v17 = &v68 - v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB17C0, &qword_2488A7488);
  v76 = *(v77 - 8);
  v18 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v71 = &v68 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1730, &qword_2488A7420);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v72 = &v68 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1720, &qword_2488A7418);
  v25 = *(v24 - 8);
  v74 = v24 - 8;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v73 = &v68 - v27;
  v28 = type metadata accessor for SymbolGroup(0);
  (*(v4 + 16))(v7, &a1[*(v28 + 20)], v3);
  v29 = sub_2488A524C();
  v31 = v30;
  *&v81 = v29;
  *(&v81 + 1) = v30;
  v33 = v32 & 1;
  LOBYTE(v82) = v32 & 1;
  *(&v82 + 1) = v34;
  v79 = 0;
  v80 = 0xE000000000000000;
  sub_2488A59EC();

  v79 = 0xD000000000000012;
  v80 = 0x80000002488AE570;
  MEMORY[0x24C1DB190](*a1, *(a1 + 1));
  v35 = v69;
  sub_2488A533C();

  sub_24883E428(v29, v31, v33);

  sub_2488A560C();
  sub_2488A4DCC();
  v36 = v70;
  sub_2488533E4(v35, v70, &qword_27EEB1760, &qword_2488A7438);
  v37 = (v36 + *(v12 + 44));
  v38 = v86;
  v37[4] = v85;
  v37[5] = v38;
  v37[6] = v87;
  v39 = v82;
  *v37 = v81;
  v37[1] = v39;
  v40 = v84;
  v37[2] = v83;
  v37[3] = v40;
  LODWORD(v3) = sub_2488A4FFC();
  sub_2488533E4(v36, v17, &qword_27EEB1750, &qword_2488A7430);
  *&v17[*(v75 + 36)] = v3;
  sub_2488A51EC();
  sub_248852EC8();
  v41 = v71;
  sub_2488A528C();
  sub_2488532FC(v17, &qword_27EEB1738, &qword_2488A7428);
  v42 = sub_2488A51BC();
  KeyPath = swift_getKeyPath();
  v44 = v72;
  (*(v76 + 32))(v72, v41, v77);
  v45 = (v44 + *(v21 + 44));
  *v45 = KeyPath;
  v45[1] = v42;
  LOBYTE(v21) = sub_2488A515C();
  sub_2488A4B4C();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v73;
  sub_2488533E4(v44, v73, &qword_27EEB1730, &qword_2488A7420);
  v55 = v54 + *(v74 + 44);
  *v55 = v21;
  *(v55 + 8) = v47;
  *(v55 + 16) = v49;
  *(v55 + 24) = v51;
  *(v55 + 32) = v53;
  *(v55 + 40) = 0;
  LOBYTE(v21) = sub_2488A517C();
  sub_2488A4B4C();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v54;
  v65 = v78;
  sub_2488533E4(v64, v78, &qword_27EEB1720, &qword_2488A7418);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1710, &qword_2488A7410);
  v67 = v65 + *(result + 36);
  *v67 = v21;
  *(v67 + 8) = v57;
  *(v67 + 16) = v59;
  *(v67 + 24) = v61;
  *(v67 + 32) = v63;
  *(v67 + 40) = 0;
  return result;
}

uint64_t sub_24884EA48(__int128 *a1)
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel);
  sub_2488A4A2C();

  v1 = *(v7 + 24);

  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);

  if (v2)
  {
    v5 = sub_2488A561C();
    MEMORY[0x28223BE20](v5);
    sub_2488A4C0C();
  }

  return result;
}

uint64_t sub_24884EC38@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_2488A4F9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14A8, &qword_2488A7240);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14C0, &qword_2488A7250);
  v12 = *(v37 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v37);
  v15 = &v36 - v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14A0, &qword_2488A7238);
  v16 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v18 = &v36 - v17;
  *v11 = sub_2488A4F0C();
  *(v11 + 1) = 0x4024000000000000;
  v11[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14C8, &qword_2488A7258);
  sub_248848928(a1, &v11[*(v19 + 44)]);
  sub_2488A4F8C();
  sub_24883E5F8(&qword_27EEB14B0, &qword_27EEB14A8, &qword_2488A7240);
  sub_2488A530C();
  (*(v4 + 8))(v7, v3);
  sub_2488532FC(v11, &qword_27EEB14A8, &qword_2488A7240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14D0, &qword_2488A7260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2488A6490;
  LOBYTE(v3) = sub_2488A51AC();
  *(inited + 32) = v3;
  v21 = sub_2488A518C();
  *(inited + 33) = v21;
  v22 = sub_2488A519C();
  sub_2488A519C();
  if (sub_2488A519C() != v3)
  {
    v22 = sub_2488A519C();
  }

  sub_2488A519C();
  if (sub_2488A519C() != v21)
  {
    v22 = sub_2488A519C();
  }

  (*(v12 + 32))(v18, v15, v37);
  v23 = &v18[*(v36 + 36)];
  *v23 = v22;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v23[40] = 1;
  v24 = sub_2488A515C();
  sub_2488A4B4C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v38;
  sub_2488533E4(v18, v38, &qword_27EEB14A0, &qword_2488A7238);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1480, &qword_2488A7230);
  v35 = v33 + *(result + 36);
  *v35 = v24;
  *(v35 + 8) = v26;
  *(v35 + 16) = v28;
  *(v35 + 24) = v30;
  *(v35 + 32) = v32;
  *(v35 + 40) = 0;
  return result;
}

uint64_t sub_24884F034@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v8[4] = v1[4];
  v8[5] = v3;
  v8[6] = v1[6];
  v4 = v1[1];
  v8[0] = *v1;
  v8[1] = v4;
  v5 = v1[3];
  v8[2] = v1[2];
  v8[3] = v5;
  *a1 = sub_2488A4FAC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1200, &qword_2488A6A08);
  return sub_24884B640(v8, (a1 + *(v6 + 44)));
}

id sub_24884F0AC@<X0>(void *a1@<X8>)
{
  sub_24883EC18();
  sub_2488A4EEC();
  result = v3;
  if (!v3)
  {
    result = [objc_opt_self() defaultStyleConfiguration];
  }

  *a1 = result;
  return result;
}

uint64_t sub_24884F120(void **a1)
{
  v1 = *a1;
  sub_24883EC18();
  v2 = v1;
  return sub_2488A4EFC();
}

uint64_t sub_24884F17C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_248851594(v14, v11);
        sub_248851594(v15, v8);
        v17 = *v11 == *v8 && v11[1] == v8[1];
        if (!v17 && (sub_2488A5A8C() & 1) == 0)
        {
          break;
        }

        v18 = MEMORY[0x24C1DA380](v11 + *(v4 + 20), v8 + *(v4 + 20));
        sub_2488515F8(v8);
        sub_2488515F8(v11);
        if (v18)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v18 & 1;
      }

      sub_2488515F8(v8);
      sub_2488515F8(v11);
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_24884F334(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2488A596C())
  {
    if (a2 >> 62)
    {
      result = sub_2488A596C();
      if (i != result)
      {
        return 0;
      }
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (i != result)
      {
        return 0;
      }
    }

    if (!i)
    {
      return 1;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (i < 0)
    {
      goto LABEL_54;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      break;
    }

    v4 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v21)
    {
      if (!v22)
      {
        goto LABEL_48;
      }

      v23 = *v4;
      v24 = *v20;
      swift_beginAccess();
      a2 = *(v23 + 16);
      v3 = *(v23 + 24);
      swift_beginAccess();
      v25 = a2 == *(v24 + 16) && v3 == *(v24 + 24);
      if (!v25 && (sub_2488A5A8C() & 1) == 0)
      {
        return 0;
      }

      --v22;
      --v21;
      ++v4;
      ++v20;
      if (!--i)
      {
        return 1;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v11 = a2 & 0xC000000000000001;
  for (j = 4; ; ++j)
  {
    v13 = j - 4;
    v14 = j - 3;
    if (__OFADD__(j - 4, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x24C1DB410](j - 4, v3);
      v4 = result;
      if (v11)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v4 = *(v3 + 8 * j);

    if (v11)
    {
LABEL_23:
      v15 = MEMORY[0x24C1DB410](j - 4, a2);
      goto LABEL_28;
    }

LABEL_26:
    if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

    v15 = *(a2 + 8 * j);

LABEL_28:
    swift_beginAccess();
    v16 = v4[2];
    v17 = v4[3];
    swift_beginAccess();
    if (v16 == *(v15 + 16) && v17 == *(v15 + 24))
    {
    }

    else
    {
      v19 = sub_2488A5A8C();

      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    if (v14 == i)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}