uint64_t sub_1AE776928(uint64_t result, unsigned int *a2, unsigned int a3, unsigned int a4, float a5)
{
  if (result)
  {
    v5 = *(result + 5);
    if (v5 >= a3)
    {
      v6 = *(result + 6);
      if (v6 > 0x3F || a4 >> v6 == 0)
      {
        if (a5 <= 0.0)
        {
          v9 = 0;
        }

        else
        {
          v8 = *(result + 8);
          if (v8)
          {
            v9 = *(result + 12) < v8;
          }

          else
          {
            v9 = 1;
          }
        }

        v10 = *(result + 7);
        v12 = *(result + 16);
        v11 = *(result + 20);
        v13 = *(result + 24);
        v14 = *(result + 40);
        if (v14)
        {
          *&v15 = -1;
          *(&v15 + 1) = -1;
          v14[1] = v15;
          v14[2] = v15;
          *v14 = v15;
        }

        v83 = a2;
        if (*(result + 32) == 0 && v9)
        {
          v16 = result;
          v17 = a3;
          v18 = v12;
          v19 = a4;
          v20 = a5;
          v21 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
          a3 = v17;
          a5 = v20;
          a4 = v19;
          v12 = v18;
          a2 = v83;
          v22 = v21;
          result = v16;
          *(v16 + 32) = v22;
          *v22 = 8;
          v22[2] = 0;
          *(*(v16 + 32) + 3) = *(*(v16 + 32) + 3) & 0xF8 | 1;
          *(v16 + 12) += 8;
        }

        if (a3)
        {
          v23 = 0;
          if (v13 && v12)
          {
            if (v10)
            {
              v24 = v10 + 24;
              v25 = 0xFFFFFFFFFFFFFFFFLL >> -v10;
              v26 = -1640531573 * *a2 % v11;
              while (1)
              {
                v27 = &v13[(v26 * v24 + 24) >> 3];
                v28 = v27 & 0xFFFFFFFFFFFFFFF8;
                v29 = (v26 * v24) & 7 | (8 * (v27 & 7));
                v30 = *(v27 & 0xFFFFFFFFFFFFFFF8) >> v29;
                if ((v29 + v10) >= 0x41)
                {
                  v30 |= *(v28 + 8) << -v29;
                }

                v23 = v30 & v25;
                if ((v30 & v25) == 0)
                {
                  break;
                }

                v31 = &v13[(v26 * v24) >> 3];
                v32 = v31 & 0xFFFFFFFFFFFFFFFCLL;
                v33 = (v26 * v24) & 7 | (8 * (v31 & 3));
                v34 = *(v31 & 0xFFFFFFFFFFFFFFFCLL) >> v33;
                if (v33 >= 9)
                {
                  v34 |= *(v32 + 4) << -v33;
                }

                if ((v34 & 0xFFFFFF) == *a2)
                {
                  break;
                }

                if (v26 + 1 == v11)
                {
                  v26 = 0;
                }

                else
                {
                  ++v26;
                }

                if (v26 == -1640531573 * *a2 % v11)
                {
                  goto LABEL_32;
                }
              }
            }

            else
            {
LABEL_32:
              v23 = 0;
            }
          }

          if (a3 != 1 || v23)
          {
            if (!v23)
            {
              return result;
            }

            v79 = v12;
            v80 = a3;
            v35 = a5;
            v81 = a4;
            v82 = result;
            v46 = v10;
          }

          else
          {
            if (!v9)
            {
              return result;
            }

            v80 = 1;
            v81 = a4;
            v35 = a5;
            v82 = result;
            v23 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
            v36 = 0;
            *v23 = 8;
            v37 = v23 + 3;
            *(v23 + 2) = 0;
            v38 = v5;
            do
            {
              if ((v36 & 6) == 6)
              {
                v39 = 3;
              }

              else
              {
                v39 = 7;
              }

              *(v37 + (v36 >> 3)) = *(v37 + (v36 >> 3)) & ~(v39 << (v36 & 6)) | (1 << (v36 & 6));
              if ((v36 & 6) == 6)
              {
                *(v23 + 4 + (v36 >> 3)) &= ~1u;
              }

              v36 += 6;
              --v38;
            }

            while (v38);
            v47 = v83;
            if (v5 >= 2)
            {
              v48 = 0;
              v49 = 3;
              v50 = 1;
              do
              {
                v51 = (6 * v48 + 3);
                v48 = v50;
                v52 = v51 & 7;
                v53 = v51 >> 3;
                v54 = 8 - v52;
                if (v52 <= 5)
                {
                  v54 = 3;
                }

                *(v37 + v53) = *(v37 + v53) & ~(0xFFu >> (8 - v54) << v52) | (((0xFFu >> (8 - v54)) & 1) << v52);
                if (v54 != 3)
                {
                  v55 = (v49 >> 3) + 1;
                  v56 = 3 - v54;
                  do
                  {
                    if (v56 >= 8)
                    {
                      v57 = 8;
                    }

                    else
                    {
                      v57 = v56;
                    }

                    *(v37 + v55) = (-256 >> (8 - v57)) & *(v37 + v55) | (0xFFu >> (8 - v57)) & (1u >> (3 - v56));
                    ++v55;
                    v56 -= v57;
                  }

                  while (v56);
                }

                v50 = v48 + 1;
                v49 += 6;
              }

              while (v48 + 1 != v5);
            }

            v58 = v12 + 1;
            v79 = v12;
            if (5 * v11 < 8 * (v12 + 1) || v10 <= 0x3F && v23 >> v10)
            {
              LODWORD(v85) = 0;
              v59 = 64 - __clz(v23);
              if (v59 <= v10)
              {
                v46 = v10;
              }

              else
              {
                v46 = v59;
              }

              if (v13)
              {
                v60 = sub_1AE773E18(v13, v79, v11, v10, v46, &v85);
                free(v13);
                v11 = v85;
                v13 = v60;
              }

              else
              {
                v13 = malloc_type_calloc((((32 * v46 + 775) >> 3) & 0x7F8) + 8, 1uLL, 0x100004077774924uLL);
                v11 = 32 * (v13 != 0);
              }

              v47 = v83;
              *(v82 + 24) = v13;
              *(v82 + 7) = v46;
              *(v82 + 20) = v11;
            }

            else
            {
              v46 = v10;
            }

            if (v13)
            {
              sub_1AE773F9C(v13, v11, v46, *v47, v23);
              *(v82 + 12) += ((((6 * v5 + 4) >> 3) + 7) & 0x3FC) - ((3 * v79) & 0x1FFFFFFF) + ((3 * v58) & 0x1FFFFFFF);
              *(v82 + 16) = v58;
              v79 = v58;
            }
          }

          v85 = v23;
          v61 = ((6 * v5 + 4) >> 3) + 3;
          v62 = (sub_1AE773764(v23, v5, v6, 0, v23 + v61, 1u) - v23 + 3) & 0xFFFFFFFC;
          sub_1AE777144(v23, v5, v6, v83, v80, v81, 0, v23 + v61, v35, 1u, 0, 1u, v9, 0, &v85);
          if (v13 && v85 != v23)
          {
            v63 = v46;
            if (v46 <= 0x3F && v85 >> v46)
            {
              v84 = 0;
              v64 = 64 - __clz(v85);
              if (v85)
              {
                v63 = v64;
              }

              else
              {
                v63 = 0;
              }

              v65 = sub_1AE773E18(v13, v79, v11, v46, v63, &v84);
              free(v13);
              v66 = v82;
              *(v82 + 24) = v65;
              *(v82 + 7) = v63;
              v11 = v84;
              *(v82 + 20) = v84;
              v13 = v65;
              v46 = v63;
            }

            else
            {
              v66 = v82;
            }

            v67 = *v83;
            v82 = v66;
            if (v46)
            {
              v68 = v46 + 24;
              v69 = -1640531573 * v67 % v11;
              do
              {
                v70 = &v13[(v69 * v68 + 24) >> 3];
                v71 = v70 & 0xFFFFFFFFFFFFFFF8;
                v72 = (v69 * v68) & 7 | (8 * (v70 & 7));
                v73 = *(v70 & 0xFFFFFFFFFFFFFFF8) >> v72;
                if ((v72 + v63) >= 0x41)
                {
                  v73 |= *(v71 + 8) << -v72;
                }

                if ((v73 & (0xFFFFFFFFFFFFFFFFLL >> -v46)) == 0)
                {
                  break;
                }

                v74 = &v13[(v69 * v68) >> 3];
                v75 = v74 & 0xFFFFFFFFFFFFFFFCLL;
                v76 = (v69 * v68) & 7 | (8 * (v74 & 3));
                v77 = *(v74 & 0xFFFFFFFFFFFFFFFCLL) >> v76;
                if (v76 >= 9)
                {
                  v77 |= *(v75 + 4) << -v76;
                }

                if ((v77 & 0xFFFFFF) == v67)
                {
                  sub_1AE7782F8(v13, v68, v46, v69, v85);
                  goto LABEL_95;
                }

                if (v69 + 1 == v11)
                {
                  v69 = 0;
                }

                else
                {
                  ++v69;
                }
              }

              while (v69 != -1640531573 * v67 % v11);
            }

            sub_1AE773F9C(v13, v11, v46, v67, v85);
          }

LABEL_95:
          v78 = v85;
          result = sub_1AE773764(v85, v5, v6, 0, v85 + v61, 1u);
          *(v82 + 12) = *(v82 + 12) - v62 + ((result - v78 + 3) & 0xFFFFFFFC);
        }

        else
        {
          v40 = *(result + 32);
          if (v40)
          {
            v85 = *(result + 32);
            v41 = result;
            v42 = a4;
            v43 = a5;
            v44 = (sub_1AE773764(v40, 1u, v6, 0, v40 + 4, 1u) - v40 + 3) & 0xFFFFFFFC;
            v84 = 0;
            sub_1AE777144(v40, 1, v6, &v84, 1u, v42, 0, v40 + 4, v43, 1u, 0, 1u, v9, 0, &v85);
            v45 = v85;
            *(v41 + 32) = v85;
            result = sub_1AE773764(v45, 1u, v6, 0, v45 + 4, 1u);
            *(v41 + 12) = *(v41 + 12) - v44 + ((result - v45 + 3) & 0xFFFFFFFC);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AE777144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, uint64_t a8, float a9, unsigned int a10, unsigned int a11, unsigned int a12, unsigned __int8 a13, int *a14, void *a15)
{
  if (a7)
  {
    v15 = 24;
  }

  else
  {
    v15 = 0;
  }

  v110 = v15;
  v16 = 6 * a7;
  v17 = (((3 * a7) >> 2) & 0x1FFFFFFF) + a1 + 3;
  v18 = *(v17 & 0xFFFFFFFFFFFFFFFCLL) >> ((6 * a7) & 6 | (8 * (v17 & 3)));
  if (a7 + 1 >= a2)
  {
    v23 = 0;
  }

  else
  {
    v19 = ((v16 + 3) >> 3) + a1 + 3;
    v20 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = (v16 + 3) & 7 | (8 * (v19 & 3));
    v22 = *(v19 & 0xFFFFFFFFFFFFFFFCLL) >> v21;
    if (v21 >= 0x1E)
    {
      v22 |= *(v20 + 4) << -v21;
    }

    v23 = 4 * (v22 & 7);
  }

  v24 = 0;
  v25 = *(a4 + 4 * a7);
  v111 = a1;
  if (a7 < a5 && !HIBYTE(v25))
  {
    v27 = a14;
    v26 = a15;
    v28 = a11;
    v29 = (4 * v18) & 0x1C;
    v30 = a13;
    v31 = (((4 * v18) & 0x1C) + v110 + v23 + 7) & 0xF8;
    v32 = (a8 + ((v31 * a10) >> 3));
    if (!a10)
    {
      v24 = 0;
      if (a7 + 1 != a5)
      {
        v53 = 0;
        if (!a15)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }

      v51 = 0;
      v52 = 0;
      v53 = 0;
      if ((a13 & 1) == 0)
      {
        goto LABEL_71;
      }

LABEL_68:
      v53 = 1;
      v75 = sub_1AE77852C(a1, a2, a3, a4, a6, a7, a8, a10, a9, v28, v24, v51, v32, v52, v24, 1u);
      goto LABEL_69;
    }

    v109 = a7 + 1;
    v108 = (a3 + 31) & 0xFFFFFFF8;
    if (a7)
    {
      if (a12 <= a11)
      {
        goto LABEL_17;
      }

      v33 = ((v31 * a11) >> 3) + a8;
      v34 = v33 & 0xFFFFFFFFFFFFFFFCLL;
      v35 = 8 * (v33 & 3);
      v36 = *(v33 & 0xFFFFFFFFFFFFFFFCLL) >> v35;
      if (v35 >= 9)
      {
        v36 |= *(v34 + 4) << -v35;
      }

      v37 = v36 & 0xFFFFFF;
      v38 = v37 == v25;
      if (v37 > v25)
      {
LABEL_17:
        v39 = 0;
        if (((4 * v18) & 0x1C) == 0)
        {
          goto LABEL_106;
        }

        goto LABEL_18;
      }

      v65 = *(a4 + 4 * a7);
      v66 = a11;
      if (!v38)
      {
        v67 = (((a12 - 1) * v31) >> 3) + a8;
        v68 = v67 & 0xFFFFFFFFFFFFFFFCLL;
        v69 = 8 * (v67 & 3);
        v70 = *(v67 & 0xFFFFFFFFFFFFFFFCLL) >> v69;
        if (v69 >= 9)
        {
          v70 |= *(v68 + 4) << -v69;
        }

        v65 = v70 & 0xFFFFFF;
        if ((v70 & 0xFFFFFFu) < v25)
        {
          v39 = 0;
          v28 = a12;
          if (((4 * v18) & 0x1C) == 0)
          {
            goto LABEL_106;
          }

          goto LABEL_18;
        }

        if (v65 == v25)
        {
          v28 = a12 - 1;
        }

        v66 = a12 - 1;
      }

      if (v28 + 1 >= v66)
      {
        v88 = v66;
LABEL_102:
        v38 = v65 == v25;
        v39 = v65 == v25;
        if (v38)
        {
          v28 = v88;
        }

        else
        {
          v28 = v66;
        }

        if (((4 * v18) & 0x1C) != 0)
        {
          goto LABEL_18;
        }

LABEL_106:
        v44 = 0;
        v50 = 0;
        v49 = 1;
        if (v23)
        {
          goto LABEL_33;
        }

LABEL_25:
        v51 = 0;
        if (!v39)
        {
          goto LABEL_53;
        }

        goto LABEL_43;
      }

      while (1)
      {
        v88 = (v28 + v66) >> 1;
        v89 = ((v88 * v31) >> 3) + a8;
        v90 = v89 & 0xFFFFFFFFFFFFFFFCLL;
        v91 = 8 * (v89 & 3);
        v92 = *(v89 & 0xFFFFFFFFFFFFFFFCLL) >> v91;
        if (v91 >= 9)
        {
          v92 |= *(v90 + 4) << -v91;
        }

        v65 = v92 & 0xFFFFFF;
        if (v65 > v25)
        {
          v66 = (v28 + v66) >> 1;
        }

        else
        {
          if (v65 == v25)
          {
            v39 = 1;
            v28 = (v28 + v66) >> 1;
            if (((4 * v18) & 0x1C) == 0)
            {
              goto LABEL_106;
            }

LABEL_18:
            if (v28)
            {
              v40 = (((v28 - 1) * v31 + v110) >> 3) + a8;
              v41 = v40 & 0xFFFFFFFFFFFFFFFCLL;
              v42 = 8 * (v40 & 3);
              v43 = *(v40 & 0xFFFFFFFFFFFFFFFCLL) >> v42;
              if (v42 + ((4 * v18) & 0x1C) >= 0x21)
              {
                v43 |= *(v41 + 4) << -v42;
              }

              v44 = v43 & (0xFFFFFFFF >> -v29);
              if (v28 < a12)
              {
LABEL_22:
                v45 = ((v28 * v31 + v110) >> 3) + a8;
                v46 = v45 & 0xFFFFFFFFFFFFFFFCLL;
                v47 = 8 * (v45 & 3);
                v48 = *(v45 & 0xFFFFFFFFFFFFFFFCLL) >> v47;
                if (v47 + ((4 * v18) & 0x1C) >= 0x21)
                {
                  v48 |= *(v46 + 4) << -v47;
                }

                v49 = 0;
                v50 = v48 & (0xFFFFFFFF >> -v29);
                if (!v23)
                {
                  goto LABEL_25;
                }

LABEL_33:
                v107 = v50;
                v50 = v44;
                v54 = a13;
                if (v28)
                {
                  v55 = (((v28 - 1) * v31 + v29 + v110) >> 3) + a8;
                  v56 = v55 & 0xFFFFFFFFFFFFFFFCLL;
                  v57 = (4 * v18) & 4 | (8 * (v55 & 3));
                  v58 = *(v55 & 0xFFFFFFFFFFFFFFFCLL) >> v57;
                  if (v57 + v23 >= 0x21)
                  {
                    v58 |= *(v56 + 4) << -v57;
                  }

                  v51 = v58 & (0xFFFFFFFF >> -v23);
                  v27 = a14;
                  v26 = a15;
                  v32 = (a8 + ((v31 * a10) >> 3));
                  if (v28 < a12)
                  {
LABEL_37:
                    v59 = v26;
                    if (v39)
                    {
                      v60 = v31 * (a10 - 1);
                      if (v49)
                      {
                        v30 = v54;
                        if (v109 == a5)
                        {
                          v61 = a9;
                          v62 = 0;
                          v44 = v50;
                          goto LABEL_88;
                        }

LABEL_95:
                        v24 = sub_1AE777144(a1, a2, a3, a4);
                        v53 = 0;
                        if (!v26)
                        {
LABEL_73:
                          if (v27)
                          {
                            *v27 = v53;
                          }

                          return v24;
                        }

LABEL_72:
                        *v26 = v111;
                        goto LABEL_73;
                      }

                      v64 = a8 + ((v60 + v110) >> 3);
                      v30 = v54;
                      v44 = v50;
                      v50 = v107;
LABEL_77:
                      v77 = v64 & 0xFFFFFFFFFFFFFFFCLL;
                      v78 = 8 * (v64 & 3);
                      v79 = *(v64 & 0xFFFFFFFFFFFFFFFCLL) >> v78;
                      if (v78 + ((4 * v18) & 0x1C) >= 0x21)
                      {
                        v79 |= *(v77 + 4) << -v78;
                      }

                      v62 = v79 & (0xFFFFFFFF >> -v29);
                      v26 = v59;
                      goto LABEL_80;
                    }

                    LOBYTE(v30) = v54;
                    v44 = v50;
LABEL_53:
                    v24 = 0;
                    v53 = 0;
                    if (v109 == a5 && (v30 & 1) != 0)
                    {
                      if (((4 * v18) & 0x1C) != 0)
                      {
                        v71 = ((v31 * (a10 - 1) + v110) >> 3) + a8;
                        v72 = v71 & 0xFFFFFFFFFFFFFFFCLL;
                        v73 = 8 * (v71 & 3);
                        v74 = *(v71 & 0xFFFFFFFFFFFFFFFCLL) >> v73;
                        if (v73 + ((4 * v18) & 0x1C) >= 0x21)
                        {
                          v74 |= *(v72 + 4) << -v73;
                        }

                        v52 = v74 & (0xFFFFFFFF >> -v29);
                      }

                      else
                      {
                        v52 = 0;
                      }

                      LODWORD(v24) = v44;
                      goto LABEL_68;
                    }

LABEL_71:
                    if (!v26)
                    {
                      goto LABEL_73;
                    }

                    goto LABEL_72;
                  }
                }

                else
                {
                  v51 = 0;
                  if (a12)
                  {
                    goto LABEL_37;
                  }
                }

LABEL_42:
                v30 = v54;
                v44 = v50;
                v50 = v107;
                if (!v39)
                {
                  goto LABEL_53;
                }

LABEL_43:
                v63 = v31 * (a10 - 1);
                if ((v49 & 1) == 0)
                {
                  v59 = v26;
                  v64 = a8 + ((v63 + v110) >> 3);
                  goto LABEL_77;
                }

                v62 = 0;
LABEL_80:
                if (v109 != a5)
                {
                  goto LABEL_95;
                }

                if (!v62 || v44 >= v50)
                {
LABEL_87:
                  v61 = a9;
                  v50 = v44;
                  goto LABEL_88;
                }

                if (a3)
                {
                  v80 = (a3 + 31) & 0xFFFFFFF8;
                  v81 = &v32[(v44 * v108) >> 3];
                  v82 = v81 & 0xFFFFFFFFFFFFFFFCLL;
                  v83 = 8 * (v81 & 3);
                  v84 = *(v81 & 0xFFFFFFFFFFFFFFFCLL) >> v83;
                  if (v83 + a3 >= 0x21)
                  {
                    v84 |= *(v82 + 4) << -v83;
                  }

                  v85 = 0xFFFFFFFF >> -a3;
                  v86 = v84 & v85;
                  v87 = v86 == a6;
                  if (v86 > a6)
                  {
                    goto LABEL_87;
                  }

                  v94 = v44;
                  v93 = a6;
                  v95 = v44;
                  if (!v87)
                  {
                    v96 = &v32[((v50 - 1) * v108) >> 3];
                    v97 = v96 & 0xFFFFFFFFFFFFFFFCLL;
                    v98 = 8 * (v96 & 3);
                    v99 = *(v96 & 0xFFFFFFFFFFFFFFFCLL) >> v98;
                    if (v98 + a3 >= 0x21)
                    {
                      v99 |= *(v97 + 4) << -v98;
                    }

                    v93 = v99 & v85;
LABEL_123:
                    if (v93 < a6)
                    {
                      v61 = a9;
                      goto LABEL_88;
                    }

                    if (v93 == a6)
                    {
                      v94 = v50 - 1;
                    }

                    else
                    {
                      v94 = v44;
                    }

                    v95 = v50 - 1;
                  }
                }

                else
                {
                  v93 = 0;
                  v94 = v44;
                  v95 = v44;
                  v80 = 24;
                  if (a6)
                  {
                    goto LABEL_123;
                  }
                }

                if (v94 + 1 < v95)
                {
                  while (2)
                  {
                    v100 = (v95 + v94) >> 1;
                    if (a3)
                    {
                      v101 = &v32[(v100 * v80) >> 3];
                      v102 = v101 & 0xFFFFFFFFFFFFFFFCLL;
                      v103 = 8 * (v101 & 3);
                      v104 = *(v101 & 0xFFFFFFFFFFFFFFFCLL) >> v103;
                      if (v103 + a3 >= 0x21)
                      {
                        v104 |= *(v102 + 4) << -v103;
                      }

                      v93 = v104 & (0xFFFFFFFF >> -a3);
                      if (v93 > a6)
                      {
                        v95 = (v95 + v94) >> 1;
                      }

                      else
                      {
LABEL_142:
                        if (v93 == a6)
                        {
                          v61 = a9;
                          goto LABEL_150;
                        }

                        if (v93 < a6)
                        {
                          v94 = (v95 + v94) >> 1;
                        }
                      }

                      if (v94 + 1 >= v95)
                      {
                        goto LABEL_147;
                      }

                      continue;
                    }

                    break;
                  }

                  v93 = 0;
                  goto LABEL_142;
                }

                v100 = v95;
LABEL_147:
                v61 = a9;
                v50 = v95;
                if (v93 == a6)
                {
LABEL_150:
                  v105 = a3;
                  v106 = sub_1AE778398(v32, v80, a3, v100);
                  sub_1AE778418(v32, v80, v105, v100, v106 + v61);
                  v53 = 0;
                  goto LABEL_70;
                }

LABEL_88:
                if (!v30)
                {
                  v24 = 0;
                  v53 = 0;
                  if (!v26)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_72;
                }

                v75 = sub_1AE77852C(a1, a2, a3, a4, a6, a7, a8, a10, v61, v28, v44, v51, v32, v62, v50, 0);
                v53 = 0;
LABEL_69:
                v111 = v75;
LABEL_70:
                v24 = 1;
                goto LABEL_71;
              }
            }

            else
            {
              v44 = 0;
              if (a12)
              {
                goto LABEL_22;
              }
            }

LABEL_32:
            v49 = 0;
            v50 = v44;
            if (!v23)
            {
              goto LABEL_25;
            }

            goto LABEL_33;
          }

          if (v65 < v25)
          {
            v28 = (v28 + v66) >> 1;
          }
        }

        if (v28 + 1 >= v66)
        {
          goto LABEL_102;
        }
      }
    }

    if (((4 * v18) & 0x1C) == 0)
    {
      if (v23)
      {
        v54 = a13;
        v28 = 0;
        v50 = 0;
        v107 = 0;
        v51 = 0;
        v49 = 1;
        v39 = 1;
        if (a12)
        {
          goto LABEL_37;
        }

        goto LABEL_42;
      }

      v28 = 0;
      if (v109 != a5)
      {
        goto LABEL_95;
      }

      v61 = a9;
      v44 = 0;
      v51 = 0;
      v62 = 0;
      v50 = 0;
      goto LABEL_88;
    }

    v28 = 0;
    v44 = 0;
    v39 = 1;
    if (a12)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  return v24;
}

uint64_t sub_1AE7782F8(uint64_t result, int a2, int a3, int a4, unint64_t a5)
{
  if (a3)
  {
    v5 = (a4 * a2) & 7;
    v6 = (a4 * a2 + 24) >> 3;
    v7 = 8 - v5;
    if ((v5 + a3) <= 8)
    {
      v7 = a3;
    }

    *(result + v6) = *(result + v6) & ~(0xFFu >> (8 - v7) << v5) | (((0xFFu >> (8 - v7)) & a5) << v5);
    v8 = a3 - v7;
    if (a3 != v7)
    {
      v9 = v6 + 1;
      do
      {
        if (v8 >= 8)
        {
          v10 = 8;
        }

        else
        {
          v10 = v8;
        }

        *(result + v9) = (-256 >> (8 - v10)) & *(result + v9) | (0xFFu >> (8 - v10)) & (a5 >> (a3 - v8));
        ++v9;
        v8 -= v10;
      }

      while (v8);
    }
  }

  return result;
}

float sub_1AE778398(uint64_t a1, int a2, int a3, int a4)
{
  v4 = a3 + a4 * a2;
  v5 = (v4 >> 3) + a1;
  v6 = v4 & 7 | (8 * (v5 & 3));
  v7 = *(v5 & 0xFFFFFFFFFFFFFFFCLL) >> v6;
  if (v6 >= 9)
  {
    v7 |= *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 4) << -v6;
  }

  v8 = (v7 >> 22) & 3;
  v9 = (v7 & 0x3FFFFF);
  v10 = v9 * 0.0078125;
  if (v8 != 2)
  {
    v10 = (v7 & 0x3FFFFF);
  }

  v11 = v9 * 0.00000095367;
  result = v9 * 0.000061035;
  if (!v8)
  {
    result = v11;
  }

  if (((v7 >> 22) & 3) > 1)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1AE778418(uint64_t result, int a2, int a3, int a4, float a5)
{
  if (a5 >= 4194300.0)
  {
    v9 = 12582912;
    v10 = 0x3FFFFF;
  }

  else
  {
    v5 = vcvts_n_s32_f32(a5, 0x14uLL);
    if (a5 <= 0.0)
    {
      v5 = 0;
    }

    v6 = vcvts_n_s32_f32(a5, 0xEuLL);
    if (a5 >= 4.0)
    {
      v7 = 0x400000;
    }

    else
    {
      v7 = 0;
    }

    if (a5 >= 4.0)
    {
      v5 = v6;
    }

    v8 = vcvts_n_s32_f32(a5, 7uLL);
    if (a5 < 256.0)
    {
      v8 = v5;
    }

    else
    {
      v7 = 0x800000;
    }

    if (a5 >= 32768.0)
    {
      v9 = 12582912;
    }

    else
    {
      v9 = v7;
    }

    if (a5 >= 32768.0)
    {
      v10 = a5;
    }

    else
    {
      v10 = v8;
    }
  }

  if (v10 >= 0x3FFFFF)
  {
    v10 = 0x3FFFFF;
  }

  v11 = v10 | v9;
  v12 = (a3 + a4 * a2);
  *(result + (v12 >> 3)) = ((v10 & (0xFFu >> ((a3 + a4 * a2) & 7))) << ((a3 + a4 * a2) & 7)) | *(result + (v12 >> 3)) & ~(0xFFu >> ((a3 + a4 * a2) & 7) << ((a3 + a4 * a2) & 7));
  v13 = (v12 | 0xFFFFFFF8) + 24;
  v14 = ((a3 + a4 * a2) >> 3) + 1;
  do
  {
    if (v13 >= 8)
    {
      v15 = 8;
    }

    else
    {
      v15 = v13;
    }

    *(result + v14) = (-256 >> (8 - v15)) & *(result + v14) | (0xFFu >> (8 - v15)) & (v11 >> (24 - v13));
    ++v14;
    v13 -= v15;
  }

  while (v13);
  return result;
}

_BYTE *sub_1AE77852C(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, float a9, unsigned int a10, unsigned int a11, unsigned int a12, char *a13, int a14, int a15, unsigned __int8 a16)
{
  v17 = a8;
  v18 = a7;
  v19 = 8 * (a1 & 3);
  v20 = *(a1 & 0xFFFFFFFFFFFFFFFCLL) >> v19;
  if (v19 >= 9)
  {
    v20 |= *((a1 & 0xFFFFFFFFFFFFFFFCLL) + 4) << (-8 * (a1 & 3));
  }

  if (a6)
  {
    v21 = 24;
  }

  else
  {
    v21 = 0;
  }

  v154 = v21;
  v22 = 6 * a6;
  v23 = a13;
  v24 = a10;
  v25 = 4 * (v20 & 0xFFFFFFu);
  v26 = (4 * (*(((v22 >> 3) + a1 + 3) & 0xFFFFFFFFFFFFFFFCLL) >> ((6 * a6) & 6 | (8 * (((v22 >> 3) + a1 + 3) & 3))))) & 0x1C;
  v153 = (4 * (*(((v22 >> 3) + a1 + 3) & 0xFFFFFFFFFFFFFFFCLL) >> ((6 * a6) & 6 | (8 * (((v22 >> 3) + a1 + 3) & 3))))) & 0x1C;
  v134 = *(a4 + 4 * a6);
  v132 = v22 >> 3;
  v133 = (6 * a6) & 6;
  v147 = 4 * (*(((v22 >> 3) + a1 + 3) & 0xFFFFFFFFFFFFFFFCLL) >> ((6 * a6) & 6 | (8 * (((v22 >> 3) + a1 + 3) & 3))));
  if (a6 + 1 >= a2)
  {
    v30 = 0;
  }

  else
  {
    v27 = ((v22 + 3) >> 3) + a1 + 3;
    v28 = (6 * a6 + 3) & 7 | (8 * (v27 & 3));
    v29 = *(v27 & 0xFFFFFFFFFFFFFFFCLL) >> v28;
    if (v28 >= 0x1E)
    {
      v29 |= *((v27 & 0xFFFFFFFFFFFFFFFCLL) + 4) << -v28;
    }

    v30 = 4 * (v29 & 7);
    v26 = (4 * (*(((v22 >> 3) + a1 + 3) & 0xFFFFFFFFFFFFFFFCLL) >> ((6 * a6) & 6 | (8 * (((v22 >> 3) + a1 + 3) & 3))))) & 0x1C;
  }

  v151 = v26 + v154;
  v31 = (v30 + v26 + v154 + 7) & 0x78;
  v136 = a3 + 31;
  v137 = (a3 + 31) & 0xFFFFFFF8;
  v32 = (a3 + 31) >> 3;
  v34 = sub_1AE773764(a1, a2, a3, a6, a7, a8);
  v35 = v153;
  v36 = a1;
  v37 = (a14 + 1);
  v38 = v37 >> v153;
  v39 = (35 - __clz(v37)) & 0x3C;
  if (v38)
  {
    v40 = v39;
  }

  else
  {
    v40 = v153;
  }

  if (v38)
  {
    v41 = (v39 + v154 + v30 + 4) & 0xF8;
  }

  else
  {
    v41 = v31;
  }

  v139 = a16 + v17;
  v42 = (v31 * v17) >> 3;
  v141 = v32;
  v43 = v34 + v32 - v42 + ((v41 * v139) >> 3);
  v44 = v25;
  do
  {
    v45 = v44;
    v46 = &v36[v44];
    v44 *= 2;
  }

  while (v43 > v46);
  v144 = v34;
  if (v45 > v25)
  {
    __srca = v36;
    __n = v25;
    v149 = v38;
    v47 = malloc_type_calloc(v45, 1uLL, 0x100004077774924uLL);
    memcpy(v47, __srca, __n);
    *v47 = v45 >> 2;
    v47[1] = v45 >> 10;
    v47[2] = v45 >> 18;
    v18 += v47 - __srca;
    v23 = &a13[v47 - __srca];
    v144 += v47 - __srca;
    free(__srca);
    v42 = (v31 * v17) >> 3;
    v38 = v149;
    v35 = v153;
    v36 = v47;
  }

  v48 = a6;
  if (!v38)
  {
    v87 = a15;
    v86 = v144;
    if (!a16)
    {
      goto LABEL_101;
    }

    goto LABEL_76;
  }

  __src = v36;
  v49 = (v41 * v17) >> 3;
  v50 = v49 - v42;
  if (v49 != v42 && v144 > v23)
  {
    memmove(&v23[v50], v23, v144 - v23);
    v35 = v153;
    v48 = a6;
  }

  v131 = v50;
  if (v17)
  {
    v150 = 0xFFFFFFFF >> -v35;
    v148 = v147 & 4;
    if (v40 >= 8)
    {
      v52 = 8;
    }

    else
    {
      v52 = v40;
    }

    v145 = 0xFFu >> (8 - v52);
    v53 = -256 >> (8 - v52);
    v54 = v40 - v52;
    if (((v40 & 4) + v30) <= 8)
    {
      v55 = v30;
    }

    else
    {
      v55 = 8 - (v40 & 4);
    }

    v56 = 0xFFu >> (8 - v55);
    v57 = v30 - v55;
    v58 = v41 * (v17 - 1);
    v59 = v154 + v58;
    v60 = v154 + v58 + v40;
    do
    {
      --v17;
      if (v48)
      {
        v61 = ((v17 * v31) >> 3) + v18;
        v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
        v63 = 8 * (v61 & 3);
        v64 = *v62 >> v63;
        if (v63 >= 9)
        {
          v64 |= v62[1] << -v63;
        }

        if (!v35)
        {
LABEL_64:
          v69 = 0;
          if (v30)
          {
            goto LABEL_44;
          }

          goto LABEL_65;
        }
      }

      else
      {
        v64 = 0;
        if (!v35)
        {
          goto LABEL_64;
        }
      }

      v65 = ((v17 * v31 + v154) >> 3) + v18;
      v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
      v67 = 8 * (v65 & 3);
      v68 = *v66 >> v67;
      if ((v67 + v35) >= 0x21)
      {
        v68 |= v66[1] << -v67;
      }

      v69 = v68 & v150;
      if (v30)
      {
LABEL_44:
        v70 = ((v17 * v31 + v151) >> 3) + v18;
        v71 = v70 & 0xFFFFFFFFFFFFFFFCLL;
        v72 = v148 & 0xFFFFFFFFFFFFFFE7 | (8 * (v70 & 3));
        v73 = *(v70 & 0xFFFFFFFFFFFFFFFCLL) >> v72;
        if (v72 + v30 >= 0x21)
        {
          v73 |= *(v71 + 4) << -v72;
        }

        v74 = v73 & (0xFFFFFFFF >> -v30);
        if (!v48)
        {
          goto LABEL_48;
        }

LABEL_47:
        *(v18 + ((v17 * v41) >> 3)) = v64;
        v75 = (v58 >> 3) + v18;
        *(v75 + 1) = BYTE1(v64);
        *(v75 + 2) = BYTE2(v64);
        goto LABEL_48;
      }

LABEL_65:
      v74 = 0;
      if (v48)
      {
        goto LABEL_47;
      }

LABEL_48:
      if (v40)
      {
        *(v18 + ((v154 + v17 * v41) >> 3)) = v53 & *(v18 + ((v154 + v17 * v41) >> 3)) | v69 & v145;
        if (v54)
        {
          v76 = (v59 >> 3) + 1;
          v77 = v54;
          do
          {
            if (v77 >= 8)
            {
              v78 = 8;
            }

            else
            {
              v78 = v77;
            }

            *(v18 + v76) = (-256 >> (8 - v78)) & *(v18 + v76) | (0xFFu >> (8 - v78)) & (v69 >> (v40 - v77));
            ++v76;
            v77 -= v78;
          }

          while (v77);
        }
      }

      if (v30)
      {
        *(v18 + ((v40 + v154 + v17 * v41) >> 3)) = *(v18 + ((v40 + v154 + v17 * v41) >> 3)) & ~(v56 << (v40 & 4)) | ((v74 & v56) << (v40 & 4));
        if (v57)
        {
          v79 = (v60 >> 3) + 1;
          v80 = v57;
          do
          {
            if (v80 >= 8)
            {
              v81 = 8;
            }

            else
            {
              v81 = v80;
            }

            *(v18 + v79) = (-256 >> (8 - v81)) & *(v18 + v79) | (0xFFu >> (8 - v81)) & (v74 >> (v30 - v80));
            ++v79;
            v80 -= v81;
          }

          while (v80);
        }
      }

      v58 -= v41;
      v59 -= v41;
      v60 -= v41;
      v48 = a6;
      v35 = v153;
    }

    while (v17);
  }

  v36 = __src;
  if (v48 < a2)
  {
    v82 = &__src[v132];
    v83 = v133 == 6 ? 3 : 7;
    v85 = v82[3];
    v84 = v82 + 3;
    *v84 = v85 & ~(v83 << v133) | ((v83 & (v40 >> 2)) << v133);
    if (v133 == 6)
    {
      v84[1] = v84[1] & 0xFE | ((v40 & 0x10) != 0);
    }
  }

  v23 += v131;
  v86 = v144 + v131;
  v87 = a15;
  if (a16)
  {
LABEL_76:
    v88 = v41 >> 3;
    if (v41)
    {
      v89 = (v18 + v88 * a10);
      if (v86 > v89)
      {
        v90 = v86;
        v91 = v36;
        memmove(&v89[v88], v89, v86 - v89);
        v48 = a6;
        v86 = v90;
        v36 = v91;
      }
    }

    if (v48)
    {
      v92 = v18 + ((v41 * a10) >> 3);
      *v92 = v134;
      *(v92 + 2) = BYTE2(v134);
    }

    if (v40)
    {
      v93 = (v154 + v41 * a10) >> 3;
      v94 = v40 >= 8 ? 8 : v40;
      *(v18 + v93) = (-256 >> (8 - v94)) & *(v18 + v93) | (0xFFu >> (8 - v94)) & a11;
      v95 = v40 - v94;
      if (v95)
      {
        v96 = v93 + 1;
        do
        {
          if (v95 >= 8)
          {
            v97 = 8;
          }

          else
          {
            v97 = v95;
          }

          *(v18 + v96) = (-256 >> (8 - v97)) & *(v18 + v96) | (0xFFu >> (8 - v97)) & (a11 >> (v40 - v95));
          ++v96;
          v95 -= v97;
        }

        while (v95);
      }
    }

    if (v30)
    {
      v98 = (v40 + v154 + v41 * a10) >> 3;
      v99 = 8 - (v40 & 4);
      if (((v40 & 4) + v30) <= 8)
      {
        v99 = v30;
      }

      *(v18 + v98) = *(v18 + v98) & ~(0xFFu >> (8 - v99) << (v40 & 4)) | (((0xFFu >> (8 - v99)) & a12) << (v40 & 4));
      v100 = v30 - v99;
      if (v30 != v99)
      {
        v101 = v98 + 1;
        do
        {
          if (v100 >= 8)
          {
            v102 = 8;
          }

          else
          {
            v102 = v100;
          }

          *(v18 + v101) = (-256 >> (8 - v102)) & *(v18 + v101) | (0xFFu >> (8 - v102)) & (a12 >> (v30 - v100));
          ++v101;
          v100 -= v102;
        }

        while (v100);
      }
    }

    v23 += v88;
    v86 += v88;
  }

LABEL_101:
  if (v136 >= 8)
  {
    v103 = &v23[v141 * v87];
    if (v86 > v103)
    {
      v104 = v36;
      memmove(&v103[v141], v103, v86 - v103);
      v36 = v104;
    }
  }

  if (a3)
  {
    v105 = (v137 * v87) >> 3;
    v106 = a3 >= 8 ? 8 : a3;
    v23[v105] = (-256 >> (8 - v106)) & v23[v105] | (0xFFu >> (8 - v106)) & a5;
    v107 = a3 - v106;
    if (v107)
    {
      v108 = v105 + 1;
      do
      {
        if (v107 >= 8)
        {
          v109 = 8;
        }

        else
        {
          v109 = v107;
        }

        v23[v108] = (-256 >> (8 - v109)) & v23[v108] | (0xFFu >> (8 - v109)) & (a5 >> (a3 - v107));
        ++v108;
        v107 -= v109;
      }

      while (v107);
    }
  }

  if (a9 >= 4194300.0)
  {
    v110 = 12582912;
    v111 = 0x3FFFFF;
  }

  else if (a9 >= 32768.0)
  {
    v111 = a9;
    v110 = 12582912;
  }

  else if (a9 >= 256.0)
  {
    v111 = vcvts_n_s32_f32(a9, 7uLL);
    v110 = 0x800000;
  }

  else if (a9 >= 4.0)
  {
    v111 = vcvts_n_s32_f32(a9, 0xEuLL);
    v110 = 0x400000;
  }

  else
  {
    v110 = 0;
    if (a9 <= 0.0)
    {
      v111 = 0;
    }

    else
    {
      v111 = vcvts_n_s32_f32(a9, 0x14uLL);
    }
  }

  if (v111 >= 0x3FFFFF)
  {
    v111 = 0x3FFFFF;
  }

  v112 = v111 | v110;
  v113 = (a3 + v137 * v87) >> 3;
  v23[v113] = ((v111 & (0xFFu >> (a3 & 7))) << (a3 & 7)) | v23[v113] & ~(0xFFu >> (a3 & 7) << (a3 & 7));
  v114 = (a3 | 0xFFFFFFF8) + 24;
  v115 = v113 + 1;
  do
  {
    if (v114 >= 8)
    {
      v116 = 8;
    }

    else
    {
      v116 = v114;
    }

    v23[v115] = (-256 >> (8 - v116)) & v23[v115] | (0xFFu >> (8 - v116)) & (v112 >> (24 - v114));
    ++v115;
    v114 -= v116;
  }

  while (v114);
  if (v139 > a10)
  {
    v117 = v40 >= 8 ? 8 : v40;
    if (v40)
    {
      v118 = 0xFFu >> (8 - v117);
      v119 = -256 >> (8 - v117);
      v120 = v40 - v117;
      v121 = v154 + v41 * a10;
      do
      {
        v122 = (v154 + v24 * v41) >> 3;
        v123 = ((v122 + v18) & 0xFFFFFFFFFFFFFFFCLL);
        v124 = 8 * ((v122 + v18) & 3);
        v125 = *v123 >> v124;
        if ((v124 + v40) >= 0x21)
        {
          v125 |= v123[1] << (-8 * ((v122 + v18) & 3));
        }

        v126 = (v125 & (0xFFFFFFFF >> -v40)) + 1;
        *(v18 + v122) = v119 & *(v18 + v122) | v126 & v118;
        if (v120)
        {
          v127 = (v121 >> 3) + 1;
          v128 = v120;
          do
          {
            if (v128 >= 8)
            {
              v129 = 8;
            }

            else
            {
              v129 = v128;
            }

            *(v18 + v127) = (-256 >> (8 - v129)) & *(v18 + v127) | (0xFFu >> (8 - v129)) & (v126 >> (v40 - v128));
            ++v127;
            v128 -= v129;
          }

          while (v128);
        }

        ++v24;
        v121 += v41;
      }

      while (v24 != v139);
    }
  }

  return v36;
}

uint64_t sub_1AE778FFC(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, float a5)
{
  v7 = 0;
  v8 = a1 + 3;
  v9 = (a3 + 31) & 0xFFFFFFF8;
  v10 = a3 & 7;
  v11 = 0xFFu >> (a3 & 7);
  v12 = ~(v11 << (a3 & 7));
  v13 = (a3 | 0xFFFFFFF8) + 24;
  if (a2 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = a2;
  }

  v15 = v14 - 1;
  v16 = 1;
  result = 897581056;
  v64 = a2;
  v63 = v8;
  v62 = v15;
  while (1)
  {
    v18 = v7 ? 24 : 0;
    v19 = (((3 * v7) >> 2) & 0x1FFFFFFF) + v8;
    v20 = *(v19 & 0xFFFFFFFFFFFFFFFCLL) >> ((6 * v7) & 6 | (8 * (v19 & 3)));
    if (v7 + 1 >= a2)
    {
      v25 = 0;
    }

    else
    {
      v21 = 6 * v7 + 3;
      v22 = (v21 >> 3) + v8;
      v23 = v21 & 7 | (8 * (v22 & 3));
      v24 = *(v22 & 0xFFFFFFFFFFFFFFFCLL) >> v23;
      if (v23 >= 0x1E)
      {
        v24 |= *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 4) << -v23;
      }

      v25 = 4 * (v24 & 7);
    }

    v26 = 4 * v20;
    v27 = (4 * v20) & 0x1C;
    v28 = v27 + v18;
    v29 = (((4 * v20) & 0x1C) + v18 + v25 + 7) & 0xF8;
    v30 = v29 * (v16 - 1);
    v31 = v29 * v16;
    v66 = a4;
    if (v27)
    {
      break;
    }

    v57 = a4;
    v37 = 0;
    v36 = v57 + (v31 >> 3);
    if (v7 == v15)
    {
      return result;
    }

LABEL_50:
    if (!v25)
    {
      return result;
    }

    v58 = ((v30 + v28) >> 3) + v66;
    v59 = v58 & 0xFFFFFFFFFFFFFFFCLL;
    v60 = v26 & 4 | (8 * (v58 & 3));
    v61 = *(v58 & 0xFFFFFFFFFFFFFFFCLL) >> v60;
    if (v60 + v25 >= 0x21)
    {
      v61 |= *(v59 + 4) << -v60;
    }

    v16 = v61 & (0xFFFFFFFF >> -v25);
    if (!v16)
    {
      return result;
    }

    a4 = v36 + ((v37 * v9) >> 3);
    ++v7;
  }

  v65 = v30;
  v32 = ((v30 + v18) >> 3) + a4;
  v33 = v32 & 0xFFFFFFFFFFFFFFFCLL;
  v34 = 8 * (v32 & 3);
  v35 = *(v32 & 0xFFFFFFFFFFFFFFFCLL) >> v34;
  if (v34 + v27 >= 0x21)
  {
    v35 |= *(v33 + 4) << -v34;
  }

  v36 = a4 + (v31 >> 3);
  v37 = v35 & (0xFFFFFFFF >> -v27);
  if (v37)
  {
    v38 = 0;
    v39 = a3;
    do
    {
      v40 = (a3 + v38 * v9) >> 3;
      v41 = ((v40 + v36) & 0xFFFFFFFFFFFFFFFCLL);
      v42 = v10 & 0xFFFFFFFFFFFFFFE7 | (8 * ((v40 + v36) & 3));
      v43 = *v41 >> v42;
      if (v42 >= 9)
      {
        v43 |= v41[1] << -v42;
      }

      v44 = (v39 >> 3) + 1;
      v45 = (v43 & 0x3FFFFF);
      v46 = (v43 >> 22) & 3;
      v47 = v45 * 0.0078125;
      if (v46 != 2)
      {
        v47 = v45;
      }

      v48 = v45 * 0.00000095367;
      v49 = v45 * 0.000061035;
      if (!v46)
      {
        v49 = v48;
      }

      if (v46 > 1)
      {
        v49 = v47;
      }

      v50 = v49 * a5;
      if (v50 >= 4194300.0)
      {
        v52 = 0x3FFFFF;
        v51 = 12582912;
      }

      else if (v50 >= 32768.0)
      {
        v52 = v50;
        v51 = 12582912;
      }

      else if (v50 >= 256.0)
      {
        v52 = vcvts_n_s32_f32(v50, 7uLL);
        v51 = 0x800000;
      }

      else if (v50 >= 4.0)
      {
        v52 = vcvts_n_s32_f32(v50, 0xEuLL);
        v51 = 0x400000;
      }

      else
      {
        v51 = 0;
        if (v50 <= 0.0)
        {
          v52 = 0;
        }

        else
        {
          v52 = vcvts_n_s32_f32(v50, 0x14uLL);
        }
      }

      if (v52 >= 0x3FFFFF)
      {
        v53 = 0x3FFFFF;
      }

      else
      {
        v53 = v52;
      }

      v54 = v53 | v51;
      *(v36 + v40) = ((v53 & v11) << v10) | *(v36 + v40) & v12;
      v55 = v13;
      do
      {
        if (v55 >= 8)
        {
          v56 = 8;
        }

        else
        {
          v56 = v55;
        }

        *(v36 + v44) = (-256 >> (8 - v56)) & *(v36 + v44) | (0xFFu >> (8 - v56)) & (v54 >> (24 - v55));
        ++v44;
        v55 -= v56;
      }

      while (v55);
      ++v38;
      v39 += v9;
    }

    while (v38 != v37);
    a2 = v64;
    v8 = v63;
    v15 = v62;
  }

  v30 = v65;
  if (v7 != v15)
  {
    goto LABEL_50;
  }

  return result;
}

void sub_1AE7793E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(a1 + 7);
  v8 = *(a1 + 6);
  v9 = *(a1 + 20);
  v28 = *(a1 + 5);
  v10 = malloc_type_calloc(v28, 4uLL, 0x100004052888210uLL);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  *(a1 + 6) = a4;
  *(a1 + 7) = 64;
  *(a1 + 20) = 0;
  *(a1 + 12) = 24;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  if (v13)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v11.n128_u64[0] = 0x40000000;
    v29[1] = 0x40000000;
    v29[2] = sub_1AE77962C;
    v29[3] = &unk_1E7A2FF68;
    v29[4] = a3;
    v29[5] = a1;
    sub_1AE774C98(v13, 1u, v8, v10, 1, v13 + 4, v29, v11);
    free(v13);
  }

  if (v12)
  {
    v25 = v14;
    v26 = a3;
    if (v9 && v7)
    {
      v15 = 0xFFFFFFFFFFFFFFFFLL >> -v7;
      v16 = 24;
      do
      {
        v17 = &v12[(v16 - 24) >> 3];
        v18 = (v16 - 24) & 7 | (8 * (v17 & 3));
        v19 = *(v17 & 0xFFFFFFFFFFFFFFFCLL) >> v18;
        if (v18 >= 9)
        {
          v19 |= *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 4) << -v18;
        }

        v20 = &v12[v16 >> 3];
        v21 = v20 & 0xFFFFFFFFFFFFFFF8;
        v22 = (v16 - 24) & 7 | (8 * (v20 & 7));
        v23 = *(v20 & 0xFFFFFFFFFFFFFFF8) >> v22;
        if ((v22 + v7) >= 0x41)
        {
          v23 |= *(v21 + 8) << -v22;
        }

        v24 = (v23 & v15);
        if ((v23 & v15) != 0)
        {
          sub_1AE7796AC(a1, v24, v28, v8, v19 & 0xFFFFFF, v10, 0, v24 + ((6 * v28 + 4) >> 3) + 3, v11, 1u, 0, 1u, a2, v26);
          free(v24);
        }

        v16 += v7 + 24;
        --v9;
      }

      while (v9);
    }

    free(v12);
    v14 = v25;
  }

  if (v14)
  {
    free(v14);
  }

  free(v10);
}

uint64_t sub_1AE77962C(uint64_t result, uint64_t a2, float a3)
{
  if (a3 > 0.0)
  {
    v4 = a2;
    v5 = *(result + 32);
    if (v5)
    {
      v6 = result;
      v7 = a3;
      v8 = (*(v5 + 16))(v5, a2);
      a3 = v7;
      v4 = v8;
      result = v6;
    }

    v9 = *(result + 40);

    return sub_1AE776928(v9, 0, 0, v4, a3);
  }

  return result;
}

uint64_t sub_1AE7796AC(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, unsigned int *a6, unsigned int a7, uint64_t a8, __n128 a9, unsigned int a10, unsigned int a11, unsigned int a12, uint64_t a13, uint64_t a14)
{
  v115 = result;
  v14 = a10;
  v109 = a11;
  v101 = a12;
  if (a10)
  {
    v15 = a11 >= a12;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v99 = a2 + 3;
    v92 = a4 + 31;
    v18 = (a4 + 31) & 0xFFFFFFF8;
    v19 = a13;
    v20 = a4 & 7;
    v114 = a4;
    v113 = 0xFFFFFFFF >> -a4;
    v98 = a5;
    while (1)
    {
      v21 = a7 ? 24 : 0;
      v22 = (((3 * a7) >> 2) & 0x1FFFFFFF) + v99;
      v23 = *(v22 & 0xFFFFFFFFFFFFFFFCLL) >> ((6 * a7) & 6 | (8 * (v22 & 3)));
      v112 = a7 + 1;
      if (a7 + 1 < a3)
      {
        v25 = 6 * a7 + 3;
        v26 = (v25 >> 3) + v99;
        v27 = v25 & 7 | (8 * (v26 & 3));
        v28 = *(v26 & 0xFFFFFFFFFFFFFFFCLL) >> v27;
        if (v27 >= 0x1E)
        {
          v28 |= *((v26 & 0xFFFFFFFFFFFFFFFCLL) + 4) << -v27;
        }

        v24 = 4 * (v28 & 7);
      }

      else
      {
        v24 = 0;
      }

      v104 = 4 * v23;
      v29 = (4 * v23) & 0x1C;
      v107 = v29 + v21;
      v30 = (((4 * v23) & 0x1C) + v21 + v24 + 7) & 0xF8;
      v102 = v29;
      v110 = a8;
      v97 = v21;
      v105 = v24;
      v103 = v30 * (v14 - 1);
      if (v29)
      {
        v31 = ((v30 * (v14 - 1) + v21) >> 3) + a8;
        v32 = v31 & 0xFFFFFFFFFFFFFFFCLL;
        v33 = 8 * (v31 & 3);
        v34 = *(v31 & 0xFFFFFFFFFFFFFFFCLL) >> v33;
        if (v33 + v29 >= 0x21)
        {
          v34 |= *(v32 + 4) << -v33;
        }

        v35 = v34 & (0xFFFFFFFF >> -v29);
      }

      else
      {
        v35 = 0;
      }

      v36 = a8 + ((v30 * v14) >> 3);
      v106 = v36 + ((v35 * v18) >> 3);
      if (a7)
      {
        break;
      }

      result = a5;
      if (v19)
      {
        result = (*(v19 + 16))(v19, a5);
      }

      *a6 = result;
      if (v35)
      {
        v37 = 0;
        while (2)
        {
          v38 = ((a4 + v37) >> 3) + v36;
          v39 = v38 & 0xFFFFFFFFFFFFFFFCLL;
          v40 = v20 & 0xFFFFFFFFFFFFFFE7 | (8 * (v38 & 3));
          v41 = *(v38 & 0xFFFFFFFFFFFFFFFCLL) >> v40;
          if (v40 >= 9)
          {
            v41 |= *(v39 + 4) << -v40;
          }

          v42 = (v41 & 0x3FFFFF);
          v43 = (v41 >> 22) & 3;
          v44 = v42 * 0.0078125;
          if (v43 != 2)
          {
            v44 = v42;
          }

          v45 = v42 * 0.00000095367;
          a9.n128_f32[0] = v42 * 0.000061035;
          if (!v43)
          {
            a9.n128_f32[0] = v45;
          }

          if (v43 <= 1)
          {
            v46 = a9.n128_f32[0];
          }

          else
          {
            v46 = v44;
          }

          if (v46 <= 0.0)
          {
            goto LABEL_27;
          }

          if (a4)
          {
            v47 = (v37 >> 3) + v36;
            v48 = v47 & 0xFFFFFFFFFFFFFFFCLL;
            v49 = 8 * (v47 & 3);
            v50 = *(v47 & 0xFFFFFFFFFFFFFFFCLL) >> v49;
            if ((v49 + v114) >= 0x21)
            {
              v50 |= *(v48 + 4) << -v49;
            }

            v51 = v50 & v113;
            if (!a14)
            {
LABEL_26:
              result = sub_1AE776928(v115, a6, 1u, v51, v46);
LABEL_27:
              v37 += v18;
              if (!--v35)
              {
                goto LABEL_45;
              }

              continue;
            }
          }

          else
          {
            v51 = 0;
            if (!a14)
            {
              goto LABEL_26;
            }
          }

          break;
        }

        LODWORD(v51) = (*(a14 + 16))(a14, v51, a9);
        goto LABEL_26;
      }

LABEL_45:
      a5 = v98;
      v19 = a13;
      if (a3 >= 2 && v105)
      {
        v52 = ((v103 + v107) >> 3) + v110;
        v53 = v52 & 0xFFFFFFFFFFFFFFFCLL;
        v54 = v104 & 4 | (8 * (v52 & 3));
        v55 = *(v52 & 0xFFFFFFFFFFFFFFFCLL) >> v54;
        if (v54 + v105 >= 0x21)
        {
          v55 |= *(v53 + 4) << -v54;
        }

        v109 = 0;
        a7 = 1;
        a8 = v106;
        v14 = v55 & (0xFFFFFFFF >> -v105);
        v101 = v14;
        if (v14)
        {
          continue;
        }
      }

      return result;
    }

    v100 = v30;
    v56 = a8;
    if (v109 < v101)
    {
      v96 = 0xFFFFFFFF >> -v29;
      v58 = v112 >= a3 || v24 == 0;
      v94 = v58;
      v93 = v92 & 0xFFFFFFF8;
      while (1)
      {
        v59 = ((v109 * v100) >> 3) + v56;
        v60 = v59 & 0xFFFFFFFFFFFFFFFCLL;
        v61 = 8 * (v59 & 3);
        v62 = *(v59 & 0xFFFFFFFFFFFFFFFCLL) >> v61;
        if (v61 >= 9)
        {
          v62 |= *(v60 + 4) << -v61;
        }

        v63 = v62 & 0xFFFFFF;
        if (v19)
        {
          result = (*(v19 + 16))(v19, v63);
          LODWORD(v63) = result;
        }

        a6[a7] = v63;
        if (v102)
        {
          v64 = ((v109 * v100 + v97) >> 3) + v56;
          v65 = v64 & 0xFFFFFFFFFFFFFFFCLL;
          v66 = 8 * (v64 & 3);
          v67 = *(v64 & 0xFFFFFFFFFFFFFFFCLL) >> v66;
          if ((v66 + v102) >= 0x21)
          {
            v67 |= *(v65 + 4) << -v66;
          }

          v68 = v67 & v96;
          if (!v109)
          {
LABEL_73:
            v73 = v56;
            v74 = 0;
            v75 = v68;
            if (v68)
            {
              break;
            }

            goto LABEL_94;
          }
        }

        else
        {
          v68 = 0;
          if (!v109)
          {
            goto LABEL_73;
          }
        }

        if (!v102)
        {
          goto LABEL_73;
        }

        v69 = ((v97 + (v109 - 1) * v100) >> 3) + v56;
        v70 = v69 & 0xFFFFFFFFFFFFFFFCLL;
        v71 = 8 * (v69 & 3);
        v72 = *(v69 & 0xFFFFFFFFFFFFFFFCLL) >> v71;
        if ((v71 + v102) >= 0x21)
        {
          v72 |= *(v70 + 4) << -v71;
        }

        v73 = v56;
        v74 = v72 & v96;
        v75 = v68 - v74;
        if (v68 > v74)
        {
          break;
        }

LABEL_94:
        v19 = a13;
        v56 = v73;
        v91 = v109;
        if (!v94)
        {
          result = sub_1AE7796AC(v115, a2, a3, a4);
        }

        ++v109;
        if (v91 + 1 == v101)
        {
          return result;
        }
      }

      v76 = v93 * v74;
      while (1)
      {
        v77 = ((a4 + v76) >> 3) + v36;
        v78 = v77 & 0xFFFFFFFFFFFFFFFCLL;
        v79 = v20 & 0xFFFFFFFFFFFFFFE7 | (8 * (v77 & 3));
        v80 = *(v77 & 0xFFFFFFFFFFFFFFFCLL) >> v79;
        if (v79 >= 9)
        {
          v80 |= *(v78 + 4) << -v79;
        }

        v81 = (v80 >> 22) & 3;
        v82 = (v80 & 0x3FFFFF);
        v83 = v82 * 0.0078125;
        if (v81 != 2)
        {
          v83 = (v80 & 0x3FFFFF);
        }

        v84 = v82 * 0.00000095367;
        a9.n128_f32[0] = v82 * 0.000061035;
        if (!v81)
        {
          a9.n128_f32[0] = v84;
        }

        if (((v80 >> 22) & 3) <= 1)
        {
          v85 = a9.n128_f32[0];
        }

        else
        {
          v85 = v83;
        }

        if (v85 <= 0.0)
        {
          goto LABEL_76;
        }

        if (a4)
        {
          break;
        }

        v90 = 0;
        if (a14)
        {
          goto LABEL_93;
        }

LABEL_75:
        result = sub_1AE776928(v115, a6, v112, v90, v85);
LABEL_76:
        v76 += v18;
        if (!--v75)
        {
          goto LABEL_94;
        }
      }

      v86 = (v76 >> 3) + v36;
      v87 = v86 & 0xFFFFFFFFFFFFFFFCLL;
      v88 = 8 * (v86 & 3);
      v89 = *(v86 & 0xFFFFFFFFFFFFFFFCLL) >> v88;
      if ((v88 + v114) >= 0x21)
      {
        v89 |= *(v87 + 4) << -v88;
      }

      v90 = v89 & v113;
      if (!a14)
      {
        goto LABEL_75;
      }

LABEL_93:
      LODWORD(v90) = (*(a14 + 16))(a14, v90, a9);
      goto LABEL_75;
    }
  }

  return result;
}

void sub_1AE779EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a1 + 7);
    v5 = *(a1 + 6);
    v6 = *(a1 + 20);
    v22 = *(a1 + 5);
    v7 = malloc_type_calloc(v22, 4uLL, 0x100004052888210uLL);
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    *(a1 + 7) = 64;
    *(a1 + 20) = 0;
    *(a1 + 12) = 24;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    if (v10)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v8.n128_u64[0] = 0x40000000;
      v25[1] = 0x40000000;
      v25[2] = sub_1AE77A128;
      v25[3] = &unk_1E7A2FF90;
      v25[4] = a3;
      v25[5] = a1;
      sub_1AE774C98(v10, 1u, v5, v7, 1, v10 + 4, v25, v8);
      free(v10);
    }

    if (v9)
    {
      if (v6 && v4)
      {
        v12 = 0xFFFFFFFFFFFFFFFFLL >> -v4;
        v13 = 24;
        do
        {
          v14 = &v9[(v13 - 24) >> 3];
          v15 = (v13 - 24) & 7 | (8 * (v14 & 3));
          v16 = *(v14 & 0xFFFFFFFFFFFFFFFCLL) >> v15;
          if (v15 >= 9)
          {
            v16 |= *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 4) << -v15;
          }

          v17 = &v9[v13 >> 3];
          v18 = v17 & 0xFFFFFFFFFFFFFFF8;
          v19 = (v13 - 24) & 7 | (8 * (v17 & 7));
          v20 = *(v17 & 0xFFFFFFFFFFFFFFF8) >> v19;
          if ((v19 + v4) >= 0x41)
          {
            v20 |= *(v18 + 8) << -v19;
          }

          v21 = (v20 & v12);
          if ((v20 & v12) != 0)
          {
            sub_1AE77A1BC(a1, v21, v22, v5, v16 & 0xFFFFFF, v7, 0, v21 + ((6 * v22 + 4) >> 3) + 3, v8, 1u, 0, 1u, a2, a3);
            free(v21);
          }

          v13 += v4 + 24;
          --v6;
        }

        while (v6);
      }

      free(v9);
    }

    if (v11)
    {
      free(v11);
    }

    free(v7);
  }
}

uint64_t sub_1AE77A128(uint64_t result, uint64_t a2, float a3)
{
  if (a3 > 0.0)
  {
    v3 = a2;
    v4 = *(result + 32);
    if (!v4 || (v5 = result, v6 = a3, v7 = (*(v4 + 16))(*(result + 32), a2), a3 = v6, v8 = v7, result = v5, v8))
    {
      v9 = *(result + 40);

      return sub_1AE776928(v9, 0, 0, v3, a3);
    }
  }

  return result;
}

uint64_t sub_1AE77A1BC(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, unsigned int *a6, unsigned int a7, uint64_t a8, __n128 a9, unsigned int a10, unsigned int a11, unsigned int a12, uint64_t a13, uint64_t a14)
{
  v133 = result;
  v14 = a11;
  v15 = a10;
  v116 = a12;
  if (a10)
  {
    v16 = a11 >= a12;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    return result;
  }

  v114 = a2 + 3;
  v105 = a4 + 31;
  v18 = (a4 + 31) & 0xFFFFFFF8;
  v19 = a13;
  v20 = a4 & 7;
  v132 = a4;
  v131 = 0xFFFFFFFF >> -a4;
  while (1)
  {
    v21 = a7 ? 24 : 0;
    v22 = (((3 * a7) >> 2) & 0x1FFFFFFF) + v114;
    v23 = *(v22 & 0xFFFFFFFFFFFFFFFCLL) >> ((6 * a7) & 6 | (8 * (v22 & 3)));
    v128 = a7 + 1;
    if (a7 + 1 < a3)
    {
      v25 = 6 * a7 + 3;
      v26 = (v25 >> 3) + v114;
      v27 = v25 & 7 | (8 * (v26 & 3));
      v28 = *(v26 & 0xFFFFFFFFFFFFFFFCLL) >> v27;
      if (v27 >= 0x1E)
      {
        v28 |= *((v26 & 0xFFFFFFFFFFFFFFFCLL) + 4) << -v27;
      }

      v24 = 4 * (v28 & 7);
    }

    else
    {
      v24 = 0;
    }

    v119 = 4 * v23;
    v29 = (4 * v23) & 0x1C;
    v123 = v29 + v21;
    v127 = (((4 * v23) & 0x1C) + v21 + v24 + 7) & 0xF8;
    v112 = v21;
    v113 = v29;
    v125 = v24;
    v117 = v127 * (v15 - 1);
    if (v29)
    {
      v30 = ((v127 * (v15 - 1) + v21) >> 3) + a8;
      v31 = v30 & 0xFFFFFFFFFFFFFFFCLL;
      v32 = 8 * (v30 & 3);
      v33 = *(v30 & 0xFFFFFFFFFFFFFFFCLL) >> v32;
      if (v32 + v29 >= 0x21)
      {
        v33 |= *(v31 + 4) << -v32;
      }

      v34 = v33 & (0xFFFFFFFF >> -v29);
      if (!v19)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v34 = 0;
      if (!v19)
      {
        goto LABEL_23;
      }
    }

    result = (*(v19 + 16))(v19, a5);
    if (!result)
    {
      return result;
    }

LABEL_23:
    v35 = a8 + ((v127 * v15) >> 3);
    v122 = v35 + ((v34 * v18) >> 3);
    if (a7)
    {
      break;
    }

    *a6 = a5;
    if (v34)
    {
      v36 = 0;
      do
      {
        v37 = ((a4 + v36) >> 3) + v35;
        v38 = v37 & 0xFFFFFFFFFFFFFFFCLL;
        v39 = v20 & 0xFFFFFFFFFFFFFFE7 | (8 * (v37 & 3));
        v40 = *(v37 & 0xFFFFFFFFFFFFFFFCLL) >> v39;
        if (v39 >= 9)
        {
          v40 |= *(v38 + 4) << -v39;
        }

        v41 = (v40 & 0x3FFFFF);
        v42 = (v40 >> 22) & 3;
        v43 = v41 * 0.0078125;
        if (v42 != 2)
        {
          v43 = v41;
        }

        v44 = v41 * 0.00000095367;
        a9.n128_f32[0] = v41 * 0.000061035;
        if (!v42)
        {
          a9.n128_f32[0] = v44;
        }

        if (v42 <= 1)
        {
          v45 = a9.n128_f32[0];
        }

        else
        {
          v45 = v43;
        }

        if (v45 <= 0.0)
        {
          goto LABEL_27;
        }

        if (a4)
        {
          v46 = (v36 >> 3) + v35;
          v47 = v46 & 0xFFFFFFFFFFFFFFFCLL;
          v48 = 8 * (v46 & 3);
          v49 = *(v46 & 0xFFFFFFFFFFFFFFFCLL) >> v48;
          if ((v48 + v132) >= 0x21)
          {
            v49 |= *(v47 + 4) << -v48;
          }

          v50 = v49 & v131;
          if (a14)
          {
LABEL_44:
            result = (*(a14 + 16))(a14, v50, a9);
            if (!result)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          v50 = 0;
          if (a14)
          {
            goto LABEL_44;
          }
        }

        result = sub_1AE776928(v133, a6, 1u, v50, v45);
LABEL_27:
        v36 += v18;
        --v34;
      }

      while (v34);
    }

    v19 = a13;
    if (a3 >= 2 && v125)
    {
      v51 = ((v117 + v123) >> 3) + a8;
      v52 = v51 & 0xFFFFFFFFFFFFFFFCLL;
      v53 = v119 & 4 | (8 * (v51 & 3));
      v54 = *(v51 & 0xFFFFFFFFFFFFFFFCLL) >> v53;
      if (v53 + v125 >= 0x21)
      {
        v54 |= *(v52 + 4) << -v53;
      }

      v14 = 0;
      a7 = 1;
      a8 = v122;
      v15 = v54 & (0xFFFFFFFF >> -v125);
      v116 = v15;
      if (v15)
      {
        continue;
      }
    }

    return result;
  }

  if (v14 < v116)
  {
    v115 = 0xFFFFFFFF >> -v113;
    v56 = v128 >= a3 || v125 == 0;
    v110 = v56;
    v57 = ((v117 + v123) >> 3) + a8;
    v109 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
    v120 = v119 & 4;
    v58 = v120 & 0xFFFFFFFFFFFFFFE7 | (8 * (v57 & 3));
    v118 = v125;
    v107 = v58 + v125;
    v108 = v120 & 0xE7 | (8 * (v57 & 3));
    v104 = 32 - v58;
    v126 = 0xFFFFFFFF >> -v125;
    v106 = v105 & 0xFFFFFFF8;
    while (2)
    {
      v60 = v14 * v127;
      v61 = ((v14 * v127) >> 3) + a8;
      v62 = v61 & 0xFFFFFFFFFFFFFFFCLL;
      v63 = 8 * (v61 & 3);
      v64 = *(v61 & 0xFFFFFFFFFFFFFFFCLL) >> v63;
      if (v63 >= 9)
      {
        v64 |= *(v62 + 4) << -v63;
      }

      v65 = v64 & 0xFFFFFF;
      if (v19)
      {
        result = (*(v19 + 16))(v19, v65);
        if (!result)
        {
          goto LABEL_60;
        }
      }

      a6[a7] = v65;
      if (v113)
      {
        v66 = v112;
        v67 = ((v60 + v112) >> 3) + a8;
        v68 = v67 & 0xFFFFFFFFFFFFFFFCLL;
        v69 = 8 * (v67 & 3);
        v70 = *(v67 & 0xFFFFFFFFFFFFFFFCLL) >> v69;
        if ((v69 + v113) >= 0x21)
        {
          v70 |= *(v68 + 4) << -v69;
        }

        v71 = v70 & v115;
        v72 = v127;
        if (!v14)
        {
          goto LABEL_76;
        }

LABEL_71:
        if (v113)
        {
          v73 = ((v66 + (v14 - 1) * v72) >> 3) + a8;
          v74 = v73 & 0xFFFFFFFFFFFFFFFCLL;
          v75 = 8 * (v73 & 3);
          v76 = *(v73 & 0xFFFFFFFFFFFFFFFCLL) >> v75;
          if ((v75 + v113) >= 0x21)
          {
            v76 |= *(v74 + 4) << -v75;
          }

          v77 = v76 & v115;
          v78 = v71 - v77;
          if (v71 <= v77)
          {
            goto LABEL_98;
          }

LABEL_77:
          v79 = v106 * v77;
          while (2)
          {
            v80 = ((a4 + v79) >> 3) + v35;
            v81 = v80 & 0xFFFFFFFFFFFFFFFCLL;
            v82 = v20 & 0xFFFFFFFFFFFFFFE7 | (8 * (v80 & 3));
            v83 = *(v80 & 0xFFFFFFFFFFFFFFFCLL) >> v82;
            if (v82 >= 9)
            {
              v83 |= *(v81 + 4) << -v82;
            }

            v84 = (v83 >> 22) & 3;
            v85 = (v83 & 0x3FFFFF);
            v86 = v85 * 0.0078125;
            if (v84 != 2)
            {
              v86 = (v83 & 0x3FFFFF);
            }

            v87 = v85 * 0.00000095367;
            a9.n128_f32[0] = v85 * 0.000061035;
            if (!v84)
            {
              a9.n128_f32[0] = v87;
            }

            if (((v83 >> 22) & 3) <= 1)
            {
              v88 = a9.n128_f32[0];
            }

            else
            {
              v88 = v86;
            }

            if (v88 > 0.0)
            {
              if (a4)
              {
                v89 = (v79 >> 3) + v35;
                v90 = v89 & 0xFFFFFFFFFFFFFFFCLL;
                v91 = 8 * (v89 & 3);
                v92 = *(v89 & 0xFFFFFFFFFFFFFFFCLL) >> v91;
                if ((v91 + v132) >= 0x21)
                {
                  v92 |= *(v90 + 4) << -v91;
                }

                v93 = v92 & v131;
                if (!a14)
                {
LABEL_78:
                  result = sub_1AE776928(v133, a6, v128, v93, v88);
                  goto LABEL_79;
                }
              }

              else
              {
                v93 = 0;
                if (!a14)
                {
                  goto LABEL_78;
                }
              }

              result = (*(a14 + 16))(a14, v93, a9);
              if (result)
              {
                goto LABEL_78;
              }
            }

LABEL_79:
            v79 += v18;
            if (!--v78)
            {
              goto LABEL_98;
            }

            continue;
          }
        }
      }

      else
      {
        v71 = 0;
        v66 = v112;
        v72 = v127;
        if (v14)
        {
          goto LABEL_71;
        }
      }

LABEL_76:
      v77 = 0;
      v78 = v71;
      if (v71)
      {
        goto LABEL_77;
      }

LABEL_98:
      v19 = a13;
      if (!v110)
      {
        v94 = *v109 >> v108;
        if (v107 >= 0x21)
        {
          v94 |= v109[1] << v104;
        }

        v95 = ((v60 + v123) >> 3) + a8;
        v96 = v95 & 0xFFFFFFFFFFFFFFFCLL;
        v97 = v120 & 0xFFFFFFFFFFFFFFE7 | (8 * (v95 & 3));
        v98 = *(v95 & 0xFFFFFFFFFFFFFFFCLL) >> v97;
        if (v97 + v118 >= 0x21)
        {
          v98 |= *(v96 + 4) << -v97;
        }

        if (v14)
        {
          v99 = ((v123 + (v14 - 1) * v127) >> 3) + a8;
          v100 = v99 & 0xFFFFFFFFFFFFFFFCLL;
          v101 = v120 & 0xFFFFFFFFFFFFFFE7 | (8 * (v99 & 3));
          v102 = *(v99 & 0xFFFFFFFFFFFFFFFCLL) >> v101;
          if (v101 + v118 >= 0x21)
          {
            v102 |= *(v100 + 4) << -v101;
          }

          v59 = v102 & v126;
        }

        else
        {
          v59 = 0;
        }

        HIDWORD(v103) = v59;
        LODWORD(v103) = v94 & v126;
        result = sub_1AE77A1BC(v133, a2, a3, a4, a5, a6, v128, v122, v103, v98 & v126, a13, a14);
      }

LABEL_60:
      if (++v14 == v116)
      {
        return result;
      }

      continue;
    }
  }

  return result;
}

uint64_t sub_1AE77A9FC(uint64_t a1, unsigned int a2, float a3)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    v5 = 0;
    return sub_1AE777144(result, 1, *(a1 + 40), &v5, 1u, a2, 0, result + 4, -a3, 1u, 0, 1u, 0, 0, 0);
  }

  return result;
}

uint64_t sub_1AE77AA68(uint64_t result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, int a6, unsigned int a7, unsigned int a8, float a9, uint64_t a10)
{
  v94 = result;
  if (a6)
  {
    v10 = a7;
    if (a7 < a8)
    {
      if (a4)
      {
        v13 = 24;
      }

      else
      {
        v13 = 0;
      }

      v14 = (((3 * a4) >> 2) & 0x1FFFFFFF) + result + 3;
      v15 = 4 * (*(v14 & 0xFFFFFFFFFFFFFFFCLL) >> ((6 * a4) & 6 | (8 * (v14 & 3))));
      v16 = v15 & 0x1C;
      v93 = a4 + 1;
      if (a4 + 1 < a2)
      {
        v18 = 6 * a4 + 3;
        v19 = (v18 >> 3) + result + 3;
        v20 = v19 & 0xFFFFFFFFFFFFFFFCLL;
        v21 = v18 & 7 | (8 * (v19 & 3));
        v22 = *(v19 & 0xFFFFFFFFFFFFFFFCLL) >> v21;
        if (v21 >= 0x1E)
        {
          v22 |= *(v20 + 4) << -v21;
        }

        v17 = 4 * (v22 & 7);
      }

      else
      {
        v17 = 0;
      }

      v99 = v16 + v13;
      v23 = (a3 + 31) & 0xFFFFFFF8;
      v104 = ((v15 & 0x1C) + v13 + v17 + 7) & 0xF8;
      v24 = v104 * (a6 - 1);
      v107 = v15 & 0x1C;
      if ((v15 & 0x1C) != 0)
      {
        v25 = ((v24 + v13) >> 3) + a5;
        v26 = v25 & 0xFFFFFFFFFFFFFFFCLL;
        v27 = 8 * (v25 & 3);
        v28 = *(v25 & 0xFFFFFFFFFFFFFFFCLL) >> v27;
        if ((v27 + v16) >= 0x21)
        {
          v28 |= *(v26 + 4) << -v27;
        }

        v102 = 0xFFFFFFFF >> -(v15 & 0x1C);
        v29 = v28 & v102;
      }

      else
      {
        v29 = 0;
      }

      v30 = 0;
      v108 = 0;
      v31 = a5 + ((v104 * a6) >> 3);
      v92 = (v29 * v23) >> 3;
      v33 = v93 >= a2 || v17 == 0;
      v100 = v33;
      v34 = ((v24 + v99) >> 3) + a5;
      v98 = v15 & 4;
      v35 = v98 | (8 * (v34 & 3));
      v96 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      v97 = v17;
      v90 = v35 + v17;
      v91 = v15 & 4 | (8 * (v34 & 3));
      v87 = 32 - v35;
      v89 = 0xFFFFFFFF >> -v17;
      v110 = a3;
      v109 = 0xFFFFFFFF >> -a3;
      v113 = ~(-1 << (a3 & 7));
      v112 = (a3 | 0xFFFFFFF8) + 24;
      v88 = (a3 + 31) & 0xFFFFFFF8;
      v101 = v13;
      do
      {
        if (v107)
        {
          v36 = ((v13 + v10 * v104) >> 3) + a5;
          v37 = v36 & 0xFFFFFFFFFFFFFFFCLL;
          v38 = 8 * (v36 & 3);
          v39 = *(v36 & 0xFFFFFFFFFFFFFFFCLL) >> v38;
          if ((v38 + v107) >= 0x21)
          {
            v39 |= *(v37 + 4) << -v38;
          }

          v30 = v39 & v102;
          if (v10)
          {
            v40 = ((v13 + (v10 - 1) * v104) >> 3) + a5;
            v41 = v40 & 0xFFFFFFFFFFFFFFFCLL;
            v42 = 8 * (v40 & 3);
            v43 = *(v40 & 0xFFFFFFFFFFFFFFFCLL) >> v42;
            if ((v42 + v107) >= 0x21)
            {
              v43 |= *(v41 + 4) << -v42;
            }

            v108 = v43 & v102;
          }

          else
          {
            v108 = 0;
          }
        }

        v111 = v30;
        if (!v100)
        {
          v44 = *v96 >> v91;
          if (v90 >= 0x21)
          {
            v44 |= v96[1] << v87;
          }

          v45 = ((v99 + v10 * v104) >> 3) + a5;
          v46 = v45 & 0xFFFFFFFFFFFFFFFCLL;
          v47 = v98 & 0xFFFFFFFFFFFFFFE7 | (8 * (v45 & 3));
          v48 = *(v45 & 0xFFFFFFFFFFFFFFFCLL) >> v47;
          if (v47 + v97 >= 0x21)
          {
            v48 |= *(v46 + 4) << -v47;
          }

          if (v10)
          {
            v49 = ((v99 + (v10 - 1) * v104) >> 3) + a5;
            v50 = v49 & 0xFFFFFFFFFFFFFFFCLL;
            v51 = v98 & 0xFFFFFFFFFFFFFFE7 | (8 * (v49 & 3));
            v52 = *(v49 & 0xFFFFFFFFFFFFFFFCLL) >> v51;
            if (v51 + v97 >= 0x21)
            {
              v52 |= *(v50 + 4) << -v51;
            }

            v53 = v89;
            v54 = v52 & v89;
          }

          else
          {
            v54 = 0;
            v53 = v89;
          }

          v114[0] = MEMORY[0x1E69E9820];
          v114[1] = 0x40000000;
          v114[2] = sub_1AE77B14C;
          v114[3] = &unk_1E7A2FFD8;
          v115 = v107;
          v116 = v108;
          v117 = v30;
          v118 = a3;
          v119 = v23;
          v114[4] = a10;
          v114[5] = v31;
          result = sub_1AE77AA68(v94, a2, a3, v93, v31 + v92, v44 & v53, v54, v48 & v53, a9, v114);
          v30 = v111;
        }

        v106 = v10;
        v55 = v30 - v108;
        if (v30 > v108)
        {
          v56 = a3 + v88 * v108;
          v57 = 0.0;
          v58 = v56;
          do
          {
            v64 = (v58 >> 3) + v31;
            v65 = v64 & 0xFFFFFFFFFFFFFFFCLL;
            v66 = a3 & 7 | (8 * (v64 & 3));
            v67 = *(v64 & 0xFFFFFFFFFFFFFFFCLL) >> v66;
            if (v66 >= 9)
            {
              v67 |= *(v65 + 4) << -v66;
            }

            v59 = (v67 & 0x3FFFFF);
            v60 = (v67 >> 22) & 3;
            v61 = v59 * 0.0078125;
            if (v60 != 2)
            {
              v61 = v59;
            }

            v62 = v59 * 0.00000095367;
            v63 = v59 * 0.000061035;
            if (!v60)
            {
              v63 = v62;
            }

            if (v60 > 1)
            {
              v63 = v61;
            }

            v57 = v63 + v57;
            v58 += v23;
            --v55;
          }

          while (v55);
          if (v57 < a9)
          {
            v68 = v108;
            do
            {
              v69 = v68 * v23;
              if (a3)
              {
                v70 = (v69 >> 3) + v31;
                v71 = v70 & 0xFFFFFFFFFFFFFFFCLL;
                v72 = 8 * (v70 & 3);
                v73 = *(v70 & 0xFFFFFFFFFFFFFFFCLL) >> v72;
                if ((v72 + v110) >= 0x21)
                {
                  v73 |= *(v71 + 4) << -v72;
                }

                v74 = v73 & v109;
              }

              else
              {
                v74 = 0;
              }

              v75 = (v69 + a3) >> 3;
              v76 = ((v75 + v31) & 0xFFFFFFFFFFFFFFFCLL);
              v77 = a3 & 7 | (8 * ((v75 + v31) & 3));
              v78 = *v76 >> v77;
              if (v77 >= 9)
              {
                v78 |= v76[1] << -v77;
              }

              v79 = (v56 >> 3) + 1;
              v80 = (v78 & 0x3FFFFF);
              v81 = (v78 >> 22) & 3;
              v82 = v80 * 0.0078125;
              if (v81 != 2)
              {
                v82 = v80;
              }

              v83 = v80 * 0.00000095367;
              v84 = v80 * 0.000061035;
              if (!v81)
              {
                v84 = v83;
              }

              if (v81 > 1)
              {
                v84 = v82;
              }

              *(v31 + v75) &= v113;
              v85 = v112;
              do
              {
                if (v85 >= 8)
                {
                  v86 = 8;
                }

                else
                {
                  v86 = v85;
                }

                *(v31 + v79++) &= -256 >> (8 - v86);
                v85 -= v86;
              }

              while (v85);
              if (v84 > 0.0)
              {
                result = (*(a10 + 16))(a10, v74);
                v30 = v111;
              }

              ++v68;
              v56 += v23;
            }

            while (v68 != v30);
          }
        }

        v10 = v106 + 1;
        v13 = v101;
      }

      while (v106 + 1 != a8);
    }
  }

  return result;
}

uint64_t sub_1AE77B14C(uint64_t a1, unsigned int a2, float a3)
{
  if (!*(a1 + 48))
  {
    return (*(*(a1 + 32) + 16))();
  }

  v3 = *(a1 + 52);
  v4 = *(a1 + 56);
  if (v3 >= v4)
  {
    return (*(*(a1 + 32) + 16))();
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 60);
  v7 = (v6 + 31) & 0xFFFFFFF8;
  v8 = v4 - 1;
  if (v6)
  {
    v9 = ((v7 * v3) >> 3) + v5;
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    v11 = 8 * (v9 & 3);
    v12 = *v10 >> v11;
    if ((v11 + v6) >= 0x21)
    {
      v12 |= v10[1] << -v11;
    }

    v13 = 0xFFFFFFFF >> -v6;
    v14 = v12 & v13;
    if (v14 > a2)
    {
      return (*(*(a1 + 32) + 16))();
    }

    if (v14 == a2)
    {
      goto LABEL_33;
    }

    v15 = ((v7 * v8) >> 3) + v5;
    v16 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = 8 * (v15 & 3);
    v18 = *(v15 & 0xFFFFFFFFFFFFFFFCLL) >> v17;
    if ((v17 + v6) >= 0x21)
    {
      v18 |= *(v16 + 4) << -v17;
    }

    v19 = v18 & v13;
  }

  else
  {
    v19 = 0;
    if (!a2)
    {
      goto LABEL_32;
    }
  }

  if (v19 < a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  if (v19 == a2)
  {
    v3 = v8;
  }

  if (v3 + 1 >= v8)
  {
    v3 = v8;
    goto LABEL_32;
  }

  if (v6)
  {
    while (1)
    {
      v20 = (v3 + v8) >> 1;
      v21 = ((v20 * v7) >> 3) + v5;
      v22 = v21 & 0xFFFFFFFFFFFFFFFCLL;
      v23 = 8 * (v21 & 3);
      v24 = *(v21 & 0xFFFFFFFFFFFFFFFCLL) >> v23;
      if ((v23 + v6) >= 0x21)
      {
        v24 |= *(v22 + 4) << -v23;
      }

      v19 = v24 & (0xFFFFFFFF >> -v6);
      if (v19 > a2)
      {
        v8 = (v3 + v8) >> 1;
      }

      else
      {
        if (v19 == a2)
        {
          v3 = (v3 + v8) >> 1;
          goto LABEL_33;
        }

        if (v19 < a2)
        {
          v3 = (v3 + v8) >> 1;
        }
      }

      if (v3 + 1 >= v8)
      {
        v3 = v20;
        goto LABEL_32;
      }
    }
  }

  if (a2)
  {
    do
    {
      v3 = (v3 + v8) >> 1;
    }

    while (v3 + 1 < v8);
    v19 = 0;
LABEL_32:
    if (v19 == a2)
    {
      goto LABEL_33;
    }

    return (*(*(a1 + 32) + 16))();
  }

  v3 = (v3 + v8) >> 1;
LABEL_33:
  v25 = v6 + *(a1 + 64) * v3;
  v26 = v25 >> 3;
  v27 = (v25 >> 3) + v5;
  v28 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  v29 = v25 & 7 | (8 * (v27 & 3));
  v30 = *(v27 & 0xFFFFFFFFFFFFFFFCLL) >> v29;
  if (v29 >= 9)
  {
    v30 |= *(v28 + 4) << -v29;
  }

  v31 = (v30 >> 22) & 3;
  v32 = (v30 & 0x3FFFFF);
  v33 = v32 * 0.0078125;
  if (v31 != 2)
  {
    v33 = (v30 & 0x3FFFFF);
  }

  v34 = v32 * 0.00000095367;
  v35 = v32 * 0.000061035;
  if (!v31)
  {
    v35 = v34;
  }

  if (((v30 >> 22) & 3) > 1)
  {
    v35 = v33;
  }

  v36 = v35 - a3;
  if (v36 >= 4194300.0)
  {
    v37 = 12582912;
    v38 = 0x3FFFFF;
  }

  else if (v36 >= 32768.0)
  {
    v38 = v36;
    v37 = 12582912;
  }

  else if (v36 >= 256.0)
  {
    v38 = vcvts_n_s32_f32(v36, 7uLL);
    v37 = 0x800000;
  }

  else if (v36 >= 4.0)
  {
    v38 = vcvts_n_s32_f32(v36, 0xEuLL);
    v37 = 0x400000;
  }

  else
  {
    v37 = 0;
    if (v36 <= 0.0)
    {
      v38 = 0;
    }

    else
    {
      v38 = vcvts_n_s32_f32(v36, 0x14uLL);
    }
  }

  if (v38 >= 0x3FFFFF)
  {
    v38 = 0x3FFFFF;
  }

  *(v5 + v26) = ((v38 & (0xFFu >> (v25 & 7))) << (v25 & 7)) | *(v5 + v26) & ~(0xFFu >> (v25 & 7) << (v25 & 7));
  v39 = (v25 | 0xFFFFFFF8) + 24;
  v40 = v26 + 1;
  do
  {
    if (v39 >= 8)
    {
      v41 = 8;
    }

    else
    {
      v41 = v39;
    }

    *(v5 + v40) = (-256 >> (8 - v41)) & *(v5 + v40) | (0xFFu >> (8 - v41)) & ((v38 | v37) >> (24 - v39));
    ++v40;
    v39 -= v41;
  }

  while (v39);
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_1AE77B498(unint64_t a1, unsigned int a2, int a3)
{
  v5 = a1 & 0xFFFFFFFFFFFFFFFCLL;
  v6 = 8 * (a1 & 3);
  v7 = *(a1 & 0xFFFFFFFFFFFFFFFCLL) >> v6;
  v8 = v7;
  if (v6 >= 9)
  {
    v8 = (*(v5 + 4) << (-8 * (a1 & 3))) | v7;
  }

  v9 = 4 * (v8 & 0xFFFFFF);
  v10 = ((6 * a2 + 4) >> 3) + 3;
  if (v9 >= v10)
  {
    v11 = a1 + v10;
    v13 = sub_1AE77BA48(a1, a2, a3, 0, v11, 1u);
    if (v11 <= v13 && v13 <= a1 + v9)
    {
      v15 = (v13 - a1 + 3) & 0xFFFFFFFC;
      if (v9 >= v15 && v15 >= v10)
      {
        v89 = v13;
        v85 = v5;
        v95 = 0;
        v94 = a1 + 3;
        v90 = a3;
        v88 = (a3 + 31) & 0xFFFFFFF8;
        if (a2 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = a2;
        }

        v86 = v18 - 1;
        v19 = 1;
        while (1)
        {
          v20 = v7;
          if (v6 >= 9)
          {
            v20 = (*(v85 + 4) << (32 - v6)) | v7;
          }

          if (v95)
          {
            v21 = 24;
          }

          else
          {
            v21 = 0;
          }

          v22 = (((3 * v95) >> 2) & 0x1FFFFFFF) + v94;
          v23 = *(v22 & 0xFFFFFFFFFFFFFFFCLL) >> ((6 * v95) & 6 | (8 * (v22 & 3)));
          if (v95 + 1 >= a2)
          {
            v28 = 0;
          }

          else
          {
            v24 = 6 * v95 + 3;
            v25 = (v24 >> 3) + v94;
            v26 = v24 & 7 | (8 * (v25 & 3));
            v27 = *(v25 & 0xFFFFFFFFFFFFFFFCLL) >> v26;
            if (v26 >= 0x1E)
            {
              v27 |= *((v25 & 0xFFFFFFFFFFFFFFFCLL) + 4) << -v26;
            }

            v28 = 4 * (v27 & 7);
          }

          v29 = 4 * (v20 & 0xFFFFFF);
          v93 = 4 * v23;
          v30 = (4 * v23) & 0x1C;
          v96 = v28;
          v92 = v30 + v21;
          v31 = (((4 * v23) & 0x1C) + v21 + v28 + 7) & 0xF8;
          v32 = sub_1AE77BA48(a1, a2, v90, v95, v11, v19);
          v33 = v19 - 1;
          v34 = v31 * (v19 - 1);
          v35 = ((v34 + v21) >> 3) + v11;
          v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
          v37 = 8 * (v35 & 3);
          v38 = a1 + v29;
          v39 = 1;
          if ((v37 + v30) <= 0x20)
          {
            v39 = 2;
          }

          v40 = &v36[v39];
          if (v36 < a1 || v40 > v38)
          {
            return 0;
          }

          v42 = v32;
          if (v30)
          {
            v43 = *v36 >> v37;
            if ((v37 + v30) >= 0x21)
            {
              v43 |= v36[1] << -v37;
            }

            v44 = v43 & (0xFFFFFFFF >> -v30);
          }

          else
          {
            v44 = 0;
          }

          result = 0;
          if (v38 < v89)
          {
            return result;
          }

          if (v42 != v89)
          {
            return result;
          }

          v87 = v11 + ((v31 * v19) >> 3) + ((v44 * v88) >> 3);
          if (v87 > v89)
          {
            return result;
          }

          if (v19 >= 2)
          {
            break;
          }

LABEL_82:
          if (v95 == v86)
          {
            return 1;
          }

          v76 = v93 & 4;
          v77 = ((v34 + v92) >> 3) + v11;
          v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
          v79 = 8 * (v77 & 3);
          if (v79 + (v96 + v76) <= 0x20)
          {
            v80 = 2;
          }

          else
          {
            v80 = 1;
          }

          v81 = &v78[v80];
          if (v78 < a1 || v81 > v38)
          {
            return 0;
          }

          if (!v96)
          {
            return 1;
          }

          v83 = v79 | v76;
          v84 = *v78 >> v83;
          if (v83 + v96 >= 0x21)
          {
            v84 |= v78[1] << -v83;
          }

          result = 1;
          v11 = v87;
          ++v95;
          v19 = v84 & (0xFFFFFFFF >> -v96);
          if (!v19)
          {
            return result;
          }
        }

        v45 = v30 + v21;
        v46 = v93 & 4;
        v47 = v96 + v46;
        v91 = 0xFFFFFFFF >> -v30;
        v48 = 0xFFFFFFFF >> -v96;
        while (1)
        {
          v49 = (v21 >> 3) + v11;
          v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
          v51 = 8 * (v49 & 3);
          if ((v51 + v30) <= 0x20)
          {
            v52 = 2;
          }

          else
          {
            v52 = 1;
          }

          v53 = &v50[v52];
          result = 0;
          if (v50 < a1 || v53 > v38)
          {
            return result;
          }

          v55 = ((v31 + v21) >> 3) + v11;
          v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
          v57 = 8 * (v55 & 3);
          v58 = (v57 + v30) <= 0x20 ? 8 : 4;
          if (v56 < a1 || v56 + v58 > v38)
          {
            return result;
          }

          result = 0;
          v59 = (v45 >> 3) + v11;
          v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
          v61 = 8 * (v59 & 3);
          v62 = (v61 + v47) <= 0x20 ? 8 : 4;
          if (v60 < a1 || v60 + v62 > v38)
          {
            return result;
          }

          result = 0;
          v63 = ((v31 + v45) >> 3) + v11;
          v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
          v65 = 8 * (v63 & 3);
          v66 = (v65 + v47) <= 0x20 ? 8 : 4;
          if (v64 < a1 || v64 + v66 > v38)
          {
            return result;
          }

          if (v30)
          {
            v67 = *v50 >> v51;
            if ((v51 + v30) >= 0x21)
            {
              v67 |= v50[1] << -v51;
            }

            v68 = *v56 >> v57;
            if ((v57 + v30) >= 0x21)
            {
              v68 |= v56[1] << -v57;
            }

            v69 = v67 & v91;
            v70 = v68 & v91;
            if (!v96)
            {
LABEL_78:
              v74 = 0;
              v75 = 0;
              goto LABEL_79;
            }
          }

          else
          {
            v69 = 0;
            v70 = 0;
            if (!v96)
            {
              goto LABEL_78;
            }
          }

          v71 = v61 | v46;
          v72 = *v60 >> v71;
          if (v71 + v96 >= 0x21)
          {
            v72 |= v60[1] << -v71;
          }

          v73 = *v64 >> (v65 | v46);
          if ((v65 | v46) + v96 >= 0x21)
          {
            v73 |= v64[1] << -(v65 | v46);
          }

          v74 = v72 & v48;
          v75 = v73 & v48;
LABEL_79:
          result = 0;
          if (v69 > v70 || v74 > v75)
          {
            return result;
          }

          v45 += v31;
          v21 += v31;
          if (!--v33)
          {
            goto LABEL_82;
          }
        }
      }
    }
  }

  return 0;
}

unint64_t sub_1AE77BA48(unint64_t a1, unsigned int a2, int a3, int a4, unint64_t a5, unsigned int a6)
{
  v6 = 8 * (a1 & 3);
  v7 = a1 + 3;
  v8 = a4 + 1;
  v9 = 6 * a4;
  while (1)
  {
    v10 = *(a1 & 0xFFFFFFFFFFFFFFFCLL) >> v6;
    if (v6 >= 9)
    {
      v10 = (*((a1 & 0xFFFFFFFFFFFFFFFCLL) + 4) << (32 - v6)) | (*(a1 & 0xFFFFFFFFFFFFFFFCLL) >> v6);
    }

    if (v8 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 24;
    }

    if (v8 < a2)
    {
      v13 = ((v9 + 3) >> 3) + v7;
      v14 = (v9 + 3) & 7 | (8 * (v13 & 3));
      v15 = *(v13 & 0xFFFFFFFFFFFFFFFCLL) >> v14;
      if (v14 >= 0x1E)
      {
        v15 |= *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 4) << -v14;
      }

      v12 = 4 * (v15 & 7);
    }

    else
    {
      v12 = 0;
    }

    v16 = 4 * (*(((v9 >> 3) + v7) & 0xFFFFFFFFFFFFFFFCLL) >> (v9 & 6 | (8 * (((v9 >> 3) + v7) & 3))));
    v17 = (v16 & 0x1C) + v11;
    v18 = ((v16 & 0x1C) + v11 + v12 + 7) & 0xF8;
    v19 = v18 * (a6 - 1);
    v20 = ((v19 + v11) >> 3) + a5;
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    v22 = 8 * (v20 & 3);
    v23 = v22 + (v16 & 0x1C);
    v24 = a1 + 4 * (v10 & 0xFFFFFFu);
    if (v23 <= 0x20)
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    v26 = &v21[v25];
    if (v21 < a1 || v26 > v24)
    {
      return 0;
    }

    if ((v16 & 0x1C) != 0)
    {
      v28 = *v21 >> v22;
      if (v23 >= 0x21)
      {
        v28 |= v21[1] << -v22;
      }

      v29 = v28 & (0xFFFFFFFF >> -(v16 & 0x1C));
    }

    else
    {
      v29 = 0;
    }

    v30 = a5 + ((v29 * ((a3 + 31) & 0xFFFFFFF8)) >> 3) + ((v18 * a6) >> 3);
    v31 = v30 < a5 || v30 > v24;
    v32 = v31;
    if (v8 >= a2 || v32)
    {
      break;
    }

    v33 = (4 * (*(((v9 >> 3) + v7) & 0xFFFFFFFFFFFFFFFCLL) >> (v9 & 6 | (8 * (((v9 >> 3) + v7) & 3))))) & 4;
    v34 = ((v19 + v17) >> 3) + a5;
    v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
    v36 = 8 * (v34 & 3);
    if (v12 + v33 + v36 <= 0x20)
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    v38 = &v35[v37];
    if (v35 < a1 || v38 > v24)
    {
      return 0;
    }

    a5 = v30;
    if (v12)
    {
      v40 = *v35 >> (v36 | v33);
      if ((v36 | v33) + v12 >= 0x21)
      {
        v40 |= v35[1] << -(v36 | v33);
      }

      ++v8;
      v9 += 6;
      a6 = v40 & (0xFFFFFFFF >> -v12);
      if (a6)
      {
        continue;
      }
    }

    return a5;
  }

  if (v32)
  {
    return 0;
  }

  else
  {
    return v30;
  }
}

int *sub_1AE77BCB4(int *result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = (a2 - 8);
    v9 = a2 - 4;
    v10 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v10;
          v11 = (a2 - v10) >> 3;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v94 = v10[2];
                v95 = *v10;
                v96 = *v8;
                if (v94 >= *v10)
                {
                  if (v96 >= v94)
                  {
                    return result;
                  }

                  v10[2] = v96;
                  *v8 = v94;
                  v147 = v10[3];
                  v10[3] = *v9;
                  *v9 = v147;
                  v148 = v10[2];
                  v149 = *v10;
                  if (v148 >= *v10)
                  {
                    return result;
                  }

                  *v10 = v148;
                  v10[2] = v149;
                  v97 = (v10 + 1);
                  v9 = (v10 + 3);
                }

                else
                {
                  if (v96 >= v94)
                  {
                    v97 = (v10 + 3);
                    v160 = v10[3];
                    v161 = v10[1];
                    *v10 = v94;
                    v10[1] = v160;
                    v10[2] = v95;
                    v10[3] = v161;
                    if (*v8 >= v95)
                    {
                      return result;
                    }

                    v10[2] = *v8;
                  }

                  else
                  {
                    v97 = (v10 + 1);
                    *v10 = v96;
                  }

                  *v8 = v95;
                }

                v162 = *v97;
                *v97 = *v9;
                *v9 = v162;
                return result;
              case 4:
                v98 = v10[2];
                v99 = *v10;
                v100 = v10[4];
                if (v98 >= *v10)
                {
                  if (v100 < v98)
                  {
                    v150 = (v10 + 3);
                    v151 = v10[3];
                    v152 = v10[5];
                    v10[2] = v100;
                    v10[3] = v152;
                    v10[4] = v98;
                    v10[5] = v151;
                    if (v100 < v99)
                    {
                      *v10 = v100;
                      v10[2] = v99;
                      v101 = (v10 + 1);
                      goto LABEL_201;
                    }

LABEL_203:
                    if (*v8 < v98)
                    {
                      v10[4] = *v8;
                      *v8 = v98;
                      v166 = v10[5];
                      v10[5] = *v9;
                      *v9 = v166;
                      v167 = v10[4];
                      v168 = v10[2];
                      if (v167 < v168)
                      {
                        v169 = v10[3];
                        v170 = v10[5];
                        v10[2] = v167;
                        v10[3] = v170;
                        v10[4] = v168;
                        v10[5] = v169;
                        v171 = *v10;
                        if (v167 < *v10)
                        {
                          v172 = v10[1];
                          *v10 = v167;
                          v10[1] = v170;
                          v10[2] = v171;
                          v10[3] = v172;
                        }
                      }
                    }

                    return result;
                  }
                }

                else
                {
                  if (v100 < v98)
                  {
                    v101 = (v10 + 1);
                    *v10 = v100;
                    goto LABEL_200;
                  }

                  v101 = (v10 + 3);
                  v163 = v10[3];
                  v164 = v10[1];
                  *v10 = v98;
                  v10[1] = v163;
                  v10[2] = v99;
                  v10[3] = v164;
                  if (v100 < v99)
                  {
                    v10[2] = v100;
LABEL_200:
                    v10[4] = v99;
                    v150 = (v10 + 5);
LABEL_201:
                    v165 = *v101;
                    *v101 = *v150;
                    *v150 = v165;
                    v98 = v10[4];
                    goto LABEL_203;
                  }
                }

                v98 = v100;
                goto LABEL_203;
              case 5:

                return sub_1AE77C810(v10, v10 + 2, v10 + 4, v10 + 6, a2 - 2);
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v92 = *v10;
              if (*v8 < *v10)
              {
                *v10 = *v8;
                *v8 = v92;
                v93 = v10[1];
                v10[1] = *v9;
                *v9 = v93;
              }

              return result;
            }
          }

          if (v11 <= 23)
          {
            v102 = (v10 + 2);
            v104 = v10 == a2 || v102 == a2;
            if (a4)
            {
              if (!v104)
              {
                v105 = 0;
                v106 = v10;
                do
                {
                  v108 = v106[2];
                  v109 = *v106;
                  v106 = v102;
                  if (v108 < v109)
                  {
                    v111 = *v102;
                    v110 = *(v102 + 1);
                    v112 = v105;
                    do
                    {
                      v113 = v10 + v112;
                      v114 = *(v10 + v112 + 4);
                      *(v113 + 2) = v109;
                      *(v113 + 3) = v114;
                      if (!v112)
                      {
                        v107 = v10;
                        goto LABEL_132;
                      }

                      v109 = *(v113 - 2);
                      v112 -= 8;
                    }

                    while (v109 > v111);
                    v107 = (v10 + v112 + 8);
LABEL_132:
                    *v107 = v111;
                    v107[1] = v110;
                  }

                  v102 = (v106 + 2);
                  v105 += 8;
                }

                while (v106 + 2 != a2);
              }
            }

            else if (!v104)
            {
              v153 = v10 + 3;
              do
              {
                v154 = v7[2];
                v155 = *v7;
                v7 = v102;
                if (v154 < v155)
                {
                  v156 = *v102;
                  v157 = v153;
                  do
                  {
                    v158 = v157;
                    v159 = *(v157 - 2);
                    v157 -= 2;
                    *(v158 - 1) = v155;
                    *v158 = v159;
                    v155 = *(v158 - 5);
                  }

                  while (v155 > v156);
                  *(v157 - 1) = v156;
                }

                v102 = (v7 + 2);
                v153 += 2;
              }

              while (v7 + 2 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v10 != a2)
            {
              v115 = (v11 - 2) >> 1;
              v116 = v115;
              do
              {
                if (v115 >= v116)
                {
                  v118 = (2 * (v116 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
                  v119 = &v10[2 * v118];
                  if (2 * (v116 & 0x1FFFFFFFFFFFFFFFLL) + 2 >= v11)
                  {
                    v120 = *v119;
                  }

                  else
                  {
                    v120 = *v119;
                    v121 = v119[2];
                    if (*v119 <= v121)
                    {
                      v120 = v119[2];
                    }

                    if (*v119 < v121)
                    {
                      v119 += 2;
                      v118 = 2 * (v116 & 0x1FFFFFFFFFFFFFFFLL) + 2;
                    }
                  }

                  v122 = &v10[2 * v116];
                  if (v120 >= *v122)
                  {
                    v123 = *v122;
                    v124 = v122[1];
                    while (1)
                    {
                      v126 = v122;
                      v122 = v119;
                      *v126 = v120;
                      v126[1] = v119[1];
                      if (v115 < v118)
                      {
                        break;
                      }

                      v127 = (2 * (v118 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                      v119 = &v10[2 * v127];
                      v118 = 2 * v118 + 2;
                      if (v118 < v11)
                      {
                        v120 = *v119;
                        result = (v119 + 2);
                        v125 = v119[2];
                        if (*v119 <= v125)
                        {
                          v120 = v119[2];
                        }

                        if (*v119 >= v125)
                        {
                          v118 = v127;
                        }

                        else
                        {
                          v119 += 2;
                        }

                        if (v120 < v123)
                        {
                          break;
                        }
                      }

                      else
                      {
                        v120 = *v119;
                        v118 = v127;
                        if (*v119 < v123)
                        {
                          break;
                        }
                      }
                    }

                    *v122 = v123;
                    v122[1] = v124;
                  }
                }

                v117 = v116-- <= 0;
              }

              while (!v117);
              do
              {
                v128 = 0;
                v129 = *v10;
                v130 = v10;
                do
                {
                  v137 = &v130[2 * v128];
                  v136 = (v137 + 2);
                  v138 = (2 * v128) | 1;
                  v128 = 2 * v128 + 2;
                  if (v128 < v11)
                  {
                    v133 = v137[4];
                    v132 = (v137 + 4);
                    v131 = v133;
                    v134 = *(v132 - 2);
                    v135 = v134 >= v133;
                    if (v134 > v133)
                    {
                      v131 = *(v132 - 2);
                    }

                    if (v135)
                    {
                      v128 = v138;
                    }

                    else
                    {
                      v136 = v132;
                    }
                  }

                  else
                  {
                    v131 = *v136;
                    v128 = v138;
                  }

                  *v130 = v131;
                  v130[1] = *(v136 + 1);
                  v130 = v136;
                }

                while (v128 <= ((v11 - 2) >> 1));
                if (v136 == a2 - 8)
                {
                  *v136 = v129;
                }

                else
                {
                  *v136 = *(a2 - 2);
                  *(v136 + 1) = *(a2 - 1);
                  *(a2 - 1) = v129;
                  v139 = (v136 - v10 + 8) >> 3;
                  v117 = v139 < 2;
                  v140 = v139 - 2;
                  if (!v117)
                  {
                    v141 = v140 >> 1;
                    v142 = &v10[2 * v141];
                    v143 = *v142;
                    if (*v142 < *v136)
                    {
                      v144 = *v136;
                      v145 = *(v136 + 1);
                      do
                      {
                        v146 = v136;
                        v136 = v142;
                        *v146 = v143;
                        *(v146 + 1) = *(v142 + 1);
                        if (!v141)
                        {
                          break;
                        }

                        v141 = (v141 - 1) >> 1;
                        v142 = &v10[2 * v141];
                        v143 = *v142;
                      }

                      while (*v142 < v144);
                      *v136 = v144;
                      *(v136 + 1) = v145;
                    }
                  }
                }

                a2 -= 8;
                v117 = v11-- <= 2;
              }

              while (!v117);
            }

            return result;
          }

          v12 = &v10[2 * (v11 >> 1)];
          v13 = v12;
          v14 = *v8;
          if (v11 >= 0x81)
          {
            v15 = *v12;
            v16 = *v10;
            if (*v12 >= *v10)
            {
              if (v14 >= v15 || (*v12 = v14, *v8 = v15, v22 = (v12 + 1), v21 = v12[1], v12[1] = *v9, *v9 = v21, v23 = *v10, *v12 >= *v10))
              {
LABEL_29:
                v30 = v12 - 2;
                v31 = *(v12 - 2);
                v32 = v10[2];
                v33 = *(a2 - 4);
                if (v31 >= v32)
                {
                  if (v33 >= v31 || (*v30 = v33, *(a2 - 4) = v31, v36 = (v12 - 1), v35 = *(v12 - 1), *(v12 - 1) = *(a2 - 3), *(a2 - 3) = v35, v37 = v10[2], *v30 >= v37))
                  {
LABEL_42:
                    v46 = v12[2];
                    v44 = v12 + 2;
                    v45 = v46;
                    v47 = v10[4];
                    v48 = *(a2 - 6);
                    if (v46 >= v47)
                    {
                      if (v48 < v45)
                      {
                        *v44 = v48;
                        *(a2 - 6) = v45;
                        v51 = (v44 + 1);
                        v50 = v44[1];
                        v44[1] = *(a2 - 5);
                        *(a2 - 5) = v50;
                        v45 = *v44;
                        v52 = v10[4];
                        if (*v44 < v52)
                        {
                          v10[4] = v45;
                          *v44 = v52;
                          v49 = (v10 + 5);
LABEL_51:
                          v56 = *v49;
                          *v49 = *v51;
                          *v51 = v56;
                          v45 = *v44;
                        }
                      }
                    }

                    else
                    {
                      if (v48 < v45)
                      {
                        v49 = (v10 + 5);
                        v10[4] = v48;
LABEL_50:
                        *(a2 - 6) = v47;
                        v51 = a2 - 20;
                        goto LABEL_51;
                      }

                      v49 = (v44 + 1);
                      v53 = v44[1];
                      v54 = v10[5];
                      v10[4] = v45;
                      v10[5] = v53;
                      *v44 = v47;
                      v44[1] = v54;
                      v55 = *(a2 - 6);
                      if (v55 < v47)
                      {
                        *v44 = v55;
                        goto LABEL_50;
                      }

                      v45 = v47;
                    }

                    v57 = *v13;
                    v58 = *v30;
                    if (*v13 >= *v30)
                    {
                      if (v45 >= v57)
                      {
LABEL_62:
                        v66 = *v10;
                        *v10 = v57;
                        v20 = (v10 + 1);
                        *v13 = v66;
                        v26 = (v13 + 1);
                        goto LABEL_63;
                      }

                      v61 = (v13 + 1);
                      v62 = v13[1];
                      *v13 = v45;
                      v13[1] = v44[1];
                      *v44 = v57;
                      v44[1] = v62;
                      if (v45 >= v58)
                      {
                        v57 = v45;
                        goto LABEL_62;
                      }

                      *v30 = v45;
                      v59 = (v30 + 1);
                      *v13 = v58;
                    }

                    else
                    {
                      if (v45 >= v57)
                      {
                        v63 = v13[1];
                        *v13 = v58;
                        v64 = v30[1];
                        *v30 = v57;
                        v30[1] = v63;
                        v13[1] = v64;
                        if (v45 >= v58)
                        {
                          v57 = v58;
                          goto LABEL_62;
                        }

                        *v13 = v45;
                        *v44 = v58;
                        v60 = (v44 + 1);
                        v59 = (v13 + 1);
                      }

                      else
                      {
                        *v30 = v45;
                        v59 = (v30 + 1);
                        *v44 = v58;
                        v60 = (v44 + 1);
                      }

                      v61 = v60;
                    }

                    v65 = *v59;
                    *v59 = *v61;
                    *v61 = v65;
                    v57 = *v13;
                    goto LABEL_62;
                  }

                  v10[2] = *v30;
                  *v30 = v37;
                  v34 = v10 + 3;
                }

                else
                {
                  if (v33 >= v31)
                  {
                    v34 = v12 - 1;
                    v40 = *(v12 - 1);
                    v41 = v10[3];
                    v10[2] = v31;
                    v10[3] = v40;
                    *v30 = v32;
                    *(v12 - 1) = v41;
                    v42 = *(a2 - 4);
                    if (v42 >= v32)
                    {
                      goto LABEL_42;
                    }

                    *v30 = v42;
                  }

                  else
                  {
                    v34 = v10 + 3;
                    v10[2] = v33;
                  }

                  *(a2 - 4) = v32;
                  v36 = a2 - 12;
                }

                v43 = *v34;
                *v34 = *v36;
                *v36 = v43;
                goto LABEL_42;
              }

              *v10 = *v12;
              v17 = (v10 + 1);
              *v12 = v23;
            }

            else
            {
              if (v14 >= v15)
              {
                v17 = (v12 + 1);
                v27 = v12[1];
                v28 = v10[1];
                *v10 = v15;
                v10[1] = v27;
                *v12 = v16;
                v12[1] = v28;
                if (*v8 >= v16)
                {
                  goto LABEL_29;
                }

                *v12 = *v8;
              }

              else
              {
                v17 = (v10 + 1);
                *v10 = v14;
              }

              *v8 = v16;
              v22 = a2 - 4;
            }

            v29 = *v17;
            *v17 = *v22;
            *v22 = v29;
            goto LABEL_29;
          }

          v18 = *v10;
          v19 = *v12;
          if (*v10 >= *v12)
          {
            if (v14 < v18)
            {
              *v10 = v14;
              *v8 = v18;
              v24 = v10[1];
              v10[1] = *v9;
              *v9 = v24;
              v25 = *v13;
              if (*v10 < *v13)
              {
                *v13 = *v10;
                *v10 = v25;
                v20 = (v13 + 1);
                v26 = (v10 + 1);
LABEL_63:
                v67 = *v20;
                *v20 = *v26;
                *v26 = v67;
              }
            }
          }

          else
          {
            if (v14 < v18)
            {
              v20 = (v12 + 1);
              *v13 = v14;
LABEL_37:
              *v8 = v19;
              v26 = a2 - 4;
              goto LABEL_63;
            }

            v20 = (v10 + 1);
            v38 = v10[1];
            v39 = v13[1];
            *v13 = v18;
            v13[1] = v38;
            *v10 = v19;
            v10[1] = v39;
            if (*v8 < v19)
            {
              *v10 = *v8;
              goto LABEL_37;
            }
          }

          --a3;
          if ((a4 & 1) != 0 || *(v10 - 2) < *v10)
          {
            break;
          }

          v82 = *v10;
          if (*v8 <= *v10)
          {
            v84 = v10 + 2;
            do
            {
              v10 = v84;
              if (v84 >= a2)
              {
                break;
              }

              v84 += 2;
            }

            while (*v10 <= v82);
          }

          else
          {
            do
            {
              v83 = v10[2];
              v10 += 2;
            }

            while (v83 <= v82);
          }

          v85 = a2;
          if (v10 < a2)
          {
            v85 = a2;
            do
            {
              v86 = *(v85 - 2);
              v85 -= 2;
            }

            while (v86 > v82);
          }

          if (v10 < v85)
          {
            v87 = *v10;
            v88 = *v85;
            do
            {
              *v10 = v88;
              *v85 = v87;
              v89 = v10[1];
              v10[1] = v85[1];
              v85[1] = v89;
              do
              {
                v90 = v10[2];
                v10 += 2;
                v87 = v90;
              }

              while (v90 <= v82);
              do
              {
                v91 = *(v85 - 2);
                v85 -= 2;
                v88 = v91;
              }

              while (v91 > v82);
            }

            while (v10 < v85);
          }

          if (v10 - 2 != v7)
          {
            *v7 = *(v10 - 2);
            v7[1] = *(v10 - 1);
          }

          a4 = 0;
          *(v10 - 1) = v82;
        }

        v68 = *v10;
        v69 = v10;
        do
        {
          v70 = v69;
          v72 = v69[2];
          v69 += 2;
          v71 = v72;
        }

        while (v72 < v68);
        v73 = a2;
        if (v70 == v10)
        {
          v73 = a2;
          do
          {
            if (v69 >= v73)
            {
              break;
            }

            v75 = *(v73 - 2);
            v73 -= 8;
          }

          while (v75 >= v68);
        }

        else
        {
          do
          {
            v74 = *(v73 - 2);
            v73 -= 8;
          }

          while (v74 >= v68);
        }

        if (v69 >= v73)
        {
          v10 = v69;
        }

        else
        {
          v76 = *v73;
          v10 = v69;
          v77 = v73;
          do
          {
            *v10 = v76;
            *v77 = v71;
            v78 = v10[1];
            v10[1] = v77[1];
            v77[1] = v78;
            do
            {
              v79 = v10[2];
              v10 += 2;
              v71 = v79;
            }

            while (v79 < v68);
            do
            {
              v80 = *(v77 - 2);
              v77 -= 2;
              v76 = v80;
            }

            while (v80 >= v68);
          }

          while (v10 < v77);
        }

        if (v10 - 2 != v7)
        {
          *v7 = *(v10 - 2);
          v7[1] = *(v10 - 1);
        }

        *(v10 - 1) = v68;
        if (v69 >= v73)
        {
          break;
        }

LABEL_87:
        result = sub_1AE77BCB4(v7, v10 - 2, a3, a4 & 1);
        a4 = 0;
      }

      v81 = sub_1AE77C9E0(v7, v10 - 8);
      result = sub_1AE77C9E0(v10, a2);
      if (result)
      {
        break;
      }

      if (!v81)
      {
        goto LABEL_87;
      }
    }

    a2 = (v10 - 2);
    if (!v81)
    {
      continue;
    }

    return result;
  }
}

int *sub_1AE77C810(int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 < v5)
    {
      *a2 = v7;
      *a3 = v5;
      v10 = (a2 + 1);
      v9 = a2[1];
      a2[1] = a3[1];
      a3[1] = v9;
      v11 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        v8 = result + 1;
        *a2 = v11;
LABEL_10:
        v13 = *v8;
        *v8 = *v10;
        *v10 = v13;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      v8 = result + 1;
      *result = v7;
LABEL_9:
      *a3 = v6;
      v10 = (a3 + 1);
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v6;
    v8 = (a2 + 1);
    v12 = result[1];
    result[1] = a2[1];
    a2[1] = v12;
    v6 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v14 = *a3;
  if (*a4 < *a3)
  {
    *a3 = *a4;
    *a4 = v14;
    v15 = a3[1];
    a3[1] = a4[1];
    a4[1] = v15;
    v16 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v16;
      v17 = a2[1];
      a2[1] = a3[1];
      a3[1] = v17;
      v18 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v18;
        v19 = result[1];
        result[1] = a2[1];
        a2[1] = v19;
      }
    }
  }

  v20 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v20;
    v21 = a4[1];
    a4[1] = a5[1];
    a5[1] = v21;
    v22 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v22;
      v23 = a3[1];
      a3[1] = a4[1];
      a4[1] = v23;
      v24 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v24;
        v25 = a2[1];
        a2[1] = a3[1];
        a3[1] = v25;
        v26 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v26;
          v27 = result[1];
          result[1] = a2[1];
          a2[1] = v27;
        }
      }
    }
  }

  return result;
}

BOOL sub_1AE77C9E0(unsigned int *a1, char *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[2];
      v7 = *a1;
      v8 = *(a2 - 2);
      if (v6 >= *a1)
      {
        if (v8 >= v6)
        {
          return 1;
        }

        a1[2] = v8;
        *(a2 - 2) = v6;
        v20 = (a1 + 3);
        v19 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v19;
        v21 = a1[2];
        v22 = *a1;
        if (v21 >= *a1)
        {
          return 1;
        }

        *a1 = v21;
        a1[2] = v22;
        v9 = (a1 + 1);
      }

      else
      {
        if (v8 >= v6)
        {
          v9 = (a1 + 3);
          v29 = a1[3];
          v30 = a1[1];
          *a1 = v6;
          a1[1] = v29;
          a1[2] = v7;
          a1[3] = v30;
          v31 = *(a2 - 2);
          if (v31 >= v7)
          {
            return 1;
          }

          a1[2] = v31;
        }

        else
        {
          v9 = (a1 + 1);
          *a1 = v8;
        }

        *(a2 - 2) = v7;
        v20 = a2 - 4;
      }

      v32 = *v9;
      *v9 = *v20;
      *v20 = v32;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_1AE77C810(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v15 = a1[2];
    v16 = *a1;
    v17 = a1[4];
    if (v15 >= *a1)
    {
      if (v17 < v15)
      {
        v27 = (a1 + 3);
        v26 = a1[3];
        v28 = a1[5];
        a1[2] = v17;
        a1[3] = v28;
        a1[4] = v15;
        a1[5] = v26;
        if (v17 >= v16)
        {
LABEL_50:
          v17 = v15;
          goto LABEL_51;
        }

        *a1 = v17;
        a1[2] = v16;
        v18 = (a1 + 1);
LABEL_49:
        v48 = *v18;
        *v18 = *v27;
        *v27 = v48;
        goto LABEL_50;
      }
    }

    else
    {
      if (v17 < v15)
      {
        v18 = (a1 + 1);
        *a1 = v17;
LABEL_48:
        a1[4] = v16;
        v27 = (a1 + 5);
        v15 = v16;
        goto LABEL_49;
      }

      v18 = (a1 + 3);
      v46 = a1[3];
      v47 = a1[1];
      *a1 = v15;
      a1[1] = v46;
      a1[2] = v16;
      a1[3] = v47;
      if (v17 < v16)
      {
        a1[2] = v17;
        goto LABEL_48;
      }
    }

LABEL_51:
    v49 = *(a2 - 2);
    if (v49 < v17)
    {
      a1[4] = v49;
      *(a2 - 2) = v17;
      v50 = a1[5];
      a1[5] = *(a2 - 1);
      *(a2 - 1) = v50;
      v51 = a1[4];
      v52 = a1[2];
      if (v51 < v52)
      {
        v53 = a1[3];
        v54 = a1[5];
        a1[2] = v51;
        a1[3] = v54;
        a1[4] = v52;
        a1[5] = v53;
        v55 = *a1;
        if (v51 < *a1)
        {
          v56 = a1[1];
          *a1 = v51;
          a1[1] = v54;
          a1[2] = v55;
          a1[3] = v56;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = *a1;
    if (v3 < *a1)
    {
      *a1 = v3;
      *(a2 - 2) = v4;
      v5 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v10 = (a1 + 4);
  v11 = a1[4];
  v12 = a1[2];
  v13 = *a1;
  if (v12 < *a1)
  {
    if (v11 >= v12)
    {
      v14 = (a1 + 3);
      v33 = a1[3];
      v34 = a1[1];
      *a1 = v12;
      a1[1] = v33;
      a1[2] = v13;
      a1[3] = v34;
      if (v11 >= v13)
      {
        goto LABEL_36;
      }

      a1[2] = v11;
    }

    else
    {
      v14 = (a1 + 1);
      *a1 = v11;
    }

    a1[4] = v13;
    v24 = (a1 + 5);
    goto LABEL_35;
  }

  if (v11 < v12)
  {
    v24 = (a1 + 3);
    v23 = a1[3];
    v25 = a1[5];
    a1[2] = v11;
    a1[3] = v25;
    a1[4] = v12;
    a1[5] = v23;
    if (v11 < v13)
    {
      *a1 = v11;
      a1[2] = v13;
      v14 = (a1 + 1);
LABEL_35:
      v35 = *v14;
      *v14 = *v24;
      *v24 = v35;
    }
  }

LABEL_36:
  v36 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  while (1)
  {
    v40 = *v10;
    if (*v36 < *v10)
    {
      v42 = *v36;
      v41 = *(v36 + 1);
      v43 = v37;
      do
      {
        v44 = (a1 + v43);
        v45 = *(a1 + v43 + 20);
        v44[6] = v40;
        v44[7] = v45;
        if (v43 == -16)
        {
          v39 = a1;
          goto LABEL_39;
        }

        v40 = v44[2];
        v43 -= 8;
      }

      while (v40 > v42);
      v39 = (a1 + v43 + 24);
LABEL_39:
      *v39 = v42;
      v39[1] = v41;
      if (++v38 == 8)
      {
        return v36 + 8 == a2;
      }
    }

    v10 = v36;
    v37 += 8;
    v36 += 8;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_1AE77CD58(void *a1, uint64_t a2)
{
  v4 = a1[10];
  v5 = a1[11];
  if (v4 == v5)
  {
LABEL_4:
    v7 = a1[4];
    v8 = a1[5];
    if (v8 != v7)
    {
      v9 = (v8 - v7) >> 3;
      do
      {
        v10 = v9 >> 1;
        v11 = &v7[8 * (v9 >> 1)];
        v13 = *v11;
        v12 = (v11 + 2);
        v9 += ~(v9 >> 1);
        if (v13 < a2)
        {
          v7 = v12;
        }

        else
        {
          v9 = v10;
        }
      }

      while (v9);
      if (v7 != v8 && *v7 == a2)
      {
        return *(v7 + 1);
      }
    }

    return a2;
  }

  while (1)
  {
    v6 = *v4;
    if ((*(**v4 + 112))(*v4, a2))
    {
      break;
    }

    if (++v4 == v5)
    {
      goto LABEL_4;
    }
  }

  v14 = (*(*v6 + 88))(v6, a2);
  if (v14 <= 70)
  {
    a2 = 126;
    if (v14 == 68)
    {
      return a2;
    }

    if (v14 != 69)
    {
      if (v14 != 70)
      {
        return 0;
      }

      return a2;
    }

    return 123;
  }

  if (v14 > 126)
  {
    if (v14 == 127)
    {
      return v14;
    }

    a2 = v14;
    if (v14 != 128)
    {
      return 0;
    }

    return a2;
  }

  if (v14 == 71)
  {
    return 123;
  }

  a2 = v14;
  if (v14 != 72)
  {
    return 0;
  }

  return a2;
}

__n128 sub_1AE77CEC8(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_1AE77CEEC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_1AE77CF04(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(a2 + 16) + *(*(a1 + 40) + 104);
  v5 = v2[6];
  v4 = v2[7];
  if (v5 >= v4)
  {
    v7 = v2[5];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      sub_1AE5CBB70();
    }

    v11 = v4 - v7;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 60))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v13 = 16 * v9;
    *v13 = *(a2 + 4);
    *(v13 + 8) = v3;
    v6 = 16 * v9 + 16;
    memcpy(0, v7, v8);
    v2[5] = 0;
    v2[6] = v6;
    v2[7] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = *(a2 + 4);
    *(v5 + 8) = v3;
    v6 = v5 + 16;
  }

  v2[6] = v6;
}

uint64_t sub_1AE77D030(uint64_t *a1, uint64_t a2, CFTypeRef cf, char a4)
{
  v97 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    CFRetain(cf);
    v87 = cf;
    if (a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v8)
    {
      if (v7 >= 0)
      {
        v9 = *(a2 + 23);
      }

      else
      {
        v9 = *(a2 + 8);
      }

      v87 = CFStringCreateWithBytes(0, v8, v9, 0x8000100u, 0);
      if (!v87)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (a4)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v87 = 0;
      if (a4)
      {
        goto LABEL_14;
      }
    }
  }

  if (!sub_1AE77E010(&v87))
  {
    v39 = 0;
    v40 = v87;
    if (v87)
    {
      goto LABEL_160;
    }

    return v39;
  }

LABEL_14:
  v86 = 0;
  v10 = *a1;
  std::recursive_mutex::lock((*a1 + 480));
  v12 = *(*a1 + 464);
  v11 = *(*a1 + 472);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v82 = v11;
  if (!v12)
  {
    sub_1AE670120(*a1, v87, &v86);
    v38 = v82;
    if (v82)
    {
      goto LABEL_152;
    }

LABEL_153:
    v39 = v86;
    if (v86)
    {
      goto LABEL_159;
    }

LABEL_154:
    operator new();
  }

  v13 = v87;
  v14 = *a1;
  std::recursive_mutex::lock(v12);
  if (!v13)
  {
    goto LABEL_151;
  }

  v80 = v10;
  *__p = 0u;
  *v92 = 0u;
  v93 = 1065353216;
  v15 = v12;
  v16 = *(v12 + 104);
  v81 = v15;
  v83 = *(v15 + 112);
  if (v16 != v83)
  {
    while (1)
    {
      v17 = (*v16)[1];
      v18 = (*v16)[2];
      if (v17 != v18)
      {
        break;
      }

LABEL_20:
      v16 += 2;
      if (v16 == v83)
      {
        goto LABEL_65;
      }
    }

    while (!(*(**v17 + 16))(*v17, v13, 0))
    {
LABEL_24:
      if (++v17 == v18)
      {
        goto LABEL_20;
      }
    }

    v19 = **v16;
    if (v19)
    {
      CFRetain(**v16);
      cfa = v19;
      v20 = CFHash(v19);
      v21 = __p[1];
      if (!__p[1])
      {
        goto LABEL_64;
      }
    }

    else
    {
      cfa = 0;
      v20 = 0xD7C06285B9DE677ALL;
      v21 = __p[1];
      if (!__p[1])
      {
        goto LABEL_64;
      }
    }

    v22 = vcnt_s8(v21);
    v22.i16[0] = vaddlv_u8(v22);
    if (v22.u32[0] > 1uLL)
    {
      v23 = v20;
      if (v20 >= *&v21)
      {
        v23 = v20 % *&v21;
      }
    }

    else
    {
      v23 = (*&v21 - 1) & v20;
    }

    v24 = *(__p[0] + v23);
    if (v24)
    {
      v25 = *v24;
      if (*v24)
      {
        if (v22.u32[0] < 2uLL)
        {
          while (1)
          {
            v26 = v25[1];
            if (v26 == v20)
            {
              v27 = v25[2];
              if (v27)
              {
                v28 = v19 == 0;
              }

              else
              {
                v28 = 1;
              }

              if (v28)
              {
                if (!(v27 | v19))
                {
                  goto LABEL_24;
                }
              }

              else if (CFEqual(v27, v19))
              {
                goto LABEL_23;
              }
            }

            else if ((v26 & (*&v21 - 1)) != v23)
            {
              goto LABEL_64;
            }

            v25 = *v25;
            if (!v25)
            {
              goto LABEL_64;
            }
          }
        }

        do
        {
          v30 = v25[1];
          if (v30 == v20)
          {
            v31 = v25[2];
            if (v31)
            {
              v32 = v19 == 0;
            }

            else
            {
              v32 = 1;
            }

            if (v32)
            {
              if (!(v31 | v19))
              {
                goto LABEL_24;
              }
            }

            else if (CFEqual(v31, v19))
            {
LABEL_23:
              CFRelease(v19);
              goto LABEL_24;
            }
          }

          else
          {
            if (v30 >= *&v21)
            {
              v30 %= *&v21;
            }

            if (v30 != v23)
            {
              break;
            }
          }

          v25 = *v25;
        }

        while (v25);
      }
    }

LABEL_64:
    operator new();
  }

LABEL_65:
  cfa = 0;
  v34 = v81;
  v35 = *(v81 + 152);
  v36 = *(v81 + 160);
  if (v35 == v36)
  {
LABEL_68:
    v37 = 0;
    goto LABEL_143;
  }

  while (*v35 != v14)
  {
    v35 += 16;
    if (v35 == v36)
    {
      goto LABEL_68;
    }
  }

  if (!v92[1])
  {
    sub_1AE65B084(buf, *(v35 + 8));
    v37 = *buf;
    cfa = *buf;
    goto LABEL_143;
  }

  *buf = 0;
  v95 = 0;
  v96 = 0;
  sub_1AE65B084(&theArray, *(v35 + 8));
  v41 = theArray;
  if (!theArray)
  {
    goto LABEL_136;
  }

  Count = CFArrayGetCount(theArray);
  v42 = theArray;
  if (!theArray)
  {
    v79 = 0;
    if (Count)
    {
      goto LABEL_79;
    }

LABEL_131:
    v43 = 0;
    goto LABEL_132;
  }

  v79 = CFArrayGetCount(theArray);
  if (!Count)
  {
    goto LABEL_131;
  }

LABEL_79:
  v84 = v42;
  v43 = 0;
  for (i = 0; i != Count; ++i)
  {
    if (v41 == v84 && i == v79)
    {
      break;
    }

    if (CFArrayGetCount(v41) <= i || (ValueAtIndex = CFArrayGetValueAtIndex(v41, i), (v46 = ValueAtIndex) == 0))
    {
      v76 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v76, "Could not find item");
      __cxa_throw(v76, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    CFRetain(ValueAtIndex);
    v88 = v46;
    v47 = CFHash(v46);
    v48 = __p[1];
    if (!__p[1])
    {
      goto LABEL_125;
    }

    v49 = v47;
    v50 = vcnt_s8(__p[1]);
    v50.i16[0] = vaddlv_u8(v50);
    if (v50.u32[0] > 1uLL)
    {
      v51 = v47;
      if (v47 >= __p[1])
      {
        v51 = v47 % __p[1];
      }
    }

    else
    {
      v51 = (__p[1] - 1) & v47;
    }

    v52 = *(__p[0] + v51);
    if (!v52)
    {
      goto LABEL_125;
    }

    v53 = *v52;
    if (!*v52)
    {
      goto LABEL_125;
    }

    if (v50.u32[0] < 2uLL)
    {
      v54 = __p[1] - 1;
      while (1)
      {
        v57 = v53[1];
        if (v49 == v57)
        {
          v58 = v53[2];
          if (v58 && CFEqual(v58, v46))
          {
            goto LABEL_106;
          }
        }

        else if ((v57 & v54) != v51)
        {
          goto LABEL_124;
        }

        v53 = *v53;
        if (!v53)
        {
          goto LABEL_124;
        }
      }
    }

    while (1)
    {
      v55 = v53[1];
      if (v49 == v55)
      {
        break;
      }

      if (v55 >= v48)
      {
        v55 %= v48;
      }

      if (v55 != v51)
      {
        goto LABEL_124;
      }

LABEL_94:
      v53 = *v53;
      if (!v53)
      {
        goto LABEL_124;
      }
    }

    v56 = v53[2];
    if (!v56 || !CFEqual(v56, v46))
    {
      goto LABEL_94;
    }

LABEL_106:
    v59 = v43 >> 3;
    if (((v43 >> 3) + 1) >> 61)
    {
      sub_1AE5CBB70();
    }

    if (v43 >> 3 != -1)
    {
      if (!(((v43 >> 3) + 1) >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    CFRetain(v46);
    *(8 * v59) = v46;
    if (v43)
    {
      v60 = v43 - 8;
      v61 = 0;
      v62 = 0;
      if ((v43 - 8) < 0x98)
      {
        do
        {
LABEL_118:
          *v62++ = *v61;
          *v61++ = 0;
        }

        while (v61 != v43);
      }

      else
      {
        if ((v60 & 0xFFFFFFFFFFFFFFF8) != 0xFFFFFFFFFFFFFFF8)
        {
          v61 = 0;
          v62 = 0;
          goto LABEL_118;
        }

        v63 = (v60 >> 3) + 1;
        v61 = (8 * (v63 & 0x3FFFFFFFFFFFFFFCLL));
        v64 = 16;
        v65 = 0;
        v66 = v63 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v67 = v65[1];
          *(v64 - 16) = *v65;
          *v64 = v67;
          *v65 = 0uLL;
          v65[1] = 0uLL;
          v65 += 2;
          v64 += 32;
          v66 -= 4;
        }

        while (v66);
        if (v63 != (v63 & 0x3FFFFFFFFFFFFFFCLL))
        {
          v62 = (8 * (v63 & 0x3FFFFFFFFFFFFFFCLL));
          goto LABEL_118;
        }
      }

      for (j = 0; j != v43; ++j)
      {
        if (*j)
        {
          CFRelease(*j);
        }
      }
    }

    *buf = 0;
    v96 = 0;
    v95 = 8 * v59 + 8;
    v46 = v88;
    v43 = v95;
LABEL_124:
    if (v46)
    {
LABEL_125:
      CFRelease(v46);
    }
  }

LABEL_132:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v43)
  {
    v37 = sub_1AE65ADC4(buf);
    goto LABEL_142;
  }

LABEL_136:
  if (v92[0])
  {
    v69 = -1;
    v70 = v92[0];
    do
    {
      v70 = *v70;
      ++v69;
    }

    while (v70);
    if (v69 < 0x1FFFFFFFFFFFFFFFLL)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  v37 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
  if (!v37)
  {
    v78 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v78, "Could not construct");
    __cxa_throw(v78, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_142:
  cfa = v37;
  v34 = v81;
LABEL_143:
  sub_1AE70EE04(buf, *(v34 + 104), *(v34 + 112));
  sub_1AE70DD74(v13, &v86, *(v34 + 128), buf, *(v34 + 176), v37);
  v10 = v80;
  if (*buf)
  {
    operator delete(*buf);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  v71 = v92[0];
  if (v92[0])
  {
    do
    {
      v73 = *v71;
      v74 = v71[2];
      if (v74)
      {
        CFRelease(v74);
      }

      operator delete(v71);
      v71 = v73;
    }

    while (v73);
  }

  v72 = __p[0];
  __p[0] = 0;
  if (v72)
  {
    operator delete(v72);
  }

  v12 = v81;
LABEL_151:
  std::recursive_mutex::unlock(v12);
  v38 = v82;
  if (!v82)
  {
    goto LABEL_153;
  }

LABEL_152:
  if (atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_153;
  }

  (v38->__on_zero_shared)(v38);
  std::__shared_weak_count::__release_weak(v38);
  v39 = v86;
  if (!v86)
  {
    goto LABEL_154;
  }

LABEL_159:
  std::recursive_mutex::unlock((v10 + 480));
  v40 = v87;
  if (v87)
  {
LABEL_160:
    CFRelease(v40);
  }

  return v39;
}

void sub_1AE77DE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::recursive_mutex *a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va5, a10);
  va_start(va4, a10);
  va_start(va3, a10);
  va_start(va2, a10);
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v18 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v20 = va_arg(va4, const void *);
  va_copy(va5, va4);
  v22 = va_arg(va5, const void *);
  sub_1AE65B050(va2);
  sub_1AE65B3A0(va3);
  sub_1AE68B070((v10 - 128));
  sub_1AE65B3A0(va4);
  sub_1AE70A228(va5);
  std::recursive_mutex::unlock(a7);
  sub_1AE622290(va);
  std::recursive_mutex::unlock((a6 + 480));
  sub_1AE621E20(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE77E010(CFStringRef *a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(*a1);
  MEMORY[0x1EEE9AC00]();
  v4 = (v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21.location = 0;
  v21.length = Length;
  CFStringGetCharacters(*a1, v21, v4);
  result = 0;
  v6 = Length - 1;
  if (Length < 1)
  {
    return result;
  }

  v7 = *v4;
  if (v7 <= 0x2D && ((1 << v7) & 0x20C000000000) != 0)
  {
    return result;
  }

  if (v7 - 1523 < 2 || v7 == 8217)
  {
    return result;
  }

  v10 = u_charType(*v4);
  if (((1 << v10) & 0x40003FE) == 0)
  {
    return 0;
  }

  result = (0x3Eu >> v10) & 1;
  if (Length == 1)
  {
    if (!result)
    {
      return result;
    }

    result = 1;
  }

  else
  {
    v11 = v4 + 1;
    do
    {
      while (1)
      {
        v13 = *v11++;
        v12 = v13;
        v14 = (1 << v13) & 0x20C000000000;
        if ((v13 > 0x2D || v14 == 0) && (v12 - 1523) >= 2 && v12 != 8217)
        {
          break;
        }

        if (v6 == 1)
        {
          return 0;
        }

        if (!--v6)
        {
          goto LABEL_31;
        }
      }

      v17 = result;
      v18 = u_charType(v12);
      if (((0x40003FEu >> v18) & 1) == 0)
      {
        return 0;
      }

      result = ((0x3Eu >> v18) & 1) + v17;
      --v6;
    }

    while (v6);
LABEL_31:
    if (!result)
    {
      return result;
    }
  }

  if ((result / Length) < 0.49 || Length - result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1AE77E1FC(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F2431DA0;
  v6 = v5;
  v3[0] = &unk_1F2431E30;
  v3[1] = a1;
  v4 = v3;
  v7[0] = &unk_1F2431D10;
  v7[1] = v3;
  v8 = v7;
  sub_1AE6F24C0(a2, v5, v7);
  if (v8 == v7)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))();
  }

  result = v6;
  if (v6 == v5)
  {
    return (*(*v6 + 32))(v6);
  }

  if (v6)
  {
    return (*(*v6 + 40))();
  }

  return result;
}

void sub_1AE77E3EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1AE6F2684(v2 - 56);
  sub_1AE6F2704(va);
  sub_1AE6F2784(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE77E41C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v112TokenLearner17learnFromSequenceERNS0_13TokenSequenceEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v112TokenLearner17learnFromSequenceERNS0_13TokenSequenceEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v112TokenLearner17learnFromSequenceERNS0_13TokenSequenceEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v112TokenLearner17learnFromSequenceERNS0_13TokenSequenceEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE77E4A8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2431E30;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE77E548(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v112TokenLearner17learnFromSequenceERNS0_13TokenSequenceEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v112TokenLearner17learnFromSequenceERNS0_13TokenSequenceEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v112TokenLearner17learnFromSequenceERNS0_13TokenSequenceEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v112TokenLearner17learnFromSequenceERNS0_13TokenSequenceEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

float sub_1AE77E670(uint64_t a1, int a2)
{
  v2 = 304;
  if (a2 == 1)
  {
    v2 = 220;
  }

  return *(*(a1 + 24) + v2);
}

float sub_1AE77E68C(uint64_t a1, int a2)
{
  v2 = 256;
  if (a2 == 1)
  {
    v2 = 216;
  }

  return *(*(a1 + 24) + v2);
}

void sub_1AE77E6A8(void *a1)
{
  sub_1AE6F4670(a1);

  JUMPOUT(0x1B2706400);
}

unint64_t sub_1AE77E6E4(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v5 = *(a1 + 136);
  v7.f64[0] = 0.0;
  v8 = v5 - v6;
  v9 = (v5 - v6) >> 3;
  if (v5 == v6)
  {
    goto LABEL_33;
  }

  if (!a3)
  {
    if (!a2)
    {
      return v9;
    }

    if (v9 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = (v5 - v6) >> 3;
    }

    if (v9 >= 0xC && (v6 + 8 * v18 - 4 > a2 ? (v19 = v6 >= &a2[v18]) : (v19 = 1), v19))
    {
      v20 = v18 & 0xFFFFFFFFFFFFFFF8;
      v21 = a2 + 4;
      v22 = (v6 + 32);
      v23 = v18 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v24 = v22 + 2;
        v25 = v22 + 4;
        LODWORD(v26) = *(v22 - 8);
        DWORD1(v26) = *(v22 - 6);
        v27 = v22 + 6;
        DWORD2(v26) = *(v22 - 4);
        HIDWORD(v26) = *(v22 - 2);
        v28 = *v22;
        v22 += 16;
        LODWORD(v29) = v28;
        DWORD1(v29) = *v24;
        DWORD2(v29) = *v25;
        HIDWORD(v29) = *v27;
        *(v21 - 1) = v26;
        *v21 = v29;
        v21 += 2;
        v23 -= 8;
      }

      while (v23);
      if (v9 == v20)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v20 = 0;
    }

    v35 = v18 - v20;
    v36 = &a2[v20];
    v37 = (v6 + 8 * v20);
    do
    {
      v38 = *v37;
      v37 += 2;
      *v36++ = v38;
      --v35;
    }

    while (v35);
    goto LABEL_33;
  }

  v11 = log10(*(v6 + 4) / *(a1 + 88));
  v7.f64[0] = v11;
  if (!a2)
  {
    if (v9 >= 2)
    {
      v30 = v9 - 1;
      v31 = (v6 + 12);
      do
      {
        v72 = v7;
        v32 = *(v31 - 2);
        v33 = *v31;
        v31 += 2;
        v34 = log10(v33 / v32);
        v7.f64[1] = v72.f64[1];
        v7.f64[0] = v34 + v72.f64[0];
        --v30;
      }

      while (v30);
      goto LABEL_33;
    }

LABEL_34:
    v39 = (*(a1 + 112) - *(a1 + 104)) >> 2;
    *(a3 + 96) = 0;
    *(a3 + 104) = v39;
    *(a3 + 8) = 0xFFEFFFFFFFFFFFFFLL;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 1;
    *(a3 + 40) = xmmword_1AE79A550;
    *(a3 + 56) = 0;
    *(a3 + 88) = 0;
    *a3 = v7.f64[0];
    *(a3 + 116) = *(a1 + 72);
    *(a3 + 112) = 1;
    *(a3 + 72) = xmmword_1AE79A760;
    *(a3 + 64) = v7.f64[0];
    return v9;
  }

  *a2 = *v6;
  if (v9 < 2)
  {
    goto LABEL_34;
  }

  if (v9 <= 8 || (a2 + 1) < v6 + v8 - 4 && v6 + 8 < a2 + (v8 >> 1))
  {
    v12 = 1;
    goto LABEL_9;
  }

  v41 = (v9 - 1) & 0xFFFFFFFFFFFFFFF8;
  v42 = *&v11;
  v7 = 0uLL;
  v43 = (v6 + 36);
  v44 = (a2 + 5);
  v45 = v41;
  v46 = 0uLL;
  v47 = 0uLL;
  do
  {
    v63 = v47;
    v64 = v46;
    v65 = v7;
    v66 = v42;
    v48.i32[0] = *(v43 - 8);
    v49.i32[0] = *(v43 - 4);
    v50.i32[0] = *v43;
    v48.i32[1] = *(v43 - 6);
    v51.i32[0] = v43[4];
    v49.i32[1] = *(v43 - 2);
    v50.i32[1] = v43[2];
    v52 = (v43 - 7);
    v74 = vld2q_f32(v52);
    v62 = v74.val[0];
    v53 = (v43 + 1);
    v75 = vld2q_f32(v53);
    v61 = v75.val[0];
    v51.i32[1] = v43[6];
    v67 = vdivq_f64(vcvt_hight_f64_f32(v74.val[1]), vcvtq_f64_f32(v49));
    __x = vdivq_f64(vcvtq_f64_f32(*v74.val[1].f32), vcvtq_f64_f32(v48));
    v69 = vdivq_f64(vcvtq_f64_f32(*v75.val[1].f32), vcvtq_f64_f32(v50));
    v73 = vdivq_f64(vcvt_hight_f64_f32(v75.val[1]), vcvtq_f64_f32(v51));
    v59 = log10(__x.f64[1]);
    v54.f64[0] = log10(__x.f64[0]);
    v54.f64[1] = v59;
    v60 = v54;
    __x.f64[0] = log10(v67.f64[1]);
    v55.f64[0] = log10(v67.f64[0]);
    v55.f64[1] = __x.f64[0];
    v68 = v55;
    __x.f64[0] = log10(v69.f64[1]);
    v56.f64[0] = log10(v69.f64[0]);
    v56.f64[1] = __x.f64[0];
    v70 = v56;
    __x.f64[0] = log10(v73.f64[1]);
    v57.f64[0] = log10(v73.f64[0]);
    v57.f64[1] = __x.f64[0];
    v7 = vaddq_f64(v68, v65);
    v42 = vaddq_f64(v60, v66);
    v47 = vaddq_f64(v57, v63);
    v46 = vaddq_f64(v70, v64);
    v44[-1] = v62;
    *v44 = v61;
    v44 += 2;
    v43 += 16;
    v45 -= 8;
  }

  while (v45);
  v7.f64[0] = vaddvq_f64(vaddq_f64(vaddq_f64(v46, v42), vaddq_f64(v47, v7)));
  if (v9 - 1 != v41)
  {
    v12 = v41 | 1;
LABEL_9:
    v13 = v9 - v12;
    v14 = &a2[v12];
    v15 = v6 + 8 * v12;
    do
    {
      v71 = v7;
      v16 = log10(*(v15 + 4) / *(v15 - 4));
      v7.f64[1] = v71.f64[1];
      v7.f64[0] = v16 + v71.f64[0];
      v17 = *v15;
      v15 += 8;
      *v14++ = v17;
      --v13;
    }

    while (v13);
  }

LABEL_33:
  if (a3)
  {
    goto LABEL_34;
  }

  return v9;
}

uint64_t sub_1AE77EAF4(uint64_t a1)
{
  v1 = *(a1 + 80) + 1;
  *(a1 + 80) = v1;
  if (v1 > *(a1 + 64))
  {
    return 0;
  }

  v3 = *(a1 + 128);
  v4 = (a1 + 128);
  if (*(a1 + 136) != v3 && *(a1 + 96) >= 0.5)
  {
    v5 = (*(a1 + 136) - *(a1 + 128)) >> 3;
    if (v5 < *(a1 + 56))
    {
      v6 = *(a1 + 104);
      v7 = *(a1 + 112);
      v8 = v7 - v6;
      v9 = v5 + ((v7 - v6) >> 2);
      if (v9)
      {
        if (!(v9 >> 62))
        {
          operator new();
        }

        sub_1AE5CBB70();
      }

      if (v7 != v6)
      {
        memmove(0, v6, v8);
      }

      v10 = *(a1 + 128);
      v11 = *(a1 + 136) - v10;
      if (v11)
      {
        v12 = v11 >> 3;
        v13 = v8 >> 2;
        if (v12 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v12;
        }

        if (v12 < 8 || (v8 < v10 + 8 * v14 - 4 ? (v15 = v10 >= v8 + 4 * v14) : (v15 = 1), !v15))
        {
          v16 = 0;
LABEL_24:
          v21 = v14 - v16;
          v22 = (v10 + 8 * v16);
          v23 = (4 * v13);
          do
          {
            v24 = *v22;
            v22 += 2;
            *v23++ = v24;
            --v21;
          }

          while (v21);
          goto LABEL_26;
        }

        v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
        v17 = (v10 + 16);
        v18 = (4 * v13);
        v19 = v14 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          LODWORD(v20) = *(v17 - 4);
          DWORD1(v20) = *(v17 - 2);
          DWORD2(v20) = *v17;
          HIDWORD(v20) = v17[2];
          *v18++ = v20;
          v17 += 8;
          v19 -= 4;
        }

        while (v19);
        if (v12 != v16)
        {
          v13 += v16;
          goto LABEL_24;
        }
      }

LABEL_26:
      operator new();
    }

    v3 = *v4;
  }

  *(a1 + 136) = v3;
  v25 = *(a1 + 48);
  v26 = v25[3] + 1;
  v25[3] = v26;
  v28 = v25;
  v27 = *v25;
  if (v26 >= (v28[1] - v27) >> 3)
  {
    return 0;
  }

  sub_1AE74C210(v4, (v27 + 8 * v26));
  *(a1 + 96) = (*(*(a1 + 136) - 4) / *(a1 + 88));
  return 1;
}

void sub_1AE77EE14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE77F200(va);
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE77EE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  (*(*a2 + 112))(&__p, a2, a3, a4, a5);
  v8 = __p;
  v9 = v30;
  if (__p != v30)
  {
    while (1)
    {
      v10 = *(a6 + 24);
      if (!v10)
      {
LABEL_40:
        sub_1AE60819C();
      }

      if (!(*(*v10 + 48))(v10, v8))
      {
        break;
      }

      v8 += 12;
      if (v8 == v9)
      {
        v8 = v9;
        goto LABEL_13;
      }
    }

    if (v8 != v9)
    {
      for (i = v8 + 12; i != v9; i += 12)
      {
        v12 = *(a6 + 24);
        if (!v12)
        {
          goto LABEL_40;
        }

        if ((*(*v12 + 48))(v12, i))
        {
          v13 = *i;
          *(v8 + 2) = *(i + 2);
          *v8 = v13;
          v8 += 12;
        }
      }
    }
  }

LABEL_13:
  if (v8 != v30)
  {
    v30 = v8;
  }

  v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - __p) >> 2);
  if (v14 > (*(a1 + 16) - *a1) >> 3)
  {
    if (!(v14 >> 61))
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  v15 = __p;
  v16 = v30;
  v17 = *(a1 + 8);
  if (__p != v30)
  {
    do
    {
      v18 = *v15 | (v15[2] << 32);
      v19 = *(a1 + 16);
      if (v17 < v19)
      {
        *v17 = v18;
        v17 += 2;
      }

      else
      {
        v20 = *a1;
        v21 = v17 - *a1;
        v22 = (v21 >> 3) + 1;
        if (v22 >> 61)
        {
          sub_1AE5CBB70();
        }

        v23 = v19 - v20;
        if (v23 >> 2 > v22)
        {
          v22 = v23 >> 2;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          if (!(v24 >> 61))
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        v25 = (8 * (v21 >> 3));
        *v25 = v18;
        v17 = (v25 + 1);
        memcpy(0, v20, v21);
        *a1 = 0;
        *(a1 + 8) = v17;
        *(a1 + 16) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      *(a1 + 8) = v17;
      v15 += 3;
    }

    while (v15 != v16);
  }

  v26 = 126 - 2 * __clz((v17 - *a1) >> 3);
  if (v17 == *a1)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  sub_1AE76BF08(*a1, v17, v27, 1);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_1AE77F1A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    v13 = *v11;
    if (!*v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = *v11;
    if (!*v11)
    {
      goto LABEL_3;
    }
  }

  *(v11 + 8) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void *sub_1AE77F200(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x1B2706400](v1, 0x1020C4016EE4530);
    return v2;
  }

  return result;
}

void sub_1AE77F258(void *a1)
{
  sub_1AE75197C(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE77F294(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  *a1 = &unk_1F2431EC0;
  v8 = a2[1];
  *(a1 + 8) = *a2;
  v9 = (a1 + 8);
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a5[1];
  *(a1 + 24) = *a5;
  *(a1 + 32) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a4[1];
  *(a1 + 40) = *a4;
  *(a1 + 48) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a3[1];
  *(a1 + 56) = *a3;
  *(a1 + 64) = v12;
  v13 = (a1 + 56);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v14 = (*(**a2 + 32))();
  *(a1 + 96) = v14;
  *(a1 + 112) = a6;
  v15 = *(a1 + 72);
  v16 = (*(a1 + 80) - v15) >> 2;
  if (v14 <= v16)
  {
    if (v14 < v16)
    {
      *(a1 + 80) = v15 + 4 * v14;
    }
  }

  else
  {
    sub_1AE654188(a1 + 72, v14 - v16);
  }

  v17 = *v13;
  if (*v13 && *v9)
  {
    v18 = (*(**v9 + 48))(*v9);
    std::mutex::lock((v17 + 96));
    if (!*(v17 + 40) && v18 > 0.0)
    {
      *(v17 + 40) = v18;
      *(v17 + 24) = 1;
    }

    std::mutex::unlock((v17 + 96));
  }

  return a1;
}

void sub_1AE77F440(_Unwind_Exception *a1)
{
  v8 = *v6;
  if (*v6)
  {
    *(v1 + 80) = v8;
    operator delete(v8);
  }

  sub_1AE622290(v5);
  sub_1AE622290(v4);
  sub_1AE622290(v3);
  sub_1AE622290(v2);
  _Unwind_Resume(a1);
}

void sub_1AE77F47C(uint64_t a1, int a2, double *a3, int a4, _DWORD *a5, unint64_t a6, const void **a7)
{
  if (!a4)
  {
    return;
  }

  v13 = &a5[a6];
  v14 = *(a1 + 96);
  v15 = v14 - 1;
  v16 = a6 >= v14;
  if (a6 < v14)
  {
    v15 = a6;
  }

  v17 = &v13[1 - v14];
  if (!v16)
  {
    v17 = a5;
  }

  v18 = 4 * v15;
  if (!v18)
  {
LABEL_9:
    if (a4 < 0)
    {
      return;
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (a3)
    {
      v21 = fmin(*a3, Current);
      v22 = *(a1 + 24);
      v23 = floor((Current - v21) / *(v22 + 212));
      v24 = expf(*(v22 + 208) * v23);
      if (v24 <= *(v22 + 316))
      {
        return;
      }
    }

    else
    {
      v22 = *(a1 + 24);
      v24 = 1.0;
      v21 = Current;
    }

    sub_1AE746940(__p, (v22 + 88));
    if (&v52 != a7)
    {
      v25 = *(a7 + 23);
      if (SHIBYTE(v53) < 0)
      {
        if (v25 >= 0)
        {
          v26 = a7;
        }

        else
        {
          v26 = *a7;
        }

        if (v25 >= 0)
        {
          v27 = *(a7 + 23);
        }

        else
        {
          v27 = a7[1];
        }

        sub_1AE621B84(&v52, v26, v27);
      }

      else if ((*(a7 + 23) & 0x80) != 0)
      {
        sub_1AE621AB4(&v52, *a7, a7[1]);
      }

      else
      {
        v52 = *a7;
        v53 = a7[2];
      }
    }

    v28 = *(a1 + 56);
    if (!v28)
    {
LABEL_35:
      v32 = *(a1 + 72);
      v33 = *(a1 + 96);
      v34 = &v13[1 - v33];
      if (a6 >= v33)
      {
        v35 = v33 - 1;
      }

      else
      {
        v34 = a5;
        v35 = a6;
      }

      v36 = *(a1 + 72);
      if (v35)
      {
        v37 = v34;
        v38 = (v35 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        if (v38 < 7)
        {
          v36 = *(a1 + 72);
LABEL_46:
          v44 = &v34[v35];
          do
          {
            v45 = *v37++;
            *v36++ = v45 & 0xFFFFFF;
          }

          while (v37 != v44);
          goto LABEL_48;
        }

        v36 = *(a1 + 72);
        if ((v32 - v34) < 0x20)
        {
          goto LABEL_46;
        }

        v39 = (v38 + 1) & 0x7FFFFFFFFFFFFFF8;
        v36 = (v32 + 4 * v39);
        v40 = v34 + 4;
        v41 = (v32 + 16);
        v42 = v39;
        do
        {
          *&v43 = __PAIR64__(HIDWORD(*v40), *v40) & 0xFFFFFF00FFFFFFLL;
          DWORD2(v43) = v40[1] & 0xFFFFFF;
          HIDWORD(v43) = HIDWORD(*v40) & 0xFFFFFF;
          *(v41 - 1) = *(v40 - 1) & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL);
          *v41 = v43;
          v40 += 4;
          v41 += 2;
          v42 -= 8;
        }

        while (v42);
        if (v38 + 1 != v39)
        {
          v37 = &v34[v39];
          goto LABEL_46;
        }
      }

LABEL_48:
      *v36 = a4 & 0xFFFFFF;
      (*(**(a1 + 8) + 120))(*(a1 + 8), v32, (v35 + 1), __p, v24);
      if (SHIBYTE(v53) < 0)
      {
        operator delete(v52);
        if ((v51 & 0x80000000) == 0)
        {
          goto LABEL_50;
        }
      }

      else if ((v51 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      operator delete(v50);
LABEL_50:
      v46 = v49;
      v49 = 0;
      if (!v46)
      {
        goto LABEL_56;
      }

      if (*(v46 + 95) < 0)
      {
        operator delete(*(v46 + 72));
        if ((*(v46 + 71) & 0x80000000) == 0)
        {
LABEL_53:
          if ((*(v46 + 47) & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_63;
        }
      }

      else if ((*(v46 + 71) & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

      operator delete(*(v46 + 48));
      if ((*(v46 + 47) & 0x80000000) == 0)
      {
LABEL_54:
        if ((*(v46 + 23) & 0x80000000) == 0)
        {
LABEL_55:
          MEMORY[0x1B2706400](v46, 0x1012C4003C2D8E3);
LABEL_56:
          if (v48 < 0)
          {
            operator delete(__p[0]);
          }

          return;
        }

LABEL_64:
        operator delete(*v46);
        goto LABEL_55;
      }

LABEL_63:
      operator delete(*(v46 + 24));
      if ((*(v46 + 23) & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_64;
    }

    v29 = (*(**(a1 + 8) + 72))(*(a1 + 8), __p);
    std::mutex::lock((v28 + 96));
    if (a2)
    {
      if (a2 == 1)
      {
        if (v29 == 1)
        {
          v30 = (v28 + 72);
          v31 = *(v28 + 72);
LABEL_66:
          if (v31 >= v21)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        if (v29 == 2)
        {
          v30 = (v28 + 80);
          v31 = *(v28 + 80);
          goto LABEL_66;
        }
      }
    }

    else
    {
      v30 = (v28 + 56);
      if (*(v28 + 56) == 0.0)
      {
LABEL_33:
        *v30 = v21;
      }
    }

LABEL_34:
    *(v28 + 24) = 1;
    *(v28 + 32) = vaddq_s64(*(v28 + 32), vdupq_n_s64(1uLL));
    std::mutex::unlock((v28 + 96));
    goto LABEL_35;
  }

  while (*v17)
  {
    ++v17;
    v18 -= 4;
    if (!v18)
    {
      goto LABEL_9;
    }
  }
}

void sub_1AE77F844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE77F85C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE77F85C(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(a1 + 63) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 40));
LABEL_3:
  sub_1AE74689C((a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AE77F8C4(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v6 = *(a1 + 72);
  v7 = *(a1 + 96);
  v8 = a3 + 4 * a4 + 4 * (1 - v7);
  if (a4 >= v7)
  {
    v9 = v7 - 1;
  }

  else
  {
    v8 = a3;
    v9 = a4;
  }

  v10 = *(a1 + 72);
  if (v9)
  {
    v11 = v8;
    v12 = (v9 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v12 < 7)
    {
      v10 = *(a1 + 72);
LABEL_12:
      v18 = (v8 + 4 * v9);
      do
      {
        v19 = *v11++;
        *v10++ = v19 & 0xFFFFFF;
      }

      while (v11 != v18);
      goto LABEL_14;
    }

    v10 = *(a1 + 72);
    if ((v6 - v8) < 0x20)
    {
      goto LABEL_12;
    }

    v13 = (v12 + 1) & 0x7FFFFFFFFFFFFFF8;
    v10 = (v6 + 4 * v13);
    v14 = (v8 + 16);
    v15 = (v6 + 16);
    v16 = v13;
    do
    {
      *&v17 = __PAIR64__(HIDWORD(*v14), *v14) & 0xFFFFFF00FFFFFFLL;
      DWORD2(v17) = v14[1] & 0xFFFFFF;
      HIDWORD(v17) = HIDWORD(*v14) & 0xFFFFFF;
      *(v15 - 1) = *(v14 - 1) & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL);
      *v15 = v17;
      v14 += 4;
      v15 += 2;
      v16 -= 8;
    }

    while (v16);
    if (v12 + 1 != v13)
    {
      v11 = (v8 + 4 * v13);
      goto LABEL_12;
    }
  }

LABEL_14:
  *v10 = a2 & 0xFFFFFF;
  (*(**(a1 + 8) + 128))(*(a1 + 8), v6, (v9 + 1), *(a1 + 24) + 88);
  v20 = *(a1 + 56);
  if (v20)
  {
    std::mutex::lock((v20 + 96));
    *(v20 + 24) = 1;
    v21.i64[0] = -1;
    v21.i64[1] = -1;
    *(v20 + 32) = vaddq_s64(*(v20 + 32), v21);

    std::mutex::unlock((v20 + 96));
  }
}

uint64_t sub_1AE77FA28(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, double *a5, uint64_t a6, int a7)
{
  v13 = (*(*a1[1] + 56))(a1[1]);
  if (!v13)
  {
    return v13;
  }

  v14 = a1[5];
  if (v14)
  {
    v15 = (*(*v14 + 144))(v14, a2);
  }

  else
  {
    v15 = 0;
  }

  v16 = a1[9];
  v17 = *(a1 + 96);
  v18 = a3 + 4 * a4 + 4 * (1 - v17);
  if (a4 >= v17)
  {
    a4 = v17 - 1;
  }

  else
  {
    v18 = a3;
  }

  if (a4)
  {
    v19 = v18;
    v20 = (a4 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v20 < 7)
    {
      v21 = a1[9];
    }

    else
    {
      v21 = a1[9];
      if ((v16 - v18) >= 0x20)
      {
        v22 = (v20 + 1) & 0x7FFFFFFFFFFFFFF8;
        v21 = (v16 + 4 * v22);
        v23 = (v18 + 16);
        v24 = (v16 + 16);
        v25 = v22;
        do
        {
          *&v26 = __PAIR64__(HIDWORD(*v23), *v23) & 0xFFFFFF00FFFFFFLL;
          DWORD2(v26) = v23[1] & 0xFFFFFF;
          HIDWORD(v26) = HIDWORD(*v23) & 0xFFFFFF;
          *(v24 - 1) = *(v23 - 1) & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL);
          *v24 = v26;
          v23 += 4;
          v24 += 2;
          v25 -= 8;
        }

        while (v25);
        if (v20 + 1 == v22)
        {
          goto LABEL_19;
        }

        v19 = (v18 + 4 * v22);
      }
    }

    v27 = (v18 + 4 * a4);
    do
    {
      v28 = *v19++;
      *v21++ = v28 & 0xFFFFFF;
    }

    while (v19 != v27);
  }

  else
  {
    v21 = a1[9];
  }

LABEL_19:
  *v21 = a2 & 0xFFFFFF;
  v29 = a4 + 1;
  *a5 = 0.0;
  if (a2 == 2)
  {
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

  v44 = 0;
  if (v30 <= v29)
  {
    v31 = v16 + 4 * v29;
    v32 = a1[3];
    v33 = 0.0;
    while (1)
    {
      if (v15 == 1)
      {
        v35 = 0;
      }

      else if (*(v32 + 401))
      {
        v35 = 2;
      }

      else
      {
        v35 = 1;
      }

      (*(*a1[1] + 104))(a1[1], v31 - 4 * (a4 + 1), (a4 + 1), v32 + 88, v35, &v44 + 4, &v44);
      v36 = *a1;
      if ((a4 + 1) < 2)
      {
        v37 = (*(v36 + 24))(a1, v15);
      }

      else
      {
        (*(v36 + 16))(a1, v15);
      }

      if (*(&v44 + 1) >= v37 && *&v44 > 0.0)
      {
        if ((a4 + 1) >= 2)
        {
          v38 = a1[3];
LABEL_39:
          v39 = *(*(v38 + 264) + 4 * (a4 + 1) - 4);
          v40 = (*(&v44 + 1) / *&v44);
          v41 = *(a6 + 24);
          if (v41)
          {
            v45 = a4;
            v40 = (*(*v41 + 48))(v41, &v45) * v40;
          }

          *a5 = *a5 + fmin(v40, 1.0) * v39;
          goto LABEL_25;
        }

        if (a7)
        {
          v38 = a1[3];
          if (*&v44 > *(v38 + 300))
          {
            goto LABEL_39;
          }
        }
      }

LABEL_25:
      v32 = a1[3];
      v33 = *(*(v32 + 264) + 4 * (a4 + 1) - 4) + v33;
      v34 = a4 >= v30;
      LODWORD(a4) = a4 - 1;
      if (!v34)
      {
        if (v33 > 0.0)
        {
          *a5 = *a5 / v33;
        }

        return v13;
      }
    }
  }

  return v13;
}

void sub_1AE77FDB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2[4];
  *(a1 + 16) = a2[3];
  *a1 = &unk_1F2431F08;
  *(a1 + 8) = a2;
  *(a1 + 24) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a2[6];
  *(a1 + 32) = a2[5];
  *(a1 + 40) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = a5;
  *(a1 + 64) = a6;
  v10 = (*(*a2 + 48))(a2);
  *(a1 + 88) = 0;
  *(a1 + 72) = v10;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  if (4 * a4)
  {
    if (((4 * a4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 176) = 0;
  operator new();
}

void sub_1AE780074(_Unwind_Exception *a1)
{
  MEMORY[0x1B2706400](v5, 0x1020C4016EE4530);
  sub_1AE7800F8((v6 + 3));
  v8 = *v6;
  if (*v6)
  {
    v2[17] = v8;
    operator delete(v8);
  }

  v9 = v2[13];
  if (v9)
  {
    v2[14] = v9;
    operator delete(v9);
  }

  sub_1AE77F200(v4);
  sub_1AE622290(v3);
  sub_1AE622290(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE7800F8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1AE780184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "NSt3__16__bindIMN2LM40DynamicLanguageModelPredictionEnumeratorEKFbRKNS1_15NgramPredictionEEJPS2_RKNS_12placeholders4__phILi1EEEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "NSt3__16__bindIMN2LM40DynamicLanguageModelPredictionEnumeratorEKFbRKNS1_15NgramPredictionEEJPS2_RKNS_12placeholders4__phILi1EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__16__bindIMN2LM40DynamicLanguageModelPredictionEnumeratorEKFbRKNS1_15NgramPredictionEEJPS2_RKNS_12placeholders4__phILi1EEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__16__bindIMN2LM40DynamicLanguageModelPredictionEnumeratorEKFbRKNS1_15NgramPredictionEEJPS2_RKNS_12placeholders4__phILi1EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE7801F0(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

__n128 sub_1AE780240(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2431F70;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL sub_1AE7802EC(uint64_t a1, float *a2)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    return a2[2] >= *(*(a1 + 16) + 256);
  }

  v5 = (*(*v4 + 144))(v4, *a2);
  v6 = 216;
  if (v5 != 1)
  {
    v6 = 256;
  }

  v7 = *(*(a1 + 16) + v6);
  v8 = a2[2];
  result = v8 >= v7;
  if (v8 >= v7 && v5 == 1)
  {
    return a2[1] == 1.0;
  }

  return result;
}

BOOL sub_1AE7803A0(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  if (!a4)
  {
    return 1;
  }

  v6 = HIWORD(a2);
  v7 = *(a1 + 56);
  if (HIWORD(a2) >= v7)
  {
    return 1;
  }

  v59 = v4;
  v60 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = (v9 + 4 * v6);
  v11 = (v8 + 4 * *v10);
  v12 = v7 - 1;
  if (v6 == v7 - 1)
  {
    v13 = (*(a1 + 24) + *(a1 + 32));
    if (v11 == v13)
    {
      return 1;
    }
  }

  else
  {
    v13 = (v8 + 4 * v10[1]);
    if (v11 == v13)
    {
      return 1;
    }
  }

  v15 = v13 - v11;
  do
  {
    v16 = v15 >> 1;
    v17 = &v11[v15 >> 1];
    v18 = *(v17 + 1);
    v19 = v17 + 1;
    v15 += ~(v15 >> 1);
    if (v18 < a2)
    {
      v11 = v19;
    }

    else
    {
      v15 = v16;
    }
  }

  while (v15);
  if (v11 >= v13)
  {
    return 1;
  }

  v20 = *v11;
  if ((*v11 ^ (a2 << 16)) >> 16)
  {
    return 1;
  }

  v21 = a3 + 4 * a4;
  v22 = *(v21 - 4);
  v23 = v22 >> 16;
  if (HIWORD(*(v21 - 4)) >= v7)
  {
    return 1;
  }

  v24 = (v9 + 4 * v23);
  v25 = (v8 + 4 * *v24);
  v26 = (v23 == v12 ? *(a1 + 24) + *(a1 + 32) : v8 + 4 * v24[1]);
  if (v25 == v26)
  {
    return 1;
  }

  v27 = v20;
  v28 = v26 - v25;
  do
  {
    v29 = v28 >> 1;
    v30 = &v25[v28 >> 1];
    v31 = *(v30 + 1);
    v32 = v30 + 1;
    v28 += ~(v28 >> 1);
    if (v31 < *(v21 - 4))
    {
      v25 = v32;
    }

    else
    {
      v28 = v29;
    }
  }

  while (v28);
  if (v25 >= v26)
  {
    return 1;
  }

  v33 = *v25;
  if ((v33 ^ (v22 << 16)) >> 16)
  {
    return 1;
  }

  v34 = v33;
  v58 = v33;
  if ((v20 & 0x80) == 0 || (v20 & 0x1200) == 0 || a4 == 1 || (v33 & 0x100) == 0 || *(v21 - 8) != 1 && (a4 < 3 || *(v21 - 12) != 1))
  {
    if ((v20 & 0x100) != 0)
    {
      if (a4 != 1 && (v33 & 4) != 0 && *(v21 - 8) == 1)
      {
        return 0;
      }

      if ((v33 & 0x50) != 0)
      {
        v37 = v20 & v33;
LABEL_65:
        v35 = (v37 & 0x7E00) == 0;
        return !v35;
      }
    }

    if ((v20 & 0x10) == 0)
    {
      return 1;
    }

    if (a4 != 1 && (v33 & 0x6100) == 0x6100)
    {
      v38 = *(v21 - 8);
      v39 = v38 >> 16;
      if (HIWORD(*(v21 - 8)) < v7)
      {
        v40 = (v9 + 4 * v39);
        v41 = (v8 + 4 * *v40);
        v42 = (v39 == v12 ? *(a1 + 24) + *(a1 + 32) : v8 + 4 * v40[1]);
        if (v41 != v42)
        {
          v43 = v42 - v41;
          do
          {
            v44 = v43 >> 1;
            v45 = &v41[v43 >> 1];
            v46 = *(v45 + 1);
            v47 = v45 + 1;
            v43 += ~(v43 >> 1);
            if (v46 < *(v21 - 8))
            {
              v41 = v47;
            }

            else
            {
              v43 = v44;
            }
          }

          while (v43);
          if (v41 < v42)
          {
            v48 = *v41;
            if (!((*v41 ^ (v38 << 16)) >> 16))
            {
              v34 = *v41;
              v58 = v34;
              if ((v48 & 0x40) != 0)
              {
                goto LABEL_64;
              }
            }
          }
        }
      }
    }

    if ((v34 & 0x140) != 0)
    {
LABEL_64:
      v37 = v34 & v27;
      goto LABEL_65;
    }

    if ((v34 & 0x20) != 0)
    {
      if (a4 != 1)
      {
        v55 = a1;
        v57 = a4;
        v50 = sub_1AE74790C(a1 + 16, *(v21 - 8), &v58);
        v34 = v58;
        if (v50)
        {
          if ((v58 & 0x100) != 0)
          {
            goto LABEL_64;
          }

          if ((v58 & 1) == 0)
          {
            return 1;
          }

          v51 = v57;
          if ((v58 & 0x7000) == 0 || (v27 & 0x7000) == 0)
          {
            v36 = 0;
            if ((v58 & 0xE00) == 0)
            {
              return v36;
            }

            v51 = v57;
            if ((v27 & 0xE00) == 0)
            {
              return v36;
            }
          }

          if (v51 < 3)
          {
            return 1;
          }

          v52 = *(v21 - 12);
          v53 = v55 + 16;
LABEL_97:
          if (!sub_1AE74790C(v53, v52, &v58) || (v58 & 0x100) == 0)
          {
            return 1;
          }

          v37 = v58 & v27;
          goto LABEL_65;
        }

        a1 = v55;
        a4 = v57;
        goto LABEL_71;
      }
    }

    else if (a4 != 1)
    {
LABEL_71:
      if ((v34 & 2) != 0)
      {
        v54 = a1;
        v56 = a4;
        v49 = sub_1AE74790C(a1 + 16, *(v21 - 8), &v58);
        v34 = v58;
        if (v49)
        {
          a1 = v54;
          a4 = v56;
          if ((v58 & 0x10) != 0)
          {
            goto LABEL_64;
          }
        }

        else
        {
          a1 = v54;
          a4 = v56;
        }
      }
    }

    if ((v34 & 1) == 0)
    {
      return (v34 & 0x10) == 0 || (v34 & v27 & 0x7E00) != 0;
    }

    if ((v34 & 0x7000) == 0 || (v27 & 0x7000) == 0)
    {
      v36 = 0;
      if ((v34 & 0xE00) == 0 || (v27 & 0xE00) == 0)
      {
        return v36;
      }
    }

    if (a4 == 1)
    {
      return 1;
    }

    v52 = *(v21 - 8);
    v53 = a1 + 16;
    goto LABEL_97;
  }

  if ((v20 & 0x7000) != 0 && (v33 & 0x7000) != 0)
  {
    return 1;
  }

  if ((v20 & 0xE00) != 0)
  {
    v35 = (v33 & 0xE00) == 0;
    return !v35;
  }

  return 0;
}

void sub_1AE7807A4(uint64_t a1)
{
  *a1 = &unk_1F2432040;
  *(a1 + 16) = &unk_1F2432098;
  if (*(a1 + 24))
  {
    v1 = a1;
    munmap(*(a1 + 24), *(a1 + 32));
    a1 = v1;
  }

  *(a1 + 32) = 0;

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE780840(uint64_t result)
{
  *result = &unk_1F2432040;
  *(result + 16) = &unk_1F2432098;
  if (*(result + 24))
  {
    v1 = result;
    munmap(*(result + 24), *(result + 32));
    result = v1;
  }

  *(result + 32) = 0;
  return result;
}

BOOL sub_1AE7808BC()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = 16;
  while (1)
  {
    std::istream::tellg();
    v1 = v6;
    if (v6 < 0)
    {
      break;
    }

    if ((v6 & 0xF) != 0)
    {
      std::istream::read();
      if (--v0)
      {
        continue;
      }
    }

    return v1 >= 0;
  }

  v5 = 5;
  strcpy(__p, "ERROR");
  v2 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
  sub_1AE5DB608(v2, ": ", 2);
  sub_1AE5DB608(MEMORY[0x1E69E5300], "AlignInput: can't determine stream position", 43);
  sub_1AE696D18();
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v1 >= 0;
}

void sub_1AE7809D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_1AE696D18();
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE780A04(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 16;
  while (1)
  {
    v3 = a1 + *(*a1 - 24);
    if ((v3[32] & 5) != 0)
    {
      break;
    }

    (*(**(v3 + 5) + 32))(__p);
    if (v8 < 0)
    {
      break;
    }

    if ((v8 & 0xF) != 0)
    {
      std::ostream::write();
      if (--v2)
      {
        continue;
      }
    }

    return 1;
  }

  v7 = 5;
  strcpy(__p, "ERROR");
  v5 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
  sub_1AE5DB608(v5, ": ", 2);
  sub_1AE5DB608(MEMORY[0x1E69E5300], "AlignOutput: can't determine stream position", 44);
  sub_1AE696D18();
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1AE780B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_1AE696D18();
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE780BAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v133enumerateComparableLexiconEntriesERKNSt3__16vectorINS1_10unique_ptrIN2LM7LexiconENS1_14default_deleteIS5_EEEENS1_9allocatorIS8_EEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS9_IcEEEEmRKNS1_8functionIFvPK10__CFStringjdNS4_13SourceLexiconEPK10__CFLocaleRbEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v133enumerateComparableLexiconEntriesERKNSt3__16vectorINS1_10unique_ptrIN2LM7LexiconENS1_14default_deleteIS5_EEEENS1_9allocatorIS8_EEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS9_IcEEEEmRKNS1_8functionIFvPK10__CFStringjdNS4_13SourceLexiconEPK10__CFLocaleRbEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v133enumerateComparableLexiconEntriesERKNSt3__16vectorINS1_10unique_ptrIN2LM7LexiconENS1_14default_deleteIS5_EEEENS1_9allocatorIS8_EEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS9_IcEEEEmRKNS1_8functionIFvPK10__CFStringjdNS4_13SourceLexiconEPK10__CFLocaleRbEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v133enumerateComparableLexiconEntriesERKNSt3__16vectorINS1_10unique_ptrIN2LM7LexiconENS1_14default_deleteIS5_EEEENS1_9allocatorIS8_EEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS9_IcEEEEmRKNS1_8functionIFvPK10__CFStringjdNS4_13SourceLexiconEPK10__CFLocaleRbEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

CFComparisonResult sub_1AE780C18(uint64_t a1, const __CFString **a2, int *a3, uint64_t *a4, int *a5, const __CFLocale **a6, uint64_t a7)
{
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  v13 = *a6;
  v14 = *(a1 + 8);
  v15 = *v14;
  if (!*v14)
  {
    v16 = *(a1 + 16);
    v17 = *(v16 + 23);
    if (v17 < 0)
    {
      if (!*v16)
      {
        v15 = 0;
        *v14 = 0;
        goto LABEL_9;
      }

      v17 = *(v16 + 1);
      v16 = *v16;
    }

    v18 = CFStringCreateWithBytes(0, v16, v17, 0x8000100u, 0);
    v29 = v18;
    if (!v18)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v15 = v18;
    v19 = *(a1 + 8);
    v20 = *v19;
    *v19 = v15;
    if (v20)
    {
      CFRelease(v20);
      v15 = **(a1 + 8);
    }
  }

LABEL_9:
  v30.length = CFStringGetLength(v15);
  v30.location = 0;
  result = CFStringCompareWithOptionsAndLocale(v15, v9, v30, **(a1 + 24), v13);
  if (result == kCFCompareEqualTo)
  {
    v22 = *(a1 + 32);
    v29 = v9;
    v28 = v10;
    v27 = v11;
    v26 = v12;
    v25 = v13;
    v23 = *(v22 + 24);
    if (!v23)
    {
      sub_1AE60819C();
    }

    return (*(*v23 + 48))(v23, &v29, &v28, &v27, &v26, &v25, a7);
  }

  return result;
}

void sub_1AE780DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1AE621E54(va);
  _Unwind_Resume(a1);
}

__n128 sub_1AE780DE0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F24320C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1AE780E8C(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v3)
  {
    if (v2 >= 0)
    {
      v4 = *(a2 + 23);
    }

    else
    {
      v4 = *(a2 + 8);
    }

    v5 = a1;
    v6 = a2;
    v7 = CFStringCreateWithBytes(0, v3, v4, 0x8000100u, 0);
    a2 = v6;
    v8 = v7;
    a1 = v5;
    cf = v8;
    if (!v8)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf = 0;
  }

  v12 = 0;
  v14[0] = &unk_1F2432140;
  v14[1] = &cf;
  v14[2] = &v12;
  v15 = v14;
  sub_1AE656BF4(a1, a2, 1, v14);
  if (v15 == v14)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))();
  }

  v10 = v12;
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

void sub_1AE781028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE621E54(va);
  _Unwind_Resume(a1);
}

void sub_1AE78104C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE781084(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v134isOneWayCaseEquivalentLexiconMatchERKN2LM22CompositeLanguageModelERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS1_22TokenEnumerationPolicyEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v134isOneWayCaseEquivalentLexiconMatchERKN2LM22CompositeLanguageModelERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS1_22TokenEnumerationPolicyEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v134isOneWayCaseEquivalentLexiconMatchERKN2LM22CompositeLanguageModelERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS1_22TokenEnumerationPolicyEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v134isOneWayCaseEquivalentLexiconMatchERKN2LM22CompositeLanguageModelERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS1_22TokenEnumerationPolicyEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

CFComparisonResult sub_1AE7810F0(uint64_t a1, const __CFString **a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFLocale **a6, _BYTE *a7)
{
  v9 = *a2;
  v10 = *a6;
  v11 = sub_1AE781188(*a2, *a6);
  v12 = **(a1 + 8);
  v14.length = CFStringGetLength(v12);
  v14.location = 0;
  result = CFStringCompareWithOptionsAndLocale(v12, v9, v14, v11, v10);
  if (result == kCFCompareEqualTo)
  {
    **(a1 + 16) = 1;
    *a7 = 1;
  }

  return result;
}

BOOL sub_1AE781188(const __CFString *a1, const __CFLocale *a2)
{
  v4 = *MEMORY[0x1E695E480];
  Length = CFStringGetLength(a1);
  MutableCopy = CFStringCreateMutableCopy(v4, Length, a1);
  CFStringLowercase(MutableCopy, a2);
  if (MutableCopy)
  {
    v7 = CFGetTypeID(MutableCopy);
    if (v7 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v8 = MutableCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = CFStringCompare(a1, v8, 0);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v9 == kCFCompareEqualTo;
}

void sub_1AE781274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_1AE621E54(&a10);
  _Unwind_Resume(a1);
}

void sub_1AE7812A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE63109C(va);
  _Unwind_Resume(a1);
}

__n128 sub_1AE7812BC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2432140;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL sub_1AE781358(CFStringRef *a1, const __CFLocale *a2)
{
  v4 = *a1;
  v5 = *MEMORY[0x1E695E480];
  Length = CFStringGetLength(*a1);
  MutableCopy = CFStringCreateMutableCopy(v5, Length, v4);
  CFStringUppercase(MutableCopy, a2);
  if (MutableCopy)
  {
    v8 = CFGetTypeID(MutableCopy);
    if (v8 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v9 = MutableCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = CFStringCompare(*a1, v9, 0);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v10 == kCFCompareEqualTo;
}

void sub_1AE78144C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_1AE621E54(&a10);
  _Unwind_Resume(a1);
}

void sub_1AE781478(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE63109C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE78148C(unsigned int a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(*(a2 + 232) + 288) <= a1)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 1;
  v12 = xmmword_1AE79A550;
  v13 = 0;
  v14 = xmmword_1AE79A550;
  v16 = 0;
  v17 = 0;
  v15 = 0xFFEFFFFFFFFFFFFFLL;
  v2 = 0uLL;
  v8 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  memset(v7, 0, sizeof(v7));
  if (qword_1ED9AC8F8 != -1)
  {
    v6 = a1;
    v5 = a2;
    dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    a1 = v6;
    a2 = v5;
  }

  v19 = 0;
  v3 = sub_1AE66C188(a2, a1 | (a1 << 32), v7, &v8, qword_1ED9AC900, 0, 0, v18, v2);
  return v3 & (*v8.i64 >= -3.0);
}

uint64_t sub_1AE7815D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  std::istream::read();
  v11 = 5;
  strcpy(__p, "ERROR");
  v4 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
  sub_1AE5DB608(v4, ": ", 2);
  v5 = sub_1AE5DB608(MEMORY[0x1E69E5300], "FstHeader::Read: Bad FST header: ", 33);
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  sub_1AE5DB608(v5, v7, v8);
  sub_1AE696D18();
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1AE7818AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_1AE696D18();
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1AE7818DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double *a5, unint64_t *a6, uint64_t a7)
{
  v7 = *(a1 + 152);
  if (v7)
  {
    v47 = *(a1 + 152);
    v12 = *(a1 + 16);
    if (a4 >= v12)
    {
      v13 = a3 + 4 * a4 + 4 * (1 - v12);
    }

    else
    {
      v13 = a3;
    }

    if (a4 >= v12)
    {
      v14 = v12 - 1;
    }

    else
    {
      v14 = a4;
    }

    v15 = *(a1 + 48);
    v16 = *(a1 + 32);
    if (v14)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      do
      {
        v21 = *(v13 + 4 * v17);
        if (*(a1 + 288) == 1 && (v21 < *(a1 + 280) || v21 > *(a1 + 284)))
        {
          if (v21 <= *(a1 + 24))
          {
            v22 = *(v13 + 4 * v17);
          }

          else
          {
            v22 = 0;
          }

          *(*(a1 + 184) + 4 * v18) = v22;
          v20 = 1;
        }

        else
        {
          v20 = sub_1AE770568(*(a1 + 152), v21, (*(a1 + 184) + 4 * v18), 0);
          v19 |= v20 > 1;
        }

        *(*(a1 + 232) + 8 * v17) = v20;
        v18 += v20;
        ++v17;
      }

      while (v14 != v17);
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    if (*(a1 + 288) == 1 && (*(a1 + 280) > a2 || *(a1 + 284) < a2))
    {
      a2 = a2 & ~(a2 >> 31);
      if (a2 <= *(a1 + 24))
      {
        *(*(a1 + 184) + 4 * v18) = a2;
        v23 = 0.0;
      }

      else
      {
        *(*(a1 + 56) + 4 * v14) = 0;
        v23 = -*(a1 + 40);
        v16 = 0.0;
      }

      v26 = *(a1 + 232);
      v26[v14] = 1;
      v27 = v14 + 1;
      if (v19)
      {
        v24 = 0;
        v28 = 0;
        if (v15 != 5)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v24 = (*(a1 + 184) + 4 * v18);
      v25 = sub_1AE770568(*(a1 + 152), a2, v24, *(a1 + 208));
      v26 = *(a1 + 232);
      v26[v14] = v25;
      v27 = v14 + 1;
      v23 = 0.0;
      if ((v25 > 1) | v19 & 1)
      {
        v28 = v25;
        if (v15 != 5)
        {
LABEL_31:
          v46 = v27;
          v49 = 0.0;
          (*(**(a1 + 168) + 16))(*(a1 + 168), a2, 0, 0, &v49, a6, a7);
          v29 = *(a1 + 208);
          if (v28)
          {
            v30 = 0;
            v31 = *(a1 + 152);
            v32 = v31[12];
            v33 = vcnt_s8(v32);
            v33.i16[0] = vaddlv_u8(v33);
            v34 = v33.u32[0];
            do
            {
              v36 = -10.0;
              if (v32)
              {
                v37 = v24[v30];
                if (v34 > 1)
                {
                  v38 = v24[v30];
                  if (*&v32 <= v37)
                  {
                    v38 = v37 % v32.i32[0];
                  }
                }

                else
                {
                  v38 = (*&v32 + 0xFFFFFFFFLL) & v37;
                }

                v39 = *(v31[11] + 8 * v38);
                if (v39)
                {
                  v40 = *v39;
                  if (v40)
                  {
                    if (v34 < 2)
                    {
                      while (1)
                      {
                        v41 = v40[1];
                        if (v41 == v37)
                        {
                          if (*(v40 + 4) == v37)
                          {
                            goto LABEL_34;
                          }
                        }

                        else if ((v41 & (*&v32 - 1)) != v38)
                        {
                          goto LABEL_35;
                        }

                        v40 = *v40;
                        if (!v40)
                        {
                          goto LABEL_35;
                        }
                      }
                    }

                    do
                    {
                      v42 = v40[1];
                      if (v42 == v37)
                      {
                        if (*(v40 + 4) == v37)
                        {
LABEL_34:
                          v36 = *(v31[19] + 8 * *(v40 + 20));
                          break;
                        }
                      }

                      else
                      {
                        if (v42 >= *&v32)
                        {
                          v42 %= *&v32;
                        }

                        if (v42 != v38)
                        {
                          break;
                        }
                      }

                      v40 = *v40;
                    }

                    while (v40);
                  }
                }
              }

LABEL_35:
              *(v29 + 8 * v30) = __exp10(*(v29 + 8 * v30) - v36 + v49);
              ++v30;
            }

            while (v30 != v28);
          }

          v26 = *(a1 + 232);
          v27 = v46;
          goto LABEL_58;
        }

LABEL_27:
        v29 = 0;
LABEL_58:
        v43 = sub_1AE749974(a1, *(a1 + 184), v26, v27, *(a1 + 256), 0, v29, 0, v16);
        v35 = log10(v43 / v44);
        goto LABEL_59;
      }
    }

    v35 = sub_1AE748DF0(a1, *(a1 + 184), v27, a6, 1, v16);
LABEL_59:
    v7 = v47;
    *a5 = v35 + v23;
  }

  return v7 != 0;
}

void sub_1AE781CA4(void *a1)
{
  sub_1AE781CDC(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE781CDC(void *a1)
{
  *a1 = &unk_1F24321C0;
  v2 = a1[32];
  if (v2)
  {
    a1[33] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    a1[30] = v3;
    operator delete(v3);
  }

  v4 = a1[26];
  if (v4)
  {
    a1[27] = v4;
    operator delete(v4);
  }

  v5 = a1[23];
  if (v5)
  {
    a1[24] = v5;
    operator delete(v5);
  }

  v6 = a1[22];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[20];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return sub_1AE6B225C(a1);
}

void sub_1AE781FB8(_Unwind_Exception *a1)
{
  v7 = *(v4 + 72);
  if (v7)
  {
    v1[33] = v7;
    operator delete(v7);
    v8 = *v5;
    if (!*v5)
    {
LABEL_3:
      v9 = *(v4 + 24);
      if (!v9)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v8 = *v5;
    if (!*v5)
    {
      goto LABEL_3;
    }
  }

  v1[30] = v8;
  operator delete(v8);
  v9 = *(v4 + 24);
  if (!v9)
  {
LABEL_4:
    v10 = *v4;
    if (!*v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  v1[27] = v9;
  operator delete(v9);
  v10 = *v4;
  if (!*v4)
  {
LABEL_6:
    sub_1AE622290(v3);
    sub_1AE622290(v2);
    sub_1AE6B225C(v1);
    _Unwind_Resume(a1);
  }

LABEL_5:
  v1[24] = v10;
  operator delete(v10);
  goto LABEL_6;
}

unint64_t sub_1AE782038(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = (a2[1] - *a2) >> 2;
  v3 = *(a1 + 88);
  v4 = v2 > v3;
  v5 = v2 - v3;
  if (!v4)
  {
    __assert_rtn("_truncatedPriorContextLength", "CoreLanguageModel.cpp", 39, "context.size() > m_forwardPassLimit");
  }

  v8 = v5 + 1;
  do
  {
    v9 = v8 - 1;
    if (v8 == 1)
    {
      break;
    }

    v10 = (*(**(a1 + 208) + 136))(*(a1 + 208), a2, v8 - 2);
    v8 = v9;
  }

  while (!v10);
  if (qword_1EB5E09D8 != -1)
  {
    dispatch_once(&qword_1EB5E09D8, &unk_1F2432338);
  }

  v11 = qword_1EB5E09F0;
  if (os_log_type_enabled(qword_1EB5E09F0, OS_LOG_TYPE_INFO))
  {
    v12 = (a2[1] - *a2) >> 2;
    v14 = 134218496;
    v15 = v12 - v9;
    v16 = 2048;
    v17 = v12;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&dword_1AE5C8000, v11, OS_LOG_TYPE_INFO, "limiting forward passes to %ld, with contextLength=%zu and priorContextLength=%zu", &v14, 0x20u);
  }

  return v9;
}

os_log_t sub_1AE7821B0()
{
  result = os_log_create("com.apple.LanguageModeling", "CoreLanguageModel");
  qword_1EB5E09F0 = result;
  return result;
}

uint64_t sub_1AE782218(uint64_t a1, char **a2, unint64_t a3, void *a4)
{
  v4 = *a2;
  if (**a2 != 1)
  {
    __assert_rtn("_forward", "CoreLanguageModel.cpp", 189, "context[0] == kMontrealTokenIDBeginningOfSentence");
  }

  v5 = a3;
  v7 = a2[1];
  v8 = (v7 - v4) >> 2;
  if (v8 == a3)
  {
    __assert_rtn("_forward", "CoreLanguageModel.cpp", 190, "context.size() != priorContextLength");
  }

  v10 = v8 > a3;
  v11 = v8 - a3;
  if (v10 && v11 > *(a1 + 88))
  {
    v5 = sub_1AE782038(a1, a2);
    v4 = *a2;
    v7 = a2[1];
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
  v14 = 0;
  v15 = &v4[4 * v5];
  v68 = 0;
  v69 = 0uLL;
  if (v7 != v15)
  {
    if (((v7 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  v16 = v12;
  if (v12 && MEMORY[0] != 1)
  {
    sub_1AE74AC7C(&v68, 0, byte_1AE7A5280);
    v14 = v68;
    v13 = v69;
  }

  v67 = v14;
  v17 = v13 - v14;
  if (v13 != v14)
  {
    if ((v17 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  v18 = v17 >> 2;
  if (v5)
  {
    v19 = v16;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v21 = (*(**(a1 + 8) + 40))(*(a1 + 8), *a2, v5);
    v23 = v22;
    if (v22 + v18 >= *(a1 + 224))
    {
      goto LABEL_31;
    }

    v65 = (*(**(a1 + 8) + 48))(*(a1 + 8), v21, v22);
    if (4 * v23)
    {
      if (((4 * v23) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    if (v13 != v67)
    {
      operator new();
    }

    v20 = v65;
    if (v65)
    {
      v16 = 0;
    }

    else
    {
LABEL_31:
      v24 = *a2;
      v25 = a2[1];
      if (*(a1 + 88) >= ((v25 - *a2) >> 2))
      {
        v26 = 0;
      }

      else
      {
        v26 = sub_1AE782038(a1, a2);
        v24 = *a2;
        v25 = a2[1];
      }

      v27 = v26 != 0;
      v28 = &v24[4 * v26];
      *buf = 0;
      v77 = 0uLL;
      if (v25 != v28)
      {
        if (((v25 - v28) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AE5CBB70();
      }

      if (MEMORY[0] != 1)
      {
        sub_1AE74AC7C(buf, 0, byte_1AE7A5280);
      }

      v16 = v27;
      if (v68)
      {
        operator delete(v68);
      }

      v20 = 0;
      v68 = *buf;
      v69 = v77;
      v67 = *buf;
      v18 = (v77 - *buf) >> 2;
    }
  }

  if (qword_1ED9AC958 != -1)
  {
    dispatch_once(&qword_1ED9AC958, &unk_1F242BDB8);
  }

  v29 = os_signpost_id_generate(qword_1ED9AC960);
  if ((v16 & 1) != 0 || v18 > *(a1 + 88) - 4)
  {
    if (qword_1ED9AC958 != -1)
    {
      dispatch_once(&qword_1ED9AC958, &unk_1F242BDB8);
    }

    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v30 = qword_1ED9AC960;
      if (os_signpost_enabled(qword_1ED9AC960))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AE5C8000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v29, "TruncatedContextMaxForwardPassesCalculated", &unk_1AE7CF046, buf, 2u);
      }
    }
  }

  if (v18)
  {
    v31 = 0;
    ++*a4;
    v32 = (*(**(a1 + 40) + 24))(*(a1 + 40), v20, *v67, 5, 0, 0);
    if (v33)
    {
      v34 = *(a1 + 16);
      if (v33 != (*(a1 + 24) - v34) >> 1)
      {
        __assert_rtn("compressOutputLayer", "NeuralNetworkUtils.hpp", 84, "uncompressed.size() == compressed.size() && mismatched output layer sizes");
      }

      if (!(4 * v33))
      {
        goto LABEL_69;
      }

      v35 = (v33 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v35 < 3)
      {
        v36 = v32;
        goto LABEL_68;
      }

      v37 = v35 + 1;
      if (v35 >= 0xF)
      {
        v38 = v37 & 0x7FFFFFFFFFFFFFF0;
        v39 = (v32 + 32);
        v40 = v34 + 1;
        v41 = v37 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v43 = v39[-2];
          v42 = v39[-1];
          v45 = *v39;
          v44 = v39[1];
          v39 += 4;
          v40[-1] = vcvt_hight_f16_f32(vcvt_f16_f32(v43), v42);
          *v40 = vcvt_hight_f16_f32(vcvt_f16_f32(v45), v44);
          v40 += 2;
          v41 -= 16;
        }

        while (v41);
        if (v37 == v38)
        {
          goto LABEL_69;
        }

        if ((v37 & 0xC) == 0)
        {
          v36 = (v32 + 4 * v38);
          v34 = (v34 + 2 * v38);
          goto LABEL_68;
        }
      }

      else
      {
        v38 = 0;
      }

      v46 = v38 - (v37 & 0x7FFFFFFFFFFFFFFCLL);
      v47 = (v32 + 4 * v38);
      v48 = (v34 + 2 * v38);
      do
      {
        v49 = *v47++;
        *v48++ = vcvt_f16_f32(v49);
        v46 += 4;
      }

      while (v46);
      if (v37 == (v37 & 0x7FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_69;
      }

      v34 = (v34 + 2 * (v37 & 0x7FFFFFFFFFFFFFFCLL));
      v36 = (v32 + 4 * (v37 & 0x7FFFFFFFFFFFFFFCLL));
      do
      {
LABEL_68:
        v50 = *v36++;
        _S0 = v50;
        __asm { FCVT            H0, S0 }

        v34->i16[0] = _S0;
        v34 = (v34 + 2);
      }

      while (v36 != (v32 + 4 * v33));
LABEL_69:
      if (v18 != 1)
      {
        (*(**(a1 + 40) + 32))(buf);
        *buf = 0;
      }

      v57 = *(a1 + 40);
      v56 = *(a1 + 48);
      if (v56)
      {
        atomic_fetch_add_explicit((v56 + 8), 1uLL, memory_order_relaxed);
      }

      if (*(v57 + 8) != 1)
      {
        __assert_rtn("copyCurrentIncrementalState", "MontrealInferenceEngine.cpp", 153, "m_architecture == NNModelArchitecture::Transformer");
      }

      v71 = 0;
      v72 = 0;
      v58 = *(v57 + 16);
      v73 = &v72;
      v74 = 0x2000000000;
      v59 = off_1ED9AC570;
      v75 = off_1ED9AC570;
      if (!off_1ED9AC570)
      {
        *buf = MEMORY[0x1E69E9820];
        *&v77 = 0x40000000;
        *(&v77 + 1) = sub_1AE757FB0;
        v78 = &unk_1E7A2FD10;
        v79 = &v72;
        sub_1AE757FB0(buf);
        v59 = v73[3];
      }

      _Block_object_dispose(&v72, 8);
      if (v59)
      {
        v60 = v59(v58, &v71);
        v70 = v60;
        if (!v60 || (v61 = CFGetTypeID(v60), v61 == CFArrayGetTypeID()))
        {
          if (v71)
          {
            operator new();
          }

          operator new();
        }

        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      dlerror();
      result = abort_report_np();
      __break(1u);
      return result;
    }
  }

  else
  {
    if (v16)
    {
      if (qword_1ED9AC958 != -1)
      {
        dispatch_once(&qword_1ED9AC958, &unk_1F242BDB8);
      }

      if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v62 = qword_1ED9AC960;
        if (os_signpost_enabled(qword_1ED9AC960))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1AE5C8000, v62, OS_SIGNPOST_INTERVAL_END, v29, "TruncatedContextMaxForwardPassesCalculated", &unk_1AE7CF046, buf, 2u);
        }
      }
    }

    v31 = 1;
  }

  if (v68)
  {
    operator delete(v68);
  }

  return v31 & 1;
}

void sub_1AE783334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, void *__p)
{
  v36 = *(v34 - 160);
  if (v36)
  {
    operator delete(v36);
    v37 = a20;
    if (!a20)
    {
LABEL_3:
      v38 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v37 = a20;
    if (!a20)
    {
      goto LABEL_3;
    }
  }

  operator delete(v37);
  v38 = __p;
  if (!__p)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  operator delete(v38);
  goto LABEL_5;
}

void *sub_1AE78355C(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AE7835EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1AE783948(&__p, a1, *a2, a2[1]);
  v5 = v24;
  v6 = (v24 - __p) >> 2;
  if (v24 == __p)
  {
    v7 = v24;
  }

  else
  {
    do
    {
      if ((*(**(a1 + 8) + 32))(*(a1 + 8), __p, v6))
      {
        break;
      }

      --v6;
    }

    while (v6);
    v5 = __p;
    v7 = v24;
  }

  if (v6 == (v7 - v5) >> 2)
  {
    v8 = (*(**(a1 + 8) + 40))(*(a1 + 8));
    v10 = (*(**(a1 + 8) + 56))(*(a1 + 8), v8, v9);
  }

  else
  {
    sub_1AE783B9C(&v21, a1, &__p, v6);
    v11 = v21;
    v10 = (*(**(a1 + 8) + 56))(*(a1 + 8), v21, (v22 - v21) >> 2);
    if (!v10)
    {
      if ((sub_1AE736478(a1, &__p, a3) & 1) == 0)
      {
        __assert_rtn("_getNetworkState", "CoreLanguageModel.cpp", 161, "false");
      }

      v12 = v24;
      v13 = (v24 - __p) >> 2;
      if (v24 == __p)
      {
        v14 = v24;
      }

      else
      {
        do
        {
          if ((*(**(a1 + 8) + 32))(*(a1 + 8), __p, v13))
          {
            break;
          }

          --v13;
        }

        while (v13);
        v12 = __p;
        v14 = v24;
      }

      if (v13 == (v14 - v12) >> 2)
      {
        v15 = (*(**(a1 + 8) + 40))(*(a1 + 8));
        v17 = (*(**(a1 + 8) + 56))(*(a1 + 8), v15, v16);
      }

      else
      {
        sub_1AE783B9C(&v19, a1, &__p, v13);
        if (v11)
        {
          operator delete(v11);
        }

        v11 = v19;
        v21 = v19;
        v22 = v20;
        v17 = (*(**(a1 + 8) + 56))(*(a1 + 8), v19, (v20 - v19) >> 2);
      }

      v10 = v17;
    }

    if (v11)
    {
      operator delete(v11);
    }
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  return v10;
}

void sub_1AE7838E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (v17)
  {
    operator delete(v17);
    v19 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v19 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v19);
  _Unwind_Resume(exception_object);
}

void sub_1AE783948(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a4 != a3)
  {
    if (((a4 - a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  sub_1AE74AC7C(a1, 0, byte_1AE7A5280);
  v6 = (a1[1] - *a1) >> 2;
  v7 = *(a2 + 224);
  v8 = v6 >= v7;
  v9 = v6 - v7;
  if (v9 != 0 && v8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 < v6)
  {
    while (((*(**(a2 + 208) + 136))(*(a2 + 208), a1, v10) & 1) == 0)
    {
      ++v10;
      v11 = *a1;
      v12 = a1[1];
      if (v10 >= &v12[-*a1] >> 2)
      {
        goto LABEL_13;
      }
    }
  }

  if (v10)
  {
    v11 = *a1;
    v12 = a1[1];
LABEL_13:
    v13 = &v11[4 * v10];
    if (v12 != v13)
    {
      if (((v12 - v13) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    if (v11)
    {
      a1[1] = v11;
      operator delete(v11);
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    sub_1AE74AC7C(a1, 0, byte_1AE7A5280);
  }
}

void sub_1AE783B74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE783B9C(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v4 = a4;
  v8 = *a3;
  v9 = a3[1];
  v10 = (v9 - *a3) >> 2;
  v11 = v10 > a4;
  v12 = v10 - a4;
  if (v11 && v12 > *(a2 + 88))
  {
    v4 = sub_1AE782038(a2, a3);
    v8 = *a3;
    v9 = a3[1];
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
  v15 = 0;
  v16 = v8 + 4 * v4;
  v38 = 0uLL;
  v39 = 0;
  if (v9 != v16)
  {
    if (((v9 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  v32 = v13;
  if (v13 && MEMORY[0] != 1)
  {
    sub_1AE74AC7C(&v38, 0, byte_1AE7A5280);
    v14 = *(&v38 + 1);
    v15 = v38;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v17 = v14 - v15;
  if (v14 != v15)
  {
    if ((v17 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  v18 = 0;
  v19 = v32;
  if (!v4)
  {
    v19 = 1;
  }

  if (v19)
  {
    v31 = 0;
    v20 = 0;
  }

  else
  {
    (*(**(a2 + 8) + 40))(*(a2 + 8), *a3, v4);
    if ((v21 + (v17 >> 2)) >= *(a2 + 224))
    {
      v22 = *a3;
      v23 = a3[1];
      if (*(a2 + 88) >= ((v23 - *a3) >> 2))
      {
        v25 = 0;
      }

      else
      {
        v24 = sub_1AE782038(a2, a3);
        v22 = *a3;
        v23 = a3[1];
        v25 = 4 * v24;
      }

      v33 = 0uLL;
      v34 = 0;
      if (v23 != v25 + v22)
      {
        if (((v23 - (v25 + v22)) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AE5CBB70();
      }

      if (MEMORY[0] != 1)
      {
        sub_1AE74AC7C(&v33, 0, byte_1AE7A5280);
      }

      if (v15)
      {
        operator delete(v15);
      }

      v26 = v33;
      v27 = v34;
      goto LABEL_45;
    }

    v31 = v21;
    if (4 * v21)
    {
      if (((4 * v21) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    v18 = 0;
    v20 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    if (v14 != v15)
    {
      operator new();
    }
  }

  v26 = v38;
  if (v32)
  {
    v27 = v39;
LABEL_45:
    *a1 = v26;
    *(a1 + 16) = v27;
    return;
  }

  v28 = v38;
  v29 = v31 + ((*(&v38 + 1) - v38) >> 2);
  if (v29)
  {
    sub_1AE654188(&v35, v29);
    v30 = v36;
    v18 = v37;
    v20 = v35;
  }

  else
  {
    v30 = 0;
  }

  *a1 = v20;
  *(a1 + 8) = v30;
  *(a1 + 16) = v18;
  if (v28)
  {

    operator delete(v28);
  }
}

void sub_1AE784194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (a13)
  {
    operator delete(a13);
    if (!v19)
    {
LABEL_3:
      v21 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v19)
  {
    goto LABEL_3;
  }

  operator delete(v19);
  v21 = __p;
  if (!__p)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  operator delete(v21);
  goto LABEL_5;
}

uint64_t sub_1AE784214(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1AE783948(__p, a1, *a2, a2[1]);
  result = sub_1AE736478(a1, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    v6 = result;
    operator delete(__p[0]);
    return v6;
  }

  return result;
}

void sub_1AE78427C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE784298(void *a1)
{
  *a1 = &unk_1F2432260;
  v1 = a1[27];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  sub_1AE692EE4(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE784344(void *a1)
{
  *a1 = &unk_1F2432260;
  v1 = a1[27];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  return sub_1AE692EE4(a1);
}

void sub_1AE7846F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_1AE622290(v16);
      sub_1AE692EE4(v14);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_1AE784740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  sub_1AE622290(&a13);
  sub_1AE622290(&a15);
  sub_1AE622290(&a17);
  sub_1AE622290(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE78476C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v11[0] = &unk_1F2433190;
  v11[1] = a1;
  v12 = v11;
  v9[0] = &unk_1F2433220;
  v9[1] = a1;
  v10 = v9;
  v8 = v7;
  v7[0] = &unk_1F2433190;
  v7[1] = a1;
  v6 = v5;
  v5[0] = &unk_1F2433220;
  v5[1] = a1;
  sub_1AE784A18(a4, a1, a2, a3);
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))();
  }

  if (v8 == v7)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))();
  }

  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))();
  }

  result = v12;
  if (v12 == v11)
  {
    return (*(*v12 + 32))(v12);
  }

  if (v12)
  {
    return (*(*v12 + 40))(v12);
  }

  return result;
}

void sub_1AE7849EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_1AE633ED4(va);
  sub_1AE633F54(va1);
  sub_1AE633ED4(va2);
  sub_1AE633F54(v2 - 56);
  _Unwind_Resume(a1);
}

void *sub_1AE784A18(void *result, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = *a3;
  v4 = a3[1];
  if (v4 - *a3 != a4[1] - *a4)
  {
    __assert_rtn("normalizedNameTokenConditionalProbabilityWithBlock", "TokenIDLanguageModelSession.cpp", 1466, "tokens.size() == tokensMetadata.size()");
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (v4 != v5)
  {
    operator new();
  }

  return result;
}

void sub_1AE785D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, _Unwind_Exception *exception_object, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  sub_1AE64EC9C((v47 - 192));
  *(a10 + 8) = v46;
  sub_1AE64EA58(&a43);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&a46);
  sub_1AE64E334(a10);
  _Unwind_Resume(a1);
}

void sub_1AE7861C8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1AE6090F0(exception_object);
}

void *sub_1AE7861E0(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1AE5CBB70();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1];
  if (v6 != *a2)
  {
    if (((v6 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  v7 = v5 + 3;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v5 - v9;
  memcpy(v10, *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_1AE7863A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1AE64EC9C(va1);
  sub_1AE64ED38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE7863D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v127TokenIDLanguageModelSession41normalizedNameTokenConditionalProbabilityERKNSt3__16vectorINS3_INS0_5TokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v127TokenIDLanguageModelSession41normalizedNameTokenConditionalProbabilityERKNSt3__16vectorINS3_INS0_5TokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v127TokenIDLanguageModelSession41normalizedNameTokenConditionalProbabilityERKNSt3__16vectorINS3_INS0_5TokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v127TokenIDLanguageModelSession41normalizedNameTokenConditionalProbabilityERKNSt3__16vectorINS3_INS0_5TokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE78643C(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  *v7 = *a2;
  v8 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  v6 = *(a1 + 8);
  sub_1AE5CA7E0(__p, v7);
  v11 = v9;
  v12 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v13 = 0;
  v14 = 0;
  v15 = 1;
  v16 = xmmword_1AE79A550;
  v17 = 0;
  v18 = xmmword_1AE79A550;
  v20 = 0;
  v21 = 0;
  v19 = 0xFFEFFFFFFFFFFFFFLL;
  v23 = 0;
  sub_1AE786620(a4, v6, __p, a3, &v12, 1, v22);
}

void sub_1AE7865CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_1AE6225EC(v21 - 88);
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(a1);
}

void sub_1AE786620(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5, int a6, uint64_t a7)
{
  v72 = *MEMORY[0x1E69E9840];
  std::recursive_mutex::lock((*(a2 + 72) + 480));
  v11 = *a4;
  v12 = *(a2 + 8);
  v66 = &unk_1F2432960;
  v67 = a2;
  v68.n128_u64[0] = &v66;
  sub_1AE6542DC(v11, v12, &v66);
  if (v68.n128_u64[0] == &v66)
  {
    (*(*v68.n128_u64[0] + 32))(v68.n128_u64[0]);
  }

  else if (v68.n128_u64[0])
  {
    (*(*v68.n128_u64[0] + 40))(v68.n128_u64[0]);
  }

  sub_1AE786DE4(&v66, v11, *(a2 + 72), v12, *(a2 + 8));
  v13 = (v67 - v66) >> 2;
  v47 = v69;
  v48 = v68;
  v45 = v71;
  v46 = v70;
  cf = 0;
  v49 = v66;
  v14 = (*(**(a2 + 104) + 40))(*(a2 + 104), a3, &cf);
  v15 = *(a2 + 72);
  v16 = cf;
  v17 = *(a3 + 23);
  if (!cf)
  {
    if (v17 < 0)
    {
      sub_1AE5DBF1C(v59, *a3, *(a3 + 8));
    }

    else
    {
      *v59 = *a3;
      v60 = *(a3 + 16);
    }

    goto LABEL_19;
  }

  if (v17 < 0)
  {
    sub_1AE5DBF1C(__dst, *a3, *(a3 + 8));
    v18 = cf;
    if ((SHIBYTE(v57) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *__dst = *a3;
    v57 = *(a3 + 16);
    v18 = cf;
    if ((SHIBYTE(v57) & 0x80000000) == 0)
    {
LABEL_8:
      *__p = *__dst;
      v62.n128_u64[0] = v57;
LABEL_13:
      if (v18 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v18)))
      {
        sub_1AE621740(v59, v18);
        if (v62.n128_i8[7] < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *v59 = *__p;
        v60 = v62.n128_u64[0];
      }

LABEL_19:
      v20 = sub_1AE787818(v15, v59);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(v59[0]);
      }

      if (v16 && SHIBYTE(v57) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v14 == 500)
      {
        v21 = 0;
      }

      else
      {
        v21 = v14;
      }

      v22 = *(a2 + 72);
      std::recursive_mutex::lock((v22 + 480));
      if (*(a2 + 40) == 3)
      {
        v23 = 0;
      }

      else
      {
        v23 = *(*(*(a2 + 72) + 232) + 192);
      }

      std::recursive_mutex::unlock((v22 + 480));
      v24 = *(a2 + 72);
      __p[0] = v49;
      __p[1] = v13;
      v25 = v48;
      v62 = v48;
      v63 = v47;
      v64 = v46;
      v65 = v45;
      if (qword_1ED9AC8F8 != -1)
      {
        v42 = v24;
        dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
        v24 = v42;
      }

      if ((sub_1AE66C188(v24, v21 | (v20 << 32), __p, a5, qword_1ED9AC900, v23 & 1, a6, a7, v25) & 1) == 0)
      {
        __assert_rtn("combinedConditionalProbability", "TokenIDLanguageModelSession.cpp", 371, "success");
      }

      if ((v23 & 1) == 0 || *(a2 + 88) != 1)
      {
LABEL_67:
        operator new();
      }

      v26 = *(a2 + 8);
      __p[0] = &unk_1F24329F0;
      __p[1] = a2;
      v62.n128_u64[1] = __p;
      sub_1AE6542DC(v11, v26 | 0x60000, __p);
      if (v62.n128_u64[1] == __p)
      {
        (*(*v62.n128_u64[1] + 32))(v62.n128_u64[1]);
      }

      else if (v62.n128_u64[1])
      {
        (*(*v62.n128_u64[1] + 40))();
      }

      v27.n128_f64[0] = sub_1AE787978(__p, v11, *(a2 + 72), v26 | 0x60000u, *(a2 + 8));
      v28 = cf;
      cf = 0;
      if (v28)
      {
        CFRelease(v28);
      }

      (*(**(a2 + 96) + 40))(*(a2 + 96), a3, &cf, __p[0], __p[1], 3, v27);
      v29 = *(*(a2 + 72) + 464);
      v30 = cf;
      v31 = *(a3 + 23);
      if (!cf)
      {
        if (v31 < 0)
        {
          sub_1AE5DBF1C(v54, *a3, *(a3 + 8));
        }

        else
        {
          *v54 = *a3;
          v55 = *(a3 + 16);
        }

LABEL_55:
        v34 = sub_1AE7096D4(v29);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(v54[0]);
        }

        if (v30 && SHIBYTE(v53) < 0)
        {
          operator delete(v52[0]);
        }

        v35 = *(a2 + 72);
        v36 = *(v35 + 272);
        if (v36 && (v37 = *(v36 + 56)) != 0)
        {
          std::mutex::lock((v37 + 96));
          v38 = *(v37 + 40);
          std::mutex::unlock((v37 + 96));
          v35 = *(a2 + 72);
        }

        else
        {
          v38 = 0;
        }

        v39 = *(v35 + 464);
        v41 = v62.n128_u64[1];
        v40 = v62.n128_u64[0];
        if (qword_1ED9AC8F8 != -1)
        {
          v43 = *(v35 + 464);
          v44 = v62;
          dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
          v41 = v44.n128_u64[1];
          v40 = v44.n128_u64[0];
          v39 = v43;
        }

        sub_1AE70A62C(v39, v34, v40, v41, a5, a6, a7, v38);
        goto LABEL_67;
      }

      if (v31 < 0)
      {
        sub_1AE5DBF1C(v52, *a3, *(a3 + 8));
        v32 = cf;
        if ((SHIBYTE(v53) & 0x80000000) == 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        *v52 = *a3;
        v53 = *(a3 + 16);
        v32 = cf;
        if ((SHIBYTE(v53) & 0x80000000) == 0)
        {
LABEL_44:
          *v59 = *v52;
          v60 = v53;
LABEL_49:
          if (v32 && (v33 = CFStringGetTypeID(), v33 == CFGetTypeID(v32)))
          {
            sub_1AE621740(v54, v32);
            if (SHIBYTE(v60) < 0)
            {
              operator delete(v59[0]);
            }
          }

          else
          {
            *v54 = *v59;
            v55 = v60;
          }

          goto LABEL_55;
        }
      }

      sub_1AE5DBF1C(v59, v52[0], v52[1]);
      goto LABEL_49;
    }
  }

  sub_1AE5DBF1C(__p, __dst[0], __dst[1]);
  goto LABEL_13;
}

void sub_1AE786CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, const void *a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{
  sub_1AE63109C(&a41);
  if (a17)
  {
    operator delete(a17);
  }

  std::recursive_mutex::unlock((a18 + 480));
  _Unwind_Resume(a1);
}

uint64_t sub_1AE786DE4(void *a1, void *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v9 = a5 | 0x50000;
  v51[0] = &unk_1F24326D0;
  v51[1] = &v46;
  v52 = v51;
  v53 = &unk_1F2432640;
  v54 = v51;
  v55 = &v53;
  sub_1AE654C9C(a2, a4, a5 | 0x100040000, v9, &v53);
  if (v55 == &v53)
  {
    (*(*v55 + 4))(v55);
  }

  else if (v55)
  {
    (*(*v55 + 5))();
  }

  if (v52 == v51)
  {
    (*(*v52 + 32))(v52);
  }

  else if (v52)
  {
    (*(*v52 + 40))();
  }

  v10 = a5 | 0x20000;
  v49[0] = &unk_1F2432760;
  v49[1] = &v46;
  v50 = v49;
  v53 = &unk_1F2432640;
  v54 = v49;
  v55 = &v53;
  sub_1AE654C9C(a2, a4, 0, a5 | 0x20000, &v53);
  if (v55 == &v53)
  {
    (*(*v55 + 4))(v55);
  }

  else if (v55)
  {
    (*(*v55 + 5))();
  }

  if (v50 == v49)
  {
    (*(*v50 + 32))(v50);
  }

  else if (v50)
  {
    (*(*v50 + 40))();
  }

  v11 = a5 | 0x30000;
  v47[0] = &unk_1F24327E0;
  v47[1] = &v46;
  v48 = v47;
  v53 = &unk_1F2432640;
  v54 = v47;
  v55 = &v53;
  sub_1AE654C9C(a2, a4, 0, v11, &v53);
  if (v55 == &v53)
  {
    (*(*v55 + 4))(v55);
  }

  else if (v55)
  {
    (*(*v55 + 5))();
  }

  result = v48;
  if (v48 != v47)
  {
    if (v48)
    {
      result = (*(*v48 + 40))();
    }

    v13 = a2[7];
    if (v13)
    {
      goto LABEL_25;
    }

LABEL_28:
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_112;
  }

  result = (*(*v48 + 32))(v48);
  v13 = a2[7];
  if (!v13)
  {
    goto LABEL_28;
  }

LABEL_25:
  v14 = vcnt_s8(v13);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a4;
    if (v13 <= a4)
    {
      v15 = a4 % v13;
    }
  }

  else
  {
    v15 = (v13 - 1) & a4;
  }

  v21 = *(a2[6] + 8 * v15);
  if (!v21 || (v22 = *v21) == 0)
  {
    v18 = 0;
    goto LABEL_48;
  }

  if (v14.u32[0] < 2uLL)
  {
    while (1)
    {
      v24 = v22[1];
      if (v24 == a4)
      {
        if (*(v22 + 4) == a4)
        {
          goto LABEL_110;
        }
      }

      else if ((v24 & (v13 - 1)) != v15)
      {
        goto LABEL_46;
      }

      v22 = *v22;
      if (!v22)
      {
        goto LABEL_46;
      }
    }
  }

  while (1)
  {
    v23 = v22[1];
    if (v23 == a4)
    {
      break;
    }

    if (v23 >= v13)
    {
      v23 %= v13;
    }

    if (v23 != v15)
    {
LABEL_46:
      v18 = 0;
      goto LABEL_48;
    }

LABEL_36:
    v22 = *v22;
    if (!v22)
    {
      goto LABEL_46;
    }
  }

  if (*(v22 + 4) != a4)
  {
    goto LABEL_36;
  }

LABEL_110:
  v18 = (v22[4] - v22[3]) >> 2;
LABEL_48:
  v25 = vcnt_s8(v13);
  v25.i16[0] = vaddlv_u8(v25);
  if (v25.u32[0] > 1uLL)
  {
    v26 = v9;
    if (v13 <= v9)
    {
      v26 = v9 % v13;
    }
  }

  else
  {
    v26 = (v13 - 1) & v9;
  }

  v27 = *(a2[6] + 8 * v26);
  if (!v27 || (v28 = *v27) == 0)
  {
    v20 = 0;
    v19 = 0;
    goto LABEL_69;
  }

  if (v25.u32[0] < 2uLL)
  {
    while (1)
    {
      v30 = v28[1];
      if (v30 == v9)
      {
        if (*(v28 + 4) == v9)
        {
          goto LABEL_111;
        }
      }

      else if ((v30 & (v13 - 1)) != v26)
      {
        goto LABEL_67;
      }

      v28 = *v28;
      if (!v28)
      {
        goto LABEL_67;
      }
    }
  }

  while (2)
  {
    v29 = v28[1];
    if (v29 != v9)
    {
      if (v29 >= v13)
      {
        v29 %= v13;
      }

      if (v29 != v26)
      {
LABEL_67:
        v19 = 0;
        v20 = 0;
        goto LABEL_69;
      }

      goto LABEL_57;
    }

    if (*(v28 + 4) != v9)
    {
LABEL_57:
      v28 = *v28;
      if (!v28)
      {
        goto LABEL_67;
      }

      continue;
    }

    break;
  }

LABEL_111:
  v20 = v28[3];
  v19 = (v28[4] - v20) >> 2;
LABEL_69:
  v31 = vcnt_s8(v13);
  v31.i16[0] = vaddlv_u8(v31);
  if (v31.u32[0] > 1uLL)
  {
    v32 = v10;
    if (v13 <= v10)
    {
      v32 = v10 % v13;
    }
  }

  else
  {
    v32 = (v13 - 1) & v10;
  }

  v33 = *(a2[6] + 8 * v32);
  if (!v33 || (v34 = *v33) == 0)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_90;
  }

  if (v31.u32[0] < 2uLL)
  {
    while (1)
    {
      v36 = v34[1];
      if (v36 == v10)
      {
        if (*(v34 + 4) == v10)
        {
          goto LABEL_117;
        }
      }

      else if ((v36 & (v13 - 1)) != v32)
      {
        goto LABEL_88;
      }

      v34 = *v34;
      if (!v34)
      {
        goto LABEL_88;
      }
    }
  }

  while (2)
  {
    v35 = v34[1];
    if (v35 != v10)
    {
      if (v35 >= v13)
      {
        v35 %= v13;
      }

      if (v35 != v32)
      {
LABEL_88:
        v17 = 0;
        v16 = 0;
        goto LABEL_90;
      }

      goto LABEL_78;
    }

    if (*(v34 + 4) != v10)
    {
LABEL_78:
      v34 = *v34;
      if (!v34)
      {
        goto LABEL_88;
      }

      continue;
    }

    break;
  }

LABEL_117:
  v16 = v34[3];
  v17 = (v34[4] - v16) >> 2;
LABEL_90:
  v37 = vcnt_s8(v13);
  v37.i16[0] = vaddlv_u8(v37);
  if (v37.u32[0] > 1uLL)
  {
    v38 = v11;
    if (v13 <= v11)
    {
      v38 = v11 % v13;
    }
  }

  else
  {
    v38 = (v13 - 1) & v11;
  }

  v39 = *(a2[6] + 8 * v38);
  if (!v39 || (v40 = *v39) == 0)
  {
LABEL_112:
    v44 = 0;
    v45 = 0;
    goto LABEL_113;
  }

  if (v37.u32[0] < 2uLL)
  {
    v41 = v13 - 1;
    while (1)
    {
      v43 = v40[1];
      if (v43 == v11)
      {
        if (*(v40 + 4) == v11)
        {
          goto LABEL_118;
        }
      }

      else if ((v43 & v41) != v38)
      {
        goto LABEL_112;
      }

      v40 = *v40;
      if (!v40)
      {
        goto LABEL_112;
      }
    }
  }

  while (1)
  {
    v42 = v40[1];
    if (v42 == v11)
    {
      break;
    }

    if (v42 >= v13)
    {
      v42 %= v13;
    }

    if (v42 != v38)
    {
      goto LABEL_112;
    }

LABEL_99:
    v40 = *v40;
    if (!v40)
    {
      goto LABEL_112;
    }
  }

  if (*(v40 + 4) != v11)
  {
    goto LABEL_99;
  }

LABEL_118:
  v45 = v40[3];
  v44 = (v40[4] - v45) >> 2;
LABEL_113:
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (4 * v18)
  {
    if (((4 * v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  a1[3] = v20;
  a1[4] = v19;
  a1[5] = v16;
  a1[6] = v17;
  a1[7] = v45;
  a1[8] = v44;
  return result;
}

void sub_1AE7877D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_1AE787D30(va1);
  sub_1AE787DB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE787818(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 232) + 192) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 560);
  v4 = *(v2 + 568);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = a1;
      v11 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a1 = v10;
      a2 = v11;
      if (v3)
      {
        goto LABEL_6;
      }

      return 0;
    }
  }

  if (!v3)
  {
    return 0;
  }

LABEL_6:
  v5 = *(a1 + 48);
  v6 = *(v5 + 560);
  v7 = *(v5 + 568);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = (*(*v6 + 24))(v6, a2, 0);
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      return v9;
    }
  }

  return result;
}

double sub_1AE787978(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a5 | 0x80000;
  v27 = a3;
  v28[0] = &unk_1F2432860;
  v28[1] = &v27;
  v29 = v28;
  v30[0] = &unk_1F2432640;
  v30[1] = v28;
  v31 = v30;
  sub_1AE654C9C(a2, a4, a5 | 0x100070000, v8, v30);
  if (v31 == v30)
  {
    (*(*v31 + 32))(v31);
  }

  else if (v31)
  {
    (*(*v31 + 40))();
  }

  if (v29 != v28)
  {
    if (v29)
    {
      (*(*v29 + 40))();
    }

    v9 = a2[7];
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_12:
    v12 = 0;
    v13 = 0;
    goto LABEL_52;
  }

  (*(*v29 + 32))(v29);
  v9 = a2[7];
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_9:
  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = a4;
    if (v9 <= a4)
    {
      v11 = a4 % v9;
    }
  }

  else
  {
    v11 = (v9 - 1) & a4;
  }

  v14 = *(a2[6] + 8 * v11);
  if (!v14 || (v15 = *v14) == 0)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_32;
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v17 = v15[1];
      if (v17 == a4)
      {
        if (*(v15 + 4) == a4)
        {
          goto LABEL_54;
        }
      }

      else if ((v17 & (v9 - 1)) != v11)
      {
        goto LABEL_30;
      }

      v15 = *v15;
      if (!v15)
      {
        goto LABEL_30;
      }
    }
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == a4)
    {
      break;
    }

    if (v16 >= v9)
    {
      v16 %= v9;
    }

    if (v16 != v11)
    {
LABEL_30:
      v13 = 0;
      v12 = 0;
      goto LABEL_32;
    }

LABEL_20:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_30;
    }
  }

  if (*(v15 + 4) != a4)
  {
    goto LABEL_20;
  }

LABEL_54:
  v12 = v15[3];
  v13 = (v15[4] - v12) >> 2;
LABEL_32:
  v18 = vcnt_s8(v9);
  v18.i16[0] = vaddlv_u8(v18);
  if (v18.u32[0] > 1uLL)
  {
    v19 = v8;
    if (v9 <= v8)
    {
      v19 = v8 % v9;
    }
  }

  else
  {
    v19 = (v9 - 1) & v8;
  }

  v20 = *(a2[6] + 8 * v19);
  if (v20)
  {
    v21 = *v20;
    if (v21)
    {
      if (v18.u32[0] < 2uLL)
      {
        v22 = v9 - 1;
        while (1)
        {
          v24 = v21[1];
          if (v24 == v8)
          {
            if (*(v21 + 4) == v8)
            {
              goto LABEL_55;
            }
          }

          else if ((v24 & v22) != v19)
          {
            goto LABEL_51;
          }

          v21 = *v21;
          if (!v21)
          {
            goto LABEL_51;
          }
        }
      }

      do
      {
        v23 = v21[1];
        if (v23 == v8)
        {
          if (*(v21 + 4) == v8)
          {
LABEL_55:
            v25 = v21[3];
            v9 = (v21[4] - v25) >> 2;
            goto LABEL_53;
          }
        }

        else
        {
          if (v23 >= v9)
          {
            v23 %= v9;
          }

          if (v23 != v19)
          {
            break;
          }
        }

        v21 = *v21;
      }

      while (v21);
    }
  }

LABEL_51:
  v9 = 0;
LABEL_52:
  v25 = 0;
LABEL_53:
  *a1 = v12;
  *(a1 + 8) = v13;
  *(a1 + 16) = v25;
  *(a1 + 24) = v9;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

void sub_1AE787D14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1AE787D30(va1);
  sub_1AE787DB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE787D30(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1AE787DB0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1AE787E3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v1L18specializeTokenIdsERNS0_21LinguisticContextImplEjNSt3__18optionalIjEEjNS3_8functionIFjRKNS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKN10applesauce2CF9StringRefEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v1L18specializeTokenIdsERNS0_21LinguisticContextImplEjNSt3__18optionalIjEEjNS3_8functionIFjRKNS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKN10applesauce2CF9StringRefEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v1L18specializeTokenIdsERNS0_21LinguisticContextImplEjNSt3__18optionalIjEEjNS3_8functionIFjRKNS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKN10applesauce2CF9StringRefEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v1L18specializeTokenIdsERNS0_21LinguisticContextImplEjNSt3__18optionalIjEEjNS3_8functionIFjRKNS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKN10applesauce2CF9StringRefEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE787EA8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (*(a2 + 24))
  {
    return *a4;
  }

  v6 = *(*(a1 + 8) + 24);
  if (!v6)
  {
    sub_1AE60819C();
  }

  v7 = *(*v6 + 48);

  return v7();
}

uint64_t sub_1AE787F0C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2432640;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE787FAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v1L22multilingualTokenSpansERNS0_21LinguisticContextImplEPN2LM22CompositeLanguageModelEjtE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v1L22multilingualTokenSpansERNS0_21LinguisticContextImplEPN2LM22CompositeLanguageModelEjtE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v1L22multilingualTokenSpansERNS0_21LinguisticContextImplEPN2LM22CompositeLanguageModelEjtE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v1L22multilingualTokenSpansERNS0_21LinguisticContextImplEPN2LM22CompositeLanguageModelEjtE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE788018(uint64_t a1, uint64_t a2, const __CFString **a3)
{
  v3 = *(**(a1 + 8) + 464);
  v4 = *a3;
  v5 = *(a2 + 23);
  if (!*a3)
  {
    if (v5 < 0)
    {
      sub_1AE5DBF1C(__dst, *a2, *(a2 + 8));
    }

    else
    {
      *__dst = *a2;
      v14 = *(a2 + 16);
    }

    goto LABEL_15;
  }

  if (v5 < 0)
  {
    sub_1AE5DBF1C(v11, *a2, *(a2 + 8));
    v6 = *a3;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    sub_1AE5DBF1C(__p, v11[0], v11[1]);
    goto LABEL_9;
  }

  *v11 = *a2;
  v12 = *(a2 + 16);
  v6 = v4;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  *__p = *v11;
  v16 = v12;
LABEL_9:
  if (v6 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v6)))
  {
    sub_1AE621740(__dst, v6);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *__dst = *__p;
    v14 = v16;
  }

LABEL_15:
  v9 = sub_1AE7096D4(v3);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v4 && SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return v9;
}

void sub_1AE788178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    if (a14 < 0)
    {
      operator delete(a9);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE7881B0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2432860;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE788250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v127TokenIDLanguageModelSession30combinedConditionalProbabilityERKNS0_14SanitizedTokenERKNS0_17LinguisticContextERN2LM18CompositeScoreInfoEbRKNSt3__18functionIFdmEEEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v127TokenIDLanguageModelSession30combinedConditionalProbabilityERKNS0_14SanitizedTokenERKNS0_17LinguisticContextERN2LM18CompositeScoreInfoEbRKNSt3__18functionIFdmEEEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v127TokenIDLanguageModelSession30combinedConditionalProbabilityERKNS0_14SanitizedTokenERKNS0_17LinguisticContextERN2LM18CompositeScoreInfoEbRKNSt3__18functionIFdmEEEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v127TokenIDLanguageModelSession30combinedConditionalProbabilityERKNS0_14SanitizedTokenERKNS0_17LinguisticContextERN2LM18CompositeScoreInfoEbRKNSt3__18functionIFdmEEEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE788304(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F24329F0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE7883A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v1L21specializedTokenSpansERNS0_21LinguisticContextImplEPN2LM22CompositeLanguageModelEjtE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v1L21specializedTokenSpansERNS0_21LinguisticContextImplEPN2LM22CompositeLanguageModelEjtE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v1L21specializedTokenSpansERNS0_21LinguisticContextImplEPN2LM22CompositeLanguageModelEjtE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v1L21specializedTokenSpansERNS0_21LinguisticContextImplEPN2LM22CompositeLanguageModelEjtE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE788410(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 8);
  if (*(*(v2 + 232) + 192) == 1 && (v3 = *(v2 + 288)) != 0)
  {
    return (*(**(v3 + 16) + 24))(*(v3 + 16), a2, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE78846C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F24327E0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE78850C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v1L21specializedTokenSpansERNS0_21LinguisticContextImplEPN2LM22CompositeLanguageModelEjtE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v1L21specializedTokenSpansERNS0_21LinguisticContextImplEPN2LM22CompositeLanguageModelEjtE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v1L21specializedTokenSpansERNS0_21LinguisticContextImplEPN2LM22CompositeLanguageModelEjtE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v1L21specializedTokenSpansERNS0_21LinguisticContextImplEPN2LM22CompositeLanguageModelEjtE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE788578(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 8);
  if (*(*(v2 + 232) + 192) == 1 && (v3 = *(v2 + 296)) != 0)
  {
    return (*(**(v3 + 16) + 24))(*(v3 + 16), a2, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE7885D4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2432760;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE788674(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v1L21specializedTokenSpansERNS0_21LinguisticContextImplEPN2LM22CompositeLanguageModelEjtE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v1L21specializedTokenSpansERNS0_21LinguisticContextImplEPN2LM22CompositeLanguageModelEjtE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v1L21specializedTokenSpansERNS0_21LinguisticContextImplEPN2LM22CompositeLanguageModelEjtE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v1L21specializedTokenSpansERNS0_21LinguisticContextImplEPN2LM22CompositeLanguageModelEjtE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE7886E0(uint64_t a1, uint64_t a2, const __CFString **a3)
{
  v3 = **(a1 + 8);
  v4 = *a3;
  v5 = *(a2 + 23);
  if (!*a3)
  {
    if (v5 < 0)
    {
      sub_1AE5DBF1C(__dst, *a2, *(a2 + 8));
    }

    else
    {
      *__dst = *a2;
      v14 = *(a2 + 16);
    }

    goto LABEL_15;
  }

  if (v5 < 0)
  {
    sub_1AE5DBF1C(v11, *a2, *(a2 + 8));
    v6 = *a3;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    sub_1AE5DBF1C(__p, v11[0], v11[1]);
    goto LABEL_9;
  }

  *v11 = *a2;
  v12 = *(a2 + 16);
  v6 = v4;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  *__p = *v11;
  v16 = v12;
LABEL_9:
  if (v6 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v6)))
  {
    sub_1AE621740(__dst, v6);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *__dst = *__p;
    v14 = v16;
  }

LABEL_15:
  v9 = sub_1AE787818(v3, __dst);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v4 && SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return v9;
}

void sub_1AE78883C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    if (a14 < 0)
    {
      operator delete(a9);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE788874(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F24326D0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE788914(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v127TokenIDLanguageModelSession30combinedConditionalProbabilityERKNS0_14SanitizedTokenERKNS0_17LinguisticContextERN2LM18CompositeScoreInfoEbRKNSt3__18functionIFdmEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v127TokenIDLanguageModelSession30combinedConditionalProbabilityERKNS0_14SanitizedTokenERKNS0_17LinguisticContextERN2LM18CompositeScoreInfoEbRKNSt3__18functionIFdmEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v127TokenIDLanguageModelSession30combinedConditionalProbabilityERKNS0_14SanitizedTokenERKNS0_17LinguisticContextERN2LM18CompositeScoreInfoEbRKNSt3__18functionIFdmEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v127TokenIDLanguageModelSession30combinedConditionalProbabilityERKNS0_14SanitizedTokenERKNS0_17LinguisticContextERN2LM18CompositeScoreInfoEbRKNSt3__18functionIFdmEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE7889C8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2432960;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE788A64(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2433220;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE788B04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v127TokenIDLanguageModelSession41normalizedNameTokenConditionalProbabilityERKNSt3__16vectorINS3_INS0_5TokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v127TokenIDLanguageModelSession41normalizedNameTokenConditionalProbabilityERKNSt3__16vectorINS3_INS0_5TokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v127TokenIDLanguageModelSession41normalizedNameTokenConditionalProbabilityERKNSt3__16vectorINS3_INS0_5TokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v127TokenIDLanguageModelSession41normalizedNameTokenConditionalProbabilityERKNSt3__16vectorINS3_INS0_5TokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

double sub_1AE788B70(uint64_t a1, uint64_t a2, void **a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(a2 + 23);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = *(a1 + 8);
  v7 = *(v6 + 72);
  v8 = *(v6 + 80);
  cf[0] = v7;
  cf[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v7[29];
  if (*(v9 + 455) < 0)
  {
    sub_1AE5DBF1C(__p, *(v9 + 432), *(v9 + 440));
  }

  else
  {
    *__p = *(v9 + 432);
    v37 = *(v9 + 448);
  }

  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
LABEL_9:
    *__dst = *__p;
    v30 = v37;
    v31 = 0;
    goto LABEL_13;
  }

  sub_1AE5DBF1C(__dst, __p[0], __p[1]);
  v31 = 0;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_13:
  sub_1AE5CA7E0(v32, __dst);
  v34 = v31;
  v10 = *a3;
  v11 = *(v6 + 8);
  __p[0] = &unk_1F2432A70;
  __p[1] = v6;
  v38 = __p;
  sub_1AE6542DC(v10, v11, __p);
  if (v38 == __p)
  {
    (*(*v38 + 4))(v38);
    v12 = v10[7];
    if (!*&v12)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (v38)
    {
      (*(*v38 + 5))();
    }

    v12 = v10[7];
    if (!*&v12)
    {
      goto LABEL_38;
    }
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    v14 = v11;
    if (*&v12 <= v11)
    {
      v14 = v11 % v12.i32[0];
    }
  }

  else
  {
    v14 = (v12.i32[0] - 1) & v11;
  }

  v15 = *(v10[6] + 8 * v14);
  if (v15)
  {
    v16 = *v15;
    if (v16)
    {
      if (v13.u32[0] < 2uLL)
      {
        v17 = *&v12 - 1;
        while (1)
        {
          v18 = v16[1];
          if (v18 == v11)
          {
            if (*(v16 + 4) == v11)
            {
              goto LABEL_54;
            }
          }

          else if ((v18 & v17) != v14)
          {
            goto LABEL_38;
          }

          v16 = *v16;
          if (!v16)
          {
            goto LABEL_38;
          }
        }
      }

      do
      {
        v19 = v16[1];
        if (v19 == v11)
        {
          if (*(v16 + 4) == v11)
          {
LABEL_54:
            v21 = v16[3];
            v20 = (v16[4] - v21) >> 2;
            goto LABEL_39;
          }
        }

        else
        {
          if (v19 >= *&v12)
          {
            v19 %= *&v12;
          }

          if (v19 != v14)
          {
            break;
          }
        }

        v16 = *v16;
      }

      while (v16);
    }
  }

LABEL_38:
  v20 = 0;
  v21 = 0;
LABEL_39:
  cf[0] = 0;
  v22 = (*(**(v6 + 104) + 40))(*(v6 + 104), v32, cf, v21, v20, 3);
  v23 = *(v6 + 72);
  __p[0] = 0;
  v24 = *(v23 + 248);
  if (!v24 || !(*(*v24 + 16))(v24, v22, v21, v20, __p, 0, 0))
  {
    v25 = 0;
    v28 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v26 = cf[0];
    if (!cf[0])
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  *&v28.i64[1] = *__p * *(*(v23 + 248) + 8);
  v25 = 1;
  v26 = cf[0];
  if (cf[0])
  {
LABEL_44:
    CFRelease(v26);
  }

LABEL_45:
  if ((v33 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

LABEL_52:
    operator delete(__dst[0]);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_53;
  }

  operator delete(v32[0]);
  if (SHIBYTE(v30) < 0)
  {
    goto LABEL_52;
  }

LABEL_47:
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

LABEL_53:
  operator delete(v4);
LABEL_48:
  result = *&v28.i64[1];
  if (!v25)
  {
    return -1.79769313e308;
  }

  return result;
}

void sub_1AE788F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE789024(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v127TokenIDLanguageModelSession30montrealConditionalProbabilityERKNS0_14SanitizedTokenERKNS0_17LinguisticContextEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v127TokenIDLanguageModelSession30montrealConditionalProbabilityERKNS0_14SanitizedTokenERKNS0_17LinguisticContextEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v127TokenIDLanguageModelSession30montrealConditionalProbabilityERKNS0_14SanitizedTokenERKNS0_17LinguisticContextEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v127TokenIDLanguageModelSession30montrealConditionalProbabilityERKNS0_14SanitizedTokenERKNS0_17LinguisticContextEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE7890D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2432A70;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE789174(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2433190;
  a2[1] = v2;
  return result;
}

BOOL sub_1AE789208(uint64_t a1)
{
  v1 = *(*(a1 + 72) + 232);
  if (*(v1 + 455) < 0)
  {
    sub_1AE5DBF1C(&v5, *(v1 + 432), *(v1 + 440));
    v2 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x80000000) == 0)
    {
      return v2 != 0;
    }

LABEL_5:
    v3 = *(&v5 + 1) != 0;
    operator delete(v5);
    return v3;
  }

  v5 = *(v1 + 432);
  v6 = *(v1 + 448);
  v2 = SHIBYTE(v6);
  if (SHIBYTE(v6) < 0)
  {
    goto LABEL_5;
  }

  return v2 != 0;
}

void sub_1AE789298(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((*(a1 + 72) + 480));
  v4 = *(a1 + 72);
  v5 = *(v4 + 232);
  if (*(v5 + 192) == 1)
  {
    sub_1AE671A48(*(a1 + 72));
    v5 = *(v4 + 232);
  }

  *(v5 + 192) = 1;
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(v4 + 432));
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v8)
  {
    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    v10 = CFStringCreateWithBytes(0, v8, v9, 0x8000100u, 0);
    if (!v10)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v10 = 0;
  }

  CFDictionarySetValue(MutableCopy, kLMLanguageModelCustomDynamicResourceDirectoryKey, v10);
  CFDictionarySetValue(MutableCopy, kLMLanguageModelAdaptationEnabledKey, *MEMORY[0x1E695E4D0]);
  v12 = *(v4 + 432);
  if (v12)
  {
    CFRelease(v12);
  }

  *(v4 + 432) = MutableCopy;
  operator new();
}

void sub_1AE789518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  sub_1AE621E54(va);
  sub_1AE66A268(va1);
  std::recursive_mutex::unlock((v3 + 480));
  _Unwind_Resume(a1);
}

void sub_1AE7895AC(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1AE789734(uint64_t a1)
{
  v2 = *(a1 + 72);
  std::recursive_mutex::lock((v2 + 480));
  sub_1AE671A48(*(a1 + 72));
  *(a1 + 88) = 0;
  v3 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::recursive_mutex::unlock((v2 + 480));
}

void sub_1AE7897F4(uint64_t a1)
{
  v2 = *(a1 + 72);
  std::recursive_mutex::lock((v2 + 480));
  sub_1AE671408(*(a1 + 72));

  std::recursive_mutex::unlock((v2 + 480));
}

void sub_1AE789850(uint64_t a1)
{
  v2 = *(a1 + 72);
  std::recursive_mutex::lock((v2 + 480));
  v3 = *(a1 + 72);
  if (*(*(v3 + 232) + 192) == 1)
  {
    v4 = *(v3 + 264);
    if (v4)
    {
      (*(**(v4 + 8) + 168))(*(v4 + 8));
    }
  }

  std::recursive_mutex::unlock((v2 + 480));
}

void sub_1AE7898E8(uint64_t a1)
{
  v2 = *(a1 + 72);
  std::recursive_mutex::lock((v2 + 480));
  sub_1AE6717F8(*(a1 + 72));

  std::recursive_mutex::unlock((v2 + 480));
}

void sub_1AE789944(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  std::recursive_mutex::lock((v4 + 480));
  v5 = *(a1 + 72);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v7)
  {
    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    v7 = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
    cf = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf = 0;
  }

  sub_1AE670408(v5, v7);
  if (cf)
  {
    CFRelease(cf);
  }

  std::recursive_mutex::unlock((v4 + 480));
}

void sub_1AE789A38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE631068(va);
  std::recursive_mutex::unlock((v2 + 480));
  _Unwind_Resume(a1);
}

void sub_1AE789A80(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 72);
  std::recursive_mutex::lock((v4 + 480));
  v5 = *(a1 + 72);
  std::recursive_mutex::lock((v5 + 480));
  if (*(a1 + 40) == 3)
  {
    v6 = (v5 + 480);
LABEL_3:
    std::recursive_mutex::unlock(v6);
    goto LABEL_13;
  }

  v7 = *(*(*(a1 + 72) + 232) + 192);
  std::recursive_mutex::unlock((v5 + 480));
  if (v7)
  {
    v8 = (*(**(a1 + 112) + 16))(*(a1 + 112), a2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a1 + 72);
    if (*(a1 + 88) != 1)
    {
      sub_1AE670DDC(v9, v8);
      goto LABEL_13;
    }

    v10 = *(v9 + 464);
    if (*(*(v10 + 88) + 192) == 1)
    {
      std::recursive_mutex::lock(*(v9 + 464));
      v11 = *(v10 + 128);
      memset(__p, 0, sizeof(__p));
      v12 = *(v11 + 616);
      v13 = *(v11 + 624);
      *buf = __p;
      LOBYTE(v16) = 0;
      if (v13 != v12)
      {
        if (((v13 - v12) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AE5CBB70();
      }

      v6 = v10;
      goto LABEL_3;
    }
  }

LABEL_13:
  std::recursive_mutex::unlock((v4 + 480));
}

void sub_1AE789F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1AE658924(&__p);
  std::recursive_mutex::unlock(v18);
  std::recursive_mutex::unlock((v19 + 480));
  _Unwind_Resume(a1);
}

void sub_1AE789FA8(uint64_t a1, __int128 *a2, void **a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 72);
  std::recursive_mutex::lock((v6 + 480));
  v7 = *(a1 + 72);
  std::recursive_mutex::lock((v7 + 480));
  if (*(a1 + 40) == 3)
  {
    std::recursive_mutex::unlock((v7 + 480));
    goto LABEL_77;
  }

  v8 = *(*(*(a1 + 72) + 232) + 192);
  std::recursive_mutex::unlock((v7 + 480));
  if ((v8 & 1) == 0)
  {
    goto LABEL_77;
  }

  v9 = *a3;
  v10 = *(a1 + 8);
  if (*(a1 + 88))
  {
    v11 = 393216;
  }

  else
  {
    v11 = 0;
  }

  v56 = &unk_1F2433110;
  v57 = a1;
  *&v58 = &v56;
  sub_1AE6542DC(v9, v11 | v10, &v56);
  if (v58 == &v56)
  {
    (*(*v58 + 32))(v58);
  }

  else if (v58)
  {
    (*(*v58 + 40))(v58);
  }

  sub_1AE786DE4(&v56, v9, *(a1 + 72), v11 | v10, *(a1 + 8));
  if (*(a1 + 88) == 1)
  {
    v12.n128_f64[0] = sub_1AE787978(&v47, v9, *(a1 + 72), v11 | v10, *(a1 + 8));
    v13 = v47;
    v14 = v48;
  }

  else
  {
    v13 = v56;
    v14 = (v57 - v56) >> 2;
    v47 = v56;
    v48 = v14;
    v49 = v58;
    v50 = v59;
    v12 = v60;
    v51 = v60;
  }

  cf = 0;
  v15 = (*(**(a1 + 112) + 40))(*(a1 + 112), a2, &cf, v13, v14, 2, v12);
  if (v15 < 0x1F4)
  {
    goto LABEL_55;
  }

  v16 = *(a1 + 72);
  if (*(a1 + 88) == 1)
  {
    v17 = *(v16 + 464);
    v18 = cf;
    v19 = *(a2 + 23);
    if (!cf)
    {
      if (v19 < 0)
      {
        sub_1AE5DBF1C(v52, *a2, *(a2 + 1));
      }

      else
      {
        *v52 = *a2;
        v53 = *(a2 + 2);
      }

      goto LABEL_43;
    }

    if (v19 < 0)
    {
      sub_1AE5DBF1C(&__dst, *a2, *(a2 + 1));
      v20 = cf;
      if ((SHIBYTE(v45) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      __dst = *a2;
      v45 = *(a2 + 2);
      v20 = cf;
      if ((SHIBYTE(v45) & 0x80000000) == 0)
      {
LABEL_19:
        *__p = __dst;
        v55 = v45;
LABEL_30:
        if (v20 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v20)))
        {
          sub_1AE621740(v52, v20);
          if (SHIBYTE(v55) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *v52 = *__p;
          v53 = v55;
        }

LABEL_43:
        v15 = sub_1AE7096D4(v17);
        if (SHIBYTE(v53) < 0)
        {
          operator delete(v52[0]);
        }

        if (v18 && SHIBYTE(v45) < 0)
        {
          v26 = __dst;
LABEL_54:
          operator delete(v26);
          goto LABEL_55;
        }

        goto LABEL_55;
      }
    }

    sub_1AE5DBF1C(__p, __dst, *(&__dst + 1));
    goto LABEL_30;
  }

  v21 = cf;
  v22 = *(a2 + 23);
  if (!cf)
  {
    if (v22 < 0)
    {
      sub_1AE5DBF1C(v52, *a2, *(a2 + 1));
    }

    else
    {
      *v52 = *a2;
      v53 = *(a2 + 2);
    }

    goto LABEL_49;
  }

  if (v22 < 0)
  {
    sub_1AE5DBF1C(v42, *a2, *(a2 + 1));
    v23 = cf;
    if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_36:
    sub_1AE5DBF1C(__p, v42[0], v42[1]);
    goto LABEL_37;
  }

  *v42 = *a2;
  v43 = *(a2 + 2);
  v23 = cf;
  if (SHIBYTE(v43) < 0)
  {
    goto LABEL_36;
  }

LABEL_23:
  *__p = *v42;
  v55 = v43;
LABEL_37:
  if (v23 && (v25 = CFStringGetTypeID(), v25 == CFGetTypeID(v23)))
  {
    sub_1AE621740(v52, v23);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v52 = *__p;
    v53 = v55;
  }

LABEL_49:
  v15 = sub_1AE787818(v16, v52);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
  }

  if (v21 && SHIBYTE(v43) < 0)
  {
    v26 = v42[0];
    goto LABEL_54;
  }

LABEL_55:
  if (v15)
  {
    v27 = *(a1 + 72);
    if (*(a1 + 88) == 1)
    {
      v28 = v27[58];
      v29 = *(a1 + 144);
      v30 = *(&v49 + 1);
      v31 = v49;
      std::recursive_mutex::lock(v28);
      if (v30)
      {
        v32 = v31 + 4 * v30;
        v33 = v32 + 4;
        v34 = -4 * v30;
        while (v34)
        {
          v35 = *(v33 - 8);
          v33 -= 4;
          v34 += 4;
          if (v35 == 1)
          {
            v36 = (v32 - v33) >> 2;
            v30 = v36 + 1;
            v31 = v32 + 4 * ~v36;
            break;
          }
        }
      }

      else
      {
        v31 = 0;
      }

      if (v29 != 2 && (*(*(v28 + 88) + 192) & 1) != 0)
      {
        v38 = *(v28 + 144);
        if (v38)
        {
          sub_1AE77F8C4(v38, v15, v31, v30);
        }

        v39 = *(v28 + 128);
        __p[1] = 0;
        v55 = 0;
        __p[0] = 0;
        v40 = *(v39 + 616);
        v41 = *(v39 + 624);
        v52[0] = __p;
        LOBYTE(v52[1]) = 0;
        if (v41 != v40)
        {
          if (((v41 - v40) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1AE5CBB70();
        }
      }

      std::recursive_mutex::unlock(v28);
      v37 = cf;
      if (!cf)
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }

    sub_1AE670C10(v27, *(a1 + 144), v15, v49, *(&v49 + 1));
  }

  v37 = cf;
  if (cf)
  {
LABEL_74:
    CFRelease(v37);
  }

LABEL_75:
  if (v56)
  {
    operator delete(v56);
  }

LABEL_77:
  std::recursive_mutex::unlock((v6 + 480));
}

void sub_1AE78A6A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  sub_1AE63109C(&a22);
  v41 = *(v39 - 160);
  if (v41)
  {
    operator delete(v41);
  }

  std::recursive_mutex::unlock((v38 + 480));
  _Unwind_Resume(a1);
}

uint64_t sub_1AE78A7C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v127TokenIDLanguageModelSession14unAdaptToTokenERKNS0_14SanitizedTokenERKNS0_17LinguisticContextEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v127TokenIDLanguageModelSession14unAdaptToTokenERKNS0_14SanitizedTokenERKNS0_17LinguisticContextEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v127TokenIDLanguageModelSession14unAdaptToTokenERKNS0_14SanitizedTokenERKNS0_17LinguisticContextEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v127TokenIDLanguageModelSession14unAdaptToTokenERKNS0_14SanitizedTokenERKNS0_17LinguisticContextEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE78A87C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2433110;
  a2[1] = v2;
  return result;
}

void sub_1AE78A910(uint64_t a1, uint64_t a2, void **a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 72);
  std::recursive_mutex::lock((v6 + 480));
  v7 = *(a1 + 72);
  std::recursive_mutex::lock((v7 + 480));
  if (*(a1 + 40) == 3)
  {
    std::recursive_mutex::unlock((v7 + 480));
  }

  else
  {
    v8 = *(*(*(a1 + 72) + 232) + 192);
    std::recursive_mutex::unlock((v7 + 480));
    if (v8)
    {
      v9 = *a3;
      v10 = *(a1 + 8);
      if (*(a1 + 88))
      {
        v11 = 393216;
      }

      else
      {
        v11 = 0;
      }

      __p = &unk_1F2433090;
      v31 = a1;
      *&v32 = &__p;
      sub_1AE6542DC(v9, v11 | v10, &__p);
      if (v32 == &__p)
      {
        (*(*v32 + 32))(v32);
      }

      else if (v32)
      {
        (*(*v32 + 40))();
      }

      sub_1AE786DE4(&__p, v9, *(a1 + 72), v11 | v10, *(a1 + 8));
      if (*(a1 + 88) == 1)
      {
        v12.n128_f64[0] = sub_1AE787978(&v25, v9, *(a1 + 72), v11 | v10, *(a1 + 8));
        v13 = v25;
        v14 = v26;
      }

      else
      {
        v13 = __p;
        v14 = (v31 - __p) >> 2;
        v25 = __p;
        v26 = v14;
        v27 = v32;
        v28 = v33;
        v12 = v34;
        v29 = v34;
      }

      v24 = 0;
      v15 = (*(**(a1 + 112) + 40))(*(a1 + 112), a2, &v24, v13, v14, 2, v12);
      v16 = v15;
      if ((v15 - 500) <= 0xFFFFFE0C)
      {
        v16 = sub_1AE77D030((a1 + 120), a2, v24, v15 != 0);
      }

      v17 = *(a1 + 72);
      if (*(a1 + 88) == 1)
      {
        sub_1AE70A2E8(v17[58], *(a1 + 144), 0, v16, v27, *(&v27 + 1));
      }

      else
      {
        sub_1AE6709E4(v17, *(a1 + 144), 0, v16, v27, *(&v27 + 1));
      }

      v18 = *(a1 + 72);
      v19 = *(a2 + 23);
      if (v19 >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      if (v20)
      {
        if (v19 >= 0)
        {
          v21 = *(a2 + 23);
        }

        else
        {
          v21 = *(a2 + 8);
        }

        v20 = CFStringCreateWithBytes(0, v20, v21, 0x8000100u, 0);
        cf = v20;
        if (!v20)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x1B2705EB0](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      else
      {
        cf = 0;
      }

      sub_1AE6701FC(v18, v20);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  std::recursive_mutex::unlock((v6 + 480));
}

void sub_1AE78AC3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  sub_1AE631068(&a9);
  sub_1AE63109C(&a10);
  if (__p)
  {
    operator delete(__p);
  }

  std::recursive_mutex::unlock((v19 + 480));
  _Unwind_Resume(a1);
}

uint64_t sub_1AE78ACDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v127TokenIDLanguageModelSession12adaptToTokenERKNS0_14SanitizedTokenERKNS0_17LinguisticContextEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v127TokenIDLanguageModelSession12adaptToTokenERKNS0_14SanitizedTokenERKNS0_17LinguisticContextEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v127TokenIDLanguageModelSession12adaptToTokenERKNS0_14SanitizedTokenERKNS0_17LinguisticContextEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v127TokenIDLanguageModelSession12adaptToTokenERKNS0_14SanitizedTokenERKNS0_17LinguisticContextEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE78AD90(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2433090;
  a2[1] = v2;
  return result;
}

void sub_1AE78AE24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 72);
  std::recursive_mutex::lock((v8 + 480));
  v9 = *(a1 + 72);
  std::recursive_mutex::lock((v9 + 480));
  if (*(a1 + 40) == 3)
  {
    std::recursive_mutex::unlock((v9 + 480));
    goto LABEL_47;
  }

  v10 = *(*(*(a1 + 72) + 232) + 192);
  std::recursive_mutex::unlock((v9 + 480));
  if (v10)
  {
    if (*(a1 + 144) != 1)
    {
      if (qword_1ED9ACA10 != -1)
      {
        dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
      }

      v11 = qword_1ED9AC9E0;
      if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 144);
        *__p = 136315394;
        *&__p[4] = "adaptToText";
        *&__p[12] = 1024;
        *&__p[14] = v29;
        _os_log_error_impl(&dword_1AE5C8000, v11, OS_LOG_TYPE_ERROR, "%s: Unexpected adaptation type: %d (this function is only expected to be used for offline adaptation)", __p, 0x12u);
      }
    }

    if (sub_1AE78B1E8(*(a1 + 72), a2))
    {
      sub_1AE6F3B10((a1 + 136), a2, (a1 + 152));
      (*(**(a1 + 112) + 24))(*(a1 + 112), a1 + 152);
      v12 = *(a1 + 176);
      v13 = *(a1 + 184);
      v14 = v13 - v12;
      v15 = *(a1 + 72);
      if (*(a1 + 88) != 1)
      {
        if (!sub_1AE6712C0(v15, *(a1 + 176), v13 - v12))
        {
          goto LABEL_47;
        }

        goto LABEL_33;
      }

      v16 = v15[58];
      std::recursive_mutex::lock(v16);
      sub_1AE70EE04(__p, *(v16 + 104), *(v16 + 112));
      if (*(v16 + 144) && *__p != *&__p[8])
      {
        v17 = *__p;
        while (1)
        {
          if (v13 == v12)
          {
            v18 = 0;
          }

          else
          {
            v19 = 0;
            v20 = 0;
            v21 = *v17;
            v22 = v12;
            do
            {
              v23 = *v22;
              if (!*v22 || *(v21 + 28) <= v23 && v23 <= *(v21 + 32))
              {
                ++v19;
              }

              if (v23 - 10 < 0x35)
              {
                ++v20;
              }

              ++v22;
            }

            while (v22 != v13);
            v18 = ((1.0 / v14) * v19) < 0.15 && ((1.0 / v14) * v20) < 0.2;
            if (v18)
            {
              goto LABEL_30;
            }
          }

          if (++v17 == *&__p[8])
          {
            goto LABEL_30;
          }
        }
      }

      v18 = 0;
LABEL_30:
      if (*__p)
      {
        operator delete(*__p);
      }

      std::recursive_mutex::unlock(v16);
      if (v18)
      {
LABEL_33:
        sub_1AE77E1FC(a1 + 120, (a1 + 152));
        if (a4)
        {
          Current = sub_1AE6962D4(a3);
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
        }

        *__p = Current;
        if (v13 != v12)
        {
          v25 = 0;
          if (a4)
          {
            v26 = __p;
          }

          else
          {
            v26 = 0;
          }

          if (v14 <= 1)
          {
            v14 = 1;
          }

          do
          {
            v27 = v12[v25];
            v28 = *(a1 + 72);
            if (*(a1 + 88) == 1)
            {
              sub_1AE70A2E8(v28[58], *(a1 + 144), v26, v27, v12, v25);
            }

            else
            {
              sub_1AE6709E4(v28, *(a1 + 144), v26, v27, v12, v25);
            }

            ++v25;
          }

          while (v14 != v25);
        }
      }
    }
  }

LABEL_47:
  std::recursive_mutex::unlock((v8 + 480));
}

BOOL sub_1AE78B1E8(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((a1 + 480));
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = sub_1AE61D700(v5, v6);
  Length = CFStringGetLength(v7);
  v9 = sub_1AE6710A0(a1, v7, 0, Length);
  if (v7)
  {
    CFRelease(v7);
  }

  std::recursive_mutex::unlock((a1 + 480));
  return v9;
}

void sub_1AE78B280(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE66A6D4(va);
  std::recursive_mutex::unlock((v2 + 480));
  _Unwind_Resume(a1);
}

void sub_1AE78B2A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  v10 = *(a1 + 72);
  std::recursive_mutex::lock((v10 + 480));
  v11 = *(a1 + 72);
  std::recursive_mutex::lock((v11 + 480));
  if (*(a1 + 40) == 3)
  {
    std::recursive_mutex::unlock((v11 + 480));
    goto LABEL_75;
  }

  v12 = *(*(*(a1 + 72) + 232) + 192);
  std::recursive_mutex::unlock((v11 + 480));
  if ((v12 & 1) != 0 && (*(a1 + 144) != 1 || sub_1AE78B1E8(*(a1 + 72), a2)))
  {
    v46 = a4;
    v13 = *(a1 + 328);
    if (v13 < 1)
    {
LABEL_24:
      ++*(a1 + 344);
      sub_1AE6F3B10((a1 + 136), a2, (a1 + 152));
      (*(**(a1 + 112) + 24))(*(a1 + 112), a1 + 152);
      sub_1AE77E1FC(a1 + 120, (a1 + 152));
      v27 = *(a1 + 176);
      v26 = *(a1 + 184);
      if (v26 != v27)
      {
        if (((v26 - v27) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AE5CBB70();
      }

      v25 = *(a1 + 296);
      v28 = *(a1 + 304);
      if (v25 != v28)
      {
        while (*(v25 + 8) != *v25 || memcmp(*v25, 0, 0))
        {
          v25 += 24;
          if (v25 == v28)
          {
            goto LABEL_33;
          }
        }
      }

      if (v25 == v28)
      {
LABEL_33:
        v29 = *(a1 + 328);
        v30 = *(a1 + 224);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 232) - v30) >> 3) <= v29)
        {
          if (v29 < 2)
          {
            v31 = 0;
          }

          else
          {
            v31 = 0;
            v32 = *(a1 + 272);
            v33 = *v32;
            for (i = 1; i != v29; ++i)
            {
              v35 = v32[i];
              if (v33 > v35)
              {
                v31 = i;
              }

              if (v33 >= v35)
              {
                v33 = v32[i];
              }
            }
          }
        }

        else
        {
          *(a1 + 328) = v29 + 1;
          v31 = v29;
        }

        v36 = v30 + 24 * v31;
        if (v36 != a2)
        {
          v37 = *(a2 + 23);
          if (*(v36 + 23) < 0)
          {
            if (v37 >= 0)
            {
              v39 = a2;
            }

            else
            {
              v39 = *a2;
            }

            if (v37 >= 0)
            {
              v40 = *(a2 + 23);
            }

            else
            {
              v40 = *(a2 + 8);
            }

            sub_1AE621B84(v36, v39, v40);
          }

          else if ((*(a2 + 23) & 0x80) != 0)
          {
            sub_1AE621AB4(v36, *a2, *(a2 + 8));
          }

          else
          {
            v38 = *a2;
            *(v36 + 16) = *(a2 + 16);
            *v36 = v38;
          }
        }

        sub_1AE6A4FB0((*(a1 + 248) + 24 * v31), 0, 0, 0);
        v41 = *(a1 + 320) + 1;
        *(a1 + 320) = v41;
        *(*(a1 + 272) + 8 * v31) = v41;
        v25 = *(a1 + 248) + 24 * v31;
      }
    }

    else
    {
      v14 = 0;
      v15 = *(a1 + 224);
      v16 = *(a2 + 23);
      if (v16 >= 0)
      {
        v17 = *(a2 + 23);
      }

      else
      {
        v17 = *(a2 + 8);
      }

      if (v16 >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      while (1)
      {
        v19 = *(v15 + 23);
        v20 = v19;
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v15 + 8);
        }

        if (v19 == v17)
        {
          v21 = v20 >= 0 ? v15 : *v15;
          if (!memcmp(v21, v18, v17))
          {
            break;
          }
        }

        ++v14;
        v15 += 24;
        if (v13 == v14)
        {
          goto LABEL_24;
        }
      }

      ++*(a1 + 336);
      v22 = *(a1 + 272);
      v23 = *(a1 + 320);
      if (*(v22 + 8 * v14) != v23)
      {
        v24 = v23 + 1;
        *(a1 + 320) = v24;
        *(v22 + 8 * v14) = v24;
      }

      v25 = *(a1 + 248) + 24 * v14;
    }

    v42 = *(v25 + 8);
    if (v42 != *v25)
    {
      if (((v42 - *v25) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    if (a5)
    {
      sub_1AE6962D4(v46);
    }

    else
    {
      CFAbsoluteTimeGetCurrent();
    }

    if (!a3)
    {
      sub_1AE671D2C(*(a1 + 72), kLMAdaptationContextSelfSender, 0, 0);
      goto LABEL_75;
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        __assert_rtn("addPriorText", "TokenIDLanguageModelSession.cpp", 1185, "false");
      }

      goto LABEL_75;
    }

    v43 = *(a1 + 71);
    if (v43 < 0)
    {
      v44 = *(a1 + 48);
      if (!v44)
      {
        cf = 0;
LABEL_73:
        sub_1AE671D2C(*(a1 + 72), v44, 0, 0);
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_75;
      }

      v43 = *(a1 + 56);
    }

    else
    {
      v44 = (a1 + 48);
    }

    v44 = CFStringCreateWithBytes(0, v44, v43, 0x8000100u, 0);
    cf = v44;
    if (!v44)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_73;
  }

LABEL_75:

  std::recursive_mutex::unlock((v10 + 480));
}

void sub_1AE78B7A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE631068(va);
  if (v2)
  {
    operator delete(v2);
  }

  std::recursive_mutex::unlock((v3 + 480));
  _Unwind_Resume(a1);
}

void sub_1AE78B820()
{
  v3 = *MEMORY[0x1E69E9840];
  if (qword_1EB5E0A60 != -1)
  {
    dispatch_once(&qword_1EB5E0A60, &unk_1F24328F0);
  }

  v0 = qword_1EB5E0A68;
  if (os_log_type_enabled(qword_1EB5E0A68, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315138;
    v2 = "enumerateInlineCompletions";
    _os_log_error_impl(&dword_1AE5C8000, v0, OS_LOG_TYPE_ERROR, "%s: Inline completions are not supported for pure tokenID models", &v1, 0xCu);
  }
}

os_log_t sub_1AE78B8F0()
{
  result = os_log_create("com.apple.LanguageModeling", "InlineCompletionsNonStatic");
  qword_1EB5E0A68 = result;
  return result;
}

void sub_1AE78B92C(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 72);
  std::recursive_mutex::lock((v9 + 480));
  v48 = a2;
  v49 = *a2;
  sub_1AE694D90(&v64, *a3, a3[1]);
  if (v64 == v65)
  {
    goto LABEL_64;
  }

  if (v65 - v64 != 8)
  {
    goto LABEL_13;
  }

  v10 = *(*v64 + 32);
  if (*(*v64 + 24) == v10)
  {
    BYTE7(v67) = 0;
    buf[0] = 0;
  }

  else if (*(v10 - 9) < 0)
  {
    sub_1AE5DBF1C(buf, *(v10 - 32), *(v10 - 24));
  }

  else
  {
    v11 = *(v10 - 32);
    *&v67 = *(v10 - 16);
    *buf = v11;
  }

  if ((SBYTE7(v67) & 0x80u) == 0)
  {
    v12 = SBYTE7(v67);
  }

  else
  {
    v12 = *&buf[8];
  }

  if ((SBYTE7(v67) & 0x8000000000000000) == 0)
  {
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_64:
    sub_1AE78D358(a1, v48);
  }

  operator delete(*buf);
  if (!v12)
  {
    goto LABEL_64;
  }

LABEL_13:
  v13 = *(a1 + 8);
  *buf = &unk_1F2432F90;
  *&buf[8] = a1;
  *(&v67 + 1) = buf;
  v47 = v13;
  sub_1AE6542DC(v49, v13, buf);
  if (*(&v67 + 1) == buf)
  {
    (*(**(&v67 + 1) + 32))(*(&v67 + 1));
  }

  else if (*(&v67 + 1))
  {
    (*(**(&v67 + 1) + 40))();
  }

  v45 = v9;
  sub_1AE78E398(*v49, v49[1], *(a1 + 72));
  v63 = 0;
  *__src = 0u;
  v14 = v64;
  if (v64 != v65)
  {
    *v59 = 0u;
    v60 = 0u;
    v61 = 1065353216;
    v15 = *v64;
    v57 = (v49[1] - *v49) >> 5;
    v58 = v49;
    v16 = *v15;
    v17 = (v15[1] - *v15) >> 5;
    v18 = v17 - 1;
    if (v17 != 1)
    {
      do
      {
        sub_1AE5CA48C(v49, v16);
        v16 += 32;
        --v18;
      }

      while (v18);
    }

    *buf = &unk_1F2433010;
    *&buf[8] = a1;
    *(&v67 + 1) = buf;
    sub_1AE6542DC(v49, v47, buf);
    if (*(&v67 + 1) == buf)
    {
      (*(**(&v67 + 1) + 32))(*(&v67 + 1));
    }

    else if (*(&v67 + 1))
    {
      (*(**(&v67 + 1) + 40))();
    }

    sub_1AE786DE4(v53, v49, *(a1 + 72), v47, *(a1 + 8));
    v19 = *(a1 + 72);
    *buf = v53[0];
    *&buf[8] = (v53[1] - v53[0]) >> 2;
    v67 = v54;
    v68 = v55;
    v69 = v56;
    v20 = *(*v14 + 32);
    if (*(*v14 + 24) == v20)
    {
      BYTE7(v51) = 0;
      LOBYTE(__p[0]) = 0;
    }

    else if (*(v20 - 9) < 0)
    {
      sub_1AE5DBF1C(__p, *(v20 - 32), *(v20 - 24));
    }

    else
    {
      v21 = *(v20 - 32);
      *&v51 = *(v20 - 16);
      *__p = v21;
    }

    if ((SBYTE7(v51) & 0x80u) == 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if (v22)
    {
      if ((SBYTE7(v51) & 0x80u) == 0)
      {
        v23 = BYTE7(v51);
      }

      else
      {
        v23 = __p[1];
      }

      *__dst = CFStringCreateWithBytes(0, v22, v23, 0x8000100u, 0);
      if (!*__dst)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      *__dst = 0;
    }

    sub_1AE65739C(&v52, *(v19 + 8), *(v19 + 16));
  }

  sub_1AE78E5F8(0, 0, 0, 1);
  v24 = __src[0];
  v25 = __src[1];
  if (__src[0] != __src[1])
  {
    do
    {
      while (1)
      {
        v26 = *(v24 + 34) - 1;
        v27 = v26 > 4 ? 0 : dword_1AE7A83D0[v26];
        v28 = *(a1 + 72);
        v29 = v24[3];
        LODWORD(__p[0]) = v27;
        sub_1AE78FC8C(buf, v24, 1, (v24 + 1), v28, a1 + 16, v29, __p);
        v30 = *buf;
        if (*buf)
        {
          break;
        }

        v24 += 19;
        if (v24 == v25)
        {
          goto LABEL_54;
        }
      }

      *buf = 0;
      __p[0] = v30;
      v31 = *(a6 + 24);
      if (!v31)
      {
        sub_1AE60819C();
      }

      v32 = (*(*v31 + 48))(v31, __p);
      v33 = __p[0];
      __p[0] = 0;
      if (v33)
      {
        v34 = sub_1AE61F018(v33);
        MEMORY[0x1B2706400](v34, 0x1032C4057ACE4D0);
      }

      v24 += 19;
      if (v24 == v25)
      {
        v35 = 0;
      }

      else
      {
        v35 = v32;
      }
    }

    while ((v35 & 1) != 0);
LABEL_54:
    v24 = __src[0];
  }

  if (v24)
  {
    v36 = __src[1];
    v37 = v24;
    if (__src[1] != v24)
    {
      do
      {
        if (*(v36 - 17) < 0)
        {
          operator delete(*(v36 - 5));
        }

        v36 -= 19;
      }

      while (v36 != v24);
      v37 = __src[0];
    }

    __src[1] = v24;
    operator delete(v37);
  }

  v38 = v64;
  if (v64)
  {
    v39 = v65;
    v40 = v64;
    if (v65 != v64)
    {
      do
      {
        v42 = *--v39;
        v41 = v42;
        *v39 = 0;
        if (v42)
        {
          v43 = sub_1AE61E5C8(v41);
          MEMORY[0x1B2706400](v43, 0x1030C403C62F202);
        }
      }

      while (v39 != v38);
      v40 = v64;
    }

    v65 = v38;
    operator delete(v40);
  }

  std::recursive_mutex::unlock((v45 + 480));
}

void sub_1AE78D098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  __cxa_guard_abort(&qword_1ED9AC5C8);
  if (a57)
  {
    (*(*a57 + 8))(a57);
    v70 = a58;
    if (!a58)
    {
LABEL_8:
      sub_1AE78E52C(&a67);
      sub_1AE78E570(&a69);
      sub_1AE7900F8(&STACK[0x210]);
      sub_1AE62D1AC(&STACK[0x228]);
      std::recursive_mutex::unlock((a12 + 480));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v70 = a58;
    if (!a58)
    {
      goto LABEL_8;
    }
  }

  operator delete(v70);
  goto LABEL_8;
}

void sub_1AE78D358(uint64_t a1, uint64_t **a2)
{
  v24 = *MEMORY[0x1E69E9840];
  std::recursive_mutex::lock((*(a1 + 72) + 480));
  v4 = *a2;
  v5 = *(a1 + 8);
  v18 = &unk_1F2432B80;
  v19 = a1;
  *(&v20 + 1) = &v18;
  sub_1AE6542DC(v4, v5, &v18);
  if (*(&v20 + 1) == &v18)
  {
    (*(**(&v20 + 1) + 32))(*(&v20 + 1));
  }

  else if (*(&v20 + 1))
  {
    (*(**(&v20 + 1) + 40))(*(&v20 + 1));
  }

  sub_1AE786DE4(v13, v4, *(a1 + 72), v5, *(a1 + 8));
  v7 = v13[0];
  v6 = v13[1];
  v11 = v15;
  v12 = v14;
  v8 = v16;
  v9 = v17;
  sub_1AE78E398(*v4, v4[1], *(a1 + 72));
  v10 = *(a1 + 72);
  v18 = v7;
  v19 = (v6 - v7) >> 2;
  v21 = v11;
  v20 = v12;
  v22 = v8;
  v23 = v9;
  sub_1AE66DAD4(v10, &v18);
}

void sub_1AE78E148(_Unwind_Exception *a1)
{
  sub_1AE673B40(*(v3 + 80));
  v5 = *(v3 + 64);
  *(v3 + 64) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = v1[6];
  if (*(v3 + 24) == 1)
  {
    std::recursive_mutex::unlock(*(v3 + 16));
  }

  MEMORY[0x1B2706400](v3, 0x10F1C40E421CF21);
  sub_1AE622290((v1 + 24));
  sub_1AE62DB54(v1 + 28);
  v7 = v1[31];
  (*(*v2 + 8))(v2);
  if (v7)
  {
    operator delete(v7);
  }

  std::recursive_mutex::unlock((v6 + 480));
  _Unwind_Resume(a1);
}

uint64_t sub_1AE78E398(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 == a1)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    sub_1AE5CA7E0(__p, (a2 - 32));
    if (*(a2 - 8))
    {
      v5 = 0;
      v6 = 1;
      if (SHIBYTE(v12) < 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (SHIBYTE(v12) < 0)
      {
        sub_1AE5DBF1C(v9, __p[0], __p[1]);
      }

      else
      {
        *v9 = *__p;
        v10 = v12;
      }

      v7 = sub_1AE66D32C(a3, v9);
      v5 = v7;
      v6 = HIBYTE(v7);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(v9[0]);
        if ((SHIBYTE(v12) & 0x80000000) == 0)
        {
          return v5 | (v6 << 8);
        }

        goto LABEL_11;
      }

      if (SHIBYTE(v12) < 0)
      {
LABEL_11:
        operator delete(__p[0]);
      }
    }
  }

  return v5 | (v6 << 8);
}

void sub_1AE78E478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE78E4C4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 152;
      *(a1 + 16) = v2 - 152;
      if (*(v2 - 17) < 0)
      {
        operator delete(*(v2 - 40));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1AE78E52C(void *a1)
{
  while (1)
  {
    v2 = a1[1];
    if (*a1 >= ((v2[1] - *v2) >> 5))
    {
      break;
    }

    sub_1AE653BC8(v2);
  }

  return a1;
}

uint64_t sub_1AE78E570(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 175) < 0)
      {
        operator delete(v2[19]);
        if (*(v2 + 39) < 0)
        {
LABEL_10:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_10;
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_1AE78E5F8(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v229 = (a2 - 304);
    v232 = (a2 - 152);
    v227 = (a2 - 456);
    v224 = a2 - 144;
    v7 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v7;
          v8 = a2 - v7;
          v9 = 0x86BCA1AF286BCA1BLL * ((a2 - v7) >> 3);
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

                sub_1AE79016C(a1, (a1 + 152), v232);
                return;
              case 4:
                sub_1AE79016C(a1, (a1 + 152), (a1 + 304));
                if (*v224 > *(a1 + 312))
                {
                  v103 = (a1 + 312);
                  v104 = *(a1 + 304);
                  *(a1 + 304) = *(a2 - 152);
                  *(a2 - 152) = v104;
                  v262 = *(a1 + 328);
                  v273 = *(a1 + 344);
                  v251 = *(a1 + 312);
                  v317 = *(a1 + 408);
                  v295 = *(a1 + 376);
                  v306 = *(a1 + 392);
                  v284 = *(a1 + 360);
                  v106 = *(v224 + 64);
                  v105 = *(v224 + 80);
                  v107 = *(v224 + 48);
                  *(a1 + 408) = *(v224 + 96);
                  *(a1 + 376) = v106;
                  *(a1 + 392) = v105;
                  *(a1 + 360) = v107;
                  v108 = *v224;
                  v109 = *(v224 + 32);
                  *(a1 + 328) = *(v224 + 16);
                  *(a1 + 344) = v109;
                  *(a1 + 312) = v108;
                  *(v224 + 16) = v262;
                  *(v224 + 32) = v273;
                  *v224 = v251;
                  *(v224 + 96) = v317;
                  *(v224 + 64) = v295;
                  *(v224 + 80) = v306;
                  *(v224 + 48) = v284;
                  v110 = *(a1 + 416);
                  v111 = *(a1 + 432);
                  v112 = *(a2 - 24);
                  *(a1 + 416) = *(a2 - 40);
                  *(a1 + 432) = v112;
                  *(a2 - 24) = v111;
                  *(a2 - 40) = v110;
                  v113 = (a1 + 160);
                  *&v110 = *(a1 + 160);
                  LODWORD(v112) = *(a1 + 440);
                  *(a1 + 440) = *(a2 - 16);
                  *(a2 - 16) = v112;
                  v114 = *(a1 + 448);
                  *(a1 + 448) = *(a2 - 8);
                  *(a2 - 8) = v114;
                  if (*(a1 + 312) > *&v110)
                  {
                    v115 = *(a1 + 152);
                    v116 = *(a1 + 304);
                    *(a1 + 152) = v116;
                    *(a1 + 304) = v115;
                    v263 = *(a1 + 176);
                    v274 = *(a1 + 192);
                    v252 = *v113;
                    v318 = *(a1 + 256);
                    v296 = *(a1 + 224);
                    v307 = *(a1 + 240);
                    v285 = *(a1 + 208);
                    v117 = *(a1 + 392);
                    *(a1 + 224) = *(a1 + 376);
                    *(a1 + 240) = v117;
                    *(a1 + 256) = *(a1 + 408);
                    v118 = *(a1 + 328);
                    *v113 = *v103;
                    *(a1 + 176) = v118;
                    v119 = *(a1 + 360);
                    *(a1 + 192) = *(a1 + 344);
                    *(a1 + 208) = v119;
                    *(a1 + 328) = v263;
                    *(a1 + 344) = v274;
                    *v103 = v252;
                    *(a1 + 408) = v318;
                    *(a1 + 376) = v296;
                    *(a1 + 392) = v307;
                    *(a1 + 360) = v285;
                    v120 = (a1 + 264);
                    v121 = *(a1 + 280);
                    v122 = *(a1 + 264);
                    *(a1 + 264) = *(a1 + 416);
                    *(a1 + 280) = *(a1 + 432);
                    *(a1 + 416) = v122;
                    *(a1 + 432) = v121;
                    v123 = (a1 + 8);
                    *&v122 = *(a1 + 8);
                    v124 = *(a1 + 288);
                    v125 = *(a1 + 440);
                    *(a1 + 288) = v125;
                    *(a1 + 440) = v124;
                    v126 = *(a1 + 296);
                    v127 = *(a1 + 448);
                    *(a1 + 296) = v127;
                    *&v118 = *(a1 + 160);
                    *(a1 + 448) = v126;
                    if (*&v118 > *&v122)
                    {
                      v128 = *a1;
                      *a1 = v116;
                      *(a1 + 152) = v128;
                      v264 = *(a1 + 24);
                      v275 = *(a1 + 40);
                      v253 = *v123;
                      v319 = *(a1 + 104);
                      v297 = *(a1 + 72);
                      v308 = *(a1 + 88);
                      v286 = *(a1 + 56);
                      v129 = *(a1 + 240);
                      *(a1 + 72) = *(a1 + 224);
                      *(a1 + 88) = v129;
                      *(a1 + 104) = *(a1 + 256);
                      v130 = *(a1 + 176);
                      *v123 = *v113;
                      *(a1 + 24) = v130;
                      v131 = *(a1 + 208);
                      *(a1 + 40) = *(a1 + 192);
                      *(a1 + 56) = v131;
                      *(a1 + 176) = v264;
                      *(a1 + 192) = v275;
                      *v113 = v253;
                      *(a1 + 256) = v319;
                      *(a1 + 224) = v297;
                      *(a1 + 240) = v308;
                      *(a1 + 208) = v286;
                      v132 = *(a1 + 128);
                      v133 = *(a1 + 112);
                      *(a1 + 112) = *v120;
                      *(a1 + 128) = *(a1 + 280);
                      *v120 = v133;
                      *(a1 + 280) = v132;
                      LODWORD(v132) = *(a1 + 136);
                      *(a1 + 136) = v125;
                      *(a1 + 288) = v132;
                      v134 = *(a1 + 144);
                      *(a1 + 144) = v127;
                      *(a1 + 296) = v134;
                    }
                  }
                }

                return;
              case 5:

                sub_1AE79055C(a1, a1 + 152, a1 + 304, (a1 + 456), v232);
                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              v92 = (a1 + 8);
              if (*v224 > *(a1 + 8))
              {
                v93 = *a1;
                *a1 = *(a2 - 152);
                *(a2 - 152) = v93;
                v261 = *(a1 + 24);
                v272 = *(a1 + 40);
                v250 = *v92;
                v316 = *(a1 + 104);
                v294 = *(a1 + 72);
                v305 = *(a1 + 88);
                v283 = *(a1 + 56);
                v95 = *(v224 + 64);
                v94 = *(v224 + 80);
                v96 = *(v224 + 48);
                *(a1 + 104) = *(v224 + 96);
                *(a1 + 72) = v95;
                *(a1 + 88) = v94;
                *(a1 + 56) = v96;
                v97 = *v224;
                v98 = *(v224 + 32);
                *(a1 + 24) = *(v224 + 16);
                *(a1 + 40) = v98;
                *v92 = v97;
                *(v224 + 16) = v261;
                *(v224 + 32) = v272;
                *v224 = v250;
                *(v224 + 96) = v316;
                *(v224 + 64) = v294;
                *(v224 + 80) = v305;
                *(v224 + 48) = v283;
                v99 = *(a1 + 112);
                v100 = *(a1 + 128);
                v101 = *(a2 - 24);
                *(a1 + 112) = *(a2 - 40);
                *(a1 + 128) = v101;
                *(a2 - 24) = v100;
                *(a2 - 40) = v99;
                LODWORD(v100) = *(a1 + 136);
                *(a1 + 136) = *(a2 - 16);
                *(a2 - 16) = v100;
                v102 = *(a1 + 144);
                *(a1 + 144) = *(a2 - 8);
                *(a2 - 8) = v102;
              }

              return;
            }
          }

          if (v8 <= 3647)
          {
            v135 = (a1 + 152);
            v137 = a1 == a2 || v135 == a2;
            if (a4)
            {
              if (!v137)
              {
                v138 = 0;
                v139 = a1;
                do
                {
                  v140 = v135;
                  v141 = *(v139 + 160);
                  if (v141 > *(v139 + 8))
                  {
                    v237 = *v135;
                    v254 = *(v139 + 168);
                    v265 = *(v139 + 184);
                    v298 = *(v139 + 232);
                    v309 = *(v139 + 248);
                    v276 = *(v139 + 200);
                    v287 = *(v139 + 216);
                    v142 = *(v139 + 264);
                    *v326 = *(v139 + 272);
                    *&v326[7] = *(v139 + 279);
                    v143 = *(v139 + 287);
                    *(v139 + 264) = 0;
                    *(v139 + 272) = 0;
                    *(v139 + 280) = 0;
                    v144 = *(v139 + 288);
                    v145 = v138;
                    v242 = *(v139 + 296);
                    while (1)
                    {
                      v146 = a1 + v145;
                      *(v146 + 152) = *(a1 + v145);
                      v147 = *(a1 + v145 + 56);
                      v148 = *(a1 + v145 + 88);
                      *(v146 + 224) = *(a1 + v145 + 72);
                      *(v146 + 240) = v148;
                      *(v146 + 256) = *(a1 + v145 + 104);
                      v149 = *(a1 + v145 + 24);
                      *(v146 + 160) = *(a1 + v145 + 8);
                      *(v146 + 176) = v149;
                      *(v146 + 192) = *(a1 + v145 + 40);
                      *(v146 + 208) = v147;
                      v150 = (a1 + v145 + 264);
                      if (*(a1 + v145 + 287) < 0)
                      {
                        operator delete(*v150);
                      }

                      *v150 = *(v146 + 112);
                      *(a1 + v145 + 280) = *(v146 + 128);
                      *(v146 + 135) = 0;
                      *(v146 + 112) = 0;
                      *(v146 + 288) = *(v146 + 136);
                      *(v146 + 296) = *(v146 + 144);
                      if (!v145)
                      {
                        break;
                      }

                      v151 = a1 + v145;
                      v152 = *(a1 + v145 - 144);
                      v145 -= 152;
                      if (v141 <= v152)
                      {
                        v153 = a1 + v145 + 152;
                        v154 = (v151 + 8);
                        v155 = (v151 + 112);
                        goto LABEL_99;
                      }
                    }

                    v154 = (a1 + 8);
                    v155 = (a1 + 112);
                    v153 = a1;
LABEL_99:
                    *v153 = v237;
                    *v154 = v141;
                    *(v153 + 32) = v265;
                    *(v153 + 48) = v276;
                    *(v153 + 64) = v287;
                    *(v153 + 80) = v298;
                    *(v153 + 96) = v309;
                    *(v153 + 16) = v254;
                    if (*(v153 + 135) < 0)
                    {
                      operator delete(*v155);
                    }

                    *v155 = v142;
                    *(v153 + 120) = *v326;
                    *(v153 + 127) = *&v326[7];
                    *(v153 + 135) = v143;
                    *(v153 + 136) = v144;
                    *(v153 + 144) = v242;
                  }

                  v135 = v140 + 38;
                  v138 += 152;
                  v139 = v140;
                }

                while (v140 + 38 != a2);
              }
            }

            else if (!v137)
            {
              v209 = a1 - 144;
              do
              {
                v211 = v135;
                v212 = *(a1 + 160);
                if (v212 > *(a1 + 8))
                {
                  v213 = *v135;
                  v256 = *(a1 + 168);
                  v267 = *(a1 + 184);
                  v300 = *(a1 + 232);
                  v311 = *(a1 + 248);
                  v278 = *(a1 + 200);
                  v289 = *(a1 + 216);
                  v214 = *(a1 + 264);
                  *v329 = *(a1 + 272);
                  *&v329[7] = *(a1 + 279);
                  v215 = *(a1 + 287);
                  *(a1 + 264) = 0;
                  *(a1 + 272) = 0;
                  *(a1 + 280) = 0;
                  v216 = *(a1 + 288);
                  v217 = v209;
                  v218 = *(a1 + 296);
                  do
                  {
                    v219 = v217;
                    *(v217 + 296) = *(v217 + 144);
                    v220 = *(v217 + 200);
                    v221 = *(v217 + 232);
                    *(v217 + 368) = *(v217 + 216);
                    *(v217 + 384) = v221;
                    *(v217 + 400) = *(v217 + 248);
                    v222 = *(v217 + 168);
                    *(v217 + 304) = *(v217 + 152);
                    *(v217 + 320) = v222;
                    *(v217 + 336) = *(v217 + 184);
                    *(v217 + 352) = v220;
                    v223 = v217 + 408;
                    if (*(v219 + 431) < 0)
                    {
                      operator delete(*v223);
                    }

                    *v223 = *(v219 + 256);
                    *(v223 + 16) = *(v219 + 272);
                    *(v219 + 279) = 0;
                    *(v219 + 256) = 0;
                    *(v219 + 432) = *(v219 + 280);
                    v217 = v219 - 152;
                    v173 = v212 <= *v219;
                    *(v219 + 440) = *(v219 + 288);
                  }

                  while (!v173);
                  v210 = v219 + 144;
                  *(v217 + 296) = v213;
                  *(v217 + 304) = v212;
                  *(v210 + 16) = v256;
                  *(v210 + 32) = v267;
                  *(v210 + 80) = v300;
                  *(v210 + 96) = v311;
                  *(v210 + 48) = v278;
                  *(v210 + 64) = v289;
                  if (*(v217 + 431) < 0)
                  {
                    operator delete(*(v217 + 408));
                  }

                  *(v217 + 408) = v214;
                  *(v210 + 127) = *&v329[7];
                  *(v210 + 120) = *v329;
                  *(v217 + 431) = v215;
                  *(v217 + 432) = v216;
                  *(v217 + 440) = v218;
                }

                v135 = v211 + 38;
                v209 += 152;
                a1 = v211;
              }

              while (v211 + 38 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v156 = v10 >> 1;
              v157 = v10 >> 1;
              do
              {
                v158 = v157;
                if (v156 >= v157)
                {
                  v159 = (2 * v157) | 1;
                  v160 = a1 + 152 * v159;
                  if (2 * v158 + 2 < v9 && *(v160 + 8) > *(v160 + 160))
                  {
                    v160 += 152;
                    v159 = 2 * v158 + 2;
                  }

                  v161 = a1 + 152 * v158;
                  v162 = *(v161 + 8);
                  if (*(v160 + 8) <= v162)
                  {
                    v228 = *v161;
                    v255 = *(v161 + 16);
                    v266 = *(v161 + 32);
                    v299 = *(v161 + 80);
                    v310 = *(v161 + 96);
                    v277 = *(v161 + 48);
                    v288 = *(v161 + 64);
                    v243 = *(v161 + 112);
                    *&v327[7] = *(v161 + 127);
                    *v327 = *(v161 + 120);
                    v238 = *(v161 + 135);
                    *(v161 + 112) = 0;
                    *(v161 + 120) = 0;
                    *(v161 + 128) = 0;
                    v233 = *(v161 + 136);
                    v230 = *(v161 + 144);
                    do
                    {
                      v163 = v161;
                      v161 = v160;
                      *v163 = *v160;
                      v164 = *(v160 + 8);
                      v165 = *(v160 + 24);
                      *(v163 + 40) = *(v160 + 40);
                      *(v163 + 24) = v165;
                      *(v163 + 8) = v164;
                      v166 = *(v160 + 56);
                      v167 = *(v160 + 72);
                      v168 = *(v160 + 88);
                      *(v163 + 104) = *(v160 + 104);
                      *(v163 + 88) = v168;
                      *(v163 + 72) = v167;
                      *(v163 + 56) = v166;
                      if (*(v163 + 135) < 0)
                      {
                        operator delete(*(v163 + 112));
                      }

                      v169 = *(v161 + 112);
                      *(v163 + 128) = *(v161 + 128);
                      *(v163 + 112) = v169;
                      *(v161 + 135) = 0;
                      *(v161 + 112) = 0;
                      *(v163 + 136) = *(v161 + 136);
                      *(v163 + 144) = *(v161 + 144);
                      if (v156 < v159)
                      {
                        break;
                      }

                      v170 = 2 * v159;
                      v159 = (2 * v159) | 1;
                      v160 = a1 + 152 * v159;
                      v171 = v170 + 2;
                      if (v171 < v9 && *(v160 + 8) > *(v160 + 160))
                      {
                        v160 += 152;
                        v159 = v171;
                      }
                    }

                    while (*(v160 + 8) <= v162);
                    *v161 = v228;
                    *(v161 + 8) = v162;
                    *(v161 + 48) = v277;
                    *(v161 + 64) = v288;
                    *(v161 + 80) = v299;
                    *(v161 + 96) = v310;
                    *(v161 + 16) = v255;
                    *(v161 + 32) = v266;
                    if (*(v161 + 135) < 0)
                    {
                      operator delete(*(v161 + 112));
                    }

                    *(v161 + 112) = v243;
                    *(v161 + 120) = *v327;
                    *(v161 + 127) = *&v327[7];
                    *(v161 + 135) = v238;
                    *(v161 + 136) = v233;
                    *(v161 + 144) = v230;
                  }
                }

                v157 = v158 - 1;
              }

              while (v158);
              v172 = 0x86BCA1AF286BCA1BLL * (v8 >> 3);
              do
              {
                v174 = 0;
                v175 = *a1;
                v279 = *(a1 + 40);
                v268 = *(a1 + 24);
                v257 = *(a1 + 8);
                v244 = *(a1 + 112);
                v320 = *(a1 + 104);
                v312 = *(a1 + 88);
                v301 = *(a1 + 72);
                v290 = *(a1 + 56);
                *&v246[7] = *(a1 + 127);
                *v246 = *(a1 + 120);
                v239 = *(a1 + 135);
                *(a1 + 112) = 0;
                *(a1 + 120) = 0;
                *(a1 + 128) = 0;
                v234 = *(a1 + 136);
                v176 = a1;
                v231 = *(a1 + 144);
                do
                {
                  v178 = v176 + 152 * v174;
                  v179 = v178 + 152;
                  if (2 * v174 + 2 >= v172)
                  {
                    v174 = (2 * v174) | 1;
                  }

                  else
                  {
                    v180 = *(v178 + 160);
                    v181 = *(v178 + 312);
                    v182 = v178 + 304;
                    if (v180 <= v181)
                    {
                      v174 = (2 * v174) | 1;
                    }

                    else
                    {
                      v179 = v182;
                      v174 = 2 * v174 + 2;
                    }
                  }

                  *v176 = *v179;
                  v183 = *(v179 + 8);
                  v184 = *(v179 + 24);
                  *(v176 + 40) = *(v179 + 40);
                  *(v176 + 24) = v184;
                  *(v176 + 8) = v183;
                  v185 = *(v179 + 56);
                  v186 = *(v179 + 72);
                  v187 = *(v179 + 88);
                  *(v176 + 104) = *(v179 + 104);
                  *(v176 + 88) = v187;
                  *(v176 + 72) = v186;
                  *(v176 + 56) = v185;
                  if (*(v176 + 135) < 0)
                  {
                    operator delete(*(v176 + 112));
                  }

                  v177 = *(v179 + 112);
                  *(v176 + 128) = *(v179 + 128);
                  *(v176 + 112) = v177;
                  *(v179 + 135) = 0;
                  *(v179 + 112) = 0;
                  *(v176 + 136) = *(v179 + 136);
                  *(v176 + 144) = *(v179 + 144);
                  v176 = v179;
                }

                while (v174 <= ((v172 - 2) >> 1));
                v188 = a2 - 152;
                if (v179 == a2 - 152)
                {
                  *v179 = v175;
                  *(v179 + 40) = v279;
                  *(v179 + 24) = v268;
                  *(v179 + 8) = v257;
                  *(v179 + 104) = v320;
                  *(v179 + 88) = v312;
                  *(v179 + 72) = v301;
                  *(v179 + 56) = v290;
                  if (*(v179 + 135) < 0)
                  {
                    operator delete(*(v179 + 112));
                  }

                  *(v179 + 112) = v244;
                  *(v179 + 120) = *v246;
                  *(v179 + 127) = *&v246[7];
                  *(v179 + 135) = v239;
                  *(v179 + 136) = v234;
                  *(v179 + 144) = v231;
                }

                else
                {
                  *v179 = *(a2 - 152);
                  v189 = *(a2 - 144);
                  v190 = *(a2 - 128);
                  *(v179 + 40) = *(a2 - 112);
                  *(v179 + 24) = v190;
                  *(v179 + 8) = v189;
                  v191 = *(a2 - 96);
                  v192 = *(a2 - 80);
                  v193 = *(a2 - 64);
                  *(v179 + 104) = *(a2 - 48);
                  *(v179 + 88) = v193;
                  *(v179 + 72) = v192;
                  *(v179 + 56) = v191;
                  if (*(v179 + 135) < 0)
                  {
                    operator delete(*(v179 + 112));
                  }

                  v194 = a2 - 144;
                  v195 = *(a2 - 40);
                  *(v179 + 128) = *(a2 - 24);
                  *(v179 + 112) = v195;
                  *(a2 - 17) = 0;
                  *(a2 - 40) = 0;
                  *(v179 + 136) = *(a2 - 16);
                  *(v179 + 144) = *(a2 - 8);
                  *(a2 - 152) = v175;
                  *v194 = v257;
                  *(v194 + 16) = v268;
                  *(v194 + 32) = v279;
                  *(v194 + 96) = v320;
                  *(v194 + 64) = v301;
                  *(v194 + 80) = v312;
                  *(v194 + 48) = v290;
                  if (*(a2 - 17) < 0)
                  {
                    operator delete(*(a2 - 40));
                  }

                  *(a2 - 40) = v244;
                  *(a2 - 25) = *&v246[7];
                  *(a2 - 32) = *v246;
                  *(a2 - 17) = v239;
                  *(a2 - 16) = v234;
                  *(a2 - 8) = v231;
                  v196 = v179 + 152 - a1;
                  if (v196 >= 153)
                  {
                    v197 = (-2 - 0x79435E50D79435E5 * (v196 >> 3)) >> 1;
                    v198 = a1 + 152 * v197;
                    v199 = *(v179 + 8);
                    if (*(v198 + 8) > v199)
                    {
                      v200 = *v179;
                      v328 = *(v179 + 16);
                      v332 = *(v179 + 32);
                      v341 = *(v179 + 80);
                      v344 = *(v179 + 96);
                      v335 = *(v179 + 48);
                      v338 = *(v179 + 64);
                      v245 = *(v179 + 112);
                      *v323 = *(v179 + 120);
                      *&v323[7] = *(v179 + 127);
                      v240 = *(v179 + 135);
                      *(v179 + 112) = 0;
                      *(v179 + 120) = 0;
                      *(v179 + 128) = 0;
                      v235 = *(v179 + 136);
                      v201 = *(v179 + 144);
                      do
                      {
                        v202 = v198;
                        *v179 = *v198;
                        v203 = *(v198 + 8);
                        v204 = *(v198 + 24);
                        *(v179 + 40) = *(v198 + 40);
                        *(v179 + 24) = v204;
                        *(v179 + 8) = v203;
                        v205 = *(v198 + 56);
                        v206 = *(v198 + 72);
                        v207 = *(v198 + 88);
                        *(v179 + 104) = *(v198 + 104);
                        *(v179 + 88) = v207;
                        *(v179 + 72) = v206;
                        *(v179 + 56) = v205;
                        if (*(v179 + 135) < 0)
                        {
                          operator delete(*(v179 + 112));
                        }

                        v208 = *(v202 + 112);
                        *(v179 + 128) = *(v202 + 128);
                        *(v179 + 112) = v208;
                        *(v202 + 135) = 0;
                        *(v202 + 112) = 0;
                        *(v179 + 136) = *(v202 + 136);
                        *(v179 + 144) = *(v202 + 144);
                        if (!v197)
                        {
                          break;
                        }

                        v197 = (v197 - 1) >> 1;
                        v198 = a1 + 152 * v197;
                        v179 = v202;
                      }

                      while (*(v198 + 8) > v199);
                      *v202 = v200;
                      *(v202 + 8) = v199;
                      *(v202 + 48) = v335;
                      *(v202 + 64) = v338;
                      *(v202 + 80) = v341;
                      *(v202 + 96) = v344;
                      *(v202 + 16) = v328;
                      *(v202 + 32) = v332;
                      if (*(v202 + 135) < 0)
                      {
                        operator delete(*(v202 + 112));
                      }

                      *(v202 + 112) = v245;
                      *(v202 + 120) = *v323;
                      *(v202 + 127) = *&v323[7];
                      *(v202 + 135) = v240;
                      *(v202 + 136) = v235;
                      *(v202 + 144) = v201;
                    }
                  }
                }

                a2 = v188;
                v173 = v172-- <= 2;
              }

              while (!v173);
            }

            return;
          }

          v11 = v9 >> 1;
          v12 = a1 + 152 * (v9 >> 1);
          if (v8 < 0x4C01)
          {
            sub_1AE79016C(v12, a1, v232);
          }

          else
          {
            sub_1AE79016C(a1, v12, v232);
            v13 = 152 * v11;
            sub_1AE79016C((a1 + 152), (v13 + a1 - 152), v229);
            sub_1AE79016C((a1 + 304), (a1 + 152 + v13), v227);
            sub_1AE79016C((v13 + a1 - 152), v12, (a1 + 152 + v13));
            v14 = *a1;
            *a1 = *v12;
            *v12 = v14;
            v313 = *(a1 + 104);
            v247 = *(a1 + 8);
            v258 = *(a1 + 24);
            v291 = *(a1 + 72);
            v302 = *(a1 + 88);
            v269 = *(a1 + 40);
            v280 = *(a1 + 56);
            v15 = *(v12 + 72);
            v16 = *(v12 + 88);
            v17 = *(v12 + 104);
            *(a1 + 56) = *(v12 + 56);
            *(a1 + 104) = v17;
            *(a1 + 88) = v16;
            *(a1 + 72) = v15;
            v18 = *(v12 + 8);
            v19 = *(v12 + 24);
            *(a1 + 40) = *(v12 + 40);
            *(a1 + 24) = v19;
            *(a1 + 8) = v18;
            *(v12 + 40) = v269;
            *(v12 + 24) = v258;
            *(v12 + 8) = v247;
            *(v12 + 104) = v313;
            *(v12 + 88) = v302;
            *(v12 + 72) = v291;
            *(v12 + 56) = v280;
            v20 = *(a1 + 112);
            v21 = *(a1 + 128);
            v22 = *(v12 + 128);
            *(a1 + 112) = *(v12 + 112);
            *(a1 + 128) = v22;
            *(v12 + 128) = v21;
            *(v12 + 112) = v20;
            LODWORD(v21) = *(a1 + 136);
            *(a1 + 136) = *(v12 + 136);
            *(v12 + 136) = v21;
            v23 = *(a1 + 144);
            *(a1 + 144) = *(v12 + 144);
            *(v12 + 144) = v23;
          }

          v241 = --a3;
          if (a4)
          {
            break;
          }

          v24 = *(a1 + 8);
          if (*(a1 - 144) > v24)
          {
            goto LABEL_17;
          }

          v61 = *a1;
          v340 = *(a1 + 80);
          v343 = *(a1 + 96);
          v334 = *(a1 + 48);
          v337 = *(a1 + 64);
          v325 = *(a1 + 16);
          v331 = *(a1 + 32);
          v62 = (a1 + 112);
          v63 = *(a1 + 112);
          *v322 = *(a1 + 120);
          *&v322[7] = *(a1 + 127);
          v64 = *(a1 + 135);
          *(a1 + 112) = 0;
          *(a1 + 120) = 0;
          *(a1 + 128) = 0;
          if (v24 <= *v224)
          {
            v67 = a1 + 152;
            do
            {
              v7 = v67;
              if (v67 >= a2)
              {
                break;
              }

              v68 = *(v67 + 8);
              v67 += 152;
            }

            while (v24 <= v68);
          }

          else
          {
            v65 = a1;
            do
            {
              v7 = v65 + 152;
              v66 = *(v65 + 160);
              v65 += 152;
            }

            while (v24 <= v66);
          }

          v69 = a2;
          if (v7 < a2)
          {
            v70 = a2;
            do
            {
              v69 = v70 - 152;
              v71 = *(v70 - 144);
              v70 -= 152;
            }

            while (v24 > v71);
          }

          v72 = *(a1 + 136);
          v73 = *(a1 + 144);
          while (v7 < v69)
          {
            v74 = *v7;
            *v7 = *v69;
            *v69 = v74;
            v315 = *(v7 + 104);
            v249 = *(v7 + 8);
            v260 = *(v7 + 24);
            v293 = *(v7 + 72);
            v304 = *(v7 + 88);
            v271 = *(v7 + 40);
            v282 = *(v7 + 56);
            v75 = *(v69 + 72);
            v76 = *(v69 + 88);
            v77 = *(v69 + 104);
            *(v7 + 56) = *(v69 + 56);
            *(v7 + 104) = v77;
            *(v7 + 88) = v76;
            *(v7 + 72) = v75;
            v78 = *(v69 + 8);
            v79 = *(v69 + 24);
            *(v7 + 40) = *(v69 + 40);
            *(v7 + 24) = v79;
            *(v7 + 8) = v78;
            *(v69 + 104) = v315;
            *(v69 + 40) = v271;
            *(v69 + 24) = v260;
            *(v69 + 8) = v249;
            *(v69 + 88) = v304;
            *(v69 + 72) = v293;
            *(v69 + 56) = v282;
            v80 = *(v7 + 128);
            v81 = *(v7 + 112);
            v82 = *(v69 + 128);
            *(v7 + 112) = *(v69 + 112);
            *(v7 + 128) = v82;
            *(v69 + 112) = v81;
            *(v69 + 128) = v80;
            LODWORD(v80) = *(v7 + 136);
            *(v7 + 136) = *(v69 + 136);
            *(v69 + 136) = v80;
            v83 = *(v7 + 144);
            *(v7 + 144) = *(v69 + 144);
            *(v69 + 144) = v83;
            do
            {
              v84 = *(v7 + 160);
              v7 += 152;
            }

            while (v24 <= v84);
            do
            {
              v85 = *(v69 - 144);
              v69 -= 152;
            }

            while (v24 > v85);
          }

          if (v7 - 152 != a1)
          {
            *a1 = *(v7 - 152);
            v86 = *(v7 - 144);
            v87 = *(v7 - 128);
            *(a1 + 40) = *(v7 - 112);
            *(a1 + 24) = v87;
            *(a1 + 8) = v86;
            v88 = *(v7 - 96);
            v89 = *(v7 - 80);
            v90 = *(v7 - 64);
            *(a1 + 104) = *(v7 - 48);
            *(a1 + 88) = v90;
            *(a1 + 72) = v89;
            *(a1 + 56) = v88;
            if (*(a1 + 135) < 0)
            {
              operator delete(*v62);
            }

            v91 = *(v7 - 40);
            *(a1 + 128) = *(v7 - 24);
            *v62 = v91;
            *(v7 - 17) = 0;
            *(v7 - 40) = 0;
            *(a1 + 136) = *(v7 - 16);
            *(a1 + 144) = *(v7 - 8);
          }

          *(v7 - 152) = v61;
          *(v7 - 144) = v24;
          *(v7 - 120) = v331;
          *(v7 - 136) = v325;
          *(v7 - 56) = v343;
          *(v7 - 72) = v340;
          *(v7 - 88) = v337;
          *(v7 - 104) = v334;
          if (*(v7 - 17) < 0)
          {
            operator delete(*(v7 - 40));
          }

          a4 = 0;
          *(v7 - 40) = v63;
          *(v7 - 25) = *&v322[7];
          *(v7 - 32) = *v322;
          *(v7 - 17) = v64;
          *(v7 - 16) = v72;
          *(v7 - 8) = v73;
        }

        v24 = *(a1 + 8);
LABEL_17:
        v25 = *a1;
        v339 = *(a1 + 80);
        v342 = *(a1 + 96);
        v333 = *(a1 + 48);
        v336 = *(a1 + 64);
        v27 = (a1 + 112);
        v26 = *(a1 + 112);
        v324 = *(a1 + 16);
        v330 = *(a1 + 32);
        *v321 = *(a1 + 120);
        *&v321[7] = *(a1 + 127);
        v28 = *(a1 + 135);
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
        v29 = *(a1 + 136);
        v30 = a1;
        v31 = *(a1 + 144);
        do
        {
          v32 = v30;
          v30 += 152;
        }

        while (*(v32 + 160) > v24);
        v33 = a2;
        if (v32 == a1)
        {
          v36 = a2;
          while (v30 < v36)
          {
            v34 = v36 - 152;
            v37 = *(v36 - 144);
            v36 -= 152;
            if (v37 > v24)
            {
              goto LABEL_27;
            }
          }

          v34 = v36;
        }

        else
        {
          do
          {
            v34 = v33 - 152;
            v35 = *(v33 - 144);
            v33 -= 152;
          }

          while (v35 <= v24);
        }

LABEL_27:
        v7 = v30;
        if (v30 < v34)
        {
          v38 = v34;
          do
          {
            v39 = *v7;
            *v7 = *v38;
            *v38 = v39;
            v314 = *(v7 + 104);
            v248 = *(v7 + 8);
            v259 = *(v7 + 24);
            v292 = *(v7 + 72);
            v303 = *(v7 + 88);
            v270 = *(v7 + 40);
            v281 = *(v7 + 56);
            v40 = *(v38 + 72);
            v41 = *(v38 + 88);
            v42 = *(v38 + 104);
            *(v7 + 56) = *(v38 + 56);
            *(v7 + 104) = v42;
            *(v7 + 88) = v41;
            *(v7 + 72) = v40;
            v43 = *(v38 + 8);
            v44 = *(v38 + 24);
            *(v7 + 40) = *(v38 + 40);
            *(v7 + 24) = v44;
            *(v7 + 8) = v43;
            *(v38 + 104) = v314;
            *(v38 + 40) = v270;
            *(v38 + 24) = v259;
            *(v38 + 8) = v248;
            *(v38 + 88) = v303;
            *(v38 + 72) = v292;
            *(v38 + 56) = v281;
            v45 = *(v7 + 128);
            v46 = *(v7 + 112);
            v47 = *(v38 + 128);
            *(v7 + 112) = *(v38 + 112);
            *(v7 + 128) = v47;
            *(v38 + 112) = v46;
            *(v38 + 128) = v45;
            LODWORD(v45) = *(v7 + 136);
            *(v7 + 136) = *(v38 + 136);
            *(v38 + 136) = v45;
            v48 = *(v7 + 144);
            *(v7 + 144) = *(v38 + 144);
            *(v38 + 144) = v48;
            do
            {
              v49 = *(v7 + 160);
              v7 += 152;
            }

            while (v49 > v24);
            do
            {
              v50 = *(v38 - 144);
              v38 -= 152;
            }

            while (v50 <= v24);
          }

          while (v7 < v38);
        }

        if (v7 - 152 != a1)
        {
          *a1 = *(v7 - 152);
          v51 = *(v7 - 144);
          v52 = *(v7 - 128);
          *(a1 + 40) = *(v7 - 112);
          *(a1 + 24) = v52;
          *(a1 + 8) = v51;
          v53 = *(v7 - 96);
          v54 = *(v7 - 80);
          v55 = *(v7 - 64);
          *(a1 + 104) = *(v7 - 48);
          *(a1 + 88) = v55;
          *(a1 + 72) = v54;
          *(a1 + 56) = v53;
          if (*(a1 + 135) < 0)
          {
            v226 = a2;
            v225 = v29;
            v56 = v25;
            v57 = v31;
            operator delete(*v27);
            v31 = v57;
            v25 = v56;
            v29 = v225;
            a2 = v226;
          }

          v58 = *(v7 - 40);
          *(a1 + 128) = *(v7 - 24);
          *v27 = v58;
          *(v7 - 17) = 0;
          *(v7 - 40) = 0;
          *(a1 + 136) = *(v7 - 16);
          *(a1 + 144) = *(v7 - 8);
        }

        *(v7 - 152) = v25;
        *(v7 - 144) = v24;
        *(v7 - 120) = v330;
        *(v7 - 136) = v324;
        *(v7 - 56) = v342;
        *(v7 - 72) = v339;
        *(v7 - 88) = v336;
        *(v7 - 104) = v333;
        if (*(v7 - 17) < 0)
        {
          v59 = v31;
          operator delete(*(v7 - 40));
          v31 = v59;
        }

        *(v7 - 40) = v26;
        *(v7 - 25) = *&v321[7];
        *(v7 - 32) = *v321;
        *(v7 - 17) = v28;
        *(v7 - 16) = v29;
        *(v7 - 8) = v31;
        a3 = v241;
        if (v30 >= v34)
        {
          break;
        }

LABEL_42:
        sub_1AE78E5F8(a1, v7 - 152, v241, a4 & 1);
        a4 = 0;
      }

      v60 = sub_1AE790B3C(a1, v7 - 152);
      if (sub_1AE790B3C(v7, a2))
      {
        break;
      }

      if (!v60)
      {
        goto LABEL_42;
      }
    }

    a2 = v7 - 152;
    if (!v60)
    {
      continue;
    }

    break;
  }
}

void sub_1AE78FC8C(void *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v11 = a2;
  if (4 * a3)
  {
    v12 = 4 * a3;
    v13 = a2;
    do
    {
      if (*v13 - 3 >= 0xFFFFFFFE)
      {
        *a1 = 0;
        return;
      }

      ++v13;
      v12 -= 4;
    }

    while (v12);
  }

  memset(&v54, 0, sizeof(v54));
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v14 = 0;
  if (!a3)
  {
LABEL_60:
    v34 = *(a4 + 80);
    v45 = *(a4 + 64);
    v46 = v34;
    v47 = *(a4 + 96);
    v35 = *(a4 + 16);
    *__p = *a4;
    v42 = v35;
    v36 = *(a4 + 48);
    v43 = *(a4 + 32);
    v44 = v36;
    v48 = *(a4 + 24) & 1 | (2 * ((*(a4 + 24) >> 8) & 1));
    operator new();
  }

  v15 = &a2[a3];
  while (1)
  {
    if ((*a8 & 0xFFFFFFFE) == 8)
    {
      sub_1AE7099D8(__src, *(a5 + 464), *v11);
    }

    else
    {
      sub_1AE657E48(a5, *v11, __src);
    }

    v16 = HIBYTE(v50);
    if (SHIBYTE(v50) < 0)
    {
      if (!__src[1])
      {
LABEL_17:
        *a1 = 0;
        v18 = 1;
        if ((v16 & 0x80) == 0)
        {
          goto LABEL_58;
        }

LABEL_57:
        operator delete(__src[0]);
        goto LABEL_58;
      }

      sub_1AE5DBF1C(__p, __src[0], __src[1]);
    }

    else
    {
      if (!HIBYTE(v50))
      {
        goto LABEL_17;
      }

      *__p = *__src;
      *&v42 = v50;
    }

    DWORD2(v42) = 0;
    if (v14 >= v53)
    {
      v19 = v51;
      v20 = (v14 - v51) >> 5;
      v21 = v20 + 1;
      if ((v20 + 1) >> 59)
      {
        sub_1AE5CBB70();
      }

      v22 = v53 - v51;
      if ((v53 - v51) >> 4 > v21)
      {
        v21 = v22 >> 4;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFE0)
      {
        v23 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        if (!(v23 >> 59))
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v24 = 32 * v20;
      *v24 = *__p;
      *(v24 + 16) = v42;
      __p[1] = 0;
      *&v42 = 0;
      __p[0] = 0;
      *(v24 + 24) = 0;
      if (v19 != v14)
      {
        v25 = v19;
        v26 = 0;
        do
        {
          v27 = *v25;
          *(v26 + 16) = v25[2];
          *v26 = v27;
          v25[1] = 0;
          v25[2] = 0;
          *v25 = 0;
          *(v26 + 24) = *(v25 + 6);
          v25 += 4;
          v26 += 32;
        }

        while (v25 != v14);
        do
        {
          if (*(v19 + 23) < 0)
          {
            operator delete(*v19);
          }

          v19 += 4;
        }

        while (v19 != v14);
        v19 = v51;
      }

      v14 = v24 + 32;
      v51 = 0;
      v53 = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      v17 = *__p;
      *(v14 + 16) = v42;
      *v14 = v17;
      __p[1] = 0;
      *&v42 = 0;
      __p[0] = 0;
      *(v14 + 24) = DWORD2(v42);
      v14 += 32;
    }

    v52 = v14;
    if (SBYTE7(v42) < 0)
    {
      operator delete(__p[0]);
    }

    size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v54.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v29 = *(a6 + 23);
      if (v29 >= 0)
      {
        v30 = a6;
      }

      else
      {
        v30 = *a6;
      }

      if (v29 >= 0)
      {
        v31 = *(a6 + 23);
      }

      else
      {
        v31 = *(a6 + 8);
      }

      std::string::append(&v54, v30, v31);
    }

    if (v50 >= 0)
    {
      v32 = __src;
    }

    else
    {
      v32 = __src[0];
    }

    if (v50 >= 0)
    {
      v33 = HIBYTE(v50);
    }

    else
    {
      v33 = __src[1];
    }

    std::string::append(&v54, v32, v33);
    v18 = 0;
    if (v50 < 0)
    {
      goto LABEL_57;
    }

LABEL_58:
    if (v18)
    {
      break;
    }

    if (++v11 == v15)
    {
      goto LABEL_60;
    }
  }

  v37 = v51;
  if (v51)
  {
    while (v14 != v37)
    {
      v38 = *(v14 - 9);
      v14 -= 32;
      if (v38 < 0)
      {
        operator delete(*v14);
      }
    }

    operator delete(v37);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }
}

void sub_1AE790074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  MEMORY[0x1B2706400](v37, 0x1032C4057ACE4D0);
  sub_1AE61E350((v38 - 136));
  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  _Unwind_Resume(a1);
}

void **sub_1AE7900F8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 17) < 0)
        {
          operator delete(*(v3 - 5));
        }

        v3 -= 19;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

int *sub_1AE79016C(int *result, int *a2, int *a3)
{
  v3 = a2 + 2;
  v4 = *(a2 + 1);
  v5 = (result + 2);
  v6 = (a3 + 2);
  v7 = *(a3 + 1);
  if (v4 > *(result + 1))
  {
    v8 = (result + 36);
    v9 = *result;
    if (v7 <= v4)
    {
      *result = *a2;
      *a2 = v9;
      v83 = *(result + 18);
      v88 = *(result + 22);
      v93 = *(result + 13);
      v63 = *v5;
      v68 = *(result + 6);
      v73 = *(result + 10);
      v78 = *(result + 14);
      v41 = *(a2 + 6);
      v40 = *(a2 + 10);
      *v5 = *v3;
      *(result + 6) = v41;
      *(result + 10) = v40;
      v43 = *(a2 + 18);
      v42 = *(a2 + 22);
      v44 = *(a2 + 14);
      *(result + 13) = *(a2 + 13);
      *(result + 18) = v43;
      *(result + 22) = v42;
      *(result + 14) = v44;
      *v3 = v63;
      *(a2 + 6) = v68;
      *(a2 + 13) = v93;
      *(a2 + 18) = v83;
      *(a2 + 22) = v88;
      *(a2 + 10) = v73;
      *(a2 + 14) = v78;
      v45 = *(result + 16);
      v46 = *(result + 7);
      v47 = *(a2 + 16);
      *(result + 7) = *(a2 + 7);
      *(result + 16) = v47;
      *(a2 + 7) = v46;
      *(a2 + 16) = v45;
      LODWORD(v45) = result[34];
      v8 = (a2 + 36);
      v48 = *(a2 + 18);
      result[34] = a2[34];
      a2[34] = v45;
      v49 = *(result + 18);
      *(result + 18) = v48;
      *(a2 + 18) = v49;
      if (*v6 <= *(a2 + 1))
      {
        return result;
      }

      v50 = *a2;
      *a2 = *a3;
      *a3 = v50;
      v84 = *(a2 + 18);
      v89 = *(a2 + 22);
      v94 = *(a2 + 13);
      v64 = *v3;
      v69 = *(a2 + 6);
      v74 = *(a2 + 10);
      v79 = *(a2 + 14);
      v52 = *(a3 + 6);
      v51 = *(a3 + 10);
      *v3 = *v6;
      *(a2 + 6) = v52;
      *(a2 + 10) = v51;
      v54 = *(a3 + 18);
      v53 = *(a3 + 22);
      v55 = *(a3 + 14);
      *(a2 + 13) = *(a3 + 13);
      *(a2 + 18) = v54;
      *(a2 + 22) = v53;
      *(a2 + 14) = v55;
      *v6 = v64;
      *(a3 + 6) = v69;
      *(a3 + 13) = v94;
      *(a3 + 18) = v84;
      *(a3 + 22) = v89;
      *(a3 + 10) = v74;
      *(a3 + 14) = v79;
      v56 = *(a2 + 16);
      v57 = *(a2 + 7);
      v58 = *(a3 + 16);
      *(a2 + 7) = *(a3 + 7);
      *(a2 + 16) = v58;
      *(a3 + 7) = v57;
      *(a3 + 16) = v56;
      v18 = a2[34];
      a2[34] = a3[34];
    }

    else
    {
      *result = *a3;
      *a3 = v9;
      v80 = *(result + 18);
      v85 = *(result + 22);
      v90 = *(result + 13);
      v60 = *v5;
      v65 = *(result + 6);
      v70 = *(result + 10);
      v75 = *(result + 14);
      v11 = *(a3 + 6);
      v10 = *(a3 + 10);
      *v5 = *v6;
      *(result + 6) = v11;
      *(result + 10) = v10;
      v13 = *(a3 + 18);
      v12 = *(a3 + 22);
      v14 = *(a3 + 14);
      *(result + 13) = *(a3 + 13);
      *(result + 18) = v13;
      *(result + 22) = v12;
      *(result + 14) = v14;
      *v6 = v60;
      *(a3 + 6) = v65;
      *(a3 + 13) = v90;
      *(a3 + 18) = v80;
      *(a3 + 22) = v85;
      *(a3 + 10) = v70;
      *(a3 + 14) = v75;
      v15 = *(result + 16);
      v16 = *(result + 7);
      v17 = *(a3 + 16);
      *(result + 7) = *(a3 + 7);
      *(result + 16) = v17;
      *(a3 + 7) = v16;
      *(a3 + 16) = v15;
      v18 = result[34];
      result[34] = a3[34];
    }

    v28 = (a3 + 36);
    a3[34] = v18;
    goto LABEL_10;
  }

  if (v7 > v4)
  {
    v19 = *a2;
    *a2 = *a3;
    *a3 = v19;
    v81 = *(a2 + 18);
    v86 = *(a2 + 22);
    v91 = *(a2 + 13);
    v61 = *v3;
    v66 = *(a2 + 6);
    v71 = *(a2 + 10);
    v76 = *(a2 + 14);
    v21 = *(a3 + 6);
    v20 = *(a3 + 10);
    *v3 = *v6;
    *(a2 + 6) = v21;
    *(a2 + 10) = v20;
    v23 = *(a3 + 18);
    v22 = *(a3 + 22);
    v24 = *(a3 + 14);
    *(a2 + 13) = *(a3 + 13);
    *(a2 + 18) = v23;
    *(a2 + 22) = v22;
    *(a2 + 14) = v24;
    *v6 = v61;
    *(a3 + 6) = v66;
    *(a3 + 13) = v91;
    *(a3 + 18) = v81;
    *(a3 + 22) = v86;
    *(a3 + 10) = v71;
    *(a3 + 14) = v76;
    v25 = *(a2 + 16);
    v26 = *(a2 + 7);
    v27 = *(a3 + 16);
    *(a2 + 7) = *(a3 + 7);
    *(a2 + 16) = v27;
    *(a3 + 7) = v26;
    *(a3 + 16) = v25;
    v28 = (a2 + 36);
    v29 = *(a2 + 18);
    v30 = a2[34];
    a2[34] = a3[34];
    a3[34] = v30;
    *(a2 + 18) = *(a3 + 18);
    *(a3 + 18) = v29;
    if (*(a2 + 1) > *v5)
    {
      v31 = *result;
      *result = *a2;
      *a2 = v31;
      v82 = *(result + 18);
      v87 = *(result + 22);
      v92 = *(result + 13);
      v62 = *v5;
      v67 = *(result + 6);
      v72 = *(result + 10);
      v77 = *(result + 14);
      v33 = *(a2 + 6);
      v32 = *(a2 + 10);
      *v5 = *v3;
      *(result + 6) = v33;
      *(result + 10) = v32;
      v35 = *(a2 + 18);
      v34 = *(a2 + 22);
      v36 = *(a2 + 14);
      *(result + 13) = *(a2 + 13);
      *(result + 18) = v35;
      *(result + 22) = v34;
      *(result + 14) = v36;
      *v3 = v62;
      *(a2 + 6) = v67;
      *(a2 + 13) = v92;
      *(a2 + 18) = v82;
      *(a2 + 22) = v87;
      *(a2 + 10) = v72;
      *(a2 + 14) = v77;
      v37 = *(result + 16);
      v38 = *(result + 7);
      v39 = *(a2 + 16);
      *(result + 7) = *(a2 + 7);
      *(result + 16) = v39;
      *(a2 + 7) = v38;
      *(a2 + 16) = v37;
      LODWORD(v37) = result[34];
      result[34] = a2[34];
      v8 = (result + 36);
      a2[34] = v37;
LABEL_10:
      v59 = *v8;
      *v8 = *v28;
      *v28 = v59;
    }
  }

  return result;
}

__n128 sub_1AE79055C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int *a5)
{
  sub_1AE79016C(a1, a2, a3);
  v11 = (a4 + 2);
  v12 = (a3 + 8);
  if (*(a4 + 1) > *(a3 + 8))
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    v109 = *(a3 + 72);
    v116 = *(a3 + 88);
    v123 = *(a3 + 104);
    v81 = *v12;
    v88 = *(a3 + 24);
    v95 = *(a3 + 40);
    v102 = *(a3 + 56);
    v15 = *(a4 + 6);
    v14 = *(a4 + 10);
    *v12 = *v11;
    *(a3 + 24) = v15;
    *(a3 + 40) = v14;
    v17 = *(a4 + 18);
    v16 = *(a4 + 22);
    v18 = *(a4 + 14);
    *(a3 + 104) = *(a4 + 13);
    *(a3 + 72) = v17;
    *(a3 + 88) = v16;
    *(a3 + 56) = v18;
    *v11 = v81;
    *(a4 + 6) = v88;
    *(a4 + 13) = v123;
    *(a4 + 18) = v109;
    *(a4 + 22) = v116;
    *(a4 + 10) = v95;
    *(a4 + 14) = v102;
    v19 = *(a3 + 128);
    result = *(a3 + 112);
    v20 = *(a4 + 16);
    *(a3 + 112) = *(a4 + 7);
    *(a3 + 128) = v20;
    *(a4 + 7) = result;
    *(a4 + 16) = v19;
    LODWORD(v19) = *(a3 + 136);
    *(a3 + 136) = a4[34];
    a4[34] = v19;
    v21 = *(a3 + 144);
    *(a3 + 144) = *(a4 + 18);
    *(a4 + 18) = v21;
    v22 = (a2 + 8);
    if (*(a3 + 8) > *(a2 + 8))
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v110 = *(a2 + 72);
      v117 = *(a2 + 88);
      v124 = *(a2 + 104);
      v82 = *v22;
      v89 = *(a2 + 24);
      v96 = *(a2 + 40);
      v103 = *(a2 + 56);
      v25 = *(a3 + 24);
      v24 = *(a3 + 40);
      *v22 = *v12;
      *(a2 + 24) = v25;
      *(a2 + 40) = v24;
      v27 = *(a3 + 72);
      v26 = *(a3 + 88);
      v28 = *(a3 + 56);
      *(a2 + 104) = *(a3 + 104);
      *(a2 + 72) = v27;
      *(a2 + 88) = v26;
      *(a2 + 56) = v28;
      *v12 = v82;
      *(a3 + 24) = v89;
      *(a3 + 104) = v124;
      *(a3 + 72) = v110;
      *(a3 + 88) = v117;
      *(a3 + 40) = v96;
      *(a3 + 56) = v103;
      v29 = *(a2 + 128);
      result = *(a2 + 112);
      v30 = *(a3 + 128);
      *(a2 + 112) = *(a3 + 112);
      *(a2 + 128) = v30;
      *(a3 + 112) = result;
      *(a3 + 128) = v29;
      LODWORD(v29) = *(a2 + 136);
      *(a2 + 136) = *(a3 + 136);
      *(a3 + 136) = v29;
      v31 = *(a2 + 144);
      *(a2 + 144) = *(a3 + 144);
      *(a3 + 144) = v31;
      v32 = (a1 + 8);
      if (*(a2 + 8) > *(a1 + 8))
      {
        v33 = *a1;
        *a1 = *a2;
        *a2 = v33;
        v111 = *(a1 + 72);
        v118 = *(a1 + 88);
        v125 = *(a1 + 104);
        v83 = *v32;
        v90 = *(a1 + 24);
        v97 = *(a1 + 40);
        v104 = *(a1 + 56);
        v35 = *(a2 + 24);
        v34 = *(a2 + 40);
        *v32 = *v22;
        *(a1 + 24) = v35;
        *(a1 + 40) = v34;
        v37 = *(a2 + 72);
        v36 = *(a2 + 88);
        v38 = *(a2 + 56);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 72) = v37;
        *(a1 + 88) = v36;
        *(a1 + 56) = v38;
        *v22 = v83;
        *(a2 + 24) = v90;
        *(a2 + 104) = v125;
        *(a2 + 72) = v111;
        *(a2 + 88) = v118;
        *(a2 + 40) = v97;
        *(a2 + 56) = v104;
        v39 = *(a1 + 128);
        result = *(a1 + 112);
        v40 = *(a2 + 128);
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 128) = v40;
        *(a2 + 112) = result;
        *(a2 + 128) = v39;
        LODWORD(v39) = *(a1 + 136);
        *(a1 + 136) = *(a2 + 136);
        *(a2 + 136) = v39;
        v41 = *(a1 + 144);
        *(a1 + 144) = *(a2 + 144);
        *(a2 + 144) = v41;
      }
    }
  }

  v42 = (a5 + 2);
  result.n128_u64[0] = *(a5 + 1);
  if (result.n128_f64[0] > *v11)
  {
    v43 = *a4;
    *a4 = *a5;
    *a5 = v43;
    v112 = *(a4 + 18);
    v119 = *(a4 + 22);
    v126 = *(a4 + 13);
    v84 = *v11;
    v91 = *(a4 + 6);
    v98 = *(a4 + 10);
    v105 = *(a4 + 14);
    v45 = *(a5 + 6);
    v44 = *(a5 + 10);
    *v11 = *v42;
    *(a4 + 6) = v45;
    *(a4 + 10) = v44;
    v47 = *(a5 + 18);
    v46 = *(a5 + 22);
    v48 = *(a5 + 14);
    *(a4 + 13) = *(a5 + 13);
    *(a4 + 18) = v47;
    *(a4 + 22) = v46;
    *(a4 + 14) = v48;
    *v42 = v84;
    *(a5 + 6) = v91;
    *(a5 + 13) = v126;
    *(a5 + 18) = v112;
    *(a5 + 22) = v119;
    *(a5 + 10) = v98;
    *(a5 + 14) = v105;
    v49 = *(a4 + 16);
    result = *(a4 + 7);
    v50 = *(a5 + 16);
    *(a4 + 7) = *(a5 + 7);
    *(a4 + 16) = v50;
    *(a5 + 7) = result;
    *(a5 + 16) = v49;
    LODWORD(v49) = a4[34];
    a4[34] = a5[34];
    a5[34] = v49;
    v51 = *(a4 + 18);
    *(a4 + 18) = *(a5 + 18);
    *(a5 + 18) = v51;
    result.n128_u64[0] = *(a4 + 1);
    if (result.n128_f64[0] > *v12)
    {
      v52 = *a3;
      *a3 = *a4;
      *a4 = v52;
      v113 = *(a3 + 72);
      v120 = *(a3 + 88);
      v127 = *(a3 + 104);
      v85 = *v12;
      v92 = *(a3 + 24);
      v99 = *(a3 + 40);
      v106 = *(a3 + 56);
      v54 = *(a4 + 6);
      v53 = *(a4 + 10);
      *v12 = *v11;
      *(a3 + 24) = v54;
      *(a3 + 40) = v53;
      v56 = *(a4 + 18);
      v55 = *(a4 + 22);
      v57 = *(a4 + 14);
      *(a3 + 104) = *(a4 + 13);
      *(a3 + 72) = v56;
      *(a3 + 88) = v55;
      *(a3 + 56) = v57;
      *v11 = v85;
      *(a4 + 6) = v92;
      *(a4 + 13) = v127;
      *(a4 + 18) = v113;
      *(a4 + 22) = v120;
      *(a4 + 10) = v99;
      *(a4 + 14) = v106;
      v58 = *(a3 + 128);
      result = *(a3 + 112);
      v59 = *(a4 + 16);
      *(a3 + 112) = *(a4 + 7);
      *(a3 + 128) = v59;
      *(a4 + 7) = result;
      *(a4 + 16) = v58;
      LODWORD(v58) = *(a3 + 136);
      *(a3 + 136) = a4[34];
      a4[34] = v58;
      v60 = *(a3 + 144);
      *(a3 + 144) = *(a4 + 18);
      *(a4 + 18) = v60;
      result.n128_u64[0] = *(a3 + 8);
      v61 = (a2 + 8);
      if (result.n128_f64[0] > *(a2 + 8))
      {
        v62 = *a2;
        *a2 = *a3;
        *a3 = v62;
        v114 = *(a2 + 72);
        v121 = *(a2 + 88);
        v128 = *(a2 + 104);
        v86 = *v61;
        v93 = *(a2 + 24);
        v100 = *(a2 + 40);
        v107 = *(a2 + 56);
        v64 = *(a3 + 24);
        v63 = *(a3 + 40);
        *v61 = *v12;
        *(a2 + 24) = v64;
        *(a2 + 40) = v63;
        v66 = *(a3 + 72);
        v65 = *(a3 + 88);
        v67 = *(a3 + 56);
        *(a2 + 104) = *(a3 + 104);
        *(a2 + 72) = v66;
        *(a2 + 88) = v65;
        *(a2 + 56) = v67;
        *v12 = v86;
        *(a3 + 24) = v93;
        *(a3 + 104) = v128;
        *(a3 + 72) = v114;
        *(a3 + 88) = v121;
        *(a3 + 40) = v100;
        *(a3 + 56) = v107;
        v68 = *(a2 + 128);
        result = *(a2 + 112);
        v69 = *(a3 + 128);
        *(a2 + 112) = *(a3 + 112);
        *(a2 + 128) = v69;
        *(a3 + 112) = result;
        *(a3 + 128) = v68;
        LODWORD(v68) = *(a2 + 136);
        *(a2 + 136) = *(a3 + 136);
        *(a3 + 136) = v68;
        v70 = *(a2 + 144);
        *(a2 + 144) = *(a3 + 144);
        *(a3 + 144) = v70;
        result.n128_u64[0] = *(a2 + 8);
        v71 = (a1 + 8);
        if (result.n128_f64[0] > *(a1 + 8))
        {
          v72 = *a1;
          *a1 = *a2;
          *a2 = v72;
          v115 = *(a1 + 72);
          v122 = *(a1 + 88);
          v129 = *(a1 + 104);
          v87 = *v71;
          v94 = *(a1 + 24);
          v101 = *(a1 + 40);
          v108 = *(a1 + 56);
          v74 = *(a2 + 24);
          v73 = *(a2 + 40);
          *v71 = *v61;
          *(a1 + 24) = v74;
          *(a1 + 40) = v73;
          v76 = *(a2 + 72);
          v75 = *(a2 + 88);
          v77 = *(a2 + 56);
          *(a1 + 104) = *(a2 + 104);
          *(a1 + 72) = v76;
          *(a1 + 88) = v75;
          *(a1 + 56) = v77;
          *v61 = v87;
          *(a2 + 24) = v94;
          *(a2 + 104) = v129;
          *(a2 + 72) = v115;
          *(a2 + 88) = v122;
          *(a2 + 40) = v101;
          *(a2 + 56) = v108;
          v78 = *(a1 + 128);
          result = *(a1 + 112);
          v79 = *(a2 + 128);
          *(a1 + 112) = *(a2 + 112);
          *(a1 + 128) = v79;
          *(a2 + 112) = result;
          *(a2 + 128) = v78;
          LODWORD(v78) = *(a1 + 136);
          *(a1 + 136) = *(a2 + 136);
          *(a2 + 136) = v78;
          v80 = *(a1 + 144);
          *(a1 + 144) = *(a2 + 144);
          *(a2 + 144) = v80;
        }
      }
    }
  }

  return result;
}

BOOL sub_1AE790B3C(uint64_t a1, uint64_t a2)
{
  v4 = 0x86BCA1AF286BCA1BLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_1AE79016C(a1, (a1 + 152), (a2 - 152));
        break;
      case 4:
        sub_1AE79016C(a1, (a1 + 152), (a1 + 304));
        v37 = (a2 - 144);
        if (*(a2 - 144) > *(a1 + 312))
        {
          v38 = (a1 + 312);
          v39 = *(a1 + 304);
          *(a1 + 304) = *(a2 - 152);
          *(a2 - 152) = v39;
          v95 = *(a1 + 376);
          v100 = *(a1 + 392);
          v104 = *(a1 + 408);
          v75 = *(a1 + 312);
          v80 = *(a1 + 328);
          v85 = *(a1 + 344);
          v90 = *(a1 + 360);
          v41 = *(a2 - 128);
          v40 = *(a2 - 112);
          *(a1 + 312) = *v37;
          *(a1 + 328) = v41;
          *(a1 + 344) = v40;
          v43 = *(a2 - 80);
          v42 = *(a2 - 64);
          v44 = *(a2 - 96);
          *(a1 + 408) = *(a2 - 48);
          *(a1 + 376) = v43;
          *(a1 + 392) = v42;
          *(a1 + 360) = v44;
          *v37 = v75;
          *(a2 - 128) = v80;
          *(a2 - 48) = v104;
          *(a2 - 80) = v95;
          *(a2 - 64) = v100;
          *(a2 - 112) = v85;
          *(a2 - 96) = v90;
          v45 = *(a1 + 432);
          v46 = *(a1 + 416);
          v47 = *(a2 - 24);
          *(a1 + 416) = *(a2 - 40);
          *(a1 + 432) = v47;
          *(a2 - 40) = v46;
          *(a2 - 24) = v45;
          v48 = (a1 + 160);
          *&v46 = *(a1 + 160);
          LODWORD(v47) = *(a1 + 440);
          *(a1 + 440) = *(a2 - 16);
          *(a2 - 16) = v47;
          v49 = *(a1 + 448);
          *(a1 + 448) = *(a2 - 8);
          *(a2 - 8) = v49;
          if (*(a1 + 312) > *&v46)
          {
            v50 = *(a1 + 152);
            v51 = *(a1 + 304);
            *(a1 + 152) = v51;
            *(a1 + 304) = v50;
            v96 = *(a1 + 224);
            v101 = *(a1 + 240);
            v105 = *(a1 + 256);
            v76 = *v48;
            v81 = *(a1 + 176);
            v86 = *(a1 + 192);
            v91 = *(a1 + 208);
            v52 = *(a1 + 328);
            *v48 = *v38;
            *(a1 + 176) = v52;
            *(a1 + 256) = *(a1 + 408);
            v53 = *(a1 + 392);
            *(a1 + 224) = *(a1 + 376);
            *(a1 + 240) = v53;
            v54 = *(a1 + 360);
            *(a1 + 192) = *(a1 + 344);
            *(a1 + 208) = v54;
            *v38 = v76;
            *(a1 + 328) = v81;
            *(a1 + 408) = v105;
            *(a1 + 376) = v96;
            *(a1 + 392) = v101;
            *(a1 + 344) = v86;
            *(a1 + 360) = v91;
            v55 = (a1 + 264);
            v56 = *(a1 + 280);
            v57 = *(a1 + 264);
            *(a1 + 264) = *(a1 + 416);
            *(a1 + 280) = *(a1 + 432);
            *(a1 + 416) = v57;
            *(a1 + 432) = v56;
            v58 = (a1 + 8);
            *&v57 = *(a1 + 8);
            v59 = *(a1 + 288);
            v60 = *(a1 + 440);
            *(a1 + 288) = v60;
            *(a1 + 440) = v59;
            v61 = *(a1 + 296);
            v62 = *(a1 + 448);
            *(a1 + 296) = v62;
            *&v54 = *(a1 + 160);
            *(a1 + 448) = v61;
            if (*&v54 > *&v57)
            {
              v63 = *a1;
              *a1 = v51;
              *(a1 + 152) = v63;
              v97 = *(a1 + 72);
              v102 = *(a1 + 88);
              v106 = *(a1 + 104);
              v77 = *v58;
              v82 = *(a1 + 24);
              v87 = *(a1 + 40);
              v92 = *(a1 + 56);
              v64 = *(a1 + 176);
              *v58 = *v48;
              *(a1 + 24) = v64;
              *(a1 + 104) = *(a1 + 256);
              v65 = *(a1 + 240);
              *(a1 + 72) = *(a1 + 224);
              *(a1 + 88) = v65;
              v66 = *(a1 + 208);
              *(a1 + 40) = *(a1 + 192);
              *(a1 + 56) = v66;
              *v48 = v77;
              *(a1 + 176) = v82;
              *(a1 + 256) = v106;
              *(a1 + 224) = v97;
              *(a1 + 240) = v102;
              *(a1 + 192) = v87;
              *(a1 + 208) = v92;
              v67 = *(a1 + 128);
              v68 = *(a1 + 112);
              *(a1 + 112) = *v55;
              *(a1 + 128) = *(a1 + 280);
              *v55 = v68;
              *(a1 + 280) = v67;
              LODWORD(v67) = *(a1 + 136);
              *(a1 + 136) = v60;
              *(a1 + 288) = v67;
              v69 = *(a1 + 144);
              *(a1 + 144) = v62;
              result = 1;
              *(a1 + 296) = v69;
              return result;
            }
          }
        }

        return 1;
      case 5:
        sub_1AE79055C(a1, a1 + 152, a1 + 304, (a1 + 456), (a2 - 152));
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = (a2 - 144);
    v6 = (a1 + 8);
    if (*(a2 - 144) > *(a1 + 8))
    {
      v7 = *a1;
      *a1 = *(a2 - 152);
      *(a2 - 152) = v7;
      v93 = *(a1 + 72);
      v98 = *(a1 + 88);
      v103 = *(a1 + 104);
      v73 = *v6;
      v78 = *(a1 + 24);
      v83 = *(a1 + 40);
      v88 = *(a1 + 56);
      v9 = *(a2 - 128);
      v8 = *(a2 - 112);
      *v6 = *v5;
      *(a1 + 24) = v9;
      *(a1 + 40) = v8;
      v11 = *(a2 - 80);
      v10 = *(a2 - 64);
      v12 = *(a2 - 96);
      *(a1 + 104) = *(a2 - 48);
      *(a1 + 72) = v11;
      *(a1 + 88) = v10;
      *(a1 + 56) = v12;
      *v5 = v73;
      *(a2 - 128) = v78;
      *(a2 - 48) = v103;
      *(a2 - 80) = v93;
      *(a2 - 64) = v98;
      *(a2 - 112) = v83;
      *(a2 - 96) = v88;
      v13 = *(a1 + 128);
      v14 = *(a1 + 112);
      v15 = *(a2 - 24);
      *(a1 + 112) = *(a2 - 40);
      *(a1 + 128) = v15;
      *(a2 - 40) = v14;
      *(a2 - 24) = v13;
      LODWORD(v13) = *(a1 + 136);
      *(a1 + 136) = *(a2 - 16);
      *(a2 - 16) = v13;
      v16 = *(a1 + 144);
      *(a1 + 144) = *(a2 - 8);
      result = 1;
      *(a2 - 8) = v16;
      return result;
    }

    return 1;
  }

LABEL_11:
  v18 = a1 + 304;
  sub_1AE79016C(a1, (a1 + 152), (a1 + 304));
  v19 = a1 + 456;
  if (a1 + 456 == a2)
  {
    return 1;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    v22 = *(v19 + 8);
    if (v22 > *(v18 + 8))
    {
      v23 = *v19;
      v84 = *(v19 + 48);
      v89 = *(v19 + 64);
      v94 = *(v19 + 80);
      v99 = *(v19 + 96);
      v74 = *(v19 + 16);
      v79 = *(v19 + 32);
      v72 = *(v19 + 112);
      *v107 = *(v19 + 120);
      *&v107[7] = *(v19 + 127);
      v24 = *(v19 + 135);
      *(v19 + 112) = 0;
      *(v19 + 120) = 0;
      *(v19 + 128) = 0;
      v70 = *(v19 + 136);
      v71 = v24;
      v25 = v20;
      v26 = *(v19 + 144);
      while (1)
      {
        v27 = a1 + v25;
        *(v27 + 456) = *(a1 + v25 + 304);
        *(v27 + 560) = *(a1 + v25 + 408);
        v28 = *(a1 + v25 + 392);
        *(v27 + 528) = *(a1 + v25 + 376);
        *(v27 + 544) = v28;
        v29 = *(a1 + v25 + 328);
        *(v27 + 464) = *(a1 + v25 + 312);
        *(v27 + 480) = v29;
        v30 = *(a1 + v25 + 360);
        *(v27 + 496) = *(a1 + v25 + 344);
        *(v27 + 512) = v30;
        v31 = (a1 + v25 + 568);
        if (*(a1 + v25 + 591) < 0)
        {
          operator delete(*v31);
        }

        *v31 = *(v27 + 416);
        *(a1 + v25 + 584) = *(v27 + 432);
        *(v27 + 439) = 0;
        *(v27 + 416) = 0;
        *(v27 + 592) = *(v27 + 440);
        *(v27 + 600) = *(v27 + 448);
        if (v25 == -304)
        {
          break;
        }

        v32 = a1 + v25;
        v33 = *(a1 + v25 + 160);
        v25 -= 152;
        if (v22 <= v33)
        {
          v34 = a1 + v25 + 456;
          v35 = (v32 + 312);
          v36 = (v32 + 416);
          goto LABEL_23;
        }
      }

      v35 = (a1 + 8);
      v36 = (a1 + 112);
      v34 = a1;
LABEL_23:
      *v34 = v23;
      *v35 = v22;
      *(v34 + 16) = v74;
      *(v34 + 32) = v79;
      *(v34 + 80) = v94;
      *(v34 + 96) = v99;
      *(v34 + 48) = v84;
      *(v34 + 64) = v89;
      if (*(v34 + 135) < 0)
      {
        operator delete(*v36);
      }

      *v36 = v72;
      *(v34 + 120) = *v107;
      *(v34 + 127) = *&v107[7];
      *(v34 + 135) = v71;
      *(v34 + 136) = v70;
      *(v34 + 144) = v26;
      if (++v21 == 8)
      {
        return v19 + 152 == a2;
      }
    }

    v18 = v19;
    v20 += 152;
    v19 += 152;
    if (v19 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_1AE791144(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 175) < 0)
      {
        operator delete(*(v2 + 152));
        if ((*(v2 + 39) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 39) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 16));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

os_log_t sub_1AE7911B4()
{
  result = os_log_create("com.apple.LanguageModeling", "Prediction");
  qword_1EB5E0F88 = result;
  return result;
}

uint64_t sub_1AE7911F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v127TokenIDLanguageModelSession20enumeratePredictionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmN2LM29CompositePredictionEnumerator16PredictionSubsetERKNS5_8functionIFbRKNS0_10PredictionEEEEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v127TokenIDLanguageModelSession20enumeratePredictionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmN2LM29CompositePredictionEnumerator16PredictionSubsetERKNS5_8functionIFbRKNS0_10PredictionEEEEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v127TokenIDLanguageModelSession20enumeratePredictionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmN2LM29CompositePredictionEnumerator16PredictionSubsetERKNS5_8functionIFbRKNS0_10PredictionEEEEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v127TokenIDLanguageModelSession20enumeratePredictionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmN2LM29CompositePredictionEnumerator16PredictionSubsetERKNS5_8functionIFbRKNS0_10PredictionEEEEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE7912A4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2433010;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE791344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v127TokenIDLanguageModelSession20enumeratePredictionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmN2LM29CompositePredictionEnumerator16PredictionSubsetERKNS5_8functionIFbRKNS0_10PredictionEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v127TokenIDLanguageModelSession20enumeratePredictionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmN2LM29CompositePredictionEnumerator16PredictionSubsetERKNS5_8functionIFbRKNS0_10PredictionEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v127TokenIDLanguageModelSession20enumeratePredictionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmN2LM29CompositePredictionEnumerator16PredictionSubsetERKNS5_8functionIFbRKNS0_10PredictionEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v127TokenIDLanguageModelSession20enumeratePredictionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmN2LM29CompositePredictionEnumerator16PredictionSubsetERKNS5_8functionIFbRKNS0_10PredictionEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE7913F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2432F90;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE791498(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v127TokenIDLanguageModelSession21_enumeratePredictionsERKNS0_17LinguisticContextEmN2LM29CompositePredictionEnumerator16PredictionSubsetElRKNSt3__18functionIFbRKNS0_10PredictionEEEEE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v127TokenIDLanguageModelSession21_enumeratePredictionsERKNS0_17LinguisticContextEmN2LM29CompositePredictionEnumerator16PredictionSubsetElRKNSt3__18functionIFbRKNS0_10PredictionEEEEE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v127TokenIDLanguageModelSession21_enumeratePredictionsERKNS0_17LinguisticContextEmN2LM29CompositePredictionEnumerator16PredictionSubsetElRKNSt3__18functionIFbRKNS0_10PredictionEEEEE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v127TokenIDLanguageModelSession21_enumeratePredictionsERKNS0_17LinguisticContextEmN2LM29CompositePredictionEnumerator16PredictionSubsetElRKNSt3__18functionIFbRKNS0_10PredictionEEEEE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE79154C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2432C00;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE7915EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v127TokenIDLanguageModelSession21_enumeratePredictionsERKNS0_17LinguisticContextEmN2LM29CompositePredictionEnumerator16PredictionSubsetElRKNSt3__18functionIFbRKNS0_10PredictionEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v127TokenIDLanguageModelSession21_enumeratePredictionsERKNS0_17LinguisticContextEmN2LM29CompositePredictionEnumerator16PredictionSubsetElRKNSt3__18functionIFbRKNS0_10PredictionEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v127TokenIDLanguageModelSession21_enumeratePredictionsERKNS0_17LinguisticContextEmN2LM29CompositePredictionEnumerator16PredictionSubsetElRKNSt3__18functionIFbRKNS0_10PredictionEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v127TokenIDLanguageModelSession21_enumeratePredictionsERKNS0_17LinguisticContextEmN2LM29CompositePredictionEnumerator16PredictionSubsetElRKNSt3__18functionIFbRKNS0_10PredictionEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE7916A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2432B80;
  a2[1] = v2;
  return result;
}

void sub_1AE791734(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (a3)
  {
    operator new();
  }

  v5[0] = &unk_1F2432AF0;
  v5[1] = a4;
  v5[2] = &v4;
  v5[3] = v5;
  sub_1AE78D358(a1, a2);
}

uint64_t sub_1AE7918A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v127TokenIDLanguageModelSession11predictionsERKNS0_17LinguisticContextEmN2LM29CompositePredictionEnumerator16PredictionSubsetEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v127TokenIDLanguageModelSession11predictionsERKNS0_17LinguisticContextEmN2LM29CompositePredictionEnumerator16PredictionSubsetEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v127TokenIDLanguageModelSession11predictionsERKNS0_17LinguisticContextEmN2LM29CompositePredictionEnumerator16PredictionSubsetEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v127TokenIDLanguageModelSession11predictionsERKNS0_17LinguisticContextEmN2LM29CompositePredictionEnumerator16PredictionSubsetEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE791914(uint64_t a1)
{
  if (*(*(a1 + 8) + 8) < *(*(a1 + 8) + 16))
  {
    operator new();
  }

  sub_1AE64BBEC(*(a1 + 8));
}

__n128 sub_1AE7919DC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2432AF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1AE791A78(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = a2;
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = *a2;
  if (a2[1] == *a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v6 + 24 * v9 + 8) - *(v6 + 24 * v9);
      if (v10)
      {
        if ((v10 >> 5) < 0x276276276276277)
        {
          operator new();
        }

        sub_1AE5CBB70();
      }

      v11 = v5;
      v12 = v8 - v7;
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1AE5CBB70();
      }

      if (0x5555555555555556 * (-v7 >> 3) > v14)
      {
        v14 = 0x5555555555555556 * (-v7 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v7 >> 3) >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        if (v15 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v16 = 24 * v13;
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      v8 = 24 * v13 + 24;
      v17 = v16 - v12;
      memcpy((v16 - v12), v7, v12);
      v26 = v17;
      v28 = 0;
      if (v7)
      {
        operator delete(v7);
      }

      v7 = v17;
      v5 = v11;
      v27 = v8;
      ++v9;
      v6 = *v11;
    }

    while (v9 < 0xAAAAAAAAAAAAAAABLL * ((v11[1] - *v11) >> 3));
  }

  v30 = 0;
  sub_1AE791F44(a5, a1, v5, a3, a4, &v26);
  if (v30 == &v29)
  {
    (*(*v30 + 32))(v30);
LABEL_25:
    if (!v7)
    {
      return;
    }

    goto LABEL_26;
  }

  if (!v30)
  {
    goto LABEL_25;
  }

  (*(*v30 + 40))();
  if (!v7)
  {
    return;
  }

LABEL_26:
  v18 = v27;
  if (v27 != v7)
  {
    v19 = v27;
    do
    {
      v21 = *(v19 - 3);
      v19 -= 24;
      v20 = v21;
      if (v21)
      {
        *(v18 - 2) = v20;
        operator delete(v20);
      }

      v18 = v19;
    }

    while (v19 != v7);
  }

  operator delete(v7);
}

void sub_1AE791DFC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, __int128 buf)
{
  sub_1AE6225EC(&buf);
  if (a2 == 1)
  {
    v26 = __cxa_begin_catch(a1);
    if (qword_1ED9ACA10 != -1)
    {
      dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
    }

    v27 = qword_1ED9AC9E0;
    if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
    {
      v28 = (*(*v26 + 16))(v26);
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "conditionalProbability";
      WORD6(buf) = 2080;
      *(&buf + 14) = v28;
      _os_log_error_impl(&dword_1AE5C8000, v27, OS_LOG_TYPE_ERROR, "%s: caught unexpected exception: %s", &buf, 0x16u);
    }

    *a12 = a19;
    *(a12 + 16) = a20;
    a20 = 0;
    a19 = 0uLL;
    __cxa_end_catch();
    if (!a21)
    {
      JUMPOUT(0x1AE791DA8);
    }

    JUMPOUT(0x1AE791D6CLL);
  }

  sub_1AE64E334(&a19);
  sub_1AE64E724(&a21);
  _Unwind_Resume(a1);
}

void *sub_1AE791F44(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = v7 - *a3;
  if (v8 != (a4[1] - *a4))
  {
    v12 = "tokens.size() == tokensMetadata.size()";
    v13 = 217;
    goto LABEL_13;
  }

  if (v8 != (a6[1] - *a6))
  {
    v12 = "tokens.size() == scoreInfos.size()";
    v13 = 218;
LABEL_13:
    __assert_rtn("combinedConditionalProbability", "TokenIDLanguageModelSession.cpp", v13, v12);
  }

  if (v7 != v6)
  {
    v9 = (v6[1] - *v6) >> 5;
    if (v9 == (*(*a4 + 8) - **a4) >> 1)
    {
      if (v9 == 0x4EC4EC4EC4EC4EC5 * ((*(*a6 + 8) - **a6) >> 3))
      {
        operator new();
      }

      v10 = 221;
      v11 = "tokens[candidate].size() == scoreInfos[candidate].size()";
    }

    else
    {
      v10 = 220;
      v11 = "tokens[candidate].size() == tokensMetadata[candidate].size()";
    }

    __assert_rtn("combinedConditionalProbability", "TokenIDLanguageModelSession.cpp", v10, v11);
  }

  return result;
}

void sub_1AE792788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void ***a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, int a43, void **a44)
{
  sub_1AE64EC9C(&a44);
  a9[1] = v44;
  sub_1AE64EA58(&a39);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&a42);
  v46 = *a9;
  if (!*a9)
  {
    _Unwind_Resume(a1);
  }

  v47 = a9[1];
  v48 = *a9;
  if (v47 != v46)
  {
    v49 = a9[1];
    do
    {
      v52 = *(v49 - 3);
      v49 -= 3;
      v51 = v52;
      if (v52)
      {
        v53 = *(v47 - 2);
        v50 = v51;
        if (v53 != v51)
        {
          do
          {
            v55 = *--v53;
            v54 = v55;
            *v53 = 0;
            if (v55)
            {
              MEMORY[0x1B2706400](v54, 0x1000C4065B674BELL);
            }
          }

          while (v53 != v51);
          v50 = *v49;
        }

        *(v47 - 2) = v51;
        operator delete(v50);
      }

      v47 = v49;
    }

    while (v49 != v46);
    v48 = *a9;
  }

  a9[1] = v46;
  operator delete(v48);
  _Unwind_Resume(a1);
}

void sub_1AE792914(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v5 = *a2;
  if (a2[1] == *a2)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v5 + v6 + 8) - *(v5 + v6);
      if (v10)
      {
        if (((v10 >> 5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AE5CBB70();
      }

      v11 = v8 - v7;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3);
      v13 = v12 + 1;
      if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1AE5CBB70();
      }

      if (0x5555555555555556 * (-v7 >> 3) > v13)
      {
        v13 = 0x5555555555555556 * (-v7 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v7 >> 3) >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        if (v14 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v15 = 24 * v12;
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      v8 = 24 * v12 + 24;
      v16 = v15 - v11;
      memcpy((v15 - v11), v7, v11);
      v23 = v16;
      v25 = 0;
      if (v7)
      {
        operator delete(v7);
      }

      v7 = v16;
      v24 = v8;
      ++v9;
      v5 = *a2;
      v6 += 24;
    }

    while (v9 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  sub_1AE791A78(a1, a2, &v23, a3, a4);
  if (v7)
  {
    if (v8 != v7)
    {
      v17 = v8;
      do
      {
        v19 = *(v17 - 3);
        v17 -= 24;
        v18 = v19;
        if (v19)
        {
          *(v8 - 16) = v18;
          operator delete(v18);
        }

        v8 = v17;
      }

      while (v17 != v7);
    }

    v24 = v7;
    operator delete(v7);
  }
}

void sub_1AE792CCC(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*a1 != a1[1])
  {
    operator new();
  }
}

void sub_1AE793008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20)
  {
    JUMPOUT(0x1AE793014);
  }

  sub_1AE64EA58(v20);
  _Unwind_Resume(a1);
}

void sub_1AE793020(void *a1, int a2)
{
  if (a2)
  {
    sub_1AE6090F0(a1);
  }

  JUMPOUT(0x1AE79303CLL);
}

void sub_1AE793044(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = xmmword_1AE79A550;
  v9 = 0;
  v10 = xmmword_1AE79A550;
  v12 = 0;
  v13 = 0;
  v11 = 0xFFEFFFFFFFFFFFFFLL;
  v15 = 0;
  sub_1AE786620(a4, a1, a2, a3, &v4, 1, v14);
}

void sub_1AE793168(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = xmmword_1AE79A550;
  v9 = 0;
  v10 = xmmword_1AE79A550;
  v12 = 0;
  v13 = 0;
  v11 = 0xFFEFFFFFFFFFFFFFLL;
  v15 = 0;
  sub_1AE786620(a4, a1, a2, a3, &v4, 1, v14);
}

BOOL sub_1AE79328C(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 72);
  std::recursive_mutex::lock((v4 + 480));
  v5 = *(a1 + 72);
  v6 = *(v5 + 464);
  v7 = *(v5 + 472);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6 && sub_1AE7096D4(v6))
  {
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

LABEL_14:
    v9 = 1;
    goto LABEL_16;
  }

  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = sub_1AE658250(*(a1 + 72), a2, 0);
  if (!v8)
  {
    v9 = 0;
    goto LABEL_16;
  }

  if (v8 != 500)
  {
    goto LABEL_14;
  }

  v9 = sub_1AE787818(*(a1 + 72), a2) != 0;
LABEL_16:
  std::recursive_mutex::unlock((v4 + 480));
  return v9;
}

void sub_1AE7933D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1AE622290(&a9);
  std::recursive_mutex::unlock((v9 + 480));
  _Unwind_Resume(a1);
}

void sub_1AE7933F4(uint64_t a1)
{
  sub_1AE79342C(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE79342C(uint64_t a1)
{
  *a1 = &unk_1F2432538;
  sub_1AE7935F0((a1 + 224));
  sub_1AE678458((a1 + 152));
  v2 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v2)
  {
    v3 = sub_1AE5CA370(v2);
    MEMORY[0x1B2706400](v3, 0x10F0C4069D522A4);
  }

  v4 = *(a1 + 128);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 80);
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    operator delete(*(a1 + 48));
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_19:
    operator delete(*(a1 + 16));
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (*(a1 + 71) < 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (*(a1 + 39) < 0)
  {
    goto LABEL_19;
  }

  return a1;
}

void ***sub_1AE7935F0(void ***a1)
{
  v2 = a1[9];
  if (v2)
  {
    v3 = a1[10];
    v4 = a1[9];
    if (v3 != v2)
    {
      v5 = a1[10];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 3;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[9];
    }

    a1[10] = v2;
    operator delete(v4);
  }

  v8 = a1[6];
  if (v8)
  {
    a1[7] = v8;
    operator delete(v8);
  }

  v9 = a1[3];
  if (v9)
  {
    v10 = a1[4];
    v11 = a1[3];
    if (v10 != v9)
    {
      v12 = a1[4];
      do
      {
        v14 = *(v12 - 3);
        v12 -= 3;
        v13 = v14;
        if (v14)
        {
          *(v10 - 2) = v13;
          operator delete(v13);
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = a1[3];
    }

    a1[4] = v9;
    operator delete(v11);
  }

  v15 = *a1;
  if (*a1)
  {
    v16 = a1[1];
    v17 = *a1;
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = *a1;
    }

    a1[1] = v15;
    operator delete(v17);
  }

  return a1;
}

uint64_t sub_1AE793710(const __CFNumber *a1)
{
  if (a1)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      switch(CFNumberGetType(a1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_27;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_20;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_35;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v6 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_35;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_12;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v6 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_24;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_27:
          LOBYTE(v9) = LOBYTE(valuePtr);
          if (!Value)
          {
            LOBYTE(v9) = 0;
          }

          v10 = SLOBYTE(valuePtr) < 0 && Value != 0;
          v11.i64[0] = Value != 0;
          v11.i64[1] = v10 << 63 >> 63;
          break;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_20:
          if (v8)
          {
            v9 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
          }

          else
          {
            v9 = 0;
          }

          goto LABEL_38;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
          goto LABEL_35;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v6 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
          goto LABEL_35;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v6 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_35;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_12:
          v7 = *&valuePtr;
          goto LABEL_36;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v6 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_24;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v6 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_35;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v6 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_35:
          v7 = LODWORD(valuePtr);
          goto LABEL_36;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v6 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_24:
          v7 = valuePtr;
LABEL_36:
          v9 = v7 | 0x100000000;
          if (!v6)
          {
            v9 = 0;
          }

LABEL_38:
          v11 = vshlq_u64(vdupq_n_s64(v9), xmmword_1AE79A770);
          break;
        default:
          LOBYTE(v9) = 0;
          v11 = 0uLL;
          break;
      }

      v12 = vandq_s8(vshlq_u64(v11, xmmword_1AE79A780), xmmword_1AE79A790);
      v4 = v12.i64[0] | v9 | v12.i64[1];
    }

    else
    {
      v5 = CFBooleanGetTypeID();
      if (v5 == CFGetTypeID(a1))
      {
        v4 = CFBooleanGetValue(a1) | 0x100000000;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFFFFFFFFFFLL;
}

void sub_1AE793E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  sub_1AE658924(&a27);
  std::recursive_mutex::unlock(v27);
  std::recursive_mutex::unlock((v28 + 480));
  _Unwind_Resume(a1);
}

void sub_1AE793F04(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[4] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[24] = 0;
  v16 = *MEMORY[0x1E69AC018];
  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v9)
  {
    if (v8 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    cf = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf = 0;
  }

  v14 = 0;
  v13[0] = a1;
  v13[1] = &v14;
  v13[2] = &v16;
  if ((a4 & 0x100000000) != 0)
  {
    a4 = a4;
  }

  else
  {
    a4 = 1;
  }

  v12 = *(a2 + 72);
  v17[0] = &unk_1F2432D10;
  v17[1] = v13;
  v17[2] = &cf;
  v17[3] = v17;
  sub_1AE6A7CB0(v12, a3, a4, 129);
}

void sub_1AE7941AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v9 = va_arg(va1, const void *);
  v11 = va_arg(va1, void);
  sub_1AE65714C(va1);
  std::recursive_mutex::unlock((v7 + 480));
  sub_1AE63109C(va);
  if ((*(v6 + 24) & 1) != 0 && *(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE794244(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v127TokenIDLanguageModelSession24bestWordMatchFromLexiconERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_8optionalIN2LM22TokenEnumerationPolicyEEEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v127TokenIDLanguageModelSession24bestWordMatchFromLexiconERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_8optionalIN2LM22TokenEnumerationPolicyEEEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v127TokenIDLanguageModelSession24bestWordMatchFromLexiconERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_8optionalIN2LM22TokenEnumerationPolicyEEEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v127TokenIDLanguageModelSession24bestWordMatchFromLexiconERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_8optionalIN2LM22TokenEnumerationPolicyEEEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE7942D0(uint64_t *a1, const __CFString *a2, CFStringRef theString, const __CFLocale *a4, _BYTE *a5, double a6)
{
  Length = CFStringGetLength(theString);
  if (Length == CFStringGetLength(a2) && (v21.length = CFStringGetLength(theString), v21.location = 0, CFStringCompareWithOptionsAndLocale(theString, a2, v21, 0, a4) == kCFCompareEqualTo))
  {
    sub_1AE5CC874(a2, &v19);
    v16 = *a1;
    if (*(*a1 + 24) == 1)
    {
      if (*(v16 + 23) < 0)
      {
        operator delete(*v16);
      }

      v17 = v19;
      *(v16 + 16) = v20;
      *v16 = v17;
    }

    else
    {
      v18 = v19;
      *(v16 + 16) = v20;
      *v16 = v18;
      *(v16 + 24) = 1;
    }

    *a1[1] = 1;
    *a5 = 1;
  }

  else if (*a1[2] < a6)
  {
    sub_1AE5CC874(a2, &v19);
    v13 = *a1;
    if (*(*a1 + 24) == 1)
    {
      if (*(v13 + 23) < 0)
      {
        operator delete(*v13);
      }

      v14 = v19;
      *(v13 + 16) = v20;
      *v13 = v14;
    }

    else
    {
      v15 = v19;
      *(v13 + 16) = v20;
      *v13 = v15;
      *(v13 + 24) = 1;
    }

    *a1[2] = a6;
  }
}

__n128 sub_1AE79444C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2432E10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1AE7944F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v127TokenIDLanguageModelSession24bestWordMatchFromLexiconERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_8optionalIN2LM22TokenEnumerationPolicyEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v127TokenIDLanguageModelSession24bestWordMatchFromLexiconERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_8optionalIN2LM22TokenEnumerationPolicyEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v127TokenIDLanguageModelSession24bestWordMatchFromLexiconERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_8optionalIN2LM22TokenEnumerationPolicyEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v127TokenIDLanguageModelSession24bestWordMatchFromLexiconERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_8optionalIN2LM22TokenEnumerationPolicyEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_1AE794588(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2432D10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1AE794624(void *a1, uint64_t a2, _DWORD *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::string *a8, int a9)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v14 = *(a2 + 72);
  std::recursive_mutex::lock((v14 + 480));
  v15 = *(a2 + 72);
  v16 = *(*a5 + 32);
  v36 = a1;
  if (*(*a5 + 24) == v16)
  {
    HIBYTE(v41) = 0;
    LOBYTE(__p[0]) = 0;
  }

  else if (*(v16 - 9) < 0)
  {
    sub_1AE5DBF1C(__p, *(v16 - 32), *(v16 - 24));
  }

  else
  {
    v17 = *(v16 - 32);
    v41 = *(v16 - 16);
    *__p = v17;
  }

  if (!a4)
  {
    goto LABEL_18;
  }

  v18 = a4;
  v19 = &a3[a4];
  while (v18 * 4)
  {
    v20 = a3[--v18];
    if (v20 == 1)
    {
      v21 = (4 * a4 - (v18 * 4 + 4)) >> 2;
      a4 = v21 + 1;
      a3 = &v19[~v21];
      break;
    }
  }

  if (!a4)
  {
    goto LABEL_18;
  }

  v22 = a4;
  while (v22 * 4)
  {
    v23 = a3[--v22];
    if (v23 != 2)
    {
      a4 -= (4 * a4 - (v22 * 4 + 4)) >> 2;
      if (!a4)
      {
        a3 = 0;
      }

      break;
    }
  }

  if (a4 < 2 || a4 == 2 && *a3 == 1)
  {
LABEL_18:
    v24 = a8;
    goto LABEL_19;
  }

  if (!a9)
  {
    if (v15[34])
    {
LABEL_44:
      v35 = v15[2];
      v45 = v15[1];
      if (v35)
      {
        if (std::__shared_weak_count::lock(v35))
        {
          operator new();
        }
      }

      sub_1AE657DFC();
    }

    goto LABEL_18;
  }

  v30 = v14;
  v31 = v15[58];
  v32 = *(v31 + 144);
  v33 = v31;
  std::recursive_mutex::lock(v31);
  if (v32)
  {
    goto LABEL_44;
  }

  std::recursive_mutex::unlock(v33);
  v24 = a8;
  v14 = v30;
LABEL_19:
  if (qword_1EB5E0A60 != -1)
  {
    dispatch_once(&qword_1EB5E0A60, &unk_1F24328F0);
  }

  sub_1AE693A80("%s %s", v38, "_dynamicInlineCompletions", "Failed to create dynamicInlineCompletion enumerator");
  if ((v39 & 0x80u) == 0)
  {
    v25 = v38;
  }

  else
  {
    v25 = v38[0];
  }

  if ((v39 & 0x80u) == 0)
  {
    v26 = v39;
  }

  else
  {
    v26 = v38[1];
  }

  std::string::append(v24, v25, v26);
  v27 = SHIBYTE(v24->__r_.__value_.__r.__words[2]);
  if (v27 < 0)
  {
    size = v24->__r_.__value_.__l.__size_;
    if (size)
    {
      v29 = v24->__r_.__value_.__r.__words[0];
      if (!*(v24->__r_.__value_.__r.__words[0] + size - 1))
      {
        v28 = size - 1;
        v24->__r_.__value_.__l.__size_ = v28;
        goto LABEL_39;
      }
    }
  }

  else if (*(&v24->__r_.__value_.__s + 23) && !v24->__r_.__value_.__s.__data_[v27 - 1])
  {
    v28 = v27 - 1;
    *(&v24->__r_.__value_.__s + 23) = v27 - 1;
    v29 = v24;
LABEL_39:
    v29->__r_.__value_.__s.__data_[v28] = 0;
  }

  std::string::push_back(v24, 10);
  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  *v36 = 0;
  v36[1] = 0;
  v36[2] = 0;
  std::recursive_mutex::unlock((v14 + 480));
}

void sub_1AE7956A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a12)
  {
    std::recursive_mutex::unlock(v60);
  }

  MEMORY[0x1B2706400](a15, 0x10B1C40C7FBE67BLL);
  sub_1AE622290(v61 - 112);
  if (a60 < 0)
  {
    operator delete(__p);
  }

  std::recursive_mutex::unlock((a14 + 480));
  sub_1AE7900F8((v61 - 248));
  _Unwind_Resume(a1);
}

uint64_t sub_1AE795A18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v127TokenIDLanguageModelSession26enumerateInlineCompletionsERKNS0_17LinguisticContextERKNS0_14CompletionStemEmmN2LM29CompositePredictionEnumerator16PredictionSubsetEbRNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERKNSB_8functionIFbRKNS0_16InlineCompletionEEEEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v127TokenIDLanguageModelSession26enumerateInlineCompletionsERKNS0_17LinguisticContextERKNS0_14CompletionStemEmmN2LM29CompositePredictionEnumerator16PredictionSubsetEbRNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERKNSB_8functionIFbRKNS0_16InlineCompletionEEEEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v127TokenIDLanguageModelSession26enumerateInlineCompletionsERKNS0_17LinguisticContextERKNS0_14CompletionStemEmmN2LM29CompositePredictionEnumerator16PredictionSubsetEbRNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERKNSB_8functionIFbRKNS0_16InlineCompletionEEEEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v127TokenIDLanguageModelSession26enumerateInlineCompletionsERKNS0_17LinguisticContextERKNS0_14CompletionStemEmmN2LM29CompositePredictionEnumerator16PredictionSubsetEbRNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERKNSB_8functionIFbRKNS0_16InlineCompletionEEEEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE795ACC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2432F10;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE795B6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v127TokenIDLanguageModelSession26enumerateInlineCompletionsERKNS0_17LinguisticContextERKNS0_14CompletionStemEmmN2LM29CompositePredictionEnumerator16PredictionSubsetEbRNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERKNSB_8functionIFbRKNS0_16InlineCompletionEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v127TokenIDLanguageModelSession26enumerateInlineCompletionsERKNS0_17LinguisticContextERKNS0_14CompletionStemEmmN2LM29CompositePredictionEnumerator16PredictionSubsetEbRNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERKNSB_8functionIFbRKNS0_16InlineCompletionEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v127TokenIDLanguageModelSession26enumerateInlineCompletionsERKNS0_17LinguisticContextERKNS0_14CompletionStemEmmN2LM29CompositePredictionEnumerator16PredictionSubsetEbRNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERKNSB_8functionIFbRKNS0_16InlineCompletionEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v127TokenIDLanguageModelSession26enumerateInlineCompletionsERKNS0_17LinguisticContextERKNS0_14CompletionStemEmmN2LM29CompositePredictionEnumerator16PredictionSubsetEbRNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERKNSB_8functionIFbRKNS0_16InlineCompletionEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE795C20(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2432E90;
  a2[1] = v2;
  return result;
}

const void **sub_1AE795CB4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1AE795CE8(int a1, CFDictionaryRef theDict)
{
  CFDictionaryGetValue(theDict, @"URL");

  sub_1AE61D968();
}

uint64_t sub_1AE795D30(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1AE79785C(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_1AE5FDA1C(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_1AE5FB314(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

uint64_t sub_1AE795DF8(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1AE79785C(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_1AE5FDA1C(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_1AE5FC274(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

void sub_1AE795EC0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v275 = a2;
  v5 = sub_1AE5FD5AC(a3, &v275, a3[11].i32[1]);
  v6 = v275;
  if (v5)
  {
    return;
  }

  while (2)
  {
    v7 = v6 + 1;
    v8 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v8 + (*v7 << 7) - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = v6 + 2;
LABEL_6:
      v275 = v7;
      goto LABEL_7;
    }

    v26 = sub_1AE617CC0(v6, v8);
    v275 = v26;
    if (!v26)
    {
      return;
    }

    v7 = v26;
LABEL_7:
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_269;
        }

        v9 = v7 - 1;
        while (2)
        {
          v275 = v9 + 1;
          if (!*(a1 + 72))
          {
            v11 = *(a1 + 68);
LABEL_16:
            sub_1AE61CF88(a1 + 56, v11 + 1);
            v10 = *(a1 + 72);
            goto LABEL_17;
          }

          sub_1AE605BA8();
          if (v12 != v13)
          {
            sub_1AE605B90();
            *(a1 + 64) = v15;
            v17 = *(v16 + 8);
            goto LABEL_22;
          }

          if (v11 == *(a1 + 68))
          {
            goto LABEL_16;
          }

LABEL_17:
          sub_1AE605BE4(v10);
          v18 = *(a1 + 56);
          if (!v18)
          {
            sub_1AE605BF0();
          }

          if (*(v18 + 24))
          {
            v24 = sub_1AE605B48();
            (*(v25 + 40))(v24, &unk_1F2429C78, 24);
          }

          v19 = sub_1AE605AD0();
          sub_1AE605BC0(v19);
          sub_1AE605BB4();
          *(a1 + 64) = v20;
          v17 = sub_1AE605B9C(v21, v22);
LABEL_22:
          v275 = sub_1AE617D04(v17, v14, a3);
          if (v275)
          {
            sub_1AE605B84();
            if (!(!v210 & v23) || *v9 != 10)
            {
              goto LABEL_267;
            }

            continue;
          }

          return;
        }

      case 2u:
        if (v8 != 18)
        {
          goto LABEL_269;
        }

        sub_1AE605BD8(*(a1 + 40) | 1);
        if (v43)
        {
          sub_1AE605BCC();
        }

        v44 = (a1 + 152);
        goto LABEL_227;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        v153 = v7 + 1;
        v152 = *v7;
        if ((v152 & 0x8000000000000000) == 0)
        {
          goto LABEL_183;
        }

        sub_1AE605AA4();
        if (v155 < 0)
        {
          v275 = sub_1AE617C78(v154, v152);
          if (!v275)
          {
            return;
          }
        }

        else
        {
          v153 = (v154 + 2);
LABEL_183:
          v275 = v153;
        }

        if ((v152 - 1) > 3)
        {
          v269 = *(a1 + 8);
          if (v269)
          {
            v270 = ((v269 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v273 = v152;
            v274 = sub_1AE5FD6EC((a1 + 8));
            v152 = v273;
            v270 = v274;
          }

          sub_1AE617B60(3, v152, v270);
        }

        else
        {
          *(a1 + 40) |= 0x800000u;
          *(a1 + 272) = v152;
        }

        goto LABEL_267;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_269;
        }

        sub_1AE605B18(*(a1 + 40) | 0x1000000);
        if ((v100 & 0x80) == 0)
        {
          goto LABEL_122;
        }

        sub_1AE605ABC();
        if (v103 < 0)
        {
          v237 = sub_1AE617C78(v102, v100);
          v275 = v237;
          *(a1 + 276) = v238;
          if (!v237)
          {
            return;
          }
        }

        else
        {
          v101 = (v102 + 2);
LABEL_122:
          v275 = v101;
          *(a1 + 276) = v100;
        }

        goto LABEL_267;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_269;
        }

        v125 = v7 - 1;
        while (1)
        {
          v275 = v125 + 1;
          if (!*(a1 + 96))
          {
            break;
          }

          sub_1AE605BA8();
          if (v12 == v13)
          {
            if (v127 == *(a1 + 92))
            {
LABEL_154:
              sub_1AE61CF88(a1 + 80, v127 + 1);
              v126 = *(a1 + 96);
            }

            sub_1AE605BE4(v126);
            v132 = *(a1 + 80);
            if (!v132)
            {
              sub_1AE605BF0();
            }

            if (*(v132 + 24))
            {
              v137 = sub_1AE605B48();
              (*(v138 + 40))(v137, &unk_1F2429C78, 24);
            }

            v133 = sub_1AE605AD0();
            sub_1AE605BC0(v133);
            sub_1AE605BB4();
            *(a1 + 88) = v134;
            v131 = sub_1AE605B9C(v135, v136);
            goto LABEL_160;
          }

          sub_1AE605B90();
          *(a1 + 88) = v129;
          v131 = *(v130 + 8);
LABEL_160:
          v275 = sub_1AE617D04(v131, v128, a3);
          if (!v275)
          {
            return;
          }

          sub_1AE605B84();
          if (!(!v210 & v23) || *v125 != 42)
          {
            goto LABEL_267;
          }
        }

        v127 = *(a1 + 92);
        goto LABEL_154;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_269;
        }

        sub_1AE605B18(*(a1 + 40) | 0x200);
        if ((v148 & 0x80) == 0)
        {
          goto LABEL_178;
        }

        sub_1AE605ABC();
        if (v151 < 0)
        {
          v251 = sub_1AE617C78(v150, v148);
          v275 = v251;
          *(a1 + 224) = v252;
          if (!v251)
          {
            return;
          }
        }

        else
        {
          v149 = (v150 + 2);
LABEL_178:
          v275 = v149;
          *(a1 + 224) = v148;
        }

        goto LABEL_267;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_269;
        }

        sub_1AE605BD8(*(a1 + 40) | 2);
        if (v43)
        {
          sub_1AE605BCC();
        }

        v44 = (a1 + 160);
        goto LABEL_227;
      case 0xAu:
        if (v8 != 85)
        {
          goto LABEL_269;
        }

        *(a1 + 40) |= 0x2000000u;
        v179 = *v7;
        v118 = v7 + 4;
        *(a1 + 280) = v179;
        goto LABEL_251;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        sub_1AE605B28(*(a1 + 40) | 0x800);
        if ((v77 & 0x8000000000000000) == 0)
        {
          goto LABEL_100;
        }

        sub_1AE605AA4();
        if (v80 < 0)
        {
          v227 = sub_1AE617C78(v79, v77);
          v275 = v227;
          *(a1 + 232) = v228;
          if (!v227)
          {
            return;
          }
        }

        else
        {
          v78 = (v79 + 2);
LABEL_100:
          v275 = v78;
          *(a1 + 232) = v77;
        }

        goto LABEL_267;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_269;
        }

        sub_1AE605B18(*(a1 + 40) | 0x400);
        if ((v180 & 0x80) == 0)
        {
          goto LABEL_234;
        }

        sub_1AE605ABC();
        if (v183 < 0)
        {
          v257 = sub_1AE617C78(v182, v180);
          v275 = v257;
          *(a1 + 228) = v258;
          if (!v257)
          {
            return;
          }
        }

        else
        {
          v181 = (v182 + 2);
LABEL_234:
          v275 = v181;
          *(a1 + 228) = v180;
        }

        goto LABEL_267;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_269;
        }

        sub_1AE605B18(*(a1 + 40) | 0x1000);
        if ((v91 & 0x80) == 0)
        {
          goto LABEL_113;
        }

        sub_1AE605ABC();
        if (v94 < 0)
        {
          v233 = sub_1AE617C78(v93, v91);
          v275 = v233;
          *(a1 + 240) = v234;
          if (!v233)
          {
            return;
          }
        }

        else
        {
          v92 = (v93 + 2);
LABEL_113:
          v275 = v92;
          *(a1 + 240) = v91;
        }

        goto LABEL_267;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_269;
        }

        sub_1AE605B18(*(a1 + 40) | 0x4000000);
        if ((v139 & 0x80) == 0)
        {
          goto LABEL_169;
        }

        sub_1AE605ABC();
        if (v142 < 0)
        {
          v247 = sub_1AE617C78(v141, v139);
          v275 = v247;
          *(a1 + 284) = v248;
          if (!v247)
          {
            return;
          }
        }

        else
        {
          v140 = (v141 + 2);
LABEL_169:
          v275 = v140;
          *(a1 + 284) = v139;
        }

        goto LABEL_267;
      case 0xFu:
        if (v8 != 125)
        {
          goto LABEL_269;
        }

        *(a1 + 40) |= 0x8000000u;
        v119 = *v7;
        v118 = v7 + 4;
        *(a1 + 288) = v119;
        goto LABEL_251;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_269;
        }

        sub_1AE605B18(*(a1 + 40) | 0x10000000);
        if ((v59 & 0x80) == 0)
        {
          goto LABEL_76;
        }

        sub_1AE605ABC();
        if (v62 < 0)
        {
          v225 = sub_1AE617C78(v61, v59);
          v275 = v225;
          *(a1 + 292) = v226;
          if (!v225)
          {
            return;
          }
        }

        else
        {
          v60 = (v61 + 2);
LABEL_76:
          v275 = v60;
          *(a1 + 292) = v59;
        }

        goto LABEL_267;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        sub_1AE605B18(*(a1 + 40) | 0x20000000);
        if ((v170 & 0x80) == 0)
        {
          goto LABEL_217;
        }

        sub_1AE605ABC();
        if (v173 < 0)
        {
          v253 = sub_1AE617C78(v172, v170);
          v275 = v253;
          *(a1 + 296) = v254;
          if (!v253)
          {
            return;
          }
        }

        else
        {
          v171 = (v172 + 2);
LABEL_217:
          v275 = v171;
          *(a1 + 296) = v170;
        }

        goto LABEL_267;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        sub_1AE605B18(*(a1 + 40) | 0x40000000);
        if ((v174 & 0x80) == 0)
        {
          goto LABEL_222;
        }

        sub_1AE605ABC();
        if (v177 < 0)
        {
          v255 = sub_1AE617C78(v176, v174);
          v275 = v255;
          *(a1 + 300) = v256;
          if (!v255)
          {
            return;
          }
        }

        else
        {
          v175 = (v176 + 2);
LABEL_222:
          v275 = v175;
          *(a1 + 300) = v174;
        }

        goto LABEL_267;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_269;
        }

        sub_1AE605B38(*(a1 + 44) | 1);
        if (v192 < 0 && (sub_1AE605AA4(), v195 < 0))
        {
          sub_1AE617C78(v194, v193);
          sub_1AE605AF8();
          *(a1 + 308) = v263;
          if (!v264)
          {
            return;
          }
        }

        else
        {
          sub_1AE605B08();
          *(a1 + 308) = v196;
        }

        goto LABEL_267;
      case 0x14u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        sub_1AE605B18(*(a1 + 40) | 0x80000000);
        if ((v188 & 0x80) == 0)
        {
          goto LABEL_244;
        }

        sub_1AE605ABC();
        if (v191 < 0)
        {
          v261 = sub_1AE617C78(v190, v188);
          v275 = v261;
          *(a1 + 304) = v262;
          if (!v261)
          {
            return;
          }
        }

        else
        {
          v189 = (v190 + 2);
LABEL_244:
          v275 = v189;
          *(a1 + 304) = v188;
        }

        goto LABEL_267;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_269;
        }

        sub_1AE605B38(*(a1 + 44) | 2);
        if (v45 < 0 && (sub_1AE605AA4(), v48 < 0))
        {
          sub_1AE617C78(v47, v46);
          sub_1AE605AF8();
          *(a1 + 309) = v219;
          if (!v220)
          {
            return;
          }
        }

        else
        {
          sub_1AE605B08();
          *(a1 + 309) = v49;
        }

        goto LABEL_267;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_269;
        }

        sub_1AE605B38(*(a1 + 44) | 8);
        if (v120 < 0 && (sub_1AE605AA4(), v123 < 0))
        {
          sub_1AE617C78(v122, v121);
          sub_1AE605AF8();
          *(a1 + 311) = v245;
          if (!v246)
          {
            return;
          }
        }

        else
        {
          sub_1AE605B08();
          *(a1 + 311) = v124;
        }

        goto LABEL_267;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_269;
        }

        sub_1AE605B38(*(a1 + 44) | 4);
        if (v198 < 0 && (sub_1AE605AA4(), v201 < 0))
        {
          sub_1AE617C78(v200, v199);
          sub_1AE605AF8();
          *(a1 + 310) = v265;
          if (!v266)
          {
            return;
          }
        }

        else
        {
          sub_1AE605B08();
          *(a1 + 310) = v202;
        }

        goto LABEL_267;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_269;
        }

        sub_1AE605B28(*(a1 + 40) | 0x4000);
        if (v54 < 0 && (sub_1AE605AA4(), v57 < 0))
        {
          sub_1AE617C78(v56, v55);
          sub_1AE605AF8();
          *(a1 + 245) = v223;
          if (!v224)
          {
            return;
          }
        }

        else
        {
          sub_1AE605B08();
          *(a1 + 245) = v58;
        }

        goto LABEL_267;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_269;
        }

        sub_1AE605B28(*(a1 + 40) | 0x10000);
        if (v113 < 0 && (sub_1AE605AA4(), v116 < 0))
        {
          sub_1AE617C78(v115, v114);
          sub_1AE605AF8();
          *(a1 + 247) = v243;
          if (!v244)
          {
            return;
          }
        }

        else
        {
          sub_1AE605B08();
          *(a1 + 247) = v117;
        }

        goto LABEL_267;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_269;
        }

        sub_1AE605B28(*(a1 + 40) | 0x8000);
        if (v81 < 0 && (sub_1AE605AA4(), v84 < 0))
        {
          sub_1AE617C78(v83, v82);
          sub_1AE605AF8();
          *(a1 + 246) = v229;
          if (!v230)
          {
            return;
          }
        }

        else
        {
          sub_1AE605B08();
          *(a1 + 246) = v85;
        }

        goto LABEL_267;
      case 0x1Eu:
        if (v8 != 242)
        {
          goto LABEL_269;
        }

        v156 = v7 - 2;
        while (1)
        {
          v275 = v156 + 2;
          if (!*(a1 + 120))
          {
            break;
          }

          sub_1AE605BA8();
          if (v12 == v13)
          {
            if (v158 == *(a1 + 116))
            {
LABEL_194:
              sub_1AE61CF88(a1 + 104, v158 + 1);
              v157 = *(a1 + 120);
            }

            sub_1AE605BE4(v157);
            v163 = *(a1 + 104);
            if (!v163)
            {
              sub_1AE605BF0();
            }

            if (*(v163 + 24))
            {
              v168 = sub_1AE605B48();
              (*(v169 + 40))(v168, &unk_1F2429C78, 24);
            }

            v164 = sub_1AE605AD0();
            sub_1AE605BC0(v164);
            sub_1AE605BB4();
            *(a1 + 112) = v165;
            v162 = sub_1AE605B9C(v166, v167);
            goto LABEL_200;
          }

          sub_1AE605B90();
          *(a1 + 112) = v160;
          v162 = *(v161 + 8);
LABEL_200:
          v275 = sub_1AE617D04(v162, v159, a3);
          if (!v275)
          {
            return;
          }

          sub_1AE605B84();
          if (!(!v210 & v23) || *v156 != 498)
          {
            goto LABEL_267;
          }
        }

        v158 = *(a1 + 116);
        goto LABEL_194;
      case 0x1Fu:
        if (v8 != 250)
        {
          goto LABEL_269;
        }

        v63 = v7 - 2;
        break;
      case 0x20u:
        if (v8)
        {
          goto LABEL_269;
        }

        sub_1AE605B38(*(a1 + 44) | 0x10);
        if (v38 < 0 && (sub_1AE605AA4(), v41 < 0))
        {
          sub_1AE617C78(v40, v39);
          sub_1AE605AF8();
          *(a1 + 312) = v217;
          if (!v218)
          {
            return;
          }
        }

        else
        {
          sub_1AE605B08();
          *(a1 + 312) = v42;
        }

        goto LABEL_267;
      case 0x21u:
        if (v8 != 8)
        {
          goto LABEL_269;
        }

        sub_1AE605B38(*(a1 + 44) | 0x20);
        if (v203 < 0 && (sub_1AE605AA4(), v206 < 0))
        {
          sub_1AE617C78(v205, v204);
          sub_1AE605AF8();
          *(a1 + 313) = v267;
          if (!v268)
          {
            return;
          }
        }

        else
        {
          sub_1AE605B08();
          *(a1 + 313) = v207;
        }

        goto LABEL_267;
      case 0x22u:
        if (v8 != 16)
        {
          goto LABEL_269;
        }

        sub_1AE605B28(*(a1 + 40) | 0x40000);
        if (v95 < 0 && (sub_1AE605AA4(), v98 < 0))
        {
          sub_1AE617C78(v97, v96);
          sub_1AE605AF8();
          *(a1 + 249) = v235;
          if (!v236)
          {
            return;
          }
        }

        else
        {
          sub_1AE605B08();
          *(a1 + 249) = v99;
        }

        goto LABEL_267;
      case 0x23u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        sub_1AE605B28(*(a1 + 40) | 0x20000);
        if (v104 < 0 && (sub_1AE605AA4(), v107 < 0))
        {
          sub_1AE617C78(v106, v105);
          sub_1AE605AF8();
          *(a1 + 248) = v239;
          if (!v240)
          {
            return;
          }
        }

        else
        {
          sub_1AE605B08();
          *(a1 + 248) = v108;
        }

        goto LABEL_267;
      case 0x24u:
        if (v8 != 34)
        {
          goto LABEL_269;
        }

        sub_1AE605BD8(*(a1 + 40) | 4);
        if (v43)
        {
          sub_1AE605BCC();
        }

        v44 = (a1 + 168);
        goto LABEL_227;
      case 0x28u:
        if (v8 != 64)
        {
          goto LABEL_269;
        }

        sub_1AE605B18(*(a1 + 40) | 0x100000);
        if ((v109 & 0x80) == 0)
        {
          goto LABEL_135;
        }

        sub_1AE605ABC();
        if (v112 < 0)
        {
          v241 = sub_1AE617C78(v111, v109);
          v275 = v241;
          *(a1 + 252) = v242;
          if (!v241)
          {
            return;
          }
        }

        else
        {
          v110 = (v111 + 2);
LABEL_135:
          v275 = v110;
          *(a1 + 252) = v109;
        }

        goto LABEL_267;
      case 0x29u:
        if (v8 != 72)
        {
          goto LABEL_269;
        }

        sub_1AE605B5C(*(a1 + 44) | 0x40);
        if ((v31 & 0x80) == 0)
        {
          goto LABEL_38;
        }

        sub_1AE605ABC();
        if (v34 < 0)
        {
          v215 = sub_1AE617C78(v33, v31);
          v275 = v215;
          *(a1 + 316) = v216;
          if (!v215)
          {
            return;
          }
        }

        else
        {
          v32 = (v33 + 2);
LABEL_38:
          v275 = v32;
          *(a1 + 316) = v31;
        }

        goto LABEL_267;
      case 0x2Au:
        if (v8 != 80)
        {
          goto LABEL_269;
        }

        sub_1AE605B5C(*(a1 + 44) | 0x80);
        if ((v50 & 0x80) == 0)
        {
          goto LABEL_67;
        }

        sub_1AE605ABC();
        if (v53 < 0)
        {
          v221 = sub_1AE617C78(v52, v50);
          v275 = v221;
          *(a1 + 320) = v222;
          if (!v221)
          {
            return;
          }
        }

        else
        {
          v51 = (v52 + 2);
LABEL_67:
          v275 = v51;
          *(a1 + 320) = v50;
        }

        goto LABEL_267;
      case 0x2Bu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        sub_1AE605B5C(*(a1 + 44) | 0x100);
        if ((v184 & 0x80) == 0)
        {
          goto LABEL_239;
        }

        sub_1AE605ABC();
        if (v187 < 0)
        {
          v259 = sub_1AE617C78(v186, v184);
          v275 = v259;
          *(a1 + 324) = v260;
          if (!v259)
          {
            return;
          }
        }

        else
        {
          v185 = (v186 + 2);
LABEL_239:
          v275 = v185;
          *(a1 + 324) = v184;
        }

        goto LABEL_267;
      case 0x2Cu:
        if (v8 != 98)
        {
          goto LABEL_269;
        }

        sub_1AE605B6C(*(a1 + 40) | 8);
        if (v35)
        {
          sub_1AE605B78();
        }

        v36 = &off_1EB5E01A8;
        v37 = (a1 + 176);
        goto LABEL_264;
      case 0x2Du:
        if (v8 != 106)
        {
          goto LABEL_269;
        }

        sub_1AE605B6C(*(a1 + 40) | 0x10);
        if (v35)
        {
          sub_1AE605B78();
        }

        v36 = &off_1EB5E0128;
        v37 = (a1 + 184);
        goto LABEL_264;
      case 0x2Eu:
        if (v8 != 114)
        {
          goto LABEL_269;
        }

        sub_1AE605B6C(*(a1 + 40) | 0x20);
        if (v35)
        {
          sub_1AE605B78();
        }

        v36 = &off_1EB5E0148;
        v37 = (a1 + 192);
        goto LABEL_264;
      case 0x2Fu:
        if (v8 != 122)
        {
          goto LABEL_269;
        }

        sub_1AE605B6C(*(a1 + 40) | 0x40);
        if (v35)
        {
          sub_1AE605B78();
        }

        v36 = &off_1EB5E0168;
        v37 = (a1 + 200);
        goto LABEL_264;
      case 0x30u:
        if (v8 != 130)
        {
          goto LABEL_269;
        }

        sub_1AE605B6C(*(a1 + 40) | 0x80);
        if (v35)
        {
          sub_1AE605B78();
        }

        v36 = &off_1EB5E0188;
        v37 = (a1 + 208);
LABEL_264:
        v178 = sub_1AE609CF4(v37, v36, v35);
        goto LABEL_265;
      case 0x31u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        sub_1AE605B28(*(a1 + 40) | 0x80000);
        if (v86 < 0 && (sub_1AE605AA4(), v89 < 0))
        {
          sub_1AE617C78(v88, v87);
          sub_1AE605AF8();
          *(a1 + 250) = v231;
          if (!v232)
          {
            return;
          }
        }

        else
        {
          sub_1AE605B08();
          *(a1 + 250) = v90;
        }

        goto LABEL_267;
      case 0x32u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        sub_1AE605B28(*(a1 + 40) | 0x2000);
        if (v143 < 0 && (sub_1AE605AA4(), v146 < 0))
        {
          sub_1AE617C78(v145, v144);
          sub_1AE605AF8();
          *(a1 + 244) = v249;
          if (!v250)
          {
            return;
          }
        }

        else
        {
          sub_1AE605B08();
          *(a1 + 244) = v147;
        }

        goto LABEL_267;
      case 0x33u:
        if (v8 != 157)
        {
          goto LABEL_269;
        }

        *(a1 + 40) |= 0x200000u;
        v197 = *v7;
        v118 = v7 + 4;
        *(a1 + 256) = v197;
LABEL_251:
        v275 = v118;
        goto LABEL_267;
      case 0x34u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        sub_1AE605B28(*(a1 + 40) | 0x400000);
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        sub_1AE605AA4();
        if (v30 < 0)
        {
          v213 = sub_1AE617C78(v29, v27);
          v275 = v213;
          *(a1 + 264) = v214;
          if (!v213)
          {
            return;
          }
        }

        else
        {
          v28 = (v29 + 2);
LABEL_33:
          v275 = v28;
          *(a1 + 264) = v27;
        }

        goto LABEL_267;
      case 0x35u:
        if (v8 != 170)
        {
          goto LABEL_269;
        }

        sub_1AE605BD8(*(a1 + 40) | 0x100);
        if (v43)
        {
          sub_1AE605BCC();
        }

        v44 = (a1 + 216);
LABEL_227:
        v178 = sub_1AE609BE8(v44, v43);
LABEL_265:
        v208 = sub_1AE617D04(v178, v275, a3);
        goto LABEL_266;
      default:
LABEL_269:
        if (v8)
        {
          v210 = (v8 & 7) == 4;
        }

        else
        {
          v210 = 1;
        }

        if (v210)
        {
          a3[10].i32[0] = v8 - 1;
          return;
        }

        if (v8 < 0x640)
        {
          v211 = *(a1 + 8);
          if (v211)
          {
            v212 = (v211 & 0xFFFFFFFFFFFFFFFELL) + 8;
          }

          else
          {
            v271 = v8;
            v272 = sub_1AE5FD6EC((a1 + 8));
            v8 = v271;
            v212 = v272;
            v7 = v275;
          }

          v208 = sub_1AE6181C0(v8, v212, v7, a3);
        }

        else
        {
          v208 = sub_1AE6103F8((a1 + 16), v8, v7, &unk_1EB5E10C8, (a1 + 8), a3);
        }

LABEL_266:
        v275 = v208;
        if (!v208)
        {
          return;
        }

LABEL_267:
        v209 = sub_1AE5FD5AC(a3, &v275, a3[11].i32[1]);
        v6 = v275;
        if (v209)
        {
          return;
        }

        continue;
    }

    break;
  }

  while (1)
  {
    v275 = v63 + 2;
    if (!*(a1 + 144))
    {
      break;
    }

    sub_1AE605BA8();
    if (v12 == v13)
    {
      if (v65 == *(a1 + 140))
      {
LABEL_85:
        sub_1AE61CF88(a1 + 128, v65 + 1);
        v64 = *(a1 + 144);
      }

      sub_1AE605BE4(v64);
      v70 = *(a1 + 128);
      if (!v70)
      {
        sub_1AE605BF0();
      }

      if (*(v70 + 24))
      {
        v75 = sub_1AE605B48();
        (*(v76 + 40))(v75, &unk_1F2429C78, 24);
      }

      v71 = sub_1AE605AD0();
      sub_1AE605BC0(v71);
      sub_1AE605BB4();
      *(a1 + 136) = v72;
      v69 = sub_1AE605B9C(v73, v74);
      goto LABEL_91;
    }

    sub_1AE605B90();
    *(a1 + 136) = v67;
    v69 = *(v68 + 8);
LABEL_91:
    v275 = sub_1AE617D04(v69, v66, a3);
    if (!v275)
    {
      return;
    }

    sub_1AE605B84();
    if (!(!v210 & v23) || *v63 != 506)
    {
      goto LABEL_267;
    }
  }

  v65 = *(a1 + 140);
  goto LABEL_85;
}

uint64_t sub_1AE796F30(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1AE79785C(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_1AE5FDA1C(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_1AE6019A0(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

uint64_t sub_1AE796FF8(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1AE79785C(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_1AE5FDA1C(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_1AE6028F0(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

void sub_1AE7970C0(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    v9 = sub_1AE79785C(a3, v7);
    if (!v9)
    {
      return;
    }

    v8 = v9;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_1AE5FDA1C(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 == v13)
  {
    v14 = v11;
    sub_1AE795EC0(a2, v8, a1);
    if (v15)
    {
      ++a1[11].i32[0];
      if (!a1[10].i32[0])
      {
        v16 = a1[3].i32[1] + v14;
        a1[3].i32[1] = v16;
        *a1 = (*&a1[1] + (v16 & (v16 >> 31)));
      }
    }
  }
}

uint64_t sub_1AE797188(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1AE79785C(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_1AE5FDA1C(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_1AE600D18(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

uint64_t sub_1AE797250(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1AE79785C(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_1AE5FDA1C(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_1AE6020BC(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

void sub_1AE797318(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) <= 0x100u)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 16);
    v6 = &v5[32 * *(a1 + 10)];
    v7 = *(a2 + 16);
    if (v4 > 0x100)
    {
      v12 = sub_1AE60F0EC(v5, v6, *v7, (v7 + 8));
    }

    else
    {
      v8 = 0;
      v9 = v7 + 32 * *(a2 + 10);
      if (*(a1 + 10) && *(a2 + 10))
      {
        v8 = 0;
        do
        {
          if (*v5 == *v7)
          {
            v10 = v5 + 32;
          }

          else
          {
            v10 = v5;
          }

          if (*v5 < *v7)
          {
            v5 += 32;
          }

          else
          {
            v7 += 32;
            v5 = v10;
          }

          ++v8;
        }

        while (v5 != v6 && v7 != v9);
      }

      v12 = v8 + ((v9 - v7) >> 5) + ((v6 - v5) >> 5);
    }

    sub_1AE60EF2C(a1, v12);
  }

  v13 = *(a2 + 16);
  if (*(a2 + 8) >= 0x101u)
  {
    v19 = *v13;
    v18 = v13 + 2;
    v17 = v19;

    sub_1AE6150C4(v17, v18, a1);
  }

  else if (*(a2 + 10))
  {
    v14 = &v13[8 * *(a2 + 10)];
    v15 = v13;
    do
    {
      v16 = *v15;
      v15 += 8;
      sub_1AE60F1F4(a1, v16, v13 + 1);
      v13 = v15;
    }

    while (v15 != v14);
  }
}

uint64_t sub_1AE79744C()
{
  sub_1AE6171B4();
  sub_1AE617194();
  sub_1AE617180();
  sub_1AE615530(v2, v3, v4);
  sub_1AE6171A4();
  v5 = sub_1AE6171D4();
  v7 = v6(v5);
  result = 0;
  if (v7)
  {
    if ((v1 & 2) != 0)
    {
      return 1;
    }

    sub_1AE6171C8();
    if ((*(v9 + 48))(v0))
    {
      return 1;
    }

    else
    {
      sub_1AE616870(v0);
      return 0;
    }
  }

  return result;
}

_OWORD *sub_1AE79753C()
{
  sub_1AE61A334();
  if (*(v6 + 23) < 0)
  {
    **v1 = 0;
    *(v1 + 8) = 0;
  }

  else
  {
    *v1 = 0;
    *(v1 + 23) = 0;
  }

  v7 = *(v2 + 8);
  if (v7 - v3 + *(v2 + 28) >= v0)
  {
    v8 = *(v1 + 23);
    if (v8 < 0)
    {
      v8 = *(v1 + 8);
    }

    sub_1AE61A2F4(v8);
    v7 = *(v2 + 8);
  }

  v9 = v7 - v3 + 16;
  while (1)
  {
    v10 = __OFSUB__(v0, v9);
    v0 -= v9;
    if ((v0 < 0) ^ v10 | (v0 == 0))
    {
      sub_1AE61A348(v4, v5);
      v11 = sub_1AE60AE3C(v16, "CHECK failed: size > chunk_size: ");
      sub_1AE60AF78(&v15, &v11->__r_.__value_.__l.__data_);
      v4 = sub_1AE60AF80(v16);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    sub_1AE61A368(v4, v5, v9);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = sub_1AE617288(v2);
    if (!result)
    {
      return result;
    }

    sub_1AE61A31C();
    if (v14 ^ v10 | v13)
    {
      sub_1AE61A368(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_1AE797650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_1AE797668()
{
  sub_1AE61A334();
  v6 = *(v4 + 8);
  if (v6 - v5 + *(v4 + 28) >= v7)
  {
    v8 = *(v1 + 23);
    if (v8 < 0)
    {
      v8 = *(v1 + 8);
    }

    sub_1AE61A2F4(v8);
    v6 = *(v2 + 8);
  }

  v9 = v6 - v3 + 16;
  while (1)
  {
    v10 = __OFSUB__(v0, v9);
    v0 -= v9;
    if ((v0 < 0) ^ v10 | (v0 == 0))
    {
      sub_1AE61A348(v4, v5);
      v11 = sub_1AE60AE3C(v16, "CHECK failed: size > chunk_size: ");
      sub_1AE60AF78(&v15, &v11->__r_.__value_.__l.__data_);
      v4 = sub_1AE60AF80(v16);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    sub_1AE61A368(v4, v5, v9);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = sub_1AE617288(v2);
    if (!result)
    {
      return result;
    }

    sub_1AE61A31C();
    if (v14 ^ v10 | v13)
    {
      sub_1AE61A368(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_1AE79775C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE797774(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1AE79785C(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v15;
  }

  else
  {
    v8 = (a3 + 1);
  }

  v9 = sub_1AE5FDA1C(a1, v8, v7);
  v10 = *(a1 + 88);
  v11 = __OFSUB__(v10--, 1);
  *(a1 + 88) = v10;
  if (v10 < 0 == v11)
  {
    v12 = v9;
    result = (*(*a2 + 88))(a2, v8, a1);
    if (!result)
    {
      return result;
    }

    ++*(a1 + 88);
    if (!*(a1 + 80))
    {
      v14 = *(a1 + 28) + v12;
      *(a1 + 28) = v14;
      *a1 = *(a1 + 8) + (v14 & (v14 >> 31));
      return result;
    }
  }

  return 0;
}

uint64_t sub_1AE79785C(uint64_t a1, int a2)
{
  result = a1 + 2;
  v4 = -21;
  while (1)
  {
    a2 += (*(result - 1) - 1) << (v4 + 28);
    if ((*(result - 1) & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v4 += 7;
    if (!v4)
    {
      v5 = *(a1 + 4);
      v6 = a1 + 5;
      if (a2 + (v5 << 28) - 0x10000000 > 0x7FFFFFEF)
      {
        v6 = 0;
      }

      if (v5 <= 7)
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex)
{
  v2 = MEMORY[0x1EEDB7A68](theString, theIndex);
  result.length = v3;
  result.location = v2;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A08](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A18](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

uint64_t std::filebuf::basic_filebuf()
{
  return MEMORY[0x1EEE63D80]();
}

{
  return MEMORY[0x1EEE63D88]();
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x1EEE63E20]();
}

{
  return MEMORY[0x1EEE63E28]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EB0]();
}

{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63EC8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

{
  return MEMORY[0x1EEE63F00]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}