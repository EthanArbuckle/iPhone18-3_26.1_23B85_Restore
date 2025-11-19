uint64_t sub_2DFE70(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(*&v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = (a1 - v15);
    if (*v17 >= 5u)
    {
      v18 = v17[2];
      if (v17[2])
      {
        v19 = &v3[v18];
        if ((v19 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v19 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v19)
        {
          return 0;
        }

        v20 = *(*&v2 + v19);
        if (v20 < 1 || v4 - 1 < v19 + v20)
        {
          return 0;
        }

        v21 = (a1 + v18);
        v22 = (a1 + v18 + *(a1 + v18));
        v23 = v22 - *&v2;
        if ((v23 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v23 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v23)
        {
          return 0;
        }

        v24 = *v22;
        if (v24 > 0x1FFFFFFE)
        {
          return 0;
        }

        v25 = 4 * v24 + 4;
        v6 = v4 >= v25;
        v26 = v4 - v25;
        if (v26 == 0 || !v6 || v26 < v23)
        {
          return 0;
        }

        v28 = (v21 + *v21);
        if (*v28)
        {
          v46 = a1;
          v29 = 0;
          v30 = v28 + 1;
          while (1)
          {
            v31 = a2;
            if ((sub_2E0228((v30 + *v30), a2) & 1) == 0)
            {
              return 0;
            }

            ++v29;
            ++v30;
            a2 = v31;
            if (v29 >= *v28)
            {
              a1 = v46;
              v16 = -*v46;
              break;
            }
          }
        }
      }
    }

    v32 = a1 + v16;
    if (*(a1 + v16) >= 7u)
    {
      v33 = *(v32 + 3);
      if (*(v32 + 3))
      {
        v34 = a1 + v33 - *a2;
        if (v34 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v35 = *(a2 + 8);
        if (v35 < 5 || v35 - 4 < v34)
        {
          return v13;
        }

        v36 = *(*a2 + v34);
        if (v36 < 1)
        {
          return 0;
        }

        if (v35 - 1 < v34 + v36)
        {
          return 0;
        }

        v37 = (a1 + v33);
        v38 = (v37 + *v37);
        v39 = v38 - *a2;
        if (v39 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v40 = *(a2 + 8);
        if (v40 < 5 || v40 - 4 < v39)
        {
          return v13;
        }

        v41 = *v38;
        if (v41 > 0x1FFFFFFE)
        {
          return 0;
        }

        v42 = 4 * v41 + 4;
        v6 = v40 >= v42;
        v43 = v40 - v42;
        if (v43 == 0 || !v6 || v43 < v39)
        {
          return 0;
        }

        v45 = a2;
        if (!sub_2E019C(a2, (v37 + *v37)))
        {
          return 0;
        }

LABEL_69:
        --*(v45 + 40);
        return 1;
      }
    }

    v45 = a2;
    if (sub_2E019C(a2, 0))
    {
      goto LABEL_69;
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2E019C(uint32x2_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E2C88((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2E0228(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (v12)
  {
    result = 0;
    if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v12)
    {
      return result;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13)
  {
    return 0;
  }

  v6 = v4 >= v13;
  v14 = v4 - v13;
  if (v14 == 0 || !v6 || v14 < v12)
  {
    return 0;
  }

  v16 = a1;
  v17 = (a1 - *a1);
  v18 = *v17;
  v19 = a2;
  if (v18 >= 5)
  {
    if (v17[2])
    {
      v20 = &v3[v17[2]];
      if (v20 & 7) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      result = 0;
      if (v4 < 9 || v4 - 8 < v20)
      {
        return result;
      }
    }

    v16 = a1;
    if (v18 < 7)
    {
      goto LABEL_57;
    }

    if (v17[3])
    {
      v21 = &v3[v17[3]];
      if (v21 & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      result = 0;
      if (v4 < 9 || v4 - 8 < v21)
      {
        return result;
      }
    }

    v16 = a1;
    if (v18 < 9)
    {
      goto LABEL_57;
    }

    v22 = v17[4];
    if (!v22)
    {
      goto LABEL_57;
    }

    v23 = &v3[v22];
    if ((v23 & 3) != 0)
    {
      result = 0;
      if (v5 < v23 || (*(a2 + 24) & 1) != 0)
      {
        return result;
      }
    }

    else if (v5 < v23)
    {
      return 0;
    }

    v24 = *(v2 + v23);
    if (v24 < 1 || v4 - 1 < v23 + v24)
    {
      return 0;
    }

    v25 = (a1 + v22);
    v26 = (a1 + v22 + *(a1 + v22));
    v27 = v26 - v2;
    if ((v27 & 3) != 0)
    {
      result = 0;
      if (v5 < v27 || (*(a2 + 24) & 1) != 0)
      {
        return result;
      }
    }

    else if (v5 < v27)
    {
      return 0;
    }

    v94 = a1;
    v28 = *v26;
    if (v28 <= 0x1FFFFFFE)
    {
      result = 0;
      v29 = 4 * v28 + 4;
      v30 = v4 > v29;
      v31 = v4 - v29;
      if (!v30 || v31 < v27)
      {
        return result;
      }

      v32 = (v25 + *v25);
      v16 = a1;
      if (*v32)
      {
        v33 = 0;
        v34 = v32 + 1;
        while (1)
        {
          v35 = v34;
          if ((sub_2E0CE0((v34 + *v34), a2) & 1) == 0)
          {
            return 0;
          }

          ++v33;
          v34 = v35 + 1;
          a2 = v19;
          v16 = v94;
          if (v33 >= *v32)
          {
            goto LABEL_57;
          }
        }
      }

      goto LABEL_57;
    }

    return 0;
  }

LABEL_57:
  v36 = v16;
  result = sub_2CDF90(v16, a2, 0xCu);
  if (!result)
  {
    return result;
  }

  v37 = v36;
  v38 = *v36;
  v39 = -v38;
  v40 = (v36 - v38);
  if (*v40 < 0xDu)
  {
LABEL_62:
    v42 = v19;
    goto LABEL_63;
  }

  v41 = v40[6];
  v42 = v19;
  if (v41)
  {
    result = sub_2CE100(v19, (v36 + v41 + *(v36 + v41)), 4uLL, 0);
    if (!result)
    {
      return result;
    }

    v37 = v36;
    v39 = -*v36;
    goto LABEL_62;
  }

LABEL_63:
  v43 = (v37 + v39);
  if (*v43 >= 0xDu && (v44 = v43[6]) != 0)
  {
    v45 = (v37 + v44 + *(v37 + v44));
  }

  else
  {
    v45 = 0;
  }

  result = sub_2E0A24(v42, v45);
  if (result)
  {
    result = sub_2CDF90(v36, v19, 0xEu);
    if (result)
    {
      v46 = (v36 - *v36);
      if (*v46 < 0xFu)
      {
        v49 = 0;
        v48 = v19;
      }

      else
      {
        v47 = v46[7];
        v48 = v19;
        v49 = v47 ? (v36 + v47 + *(v36 + v47)) : 0;
      }

      result = sub_2D97E8(v48, v49);
      if (result)
      {
        result = sub_2DAD14(v36, v19, 0x10u, 4);
        if (result)
        {
          result = sub_2CDF90(v36, v19, 0x12u);
          if (result)
          {
            v50 = v36;
            v51 = *v36;
            v52 = -v51;
            v53 = (v36 - v51);
            if (*v53 >= 0x13u)
            {
              v54 = v53[9];
              if (v54)
              {
                result = sub_2CE100(v19, (v36 + v54 + *(v36 + v54)), 4uLL, 0);
                if (!result)
                {
                  return result;
                }

                v50 = v36;
                v52 = -*v36;
              }
            }

            v55 = (v50 + v52);
            if (*v55 >= 0x13u && (v56 = v55[9]) != 0)
            {
              v57 = (v50 + v56 + *(v50 + v56));
            }

            else
            {
              v57 = 0;
            }

            result = sub_2E0AB0(v19, v57);
            if (result)
            {
              result = sub_2CDF90(v36, v19, 0x14u);
              if (result)
              {
                v58 = *v36;
                v59 = -v58;
                if (*(v36 - v58) >= 0x15u && *(v36 - v58 + 20))
                {
                  result = sub_2CE100(v19, (v36 + *(v36 - v58 + 20) + *(v36 + *(v36 - v58 + 20))), 4uLL, 0);
                  if (!result)
                  {
                    return result;
                  }

                  v59 = -*v36;
                }

                v60 = (v36 + v59);
                if (*v60 >= 0x15u && (v61 = v60[10]) != 0)
                {
                  v62 = (v36 + v61 + *(v36 + v61));
                }

                else
                {
                  v62 = 0;
                }

                result = sub_2E0B3C(v19, v62);
                if (result)
                {
                  result = sub_2CDF90(v36, v19, 0x16u);
                  if (result)
                  {
                    v63 = (v36 - *v36);
                    if (*v63 >= 0x17u && (v64 = v63[11]) != 0)
                    {
                      v65 = (v36 + v64 + *(v36 + v64));
                    }

                    else
                    {
                      v65 = 0;
                    }

                    result = sub_2D986C(v19, v65);
                    if (result)
                    {
                      v66 = (v36 - *v36);
                      if (*v66 >= 0x17u && (v67 = v66[11]) != 0)
                      {
                        v68 = (v36 + v67 + *(v36 + v67));
                      }

                      else
                      {
                        v68 = 0;
                      }

                      result = sub_2E0BC8(v19, v68);
                      if (result)
                      {
                        result = sub_2CDF90(v36, v19, 0x18u);
                        if (result)
                        {
                          v69 = (v36 - *v36);
                          if (*v69 >= 0x19u && (v70 = v69[12]) != 0)
                          {
                            v71 = (v36 + v70 + *(v36 + v70));
                          }

                          else
                          {
                            v71 = 0;
                          }

                          result = sub_2D986C(v19, v71);
                          if (result)
                          {
                            v72 = (v36 - *v36);
                            if (*v72 >= 0x19u && (v73 = v72[12]) != 0)
                            {
                              v74 = (v36 + v73 + *(v36 + v73));
                            }

                            else
                            {
                              v74 = 0;
                            }

                            result = sub_2E0BC8(v19, v74);
                            if (result)
                            {
                              v75 = v36;
                              v76 = (v36 - *v36);
                              v77 = v19;
                              if (*v76 < 0x1Du || (v78 = v76[14]) == 0 || (result = 0, v79 = v19[1], v79 >= 2) && (v77 = v19, v75 = v36, v79 - 1 >= v36 + v78 - *v19))
                              {
                                result = sub_2D9788(v75, v77, 0x1Eu, 8);
                                if (result)
                                {
                                  result = sub_2CDF90(v36, v19, 0x22u);
                                  if (result)
                                  {
                                    v80 = *v36;
                                    v81 = -v80;
                                    if (*(v36 - v80) >= 0x23u && *(v36 - v80 + 34))
                                    {
                                      result = sub_2CE100(v19, (v36 + *(v36 - v80 + 34) + *(v36 + *(v36 - v80 + 34))), 4uLL, 0);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v81 = -*v36;
                                    }

                                    v82 = (v36 + v81);
                                    if (*v82 >= 0x23u && (v83 = v82[17]) != 0)
                                    {
                                      v84 = (v36 + v83 + *(v36 + v83));
                                    }

                                    else
                                    {
                                      v84 = 0;
                                    }

                                    result = sub_2E0C54(v19, v84);
                                    if (result)
                                    {
                                      result = sub_2D9788(v36, v19, 0x24u, 8);
                                      if (result)
                                      {
                                        v85 = v36;
                                        v86 = (v36 - *v36);
                                        v87 = v19;
                                        if (*v86 < 0x27u || (v88 = v86[19]) == 0 || (result = 0, v89 = v19[1], v89 >= 2) && (v87 = v19, v85 = v36, v89 - 1 >= v36 + v88 - *v19))
                                        {
                                          result = sub_2D8DE0(v85, v87, 0x28u, 2);
                                          if (result)
                                          {
                                            v90 = (v36 - *v36);
                                            v91 = v19;
                                            if (*v90 < 0x2Bu || (v92 = v90[21]) == 0 || (result = 0, v93 = v19[1], v93 >= 2) && (v91 = v19, v93 - 1 >= v36 + v92 - *v19))
                                            {
                                              --v91[5].i32[0];
                                              return 1;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2E0A24(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E1338((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2E0AB0(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E1610((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_2E0B3C(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E19A4((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2E0BC8(uint32x2_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E1B10((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2E0C54(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E1E98((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2E0CE0(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(*&v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = *a1;
  v15 = -v14;
  v16 = (a1 - v14);
  if (*v16 >= 5u)
  {
    v17 = v16[2];
    if (v17)
    {
      v18 = &v3[v17];
      if ((v18 & 3) != 0)
      {
        if (v5 < v18 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v18)
      {
        return 0;
      }

      v19 = *(*&v2 + v18);
      if (v19 < 1)
      {
        return 0;
      }

      if (v4 - 1 < v18 + v19)
      {
        return 0;
      }

      v20 = a1;
      v21 = a2;
      if (!sub_2E0FE0((a1 + v17 + *(a1 + v17)), a2))
      {
        return 0;
      }

      a1 = v20;
      v15 = -*v20;
      a2 = v21;
    }
  }

  if (*(a1 + v15) < 7u)
  {
    goto LABEL_42;
  }

  v22 = *(a1 + v15 + 6);
  if (!*(a1 + v15 + 6))
  {
    goto LABEL_42;
  }

  v23 = a1 + v22 - *a2;
  if (v23 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v24 = *(a2 + 8);
  if (v24 < 5 || v24 - 4 < v23)
  {
    return 0;
  }

  v25 = *(*a2 + v23);
  if (v25 < 1)
  {
    return 0;
  }

  if (v24 - 1 < v23 + v25)
  {
    return 0;
  }

  v26 = a1;
  v27 = a2;
  if (!sub_2E11E8((a1 + v22 + *(a1 + v22)), a2))
  {
    return 0;
  }

  a1 = v26;
  v15 = -*v26;
  a2 = v27;
LABEL_42:
  v28 = (a1 + v15);
  v29 = *(a1 + v15);
  if (v29 < 9 || (!v28[4] || (v30 = *(a2 + 8), v30 >= 2) && v30 - 1 >= a1 + v28[4] - *a2) && (v29 < 0xB || (!v28[5] || (v31 = *(a2 + 8), v31 >= 2) && v31 - 1 >= a1 + v28[5] - *a2) && (v29 < 0xD || (v32 = v28[6]) == 0 || (v33 = *(a2 + 8), v33 >= 2) && v33 - 1 >= a1 + v32 - *a2)))
  {
    --*(a2 + 40);
    return 1;
  }

  return 0;
}

uint64_t sub_2E0FE0(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
    {
      return 0;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  if (v16 >= 5)
  {
    v17 = v15[2];
    if (v15[2] && ((&v3[v17] & 3) != 0 && (a2[3].i8[0] & 1) != 0 || v4 < 9 || v4 - 8 < &v3[v17]))
    {
      return 0;
    }

    if (v16 >= 7)
    {
      v18 = v15[3];
      if (v15[3])
      {
        v19 = &v3[v18];
        if ((&v3[v18] & 3) != 0)
        {
          if (v5 < v19 || (a2[3].i8[0] & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v19)
        {
          return 0;
        }
      }

      if (v16 < 9)
      {
        goto LABEL_52;
      }

      v20 = v15[4];
      if (!v20)
      {
        goto LABEL_52;
      }

      v21 = &v3[v20];
      if ((v21 & 3) != 0)
      {
        if (v5 < v21 || (a2[3].i8[0] & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v21)
      {
        return 0;
      }

      v22 = *(*&v2 + v21);
      if (v22 < 1 || v4 - 1 < v21 + v22)
      {
        return 0;
      }

      v23 = (a1 + v20 + *(a1 + v20));
      v24 = v23 - *&v2;
      if ((v24 & 3) != 0)
      {
        if (v5 < v24 || (a2[3].i8[0] & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v24)
      {
        return 0;
      }

      v25 = *v23;
      if (v25 <= 0x7FFFFFFE)
      {
        v26 = v25 + 4;
        v27 = v4 > v26;
        v28 = v4 - v26;
        if (v27 && v28 >= v24)
        {
          goto LABEL_52;
        }
      }

      return 0;
    }
  }

LABEL_52:
  a2[5].i32[0] = v8.i32[0];
  return 1;
}

BOOL sub_2E11E8(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_24;
    }

    if (!v5[2])
    {
      goto LABEL_23;
    }

    v7 = a1 + v5[2] - *a2;
    if (v7 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v8 = *(a2 + 8);
    if (v8 >= 5 && v8 - 4 >= v7)
    {
LABEL_23:
      if (v6 < 7)
      {
        goto LABEL_24;
      }

      if (!v5[3])
      {
        goto LABEL_27;
      }

      v9 = a1 + v5[3] - *a2;
      if (v9 & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      result = 0;
      v10 = *(a2 + 8);
      if (v10 >= 9 && v10 - 8 >= v9)
      {
LABEL_27:
        if (v6 < 9)
        {
          goto LABEL_24;
        }

        v11 = v5[4];
        if (!v11)
        {
          goto LABEL_24;
        }

        v12 = a1 + v11 - *a2;
        if (v12 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        result = 0;
        v13 = *(a2 + 8);
        if (v13 >= 5 && v13 - 4 >= v12)
        {
LABEL_24:
          --*(a2 + 40);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2E1338(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 >= 5)
  {
    if (v14[2] && v4 - 1 < &v3[v14[2]])
    {
      return 0;
    }

    if (v15 >= 7)
    {
      if (v14[3] && v4 - 1 < &v3[v14[3]])
      {
        return 0;
      }

      if (v15 >= 9)
      {
        v16 = v14[4];
        if (v14[4])
        {
          v17 = &v3[v16];
          if ((&v3[v16] & 3) != 0)
          {
            if (v5 < v17 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v17)
          {
            return 0;
          }
        }

        if (v15 >= 0xB)
        {
          v18 = v14[5];
          if (v14[5])
          {
            if (&v3[v18] & 7) != 0 && (*(a2 + 24))
            {
              return 0;
            }

            if (v4 < 9 || v4 - 8 < &v3[v18])
            {
              return 0;
            }
          }

          if (v15 >= 0xD && v14[6] && v4 - 1 < &v3[v14[6]])
          {
            return 0;
          }
        }
      }
    }
  }

  if (!sub_2DAD14(a1, a2, 0xEu, 4) || !sub_2DAD14(a1, a2, 0x10u, 4))
  {
    return 0;
  }

  v21 = (a1 - *a1);
  if (*v21 >= 0x13u)
  {
    if (v21[9])
    {
      v22 = *(a2 + 8);
      if (v22 < 2 || v22 - 1 < a1 + v21[9] - *a2)
      {
        return 0;
      }
    }
  }

  if (sub_2CDF90(a1, a2, 0x14u))
  {
    v23 = (a1 - *a1);
    if (*v23 < 0x15u)
    {
      v26 = 0;
      v25 = a2;
    }

    else
    {
      v24 = v23[10];
      v25 = a2;
      v26 = v24 ? (a1 + v24 + *(a1 + v24)) : 0;
    }

    if (sub_2D97E8(v25, v26))
    {
      --*(a2 + 40);
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2E1610(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 >= 5)
  {
    v16 = v14[2];
    if (v14[2])
    {
      v17 = &v3[v16];
      if ((&v3[v16] & 3) != 0)
      {
        if (v5 < v17 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v17)
      {
        return 0;
      }

      v18 = *&v17[v2];
      if (v18 < 1 || v4 - 1 < &v17[v18])
      {
        return 0;
      }

      v19 = (a1 + v16 + *(a1 + v16));
      v20 = v19 - v2;
      if (((v19 - v2) & 3) != 0)
      {
        if (v5 < v20 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v20)
      {
        return 0;
      }

      v21 = *v19;
      if (v21 > 0x7FFFFFFE)
      {
        return 0;
      }

      v22 = v21 + 4;
      v23 = &v20[v21 + 4];
      v24 = v4 - 1 >= v23 && v4 > v22;
      v25 = v24 && v4 - v22 >= v20;
      if (!v25 || *(v2 + v23))
      {
        return 0;
      }
    }

    if (v15 >= 7)
    {
      v26 = v14[3];
      if (v14[3])
      {
        v27 = &v3[v26];
        if ((&v3[v26] & 3) != 0)
        {
          if (v5 < v27 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v27)
        {
          return 0;
        }

        v28 = *&v27[v2];
        if (v28 < 1 || v4 - 1 < &v27[v28])
        {
          return 0;
        }

        v29 = (a1 + v26 + *(a1 + v26));
        v30 = v29 - v2;
        if (((v29 - v2) & 3) != 0)
        {
          if (v5 < v30 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v30)
        {
          return 0;
        }

        v31 = *v29;
        if (v31 > 0x7FFFFFFE)
        {
          return 0;
        }

        v32 = v31 + 4;
        v33 = &v30[v31 + 4];
        v34 = v4 - 1 >= v33 && v4 > v32;
        v35 = v34 && v4 - v32 >= v30;
        if (!v35 || *(v2 + v33))
        {
          return 0;
        }
      }

      if (v15 >= 9 && v14[4])
      {
        v36 = &v3[v14[4]];
        if ((v36 & 3) != 0)
        {
          if (v5 < v36 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v36)
        {
          return 0;
        }
      }
    }
  }

  if (sub_2CDF90(a1, a2, 0xAu))
  {
    v39 = (a1 - *a1);
    if (*v39 < 0xBu)
    {
      v42 = 0;
      v41 = a2;
    }

    else
    {
      v40 = v39[5];
      v41 = a2;
      v42 = v40 ? (a1 + v40 + *(a1 + v40)) : 0;
    }

    if (sub_2D97E8(v41, v42))
    {
      v43 = (a1 - *a1);
      if (*v43 < 0xDu || !v43[6] || (v44 = *(a2 + 8), v44 >= 2) && v44 - 1 >= a1 + v43[6] - *a2)
      {
        --*(a2 + 40);
        return 1;
      }

      return 0;
    }
  }

  return 0;
}

BOOL sub_2E19A4(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_29;
    }

    if (v5[2])
    {
      result = 0;
      v7 = *(a2 + 8);
      if (v7 < 2 || v7 - 1 < a1 + v5[2] - *a2)
      {
        return result;
      }
    }

    if (v6 < 7 || (v8 = v5[3]) == 0)
    {
LABEL_29:
      --*(a2 + 40);
      return 1;
    }

    v9 = a1 + v8 - *a2;
    if (v9 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v10 = *(a2 + 8);
    if (v10 < 5 || v10 - 4 < v9)
    {
      return result;
    }

    v11 = *(*a2 + v9);
    if (v11 < 1)
    {
      return 0;
    }

    if (v10 - 1 < v9 + v11)
    {
      return 0;
    }

    v12 = (a1 + v8 + *(a1 + v8));
    v13 = v12 - *a2;
    if (v13 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v14 = *(a2 + 8);
    if (v14 >= 5 && v14 - 4 >= v13)
    {
      v15 = *v12;
      if (v15 > 0x7FFFFFFE)
      {
        return 0;
      }

      v16 = v15 + 4;
      v17 = v13 + v15 + 4;
      v18 = v14 - 1 >= v17 && v14 > v16;
      v19 = v18 && v14 - v16 >= v13;
      if (!v19 || *(*a2 + v17))
      {
        return 0;
      }

      goto LABEL_29;
    }
  }

  return result;
}

uint64_t sub_2E1B10(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
    {
      return 0;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  if (v16 < 5)
  {
    goto LABEL_98;
  }

  v17 = v15[2];
  if (v15[2])
  {
    v18 = &v3[v17];
    if ((&v3[v17] & 3) != 0)
    {
      if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v18)
    {
      return 0;
    }

    v19 = *&v18[*&v2];
    if (v19 < 1 || v4 - 1 < &v18[v19])
    {
      return 0;
    }

    v20 = (a1 + v17 + *(a1 + v17));
    v21 = v20 - *&v2;
    if (((v20 - *&v2) & 3) != 0)
    {
      if (v5 < v21 || (a2[3].i8[0] & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v21)
    {
      return 0;
    }

    v22 = *v20;
    if (v22 > 0x7FFFFFFE)
    {
      return 0;
    }

    v23 = v22 + 4;
    v24 = &v21[v22 + 4];
    v25 = v4 - 1 >= v24 && v4 > v23;
    v26 = v25 && v4 - v23 >= v21;
    if (!v26 || *(*&v2 + v24))
    {
      return 0;
    }
  }

  if (v16 < 7)
  {
    goto LABEL_98;
  }

  v27 = v15[3];
  if (!v27)
  {
    goto LABEL_98;
  }

  v28 = &v3[v27];
  if ((v28 & 3) != 0)
  {
    if (v5 < v28 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v28)
  {
    return 0;
  }

  v29 = *(*&v2 + v28);
  if (v29 < 1)
  {
    return 0;
  }

  v30 = v28 + v29;
  v31 = v4 - 1;
  if (v4 - 1 < v30)
  {
    return 0;
  }

  v32 = (a1 + v27);
  v33 = (a1 + v27 + *(a1 + v27));
  v34 = v33 - *&v2;
  if (((v33 - *&v2) & 3) != 0)
  {
    if (v5 < v34 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_59;
  }

  if (v5 < v34)
  {
    return 0;
  }

LABEL_59:
  v35 = *v33;
  if (v35 > 0x1FFFFFFE)
  {
    return 0;
  }

  v36 = 4 * v35 + 4;
  v6 = v4 >= v36;
  v37 = v4 - v36;
  if (v37 == 0 || !v6 || v37 < v34)
  {
    return 0;
  }

  v39 = *v32;
  v40 = *(v32 + v39);
  if (v40)
  {
    if (a2[3].i8[0])
    {
      v41 = 0;
      v42 = 4 * v40;
      v43 = a1 + v27 + v39;
      v44 = v43 + 4;
      v45 = &v43[-*&v2 + 4];
      v46 = a1 + v39 + v27 + 4;
      while (1)
      {
        v47 = *&v44[v41];
        v48 = v45 + v41 + v47;
        if ((v48 & 3) != 0 || v5 < v48)
        {
          break;
        }

        v50 = *&v44[v47 + v41];
        if (v50 > 0x7FFFFFFE)
        {
          break;
        }

        v51 = v50 + 4;
        v52 = v47 + v51;
        v53 = v31 >= v45 + v41 + v52 && v4 > v51;
        v54 = v53 && v4 - v51 >= v48;
        if (!v54 || *(v46 + v52 + v41))
        {
          break;
        }

        v41 += 4;
        if (v42 == v41)
        {
          goto LABEL_98;
        }
      }
    }

    else
    {
      v55 = 0;
      v56 = 4 * v40;
      v57 = a1 + v27 + v39;
      v58 = v57 + 4;
      v59 = &v57[-*&v2 + 4];
      v60 = a1 + v39 + v27 + 4;
      while (1)
      {
        v61 = *&v58[v55];
        v62 = v59 + v55 + v61;
        if (v5 < v62)
        {
          break;
        }

        v63 = *&v58[v61 + v55];
        if (v63 > 0x7FFFFFFE)
        {
          break;
        }

        v64 = v63 + 4;
        v65 = v61 + v64;
        v66 = v31 >= v59 + v55 + v65 && v4 > v64;
        v67 = v66 && v4 - v64 >= v62;
        if (!v67 || *(v60 + v65 + v55))
        {
          break;
        }

        v55 += 4;
        if (v56 == v55)
        {
          goto LABEL_98;
        }
      }
    }

    return 0;
  }

LABEL_98:
  a2[5].i32[0] = v8.i32[0];
  return 1;
}

uint64_t sub_2E1E98(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = *a1;
  v15 = -v14;
  v16 = (a1 - v14);
  if (*v16 >= 5u)
  {
    v17 = v16[2];
    if (v17)
    {
      v18 = &v3[v17];
      if ((v18 & 3) != 0)
      {
        if (v5 < v18 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v18)
      {
        return 0;
      }

      v19 = *(v2 + v18);
      if (v19 < 1)
      {
        return 0;
      }

      if (v4 - 1 < v18 + v19)
      {
        return 0;
      }

      v20 = a1;
      v21 = a2;
      if (!sub_2E2174((a1 + v17 + *(a1 + v17)), a2))
      {
        return 0;
      }

      a1 = v20;
      v15 = -*v20;
      a2 = v21;
    }
  }

  v22 = (a1 + v15);
  if (*v22 < 7u)
  {
    goto LABEL_54;
  }

  v23 = v22[3];
  if (!v22[3])
  {
    goto LABEL_54;
  }

  v24 = a1 + v23 - *a2;
  if (v24 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v25 = *(a2 + 8);
  if (v25 < 5 || v25 - 4 < v24)
  {
    return 0;
  }

  v26 = *(*a2 + v24);
  if (v26 < 1)
  {
    return 0;
  }

  if (v25 - 1 < v24 + v26)
  {
    return 0;
  }

  v27 = (a1 + v23);
  v28 = (v27 + *v27);
  v29 = v28 - *a2;
  if (v29 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v30 = *(a2 + 8);
  if (v30 >= 5 && v30 - 4 >= v29)
  {
    v31 = *v28;
    if (v31 > 0x1FFFFFFE)
    {
      return 0;
    }

    v32 = 4 * v31 + 4;
    v6 = v30 >= v32;
    v33 = v30 - v32;
    if (v33 == 0 || !v6 || v33 < v29)
    {
      return 0;
    }

    v35 = (v27 + *v27);
    if (*v35)
    {
      v36 = 0;
      v37 = v35 + 1;
      do
      {
        v38 = a2;
        if (!sub_2E2B40((v37 + *v37), a2))
        {
          return 0;
        }

        ++v36;
        ++v37;
        a2 = v38;
      }

      while (v36 < *v35);
    }

LABEL_54:
    --*(a2 + 40);
    return 1;
  }

  return 0;
}

uint64_t sub_2E2174(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = a1 - v15;
    v18 = *(a1 - v15);
    if (v18 >= 5)
    {
      v19 = *(v17 + 2);
      if (*(v17 + 2))
      {
        v20 = &v3[v19];
        if ((&v3[v19] & 3) != 0)
        {
          v13 = 0;
          if (v5 < v20 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v20)
        {
          return 0;
        }

        v21 = *&v20[v2];
        if (v21 < 1)
        {
          return 0;
        }

        v22 = &v20[v21];
        v23 = v4 - 1;
        if (v4 - 1 < v22)
        {
          return 0;
        }

        v24 = (a1 + v19);
        v25 = (a1 + v19 + *(a1 + v19));
        v26 = v25 - v2;
        if (((v25 - v2) & 3) != 0)
        {
          v13 = 0;
          if (v5 < v26 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v26)
        {
          return 0;
        }

        v27 = *v25;
        if (v27 > 0x1FFFFFFE)
        {
          return 0;
        }

        v28 = 4 * v27 + 4;
        v6 = v4 >= v28;
        v29 = v4 - v28;
        if (v29 == 0 || !v6 || v29 < v26)
        {
          return 0;
        }

        v31 = *v24;
        v32 = *(v24 + v31);
        if (v32)
        {
          if (*(a2 + 24))
          {
            v33 = 0;
            v34 = 4 * v32;
            v35 = a1 + v19 + v31;
            v36 = v35 + 4;
            v37 = &v35[-v2 + 4];
            v38 = a1 + v31 + v19 + 4;
            while (1)
            {
              v39 = *&v36[v33];
              v40 = v37 + v33 + v39;
              if ((v40 & 3) != 0 || v5 < v40)
              {
                break;
              }

              v42 = *&v36[v39 + v33];
              if (v42 > 0x7FFFFFFE)
              {
                break;
              }

              v43 = v42 + 4;
              v44 = v39 + v43;
              v45 = v23 >= v37 + v33 + v44 && v4 > v43;
              v46 = v45 && v4 - v43 >= v40;
              if (!v46 || *(v38 + v44 + v33))
              {
                break;
              }

              v33 += 4;
              if (v34 == v33)
              {
                goto LABEL_76;
              }
            }
          }

          else
          {
            v47 = 0;
            v48 = 4 * v32;
            v49 = a1 + v19 + v31;
            v50 = v49 + 4;
            v51 = &v49[-v2 + 4];
            v52 = a1 + v31 + v19 + 4;
            while (1)
            {
              v53 = *&v50[v47];
              v54 = v51 + v47 + v53;
              if (v5 < v54)
              {
                break;
              }

              v55 = *&v50[v53 + v47];
              if (v55 > 0x7FFFFFFE)
              {
                break;
              }

              v56 = v55 + 4;
              v57 = v53 + v56;
              v58 = v23 >= v51 + v47 + v57 && v4 > v56;
              v59 = v58 && v4 - v56 >= v54;
              if (!v59 || *(v52 + v57 + v47))
              {
                break;
              }

              v47 += 4;
              if (v48 == v47)
              {
                goto LABEL_76;
              }
            }
          }

          return 0;
        }
      }

LABEL_76:
      if (v18 >= 7)
      {
        v60 = *(v17 + 3);
        if (v60)
        {
          v61 = &v3[v60];
          if ((v61 & 3) != 0)
          {
            v13 = 0;
            if (v5 < v61 || (*(a2 + 24) & 1) != 0)
            {
              return v13;
            }
          }

          else if (v5 < v61)
          {
            return 0;
          }

          v62 = *(v2 + v61);
          if (v62 >= 1 && v4 - 1 >= v61 + v62)
          {
            v66 = a1;
            v67 = a2;
            if (sub_2E2538((a1 + v60 + *(a1 + v60)), a2))
            {
              a1 = v66;
              a2 = v67;
              v16 = -*v66;
              goto LABEL_87;
            }
          }

          return 0;
        }
      }
    }

LABEL_87:
    v63 = a1 + v16;
    if (*(a1 + v16) < 9u || (v64 = *(v63 + 4), !*(v63 + 4)) || (v13 = 0, v65 = *(a2 + 8), v65 >= 2) && v65 - 1 >= a1 + v64 - *a2)
    {
      --*(a2 + 40);
      return 1;
    }

    return v13;
  }

  return 0;
}

uint64_t sub_2E2538(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((*(a2 + 24) & 1) == 0 && v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 < 5)
  {
    goto LABEL_75;
  }

  v16 = v14[2];
  if (v14[2])
  {
    v17 = &v3[v16];
    if ((&v3[v16] & 3) != 0)
    {
      if (v5 < v17 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v17)
    {
      return 0;
    }

    v18 = *&v17[v2];
    if (v18 < 1 || v4 - 1 < &v17[v18])
    {
      return 0;
    }

    v19 = (a1 + v16 + *(a1 + v16));
    v20 = v19 - v2;
    if (((v19 - v2) & 3) != 0)
    {
      if (v5 < v20 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v20)
    {
      return 0;
    }

    v21 = *v19;
    if (v21 > 0x7FFFFFFE)
    {
      return 0;
    }

    v22 = v21 + 4;
    v23 = &v20[v21 + 4];
    v24 = v4 - 1 >= v23 && v4 > v22;
    v25 = v24 && v4 - v22 >= v20;
    if (!v25 || *(v2 + v23))
    {
      return 0;
    }
  }

  if (v15 < 7)
  {
    goto LABEL_75;
  }

  v26 = v14[3];
  if (v14[3])
  {
    v27 = &v3[v26];
    if ((&v3[v26] & 3) != 0)
    {
      if (v5 < v27 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v27)
    {
      return 0;
    }

    v28 = *&v27[v2];
    if (v28 < 1 || v4 - 1 < &v27[v28])
    {
      return 0;
    }

    v29 = (a1 + v26 + *(a1 + v26));
    v30 = v29 - v2;
    if (((v29 - v2) & 3) != 0)
    {
      if (v5 < v30 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v30)
    {
      return 0;
    }

    v31 = *v29;
    if (v31 > 0x7FFFFFFE)
    {
      return 0;
    }

    v32 = v31 + 4;
    v33 = &v30[v31 + 4];
    v34 = v4 - 1 >= v33 && v4 > v32;
    v35 = v34 && v4 - v32 >= v30;
    if (!v35 || *(v2 + v33))
    {
      return 0;
    }
  }

  if (v15 >= 9 && (v36 = v14[4]) != 0)
  {
    v37 = &v3[v36];
    if ((v37 & 3) != 0)
    {
      if (v5 < v37 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v37)
    {
      return 0;
    }

    v54 = *(v2 + v37);
    if (v54 < 1)
    {
      return 0;
    }

    if (v4 - 1 < v37 + v54)
    {
      return 0;
    }

    v38 = a1;
    v39 = a2;
    if (!sub_2D97E8(a2, (a1 + v36 + *(a1 + v36))))
    {
      return 0;
    }
  }

  else
  {
LABEL_75:
    v38 = a1;
    v39 = a2;
    if (!sub_2D97E8(a2, 0))
    {
      return 0;
    }
  }

  if (sub_2CDF90(v38, v39, 0xAu))
  {
    v40 = (v38 - *v38);
    if (*v40 < 0xBu)
    {
      v43 = 0;
      v42 = v39;
    }

    else
    {
      v41 = v40[5];
      v42 = v39;
      v43 = v41 ? (v38 + v41 + *(v38 + v41)) : 0;
    }

    if (sub_2D97E8(v42, v43) && sub_2CDF90(v38, v39, 0xCu))
    {
      v44 = (v38 - *v38);
      if (*v44 < 0xDu)
      {
        v47 = 0;
        v46 = v39;
      }

      else
      {
        v45 = v44[6];
        v46 = v39;
        v47 = v45 ? (v38 + v45 + *(v38 + v45)) : 0;
      }

      if (sub_2D97E8(v46, v47) && sub_2CDF90(v38, v39, 0xEu))
      {
        v48 = (v38 - *v38);
        if (*v48 >= 0xFu && (v49 = v48[7]) != 0)
        {
          v50 = (v38 + v49 + *(v38 + v49));
        }

        else
        {
          v50 = 0;
        }

        if (sub_2D97E8(v39, v50) && sub_2CDF90(v38, v39, 0x10u))
        {
          v51 = (v38 - *v38);
          if (*v51 >= 0x11u && (v52 = v51[8]) != 0)
          {
            v53 = (v38 + v52 + *(v38 + v52));
          }

          else
          {
            v53 = 0;
          }

          if (sub_2D97E8(v39, v53) && sub_2CDF90(v38, v39, 0x12u))
          {
            v55 = (v38 - *v38);
            if (*v55 >= 0x13u && (v56 = v55[9]) != 0)
            {
              v57 = (v38 + v56 + *(v38 + v56));
            }

            else
            {
              v57 = 0;
            }

            if (sub_2D97E8(v39, v57) && sub_2CDF90(v38, v39, 0x14u))
            {
              v58 = (v38 - *v38);
              if (*v58 >= 0x15u && (v59 = v58[10]) != 0)
              {
                v60 = (v38 + v59 + *(v38 + v59));
              }

              else
              {
                v60 = 0;
              }

              if (sub_2D97E8(v39, v60) && sub_2CDF90(v38, v39, 0x16u))
              {
                v61 = (v38 - *v38);
                if (*v61 >= 0x17u && (v62 = v61[11]) != 0)
                {
                  v63 = (v38 + v62 + *(v38 + v62));
                }

                else
                {
                  v63 = 0;
                }

                if (sub_2D97E8(v39, v63))
                {
                  --*(v39 + 40);
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

BOOL sub_2E2B40(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (result)
  {
    v5 = (a1 - *a1);
    if (*v5 < 5u || (v6 = v5[2]) == 0)
    {
LABEL_27:
      --*(a2 + 40);
      return 1;
    }

    v7 = a1 + v6 - *a2;
    if (v7 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v8 = *(a2 + 8);
    if (v8 >= 5 && v8 - 4 >= v7)
    {
      v9 = *(*a2 + v7);
      if (v9 < 1)
      {
        return 0;
      }

      if (v8 - 1 < v7 + v9)
      {
        return 0;
      }

      v10 = (a1 + v6 + *(a1 + v6));
      v11 = v10 - *a2;
      if (v11 & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      result = 0;
      v12 = *(a2 + 8);
      if (v12 >= 5 && v12 - 4 >= v11)
      {
        v13 = *v10;
        if (v13 > 0x7FFFFFFE)
        {
          return 0;
        }

        v14 = v13 + 4;
        v15 = v11 + v13 + 4;
        v16 = v12 - 1 >= v15 && v12 > v14;
        v17 = v16 && v12 - v14 >= v11;
        if (!v17 || *(*a2 + v15))
        {
          return 0;
        }

        goto LABEL_27;
      }
    }
  }

  return result;
}

uint64_t sub_2E2C88(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  v17 = v8.i32[0];
  if (v16 < 5)
  {
    goto LABEL_52;
  }

  v18 = v15[2];
  if (v15[2])
  {
    if (&v3[v18] & 7) != 0 && (a2[3].i8[0])
    {
      return 0;
    }

    if (v4 < 9 || v4 - 8 < &v3[v18])
    {
      return 0;
    }
  }

  if (v16 < 7)
  {
    goto LABEL_52;
  }

  v19 = v15[3];
  if (!v19)
  {
    goto LABEL_52;
  }

  v20 = &v3[v19];
  if ((v20 & 3) != 0)
  {
    if (v5 < v20 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v20)
  {
    return 0;
  }

  v21 = *(*&v2 + v20);
  if (v21 < 1 || v4 - 1 < v20 + v21)
  {
    return 0;
  }

  v22 = (a1 + v19);
  v23 = (a1 + v19 + *(a1 + v19));
  v24 = v23 - *&v2;
  if ((v24 & 3) != 0)
  {
    if (v5 < v24 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_41;
  }

  if (v5 < v24)
  {
    return 0;
  }

LABEL_41:
  v25 = *v23;
  if (v25 > 0x1FFFFFFE)
  {
    return 0;
  }

  v26 = 4 * v25 + 4;
  v6 = v4 >= v26;
  v27 = v4 - v26;
  if (v27 == 0 || !v6 || v27 < v24)
  {
    return 0;
  }

  v29 = a2;
  v30 = (v22 + *v22);
  if (*v30)
  {
    v31 = 0;
    v32 = v30 + 1;
    while ((sub_2E1610((v32 + *v32), a2) & 1) != 0)
    {
      ++v31;
      ++v32;
      a2 = v29;
      if (v31 >= *v30)
      {
        v17 = v29[5].i32[0] - 1;
        goto LABEL_52;
      }
    }

    return 0;
  }

LABEL_52:
  a2[5].i32[0] = v17;
  return 1;
}

uint64_t sub_2E2F10(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = (a1 - v15);
    if (*v17 < 5u)
    {
      goto LABEL_48;
    }

    v18 = v17[2];
    if (!v17[2])
    {
      goto LABEL_48;
    }

    v19 = &v3[v18];
    if ((v19 & 3) != 0)
    {
      v13 = 0;
      if (v5 < v19 || (*(a2 + 24) & 1) != 0)
      {
        return v13;
      }
    }

    else if (v5 < v19)
    {
      return 0;
    }

    v20 = *(v2 + v19);
    if (v20 >= 1 && v4 - 1 >= v19 + v20)
    {
      v21 = (a1 + v18);
      v22 = (a1 + v18 + *(a1 + v18));
      v23 = v22 - v2;
      if ((v23 & 3) != 0)
      {
        v13 = 0;
        if (v5 < v23 || (*(a2 + 24) & 1) != 0)
        {
          return v13;
        }

        goto LABEL_37;
      }

      if (v5 >= v23)
      {
LABEL_37:
        v24 = *v22;
        if (v24 > 0x1FFFFFFE)
        {
          return 0;
        }

        v25 = 4 * v24 + 4;
        v6 = v4 >= v25;
        v26 = v4 - v25;
        if (v26 == 0 || !v6 || v26 < v23)
        {
          return 0;
        }

        v28 = (v21 + *v21);
        if (*v28)
        {
          v29 = a1;
          v30 = 0;
          v31 = v28 + 1;
          while (1)
          {
            v32 = a2;
            if ((sub_2E324C((v31 + *v31), a2) & 1) == 0)
            {
              return 0;
            }

            ++v30;
            ++v31;
            a2 = v32;
            if (v30 >= *v28)
            {
              a1 = v29;
              v16 = -*v29;
              break;
            }
          }
        }

LABEL_48:
        v33 = a1 + v16;
        if (*(a1 + v16) >= 7u)
        {
          v34 = *(v33 + 3);
          if (*(v33 + 3))
          {
            v35 = a1 + v34 - *a2;
            if (v35 & 3) != 0 && (*(a2 + 24))
            {
              return 0;
            }

            v13 = 0;
            v36 = *(a2 + 8);
            if (v36 < 5 || v36 - 4 < v35)
            {
              return v13;
            }

            v37 = *(*a2 + v35);
            if (v37 < 1)
            {
              return 0;
            }

            if (v36 - 1 < v35 + v37)
            {
              return 0;
            }

            v38 = (a1 + v34 + *(a1 + v34));
            v39 = a2;
            if (!sub_2CDED0(v38, a2))
            {
              return 0;
            }

            v40 = (v38 - *v38);
            v41 = *v40;
            a2 = v39;
            if (v41 >= 5)
            {
              if (v40[2])
              {
                v13 = 0;
                v42 = v39[1];
                if (v42 < 2 || v42 - 1 < v38 + v40[2] - *v39)
                {
                  return v13;
                }
              }

              if (v41 >= 7)
              {
                v43 = v40[3];
                if (v43)
                {
                  v13 = 0;
                  v44 = v39[1];
                  if (v44 < 2)
                  {
                    return v13;
                  }

                  a2 = v39;
                  if (v44 - 1 < v38 + v43 - *v39)
                  {
                    return v13;
                  }
                }
              }
            }

            --*(a2 + 40);
          }
        }

        --*(a2 + 40);
        return 1;
      }
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2E324C(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 < 5)
  {
    goto LABEL_55;
  }

  v16 = v14[2];
  if (v14[2])
  {
    v17 = &v3[v16];
    if ((v3 + v16))
    {
      if (v4 - 2 < v17 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v4 - 2 < v17)
    {
      return 0;
    }
  }

  if (v15 < 9)
  {
    goto LABEL_55;
  }

  v18 = v14[4];
  if (v14[4])
  {
    v19 = &v3[v18];
    if ((v3 + v18))
    {
      if (v4 - 2 < v19 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v4 - 2 < v19)
    {
      return 0;
    }
  }

  if (v15 < 0x11)
  {
    goto LABEL_55;
  }

  v20 = v14[8];
  if (v14[8])
  {
    v21 = &v3[v20];
    if ((v3 + v20))
    {
      if (v4 - 2 < v21 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v4 - 2 < v21)
    {
      return 0;
    }
  }

  if (v15 < 0x13)
  {
    goto LABEL_55;
  }

  v22 = v14[9];
  if (v14[9])
  {
    v23 = &v3[v22];
    if ((v3 + v22))
    {
      if (v4 - 2 < v23 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v4 - 2 < v23)
    {
      return 0;
    }
  }

  if (v15 >= 0x17 && (v24 = v14[11]) != 0)
  {
    v25 = &v3[v24];
    if ((v25 & 3) != 0)
    {
      if (v5 < v25 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v25)
    {
      return 0;
    }

    v49 = *(v2 + v25);
    if (v49 < 1)
    {
      return 0;
    }

    if (v4 - 1 < v25 + v49)
    {
      return 0;
    }

    v26 = a1;
    v27 = a2;
    if (!sub_2DA624(a2, (a1 + v24 + *(a1 + v24))))
    {
      return 0;
    }
  }

  else
  {
LABEL_55:
    v26 = a1;
    v27 = a2;
    if (!sub_2DA624(a2, 0))
    {
      return 0;
    }
  }

  if (!sub_2CDF90(v26, v27, 0x18u))
  {
    return 0;
  }

  v28 = (v26 - *v26);
  if (*v28 < 0x19u)
  {
    v31 = 0;
    v30 = v27;
  }

  else
  {
    v29 = v28[12];
    v30 = v27;
    v31 = v29 ? (v26 + v29 + *(v26 + v29)) : 0;
  }

  if (!sub_2DA624(v30, v31) || !sub_2CDF90(v26, v27, 0x1Au))
  {
    return 0;
  }

  v32 = v26;
  v33 = *v26;
  v34 = -v33;
  v35 = (v26 - v33);
  if (*v35 < 0x1Bu)
  {
    goto LABEL_68;
  }

  v36 = v35[13];
  v37 = v27;
  if (v36)
  {
    if (!sub_2CE100(v27, (v26 + v36 + *(v26 + v36)), 4uLL, 0))
    {
      return 0;
    }

    v32 = v26;
    v34 = -*v26;
LABEL_68:
    v37 = v27;
  }

  v38 = (v32 + v34);
  if (*v38 >= 0x1Bu && (v39 = v38[13]) != 0)
  {
    v40 = v32;
    v41 = (v32 + v39 + *(v32 + v39));
  }

  else
  {
    v40 = v32;
    v41 = 0;
  }

  if (sub_2E3720(v37, v41) && sub_2CDF90(v40, v27, 0x1Cu))
  {
    v42 = (v40 - *v40);
    if (*v42 >= 0x1Du && (v43 = v42[14]) != 0)
    {
      v44 = (v40 + v43 + *(v40 + v43));
    }

    else
    {
      v44 = 0;
    }

    if (sub_2DA624(v27, v44) && sub_2CDF90(v40, v27, 0x22u))
    {
      v45 = (v40 - *v40);
      if ((*v45 < 0x23u || (v46 = v45[17]) == 0 || sub_2E3928((v40 + v46 + *(v40 + v46)), v27)) && sub_2CDF90(v40, v27, 0x24u))
      {
        v47 = (v40 - *v40);
        if (*v47 < 0x25u || (v48 = v47[18]) == 0 || sub_2E3928((v40 + v48 + *(v40 + v48)), v27))
        {
          --*(v27 + 40);
          return 1;
        }
      }
    }
  }

  return 0;
}

BOOL sub_2E3720(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E37AC((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_2E37AC(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = (a1 - *a1);
  v6 = *v5;
  if (v6 < 5)
  {
LABEL_28:
    --*(a2 + 40);
    return 1;
  }

  v7 = v5[2];
  if (v5[2])
  {
    v8 = a1 + v7 - *a2;
    if (v8 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v9 = *(a2 + 8);
    if (v9 < 5 || v9 - 4 < v8)
    {
      return result;
    }

    v10 = *(*a2 + v8);
    if (v10 < 1)
    {
      return 0;
    }

    if (v9 - 1 < v8 + v10)
    {
      return 0;
    }

    v11 = (a1 + v7 + *(a1 + v7));
    v12 = v11 - *a2;
    if (v12 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v13 = *(a2 + 8);
    if (v13 < 5 || v13 - 4 < v12)
    {
      return result;
    }

    v14 = *v11;
    if (v14 > 0xFFFFFFE)
    {
      return 0;
    }

    v15 = (8 * v14) | 4;
    v17 = v13 >= v15;
    v16 = v13 - v15;
    v17 = v16 != 0 && v17 && v16 >= v12;
    if (!v17)
    {
      return 0;
    }
  }

  if (v6 < 7)
  {
    goto LABEL_28;
  }

  v18 = v5[3];
  if (!v18)
  {
    goto LABEL_28;
  }

  v19 = a1 + v18 - *a2;
  if (v19 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  result = 0;
  v20 = *(a2 + 8);
  if (v20 >= 5 && v20 - 4 >= v19)
  {
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_2E3928(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v14 = *a1;
    v15 = -v14;
    v16 = (a1 - v14);
    if (*v16 >= 5u)
    {
      v17 = v16[2];
      if (v17)
      {
        v18 = &v3[v17];
        if ((v18 & 3) != 0)
        {
          if (v5 < v18 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v18)
        {
          return 0;
        }

        v19 = *(v2 + v18);
        if (v19 < 1)
        {
          return 0;
        }

        if (v4 - 1 < v18 + v19)
        {
          return 0;
        }

        v20 = a1;
        v21 = a2;
        if (!sub_2E3B68((a1 + v17 + *(a1 + v17)), a2))
        {
          return 0;
        }

        a1 = v20;
        v15 = -*v20;
        a2 = v21;
      }
    }

    v22 = (a1 + v15);
    if (*v22 < 7u)
    {
      goto LABEL_41;
    }

    v23 = v22[3];
    if (!v22[3])
    {
      goto LABEL_41;
    }

    v24 = a1 + v23 - *a2;
    if (v24 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    v25 = *(a2 + 8);
    if (v25 >= 5 && v25 - 4 >= v24)
    {
      v26 = *(*a2 + v24);
      if (v26 >= 1 && v25 - 1 >= v24 + v26)
      {
        v27 = a2;
        v28 = sub_2E3B68((a1 + v23 + *(a1 + v23)), a2);
        a2 = v27;
        if (v28)
        {
LABEL_41:
          --*(a2 + 40);
          return 1;
        }
      }

      return 0;
    }
  }

  return 0;
}

uint64_t sub_2E3B68(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((*(a2 + 24) & 1) == 0 && v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 < 5)
  {
    goto LABEL_67;
  }

  v16 = v14[2];
  if (v14[2])
  {
    v17 = &v3[v16];
    if ((&v3[v16] & 3) != 0)
    {
      if (v5 < v17 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v17)
    {
      return 0;
    }

    v18 = *&v17[v2];
    if (v18 < 1 || v4 - 1 < &v17[v18])
    {
      return 0;
    }

    v19 = (a1 + v16 + *(a1 + v16));
    v20 = v19 - v2;
    if (((v19 - v2) & 3) != 0)
    {
      if (v5 < v20 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v20)
    {
      return 0;
    }

    v21 = *v19;
    if (v21 > 0x1FFFFFFE)
    {
      return 0;
    }

    v22 = 4 * v21 + 4;
    v6 = v4 >= v22;
    v23 = v4 - v22;
    if (v23 == 0 || !v6 || v23 < v20)
    {
      return 0;
    }
  }

  if (v15 < 7)
  {
    goto LABEL_67;
  }

  v25 = v14[3];
  if (v14[3])
  {
    v26 = &v3[v25];
    if ((&v3[v25] & 3) != 0)
    {
      if (v5 < v26 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v26)
    {
      return 0;
    }

    v27 = *&v26[v2];
    if (v27 < 1 || v4 - 1 < &v26[v27])
    {
      return 0;
    }

    v28 = (a1 + v25 + *(a1 + v25));
    v29 = v28 - v2;
    if (((v28 - v2) & 3) != 0)
    {
      if (v5 < v29 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v29)
    {
      return 0;
    }

    v30 = *v28;
    if (v30 > 0x1FFFFFFE)
    {
      return 0;
    }

    v31 = 4 * v30 + 4;
    v6 = v4 >= v31;
    v32 = v4 - v31;
    if (v32 == 0 || !v6 || v32 < v29)
    {
      return 0;
    }
  }

  if (v15 >= 9 && (v34 = v14[4]) != 0)
  {
    v35 = &v3[v34];
    if ((v35 & 3) != 0)
    {
      if (v5 < v35 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v35)
    {
      return 0;
    }

    v42 = *(v2 + v35);
    if (v42 < 1)
    {
      return 0;
    }

    if (v4 - 1 < v35 + v42)
    {
      return 0;
    }

    v36 = a1;
    v37 = a2;
    if (!sub_2D986C(a2, (a1 + v34 + *(a1 + v34))))
    {
      return 0;
    }
  }

  else
  {
LABEL_67:
    v36 = a1;
    v37 = a2;
    if (!sub_2D986C(a2, 0))
    {
      return 0;
    }
  }

  if (sub_2CDF90(v36, v37, 0xAu))
  {
    v38 = (v36 - *v36);
    if (*v38 < 0xBu)
    {
      v41 = 0;
      v40 = v37;
    }

    else
    {
      v39 = v38[5];
      v40 = v37;
      v41 = v39 ? (v36 + v39 + *(v36 + v39)) : 0;
    }

    if (sub_2D986C(v40, v41))
    {
      --*(v37 + 40);
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2E3F00(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = (a1 - v15);
    if (*v17 >= 5u)
    {
      v18 = v17[2];
      if (v17[2])
      {
        v19 = &v3[v18];
        if ((v19 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v19 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v19)
        {
          return 0;
        }

        v20 = *(v2 + v19);
        if (v20 < 1 || v4 - 1 < v19 + v20)
        {
          return 0;
        }

        v21 = (a1 + v18);
        v22 = (a1 + v18 + *(a1 + v18));
        v23 = v22 - v2;
        if ((v23 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v23 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v23)
        {
          return 0;
        }

        v24 = *v22;
        if (v24 > 0x1FFFFFFE)
        {
          return 0;
        }

        v25 = 4 * v24 + 4;
        v6 = v4 >= v25;
        v26 = v4 - v25;
        if (v26 == 0 || !v6 || v26 < v23)
        {
          return 0;
        }

        v28 = (v21 + *v21);
        if (*v28)
        {
          v34 = a1;
          v29 = 0;
          v30 = v28 + 1;
          while (1)
          {
            v31 = a2;
            if ((sub_2E4174((v30 + *v30), a2) & 1) == 0)
            {
              return 0;
            }

            ++v29;
            ++v30;
            a2 = v31;
            if (v29 >= *v28)
            {
              a1 = v34;
              v16 = -*v34;
              break;
            }
          }
        }
      }
    }

    if (*(a1 + v16) < 7u || !*(a1 + v16 + 6))
    {
LABEL_54:
      --*(a2 + 40);
      return 1;
    }

    v32 = a1 + *(a1 + v16 + 6) - *a2;
    if ((v32 & 3) == 0 || (*(a2 + 24) & 1) == 0)
    {
      v13 = 0;
      v33 = *(a2 + 8);
      if (v33 < 5 || v33 - 4 < v32)
      {
        return v13;
      }

      goto LABEL_54;
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2E4174(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 < 5)
  {
    goto LABEL_60;
  }

  v16 = v14[2];
  if (v14[2])
  {
    if (&v3[v16] & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    if (v4 < 9 || v4 - 8 < &v3[v16])
    {
      return 0;
    }
  }

  if (v15 < 7)
  {
    goto LABEL_60;
  }

  v17 = v14[3];
  if (v14[3])
  {
    v18 = &v3[v17];
    if ((&v3[v17] & 3) != 0)
    {
      if (v5 < v18 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v18)
    {
      return 0;
    }

    v19 = *&v18[v2];
    if (v19 < 1 || v4 - 1 < &v18[v19])
    {
      return 0;
    }

    v20 = (a1 + v17 + *(a1 + v17));
    v21 = v20 - v2;
    if (((v20 - v2) & 3) != 0)
    {
      if (v5 < v21 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v21)
    {
      return 0;
    }

    v22 = *v20;
    if (v22 > 0x1FFFFFFE)
    {
      return 0;
    }

    v23 = 4 * v22 + 4;
    v6 = v4 >= v23;
    v24 = v4 - v23;
    if (v24 == 0 || !v6 || v24 < v21)
    {
      return 0;
    }
  }

  if (v15 < 9)
  {
    goto LABEL_60;
  }

  v26 = v14[4];
  if (v14[4])
  {
    v27 = &v3[v26];
    if ((&v3[v26] & 3) != 0)
    {
      if (v5 < v27 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v27)
    {
      return 0;
    }
  }

  if (v15 >= 0xB && (v28 = v14[5]) != 0)
  {
    v29 = &v3[v28];
    if ((v29 & 3) != 0)
    {
      if (v5 < v29 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v29)
    {
      return 0;
    }

    v36 = *(v2 + v29);
    if (v36 < 1)
    {
      return 0;
    }

    if (v4 - 1 < v29 + v36)
    {
      return 0;
    }

    v30 = a1;
    v31 = a2;
    if (!sub_2DD394(a2, (a1 + v28 + *(a1 + v28))))
    {
      return 0;
    }
  }

  else
  {
LABEL_60:
    v30 = a1;
    v31 = a2;
    if (!sub_2DD394(a2, 0))
    {
      return 0;
    }
  }

  if (sub_2CDF90(v30, v31, 0xCu))
  {
    v32 = (v30 - *v30);
    if (*v32 < 0xDu)
    {
      v35 = 0;
      v34 = v31;
    }

    else
    {
      v33 = v32[6];
      v34 = v31;
      v35 = v33 ? (v30 + v33 + *(v30 + v33)) : 0;
    }

    if (sub_2D986C(v34, v35))
    {
      --*(v31 + 40);
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2E44D0(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = v8.i32[0];
  if (*v15 < 5u)
  {
    goto LABEL_46;
  }

  v17 = v15[2];
  if (!v15[2])
  {
    goto LABEL_46;
  }

  v18 = &v3[v17];
  if ((v18 & 3) != 0)
  {
    if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v18)
  {
    return 0;
  }

  v19 = *(*&v2 + v18);
  if (v19 < 1 || v4 - 1 < v18 + v19)
  {
    return 0;
  }

  v20 = (a1 + v17);
  v21 = (a1 + v17 + *(a1 + v17));
  v22 = v21 - *&v2;
  if ((v22 & 3) != 0)
  {
    if (v5 < v22 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (v5 < v22)
  {
    return 0;
  }

LABEL_35:
  v23 = *v21;
  if (v23 > 0x1FFFFFFE)
  {
    return 0;
  }

  v24 = 4 * v23 + 4;
  v6 = v4 >= v24;
  v25 = v4 - v24;
  if (v25 == 0 || !v6 || v25 < v22)
  {
    return 0;
  }

  v27 = (v20 + *v20);
  if (*v27)
  {
    v28 = 0;
    v29 = v27 + 1;
    while (1)
    {
      v30 = a2;
      if ((sub_2E471C((v29 + *v29), a2) & 1) == 0)
      {
        return 0;
      }

      ++v28;
      ++v29;
      a2 = v30;
      if (v28 >= *v27)
      {
        v16 = v30[5].i32[0] - 1;
        break;
      }
    }
  }

LABEL_46:
  a2[5].i32[0] = v16;
  return 1;
}

uint64_t sub_2E471C(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = v8.i32[0];
  if (*v15 < 5u)
  {
    goto LABEL_46;
  }

  v17 = v15[2];
  if (!v15[2])
  {
    goto LABEL_46;
  }

  v18 = &v3[v17];
  if ((v18 & 3) != 0)
  {
    if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v18)
  {
    return 0;
  }

  v19 = *(*&v2 + v18);
  if (v19 < 1 || v4 - 1 < v18 + v19)
  {
    return 0;
  }

  v20 = (a1 + v17);
  v21 = (a1 + v17 + *(a1 + v17));
  v22 = v21 - *&v2;
  if ((v22 & 3) != 0)
  {
    if (v5 < v22 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (v5 < v22)
  {
    return 0;
  }

LABEL_35:
  v23 = *v21;
  if (v23 > 0x1FFFFFFE)
  {
    return 0;
  }

  v24 = 4 * v23 + 4;
  v6 = v4 >= v24;
  v25 = v4 - v24;
  if (v25 == 0 || !v6 || v25 < v22)
  {
    return 0;
  }

  v27 = (v20 + *v20);
  if (*v27)
  {
    v28 = 0;
    v29 = v27 + 1;
    while (1)
    {
      v30 = a2;
      if ((sub_2D9A14((v29 + *v29), a2) & 1) == 0)
      {
        return 0;
      }

      ++v28;
      ++v29;
      a2 = v30;
      if (v28 >= *v27)
      {
        v16 = v30[5].i32[0] - 1;
        break;
      }
    }
  }

LABEL_46:
  a2[5].i32[0] = v16;
  return 1;
}

uint64_t sub_2E4968(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = (a1 - v15);
    if (*v17 >= 5u)
    {
      v18 = v17[2];
      if (v17[2])
      {
        v19 = &v3[v18];
        if ((v19 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v19 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v19)
        {
          return 0;
        }

        v20 = *(v2 + v19);
        if (v20 < 1 || v4 - 1 < v19 + v20)
        {
          return 0;
        }

        v21 = (a1 + v18);
        v22 = (a1 + v18 + *(a1 + v18));
        v23 = v22 - v2;
        if ((v23 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v23 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v23)
        {
          return 0;
        }

        v24 = *v22;
        if (v24 > 0x1FFFFFFE)
        {
          return 0;
        }

        v25 = 4 * v24 + 4;
        v6 = v4 >= v25;
        v26 = v4 - v25;
        if (v26 == 0 || !v6 || v26 < v23)
        {
          return 0;
        }

        v28 = (v21 + *v21);
        if (*v28)
        {
          v29 = a1;
          v30 = 0;
          v31 = v28 + 1;
          while (1)
          {
            v32 = a2;
            if ((sub_2E4FFC((v31 + *v31), a2) & 1) == 0)
            {
              return 0;
            }

            ++v30;
            ++v31;
            a2 = v32;
            if (v30 >= *v28)
            {
              a1 = v29;
              v16 = -*v29;
              break;
            }
          }
        }
      }
    }

    v33 = a1 + v16;
    if (*(a1 + v16) >= 7u && (v34 = *(v33 + 3), *(v33 + 3)))
    {
      v35 = a1 + v34 - *a2;
      if (v35 & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      v13 = 0;
      v36 = *(a2 + 8);
      if (v36 < 5 || v36 - 4 < v35)
      {
        return v13;
      }

      v37 = *(*a2 + v35);
      if (v37 < 1)
      {
        return 0;
      }

      if (v36 - 1 < v35 + v37)
      {
        return 0;
      }

      v38 = (a1 + v34);
      v39 = (v38 + *v38);
      v40 = v39 - *a2;
      if (v40 & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      v13 = 0;
      v41 = *(a2 + 8);
      if (v41 < 5 || v41 - 4 < v40)
      {
        return v13;
      }

      v42 = *v39;
      if (v42 > 0x1FFFFFFE)
      {
        return 0;
      }

      v43 = 4 * v42 + 4;
      v6 = v41 >= v43;
      v44 = v41 - v43;
      if (v44 == 0 || !v6 || v44 < v40)
      {
        return 0;
      }

      v46 = a1;
      v47 = a2;
      if (!sub_2E4E58(a2, (v38 + *v38)))
      {
        return 0;
      }
    }

    else
    {
      v46 = a1;
      v47 = a2;
      if (!sub_2E4E58(a2, 0))
      {
        return 0;
      }
    }

    if (!sub_2CDF90(v46, v47, 8u))
    {
      return 0;
    }

    v48 = v46;
    v49 = *v46;
    v50 = -v49;
    v51 = (v46 - v49);
    if (*v51 >= 9u)
    {
      v52 = v51[4];
      v53 = v47;
      if (!v52)
      {
LABEL_75:
        v54 = (v48 + v50);
        if (*v54 >= 9u && (v55 = v54[4]) != 0)
        {
          v56 = v48;
          v57 = (v48 + v55 + *(v48 + v55));
        }

        else
        {
          v56 = v48;
          v57 = 0;
        }

        if (!sub_2E4EE4(v53, v57) || !sub_2CDF90(v56, v47, 0xAu))
        {
          return 0;
        }

        v58 = v56;
        v59 = *v56;
        v60 = -v59;
        v61 = (v56 - v59);
        if (*v61 >= 0xBu)
        {
          v62 = v61[5];
          v63 = v47;
          if (!v62)
          {
            goto LABEL_86;
          }

          if (!sub_2CE100(v47, (v56 + v62 + *(v56 + v62)), 4uLL, 0))
          {
            return 0;
          }

          v58 = v56;
          v60 = -*v56;
        }

        v63 = v47;
LABEL_86:
        v64 = (v58 + v60);
        if (*v64 >= 0xBu && (v65 = v64[5]) != 0)
        {
          v66 = v58;
          v67 = (v58 + v65 + *(v58 + v65));
        }

        else
        {
          v66 = v58;
          v67 = 0;
        }

        if (!sub_2E4F70(v63, v67) || !sub_2DAD14(v66, v47, 0xCu, 4) || !sub_2CDF90(v66, v47, 0xEu))
        {
          return 0;
        }

        v68 = (v66 - *v66);
        if (*v68 < 0xFu || (v69 = v68[7]) == 0)
        {
LABEL_97:
          --*(v47 + 40);
          return 1;
        }

        if (sub_2CDED0((v66 + v69 + *(v66 + v69)), v47))
        {
          --*(v47 + 40);
          goto LABEL_97;
        }

        return 0;
      }

      if (!sub_2CE100(v47, (v46 + v52 + *(v46 + v52)), 4uLL, 0))
      {
        return 0;
      }

      v48 = v46;
      v50 = -*v46;
    }

    v53 = v47;
    goto LABEL_75;
  }

  return 0;
}

uint64_t sub_2E4E58(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E78CC((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2E4EE4(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E7BD0((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2E4F70(uint32x2_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E8FBC((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2E4FFC(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (v12)
  {
    result = 0;
    if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v12)
    {
      return result;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  v6 = v4 >= v13;
  v14 = v4 - v13;
  if (v14 == 0 || !v6 || v14 < v12)
  {
    return 0;
  }

  v16 = a1;
  v17 = (a1 - *a1);
  v18 = *v17;
  if (v18 < 5)
  {
    goto LABEL_70;
  }

  if (!v17[2])
  {
    goto LABEL_29;
  }

  v19 = &v3[v17[2]];
  if (v19 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  result = 0;
  if (v4 >= 9 && v4 - 8 >= v19)
  {
LABEL_29:
    v16 = a1;
    if (v18 < 7)
    {
LABEL_70:
      v24 = v16;
      result = sub_2D9788(v16, a2, 0x1Cu, 8);
      if (result)
      {
        result = sub_2DAD14(v24, a2, 0x1Eu, 4);
        if (result)
        {
          result = sub_2CDF90(v24, a2, 0x20u);
          if (result)
          {
            v26 = (v24 - *v24);
            if (*v26 < 0x21u)
            {
              v29 = 0;
              v28 = a2;
            }

            else
            {
              v27 = v26[16];
              v28 = a2;
              v29 = v27 ? (v24 + v27 + *(v24 + v27)) : 0;
            }

            result = sub_2DA624(v28, v29);
            if (result)
            {
              result = sub_2CDF90(v24, a2, 0x22u);
              if (result)
              {
                v30 = (v24 - *v24);
                if (*v30 < 0x23u)
                {
                  v33 = 0;
                  v32 = a2;
                }

                else
                {
                  v31 = v30[17];
                  v32 = a2;
                  v33 = v31 ? (v24 + v31 + *(v24 + v31)) : 0;
                }

                result = sub_2DA624(v32, v33);
                if (result)
                {
                  result = sub_2CDF90(v24, a2, 0x24u);
                  if (result)
                  {
                    v34 = v24;
                    v35 = *v24;
                    v36 = -v35;
                    v37 = (v24 - v35);
                    if (*v37 >= 0x25u)
                    {
                      v38 = v37[18];
                      if (v38)
                      {
                        result = sub_2CE100(a2, (v24 + v38 + *(v24 + v38)), 4uLL, 0);
                        if (!result)
                        {
                          return result;
                        }

                        v34 = v24;
                        v36 = -*v24;
                      }
                    }

                    v39 = (v34 + v36);
                    if (*v39 >= 0x25u && (v40 = v39[18]) != 0)
                    {
                      v41 = (v24 + v40 + *(v24 + v40));
                    }

                    else
                    {
                      v41 = 0;
                    }

                    result = sub_2E6044(a2, v41);
                    if (result)
                    {
                      result = sub_2CDF90(v24, a2, 0x26u);
                      if (result)
                      {
                        v42 = (v24 - *v24);
                        if (*v42 >= 0x27u && (v43 = v42[19]) != 0)
                        {
                          v44 = (v24 + v43 + *(v24 + v43));
                        }

                        else
                        {
                          v44 = 0;
                        }

                        result = sub_2D986C(a2, v44);
                        if (result)
                        {
                          v45 = (v24 - *v24);
                          if (*v45 >= 0x27u && (v46 = v45[19]) != 0)
                          {
                            v47 = (v24 + v46 + *(v24 + v46));
                          }

                          else
                          {
                            v47 = 0;
                          }

                          result = sub_2E60D0(a2, v47);
                          if (result)
                          {
                            result = sub_2CDF90(v24, a2, 0x28u);
                            if (result)
                            {
                              v48 = (v24 - *v24);
                              if (*v48 >= 0x29u && (v49 = v48[20]) != 0)
                              {
                                v50 = (v24 + v49 + *(v24 + v49));
                              }

                              else
                              {
                                v50 = 0;
                              }

                              result = sub_2D986C(a2, v50);
                              if (result)
                              {
                                v51 = (v24 - *v24);
                                if (*v51 >= 0x29u && (v52 = v51[20]) != 0)
                                {
                                  v53 = (v24 + v52 + *(v24 + v52));
                                }

                                else
                                {
                                  v53 = 0;
                                }

                                result = sub_2E60D0(a2, v53);
                                if (result)
                                {
                                  v54 = v24;
                                  v55 = (v24 - *v24);
                                  v56 = a2;
                                  if (*v55 < 0x2Fu || (v57 = v55[23]) == 0 || (result = 0, v58 = *(a2 + 8), v58 >= 2) && (v56 = a2, v54 = v24, v58 - 1 >= v24 + v57 - *a2))
                                  {
                                    result = sub_2DAD14(v54, v56, 0x38u, 4);
                                    if (result)
                                    {
                                      result = sub_2CDF90(v24, a2, 0x40u);
                                      if (result)
                                      {
                                        v59 = *v24;
                                        v60 = -v59;
                                        if (*(v24 - v59) >= 0x41u && *(v24 - v59 + 64))
                                        {
                                          result = sub_2CE100(a2, (v24 + *(v24 - v59 + 64) + *(v24 + *(v24 - v59 + 64))), 4uLL, 0);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v60 = -*v24;
                                        }

                                        v61 = (v24 + v60);
                                        if (*v61 >= 0x41u && (v62 = v61[32]) != 0)
                                        {
                                          v63 = (v24 + v62 + *(v24 + v62));
                                        }

                                        else
                                        {
                                          v63 = 0;
                                        }

                                        result = sub_2E615C(a2, v63);
                                        if (result)
                                        {
                                          v64 = v24;
                                          v65 = (v24 - *v24);
                                          v66 = *v65;
                                          v67 = a2;
                                          if (v66 < 0x43 || (!v65[33] || (result = 0, v68 = *(a2 + 8), v68 >= 2) && (v67 = a2, v64 = v24, v68 - 1 >= v24 + v65[33] - *a2)) && (v66 < 0x45 || (v69 = v65[34]) == 0 || (result = 0, v70 = *(v67 + 8), v70 >= 2) && (v67 = a2, v64 = v24, v70 - 1 >= v24 + v69 - *a2)))
                                          {
                                            result = sub_2DAD14(v64, v67, 0x46u, 4);
                                            if (result)
                                            {
                                              result = sub_2D8DE0(v24, a2, 0x48u, 2);
                                              if (result)
                                              {
                                                result = sub_2D8DE0(v24, a2, 0x4Au, 2);
                                                if (result)
                                                {
                                                  result = sub_2DAD14(v24, a2, 0x4Cu, 4);
                                                  if (result)
                                                  {
                                                    result = sub_2D8DE0(v24, a2, 0x4Eu, 2);
                                                    if (result)
                                                    {
                                                      result = sub_2D8DE0(v24, a2, 0x50u, 2);
                                                      if (result)
                                                      {
                                                        result = sub_2CDF90(v24, a2, 0x56u);
                                                        if (result)
                                                        {
                                                          v71 = (v24 - *v24);
                                                          if (*v71 < 0x57u || (v72 = v71[43]) == 0 || (result = sub_2E6F90((v24 + v72 + *(v24 + v72)), a2), result))
                                                          {
                                                            result = sub_2D8DE0(v24, a2, 0x58u, 2);
                                                            if (result)
                                                            {
                                                              result = sub_2CDF90(v24, a2, 0x5Au);
                                                              if (result)
                                                              {
                                                                v73 = (v24 - *v24);
                                                                if (*v73 >= 0x5Bu && (v74 = v73[45]) != 0)
                                                                {
                                                                  v75 = (v24 + v74 + *(v24 + v74));
                                                                }

                                                                else
                                                                {
                                                                  v75 = 0;
                                                                }

                                                                result = sub_2DA624(a2, v75);
                                                                if (result)
                                                                {
                                                                  result = sub_2CDF90(v24, a2, 0x5Cu);
                                                                  if (result)
                                                                  {
                                                                    v76 = (v24 - *v24);
                                                                    if (*v76 >= 0x5Du && (v77 = v76[46]) != 0)
                                                                    {
                                                                      v78 = (v24 + v77 + *(v24 + v77));
                                                                    }

                                                                    else
                                                                    {
                                                                      v78 = 0;
                                                                    }

                                                                    result = sub_2DA624(a2, v78);
                                                                    if (result)
                                                                    {
                                                                      result = sub_2CDF90(v24, a2, 0x5Eu);
                                                                      if (result)
                                                                      {
                                                                        v79 = (v24 - *v24);
                                                                        if (*v79 >= 0x5Fu && (v80 = v79[47]) != 0)
                                                                        {
                                                                          v81 = (v24 + v80 + *(v24 + v80));
                                                                        }

                                                                        else
                                                                        {
                                                                          v81 = 0;
                                                                        }

                                                                        result = sub_2D986C(a2, v81);
                                                                        if (result)
                                                                        {
                                                                          v82 = (v24 - *v24);
                                                                          if (*v82 >= 0x5Fu && (v83 = v82[47]) != 0)
                                                                          {
                                                                            v84 = (v24 + v83 + *(v24 + v83));
                                                                          }

                                                                          else
                                                                          {
                                                                            v84 = 0;
                                                                          }

                                                                          result = sub_2E61E8(a2, v84);
                                                                          if (result)
                                                                          {
                                                                            result = sub_2CDF90(v24, a2, 0x60u);
                                                                            if (result)
                                                                            {
                                                                              v85 = (v24 - *v24);
                                                                              if (*v85 >= 0x61u && (v86 = v85[48]) != 0)
                                                                              {
                                                                                v87 = (v24 + v86 + *(v24 + v86));
                                                                              }

                                                                              else
                                                                              {
                                                                                v87 = 0;
                                                                              }

                                                                              result = sub_2D986C(a2, v87);
                                                                              if (result)
                                                                              {
                                                                                v88 = (v24 - *v24);
                                                                                if (*v88 >= 0x61u && (v89 = v88[48]) != 0)
                                                                                {
                                                                                  v90 = (v24 + v89 + *(v24 + v89));
                                                                                }

                                                                                else
                                                                                {
                                                                                  v90 = 0;
                                                                                }

                                                                                result = sub_2E61E8(a2, v90);
                                                                                if (result)
                                                                                {
                                                                                  v91 = v24;
                                                                                  v92 = (v24 - *v24);
                                                                                  v93 = *v92;
                                                                                  v94 = a2;
                                                                                  if (v93 < 0x63 || (!v92[49] || (result = 0, v95 = *(a2 + 8), v95 >= 2) && (v94 = a2, v91 = v24, v95 - 1 >= v24 + v92[49] - *a2)) && (v93 < 0x69 || (!v92[52] || (result = 0, v96 = *(v94 + 8), v96 >= 2) && (v94 = a2, v91 = v24, v96 - 1 >= v24 + v92[52] - *a2)) && (v93 < 0x6B || (v97 = v92[53]) == 0 || (result = 0, v98 = *(v94 + 8), v98 >= 2) && (v94 = a2, v91 = v24, v98 - 1 >= v24 + v97 - *a2))))
                                                                                  {
                                                                                    result = sub_2CDF90(v91, v94, 0x6Cu);
                                                                                    if (result)
                                                                                    {
                                                                                      v99 = *v24;
                                                                                      v100 = -v99;
                                                                                      if (*(v24 - v99) >= 0x6Du && *(v24 - v99 + 108))
                                                                                      {
                                                                                        result = sub_2CE100(a2, (v24 + *(v24 - v99 + 108) + *(v24 + *(v24 - v99 + 108))), 4uLL, 0);
                                                                                        if (!result)
                                                                                        {
                                                                                          return result;
                                                                                        }

                                                                                        v100 = -*v24;
                                                                                      }

                                                                                      v101 = (v24 + v100);
                                                                                      if (*v101 >= 0x6Du && (v102 = v101[54]) != 0)
                                                                                      {
                                                                                        v103 = (v24 + v102 + *(v24 + v102));
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v103 = 0;
                                                                                      }

                                                                                      result = sub_2E6274(a2, v103);
                                                                                      if (result)
                                                                                      {
                                                                                        v104 = v24;
                                                                                        v105 = (v24 - *v24);
                                                                                        v106 = *v105;
                                                                                        v107 = a2;
                                                                                        if (v106 < 0x6F || (!v105[55] || (result = 0, v108 = *(a2 + 8), v108 >= 2) && (v107 = a2, v104 = v24, v108 - 1 >= v24 + v105[55] - *a2)) && (v106 < 0x71 || (!v105[56] || (result = 0, v109 = *(v107 + 8), v109 >= 2) && (v107 = a2, v104 = v24, v109 - 1 >= v24 + v105[56] - *a2)) && (v106 < 0x73 || (v110 = v105[57]) == 0 || (result = 0, v111 = *(v107 + 8), v111 >= 2) && (v107 = a2, v104 = v24, v111 - 1 >= v24 + v110 - *a2))))
                                                                                        {
                                                                                          result = sub_2D8DE0(v104, v107, 0x76u, 2);
                                                                                          if (result)
                                                                                          {
                                                                                            result = sub_2DAD14(v24, a2, 0x78u, 2);
                                                                                            if (result)
                                                                                            {
                                                                                              result = sub_2D8DE0(v24, a2, 0x7Au, 2);
                                                                                              if (result)
                                                                                              {
                                                                                                result = sub_2D8DE0(v24, a2, 0x7Cu, 2);
                                                                                                if (result)
                                                                                                {
                                                                                                  result = sub_2DAD14(v24, a2, 0x7Eu, 2);
                                                                                                  if (result)
                                                                                                  {
                                                                                                    result = sub_2D9788(v24, a2, 0x80u, 4);
                                                                                                    if (result)
                                                                                                    {
                                                                                                      result = sub_2CDF90(v24, a2, 0x82u);
                                                                                                      if (result)
                                                                                                      {
                                                                                                        v112 = (v24 - *v24);
                                                                                                        if (*v112 >= 0x83u && (v113 = v112[65]) != 0)
                                                                                                        {
                                                                                                          v114 = (v24 + v113 + *(v24 + v113));
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v114 = 0;
                                                                                                        }

                                                                                                        result = sub_2D986C(a2, v114);
                                                                                                        if (result)
                                                                                                        {
                                                                                                          result = sub_2CDF90(v24, a2, 0x8Cu);
                                                                                                          if (result)
                                                                                                          {
                                                                                                            v115 = (v24 - *v24);
                                                                                                            if (*v115 >= 0x8Du && (v116 = v115[70]) != 0)
                                                                                                            {
                                                                                                              v117 = (v24 + v116 + *(v24 + v116));
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v117 = 0;
                                                                                                            }

                                                                                                            result = sub_2DA624(a2, v117);
                                                                                                            if (result)
                                                                                                            {
                                                                                                              result = sub_2CDF90(v24, a2, 0x8Eu);
                                                                                                              if (result)
                                                                                                              {
                                                                                                                v118 = (v24 - *v24);
                                                                                                                if (*v118 >= 0x8Fu && (v119 = v118[71]) != 0)
                                                                                                                {
                                                                                                                  v120 = (v24 + v119 + *(v24 + v119));
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v120 = 0;
                                                                                                                }

                                                                                                                result = sub_2E6300(a2, v120);
                                                                                                                if (result)
                                                                                                                {
                                                                                                                  result = sub_2CDF90(v24, a2, 0x90u);
                                                                                                                  if (result)
                                                                                                                  {
                                                                                                                    v121 = (v24 - *v24);
                                                                                                                    if (*v121 >= 0x91u && (v122 = v121[72]) != 0)
                                                                                                                    {
                                                                                                                      v123 = (v24 + v122 + *(v24 + v122));
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v123 = 0;
                                                                                                                    }

                                                                                                                    result = sub_2E6300(a2, v123);
                                                                                                                    if (result)
                                                                                                                    {
                                                                                                                      result = sub_2CDF90(v24, a2, 0x92u);
                                                                                                                      if (result)
                                                                                                                      {
                                                                                                                        v124 = (v24 - *v24);
                                                                                                                        if (*v124 >= 0x93u && (v125 = v124[73]) != 0)
                                                                                                                        {
                                                                                                                          v126 = (v24 + v125 + *(v24 + v125));
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v126 = 0;
                                                                                                                        }

                                                                                                                        result = sub_2E6300(a2, v126);
                                                                                                                        if (result)
                                                                                                                        {
                                                                                                                          result = sub_2CDF90(v24, a2, 0x94u);
                                                                                                                          if (result)
                                                                                                                          {
                                                                                                                            v127 = (v24 - *v24);
                                                                                                                            if (*v127 >= 0x95u && (v128 = v127[74]) != 0)
                                                                                                                            {
                                                                                                                              v129 = (v24 + v128 + *(v24 + v128));
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v129 = 0;
                                                                                                                            }

                                                                                                                            result = sub_2E6300(a2, v129);
                                                                                                                            if (result)
                                                                                                                            {
                                                                                                                              result = sub_2DAD14(v24, a2, 0x96u, 4);
                                                                                                                              if (result)
                                                                                                                              {
                                                                                                                                v130 = v24;
                                                                                                                                v131 = (v24 - *v24);
                                                                                                                                v132 = a2;
                                                                                                                                if (*v131 < 0x99u || (v133 = v131[76]) == 0 || (result = 0, v134 = *(a2 + 8), v134 >= 2) && (v132 = a2, v130 = v24, v134 - 1 >= v24 + v133 - *a2))
                                                                                                                                {
                                                                                                                                  result = sub_2D9788(v130, v132, 0x9Au, 8);
                                                                                                                                  if (result)
                                                                                                                                  {
                                                                                                                                    result = sub_2CDF90(v24, a2, 0x9Cu);
                                                                                                                                    if (result)
                                                                                                                                    {
                                                                                                                                      v135 = (v24 - *v24);
                                                                                                                                      if (*v135 >= 0x9Du && (v136 = v135[78]) != 0)
                                                                                                                                      {
                                                                                                                                        v137 = (v24 + v136 + *(v24 + v136));
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v137 = 0;
                                                                                                                                      }

                                                                                                                                      result = sub_2D986C(a2, v137);
                                                                                                                                      if (result)
                                                                                                                                      {
                                                                                                                                        v138 = (v24 - *v24);
                                                                                                                                        if (*v138 >= 0x9Du && (v139 = v138[78]) != 0)
                                                                                                                                        {
                                                                                                                                          v140 = (v24 + v139 + *(v24 + v139));
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v140 = 0;
                                                                                                                                        }

                                                                                                                                        result = sub_2E6484(a2, v140);
                                                                                                                                        if (result)
                                                                                                                                        {
                                                                                                                                          result = sub_2CDF90(v24, a2, 0x9Eu);
                                                                                                                                          if (result)
                                                                                                                                          {
                                                                                                                                            v141 = (v24 - *v24);
                                                                                                                                            if (*v141 >= 0x9Fu && (v142 = v141[79]) != 0)
                                                                                                                                            {
                                                                                                                                              v143 = (v24 + v142 + *(v24 + v142));
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v143 = 0;
                                                                                                                                            }

                                                                                                                                            result = sub_2D986C(a2, v143);
                                                                                                                                            if (result)
                                                                                                                                            {
                                                                                                                                              v144 = (v24 - *v24);
                                                                                                                                              if (*v144 >= 0x9Fu && (v145 = v144[79]) != 0)
                                                                                                                                              {
                                                                                                                                                v146 = (v24 + v145 + *(v24 + v145));
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v146 = 0;
                                                                                                                                              }

                                                                                                                                              result = sub_2E6484(a2, v146);
                                                                                                                                              if (result)
                                                                                                                                              {
                                                                                                                                                --*(a2 + 40);
                                                                                                                                                return 1;
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      return result;
    }

    if (!v17[3])
    {
      goto LABEL_35;
    }

    v20 = &v3[v17[3]];
    if (v20 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    if (v4 >= 9 && v4 - 8 >= v20)
    {
LABEL_35:
      v16 = a1;
      if (v18 >= 9)
      {
        if (v17[4])
        {
          v21 = &v3[v17[4]];
          if ((v21 & 3) != 0)
          {
            result = 0;
            if (v5 < v21 || (*(a2 + 24) & 1) != 0)
            {
              return result;
            }
          }

          else if (v5 < v21)
          {
            return 0;
          }
        }

        v16 = a1;
        if (v18 >= 0xD)
        {
          if (v17[6])
          {
            v22 = &v3[v17[6]];
            if (v22)
            {
              result = 0;
              if (v4 - 2 < v22 || (*(a2 + 24) & 1) != 0)
              {
                return result;
              }
            }

            else if (v4 - 2 < v22)
            {
              return 0;
            }
          }

          v16 = a1;
          if (v18 >= 0xF)
          {
            if (v17[7] && v4 - 1 < &v3[v17[7]])
            {
              return 0;
            }

            if (v18 >= 0x11)
            {
              if (v17[8] && v4 - 1 < &v3[v17[8]])
              {
                return 0;
              }

              if (v18 >= 0x13)
              {
                if (v17[9] && v4 - 1 < &v3[v17[9]])
                {
                  return 0;
                }

                if (v18 >= 0x15)
                {
                  if (v17[10] && v4 - 1 < &v3[v17[10]])
                  {
                    return 0;
                  }

                  if (v18 >= 0x17)
                  {
                    if (v17[11] && v4 - 1 < &v3[v17[11]])
                    {
                      return 0;
                    }

                    if (v18 >= 0x19)
                    {
                      if (v17[12] && v4 - 1 < &v3[v17[12]])
                      {
                        return 0;
                      }

                      if (v18 >= 0x1B)
                      {
                        v23 = v17[13];
                        if (v23)
                        {
                          if (v4 - 1 < &v3[v23])
                          {
                            return 0;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      goto LABEL_70;
    }
  }

  return result;
}

uint64_t sub_2E6044(uint32x2_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E6510((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2E60D0(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E6708((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2E615C(uint32x2_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E6DA8((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_2E61E8(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E7080((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_2E6274(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E71B0((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2E6300(uint32x2_t *a1, int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = *a1;
  v3 = a2 - *a1;
  if (v3 & 3) != 0 && (a1[3].i8[0])
  {
    return 0;
  }

  v5 = a1[1];
  v6 = v5 - 4;
  if (v5 < 5 || v6 < v3)
  {
    return 0;
  }

  v8 = *a2;
  v9 = a1[5];
  v10 = vadd_s32(v9, 0x100000001);
  a1[5] = v10;
  v11 = vcgt_u32(v10, a1[2]);
  if ((v11.i32[0] | v11.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v8];
  if ((v3 - v8))
  {
    v13 = 0;
    if ((a1[3].i8[0] & 1) != 0 || v5 - 2 < v12)
    {
      return v13;
    }
  }

  else if (v5 - 2 < v12)
  {
    return 0;
  }

  v14 = *(*&v2 + v12);
  if ((v14 & 1) == 0)
  {
    if (v5 <= v14 || v5 - v14 < v12)
    {
      return 0;
    }

    v16 = (a2 - *a2);
    v17 = *v16;
    if (v17 >= 5)
    {
      v18 = v16[2];
      if (v16[2])
      {
        v19 = &v3[v18];
        if ((&v3[v18] & 3) != 0)
        {
          v13 = 0;
          if (v6 < v19 || (a1[3].i8[0] & 1) != 0)
          {
            return v13;
          }
        }

        else if (v6 < v19)
        {
          return 0;
        }
      }

      if (v17 >= 7 && v16[3])
      {
        v20 = &v3[v16[3]];
        if ((v20 & 3) != 0)
        {
          v13 = 0;
          if (v6 < v20 || (a1[3].i8[0] & 1) != 0)
          {
            return v13;
          }
        }

        else if (v6 < v20)
        {
          return 0;
        }
      }
    }

    a1[5].i32[0] = v9.i32[0];
    return 1;
  }

  return 0;
}

uint64_t sub_2E6484(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E72E0((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2E6510(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
    {
      return 0;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  if (v16 >= 5)
  {
    v17 = v15[2];
    if (v15[2])
    {
      v18 = &v3[v17];
      if ((&v3[v17] & 3) != 0)
      {
        if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v18)
      {
        return 0;
      }
    }

    if (v16 >= 7)
    {
      v19 = v15[3];
      if (v15[3])
      {
        v20 = &v3[v19];
        if ((&v3[v19] & 3) != 0)
        {
          if (v5 < v20 || (a2[3].i8[0] & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v20)
        {
          return 0;
        }

        v21 = *&v20[*&v2];
        if (v21 < 1 || v4 - 1 < &v20[v21])
        {
          return 0;
        }

        v22 = (a1 + v19 + *(a1 + v19));
        v23 = v22 - *&v2;
        if (((v22 - *&v2) & 3) != 0)
        {
          if (v5 < v23 || (a2[3].i8[0] & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v23)
        {
          return 0;
        }

        v24 = *v22;
        if (v24 > 0x7FFFFFFE)
        {
          return 0;
        }

        v25 = v24 + 4;
        v26 = &v23[v24 + 4];
        v27 = v4 - 1 >= v26 && v4 > v25;
        v28 = v27 && v4 - v25 >= v23;
        if (!v28 || *(*&v2 + v26))
        {
          return 0;
        }
      }

      if (v16 < 9 || !v15[4] || v4 - 1 >= &v3[v15[4]])
      {
        goto LABEL_55;
      }

      return 0;
    }
  }

LABEL_55:
  a2[5].i32[0] = v8.i32[0];
  return 1;
}

uint64_t sub_2E6708(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((*(a2 + 24) & 1) == 0 && v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 >= 5)
  {
    if (v14[2] && v4 - 1 < &v3[v14[2]])
    {
      return 0;
    }

    if (v15 >= 7)
    {
      if (v14[3] && v4 - 1 < &v3[v14[3]])
      {
        return 0;
      }

      if (v15 >= 9)
      {
        if (v14[4] && v4 - 1 < &v3[v14[4]])
        {
          return 0;
        }

        if (v15 >= 0xB)
        {
          v17 = v14[5];
          if (v14[5])
          {
            v18 = &v3[v17];
            if ((v18 & 3) != 0)
            {
              if (v5 < v18 || (*(a2 + 24) & 1) != 0)
              {
                return 0;
              }
            }

            else if (v5 < v18)
            {
              return 0;
            }

            v19 = *(v2 + v18);
            if (v19 < 1 || v4 - 1 < v18 + v19)
            {
              return 0;
            }

            v20 = (a1 + v17 + *(a1 + v17));
            v21 = v20 - v2;
            if ((v21 & 3) != 0)
            {
              if (v5 < v21 || (*(a2 + 24) & 1) != 0)
              {
                return 0;
              }
            }

            else if (v5 < v21)
            {
              return 0;
            }

            v22 = *v20;
            if (v22 > 0x7FFFFFFE)
            {
              return 0;
            }

            v23 = v22 + 4;
            v24 = v4 > v23;
            v25 = v4 - v23;
            if (!v24 || v25 < v21)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  if (!sub_2CDF90(a1, a2, 0xCu))
  {
    return 0;
  }

  v27 = a1;
  v28 = *a1;
  v29 = -v28;
  v30 = (a1 - v28);
  if (*v30 < 0xDu)
  {
    goto LABEL_53;
  }

  v31 = v30[6];
  v32 = a2;
  if (v31)
  {
    if (!sub_2CE100(a2, (a1 + v31 + *(a1 + v31)), 4uLL, 0))
    {
      return 0;
    }

    v27 = a1;
    v29 = -*a1;
LABEL_53:
    v32 = a2;
  }

  v33 = (v27 + v29);
  if (*v33 >= 0xDu && (v34 = v33[6]) != 0)
  {
    v35 = (v27 + v34 + *(v27 + v34));
  }

  else
  {
    v35 = 0;
  }

  if (sub_2E6AA0(v32, v35) && sub_2CDF90(a1, a2, 0xEu))
  {
    v36 = (a1 - *a1);
    if (*v36 < 0xFu)
    {
      v39 = 0;
      v38 = a2;
    }

    else
    {
      v37 = v36[7];
      v38 = a2;
      v39 = v37 ? (a1 + v37 + *(a1 + v37)) : 0;
    }

    if (sub_2D986C(v38, v39))
    {
      v40 = (a1 - *a1);
      if (*v40 < 0xFu)
      {
        v43 = 0;
        v42 = a2;
      }

      else
      {
        v41 = v40[7];
        v42 = a2;
        v43 = v41 ? (a1 + v41 + *(a1 + v41)) : 0;
      }

      if (sub_2D98D4(v42, v43))
      {
        --*(a2 + 40);
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2E6AA0(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E6B2C((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2E6B2C(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((*(a2 + 24) & 1) == 0 && v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 >= 5)
  {
    v16 = v14[2];
    if (v14[2])
    {
      if (&v3[v16] & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      if (v4 < 9 || v4 - 8 < &v3[v16])
      {
        return 0;
      }
    }

    if (v15 >= 7)
    {
      v17 = v14[3];
      if (v14[3])
      {
        v18 = &v3[v17];
        if ((&v3[v17] & 3) != 0)
        {
          if (v5 < v18 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v18)
        {
          return 0;
        }

        v19 = *&v18[v2];
        if (v19 < 1 || v4 - 1 < &v18[v19])
        {
          return 0;
        }

        v20 = (a1 + v17 + *(a1 + v17));
        v21 = v20 - v2;
        if ((v21 & 3) != 0)
        {
          if (v5 < v21 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v21)
        {
          return 0;
        }

        v22 = *v20;
        if (v22 > 0x7FFFFFFE)
        {
          return 0;
        }

        v23 = v22 + 4;
        v6 = v4 >= v23;
        v24 = v4 - v23;
        if (v24 == 0 || !v6 || v24 < v21)
        {
          return 0;
        }
      }

      if (v15 >= 9 && (v14[4] && v4 - 1 < &v3[v14[4]] || v15 >= 0xB && v14[5] && v4 - 1 < &v3[v14[5]]))
      {
        return 0;
      }
    }
  }

  if (sub_2D9788(a1, a2, 0xCu, 8))
  {
    --*(a2 + 40);
    return 1;
  }

  return 0;
}

uint64_t sub_2E6DA8(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
    {
      return 0;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  if (v16 >= 5)
  {
    if (v15[2] && v4 - 1 < &v3[v15[2]])
    {
      return 0;
    }

    if (v16 >= 7)
    {
      if (v15[3] && v4 - 1 < &v3[v15[3]])
      {
        return 0;
      }

      if (v16 >= 9)
      {
        v17 = v15[4];
        if (v15[4])
        {
          v18 = &v3[v17];
          if ((v18 & 3) != 0)
          {
            if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v18)
          {
            return 0;
          }

          v19 = *(*&v2 + v18);
          if (v19 < 1 || v4 - 1 < v18 + v19)
          {
            return 0;
          }

          v20 = (a1 + v17 + *(a1 + v17));
          v21 = v20 - *&v2;
          if (((v20 - *&v2) & 3) != 0)
          {
            if (v5 < v21 || (a2[3].i8[0] & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v21)
          {
            return 0;
          }

          v22 = *v20;
          if (v22 <= 0x7FFFFFFE)
          {
            v23 = v22 + 4;
            v24 = &v21[v22 + 4];
            if (v4 - 1 >= v24 && v4 > v23 && v4 - v23 >= v21 && !*(*&v2 + v24))
            {
              goto LABEL_46;
            }
          }

          return 0;
        }
      }
    }
  }

LABEL_46:
  a2[5].i32[0] = v8.i32[0];
  return 1;
}

BOOL sub_2E6F90(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_17;
    }

    if (!v5[2])
    {
      goto LABEL_16;
    }

    v7 = a1 + v5[2] - *a2;
    if (v7 & 1) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v8 = *(a2 + 8);
    if (v8 >= 3 && v8 - 2 >= v7)
    {
LABEL_16:
      if (v6 < 7)
      {
        goto LABEL_17;
      }

      v9 = v5[3];
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = a1 + v9 - *a2;
      if (v10 & 1) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      result = 0;
      v11 = *(a2 + 8);
      if (v11 >= 3 && v11 - 2 >= v10)
      {
LABEL_17:
        --*(a2 + 40);
        return 1;
      }
    }
  }

  return result;
}

BOOL sub_2E7080(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_21;
    }

    if (!v5[2])
    {
      goto LABEL_20;
    }

    v7 = a1 + v5[2] - *a2;
    if (v7 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v8 = *(a2 + 8);
    if (v8 >= 9 && v8 - 8 >= v7)
    {
LABEL_20:
      if (v6 < 7)
      {
        goto LABEL_21;
      }

      if (!v5[3] || (result = 0, v9 = *(a2 + 8), v9 >= 2) && v9 - 1 >= a1 + v5[3] - *a2)
      {
        if (v6 < 9)
        {
          goto LABEL_21;
        }

        v10 = v5[4];
        if (!v10)
        {
          goto LABEL_21;
        }

        v11 = a1 + v10 - *a2;
        if (v11 & 7) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        result = 0;
        v12 = *(a2 + 8);
        if (v12 >= 9 && v12 - 8 >= v11)
        {
LABEL_21:
          --*(a2 + 40);
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL sub_2E71B0(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_20;
    }

    if (!v5[2] || (result = 0, v7 = *(a2 + 8), v7 >= 2) && v7 - 1 >= a1 + v5[2] - *a2)
    {
      if (v6 < 0xB)
      {
        goto LABEL_20;
      }

      if (!v5[5])
      {
        goto LABEL_19;
      }

      v8 = a1 + v5[5] - *a2;
      if (v8 & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      result = 0;
      v9 = *(a2 + 8);
      if (v9 >= 5 && v9 - 4 >= v8)
      {
LABEL_19:
        if (v6 < 0xD)
        {
          goto LABEL_20;
        }

        v10 = v5[6];
        if (!v10)
        {
          goto LABEL_20;
        }

        v11 = a1 + v10 - *a2;
        if (v11 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        result = 0;
        v12 = *(a2 + 8);
        if (v12 >= 5 && v12 - 4 >= v11)
        {
LABEL_20:
          --*(a2 + 40);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2E72E0(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = *(a2 + 40);
  v9 = *(a2 + 44);
  *(a2 + 40) = v8 + 1;
  *(a2 + 44) = v9 + 1;
  v11 = *(a2 + 16);
  v10 = *(a2 + 20);
  if (v8 + 1 > v11 || v9 + 1 > v10)
  {
    return 0;
  }

  v14 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((*(a2 + 24) & 1) == 0 && v4 - 2 >= v14)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (v4 - 2 < v14)
  {
    return 0;
  }

LABEL_19:
  v15 = *(v2 + v14);
  if (v15)
  {
    return 0;
  }

  if (v4 <= v15 || v4 - v15 < v14)
  {
    return 0;
  }

  v17 = *a1;
  v18 = -v17;
  v19 = (a1 - v17);
  v20 = *(a1 - v17);
  if (v20 < 5)
  {
    goto LABEL_75;
  }

  v21 = v19[2];
  if (v19[2])
  {
    if (&v3[v21] & 7) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    if (v4 < 9 || v4 - 8 < &v3[v21])
    {
      return 0;
    }
  }

  if (v20 < 7)
  {
    goto LABEL_75;
  }

  v22 = v19[3];
  if (v19[3])
  {
    if (&v3[v22] & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    if (v4 < 9 || v4 - 8 < &v3[v22])
    {
      return 0;
    }
  }

  if (v20 < 9)
  {
    goto LABEL_75;
  }

  v23 = v19[4];
  if (!v19[4])
  {
    goto LABEL_75;
  }

  v24 = &v3[v23];
  if ((&v3[v23] & 3) != 0)
  {
    if (v5 < v24 || (*(a2 + 24) & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v24)
  {
    return 0;
  }

  v25 = *&v24[v2];
  if (v25 < 1 || v4 - 1 < &v24[v25])
  {
    return 0;
  }

  v26 = (a1 + v23 + *(a1 + v23));
  v27 = v26 - v2;
  if (((v26 - v2) & 3) != 0)
  {
    if (v5 < v27 || (*(a2 + 24) & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v27)
  {
    return 0;
  }

  v28 = a1;
  v29 = *v26;
  v30 = v9 + 2;
  *(a2 + 40) = v8 + 2;
  *(a2 + 44) = v30;
  if (v8 + 2 > v11 || v30 > v10)
  {
    return 0;
  }

  v31 = &v27[-v29];
  if ((v27 - v29))
  {
    if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v31)
    {
      return 0;
    }
  }

  else if (v4 - 2 < v31)
  {
    return 0;
  }

  v32 = *(v2 + v31);
  if (v32)
  {
    return 0;
  }

  if (v4 <= v32 || v4 - v32 < v31)
  {
    return 0;
  }

  v34 = (v26 - *v26);
  v35 = *v34;
  a1 = v28;
  if (v35 >= 5)
  {
    if (v34[2] && v4 - 1 < &v27[v34[2]])
    {
      return 0;
    }

    a1 = v28;
    if (v35 >= 7)
    {
      v36 = v34[3];
      if (v36)
      {
        v37 = &v27[v36];
        if ((&v27[v36] & 3) != 0)
        {
          if (v5 < v37)
          {
            return 0;
          }

          a1 = v28;
          if (*(a2 + 24))
          {
            return 0;
          }
        }

        else
        {
          a1 = v28;
          if (v5 < v37)
          {
            return 0;
          }
        }
      }
    }
  }

  *(a2 + 40) = v8 + 1;
  v18 = -*a1;
LABEL_75:
  if (*(a1 + v18) >= 0xBu && *(a1 + v18 + 10) && v4 - 1 < &v3[*(a1 + v18 + 10)])
  {
    return 0;
  }

  v38 = a1;
  if (!sub_2DAD14(a1, a2, 0xCu, 4) || !sub_2CDF90(v38, a2, 0xEu))
  {
    return 0;
  }

  v40 = v38;
  v41 = *v38;
  v42 = -v41;
  v43 = (v38 - v41);
  if (*v43 < 0xFu)
  {
LABEL_84:
    v45 = a2;
    goto LABEL_85;
  }

  v44 = v43[7];
  v45 = a2;
  if (v44)
  {
    if (!sub_2CE100(a2, (v38 + v44 + *(v38 + v44)), 4uLL, 0))
    {
      return 0;
    }

    v40 = v38;
    v42 = -*v38;
    goto LABEL_84;
  }

LABEL_85:
  v46 = (v40 + v42);
  if (*v46 >= 0xFu && (v47 = v46[7]) != 0)
  {
    v48 = (v40 + v47 + *(v40 + v47));
  }

  else
  {
    v48 = 0;
  }

  if (sub_2E7714(v45, v48))
  {
    --*(a2 + 40);
    return 1;
  }

  return 0;
}

uint64_t sub_2E7714(uint32x2_t *a1, unsigned int *a2)
{
  if (a2 && (v2 = *a2, v2))
  {
    v3 = 0;
    v4 = a2 - *a1 + 4;
    v5 = 4 * v2;
    while (1)
    {
      v6 = &a2[v3 / 4];
      v7 = a2[v3 / 4 + 1];
      v8 = v4 + v3 + v7;
      if (v8 & 3) != 0 && (a1[3].i8[0])
      {
        break;
      }

      v9 = a1[1];
      v10 = v9 - 4;
      if (v9 < 5 || v10 < v8)
      {
        break;
      }

      v12 = v6 + v7;
      v13 = *(v6 + v7 + 4);
      v14 = a1[5];
      v15 = vadd_s32(v14, 0x100000001);
      a1[5] = v15;
      v16 = vcgt_u32(v15, a1[2]);
      if ((v16.i32[0] | v16.i32[1]))
      {
        break;
      }

      v17 = v7 - v13;
      v18 = v4 + v3 + v7 - v13;
      if (v18)
      {
        v19 = 0;
        if ((a1[3].i8[0] & 1) != 0 || v9 - 2 < v18)
        {
          return v19;
        }
      }

      else if (v9 - 2 < v18)
      {
        return 0;
      }

      v20 = *(a2 + v17 + v3 + 4);
      if (v20)
      {
        return 0;
      }

      if (v9 <= v20 || v9 - v20 < v18)
      {
        break;
      }

      v22 = v7 - *(v12 + 1);
      v23 = &a2[v3 / 4] + v22;
      v24 = *(v23 + 2);
      if (v24 >= 5)
      {
        v25 = *(v23 + 4);
        if (v25)
        {
          v26 = v4 + v3 + v7 + v25;
          if ((v26 & 3) != 0)
          {
            v19 = 0;
            if (v10 < v26 || (a1[3].i8[0] & 1) != 0)
            {
              return v19;
            }
          }

          else if (v10 < v26)
          {
            return 0;
          }
        }

        if (v24 >= 7 && *(&a2[v3 / 4 + 2] + v22 + 2))
        {
          v27 = v4 + v3 + v7 + *(&a2[v3 / 4 + 2] + v22 + 2);
          if ((v27 & 3) != 0)
          {
            v19 = 0;
            if (v10 < v27 || (a1[3].i8[0] & 1) != 0)
            {
              return v19;
            }
          }

          else if (v10 < v27)
          {
            return 0;
          }
        }
      }

      a1[5].i32[0] = v14.i32[0];
      v3 += 4;
      if (v5 == v3)
      {
        return 1;
      }
    }

    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2E78CC(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((*(a2 + 24) & 1) == 0 && v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 >= 5)
  {
    v16 = v14[2];
    if (v14[2])
    {
      v17 = &v3[v16];
      if ((&v3[v16] & 3) != 0)
      {
        if (v5 < v17 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v17)
      {
        return 0;
      }

      v18 = *&v17[v2];
      if (v18 < 1 || v4 - 1 < &v17[v18])
      {
        return 0;
      }

      v19 = (a1 + v16 + *(a1 + v16));
      v20 = v19 - v2;
      if ((v20 & 3) != 0)
      {
        if (v5 < v20 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v20)
      {
        return 0;
      }

      v21 = *v19;
      if (v21 > 0xFFFFFFE)
      {
        return 0;
      }

      v22 = (8 * v21) | 4;
      v6 = v4 >= v22;
      v23 = v4 - v22;
      if (v23 == 0 || !v6 || v23 < v20)
      {
        return 0;
      }
    }

    if (v15 >= 7)
    {
      v25 = v14[3];
      if (v14[3])
      {
        if (&v3[v25] & 7) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        if (v4 < 9 || v4 - 8 < &v3[v25])
        {
          return 0;
        }
      }

      if (v15 >= 9)
      {
        v26 = v14[4];
        if (v14[4])
        {
          v27 = &v3[v26];
          if ((&v3[v26] & 3) != 0)
          {
            if (v5 < v27 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v27)
          {
            return 0;
          }
        }

        if (v15 >= 0xB && v14[5])
        {
          v28 = &v3[v14[5]];
          if ((v28 & 1) == 0)
          {
            if (v4 - 2 < v28)
            {
              return 0;
            }

            goto LABEL_61;
          }

          if (v4 - 2 < v28 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }
      }
    }
  }

LABEL_61:
  if (sub_2CDF90(a1, a2, 0xCu))
  {
    v31 = (a1 - *a1);
    if (*v31 < 0xDu)
    {
      v34 = 0;
      v33 = a2;
    }

    else
    {
      v32 = v31[6];
      v33 = a2;
      v34 = v32 ? (a1 + v32 + *(a1 + v32)) : 0;
    }

    if (sub_2DD394(v33, v34))
    {
      --*(a2 + 40);
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2E7BD0(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 >= 5)
  {
    if (v14[2] && v4 - 1 < &v3[v14[2]])
    {
      return 0;
    }

    if (v15 >= 7)
    {
      v16 = v14[3];
      if (v14[3])
      {
        v17 = &v3[v16];
        if ((&v3[v16] & 3) != 0)
        {
          if (v5 < v17 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v17)
        {
          return 0;
        }

        v18 = *&v17[v2];
        if (v18 < 1 || v4 - 1 < &v17[v18])
        {
          return 0;
        }

        v19 = (a1 + v16 + *(a1 + v16));
        v20 = v19 - v2;
        if (((v19 - v2) & 3) != 0)
        {
          if (v5 < v20 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v20)
        {
          return 0;
        }

        v21 = *v19;
        if (v21 > 0xFFFFFFE)
        {
          return 0;
        }

        v22 = (8 * v21) | 4;
        v6 = v4 >= v22;
        v23 = v4 - v22;
        if (v23 == 0 || !v6 || v23 < v20)
        {
          return 0;
        }
      }

      if (v15 >= 9)
      {
        v25 = v14[4];
        if (v25)
        {
          v26 = &v3[v25];
          if ((v26 & 3) != 0)
          {
            if (v5 < v26 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v26)
          {
            return 0;
          }

          v52 = *(v2 + v26);
          if (v52 < 1 || v4 - 1 < v26 + v52)
          {
            return 0;
          }

          v27 = a1;
          v53 = (a1 + v25);
          v54 = (a1 + v25 + *(a1 + v25));
          v55 = v54 - v2;
          if ((v55 & 3) != 0)
          {
            if (v5 < v55 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v55)
          {
            return 0;
          }

          v58 = *v54;
          if (v58 > 0x1FFFFFFE)
          {
            return 0;
          }

          v59 = 4 * v58 + 4;
          v60 = v4 > v59;
          v61 = v4 - v59;
          if (v60 && v61 >= v55)
          {
            v28 = a2;
            if (!sub_2D98D4(a2, (v53 + *v53)))
            {
              return 0;
            }

            goto LABEL_51;
          }

          return 0;
        }
      }
    }
  }

  v27 = a1;
  v28 = a2;
  if (!sub_2D98D4(a2, 0))
  {
    return 0;
  }

LABEL_51:
  if (!sub_2CDF90(v27, v28, 0xAu))
  {
    return 0;
  }

  v29 = v27;
  v30 = *v27;
  v31 = -v30;
  v32 = (v27 - v30);
  if (*v32 < 0xBu)
  {
    goto LABEL_56;
  }

  v33 = v32[5];
  v34 = v28;
  if (v33)
  {
    if (!sub_2CE100(v28, (v27 + v33 + *(v27 + v33)), 4uLL, 0))
    {
      return 0;
    }

    v29 = v27;
    v31 = -*v27;
LABEL_56:
    v34 = v28;
  }

  v35 = (v29 + v31);
  if (*v35 >= 0xBu && (v36 = v35[5]) != 0)
  {
    v37 = v29;
    v38 = (v29 + v36 + *(v29 + v36));
  }

  else
  {
    v37 = v29;
    v38 = 0;
  }

  if (!sub_2E80C4(v34, v38) || !sub_2CDF90(v37, v28, 0xCu))
  {
    return 0;
  }

  v39 = v37;
  v40 = *v37;
  v41 = -v40;
  v42 = (v37 - v40);
  if (*v42 < 0xDu)
  {
LABEL_67:
    v44 = v28;
    goto LABEL_68;
  }

  v43 = v42[6];
  v44 = v28;
  if (v43)
  {
    if (!sub_2E8A24((v37 + v43 + *(v37 + v43)), v28))
    {
      return 0;
    }

    v39 = v37;
    v41 = -*v37;
    goto LABEL_67;
  }

LABEL_68:
  v45 = (v39 + v41);
  if (*v45 >= 0xFu)
  {
    if (v45[7])
    {
      v46 = v44[1];
      if (v46 < 2 || v46 - 1 < v39 + v45[7] - *v44)
      {
        return 0;
      }
    }
  }

  v47 = v39;
  if (sub_2CDF90(v39, v44, 0x10u))
  {
    v48 = (v47 - *v47);
    if (*v48 < 0x11u)
    {
      v51 = 0;
      v50 = v28;
    }

    else
    {
      v49 = v48[8];
      v50 = v28;
      v51 = v49 ? (v47 + v49 + *(v47 + v49)) : 0;
    }

    if (sub_2DA624(v50, v51) && sub_2CDF90(v47, v28, 0x12u))
    {
      v56 = (v47 - *v47);
      if (*v56 < 0x13u || (v57 = v56[9]) == 0 || sub_2E8C90((v47 + v57 + *(v47 + v57)), v28))
      {
        --v28[5].i32[0];
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2E80C4(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E8150((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2E8150(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(*&v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = (a1 - *a1);
    v16 = *v15;
    v17 = a2;
    if (v16 >= 0xB)
    {
      if (v15[5] && v4 - 1 < &v3[v15[5]])
      {
        return 0;
      }

      if (v16 >= 0xD)
      {
        if (v15[6] && v4 - 1 < &v3[v15[6]])
        {
          return 0;
        }

        if (v16 >= 0xF)
        {
          v18 = v15[7];
          if (v15[7])
          {
            v19 = &v3[v18];
            if ((v19 & 3) != 0)
            {
              v13 = 0;
              if (v5 < v19 || (*(a2 + 24) & 1) != 0)
              {
                return v13;
              }
            }

            else if (v5 < v19)
            {
              return 0;
            }

            v20 = *(*&v2 + v19);
            if (v20 < 1 || v4 - 1 < v19 + v20)
            {
              return 0;
            }

            v21 = (a1 + v18);
            v22 = (a1 + v18 + *(a1 + v18));
            v23 = v22 - *&v2;
            if ((v23 & 3) != 0)
            {
              v13 = 0;
              if (v5 < v23 || (*(a2 + 24) & 1) != 0)
              {
                return v13;
              }
            }

            else if (v5 < v23)
            {
              return 0;
            }

            v24 = *v22;
            if (v24 > 0x1FFFFFFE)
            {
              return 0;
            }

            v13 = 0;
            v25 = 4 * v24 + 4;
            v26 = v4 > v25;
            v27 = v4 - v25;
            if (!v26 || v27 < v23)
            {
              return v13;
            }

            v28 = a1;
            v29 = (v21 + *v21);
            if (*v29)
            {
              v30 = 0;
              v31 = v29 + 1;
              while ((sub_2E6510((v31 + *v31), a2) & 1) != 0)
              {
                ++v30;
                ++v31;
                a2 = v17;
                a1 = v28;
                if (v30 >= *v29)
                {
                  goto LABEL_50;
                }
              }

              return 0;
            }
          }
        }
      }
    }

LABEL_50:
    v32 = a1;
    if (sub_2CDF90(a1, a2, 0x10u))
    {
      v33 = (v32 - *v32);
      if (*v33 < 0x11u)
      {
        v36 = 0;
        v35 = v17;
      }

      else
      {
        v34 = v33[8];
        v35 = v17;
        v36 = v34 ? (v32 + v34 + *(v32 + v34)) : 0;
      }

      if (sub_2D986C(v35, v36))
      {
        v37 = (v32 - *v32);
        if (*v37 < 0x11u)
        {
          v40 = 0;
          v39 = v17;
        }

        else
        {
          v38 = v37[8];
          v39 = v17;
          v40 = v38 ? (v32 + v38 + *(v32 + v38)) : 0;
        }

        if (sub_2D9F6C(v39, v40) && sub_2CDF90(v32, v17, 0x14u))
        {
          v41 = (v32 - *v32);
          if (*v41 < 0x15u)
          {
            v44 = 0;
            v43 = v17;
          }

          else
          {
            v42 = v41[10];
            v43 = v17;
            v44 = v42 ? (v32 + v42 + *(v32 + v42)) : 0;
          }

          if (sub_2D986C(v43, v44))
          {
            v45 = (v32 - *v32);
            if (*v45 < 0x15u)
            {
              v48 = 0;
              v47 = v17;
            }

            else
            {
              v46 = v45[10];
              v47 = v17;
              v48 = v46 ? (v32 + v46 + *(v32 + v46)) : 0;
            }

            if (sub_2E8610(v47, v48) && sub_2CDF90(v32, v17, 0x16u))
            {
              v49 = (v32 - *v32);
              if (*v49 >= 0x17u && (v50 = v49[11]) != 0)
              {
                v51 = (v32 + v50 + *(v32 + v50));
              }

              else
              {
                v51 = 0;
              }

              if (sub_2D986C(v17, v51))
              {
                v52 = (v32 - *v32);
                if (*v52 >= 0x17u && (v53 = v52[11]) != 0)
                {
                  v54 = (v32 + v53 + *(v32 + v53));
                }

                else
                {
                  v54 = 0;
                }

                if (sub_2E8610(v17, v54) && sub_2CDF90(v32, v17, 0x18u))
                {
                  v55 = (v32 - *v32);
                  if (*v55 >= 0x19u && (v56 = v55[12]) != 0)
                  {
                    v57 = (v32 + v56 + *(v32 + v56));
                  }

                  else
                  {
                    v57 = 0;
                  }

                  if (sub_2D986C(v17, v57))
                  {
                    v58 = (v32 - *v32);
                    if (*v58 >= 0x19u && (v59 = v58[12]) != 0)
                    {
                      v60 = (v32 + v59 + *(v32 + v59));
                    }

                    else
                    {
                      v60 = 0;
                    }

                    if (sub_2E8610(v17, v60))
                    {
                      --v17[5].i32[0];
                      return 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2E8610(uint32x2_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E869C((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2E869C(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
    {
      return 0;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  if (v16 < 5)
  {
    goto LABEL_98;
  }

  v17 = v15[2];
  if (v15[2])
  {
    v18 = &v3[v17];
    if ((&v3[v17] & 3) != 0)
    {
      if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v18)
    {
      return 0;
    }

    v19 = *&v18[*&v2];
    if (v19 < 1 || v4 - 1 < &v18[v19])
    {
      return 0;
    }

    v20 = (a1 + v17 + *(a1 + v17));
    v21 = v20 - *&v2;
    if (((v20 - *&v2) & 3) != 0)
    {
      if (v5 < v21 || (a2[3].i8[0] & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v21)
    {
      return 0;
    }

    v22 = *v20;
    if (v22 > 0x7FFFFFFE)
    {
      return 0;
    }

    v23 = v22 + 4;
    v24 = &v21[v22 + 4];
    v25 = v4 - 1 >= v24 && v4 > v23;
    v26 = v25 && v4 - v23 >= v21;
    if (!v26 || *(*&v2 + v24))
    {
      return 0;
    }
  }

  if (v16 < 9)
  {
    goto LABEL_98;
  }

  v27 = v15[4];
  if (!v27)
  {
    goto LABEL_98;
  }

  v28 = &v3[v27];
  if ((v28 & 3) != 0)
  {
    if (v5 < v28 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v28)
  {
    return 0;
  }

  v29 = *(*&v2 + v28);
  if (v29 < 1)
  {
    return 0;
  }

  v30 = v28 + v29;
  v31 = v4 - 1;
  if (v4 - 1 < v30)
  {
    return 0;
  }

  v32 = (a1 + v27);
  v33 = (a1 + v27 + *(a1 + v27));
  v34 = v33 - *&v2;
  if (((v33 - *&v2) & 3) != 0)
  {
    if (v5 < v34 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_59;
  }

  if (v5 < v34)
  {
    return 0;
  }

LABEL_59:
  v35 = *v33;
  if (v35 > 0x1FFFFFFE)
  {
    return 0;
  }

  v36 = 4 * v35 + 4;
  v6 = v4 >= v36;
  v37 = v4 - v36;
  if (v37 == 0 || !v6 || v37 < v34)
  {
    return 0;
  }

  v39 = *v32;
  v40 = *(v32 + v39);
  if (v40)
  {
    if (a2[3].i8[0])
    {
      v41 = 0;
      v42 = 4 * v40;
      v43 = a1 + v27 + v39;
      v44 = v43 + 4;
      v45 = &v43[-*&v2 + 4];
      v46 = a1 + v39 + v27 + 4;
      while (1)
      {
        v47 = *&v44[v41];
        v48 = v45 + v41 + v47;
        if ((v48 & 3) != 0 || v5 < v48)
        {
          break;
        }

        v50 = *&v44[v47 + v41];
        if (v50 > 0x7FFFFFFE)
        {
          break;
        }

        v51 = v50 + 4;
        v52 = v47 + v51;
        v53 = v31 >= v45 + v41 + v52 && v4 > v51;
        v54 = v53 && v4 - v51 >= v48;
        if (!v54 || *(v46 + v52 + v41))
        {
          break;
        }

        v41 += 4;
        if (v42 == v41)
        {
          goto LABEL_98;
        }
      }
    }

    else
    {
      v55 = 0;
      v56 = 4 * v40;
      v57 = a1 + v27 + v39;
      v58 = v57 + 4;
      v59 = &v57[-*&v2 + 4];
      v60 = a1 + v39 + v27 + 4;
      while (1)
      {
        v61 = *&v58[v55];
        v62 = v59 + v55 + v61;
        if (v5 < v62)
        {
          break;
        }

        v63 = *&v58[v61 + v55];
        if (v63 > 0x7FFFFFFE)
        {
          break;
        }

        v64 = v63 + 4;
        v65 = v61 + v64;
        v66 = v31 >= v59 + v55 + v65 && v4 > v64;
        v67 = v66 && v4 - v64 >= v62;
        if (!v67 || *(v60 + v65 + v55))
        {
          break;
        }

        v55 += 4;
        if (v56 == v55)
        {
          goto LABEL_98;
        }
      }
    }

    return 0;
  }

LABEL_98:
  a2[5].i32[0] = v8.i32[0];
  return 1;
}

uint64_t sub_2E8A24(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3].i8[0] & 1) == 0 && v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  v17 = v8.i32[0];
  if (v16 < 5)
  {
    goto LABEL_49;
  }

  if (v15[2] && v4 - 1 < &v3[v15[2]])
  {
    return 0;
  }

  if (v16 < 7)
  {
    goto LABEL_49;
  }

  v18 = v15[3];
  if (!v15[3])
  {
    goto LABEL_49;
  }

  v19 = &v3[v18];
  if ((v19 & 3) != 0)
  {
    if (v5 < v19 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v19)
  {
    return 0;
  }

  v20 = *(*&v2 + v19);
  if (v20 < 1 || v4 - 1 < v19 + v20)
  {
    return 0;
  }

  v21 = (a1 + v18);
  v22 = (a1 + v18 + *(a1 + v18));
  v23 = v22 - *&v2;
  if ((v23 & 3) != 0)
  {
    if (v5 < v23 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_38;
  }

  if (v5 < v23)
  {
    return 0;
  }

LABEL_38:
  v24 = *v22;
  if (v24 > 0x1FFFFFFE)
  {
    return 0;
  }

  v25 = 4 * v24 + 4;
  v6 = v4 >= v25;
  v26 = v4 - v25;
  if (v26 == 0 || !v6 || v26 < v23)
  {
    return 0;
  }

  v28 = (v21 + *v21);
  if (*v28)
  {
    v29 = 0;
    v30 = v28 + 1;
    while (1)
    {
      v31 = a2;
      if ((sub_2E869C((v30 + *v30), a2) & 1) == 0)
      {
        return 0;
      }

      ++v29;
      ++v30;
      a2 = v31;
      if (v29 >= *v28)
      {
        v17 = v31[5].i32[0] - 1;
        break;
      }
    }
  }

LABEL_49:
  a2[5].i32[0] = v17;
  return 1;
}

uint64_t sub_2E8C90(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
    {
      return 0;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  if (v16 >= 5)
  {
    if (v15[2] && v4 - 1 < &v3[v15[2]])
    {
      return 0;
    }

    if (v16 >= 7)
    {
      if (v15[3] && v4 - 1 < &v3[v15[3]])
      {
        return 0;
      }

      if (v16 >= 9)
      {
        v17 = v15[4];
        if (v15[4])
        {
          v18 = &v3[v17];
          if ((&v3[v17] & 3) != 0)
          {
            if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v18)
          {
            return 0;
          }

          v19 = *&v18[*&v2];
          if (v19 < 1)
          {
            return 0;
          }

          v20 = &v18[v19];
          v21 = v4 - 1;
          if (v4 - 1 < v20)
          {
            return 0;
          }

          v22 = (a1 + v17);
          v23 = (a1 + v17 + *(a1 + v17));
          v24 = v23 - *&v2;
          if (((v23 - *&v2) & 3) != 0)
          {
            if (v5 < v24 || (a2[3].i8[0] & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v24)
          {
            return 0;
          }

          v25 = *v23;
          if (v25 > 0x1FFFFFFE)
          {
            return 0;
          }

          v26 = 4 * v25 + 4;
          v6 = v4 >= v26;
          v27 = v4 - v26;
          if (v27 == 0 || !v6 || v27 < v24)
          {
            return 0;
          }

          v28 = *v22;
          v29 = *(v22 + v28);
          if (v29)
          {
            if (a2[3].i8[0])
            {
              v30 = 0;
              v31 = 4 * v29;
              v32 = a1 + v17 + v28;
              v33 = v32 + 4;
              v34 = &v32[-*&v2 + 4];
              v35 = a1 + v28 + v17 + 4;
              while (1)
              {
                v36 = *&v33[v30];
                v37 = v34 + v30 + v36;
                if ((v37 & 3) != 0 || v5 < v37)
                {
                  break;
                }

                v39 = *&v33[v36 + v30];
                if (v39 > 0x7FFFFFFE)
                {
                  break;
                }

                v40 = v39 + 4;
                v41 = v36 + v40;
                v42 = v21 >= v34 + v30 + v41 && v4 > v40;
                v43 = v42 && v4 - v40 >= v37;
                if (!v43 || *(v35 + v41 + v30))
                {
                  break;
                }

                v30 += 4;
                if (v31 == v30)
                {
                  goto LABEL_78;
                }
              }
            }

            else
            {
              v44 = 0;
              v45 = 4 * v29;
              v46 = a1 + v17 + v28;
              v47 = v46 + 4;
              v48 = &v46[-*&v2 + 4];
              v49 = a1 + v28 + v17 + 4;
              while (1)
              {
                v50 = *&v47[v44];
                v51 = v48 + v44 + v50;
                if (v5 < v51)
                {
                  break;
                }

                v52 = *&v47[v50 + v44];
                if (v52 > 0x7FFFFFFE)
                {
                  break;
                }

                v53 = v52 + 4;
                v54 = v50 + v53;
                v55 = v21 >= v48 + v44 + v54 && v4 > v53;
                v56 = v55 && v4 - v53 >= v51;
                if (!v56 || *(v49 + v54 + v44))
                {
                  break;
                }

                v44 += 4;
                if (v45 == v44)
                {
                  goto LABEL_78;
                }
              }
            }

            return 0;
          }
        }

LABEL_78:
        if (v16 < 0xB || !v15[5] || v4 - 1 >= &v3[v15[5]])
        {
          goto LABEL_81;
        }

        return 0;
      }
    }
  }

LABEL_81:
  a2[5].i32[0] = v8.i32[0];
  return 1;
}

uint64_t sub_2E8FBC(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
    {
      return 0;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  if (v16 < 5)
  {
    goto LABEL_69;
  }

  v17 = v15[2];
  if (v15[2])
  {
    v18 = &v3[v17];
    if ((&v3[v17] & 3) != 0)
    {
      if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v18)
    {
      return 0;
    }

    v19 = *&v18[*&v2];
    if (v19 < 1 || v4 - 1 < &v18[v19])
    {
      return 0;
    }

    v20 = (a1 + v17 + *(a1 + v17));
    v21 = v20 - *&v2;
    if (((v20 - *&v2) & 3) != 0)
    {
      if (v5 < v21 || (a2[3].i8[0] & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v21)
    {
      return 0;
    }

    v22 = *v20;
    if (v22 > 0x7FFFFFFE)
    {
      return 0;
    }

    v23 = v22 + 4;
    v24 = &v21[v22 + 4];
    v25 = v4 - 1 >= v24 && v4 > v23;
    v26 = v25 && v4 - v23 >= v21;
    if (!v26 || *(*&v2 + v24))
    {
      return 0;
    }
  }

  if (v16 < 7)
  {
    goto LABEL_69;
  }

  v27 = v15[3];
  if (!v27)
  {
    goto LABEL_69;
  }

  v28 = &v3[v27];
  if ((v28 & 3) != 0)
  {
    if (v5 < v28 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v28)
  {
    return 0;
  }

  v29 = *(*&v2 + v28);
  if (v29 < 1 || v4 - 1 < v28 + v29)
  {
    return 0;
  }

  v30 = (a1 + v27 + *(a1 + v27));
  v31 = v30 - *&v2;
  if (((v30 - *&v2) & 3) != 0)
  {
    if (v5 < v31 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_59;
  }

  if (v5 < v31)
  {
    return 0;
  }

LABEL_59:
  v32 = *v30;
  if (v32 > 0x7FFFFFFE)
  {
    return 0;
  }

  v33 = v32 + 4;
  v34 = &v31[v32 + 4];
  v35 = v4 - 1 >= v34 && v4 > v33;
  v36 = v35 && v4 - v33 >= v31;
  if (!v36 || *(*&v2 + v34))
  {
    return 0;
  }

LABEL_69:
  a2[5].i32[0] = v8.i32[0];
  return 1;
}

uint64_t sub_2E921C(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = (a1 - *a1);
    v16 = *v15;
    v17 = a2;
    if (v16 >= 5)
    {
      v18 = v15[2];
      if (v15[2])
      {
        v19 = &v3[v18];
        if ((&v3[v18] & 3) != 0)
        {
          v13 = 0;
          if (v5 < v19 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v19)
        {
          return 0;
        }

        v20 = *&v19[v2];
        if (v20 < 1 || v4 - 1 < &v19[v20])
        {
          return 0;
        }

        v21 = (a1 + v18 + *(a1 + v18));
        v22 = v21 - v2;
        if (((v21 - v2) & 3) != 0)
        {
          v13 = 0;
          if (v5 < v22 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v22)
        {
          return 0;
        }

        v23 = *v21;
        if (v23 > 0x1FFFFFFE)
        {
          return 0;
        }

        v24 = 4 * v23 + 4;
        v6 = v4 >= v24;
        v25 = v4 - v24;
        if (v25 == 0 || !v6 || v25 < v22)
        {
          return 0;
        }
      }

      if (v16 >= 7)
      {
        v27 = v15[3];
        if (v27)
        {
          v28 = &v3[v27];
          if ((v28 & 3) != 0)
          {
            v13 = 0;
            if (v5 < v28 || (*(a2 + 24) & 1) != 0)
            {
              return v13;
            }
          }

          else if (v5 < v28)
          {
            return 0;
          }

          v29 = *(v2 + v28);
          if (v29 < 1 || v4 - 1 < v28 + v29)
          {
            return 0;
          }

          v30 = (a1 + v27);
          v31 = (a1 + v27 + *(a1 + v27));
          v32 = v31 - v2;
          if ((v32 & 3) != 0)
          {
            v13 = 0;
            if (v5 < v32 || (*(a2 + 24) & 1) != 0)
            {
              return v13;
            }
          }

          else if (v5 < v32)
          {
            return 0;
          }

          v33 = *v31;
          if (v33 > 0x1FFFFFFE)
          {
            return 0;
          }

          v34 = 4 * v33 + 4;
          v6 = v4 >= v34;
          v35 = v4 - v34;
          if (v35 == 0 || !v6 || v35 < v32)
          {
            return 0;
          }

          v37 = a1;
          v38 = (v30 + *v30);
          if (*v38)
          {
            v39 = 0;
            v40 = v38 + 1;
            while (sub_2CE1E0((v40 + *v40), a2))
            {
              ++v39;
              ++v40;
              a2 = v17;
              a1 = v37;
              if (v39 >= *v38)
              {
                goto LABEL_66;
              }
            }

            return 0;
          }
        }
      }
    }

LABEL_66:
    v41 = a1;
    if (!sub_2CDF90(a1, a2, 8u))
    {
      return 0;
    }

    v42 = v41;
    v43 = *v41;
    v44 = -v43;
    v45 = (v41 - v43);
    if (*v45 >= 9u)
    {
      v46 = v45[4];
      v47 = v17;
      if (!v46)
      {
LABEL_72:
        v48 = (v42 + v44);
        if (*v48 >= 9u && (v49 = v48[4]) != 0)
        {
          v50 = (v42 + v49 + *(v42 + v49));
        }

        else
        {
          v50 = 0;
        }

        if (sub_2E95CC(v47, v50))
        {
          if (sub_2CDF90(v41, v17, 0xAu))
          {
            v51 = (v41 - *v41);
            if (*v51 < 0xBu || (v52 = v51[5]) == 0 || sub_2E995C((v41 + v52 + *(v41 + v52)), v17))
            {
              --v17[5].i32[0];
              return 1;
            }
          }
        }

        return 0;
      }

      if (!sub_2CE100(v17, (v41 + v46 + *(v41 + v46)), 4uLL, 0))
      {
        return 0;
      }

      v42 = v41;
      v44 = -*v41;
    }

    v47 = v17;
    goto LABEL_72;
  }

  return 0;
}

uint64_t sub_2E95CC(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2E9658((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2E9658(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((*(a2 + 24) & 1) == 0 && v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 >= 5)
  {
    if (v14[2] && v4 - 1 < &v3[v14[2]])
    {
      return 0;
    }

    if (v15 >= 7)
    {
      v16 = v14[3];
      if (v14[3])
      {
        v17 = &v3[v16];
        if ((&v3[v16] & 3) != 0)
        {
          if (v5 < v17 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v17)
        {
          return 0;
        }

        v18 = *&v17[v2];
        if (v18 < 1 || v4 - 1 < &v17[v18])
        {
          return 0;
        }

        v19 = (a1 + v16 + *(a1 + v16));
        v20 = v19 - v2;
        if (((v19 - v2) & 3) != 0)
        {
          if (v5 < v20 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v20)
        {
          return 0;
        }

        v21 = *v19;
        if (v21 > 0xFFFFFFE)
        {
          return 0;
        }

        v22 = (8 * v21) | 4;
        v6 = v4 >= v22;
        v23 = v4 - v22;
        if (v23 == 0 || !v6 || v23 < v20)
        {
          return 0;
        }
      }

      if (v15 >= 9)
      {
        v25 = v14[4];
        if (v25)
        {
          v26 = &v3[v25];
          if ((v26 & 3) != 0)
          {
            if (v5 < v26 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v26)
          {
            return 0;
          }

          v27 = *(v2 + v26);
          if (v27 < 1 || v4 - 1 < v26 + v27)
          {
            return 0;
          }

          v28 = (a1 + v25 + *(a1 + v25));
          v29 = v28 - v2;
          if ((v29 & 3) != 0)
          {
            if (v5 < v29 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v29)
          {
            return 0;
          }

          v30 = *v28;
          if (v30 > 0xFFFFFFE)
          {
            return 0;
          }

          v31 = (8 * v30) | 4;
          v32 = v4 > v31;
          v33 = v4 - v31;
          if (!v32 || v33 < v29)
          {
            return 0;
          }
        }
      }
    }
  }

  if (sub_2D9788(a1, a2, 0xAu, 4) && sub_2CE0A0(a1, a2, 0xCu, 4))
  {
    --*(a2 + 40);
    return 1;
  }

  return 0;
}