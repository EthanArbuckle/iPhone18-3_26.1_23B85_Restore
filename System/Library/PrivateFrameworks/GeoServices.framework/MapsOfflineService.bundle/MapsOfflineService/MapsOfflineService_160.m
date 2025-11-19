__int128 *sub_9DD230(__int128 *result, unsigned int *a2, __int128 *a3)
{
  v3 = a2[2];
  v4 = *(result + 2);
  v5 = v3 != 0x7FFFFFFF;
  if (v3 == 0x7FFFFFFF)
  {
    v6 = v4 != 0x7FFFFFFF;
    v7 = *a2;
    if (*a2 >= *result)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    if (*a2 != *result)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v4 != 0x7FFFFFFF)
    {
      v7 = *a2;
      if (*a2 >= *result)
      {
        v8 = 1;
      }

      else
      {
        v8 = -1;
      }

      if (*a2 != *result)
      {
        goto LABEL_29;
      }

      v9 = *(result + 1);
      v10 = a2[1];
      v13 = v3 < v4;
      v12 = -1;
      if (!v13)
      {
        v12 = 0;
      }

      goto LABEL_23;
    }

    v6 = 0;
    v7 = *a2;
    if (*a2 >= *result)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    if (*a2 != *result)
    {
      goto LABEL_29;
    }
  }

  v9 = *(result + 1);
  v10 = a2[1];
  v11 = -1;
  if (!v6 || v3 != 0x7FFFFFFF)
  {
    v11 = 1;
  }

  if ((v3 != 0x7FFFFFFF) != v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_23:
  v14 = v10 >= v9;
  v15 = v10 == v9;
  v8 = -1;
  if (v14)
  {
    v8 = 1;
  }

  if (v15)
  {
    v8 = v12;
  }

LABEL_29:
  v16 = *(a3 + 2);
  if (v8 < 0)
  {
    if (v16 != 0x7FFFFFFF)
    {
      if (v3 != 0x7FFFFFFF)
      {
        v52 = *a3 == v7;
        if (*a3 >= v7)
        {
          v28 = 1;
        }

        else
        {
          v28 = -1;
        }

        if (v52)
        {
          v53 = a2[1];
          v54 = *(a3 + 1);
          v13 = v16 < v3;
          v55 = -1;
          if (!v13)
          {
            v55 = 0;
          }

          v14 = v54 >= v53;
          v56 = v54 == v53;
          v57 = -1;
          if (v14)
          {
            v57 = 1;
          }

          if (v56)
          {
            v28 = v55;
          }

          else
          {
            v28 = v57;
          }
        }

LABEL_110:
        if (v28 < 0)
        {
          v67 = *(result + 4);
          v68 = *result;
          v69 = result[1];
          v70 = *(a3 + 32);
          v71 = a3[1];
          *result = *a3;
          result[1] = v71;
          *(result + 32) = v70;
LABEL_181:
          *a3 = v68;
          a3[1] = v69;
          *(a3 + 32) = v67;
          return result;
        }

        v58 = *(result + 4);
        v59 = *result;
        v60 = result[1];
        v61 = *(a2 + 32);
        v62 = *(a2 + 1);
        *result = *a2;
        result[1] = v62;
        *(result + 32) = v61;
        *a2 = v59;
        *(a2 + 1) = v60;
        *(a2 + 32) = v58;
        v63 = *(a3 + 2);
        v64 = a2[2];
        if (v63 == 0x7FFFFFFF)
        {
          v65 = v64 != 0x7FFFFFFF;
          if (*a3 >= *a2)
          {
            v66 = 1;
          }

          else
          {
            v66 = -1;
          }

          if (*a3 != *a2)
          {
            goto LABEL_179;
          }
        }

        else
        {
          if (v64 != 0x7FFFFFFF)
          {
            if (*a3 >= *a2)
            {
              v66 = 1;
            }

            else
            {
              v66 = -1;
            }

            if (*a3 == *a2)
            {
              v91 = a2[1];
              v92 = *(a3 + 1);
              v13 = v63 < v64;
              v93 = -1;
              if (!v13)
              {
                v93 = 0;
              }

              v94 = -1;
              if (v92 >= v91)
              {
                v94 = 1;
              }

              if (v92 == v91)
              {
                v66 = v93;
              }

              else
              {
                v66 = v94;
              }
            }

            goto LABEL_179;
          }

          v65 = 0;
          if (*a3 >= *a2)
          {
            v66 = 1;
          }

          else
          {
            v66 = -1;
          }

          if (*a3 != *a2)
          {
LABEL_179:
            if ((v66 & 0x80) == 0)
            {
              return result;
            }

            v67 = *(a2 + 4);
            v68 = *a2;
            v69 = *(a2 + 1);
            v95 = *(a3 + 32);
            v96 = a3[1];
            *a2 = *a3;
            *(a2 + 1) = v96;
            *(a2 + 32) = v95;
            goto LABEL_181;
          }
        }

        v77 = a2[1];
        v78 = *(a3 + 1);
        v79 = v78 == v77;
        if (v78 >= v77)
        {
          v66 = 1;
        }

        else
        {
          v66 = -1;
        }

        if (v79)
        {
          v15 = v63 == 0x7FFFFFFF;
          v80 = v63 != 0x7FFFFFFF;
          v81 = v15;
          v15 = (v65 & v81) == 0;
          v66 = -1;
          if (v15)
          {
            v66 = 1;
          }

          if (v80 == v65)
          {
            v66 = 0;
          }
        }

        goto LABEL_179;
      }

      v5 = 0;
    }

    v27 = *a3 == v7;
    if (*a3 >= v7)
    {
      v28 = 1;
    }

    else
    {
      v28 = -1;
    }

    if (v27)
    {
      v29 = a2[1];
      v30 = *(a3 + 1);
      v15 = v16 == 0x7FFFFFFF;
      v31 = v16 != 0x7FFFFFFF;
      v32 = v15;
      v15 = (v5 & v32) == 0;
      v33 = -1;
      if (v15)
      {
        v33 = 1;
      }

      if (v31 != v5)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      v14 = v30 >= v29;
      v35 = v30 == v29;
      v36 = -1;
      if (v14)
      {
        v36 = 1;
      }

      if (v35)
      {
        v28 = v34;
      }

      else
      {
        v28 = v36;
      }
    }

    goto LABEL_110;
  }

  if (v16 == 0x7FFFFFFF)
  {
    goto LABEL_33;
  }

  if (v3 == 0x7FFFFFFF)
  {
    v5 = 0;
LABEL_33:
    v17 = *a3 == v7;
    if (*a3 >= v7)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (v17)
    {
      v19 = a2[1];
      v20 = *(a3 + 1);
      v15 = v16 == 0x7FFFFFFF;
      v21 = v16 != 0x7FFFFFFF;
      v22 = v15;
      v15 = (v5 & v22) == 0;
      v23 = -1;
      if (v15)
      {
        v23 = 1;
      }

      if (v21 != v5)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v14 = v20 >= v19;
      v25 = v20 == v19;
      v26 = -1;
      if (v14)
      {
        v26 = 1;
      }

      if (v25)
      {
        v18 = v24;
      }

      else
      {
        v18 = v26;
      }
    }

    goto LABEL_89;
  }

  v37 = *a3 == v7;
  if (*a3 >= v7)
  {
    v18 = 1;
  }

  else
  {
    v18 = -1;
  }

  if (v37)
  {
    v38 = a2[1];
    v39 = *(a3 + 1);
    v13 = v16 < v3;
    v40 = -1;
    if (!v13)
    {
      v40 = 0;
    }

    v14 = v39 >= v38;
    v41 = v39 == v38;
    v42 = -1;
    if (v14)
    {
      v42 = 1;
    }

    if (v41)
    {
      v18 = v40;
    }

    else
    {
      v18 = v42;
    }
  }

LABEL_89:
  if ((v18 & 0x80) == 0)
  {
    return result;
  }

  v43 = *(a2 + 4);
  v44 = *a2;
  v45 = *(a2 + 1);
  v46 = *(a3 + 32);
  v47 = a3[1];
  *a2 = *a3;
  *(a2 + 1) = v47;
  *(a2 + 32) = v46;
  *a3 = v44;
  a3[1] = v45;
  *(a3 + 32) = v43;
  v48 = a2[2];
  v49 = *(result + 2);
  if (v48 == 0x7FFFFFFF)
  {
    v50 = v49 != 0x7FFFFFFF;
    if (*a2 >= *result)
    {
      v51 = 1;
    }

    else
    {
      v51 = -1;
    }

    if (*a2 != *result)
    {
      goto LABEL_166;
    }

LABEL_123:
    v72 = *(result + 1);
    v73 = a2[1];
    v74 = v73 == v72;
    if (v73 >= v72)
    {
      v51 = 1;
    }

    else
    {
      v51 = -1;
    }

    if (v74)
    {
      v15 = v48 == 0x7FFFFFFF;
      v75 = v48 != 0x7FFFFFFF;
      v76 = v15;
      v15 = (v50 & v76) == 0;
      v51 = -1;
      if (v15)
      {
        v51 = 1;
      }

      if (v75 == v50)
      {
        v51 = 0;
      }
    }

    goto LABEL_166;
  }

  if (v49 != 0x7FFFFFFF)
  {
    if (*a2 >= *result)
    {
      v51 = 1;
    }

    else
    {
      v51 = -1;
    }

    if (*a2 == *result)
    {
      v82 = *(result + 1);
      v83 = a2[1];
      v13 = v48 < v49;
      v84 = -1;
      if (!v13)
      {
        v84 = 0;
      }

      v85 = -1;
      if (v83 >= v82)
      {
        v85 = 1;
      }

      if (v83 == v82)
      {
        v51 = v84;
      }

      else
      {
        v51 = v85;
      }
    }

    goto LABEL_166;
  }

  v50 = 0;
  if (*a2 >= *result)
  {
    v51 = 1;
  }

  else
  {
    v51 = -1;
  }

  if (*a2 == *result)
  {
    goto LABEL_123;
  }

LABEL_166:
  if (v51 < 0)
  {
    v86 = *(result + 4);
    v87 = *result;
    v88 = result[1];
    v89 = *(a2 + 32);
    v90 = *(a2 + 1);
    *result = *a2;
    result[1] = v90;
    *(result + 32) = v89;
    *a2 = v87;
    *(a2 + 1) = v88;
    *(a2 + 32) = v86;
  }

  return result;
}

__n128 sub_9DD6D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  sub_9DD230(a1, a2, a3);
  v11 = a4[2];
  v12 = *(a3 + 8);
  if (v11 == 0x7FFFFFFF)
  {
    v13 = v12 != 0x7FFFFFFF;
    if (*a4 >= *a3)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }

    if (*a4 != *a3)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v12 != 0x7FFFFFFF)
    {
      if (*a4 >= *a3)
      {
        v14 = 1;
      }

      else
      {
        v14 = -1;
      }

      if (*a4 != *a3)
      {
        goto LABEL_32;
      }

      v15 = *(a3 + 4);
      v16 = a4[1];
      v21 = v11 < v12;
      v20 = -1;
      if (!v21)
      {
        v20 = 0;
      }

      goto LABEL_27;
    }

    v13 = 0;
    if (*a4 >= *a3)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }

    if (*a4 != *a3)
    {
      goto LABEL_32;
    }
  }

  v15 = *(a3 + 4);
  v16 = a4[1];
  v33 = v11 == 0x7FFFFFFF;
  v17 = v11 != 0x7FFFFFFF;
  v18 = v33;
  v33 = (v13 & v18) == 0;
  v19 = -1;
  if (v33)
  {
    v19 = 1;
  }

  if (v17 != v13)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

LABEL_27:
  v22 = -1;
  if (v16 >= v15)
  {
    v22 = 1;
  }

  if (v16 == v15)
  {
    v14 = v20;
  }

  else
  {
    v14 = v22;
  }

LABEL_32:
  if ((v14 & 0x80) == 0)
  {
    goto LABEL_110;
  }

  v23 = *(a3 + 32);
  result = *a3;
  v24 = *(a3 + 16);
  v25 = *(a4 + 32);
  v26 = *(a4 + 1);
  *a3 = *a4;
  *(a3 + 16) = v26;
  *(a3 + 32) = v25;
  *a4 = result;
  *(a4 + 1) = v24;
  *(a4 + 32) = v23;
  v27 = *(a3 + 8);
  v28 = *(a2 + 8);
  if (v27 == 0x7FFFFFFF)
  {
    v29 = v28 != 0x7FFFFFFF;
    if (*a3 >= *a2)
    {
      v30 = 1;
    }

    else
    {
      v30 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_70;
    }

    goto LABEL_44;
  }

  if (v28 == 0x7FFFFFFF)
  {
    v29 = 0;
    if (*a3 >= *a2)
    {
      v30 = 1;
    }

    else
    {
      v30 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_70;
    }

LABEL_44:
    v31 = *(a2 + 4);
    v32 = *(a3 + 4);
    v33 = v32 == v31;
    if (v32 >= v31)
    {
      v30 = 1;
    }

    else
    {
      v30 = -1;
    }

    if (v33)
    {
      v33 = v27 == 0x7FFFFFFF;
      v34 = v27 != 0x7FFFFFFF;
      v35 = v33;
      v33 = (v29 & v35) == 0;
      v30 = -1;
      if (v33)
      {
        v30 = 1;
      }

      if (v34 == v29)
      {
        v30 = 0;
      }
    }

    goto LABEL_70;
  }

  if (*a3 >= *a2)
  {
    v30 = 1;
  }

  else
  {
    v30 = -1;
  }

  if (*a3 == *a2)
  {
    v36 = *(a2 + 4);
    v37 = *(a3 + 4);
    v38 = v37 == v36;
    v30 = v37 >= v36 ? 1 : -1;
    if (v38)
    {
      if (v27 >= v28)
      {
        v30 = 0;
      }

      else
      {
        v30 = -1;
      }
    }
  }

LABEL_70:
  if ((v30 & 0x80) == 0)
  {
    goto LABEL_110;
  }

  v39 = *(a2 + 32);
  result = *a2;
  v40 = *(a2 + 16);
  v41 = *(a3 + 32);
  v42 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v42;
  *(a2 + 32) = v41;
  *a3 = result;
  *(a3 + 16) = v40;
  *(a3 + 32) = v39;
  v43 = *(a2 + 8);
  v44 = *(a1 + 8);
  if (v43 == 0x7FFFFFFF)
  {
    v45 = v44 != 0x7FFFFFFF;
    if (*a2 >= *a1)
    {
      v46 = 1;
    }

    else
    {
      v46 = -1;
    }

    if (*a2 != *a1)
    {
      goto LABEL_108;
    }

LABEL_82:
    v47 = *(a1 + 4);
    v48 = *(a2 + 4);
    v49 = v48 == v47;
    if (v48 >= v47)
    {
      v46 = 1;
    }

    else
    {
      v46 = -1;
    }

    if (v49)
    {
      v33 = v43 == 0x7FFFFFFF;
      v50 = v43 != 0x7FFFFFFF;
      v51 = v33;
      v33 = (v45 & v51) == 0;
      v46 = -1;
      if (v33)
      {
        v46 = 1;
      }

      if (v50 == v45)
      {
        v46 = 0;
      }
    }

    goto LABEL_108;
  }

  if (v44 != 0x7FFFFFFF)
  {
    if (*a2 >= *a1)
    {
      v46 = 1;
    }

    else
    {
      v46 = -1;
    }

    if (*a2 == *a1)
    {
      v52 = *(a1 + 4);
      v53 = *(a2 + 4);
      v54 = v53 == v52;
      v46 = v53 >= v52 ? 1 : -1;
      if (v54)
      {
        if (v43 >= v44)
        {
          v46 = 0;
        }

        else
        {
          v46 = -1;
        }
      }
    }

    goto LABEL_108;
  }

  v45 = 0;
  if (*a2 >= *a1)
  {
    v46 = 1;
  }

  else
  {
    v46 = -1;
  }

  if (*a2 == *a1)
  {
    goto LABEL_82;
  }

LABEL_108:
  if (v46 < 0)
  {
    v55 = *(a1 + 32);
    result = *a1;
    v56 = *(a1 + 16);
    v57 = *(a2 + 32);
    v58 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v58;
    *(a1 + 32) = v57;
    *a2 = result;
    *(a2 + 16) = v56;
    *(a2 + 32) = v55;
  }

LABEL_110:
  v59 = *(a5 + 8);
  v60 = a4[2];
  v61 = *a4;
  if (v59 == 0x7FFFFFFF)
  {
    v62 = v60 != 0x7FFFFFFF;
    v65 = *a5 == v61;
    if (*a5 >= v61)
    {
      v64 = 1;
    }

    else
    {
      v64 = -1;
    }

    if (!v65)
    {
      goto LABEL_144;
    }
  }

  else
  {
    if (v60 != 0x7FFFFFFF)
    {
      v72 = *a5 == v61;
      if (*a5 >= v61)
      {
        v64 = 1;
      }

      else
      {
        v64 = -1;
      }

      if (!v72)
      {
        goto LABEL_144;
      }

      v66 = a4[1];
      v67 = *(a5 + 4);
      v21 = v59 < v60;
      v71 = -1;
      if (!v21)
      {
        v71 = 0;
      }

      goto LABEL_138;
    }

    v62 = 0;
    v63 = *a5 == v61;
    if (*a5 >= v61)
    {
      v64 = 1;
    }

    else
    {
      v64 = -1;
    }

    if (!v63)
    {
      goto LABEL_144;
    }
  }

  v66 = a4[1];
  v67 = *(a5 + 4);
  v33 = v59 == 0x7FFFFFFF;
  v68 = v59 != 0x7FFFFFFF;
  v69 = v33;
  v33 = (v62 & v69) == 0;
  v70 = -1;
  if (v33)
  {
    v70 = 1;
  }

  if (v68 != v62)
  {
    v71 = v70;
  }

  else
  {
    v71 = 0;
  }

LABEL_138:
  v73 = v67 >= v66;
  v74 = v67 == v66;
  v64 = -1;
  if (v73)
  {
    v64 = 1;
  }

  if (v74)
  {
    v64 = v71;
  }

LABEL_144:
  if ((v64 & 0x80) == 0)
  {
    return result;
  }

  v75 = *(a4 + 4);
  result = *a4;
  v76 = *(a4 + 1);
  v77 = *(a5 + 32);
  v78 = *(a5 + 16);
  *a4 = *a5;
  *(a4 + 1) = v78;
  *(a4 + 32) = v77;
  *a5 = result;
  *(a5 + 16) = v76;
  *(a5 + 32) = v75;
  v79 = a4[2];
  v80 = *(a3 + 8);
  if (v79 == 0x7FFFFFFF)
  {
    v81 = v80 != 0x7FFFFFFF;
    if (*a4 >= *a3)
    {
      v82 = 1;
    }

    else
    {
      v82 = -1;
    }

    if (*a4 != *a3)
    {
      goto LABEL_182;
    }

    goto LABEL_156;
  }

  if (v80 == 0x7FFFFFFF)
  {
    v81 = 0;
    if (*a4 >= *a3)
    {
      v82 = 1;
    }

    else
    {
      v82 = -1;
    }

    if (*a4 != *a3)
    {
      goto LABEL_182;
    }

LABEL_156:
    v83 = *(a3 + 4);
    v84 = a4[1];
    v85 = v84 == v83;
    if (v84 >= v83)
    {
      v82 = 1;
    }

    else
    {
      v82 = -1;
    }

    if (v85)
    {
      v33 = v79 == 0x7FFFFFFF;
      v86 = v79 != 0x7FFFFFFF;
      v87 = v33;
      v33 = (v81 & v87) == 0;
      v82 = -1;
      if (v33)
      {
        v82 = 1;
      }

      if (v86 == v81)
      {
        v82 = 0;
      }
    }

    goto LABEL_182;
  }

  if (*a4 >= *a3)
  {
    v82 = 1;
  }

  else
  {
    v82 = -1;
  }

  if (*a4 == *a3)
  {
    v88 = *(a3 + 4);
    v89 = a4[1];
    v90 = v89 == v88;
    v82 = v89 >= v88 ? 1 : -1;
    if (v90)
    {
      if (v79 >= v80)
      {
        v82 = 0;
      }

      else
      {
        v82 = -1;
      }
    }
  }

LABEL_182:
  if ((v82 & 0x80) == 0)
  {
    return result;
  }

  v91 = *(a3 + 32);
  result = *a3;
  v92 = *(a3 + 16);
  v93 = *(a4 + 32);
  v94 = *(a4 + 1);
  *a3 = *a4;
  *(a3 + 16) = v94;
  *(a3 + 32) = v93;
  *a4 = result;
  *(a4 + 1) = v92;
  *(a4 + 32) = v91;
  v95 = *(a3 + 8);
  v96 = *(a2 + 8);
  if (v95 == 0x7FFFFFFF)
  {
    v97 = v96 != 0x7FFFFFFF;
    if (*a3 >= *a2)
    {
      v98 = 1;
    }

    else
    {
      v98 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_220;
    }

    goto LABEL_194;
  }

  if (v96 == 0x7FFFFFFF)
  {
    v97 = 0;
    if (*a3 >= *a2)
    {
      v98 = 1;
    }

    else
    {
      v98 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_220;
    }

LABEL_194:
    v99 = *(a2 + 4);
    v100 = *(a3 + 4);
    v101 = v100 == v99;
    if (v100 >= v99)
    {
      v98 = 1;
    }

    else
    {
      v98 = -1;
    }

    if (v101)
    {
      v33 = v95 == 0x7FFFFFFF;
      v102 = v95 != 0x7FFFFFFF;
      v103 = v33;
      v33 = (v97 & v103) == 0;
      v98 = -1;
      if (v33)
      {
        v98 = 1;
      }

      if (v102 == v97)
      {
        v98 = 0;
      }
    }

    goto LABEL_220;
  }

  if (*a3 >= *a2)
  {
    v98 = 1;
  }

  else
  {
    v98 = -1;
  }

  if (*a3 == *a2)
  {
    v104 = *(a2 + 4);
    v105 = *(a3 + 4);
    v106 = v105 == v104;
    v98 = v105 >= v104 ? 1 : -1;
    if (v106)
    {
      if (v95 >= v96)
      {
        v98 = 0;
      }

      else
      {
        v98 = -1;
      }
    }
  }

LABEL_220:
  if ((v98 & 0x80) == 0)
  {
    return result;
  }

  v107 = *(a2 + 32);
  result = *a2;
  v108 = *(a2 + 16);
  v109 = *(a3 + 32);
  v110 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v110;
  *(a2 + 32) = v109;
  *a3 = result;
  *(a3 + 16) = v108;
  *(a3 + 32) = v107;
  v111 = *(a2 + 8);
  v112 = *(a1 + 8);
  if (v111 == 0x7FFFFFFF)
  {
    v113 = v112 != 0x7FFFFFFF;
  }

  else
  {
    if (v112 != 0x7FFFFFFF)
    {
      if (*a2 >= *a1)
      {
        v114 = 1;
      }

      else
      {
        v114 = -1;
      }

      if (*a2 == *a1)
      {
        v120 = *(a1 + 4);
        v121 = *(a2 + 4);
        v122 = v121 == v120;
        v114 = v121 >= v120 ? 1 : -1;
        if (v122)
        {
          if (v111 >= v112)
          {
            v114 = 0;
          }

          else
          {
            v114 = -1;
          }
        }
      }

      goto LABEL_255;
    }

    v113 = 0;
  }

  if (*a2 >= *a1)
  {
    v114 = 1;
  }

  else
  {
    v114 = -1;
  }

  if (*a2 == *a1)
  {
    v115 = *(a1 + 4);
    v116 = *(a2 + 4);
    v117 = v116 == v115;
    v114 = v116 >= v115 ? 1 : -1;
    if (v117)
    {
      v33 = v111 == 0x7FFFFFFF;
      v118 = v111 != 0x7FFFFFFF;
      v119 = v33;
      v33 = (v113 & v119) == 0;
      v114 = -1;
      if (v33)
      {
        v114 = 1;
      }

      if (v118 == v113)
      {
        v114 = 0;
      }
    }
  }

LABEL_255:
  if (v114 < 0)
  {
    v123 = *(a1 + 32);
    result = *a1;
    v124 = *(a1 + 16);
    v125 = *(a2 + 32);
    v126 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v126;
    *(a1 + 32) = v125;
    *a2 = result;
    *(a2 + 16) = v124;
    *(a2 + 32) = v123;
  }

  return result;
}

BOOL sub_9DDDDC(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v2 <= 2)
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = (a2 - 40);
      v5 = *(a2 - 32);
      v6 = *(a1 + 8);
      if (v5 == 0x7FFFFFFF)
      {
        v7 = v6 != 0x7FFFFFFF;
      }

      else
      {
        if (v6 != 0x7FFFFFFF)
        {
          if (*v4 >= *a1)
          {
            v61 = 1;
          }

          else
          {
            v61 = -1;
          }

          if (*v4 != *a1)
          {
            goto LABEL_151;
          }

          v62 = *(a1 + 4);
          v63 = *(a2 - 36);
          v76 = v5 < v6;
          v67 = -1;
          if (!v76)
          {
            v67 = 0;
          }

LABEL_146:
          v77 = -1;
          if (v63 >= v62)
          {
            v77 = 1;
          }

          if (v63 == v62)
          {
            v61 = v67;
          }

          else
          {
            v61 = v77;
          }

LABEL_151:
          if (v61 < 0)
          {
            v78 = *(a1 + 32);
            v79 = *a1;
            v80 = *(a1 + 16);
            v81 = *(a2 - 8);
            v82 = *(a2 - 24);
            *a1 = *v4;
            *(a1 + 16) = v82;
            *(a1 + 32) = v81;
            *v4 = v79;
            *(a2 - 24) = v80;
            result = 1;
            *(a2 - 8) = v78;
            return result;
          }

          return 1;
        }

        v7 = 0;
      }

      if (*v4 >= *a1)
      {
        v61 = 1;
      }

      else
      {
        v61 = -1;
      }

      if (*v4 != *a1)
      {
        goto LABEL_151;
      }

      v62 = *(a1 + 4);
      v63 = *(a2 - 36);
      v25 = v5 == 0x7FFFFFFF;
      v64 = v5 != 0x7FFFFFFF;
      v65 = v25;
      v25 = (v7 & v65) == 0;
      v66 = -1;
      if (v25)
      {
        v66 = 1;
      }

      if (v64 != v7)
      {
        v67 = v66;
      }

      else
      {
        v67 = 0;
      }

      goto LABEL_146;
    }

    goto LABEL_13;
  }

  if (v2 == 3)
  {
    sub_9DD230(a1, (a1 + 40), (a2 - 40));
    return 1;
  }

  if (v2 != 4)
  {
    if (v2 == 5)
    {
      sub_9DD6D0(a1, a1 + 40, a1 + 80, (a1 + 120), a2 - 40);
      return 1;
    }

LABEL_13:
    v8 = (a1 + 80);
    sub_9DD230(a1, (a1 + 40), (a1 + 80));
    v11 = a1 + 120;
    if (a1 + 120 == a2)
    {
      return 1;
    }

    v12 = 0;
    v13 = 0;
    while (1)
    {
      v15 = *(v11 + 8);
      v16 = v8[2];
      v17 = *v8;
      if (v15 == 0x7FFFFFFF)
      {
        break;
      }

      if (v16 == 0x7FFFFFFF)
      {
        v18 = 0;
        v19 = *v11;
        if (*v11 >= v17)
        {
          v20 = 1;
        }

        else
        {
          v20 = -1;
        }

        if (v19 != v17)
        {
          goto LABEL_58;
        }

LABEL_29:
        v21 = v8[1];
        v22 = *(v11 + 4);
        if (v18 && v15 == 0x7FFFFFFF)
        {
          v23 = -1;
        }

        else
        {
          v23 = 1;
        }

        if ((v15 != 0x7FFFFFFF) != v18)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        v25 = v22 == v21;
        if (v22 >= v21)
        {
          v26 = 1;
        }

        else
        {
          v26 = -1;
        }

        if (v25)
        {
          v26 = v24;
        }

        if ((v26 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_59;
      }

      v19 = *v11;
      if (*v11 >= v17)
      {
        v20 = 1;
      }

      else
      {
        v20 = -1;
      }

      if (v19 != v17)
      {
        goto LABEL_58;
      }

      v27 = v8[1];
      v28 = *(v11 + 4);
      if (v15 >= v16)
      {
        v29 = 0;
      }

      else
      {
        v29 = -1;
      }

      v30 = v28 == v27;
      if (v28 >= v27)
      {
        v31 = 1;
      }

      else
      {
        v31 = -1;
      }

      if (v30)
      {
        v31 = v29;
      }

      if ((v31 & 0x80) == 0)
      {
        goto LABEL_17;
      }

LABEL_59:
      v32 = *(v11 + 4);
      *v134 = *(v11 + 12);
      *&v134[12] = *(v11 + 24);
      v33 = v12;
      v34 = v12;
      if (v15 == 0x7FFFFFFF)
      {
        while (1)
        {
          v47 = a1 + v34;
          v48 = *(a1 + v34 + 96);
          *(v47 + 120) = *(a1 + v34 + 80);
          *(v47 + 136) = v48;
          *(v47 + 152) = *(a1 + v34 + 112);
          if (v34 == -80)
          {
            break;
          }

          v14 = v8;
          v49 = *(v47 + 40);
          v50 = v17 == v49;
          if (v17 >= v49)
          {
            v51 = 1;
          }

          else
          {
            v51 = 255;
          }

          if (v50)
          {
            v52 = *(a1 + v34 + 44);
            v53 = v32 == v52;
            if (v32 >= v52)
            {
              v51 = 1;
            }

            else
            {
              v51 = 255;
            }

            if (v53)
            {
              v51 = 255;
            }

            if (v53 && *(a1 + v34 + 48) == 0x7FFFFFFF)
            {
              v14 = a1 + v34 + 80;
              goto LABEL_16;
            }
          }

          v8 -= 10;
          v34 -= 40;
          if (v51 < 0x80)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        while (1)
        {
          v35 = a1 + v33;
          v36 = *(a1 + v33 + 96);
          *(v35 + 120) = *(a1 + v33 + 80);
          *(v35 + 136) = v36;
          *(v35 + 152) = *(a1 + v33 + 112);
          if (v33 == -80)
          {
            break;
          }

          v37 = *(v35 + 48);
          v38 = *(v35 + 40);
          if (v37 == 0x7FFFFFFF)
          {
            v39 = v17 == v38;
            if (v17 >= v38)
            {
              v40 = 1;
            }

            else
            {
              v40 = -1;
            }

            if (v39)
            {
              v41 = *(a1 + v33 + 44);
              v42 = v32 == v41;
              v40 = v32 >= v41 ? 1 : -1;
              if (v42)
              {
                v40 = 1;
              }
            }
          }

          else
          {
            v43 = v17 == v38;
            if (v17 >= v38)
            {
              v40 = 1;
            }

            else
            {
              v40 = -1;
            }

            if (v43)
            {
              v44 = *(a1 + v33 + 44);
              v45 = v15 >= v37 ? 0 : -1;
              v46 = v32 == v44;
              v40 = v32 >= v44 ? 1 : -1;
              if (v46)
              {
                v40 = v45;
              }
            }
          }

          v33 -= 40;
          if ((v40 & 0x80) == 0)
          {
            v14 = a1 + v33 + 120;
            goto LABEL_16;
          }
        }
      }

      v14 = a1;
LABEL_16:
      *v14 = v17;
      *(v14 + 4) = v32;
      *(v14 + 8) = v15;
      *(v14 + 25) = *&v134[13];
      *(v14 + 12) = *v134;
      if (++v13 == 8)
      {
        return v11 + 40 == a2;
      }

LABEL_17:
      v8 = v11;
      v12 += 40;
      v11 += 40;
      if (v11 == a2)
      {
        return 1;
      }
    }

    v18 = v16 != 0x7FFFFFFF;
    v19 = *v11;
    if (*v11 >= v17)
    {
      v20 = 1;
    }

    else
    {
      v20 = -1;
    }

    if (v19 != v17)
    {
LABEL_58:
      v17 = v19;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_59;
    }

    goto LABEL_29;
  }

  v55 = a2 - 40;
  sub_9DD230(a1, (a1 + 40), (a1 + 80));
  v58 = *(a2 - 32);
  v59 = *(a1 + 88);
  if (v58 == 0x7FFFFFFF)
  {
    v60 = v59 != 0x7FFFFFFF;
    goto LABEL_127;
  }

  if (v59 == 0x7FFFFFFF)
  {
    v60 = 0;
LABEL_127:
    v68 = *(a1 + 80);
    if (*v55 >= v68)
    {
      v69 = 1;
    }

    else
    {
      v69 = -1;
    }

    if (*v55 != v68)
    {
      goto LABEL_165;
    }

    v70 = *(a1 + 84);
    v71 = *(a2 - 36);
    v25 = v58 == 0x7FFFFFFF;
    v72 = v58 != 0x7FFFFFFF;
    v73 = v25;
    v25 = (v60 & v73) == 0;
    v74 = -1;
    if (v25)
    {
      v74 = 1;
    }

    if (v72 != v60)
    {
      v75 = v74;
    }

    else
    {
      v75 = 0;
    }

    goto LABEL_159;
  }

  v83 = *(a1 + 80);
  if (*v55 >= v83)
  {
    v69 = 1;
  }

  else
  {
    v69 = -1;
  }

  if (*v55 != v83)
  {
    goto LABEL_165;
  }

  v70 = *(a1 + 84);
  v71 = *(a2 - 36);
  v76 = v58 < v59;
  v75 = -1;
  if (!v76)
  {
    v75 = 0;
  }

LABEL_159:
  v84 = v71 >= v70;
  v85 = v71 == v70;
  v86 = -1;
  if (v84)
  {
    v86 = 1;
  }

  if (v85)
  {
    v69 = v75;
  }

  else
  {
    v69 = v86;
  }

LABEL_165:
  if ((v69 & 0x80) == 0)
  {
    return 1;
  }

  v87 = *(a1 + 112);
  v88 = *(a1 + 80);
  v89 = *(a1 + 96);
  v90 = *(v55 + 32);
  v91 = *(v55 + 16);
  *(a1 + 80) = *v55;
  *(a1 + 96) = v91;
  *(a1 + 112) = v90;
  *v55 = v88;
  *(v55 + 16) = v89;
  *(v55 + 32) = v87;
  v92 = *(a1 + 88);
  v93 = *(a1 + 48);
  if (v92 == 0x7FFFFFFF)
  {
    v94 = v93 != 0x7FFFFFFF;
LABEL_170:
    v95 = *(a1 + 80);
    v96 = *(a1 + 40);
    v97 = v95 == v96;
    if (v95 >= v96)
    {
      v98 = 1;
    }

    else
    {
      v98 = -1;
    }

    if (v97)
    {
      v99 = *(a1 + 44);
      v100 = *(a1 + 84);
      v101 = v100 == v99;
      v98 = v100 >= v99 ? 1 : -1;
      if (v101)
      {
        v25 = v92 == 0x7FFFFFFF;
        v102 = v92 != 0x7FFFFFFF;
        v103 = v25;
        v25 = (v94 & v103) == 0;
        v98 = -1;
        if (v25)
        {
          v98 = 1;
        }

        if (v102 == v94)
        {
          v98 = 0;
        }
      }
    }

    goto LABEL_203;
  }

  if (v93 == 0x7FFFFFFF)
  {
    v94 = 0;
    goto LABEL_170;
  }

  v104 = *(a1 + 80);
  v105 = *(a1 + 40);
  v106 = v104 == v105;
  if (v104 >= v105)
  {
    v98 = 1;
  }

  else
  {
    v98 = -1;
  }

  if (v106)
  {
    v107 = *(a1 + 44);
    v108 = *(a1 + 84);
    v109 = v108 == v107;
    v98 = v108 >= v107 ? 1 : -1;
    if (v109)
    {
      if (v92 >= v93)
      {
        v98 = 0;
      }

      else
      {
        v98 = -1;
      }
    }
  }

LABEL_203:
  if ((v98 & 0x80) == 0)
  {
    return 1;
  }

  v110 = *(a1 + 72);
  v111 = *(a1 + 40);
  v112 = *(a1 + 96);
  *(a1 + 40) = *(a1 + 80);
  v113 = *(a1 + 56);
  *(a1 + 56) = v112;
  *(a1 + 72) = *(a1 + 112);
  *(a1 + 80) = v111;
  *(a1 + 96) = v113;
  *(a1 + 112) = v110;
  v114 = *(a1 + 48);
  v115 = *(a1 + 8);
  if (v114 == 0x7FFFFFFF)
  {
    v116 = v115 != 0x7FFFFFFF;
LABEL_208:
    v117 = *(a1 + 40);
    v118 = v117 == *a1;
    if (v117 >= *a1)
    {
      v119 = 1;
    }

    else
    {
      v119 = -1;
    }

    if (v118)
    {
      v120 = *(a1 + 4);
      v121 = *(a1 + 44);
      v122 = v121 == v120;
      v119 = v121 >= v120 ? 1 : -1;
      if (v122)
      {
        v25 = v114 == 0x7FFFFFFF;
        v123 = v114 != 0x7FFFFFFF;
        v124 = v25;
        v25 = (v116 & v124) == 0;
        v119 = -1;
        if (v25)
        {
          v119 = 1;
        }

        if (v123 == v116)
        {
          v119 = 0;
        }
      }
    }

    goto LABEL_240;
  }

  if (v115 == 0x7FFFFFFF)
  {
    v116 = 0;
    goto LABEL_208;
  }

  v125 = *(a1 + 40);
  v126 = v125 == *a1;
  if (v125 >= *a1)
  {
    v119 = 1;
  }

  else
  {
    v119 = -1;
  }

  if (v126)
  {
    v127 = *(a1 + 4);
    v128 = *(a1 + 44);
    v129 = v128 == v127;
    v119 = v128 >= v127 ? 1 : -1;
    if (v129)
    {
      if (v114 >= v115)
      {
        v119 = 0;
      }

      else
      {
        v119 = -1;
      }
    }
  }

LABEL_240:
  if ((v119 & 0x80) == 0)
  {
    return 1;
  }

  v130 = *(a1 + 32);
  v132 = *a1;
  v131 = *(a1 + 16);
  v133 = *(a1 + 56);
  *a1 = *(a1 + 40);
  *(a1 + 16) = v133;
  *(a1 + 32) = *(a1 + 72);
  *(a1 + 40) = v132;
  *(a1 + 56) = v131;
  result = 1;
  *(a1 + 72) = v130;
  return result;
}

double sub_9DE500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  return result;
}

void sub_9DE520(uint64_t a1@<X0>, unint64_t **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v4 = *a2;
  v56 = a2[1];
  if (*a2 != v56)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *v4;
      v9 = sub_3AFEE8(*(a1 + 8));
      v10 = sub_9E0278(v9, v8, 0, "payment_method_region");
      v11 = (v10 - *v10);
      if (*v11 >= 0xBu && (v12 = v11[5]) != 0)
      {
        v13 = (v10 + v12 + *(v10 + v12));
      }

      else
      {
        v13 = 0;
      }

      sub_9E0404(v13, &v64);
      v57 = v4;
      __src = v7;
      v60 = v6;
      v15 = v64;
      v14 = v65;
      if (v64 == v65)
      {
        goto LABEL_58;
      }

      do
      {
        if (v15[8] && (v15[10] != 1 || (sub_3B0454(*(a1 + 8)) & 1) != 0))
        {
          v16 = *v15;
          v17 = HIDWORD(*v15);
          v18 = *(a3 + 8);
          v19 = *a3;
          if (*a3 == v18)
          {
            goto LABEL_20;
          }

          while (*v19 != __PAIR64__(v17, v16))
          {
            if (++v19 == v18)
            {
              goto LABEL_11;
            }
          }

          if (v19 != v18)
          {
LABEL_20:
            v20 = a1;
            v21 = sub_3AFEE8(*(a1 + 8));
            v71 = 0;
            v72 = v16;
            v69 = "payment_method";
            v70[0] = &v71;
            v70[1] = &v72;
            v22 = *(v21 + 3856) + 1;
            *(v21 + 3856) = v22;
            if (!*v21)
            {
              exception = __cxa_allocate_exception(0x40uLL);
              v75 = v72;
              v73 = sub_7FCF0(6u);
              v74 = v40;
              sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v73, &v61);
              if ((v63 & 0x80u) == 0)
              {
                v41 = &v61;
              }

              else
              {
                v41 = v61;
              }

              if ((v63 & 0x80u) == 0)
              {
                v42 = v63;
              }

              else
              {
                v42 = v62;
              }

              v43 = sub_2D390(exception, v41, v42);
            }

            if (*(v21 + 592) == v16)
            {
              ++*(v21 + 3864);
              *(v21 + 600) = v22;
              v23 = *(v21 + 608);
              if (!v23)
              {
                goto LABEL_69;
              }
            }

            else if (*(v21 + 616) == v16)
            {
              ++*(v21 + 3864);
              *(v21 + 624) = v22;
              v23 = *(v21 + 632);
              if (!v23)
              {
                goto LABEL_69;
              }
            }

            else if (*(v21 + 640) == v16)
            {
              ++*(v21 + 3864);
              *(v21 + 648) = v22;
              v23 = *(v21 + 656);
              if (!v23)
              {
                goto LABEL_69;
              }
            }

            else if (*(v21 + 664) == v16)
            {
              ++*(v21 + 3864);
              *(v21 + 672) = v22;
              v23 = *(v21 + 680);
              if (!v23)
              {
LABEL_69:
                v44 = __cxa_allocate_exception(0x40uLL);
                v75 = v72;
                v73 = sub_7FCF0(6u);
                v74 = v45;
                sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v73, &v61);
                if ((v63 & 0x80u) == 0)
                {
                  v46 = &v61;
                }

                else
                {
                  v46 = v61;
                }

                if ((v63 & 0x80u) == 0)
                {
                  v47 = v63;
                }

                else
                {
                  v47 = v62;
                }

                v48 = sub_2D390(v44, v46, v47);
              }
            }

            else
            {
              v24 = *(v21 + 648);
              v25 = *(v21 + 624);
              v26 = *(v21 + 600);
              v54 = *(v21 + 672);
              __p = v21;
              v23 = sub_2D52A4(*v21, 6, v16, 1);
              if (v26 >= v22)
              {
                v27 = v22;
              }

              else
              {
                v27 = v26;
              }

              if (v26 >= v22)
              {
                v28 = 0;
              }

              else
              {
                v28 = 24;
              }

              if (v25 < v27)
              {
                v27 = v25;
                v28 = 25;
              }

              if (v24 < v27)
              {
                v28 = 26;
                v27 = v24;
              }

              v29 = v54 >= v27;
              v30 = 27;
              if (v29)
              {
                v30 = v28;
              }

              v31 = &__p[3 * v30 + 2];
              *v31 = v72;
              *(v31 + 8) = __p[482];
              *(v31 + 16) = v23;
              if (!v23)
              {
                sub_2C9894(v70);
LABEL_77:
                v49 = __cxa_allocate_exception(0x40uLL);
                LODWORD(v70[0]) = v16;
                v75 = v17;
                v73 = sub_7FCF0(6u);
                v74 = v50;
                sub_2C956C("Failed to acquire entity ", &v69, " in quad node ", " at position ", " on layer ", &v73, &v61);
                if ((v63 & 0x80u) == 0)
                {
                  v51 = &v61;
                }

                else
                {
                  v51 = v61;
                }

                if ((v63 & 0x80u) == 0)
                {
                  v52 = v63;
                }

                else
                {
                  v52 = v62;
                }

                v53 = sub_2D390(v49, v51, v52);
              }
            }

            v32 = (v23 + *v23);
            v33 = (v32 - *v32);
            if (*v33 < 0x31u)
            {
              goto LABEL_77;
            }

            v34 = v33[24];
            if (!v34)
            {
              goto LABEL_77;
            }

            v35 = (v32 + v34 + *(v32 + v34));
            if (*v35 <= v17)
            {
              goto LABEL_77;
            }

            v36 = (&v35[v17 + 1] + v35[v17 + 1]);
            v37 = (v36 - *v36);
            if (*v37 < 9u)
            {
              goto LABEL_10;
            }

            v38 = v37[4];
            a1 = v20;
            if (v38)
            {
              if (*(v36 + v38))
              {
                if (*(v36 + v38) != 1 || v15[9])
                {
                  operator new();
                }

LABEL_10:
                a1 = v20;
              }
            }
          }
        }

LABEL_11:
        v15 += 12;
      }

      while (v15 != v14);
      v15 = v64;
LABEL_58:
      v6 = v60;
      if (v15)
      {
        v65 = v15;
        operator delete(v15);
      }

      v7 = __src;
      v4 = v57 + 1;
    }

    while (v57 + 1 != v56);
  }
}

void sub_9DEFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  v25 = *(v23 - 192);
  if (!v25)
  {
    sub_30C2C4((v23 - 168));
    sub_951434(a12);
    _Unwind_Resume(a1);
  }

  *(v23 - 184) = v25;
  operator delete(v25);
  sub_30C2C4((v23 - 168));
  sub_951434(a12);
  _Unwind_Resume(a1);
}

void sub_9DF17C(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  *(a7 + 24) = -1;
  sub_64B998(a7 + 32);
  *(a7 + 192) = 0;
  *(a7 + 200) = 0;
  *(a7 + 208) = 0;
  sub_64B998(a7 + 216);
  sub_64B998(a7 + 376);
  *(a7 + 564) = 0;
  *(a7 + 536) = 0;
  *(a7 + 552) = 0;
  *(a7 + 544) = 0;
  *(a7 + 560) = 0;
  if (a7 != a6)
  {
    sub_31F64(a7, *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 3);
  }

  *(a7 + 560) = a3;
  v14 = a5 == 1;
  if (a5 == 2)
  {
    v14 = 2;
  }

  if (a4 != 1)
  {
    v14 = 0;
  }

  if (a4 == 2)
  {
    v15 = 3;
  }

  else
  {
    v15 = v14;
  }

  if (a4 == 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = v15;
  }

  *(a7 + 564) = v16;
  v17 = sub_3AFEE8(*(a1 + 8));
  v18 = sub_9E0278(v17, a2, 0, "payment_method_region");
  v19 = (v18 - *v18);
  if (*v19 >= 5u && (v20 = v19[2]) != 0)
  {
    v21 = *(v18 + v20);
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_2C939C(v17, 1u, 0);
  if (!v22 || (v23 = &v22[-*v22], *v23 < 0xDu) || (v24 = *(v23 + 6)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v84 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v25 = &v22[v24 + *&v22[v24]];
  v26 = &v25[-*v25];
  if (*v26 >= 0xBu)
  {
    v27 = *(v26 + 5);
    if (v27)
    {
      if (v25[v27])
      {
        v21 = nullsub_1(v21);
      }
    }
  }

  *(a7 + 24) = v21;
  nullsub_1(&v108);
  v28 = sub_3AFEE8(*(a1 + 8));
  v29 = sub_9E0278(v28, a2, 0, "payment_method_region");
  v30 = (v29 - *v29);
  if (*v30 >= 0x11u && (v31 = v30[8]) != 0)
  {
    v32 = (v29 + v31 + *(v29 + v31));
  }

  else
  {
    v32 = 0;
  }

  sub_509164(v32, v104);
  sub_9D69F4(v104, v93);
  sub_64BC20(&v102, v93);
  sub_53D784(a7 + 216, &v102);
  sub_53A868(&v102);
  if (SHIBYTE(v97) < 0)
  {
    operator delete(__p);
    if ((v94 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_55:
    operator delete(v93[0]);
    goto LABEL_30;
  }

  if (v94 < 0)
  {
    goto LABEL_55;
  }

LABEL_30:
  v35 = a6;
  v33 = *a6;
  v34 = *(v35 + 8);
  v36 = sub_3AFEE8(*(a1 + 8));
  v37 = sub_9E0278(v36, a2, 0, "payment_method_region");
  v38 = (v37 - *v37);
  if (*v38 >= 0x13u && (v39 = v38[9]) != 0)
  {
    v40 = (v37 + v39 + *(v37 + v39));
    v102 = 0uLL;
    v103 = 0;
    sub_9E16D4(&v102, *v40);
    v93[0] = v40 + 1;
    v91[0] = &v40[*v40 + 1];
    sub_9E1C00(v93, v91, &v102, sub_9E14D8);
    v41 = v102;
    v42 = v103;
  }

  else
  {
    v42 = 0;
    v41 = 0uLL;
  }

  v43 = v34 - v33;
  v100 = v41;
  v101 = v42;
  v103 = 0;
  v102 = 0uLL;
  sub_9E00F4(&v102);
  sub_9DFC5C(a1, &v100, a3, a4, v43 > 8, &v98);
  if (v98 != v99)
  {
    sub_594568(a7 + 376, v98);
  }

  v44 = sub_3AFEE8(*(a1 + 8));
  v45 = sub_9E0278(v44, a2, 0, "payment_method_region");
  v46 = (v45 - *v45);
  if (*v46 >= 0xDu && (v47 = v46[6]) != 0)
  {
    v48 = (v45 + v47 + *(v45 + v47));
  }

  else
  {
    v48 = 0;
  }

  sub_509164(v48, v93);
  sub_9D69F4(v93, v91);
  sub_64BC20(&v102, v91);
  if (v92 < 0)
  {
    operator delete(v91[4]);
    if ((SHIBYTE(v91[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_57:
    operator delete(v91[0]);
    goto LABEL_42;
  }

  if (SHIBYTE(v91[2]) < 0)
  {
    goto LABEL_57;
  }

LABEL_42:
  v49 = sub_3AFEE8(*(a1 + 8));
  v50 = sub_9E0278(v49, a2, 0, "payment_method_region");
  v51 = (v50 - *v50);
  if (*v51 >= 0xFu && (v52 = v51[7]) != 0)
  {
    v53 = (v50 + v52 + *(v50 + v52));
    memset(v91, 0, 24);
    sub_9E16D4(v91, *v53);
    v87 = v53 + 1;
    v85 = &v53[*v53 + 1];
    sub_9E1C00(&v87, &v85, v91, sub_9E14D8);
    v54 = *v91;
    v55 = v91[2];
  }

  else
  {
    v55 = 0;
    v54 = 0uLL;
  }

  v89 = v54;
  v90 = v55;
  memset(v91, 0, 24);
  sub_9E00F4(v91);
  sub_9DFC5C(a1, &v89, a3, a4, v43 > 8, &v87);
  v56 = v87;
  if (v87 != v88)
  {
    if (!sub_4D1F6C(&v102))
    {
      sub_594568(a7 + 32, &v102);
      if ((a7 + 192) != &v87)
      {
        sub_5F9F30((a7 + 192), v87, v88, 0xCCCCCCCCCCCCCCCDLL * ((v88 - v87) >> 5));
      }

      v57 = sub_3AFEE8(*(a1 + 8));
      v58 = sub_9E0278(v57, a2, 0, "payment_method_region");
      v59 = (v58 - *v58);
      if (*v59 >= 0x15u)
      {
        v60 = v59[10];
        if (v60)
        {
          v61 = *(v58 + v60);
          memset(v91, 0, 24);
          if (*(v58 + v60 + v61))
          {
            operator new();
          }

          sub_9E37C0((v58 + v60 + v61), v91);
          v62 = v91[0];
          v85 = v91[0];
          v86 = *&v91[1];
          v63 = v91[1];
          if (v91[0] != v91[1])
          {
            v64 = v91[0];
            do
            {
              v66 = *(v64 + 23);
              v67 = v66;
              if (v66 < 0)
              {
                v66 = v64[1];
              }

              if (v66)
              {
                v68 = *(v64 + 24) == 0;
              }

              else
              {
                v68 = 1;
              }

              if (!v68)
              {
                v69 = *(a7 + 544);
                if (v69 >= *(a7 + 552))
                {
                  v65 = sub_9E3A30((a7 + 536), v64);
                }

                else
                {
                  if (v67 < 0)
                  {
                    sub_325C(*(a7 + 544), *v64, v64[1]);
                  }

                  else
                  {
                    v70 = *v64;
                    *(v69 + 16) = v64[2];
                    *v69 = v70;
                  }

                  *(v69 + 24) = *(v64 + 24);
                  v65 = v69 + 32;
                }

                *(a7 + 544) = v65;
              }

              v64 += 4;
            }

            while (v64 != v63);
          }

          if (v62)
          {
            while (v63 != v62)
            {
              v76 = *(v63 - 9);
              v63 -= 4;
              if (v76 < 0)
              {
                operator delete(*v63);
              }
            }

            operator delete(v62);
          }
        }
      }
    }

    v56 = v87;
  }

  if (v56)
  {
    v71 = v88;
    v72 = v56;
    if (v88 != v56)
    {
      do
      {
        v71 = sub_53A868((v71 - 40));
      }

      while (v71 != v56);
      v72 = v87;
    }

    v88 = v56;
    operator delete(v72);
  }

  sub_9E00F4(&v89);
  sub_53A868(&v102);
  v73 = v96;
  if (v96)
  {
    v74 = v97;
    v75 = v96;
    if (v97 != v96)
    {
      do
      {
        if (*(v74 - 1) < 0)
        {
          operator delete(*(v74 - 3));
        }

        v74 -= 4;
      }

      while (v74 != v73);
      v75 = v96;
    }

    v97 = v73;
    operator delete(v75);
  }

  if (v94 < 0)
  {
    operator delete(v93[0]);
  }

  v77 = v98;
  if (v98)
  {
    v78 = v99;
    v79 = v98;
    if (v99 != v98)
    {
      do
      {
        v78 = sub_53A868(v78 - 160);
      }

      while (v78 != v77);
      v79 = v98;
    }

    v99 = v77;
    operator delete(v79);
  }

  sub_9E00F4(&v100);
  v80 = v106;
  if (v106)
  {
    v81 = v107;
    v82 = v106;
    if (v107 != v106)
    {
      do
      {
        if (*(v81 - 1) < 0)
        {
          operator delete(*(v81 - 3));
        }

        v81 -= 4;
      }

      while (v81 != v80);
      v82 = v106;
    }

    v107 = v80;
    operator delete(v82);
  }

  if (v105 < 0)
  {
    operator delete(v104[0]);
  }
}

void sub_9DFA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void **a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_4B98C4(&a19);
  sub_5C0ED8(&a12);
  sub_9E00F4(&a15);
  sub_53A868(&a41);
  sub_395478(&a26);
  sub_5C0ED8(&a34);
  sub_9E00F4(&a37);
  sub_395478(v42 - 160);
  sub_9DFBBC(v41);
  _Unwind_Resume(a1);
}

uint64_t sub_9DFBBC(uint64_t a1)
{
  sub_938500((a1 + 24));
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_9DFBF8(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_9D9004(a1, i))
    {
      i -= 80;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_9DFC5C(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  a6[1] = 0;
  a6[2] = 0;
  v8 = v6;
  *a6 = 0;
  if (v6 != v7)
  {
    if (a4 == 1)
    {
      v11 = 4;
      goto LABEL_13;
    }

    if (a4 == 4 || a4 == 2)
    {
      if (a3 == 2)
      {
        v11 = 3;
        goto LABEL_13;
      }

      if (a3 == 1)
      {
        if (a5)
        {
          v11 = 2;
        }

        else
        {
          v11 = 1;
        }

LABEL_13:
        v12 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        do
        {
          if (*(v8 + 80) == v11)
          {
            if (v12 >= v43)
            {
              v12 = sub_9E0CD0(&v41, v8);
            }

            else
            {
              sub_9D88D0(v12, v8);
              v12 += 80;
            }

            v42 = v12;
          }

          v8 += 88;
        }

        while (v8 != v7);
        v13 = v41;
        if (v41 == v12)
        {
          if (!v41)
          {
            return;
          }

          goto LABEL_52;
        }

        while (1)
        {
          nullsub_1(v36);
          sub_9D7320(v13, &v37);
          sub_9924B0(v36, &v37);
          sub_9927B4(v36, *(*a1 + 968));
          sub_9932C8(v36, v35);
          if (!sub_4D1F6C(v35))
          {
            v14 = a6[1];
            if (v14 >= a6[2])
            {
              v15 = sub_5C489C(a6, v35);
            }

            else
            {
              sub_55BD50(a6[1], v35);
              v15 = v14 + 160;
            }

            a6[1] = v15;
          }

          sub_53A868(v35);
          sub_992650(v36);
          v16 = v39;
          if (!v39)
          {
            goto LABEL_49;
          }

          v17 = v40;
          v18 = v39;
          if (v40 != v39)
          {
            break;
          }

LABEL_48:
          v40 = v16;
          operator delete(v18);
LABEL_49:
          if (v38 < 0)
          {
            operator delete(v37);
          }

          v13 += 80;
          if (v13 == v12)
          {
            v13 = v41;
            if (!v41)
            {
              return;
            }

LABEL_52:
            v24 = v42;
            v25 = v13;
            if (v42 == v13)
            {
              goto LABEL_80;
            }

            while (1)
            {
              if (*(v24 - 24))
              {
                sub_9E0F88((v24 - 24));
                operator delete(*(v24 - 24));
              }

              v26 = *(v24 - 56);
              if (!v26)
              {
                goto LABEL_77;
              }

              v27 = *(v24 - 48);
              v28 = *(v24 - 56);
              if (v27 != v26)
              {
                break;
              }

LABEL_76:
              *(v24 - 48) = v26;
              operator delete(v28);
LABEL_77:
              v34 = (v24 - 80);
              if (*(v24 - 57) < 0)
              {
                operator delete(*v34);
              }

              v24 -= 80;
              if (v34 == v13)
              {
                v25 = v41;
LABEL_80:
                v42 = v13;
                operator delete(v25);
                return;
              }
            }

            while (1)
            {
              v30 = *(v27 - 3);
              if (v30)
              {
                break;
              }

LABEL_72:
              if (*(v27 - 25) < 0)
              {
                operator delete(*(v27 - 6));
                v29 = v27 - 10;
                if ((*(v27 - 57) & 0x80000000) == 0)
                {
                  goto LABEL_61;
                }

LABEL_74:
                operator delete(*v29);
                v27 = v29;
                if (v29 == v26)
                {
LABEL_75:
                  v28 = *(v24 - 56);
                  goto LABEL_76;
                }
              }

              else
              {
                v29 = v27 - 10;
                if (*(v27 - 57) < 0)
                {
                  goto LABEL_74;
                }

LABEL_61:
                v27 = v29;
                if (v29 == v26)
                {
                  goto LABEL_75;
                }
              }
            }

            v31 = *(v27 - 2);
            v32 = *(v27 - 3);
            if (v31 == v30)
            {
LABEL_71:
              *(v27 - 2) = v30;
              operator delete(v32);
              goto LABEL_72;
            }

            while (1)
            {
              if (*(v31 - 1) < 0)
              {
                operator delete(*(v31 - 3));
                v33 = v31 - 6;
                if ((*(v31 - 25) & 0x80000000) == 0)
                {
                  goto LABEL_66;
                }

LABEL_69:
                operator delete(*v33);
                v31 = v33;
                if (v33 == v30)
                {
LABEL_70:
                  v32 = *(v27 - 3);
                  goto LABEL_71;
                }
              }

              else
              {
                v33 = v31 - 6;
                if (*(v31 - 25) < 0)
                {
                  goto LABEL_69;
                }

LABEL_66:
                v31 = v33;
                if (v33 == v30)
                {
                  goto LABEL_70;
                }
              }
            }
          }
        }

        while (1)
        {
          v20 = *(v17 - 3);
          if (v20)
          {
            break;
          }

LABEL_44:
          if (*(v17 - 25) < 0)
          {
            operator delete(*(v17 - 6));
            v19 = v17 - 10;
            if ((*(v17 - 57) & 0x80000000) == 0)
            {
              goto LABEL_33;
            }

LABEL_46:
            operator delete(*v19);
            v17 = v19;
            if (v19 == v16)
            {
LABEL_47:
              v18 = v39;
              goto LABEL_48;
            }
          }

          else
          {
            v19 = v17 - 10;
            if (*(v17 - 57) < 0)
            {
              goto LABEL_46;
            }

LABEL_33:
            v17 = v19;
            if (v19 == v16)
            {
              goto LABEL_47;
            }
          }
        }

        v21 = *(v17 - 2);
        v22 = *(v17 - 3);
        if (v21 == v20)
        {
LABEL_43:
          *(v17 - 2) = v20;
          operator delete(v22);
          goto LABEL_44;
        }

        while (1)
        {
          if (*(v21 - 1) < 0)
          {
            operator delete(*(v21 - 3));
            v23 = v21 - 6;
            if ((*(v21 - 25) & 0x80000000) == 0)
            {
              goto LABEL_38;
            }

LABEL_41:
            operator delete(*v23);
            v21 = v23;
            if (v23 == v20)
            {
LABEL_42:
              v22 = *(v17 - 3);
              goto LABEL_43;
            }
          }

          else
          {
            v23 = v21 - 6;
            if (*(v21 - 25) < 0)
            {
              goto LABEL_41;
            }

LABEL_38:
            v21 = v23;
            if (v23 == v20)
            {
              goto LABEL_42;
            }
          }
        }
      }
    }

    v11 = 0;
    goto LABEL_13;
  }
}

void sub_9E0060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v30 + 8) = v31;
  sub_53A868(&a10);
  sub_992650(&a30);
  sub_9D8E70(v32 - 152);
  sub_9DFBF8(v32 - 104);
  sub_5C0ED8(v30);
  _Unwind_Resume(a1);
}

void ***sub_9E00F4(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
      goto LABEL_32;
    }

    while (1)
    {
      if (*(v3 - 4))
      {
        sub_9E0F88(v3 - 4);
        operator delete(*(v3 - 4));
      }

      v5 = *(v3 - 8);
      if (!v5)
      {
        goto LABEL_29;
      }

      v6 = *(v3 - 7);
      v7 = *(v3 - 8);
      if (v6 != v5)
      {
        break;
      }

LABEL_28:
      *(v3 - 7) = v5;
      operator delete(v7);
LABEL_29:
      v13 = v3 - 11;
      if (*(v3 - 65) < 0)
      {
        operator delete(*v13);
      }

      v3 -= 11;
      if (v13 == v2)
      {
        v4 = *a1;
LABEL_32:
        a1[1] = v2;
        operator delete(v4);
        return a1;
      }
    }

    while (1)
    {
      v8 = *(v6 - 3);
      if (!v8)
      {
        goto LABEL_22;
      }

      v9 = *(v6 - 2);
      v10 = *(v6 - 3);
      if (v9 != v8)
      {
        break;
      }

LABEL_21:
      *(v6 - 2) = v8;
      operator delete(v10);
LABEL_22:
      if (*(v6 - 25) < 0)
      {
        operator delete(*(v6 - 6));
        v12 = v6 - 10;
        if (*(v6 - 57) < 0)
        {
LABEL_26:
          operator delete(*v12);
        }
      }

      else
      {
        v12 = v6 - 10;
        if (*(v6 - 57) < 0)
        {
          goto LABEL_26;
        }
      }

      v6 = v12;
      if (v12 == v5)
      {
        v7 = *(v3 - 8);
        goto LABEL_28;
      }
    }

    while (1)
    {
      if (*(v9 - 1) < 0)
      {
        operator delete(*(v9 - 3));
        v11 = v9 - 6;
        if (*(v9 - 25) < 0)
        {
LABEL_19:
          operator delete(*v11);
        }
      }

      else
      {
        v11 = v9 - 6;
        if (*(v9 - 25) < 0)
        {
          goto LABEL_19;
        }
      }

      v9 = v11;
      if (v11 == v8)
      {
        v10 = *(v6 - 3);
        goto LABEL_21;
      }
    }
  }

  return a1;
}

uint64_t sub_9E0278(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_2C939C(a1, a2, a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0x35u)
  {
    v9 = *(v8 + 26);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v6)
      {
        return &v9[v6 + 1] + v9[v6 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v6;
      v20 = v12;
      v18[0] = sub_7FCF0(6u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v6 + 1] + v9[v6 + 1];
  }

  return 0;
}

void sub_9E03D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_9E0404@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  if (result && *result)
  {
    operator new();
  }

  *a2 = 0uLL;
  *(a2 + 16) = 0;
  return result;
}

void sub_9E05B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_9E05CC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v6 = *v2;
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *v2) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      sub_1794();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    v12 = 4 * ((v3 - *v2) >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v13 = 12 * v7 + 12;
    v14 = 12 * v7 - (v3 - v6);
    memcpy((v12 - (v3 - v6)), v6, v3 - v6);
    *v2 = v14;
    *(v2 + 8) = v13;
    *(v2 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }

    result = v11;
    *(v2 + 8) = v13;
  }

  else
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    *(v2 + 8) = v3 + 12;
  }

  return result;
}

char *sub_9E0724(void *a1, void *a2)
{
  v2 = 0x193D4BB7E327A977 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x73615A240E6C2BLL)
  {
    sub_1794();
  }

  if (0x327A976FC64F52EELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x327A976FC64F52EELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x193D4BB7E327A977 * ((a1[2] - *a1) >> 3)) >= 0x39B0AD12073615)
  {
    v5 = 0x73615A240E6C2BLL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x73615A240E6C2BLL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (8 * ((a1[1] - *a1) >> 3));
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = 0;
  v7 = a2[1];
  if (v7 != *a2)
  {
    if (((v7 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_938270(v6 + 3, a2 + 3);
  v8 = *a1;
  v9 = a1[1];
  v10 = (v6 - &v9[-*a1]);
  *(v6 + 70) = a2[70];
  if (v9 != v8)
  {
    v11 = &v6[-8 * ((v9 - v8) >> 3) + 24];
    v12 = (v8 + 3);
    do
    {
      *(v11 - 24) = 0;
      *(v11 - 16) = 0;
      *(v11 - 8) = 0;
      *(v11 - 24) = *(v12 - 24);
      *(v11 - 8) = *(v12 - 8);
      *(v12 - 24) = 0;
      *(v12 - 16) = 0;
      *(v12 - 8) = 0;
      sub_9E098C(v11, v12);
      *(v13 + 536) = *(v12 + 536);
      v11 = v13 + 568;
      v14 = v12 + 544;
      v12 += 568;
    }

    while (v14 != v9);
    do
    {
      sub_938500(v8 + 3);
      v15 = *v8;
      if (*v8)
      {
        v8[1] = v15;
        operator delete(v15);
      }

      v8 += 71;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v6 + 568;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v6 + 568;
}

void sub_9E0964(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_9E0C5C(va);
  _Unwind_Resume(a1);
}

double sub_9E098C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 32) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 80) = *(a2 + 80);
  v3 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a1 + 104) = v3;
  v4 = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 112) = v4;
  v5 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v5;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0u;
  v6 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = v6;
  *(a2 + 152) = 0u;
  *(a2 + 144) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 184) = 0;
  *(a2 + 168) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = 0;
  *(a2 + 192) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 232) = 0;
  *(a2 + 216) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 256) = 0;
  *(a2 + 240) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 264) = 0u;
  v7 = *(a2 + 288);
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a1 + 288) = v7;
  LODWORD(v7) = *(a2 + 296);
  *(a1 + 300) = *(a2 + 300);
  *(a1 + 296) = v7;
  v8 = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 304) = v8;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0u;
  v9 = *(a2 + 328);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 328) = v9;
  *(a2 + 336) = 0u;
  *(a2 + 328) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 368) = 0;
  *(a2 + 352) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a2 + 392) = 0;
  *(a2 + 376) = 0u;
  *(a1 + 416) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 416) = 0;
  *(a2 + 400) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a2 + 424) = 0u;
  v10 = *(a2 + 448);
  *(a2 + 440) = 0;
  *(a2 + 448) = 0;
  *(a1 + 448) = v10;
  LODWORD(v10) = *(a2 + 456);
  *(a1 + 460) = *(a2 + 460);
  *(a1 + 456) = v10;
  v11 = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 464) = v11;
  *(a2 + 464) = 0;
  *(a2 + 472) = 0u;
  v12 = *(a2 + 488);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 488) = v12;
  *(a2 + 496) = 0u;
  *(a2 + 488) = 0;
  *(a1 + 528) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 528) = *(a2 + 528);
  *(a2 + 528) = 0;
  *(a2 + 512) = 0u;
  return result;
}

uint64_t sub_9E0C5C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 568;
    sub_938500((i - 544));
    v4 = *(i - 568);
    if (v4)
    {
      *(i - 560) = v4;
      operator delete(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9E0CD0(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v13 = 80 * v2;
  sub_9D88D0(80 * v2, a2);
  v14 = 80 * v2 + 80;
  v6 = *(a1 + 8);
  v7 = 80 * v2 + *a1 - v6;
  sub_9E10C4(a1, *a1, v6, v13 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = *(a1 + 16);
  v11 = v14;
  *(a1 + 8) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  __p = v8;
  v13 = v8;
  sub_9E1304(&__p, v8);
  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_9E0E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_9E12CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9E0E2C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 64) = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *(a1 + 56);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

uint64_t sub_9E0F00(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    if (v3 != v2)
    {
      do
      {
        v3 -= 80;
        sub_993AF8(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 32);
    }

    *(a1 + 40) = v2;
    operator delete(v4);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_9E0F88(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    v4 = *(i - 24);
    if (!v4)
    {
      goto LABEL_26;
    }

    v5 = *(i - 16);
    v6 = *(i - 24);
    if (v5 != v4)
    {
      while (1)
      {
        v7 = *(v5 - 3);
        if (!v7)
        {
          goto LABEL_19;
        }

        v8 = *(v5 - 2);
        v9 = *(v5 - 3);
        if (v8 != v7)
        {
          break;
        }

LABEL_18:
        *(v5 - 2) = v7;
        operator delete(v9);
LABEL_19:
        if (*(v5 - 25) < 0)
        {
          operator delete(*(v5 - 6));
          v11 = v5 - 10;
          if (*(v5 - 57) < 0)
          {
LABEL_23:
            operator delete(*v11);
          }
        }

        else
        {
          v11 = v5 - 10;
          if (*(v5 - 57) < 0)
          {
            goto LABEL_23;
          }
        }

        v5 = v11;
        if (v11 == v4)
        {
          v6 = *(i - 24);
          goto LABEL_25;
        }
      }

      while (2)
      {
        if (*(v8 - 1) < 0)
        {
          operator delete(*(v8 - 3));
          v10 = v8 - 6;
          if (*(v8 - 25) < 0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v10 = v8 - 6;
          if (*(v8 - 25) < 0)
          {
LABEL_16:
            operator delete(*v10);
          }
        }

        v8 = v10;
        if (v10 == v7)
        {
          v9 = *(v5 - 3);
          goto LABEL_18;
        }

        continue;
      }
    }

LABEL_25:
    *(i - 16) = v4;
    operator delete(v6);
LABEL_26:
    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }
  }

  a1[1] = v2;
}

void sub_9E10C4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v6 + 24);
      v8 = *(v6 + 6);
      *(a4 + 40) = *(v6 + 5);
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 48) = v8;
      *(a4 + 56) = 0;
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 72) = *(v6 + 9);
      *(v6 + 7) = 0;
      *(v6 + 8) = 0;
      *(v6 + 9) = 0;
      v6 += 5;
      a4 += 80;
    }

    while (v6 != a3);
    while (1)
    {
      if (v5 == a3)
      {
        return;
      }

      if (*(v5 + 7))
      {
        sub_9E0F88(v5 + 7);
        operator delete(*(v5 + 7));
      }

      v9 = *(v5 + 3);
      if (v9)
      {
        break;
      }

LABEL_31:
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 5;
    }

    v10 = *(v5 + 4);
    v11 = *(v5 + 3);
    if (v10 == v9)
    {
LABEL_30:
      *(v5 + 4) = v9;
      operator delete(v11);
      goto LABEL_31;
    }

    while (1)
    {
      v12 = *(v10 - 3);
      if (!v12)
      {
        goto LABEL_24;
      }

      v13 = *(v10 - 2);
      v14 = *(v10 - 3);
      if (v13 != v12)
      {
        break;
      }

LABEL_23:
      *(v10 - 2) = v12;
      operator delete(v14);
LABEL_24:
      if (*(v10 - 25) < 0)
      {
        operator delete(*(v10 - 6));
        v16 = v10 - 10;
        if (*(v10 - 57) < 0)
        {
LABEL_28:
          operator delete(*v16);
        }
      }

      else
      {
        v16 = v10 - 10;
        if (*(v10 - 57) < 0)
        {
          goto LABEL_28;
        }
      }

      v10 = v16;
      if (v16 == v9)
      {
        v11 = *(v5 + 3);
        goto LABEL_30;
      }
    }

    while (1)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 3));
        v15 = v13 - 6;
        if (*(v13 - 25) < 0)
        {
LABEL_21:
          operator delete(*v15);
        }
      }

      else
      {
        v15 = v13 - 6;
        if (*(v13 - 25) < 0)
        {
          goto LABEL_21;
        }
      }

      v13 = v15;
      if (v15 == v12)
      {
        v14 = *(v10 - 3);
        goto LABEL_23;
      }
    }
  }
}

uint64_t *sub_9E1290(uint64_t *a1)
{
  if (*a1)
  {
    sub_9E0F88(a1);
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9E12CC(uint64_t a1)
{
  sub_9E1304(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_9E1304(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == a2)
  {
    return;
  }

  do
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 80;
    if (v5)
    {
      sub_9E0F88((v2 - 24));
      operator delete(*(v2 - 24));
    }

    v6 = *(v2 - 56);
    if (v6)
    {
      v7 = *(v2 - 48);
      v8 = *(v2 - 56);
      if (v7 == v6)
      {
        goto LABEL_27;
      }

      while (1)
      {
        v9 = *(v7 - 3);
        if (!v9)
        {
          goto LABEL_21;
        }

        v10 = *(v7 - 2);
        v11 = *(v7 - 3);
        if (v10 != v9)
        {
          break;
        }

LABEL_20:
        *(v7 - 2) = v9;
        operator delete(v11);
LABEL_21:
        if (*(v7 - 25) < 0)
        {
          operator delete(*(v7 - 6));
          v13 = v7 - 10;
          if (*(v7 - 57) < 0)
          {
LABEL_25:
            operator delete(*v13);
          }
        }

        else
        {
          v13 = v7 - 10;
          if (*(v7 - 57) < 0)
          {
            goto LABEL_25;
          }
        }

        v7 = v13;
        if (v13 == v6)
        {
          v8 = *(v2 - 56);
LABEL_27:
          *(v2 - 48) = v6;
          operator delete(v8);
          goto LABEL_28;
        }
      }

      while (1)
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*(v10 - 3));
          v12 = v10 - 6;
          if (*(v10 - 25) < 0)
          {
LABEL_18:
            operator delete(*v12);
          }
        }

        else
        {
          v12 = v10 - 6;
          if (*(v10 - 25) < 0)
          {
            goto LABEL_18;
          }
        }

        v10 = v12;
        if (v12 == v9)
        {
          v11 = *(v7 - 3);
          goto LABEL_20;
        }
      }
    }

LABEL_28:
    if (*(v2 - 57) < 0)
    {
      operator delete(*(v2 - 80));
    }

    v2 = *(a1 + 16);
  }

  while (v2 != a2);
}

void **sub_9E1474(void **a1)
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
        v3 -= 80;
        sub_993AF8(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_9E14D8(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v4 = sub_12331FC();
  *(a2 + 56) = 0;
  *(a2 + 48) = v4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  if (a1)
  {
    v5 = (a1 - *a1);
    if (*v5 >= 5u && (v6 = v5[2]) != 0)
    {
      v7 = (a1 + v6 + *(a1 + v6));
    }

    else
    {
      v7 = 0;
    }

    sub_9E1FE0(v7, v18);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = *v18;
    *(a2 + 16) = v19;
    HIBYTE(v19) = 0;
    LOBYTE(v18[0]) = 0;
    v8 = *(a2 + 24);
    if (v8)
    {
      v9 = *(a2 + 32);
      v10 = *(a2 + 24);
      if (v9 != v8)
      {
        do
        {
          v9 -= 80;
          sub_993AF8(v9);
        }

        while (v9 != v8);
        v10 = *(a2 + 24);
      }

      *(a2 + 32) = v8;
      operator delete(v10);
    }

    *(a2 + 24) = *__p;
    v11 = v21;
    v12 = v22;
    __p[1] = 0;
    v21 = 0;
    __p[0] = 0;
    *(a2 + 40) = v11;
    *(a2 + 48) = v12;
    if (*(a2 + 56))
    {
      sub_9E0F88((a2 + 56));
      operator delete(*(a2 + 56));
      v13 = __p[0];
    }

    else
    {
      v13 = 0;
    }

    *(a2 + 56) = v23;
    *(a2 + 72) = v24;
    v24 = 0;
    v23 = 0uLL;
    if (v13)
    {
      v14 = __p[1];
      v15 = v13;
      if (__p[1] != v13)
      {
        do
        {
          v14 -= 80;
          sub_993AF8(v14);
        }

        while (v14 != v13);
        v15 = __p[0];
      }

      __p[1] = v13;
      operator delete(v15);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
      v16 = (a1 - *a1);
      if (*v16 >= 7u)
      {
LABEL_23:
        v17 = v16[3];
        if (v17)
        {
          LOBYTE(v17) = *(a1 + v17);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v16 = (a1 - *a1);
      if (*v16 >= 7u)
      {
        goto LABEL_23;
      }
    }

    LOBYTE(v17) = 0;
LABEL_27:
    *(a2 + 80) = v17;
  }
}

void *sub_9E16D4(void *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_9E17CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9E17E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9E17E0(uint64_t a1)
{
  sub_9E1A90(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_9E1818(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v6 + 24);
      v8 = *(v6 + 6);
      *(a4 + 40) = *(v6 + 5);
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 48) = v8;
      *(a4 + 56) = 0;
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 72) = *(v6 + 9);
      *(v6 + 7) = 0;
      *(v6 + 8) = 0;
      *(v6 + 9) = 0;
      *(a4 + 80) = *(v6 + 80);
      v6 = (v6 + 88);
      a4 += 88;
    }

    while (v6 != a3);
    while (1)
    {
      if (v5 == a3)
      {
        return;
      }

      if (*(v5 + 7))
      {
        sub_9E0F88(v5 + 7);
        operator delete(*(v5 + 7));
      }

      v9 = *(v5 + 3);
      if (v9)
      {
        break;
      }

LABEL_31:
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 88);
    }

    v10 = *(v5 + 4);
    v11 = *(v5 + 3);
    if (v10 == v9)
    {
LABEL_30:
      *(v5 + 4) = v9;
      operator delete(v11);
      goto LABEL_31;
    }

    while (1)
    {
      v12 = *(v10 - 3);
      if (!v12)
      {
        goto LABEL_24;
      }

      v13 = *(v10 - 2);
      v14 = *(v10 - 3);
      if (v13 != v12)
      {
        break;
      }

LABEL_23:
      *(v10 - 2) = v12;
      operator delete(v14);
LABEL_24:
      if (*(v10 - 25) < 0)
      {
        operator delete(*(v10 - 6));
        v16 = v10 - 10;
        if (*(v10 - 57) < 0)
        {
LABEL_28:
          operator delete(*v16);
        }
      }

      else
      {
        v16 = v10 - 10;
        if (*(v10 - 57) < 0)
        {
          goto LABEL_28;
        }
      }

      v10 = v16;
      if (v16 == v9)
      {
        v11 = *(v5 + 3);
        goto LABEL_30;
      }
    }

    while (1)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 3));
        v15 = v13 - 6;
        if (*(v13 - 25) < 0)
        {
LABEL_21:
          operator delete(*v15);
        }
      }

      else
      {
        v15 = v13 - 6;
        if (*(v13 - 25) < 0)
        {
          goto LABEL_21;
        }
      }

      v13 = v15;
      if (v15 == v12)
      {
        v14 = *(v10 - 3);
        goto LABEL_23;
      }
    }
  }
}

uint64_t sub_9E19EC(uint64_t a1)
{
  v2 = (a1 + 56);
  if (*(a1 + 56))
  {
    sub_9E0F88((a1 + 56));
    operator delete(*v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 24);
    if (v4 != v3)
    {
      do
      {
        v4 -= 80;
        sub_993AF8(v4);
      }

      while (v4 != v3);
      v5 = *(a1 + 24);
    }

    *(a1 + 32) = v3;
    operator delete(v5);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_9E1A90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == a2)
  {
    return;
  }

  do
  {
    v5 = *(v2 - 32);
    *(a1 + 16) = v2 - 88;
    if (v5)
    {
      sub_9E0F88((v2 - 32));
      operator delete(*(v2 - 32));
    }

    v6 = *(v2 - 64);
    if (v6)
    {
      v7 = *(v2 - 56);
      v8 = *(v2 - 64);
      if (v7 == v6)
      {
        goto LABEL_27;
      }

      while (1)
      {
        v9 = *(v7 - 3);
        if (!v9)
        {
          goto LABEL_21;
        }

        v10 = *(v7 - 2);
        v11 = *(v7 - 3);
        if (v10 != v9)
        {
          break;
        }

LABEL_20:
        *(v7 - 2) = v9;
        operator delete(v11);
LABEL_21:
        if (*(v7 - 25) < 0)
        {
          operator delete(*(v7 - 6));
          v13 = v7 - 10;
          if (*(v7 - 57) < 0)
          {
LABEL_25:
            operator delete(*v13);
          }
        }

        else
        {
          v13 = v7 - 10;
          if (*(v7 - 57) < 0)
          {
            goto LABEL_25;
          }
        }

        v7 = v13;
        if (v13 == v6)
        {
          v8 = *(v2 - 64);
LABEL_27:
          *(v2 - 56) = v6;
          operator delete(v8);
          goto LABEL_28;
        }
      }

      while (1)
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*(v10 - 3));
          v12 = v10 - 6;
          if (*(v10 - 25) < 0)
          {
LABEL_18:
            operator delete(*v12);
          }
        }

        else
        {
          v12 = v10 - 6;
          if (*(v10 - 25) < 0)
          {
            goto LABEL_18;
          }
        }

        v10 = v12;
        if (v12 == v9)
        {
          v11 = *(v7 - 3);
          goto LABEL_20;
        }
      }
    }

LABEL_28:
    if (*(v2 - 65) < 0)
    {
      operator delete(*(v2 - 88));
    }

    v2 = *(a1 + 16);
  }

  while (v2 != a2);
}

uint64_t *sub_9E1C00(unsigned int **a1, unsigned int **a2, uint64_t *a3, void (*a4)(void **__return_ptr, char *))
{
  if (*a1 == *a2)
  {
    return a3;
  }

  a4(v23, *a1 + **a1);
  while (1)
  {
    v9 = a3[1];
    if (v9 >= a3[2])
    {
      v12 = sub_9E1E34(a3, v23);
      v13 = __p[0];
      a3[1] = v12;
      if (v13)
      {
        sub_9E0F88(__p);
        operator delete(__p[0]);
      }
    }

    else
    {
      v10 = *v23;
      *(v9 + 16) = v24;
      *(v9 + 24) = 0;
      *v9 = v10;
      v23[1] = 0;
      v24 = 0;
      v23[0] = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = *v25;
      v25[0] = 0;
      v25[1] = 0;
      v11 = v27;
      *(v9 + 40) = v26;
      *(v9 + 48) = v11;
      v26 = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v9 + 72) = 0;
      *(v9 + 56) = *__p;
      *(v9 + 72) = v29;
      __p[0] = 0;
      __p[1] = 0;
      v29 = 0;
      *(v9 + 80) = v30;
      a3[1] = v9 + 88;
    }

    v14 = v25[0];
    if (v25[0])
    {
      v15 = v25[1];
      v16 = v25[0];
      if (v25[1] == v25[0])
      {
        goto LABEL_30;
      }

      while (1)
      {
        v17 = *(v15 - 3);
        if (!v17)
        {
          goto LABEL_24;
        }

        v18 = *(v15 - 2);
        v19 = *(v15 - 3);
        if (v18 != v17)
        {
          break;
        }

LABEL_23:
        *(v15 - 2) = v17;
        operator delete(v19);
LABEL_24:
        if (*(v15 - 25) < 0)
        {
          operator delete(*(v15 - 6));
          v21 = v15 - 10;
          if (*(v15 - 57) < 0)
          {
LABEL_28:
            operator delete(*v21);
          }
        }

        else
        {
          v21 = v15 - 10;
          if (*(v15 - 57) < 0)
          {
            goto LABEL_28;
          }
        }

        v15 = v21;
        if (v21 == v14)
        {
          v16 = v25[0];
LABEL_30:
          v25[1] = v14;
          operator delete(v16);
          goto LABEL_31;
        }
      }

      while (1)
      {
        if (*(v18 - 1) < 0)
        {
          operator delete(*(v18 - 3));
          v20 = v18 - 6;
          if (*(v18 - 25) < 0)
          {
LABEL_21:
            operator delete(*v20);
          }
        }

        else
        {
          v20 = v18 - 6;
          if (*(v18 - 25) < 0)
          {
            goto LABEL_21;
          }
        }

        v18 = v20;
        if (v20 == v17)
        {
          v19 = *(v15 - 3);
          goto LABEL_23;
        }
      }
    }

LABEL_31:
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[0]);
    }

    v8 = *a1 + 1;
    *a1 = v8;
    if (v8 == *a2)
    {
      return a3;
    }

    a4(v23, v8 + *v8);
  }
}

void sub_9E1E20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9E19EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9E1E34(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v3;
  }

  v19 = a1;
  if (v5)
  {
    if (v5 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 88 * v2;
  __p = 0;
  v17 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(v6 + 80) = *(a2 + 80);
  v9 = *a1;
  v10 = a1[1];
  v11 = 88 * v2 + *a1 - v10;
  v18 = (88 * v2 + 88);
  sub_9E1818(a1, v9, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  __p = v12;
  v17 = v12;
  sub_9E1A90(&__p, v12);
  if (__p)
  {
    operator delete(__p);
  }

  return v15;
}

void sub_9E1FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_9E17E0(va);
  _Unwind_Resume(a1);
}

void sub_9E1FE0(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v4 = sub_12331FC();
  *(a2 + 56) = 0;
  v5 = (a2 + 56);
  *(a2 + 48) = v4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  if (a1)
  {
    v6 = *a1;
    v7 = -v6;
    v8 = (a1 - v6);
    if (*v8 < 7u || (v9 = v8[3]) == 0)
    {
LABEL_26:
      v23 = (a1 + v7);
      if (*v23 >= 5u && (v24 = v23[2]) != 0)
      {
        v25 = (a1 + v24 + *(a1 + v24));
        __p[0] = 0;
        __p[1] = 0;
        v30 = 0;
        sub_9E2FCC(__p, *v25);
        v34 = v25 + 1;
        v33 = &v25[*v25 + 1];
        sub_9E33B4(&v34, &v33, __p);
        v26 = *__p;
        v27 = v30;
        if (!*v5)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v27 = 0;
        v26 = 0uLL;
        if (!*v5)
        {
LABEL_32:
          *(a2 + 56) = v26;
          *(a2 + 72) = v27;
          return;
        }
      }

      v28 = v26;
      sub_9E0F88((a2 + 56));
      operator delete(*v5);
      v26 = v28;
      goto LABEL_32;
    }

    v10 = (a1 + v9 + *(a1 + v9));
    v11 = (v10 - *v10);
    if (*v11 >= 7u && (v12 = v11[3]) != 0)
    {
      v13 = (v10 + v12 + *(v10 + v12));
    }

    else
    {
      v13 = 0;
    }

    sub_9E22EC(v13, __p);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = *__p;
    *(a2 + 16) = v30;
    HIBYTE(v30) = 0;
    LOBYTE(__p[0]) = 0;
    v14 = *(a2 + 24);
    if (v14)
    {
      v15 = *(a2 + 32);
      v16 = *(a2 + 24);
      if (v15 != v14)
      {
        do
        {
          v15 -= 80;
          sub_993AF8(v15);
        }

        while (v15 != v14);
        v16 = *(a2 + 24);
      }

      *(a2 + 32) = v14;
      operator delete(v16);
      v17 = SHIBYTE(v30);
      *(a2 + 24) = v31;
      *(a2 + 40) = v32;
      v32 = 0;
      v31 = 0uLL;
      if ((v17 & 0x80000000) == 0)
      {
        v18 = (a1 - *a1);
        if (*v18 >= 7u)
        {
          goto LABEL_16;
        }

LABEL_21:
        v19 = 0;
        v20 = (&loc_1120530 + 1);
        if (*(&loc_1120530 + 1) < 5u)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }

      operator delete(__p[0]);
      v18 = (a1 - *a1);
      if (*v18 < 7u)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *(a2 + 24) = v31;
      *(a2 + 40) = v32;
      v32 = 0;
      v31 = 0uLL;
      v18 = (a1 - *a1);
      if (*v18 < 7u)
      {
        goto LABEL_21;
      }
    }

LABEL_16:
    v19 = v18[3];
    if (v19)
    {
      v19 = (v19 + a1 + *(v19 + a1));
    }

    v20 = (v19 - *v19);
    if (*v20 < 5u)
    {
      goto LABEL_24;
    }

LABEL_22:
    v21 = v20[2];
    if (v21)
    {
      v22 = v19 + v21 + *(v19 + v21);
LABEL_25:
      *(a2 + 48) = sub_2C9AE4(v22);
      v7 = -*a1;
      goto LABEL_26;
    }

LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }
}

void sub_9E22BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9E1290(va);
  sub_9D8EF8(v3);
  _Unwind_Resume(a1);
}

void sub_9E22EC(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (a1)
  {
    v4 = (a1 - *a1);
    if (*v4 >= 5u && (v5 = v4[2]) != 0)
    {
      v6 = (a1 + v5);
      v7 = *v6;
      v8 = *(v6 + v7);
      if (v8 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v19) = *(v6 + v7);
      if (v8)
      {
        memcpy(&__dst, v6 + v7 + 4, v8);
      }

      *(&__dst + v8) = 0;
      if (*(a2 + 23) < 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      HIBYTE(v19) = 0;
      LOBYTE(__dst) = 0;
      if (*(a2 + 23) < 0)
      {
LABEL_8:
        operator delete(*a2);
      }
    }

    *a2 = __dst;
    *(a2 + 16) = v19;
    v9 = (a1 - *a1);
    if (*v9 >= 7u && (v10 = v9[3]) != 0)
    {
      v11 = (a1 + v10 + *(a1 + v10));
      __dst = 0uLL;
      v19 = 0;
      sub_9E24F8(&__dst, *v11);
      v21 = v11 + 1;
      v20 = &v11[*v11 + 1];
      sub_9E2658(&v21, &v20, &__dst);
      v12 = __dst;
      v13 = v19;
      v14 = *(a2 + 24);
      if (!v14)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0uLL;
      v14 = *(a2 + 24);
      if (!v14)
      {
LABEL_18:
        *(a2 + 24) = v12;
        *(a2 + 40) = v13;
        return;
      }
    }

    v17 = v12;
    v15 = *(a2 + 32);
    v16 = v14;
    if (v15 != v14)
    {
      do
      {
        v15 -= 80;
        sub_993AF8(v15);
      }

      while (v15 != v14);
      v16 = *(a2 + 24);
    }

    *(a2 + 32) = v14;
    operator delete(v16);
    v12 = v17;
    goto LABEL_18;
  }
}

void sub_9E24DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9E1474(va);
  sub_9D8E70(v3);
  _Unwind_Resume(a1);
}

void *sub_9E24F8(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t *sub_9E2658(unsigned int **a1, unsigned int **a2, uint64_t *a3)
{
  v4 = *a1;
  if (*a1 != *a2)
  {
    while (1)
    {
      sub_9E2810((v4 + *v4), v16);
      v7 = a3[1];
      if (v7 < a3[2])
      {
        v8 = *v16;
        *(v7 + 16) = v17;
        *v7 = v8;
        v16[1] = 0;
        v17 = 0;
        v16[0] = 0;
        *(v7 + 24) = v18;
        v9 = v19;
        *(v7 + 48) = v20;
        *(v7 + 56) = 0;
        *(v7 + 32) = v9;
        v19 = 0uLL;
        *(v7 + 64) = 0;
        *(v7 + 72) = 0;
        *(v7 + 56) = *__p;
        *(v7 + 72) = v22;
        v20 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v22 = 0;
        a3[1] = v7 + 80;
        goto LABEL_17;
      }

      v10 = sub_9E2E00(a3, v16);
      v11 = __p[0];
      a3[1] = v10;
      if (v11)
      {
        break;
      }

LABEL_17:
      if (SHIBYTE(v20) < 0)
      {
        operator delete(v19);
        if (SHIBYTE(v17) < 0)
        {
LABEL_21:
          operator delete(v16[0]);
        }
      }

      else if (SHIBYTE(v17) < 0)
      {
        goto LABEL_21;
      }

      v4 = *a1 + 1;
      *a1 = v4;
      if (v4 == *a2)
      {
        return a3;
      }
    }

    v12 = __p[1];
    v13 = v11;
    if (__p[1] == v11)
    {
LABEL_16:
      __p[1] = v11;
      operator delete(v13);
      goto LABEL_17;
    }

    while (1)
    {
      if (*(v12 - 1) < 0)
      {
        operator delete(*(v12 - 3));
        v14 = v12 - 6;
        if (*(v12 - 25) < 0)
        {
LABEL_14:
          operator delete(*v14);
        }
      }

      else
      {
        v14 = v12 - 6;
        if (*(v12 - 25) < 0)
        {
          goto LABEL_14;
        }
      }

      v12 = v14;
      if (v14 == v11)
      {
        v13 = __p[0];
        goto LABEL_16;
      }
    }
  }

  return a3;
}

void sub_9E27FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9E0E2C(va);
  _Unwind_Resume(a1);
}

void sub_9E2810(int *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    v8 = *(v6 + v7);
    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v28) = *(v6 + v7);
    if (v8)
    {
      memcpy(&__dst, v6 + v7 + 4, v8);
    }

    *(&__dst + v8) = 0;
    v9 = (a1 - *a1);
    v10 = *v9;
    if (v10 < 7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    HIBYTE(v28) = 0;
    LOBYTE(__dst) = 0;
    v9 = (a1 - *a1);
    v10 = *v9;
    if (v10 < 7)
    {
LABEL_12:
      LOBYTE(v11) = 0;
      goto LABEL_13;
    }
  }

  v11 = v9[3];
  if (v9[3])
  {
    LOBYTE(v11) = *(a1 + v11);
  }

LABEL_13:
  *a2 = __dst;
  *(a2 + 16) = v28;
  *(a2 + 24) = v11;
  *(a2 + 32) = 0u;
  v12 = (a2 + 32);
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  if (v10 >= 9 && (v13 = v9[4]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    v16 = *(v14 + v15);
    if (v16 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v30) = *(v14 + v15);
    if (v16)
    {
      memcpy(&v29, v14 + v15 + 4, v16);
    }

    *(&v29 + v16) = 0;
    if (*(a2 + 55) < 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    HIBYTE(v30) = 0;
    LOBYTE(v29) = 0;
    if (*(a2 + 55) < 0)
    {
LABEL_19:
      operator delete(*v12);
    }
  }

  *v12 = v29;
  *(a2 + 48) = v30;
  v17 = (a1 - *a1);
  if (*v17 >= 0xBu)
  {
    v18 = v17[5];
    if (v18)
    {
      v19 = (a1 + v18);
      v20 = *v19;
      v29 = 0uLL;
      v30 = 0;
      sub_84D10(&v29, *(v19 + v20));
      sub_9E2B1C((v19 + v20), &v29);
      v21 = v29;
      v22 = v30;
      v23 = *(a2 + 56);
      if (!v23)
      {
        goto LABEL_27;
      }

LABEL_25:
      v26 = v21;
      v24 = *(a2 + 64);
      if (v24 == v23)
      {
LABEL_26:
        *(a2 + 64) = v23;
        operator delete(v23);
        v21 = v26;
        goto LABEL_27;
      }

      while (1)
      {
        if (*(v24 - 1) < 0)
        {
          operator delete(*(v24 - 3));
          v25 = v24 - 6;
          if (*(v24 - 25) < 0)
          {
LABEL_33:
            operator delete(*v25);
          }
        }

        else
        {
          v25 = v24 - 6;
          if (*(v24 - 25) < 0)
          {
            goto LABEL_33;
          }
        }

        v24 = v25;
        if (v25 == v23)
        {
          goto LABEL_26;
        }
      }
    }
  }

  v22 = 0;
  v21 = 0uLL;
  v23 = *(a2 + 56);
  if (v23)
  {
    goto LABEL_25;
  }

LABEL_27:
  *(a2 + 56) = v21;
  *(a2 + 72) = v22;
}

void sub_9E2B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1AA90(va);
  sub_9E0E2C(v7);
  _Unwind_Resume(a1);
}

uint64_t *sub_9E2B1C(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = 4 * v3;
    v5 = a1 + 1;
    do
    {
      sub_9E2C2C((v5 + *v5), __p);
      v6 = a2[1];
      if (v6 >= a2[2])
      {
        v9 = sub_2B1754(a2, __p);
        v10 = SHIBYTE(v15);
        a2[1] = v9;
        if (v10 < 0)
        {
          operator delete(v14);
          if ((SHIBYTE(v13) & 0x80000000) == 0)
          {
            goto LABEL_3;
          }

LABEL_9:
          operator delete(__p[0]);
          goto LABEL_3;
        }

        if (SHIBYTE(v13) < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7 = *__p;
        *(v6 + 16) = v13;
        *v6 = v7;
        __p[1] = 0;
        v13 = 0;
        __p[0] = 0;
        v8 = v15;
        *(v6 + 24) = v14;
        *(v6 + 40) = v8;
        v15 = 0;
        v14 = 0uLL;
        a2[1] = v6 + 48;
        if (SHIBYTE(v13) < 0)
        {
          goto LABEL_9;
        }
      }

LABEL_3:
      ++v5;
      v4 -= 4;
    }

    while (v4);
  }

  return a2;
}

void sub_9E2C18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AB28(va);
  _Unwind_Resume(a1);
}

double sub_9E2C2C@<D0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (a1 - *a1);
  if (*v3 >= 5u && (v4 = v3[2]) != 0)
  {
    v5 = (a1 + v4);
    v6 = *v5;
    v7 = *(v5 + v6);
    v8 = a1;
    if (v7 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v19) = *(v5 + v6);
    if (v7)
    {
      memcpy(&__dst, v5 + v6 + 4, v7);
    }

    a1 = v8;
    *(&__dst + v7) = 0;
    v9 = (v8 - *v8);
    if (*v9 < 7u)
    {
      goto LABEL_15;
    }
  }

  else
  {
    HIBYTE(v19) = 0;
    LOBYTE(__dst) = 0;
    v9 = (a1 - *a1);
    if (*v9 < 7u)
    {
      goto LABEL_15;
    }
  }

  v10 = v9[3];
  if (!v10)
  {
LABEL_15:
    HIBYTE(v17) = 0;
    v14 = &v16;
    goto LABEL_19;
  }

  v11 = (a1 + v10);
  v12 = *v11;
  v13 = *(v11 + v12);
  if (v13 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v17) = *(v11 + v12);
  if (v13)
  {
    memcpy(&v16, v11 + v12 + 4, v13);
  }

  v14 = (&v16 + v13);
LABEL_19:
  *v14 = 0;
  *a2 = __dst;
  *(a2 + 16) = v19;
  result = *&v16;
  *(a2 + 24) = v16;
  *(a2 + 40) = v17;
  return result;
}

void sub_9E2DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9E2E00(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 72) = *(a2 + 72);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v7 = 80 * v2 + 80;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      *(v12 + 24) = v11[24];
      v14 = *(v11 + 2);
      *(v12 + 48) = *(v11 + 6);
      *(v12 + 32) = v14;
      *(v11 + 5) = 0;
      *(v11 + 6) = 0;
      *(v11 + 4) = 0;
      *(v12 + 64) = 0;
      *(v12 + 72) = 0;
      *(v12 + 56) = *(v11 + 56);
      *(v12 + 72) = *(v11 + 9);
      *(v11 + 7) = 0;
      *(v11 + 8) = 0;
      *(v11 + 9) = 0;
      v11 += 80;
      v12 += 80;
    }

    while (v11 != v9);
    do
    {
      sub_993AF8(v8);
      v8 += 80;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void *sub_9E2FCC(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_9E30B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9E30CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9E30CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    v4 = *(i - 24);
    if (!v4)
    {
      goto LABEL_26;
    }

    v5 = *(i - 16);
    v6 = *(i - 24);
    if (v5 != v4)
    {
      while (1)
      {
        v7 = *(v5 - 3);
        if (!v7)
        {
          goto LABEL_19;
        }

        v8 = *(v5 - 2);
        v9 = *(v5 - 3);
        if (v8 != v7)
        {
          break;
        }

LABEL_18:
        *(v5 - 2) = v7;
        operator delete(v9);
LABEL_19:
        if (*(v5 - 25) < 0)
        {
          operator delete(*(v5 - 6));
          v11 = v5 - 10;
          if (*(v5 - 57) < 0)
          {
LABEL_23:
            operator delete(*v11);
          }
        }

        else
        {
          v11 = v5 - 10;
          if (*(v5 - 57) < 0)
          {
            goto LABEL_23;
          }
        }

        v5 = v11;
        if (v11 == v4)
        {
          v6 = *(i - 24);
          goto LABEL_25;
        }
      }

      while (2)
      {
        if (*(v8 - 1) < 0)
        {
          operator delete(*(v8 - 3));
          v10 = v8 - 6;
          if (*(v8 - 25) < 0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v10 = v8 - 6;
          if (*(v8 - 25) < 0)
          {
LABEL_16:
            operator delete(*v10);
          }
        }

        v8 = v10;
        if (v10 == v7)
        {
          v9 = *(v5 - 3);
          goto LABEL_18;
        }

        continue;
      }
    }

LABEL_25:
    *(i - 16) = v4;
    operator delete(v6);
LABEL_26:
    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_9E321C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    while (1)
    {
      if (v5 == a3)
      {
        return;
      }

      v8 = *(v5 + 32);
      if (!v8)
      {
        goto LABEL_29;
      }

      v9 = *(v5 + 40);
      v10 = *(v5 + 32);
      if (v9 != v8)
      {
        break;
      }

LABEL_28:
      *(v5 + 40) = v8;
      operator delete(v10);
LABEL_29:
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 56;
    }

    while (1)
    {
      v11 = *(v9 - 3);
      if (!v11)
      {
        goto LABEL_22;
      }

      v12 = *(v9 - 2);
      v13 = *(v9 - 3);
      if (v12 != v11)
      {
        break;
      }

LABEL_21:
      *(v9 - 2) = v11;
      operator delete(v13);
LABEL_22:
      if (*(v9 - 25) < 0)
      {
        operator delete(*(v9 - 6));
        v15 = v9 - 10;
        if (*(v9 - 57) < 0)
        {
LABEL_26:
          operator delete(*v15);
        }
      }

      else
      {
        v15 = v9 - 10;
        if (*(v9 - 57) < 0)
        {
          goto LABEL_26;
        }
      }

      v9 = v15;
      if (v15 == v8)
      {
        v10 = *(v5 + 32);
        goto LABEL_28;
      }
    }

    while (1)
    {
      if (*(v12 - 1) < 0)
      {
        operator delete(*(v12 - 3));
        v14 = v12 - 6;
        if (*(v12 - 25) < 0)
        {
LABEL_19:
          operator delete(*v14);
        }
      }

      else
      {
        v14 = v12 - 6;
        if (*(v12 - 25) < 0)
        {
          goto LABEL_19;
        }
      }

      v12 = v14;
      if (v14 == v11)
      {
        v13 = *(v9 - 3);
        goto LABEL_21;
      }
    }
  }
}

void *sub_9E33B4(unsigned int **a1, unsigned int **a2, void *a3)
{
  v4 = *a1;
  if (*a1 == *a2)
  {
    return a3;
  }

  do
  {
    v7 = (v4 + *v4);
    v8 = (v7 - *v7);
    if (*v8 >= 5u && (v9 = v8[2]) != 0)
    {
      v10 = v7 + v9 + *(v7 + v9);
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_2C9AE4(v10);
    v12 = (v7 - *v7);
    if (*v12 >= 7u && (v13 = v12[3]) != 0)
    {
      v14 = (v7 + v13 + *(v7 + v13));
    }

    else
    {
      v14 = 0;
    }

    sub_9E22EC(v14, &v32);
    v27 = v11;
    v28 = v32;
    v29 = v33;
    *__p = v34;
    v31 = v35;
    v15 = a3[1];
    if (v15 < a3[2])
    {
      *v15 = v11;
      v16 = v28;
      *(v15 + 24) = v29;
      *(v15 + 32) = 0;
      *(v15 + 8) = v16;
      v28 = 0uLL;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 32) = *__p;
      *(v15 + 48) = v31;
      v29 = 0;
      __p[0] = 0;
      __p[1] = 0;
      v31 = 0;
      a3[1] = v15 + 56;
      goto LABEL_34;
    }

    v17 = sub_9E3638(a3, &v27);
    v18 = __p[0];
    a3[1] = v17;
    if (v18)
    {
      v19 = __p[1];
      v20 = v18;
      if (__p[1] == v18)
      {
        goto LABEL_33;
      }

      while (1)
      {
        v22 = *(v19 - 3);
        if (v22)
        {
          break;
        }

LABEL_29:
        if (*(v19 - 25) < 0)
        {
          operator delete(*(v19 - 6));
          v21 = v19 - 10;
          if ((*(v19 - 57) & 0x80000000) == 0)
          {
            goto LABEL_18;
          }

LABEL_31:
          operator delete(*v21);
          v19 = v21;
          if (v21 == v18)
          {
LABEL_32:
            v20 = __p[0];
LABEL_33:
            __p[1] = v18;
            operator delete(v20);
            goto LABEL_34;
          }
        }

        else
        {
          v21 = v19 - 10;
          if (*(v19 - 57) < 0)
          {
            goto LABEL_31;
          }

LABEL_18:
          v19 = v21;
          if (v21 == v18)
          {
            goto LABEL_32;
          }
        }
      }

      v23 = *(v19 - 2);
      v24 = *(v19 - 3);
      if (v23 == v22)
      {
LABEL_28:
        *(v19 - 2) = v22;
        operator delete(v24);
        goto LABEL_29;
      }

      while (1)
      {
        if (*(v23 - 1) < 0)
        {
          operator delete(*(v23 - 3));
          v25 = v23 - 6;
          if ((*(v23 - 25) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

LABEL_26:
          operator delete(*v25);
          v23 = v25;
          if (v25 == v22)
          {
LABEL_27:
            v24 = *(v19 - 3);
            goto LABEL_28;
          }
        }

        else
        {
          v25 = v23 - 6;
          if (*(v23 - 25) < 0)
          {
            goto LABEL_26;
          }

LABEL_23:
          v23 = v25;
          if (v25 == v22)
          {
            goto LABEL_27;
          }
        }
      }
    }

LABEL_34:
    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28);
    }

    v4 = *a1 + 1;
    *a1 = v4;
  }

  while (v4 != *a2);
  return a3;
}

void sub_9E3624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9E0F00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9E3638(void *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 56 * v2;
  *v6 = *a2;
  v14 = 0;
  v15 = 56 * v2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = *(a2 + 48);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v7 = *a1;
  v8 = a1[1];
  v9 = 56 * v2 + *a1 - v8;
  v16 = (56 * v2 + 56);
  sub_9E321C(a1, v7, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_9E30CC(&v14);
  return v13;
}

void sub_9E37AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_9E30CC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_9E37C0(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = 4 * v3;
    v5 = a1 + 1;
    do
    {
      sub_9E389C((v5 + *v5), __p);
      v7 = a2[1];
      if (v7 < a2[2])
      {
        v6 = *__p;
        *(v7 + 16) = v12;
        *v7 = v6;
        __p[1] = 0;
        v12 = 0;
        __p[0] = 0;
        *(v7 + 24) = v13;
        a2[1] = v7 + 32;
      }

      else
      {
        v8 = sub_667410(a2, __p);
        v9 = SHIBYTE(v12);
        a2[1] = v8;
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }
      }

      ++v5;
      v4 -= 4;
    }

    while (v4);
  }

  return a2;
}

void sub_9E3880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_9E389C@<D0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (a1 - *a1);
  if (*v3 >= 5u && (v4 = v3[2]) != 0)
  {
    v5 = (a1 + v4);
    v6 = *v5;
    v7 = *(v5 + v6);
    v8 = a1;
    if (v7 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v15) = *(v5 + v6);
    if (v7)
    {
      memcpy(&__dst, v5 + v6 + 4, v7);
    }

    a1 = v8;
    *(&__dst + v7) = 0;
    v9 = (v8 - *v8);
    if (*v9 < 7u)
    {
LABEL_16:
      v11 = 0;
      if (SHIBYTE(v15) < 0)
      {
        goto LABEL_13;
      }

LABEL_17:
      result = *&__dst;
      *a2 = __dst;
      *(a2 + 16) = v15;
      *(a2 + 24) = v11;
      return result;
    }
  }

  else
  {
    HIBYTE(v15) = 0;
    LOBYTE(__dst) = 0;
    v9 = (a1 - *a1);
    if (*v9 < 7u)
    {
      goto LABEL_16;
    }
  }

  v10 = v9[3];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = *(a1 + v10);
  if ((SHIBYTE(v15) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  v12 = __dst;
  sub_325C(a2, __dst, *(&__dst + 1));
  *(a2 + 24) = v11;

  operator delete(v12);
  return result;
}

uint64_t sub_9E3A30(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 32 * v2;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
  }

  v9 = v8;
  *(v8 + 24) = *(a2 + 24);
  v10 = v8 + 32;
  v11 = *a1;
  v12 = a1[1];
  v13 = v9 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v13;
    do
    {
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *v14 = 0;
      *(v15 + 24) = *(v14 + 24);
      v14 += 2;
      v15 += 32;
    }

    while (v14 != v12);
    do
    {
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      v11 += 32;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_9E3BD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4BB0B8(va);
  _Unwind_Resume(a1);
}

void sub_9E3BE4(uint64_t *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    if (v5 - v4 == 32)
    {
      v8 = *v4;
      v9 = (*a2)[1];
      if (v9 - v8 == 104)
      {
        if (v8 == v9 || (v11 = *(v8 + 8), v10 = *(v8 + 16), v11 == v10) || *(v10 - 5704) != 4)
        {
          sub_9AA32C(*a1, v21);
          sub_55F1E8(v25, v21);
          v25[40] = 0;
          sub_9E55B4(&v26, v24, 1uLL);
          sub_9E5894(&v27, &v26, 1uLL);
          *a3 = 0;
          a3[1] = 0;
          a3[2] = 0;
          v22 = a3;
          v23 = 0;
          operator new();
        }
      }
    }

    v12 = 0;
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    do
    {
      v13 = &(*a2)[4 * v12];
      sub_9E423C(a1, v13, a3);
      v14 = *v13;
      v15 = v13[1];
      if (*v13 == v15)
      {
        goto LABEL_22;
      }

      v16 = v15 - v14;
      if ((v15 - v14) == &stru_68)
      {
        v17 = 0;
      }

      else
      {
        v18 = 0;
        v19 = *v13;
        while (*v19)
        {
          v19 += 26;
          v18 -= 104;
          if (v19 == v15)
          {
            v20 = v15 - v14;
            goto LABEL_16;
          }
        }

        v20 = -v18;
LABEL_16:
        v17 = 0x4EC4EC4EC4EC4EC5 * (v20 >> 3);
      }

      if (0x4EC4EC4EC4EC4EC5 * (v16 >> 3) <= v17)
      {
LABEL_22:
        sub_6FAB4();
      }

      v12 = *(v14 + 104 * v17 + 56);
    }

    while (v12 != -1);
  }
}

void sub_9E3F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

uint64_t sub_9E4050(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2 != -1)
  {
    (off_266F6E0[v2])(&v4, a1 + 8);
  }

  *(a1 + 168) = -1;
  return a1;
}

void ***sub_9E40AC(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            do
            {
              v10 = *(v9 - 2);
              if (v10 != -1)
              {
                (off_266F6E0[v10])(&v12, v9 - 42);
              }

              *(v9 - 2) = -1;
              v9 -= 44;
            }

            while (v9 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_9E4194(void **a1)
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
        v5 = *(v3 - 2);
        if (v5 != -1)
        {
          (off_266F6E0[v5])(&v7, v3 - 42);
        }

        *(v3 - 2) = -1;
        v3 -= 44;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_9E423C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    goto LABEL_74;
  }

  v6 = v4 - v3;
  if ((v4 - v3) == &stru_68)
  {
    v7 = 0;
  }

  else
  {
    v8 = 0;
    v9 = *a2;
    while (*v9)
    {
      v9 += 26;
      v8 -= 104;
      if (v9 == v4)
      {
        v10 = v4 - v3;
        goto LABEL_9;
      }
    }

    v10 = -v8;
LABEL_9:
    v7 = 0x4EC4EC4EC4EC4EC5 * (v10 >> 3);
  }

  if (0x4EC4EC4EC4EC4EC5 * (v6 >> 3) <= v7)
  {
LABEL_74:
    sub_6FAB4();
  }

  v11 = *(v3 + 104 * v7 + 16);
  v12 = *(v3 + 104 * v7 + 8);
  if (v12 != v11)
  {
    while ((*v12 - 1) >= 2)
    {
      v12 += 1426;
      if (v12 == v11)
      {
        goto LABEL_73;
      }
    }
  }

  if (v12 != v11 && *v12 == 1)
  {
    v13 = v12[1436] - v12[10];
    if (v13 >= 60)
    {
      v14 = a2;
      v15 = a1;
      sub_9AA32C(*a1, v61);
      sub_64BC20(&v46, "{dur}");
      sub_64E914(&v46, "{dur}", 10 * v13);
      sub_55F1E8(v86, v61);
      v87 = 0;
      sub_9E55B4(&v88, v85, 1uLL);
      v69 = v46;
      v46 = 0uLL;
      v71 = v48;
      v70 = v47;
      v72 = v49;
      v47 = 0;
      v48 = 0uLL;
      v49 = 0;
      v73 = v50;
      v50 = 0uLL;
      v75 = v52;
      v74 = v51;
      v76 = v53;
      v77 = v54;
      v51 = 0;
      v52 = 0uLL;
      v53 = 0;
      v79 = v56;
      v78 = v55;
      v80 = v57;
      v54 = 0;
      v57 = 0uLL;
      v81 = v58;
      v83 = v60;
      v82 = v59;
      v60 = 0;
      v58 = 0;
      v59 = 0uLL;
      v84 = 1;
      sub_9E55B4(&v90, v68, 1uLL);
      sub_9E5894(__p, &v88, 2uLL);
      v16 = *(a3 + 8);
      v17 = *(a3 + 16);
      if (v16 >= v17)
      {
        v18 = *a3;
        v19 = v16 - *a3;
        v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 3) + 1;
        if (v20 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          if (v22 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v23 = 8 * (v19 >> 3);
        *v23 = *__p;
        *(v23 + 16) = v45;
        __p[1] = 0;
        v45 = 0;
        __p[0] = 0;
        v24 = v23 + 24;
        v25 = v23 - v19;
        memcpy((v23 - v19), v18, v19);
        *a3 = v25;
        *(a3 + 8) = v24;
        *(a3 + 16) = 0;
        if (v18)
        {
          operator delete(v18);
          v26 = __p[0];
          *(a3 + 8) = v24;
          if (v26)
          {
            v27 = __p[1];
            v28 = v26;
            if (__p[1] != v26)
            {
              v29 = __p[1];
              do
              {
                v32 = *(v29 - 3);
                v29 -= 3;
                v31 = v32;
                if (v32)
                {
                  v33 = *(v27 - 2);
                  v30 = v31;
                  if (v33 != v31)
                  {
                    do
                    {
                      v34 = *(v33 - 2);
                      if (v34 != -1)
                      {
                        (off_266F6E0[v34])(&v67, v33 - 42);
                      }

                      *(v33 - 2) = -1;
                      v33 -= 44;
                    }

                    while (v33 != v31);
                    v30 = *v29;
                  }

                  *(v27 - 2) = v31;
                  operator delete(v30);
                }

                v27 = v29;
              }

              while (v29 != v26);
              v28 = __p[0];
            }

            __p[1] = v26;
            operator delete(v28);
          }
        }

        else
        {
          *(a3 + 8) = v24;
        }
      }

      else
      {
        *v16 = 0;
        v16[1] = 0;
        v16[2] = 0;
        *v16 = *__p;
        v16[2] = v45;
        __p[0] = 0;
        __p[1] = 0;
        v45 = 0;
        *(a3 + 8) = v16 + 3;
      }

      v35 = v90;
      if (v90)
      {
        v36 = v91;
        v37 = v90;
        if (v91 != v90)
        {
          do
          {
            v38 = *(v36 - 2);
            if (v38 != -1)
            {
              (off_266F6E0[v38])(&v67, v36 - 42);
            }

            *(v36 - 2) = -1;
            v36 -= 44;
          }

          while (v36 != v35);
          v37 = v90;
        }

        v91 = v35;
        operator delete(v37);
      }

      v39 = v88;
      if (v88)
      {
        v40 = v89;
        v41 = v88;
        if (v89 != v88)
        {
          do
          {
            v42 = *(v40 - 2);
            if (v42 != -1)
            {
              (off_266F6E0[v42])(&v67, v40 - 42);
            }

            *(v40 - 2) = -1;
            v40 -= 44;
          }

          while (v40 != v39);
          v41 = v88;
        }

        v89 = v39;
        operator delete(v41);
      }

      if (v84 != -1)
      {
        (off_266F6E0[v84])(&v67, &v69);
      }

      if (v87 != -1)
      {
        (off_266F6E0[v87])(v68, v86);
      }

      sub_6081F0(&v46);
      if (v66 < 0)
      {
        operator delete(v65);
        if ((v64 & 0x80000000) == 0)
        {
LABEL_67:
          v43 = v62;
          if (v62 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_71;
        }
      }

      else if ((v64 & 0x80000000) == 0)
      {
        goto LABEL_67;
      }

      operator delete(v63);
      v43 = v62;
      if (v62 == -1)
      {
LABEL_72:
        a2 = v14;
        a1 = v15;
        goto LABEL_73;
      }

LABEL_71:
      (off_266F6B8[v43])(v85, v61);
      goto LABEL_72;
    }
  }

LABEL_73:
  sub_9E490C(a1, a2);
}

void sub_9E481C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

void sub_9E490C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 != a2[1])
  {
    v4 = *(v2 + 8);
    v3 = *(v2 + 16);
    if (v4 != v3 && *(v3 - 5704) == 4)
    {
      memset(v5, 0, 24);
      v5[4] = v5;
      v6 = 0;
      operator new();
    }
  }
}

void sub_9E5074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  v25 = v23;
  if (__p)
  {
    operator delete(__p);
  }

  if (v25)
  {
    operator delete(v25);
  }

  sub_9E40AC(&a19);
  _Unwind_Resume(a1);
}

void sub_9E5148(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

void sub_9E5164(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *a1;
  v22 = a1[1];
  if (*a1 != v22)
  {
    v4 = 0;
    do
    {
      while (1)
      {
        v6 = *(v3 + 8);
        v5 = *(v3 + 16);
        if (v6 != v5)
        {
          while (*v6 != 2)
          {
            v6 += 5704;
            if (v6 == v5)
            {
              v6 = *(v3 + 16);
              break;
            }
          }
        }

        v7 = *(v6 + 2200);
        v8 = *(v6 + 2208);
        if (v7 != v8)
        {
          break;
        }

        v9 = sub_9BCEF8(v3);
        v10 = a2[2];
        if (v4 >= v10)
        {
          v17 = v4;
          v18 = v4 >> 4;
          v19 = v18 + 1;
          if ((v18 + 1) >> 60)
          {
            sub_1794();
          }

          if (v10 >> 3 > v19)
          {
            v19 = v10 >> 3;
          }

          if (v10 >= 0x7FFFFFFFFFFFFFF0)
          {
            v20 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          if (v20)
          {
            if (!(v20 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v21 = 16 * v18;
          *v21 = *(v6 + 752);
          *(v21 + 8) = v9;
          v4 = 16 * v18 + 16;
          memcpy(0, 0, v17);
          *a2 = 0;
          a2[1] = v4;
          a2[2] = 0;
        }

        else
        {
          *v4 = *(v6 + 752);
          *(v4 + 8) = v9;
          v4 += 16;
        }

        a2[1] = v4;
        v3 += 104;
        if (v3 == v22)
        {
          return;
        }
      }

      do
      {
        while (1)
        {
          v12 = a2[2];
          if (v4 >= v12)
          {
            break;
          }

          v11 = *v7++;
          *v4 = v11;
          v4 += 16;
          a2[1] = v4;
          if (v7 == v8)
          {
            goto LABEL_3;
          }
        }

        v13 = v4;
        v14 = v4 >> 4;
        v15 = v14 + 1;
        if ((v14 + 1) >> 60)
        {
          *a2 = 0;
          sub_1794();
        }

        if (v12 >> 3 > v15)
        {
          v15 = v12 >> 3;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          if (!(v16 >> 60))
          {
            operator new();
          }

          *a2 = 0;
          sub_1808();
        }

        *(16 * v14) = *v7;
        v4 = 16 * v14 + 16;
        memcpy(0, 0, v13);
        a2[1] = v4;
        a2[2] = 0;
        a2[1] = v4;
        ++v7;
      }

      while (v7 != v8);
LABEL_3:
      *a2 = 0;
      v3 += 104;
    }

    while (v3 != v22);
  }
}

void sub_9E5404(_Unwind_Exception *a1)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_9E5430(uint64_t a1, unint64_t a2)
{
  v2 = *(*(a1 + 8) + 72);
  if (0x66FD0EB66FD0EB67 * ((*(*(a1 + 8) + 80) - v2) >> 3) <= a2)
  {
    sub_6FAB4();
  }

  v3 = v2 + 696 * a2;
  v4 = *(v3 + 568);
  v5 = *(v3 + 576) - v4;
  if (v5 < 2)
  {
    v6 = 0;
    v7 = 0;
    if (v5 != 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = v4[1];
  }

  v7 = *v4;
  if (v7 <= 3)
  {
    if (*v4 <= 1u)
    {
      if (*v4)
      {
        v8 = 7;
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (v7 == 2)
    {
      v8 = 10;
      goto LABEL_14;
    }

    if (v7 == 3)
    {
      v8 = 8;
      goto LABEL_14;
    }

    goto LABEL_28;
  }

  if (v7 - 6 < 2)
  {
LABEL_13:
    v8 = 20;
    goto LABEL_14;
  }

  if (v7 == 5)
  {
    v8 = 1;
    goto LABEL_14;
  }

  if (v7 == 4)
  {
    v8 = 5;
    goto LABEL_14;
  }

LABEL_28:
  v8 = 0;
LABEL_14:
  if (v6 > 7)
  {
    v9 = 0;
  }

  else
  {
    v9 = dword_22A5EA0[v6];
  }

  v10 = v8 > v9;
  if (v8 <= v9)
  {
    v11 = v7;
  }

  else
  {
    v11 = v6;
  }

  v12 = v6 << 16;
  v13 = v7 << 8;
  if (v10)
  {
    v12 = v13;
  }

  return v12 | v11;
}

uint64_t sub_9E5558(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2 != -1)
  {
    (off_266F6E0[v2])(&v4, a1);
  }

  *(a1 + 160) = -1;
  return a1;
}

void *sub_9E55B4(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0x1745D1745D1745ELL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_9E56F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9E572C(va);
  _Unwind_Resume(a1);
}

void sub_9E5704(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  sub_9E5558(v4);
  sub_9E57E4(va1);
  *(v2 + 8) = v3;
  sub_9E572C(va);
  _Unwind_Resume(a1);
}

void ***sub_9E572C(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 2);
          if (v6 != -1)
          {
            (off_266F6E0[v6])(&v8, v4 - 42);
          }

          *(v4 - 2) = -1;
          v4 -= 44;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_9E57E4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 176)
    {
      v6 = *(v4 - 8);
      if (v6 != -1)
      {
        (off_266F6E0[v6])(&v8, v4 - 168);
      }

      *(v4 - 8) = -1;
    }
  }

  return a1;
}

void *sub_9E5894(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_9E5980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_9E5AA0(&a11);
  *(v11 + 8) = v12;
  sub_9E59A0(&a9);
  _Unwind_Resume(a1);
}

void ****sub_9E59A0(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v9 = *(v6 - 3);
          v6 -= 3;
          v8 = v9;
          if (v9)
          {
            v10 = *(v4 - 2);
            v7 = v8;
            if (v10 != v8)
            {
              do
              {
                v11 = *(v10 - 2);
                if (v11 != -1)
                {
                  (off_266F6E0[v11])(&v13, v10 - 42);
                }

                *(v10 - 2) = -1;
                v10 -= 44;
              }

              while (v10 != v8);
              v7 = *v6;
            }

            *(v4 - 2) = v8;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_9E5AA0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *v2;
      do
      {
        v9 = *(v6 - 3);
        v6 -= 3;
        v8 = v9;
        if (v9)
        {
          v10 = *(v4 - 2);
          v7 = v8;
          if (v10 != v8)
          {
            do
            {
              v11 = *(v10 - 2);
              if (v11 != -1)
              {
                (off_266F6E0[v11])(&v13, v10 - 42);
              }

              *(v10 - 2) = -1;
              v10 -= 44;
            }

            while (v10 != v8);
            v7 = *v6;
          }

          *(v4 - 2) = v8;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

void *sub_9E5B80(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if ((0x2E8BA2E8BA2E8BA3 * ((v2 - *a2) >> 4)) < 0x1745D1745D1745ELL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_9E5CC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9E572C(va);
  _Unwind_Resume(a1);
}

void sub_9E5CD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  sub_9E5558(v4);
  sub_9E57E4(va1);
  *(v2 + 8) = v3;
  sub_9E572C(va);
  _Unwind_Resume(a1);
}

void *sub_9E5D00(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_9E5DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_9E5AA0(&a11);
  *(v11 + 8) = v12;
  sub_9E59A0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_9E5E1C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 3;
        sub_9A6368(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_9E5E84(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v17 = a1;
      v18 = v1;
      v6 = v1[1];
      do
      {
        v9 = *(v6 - 3);
        v6 -= 3;
        v8 = v9;
        if (v9)
        {
          v10 = *(v4 - 2);
          v7 = v8;
          if (v10 != v8)
          {
            v11 = *(v4 - 2);
            do
            {
              v14 = *(v11 - 3);
              v11 -= 3;
              v13 = v14;
              if (v14)
              {
                v15 = *(v10 - 2);
                v12 = v13;
                if (v15 != v13)
                {
                  do
                  {
                    v16 = *(v15 - 2);
                    if (v16 != -1)
                    {
                      (off_266F6E0[v16])(&v19, v15 - 42);
                    }

                    *(v15 - 2) = -1;
                    v15 -= 44;
                  }

                  while (v15 != v13);
                  v12 = *v11;
                }

                *(v10 - 2) = v13;
                operator delete(v12);
              }

              v10 = v11;
            }

            while (v11 != v8);
            v7 = *v6;
          }

          *(v4 - 2) = v8;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **v17;
      v1 = v18;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t sub_9E5FBC(uint64_t a1)
{
  sub_9E5FF4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_9E5FF4(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    v3 = a2;
    v5 = *(a1 + 16);
    do
    {
      v8 = *(v5 - 3);
      v5 -= 3;
      v7 = v8;
      *(a1 + 16) = v5;
      if (v8)
      {
        v9 = *(v2 - 2);
        v6 = v7;
        if (v9 != v7)
        {
          v10 = *(v2 - 2);
          do
          {
            v13 = *(v10 - 3);
            v10 -= 3;
            v12 = v13;
            if (v13)
            {
              v14 = *(v9 - 2);
              v11 = v12;
              if (v14 != v12)
              {
                do
                {
                  v15 = *(v14 - 2);
                  if (v15 != -1)
                  {
                    (off_266F6E0[v15])(&v17, v14 - 42);
                  }

                  *(v14 - 2) = -1;
                  v14 -= 44;
                }

                while (v14 != v12);
                v11 = *v10;
              }

              *(v9 - 2) = v12;
              operator delete(v11);
            }

            v9 = v10;
          }

          while (v10 != v7);
          v6 = *v5;
          v3 = a2;
        }

        *(v2 - 2) = v7;
        operator delete(v6);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }
}

uint64_t sub_9E6114(unsigned int **a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v5 = 0x1745D1745D1745DLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 4 * ((a1[1] - *a1) >> 4);
  LOBYTE(dword_8[v6]) = 0;
  *(&stru_68.flags + 44 * v2) = -1;
  v7 = *(a2 + 168);
  if (v7 != -1)
  {
    v17 = 176 * v2 + 8;
    (off_266F700[v7])(&v17, a2 + 8);
    *(&stru_68.flags + 44 * v2) = v7;
  }

  v8 = *a1;
  v9 = a1[1];
  v16 = 176 * v2;
  v10 = v6 * 4 - (v9 - *a1);
  if (v9 != *a1)
  {
    v11 = 0;
    v12 = -16 * ((v9 - v8) >> 4) + 176 * v2;
    do
    {
      *(v10 + v11 * 4 + 8) = 0;
      *(v12 + v11 * 4 + 168) = -1;
      v13 = v8[v11 + 42];
      if (v13 != -1)
      {
        v17 = v10 + v11 * 4 + 8;
        (off_266F700[v13])(&v17, &v8[v11 + 2]);
        *(v12 + v11 * 4 + 168) = v13;
      }

      v11 += 44;
    }

    while (&v8[v11] != v9);
    do
    {
      v14 = v8[42];
      if (v14 != -1)
      {
        (off_266F6E0[v14])(&v17, v8 + 2);
      }

      v8[42] = -1;
      v8 += 44;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = (v16 + 176);
  a1[2] = (176 * v5);
  if (v8)
  {
    operator delete(v8);
  }

  return v16 + 176;
}

__n128 sub_9E6368(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = 0;
  *(v3 + 32) = -1;
  v4 = *(a2 + 32);
  if (v4 != -1)
  {
    v7 = v3;
    (off_266F710[v4])(&v7, a2);
    *(v3 + 32) = v4;
  }

  *(v3 + 40) = *(a2 + 40);
  v5 = *(a2 + 48);
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 48) = v5;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(v3 + 72) = *(a2 + 72);
  result = *(a2 + 80);
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 80) = result;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  *(v3 + 104) = *(a2 + 104);
  return result;
}

__n128 sub_9E6420(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = *a2;
  *(v2 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 72) = *(a2 + 72);
  v3 = *(a2 + 96);
  *(v2 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(v2 + 96) = v3;
  v4 = *(a2 + 104);
  *(v2 + 108) = *(a2 + 108);
  *(v2 + 104) = v4;
  v5 = *(a2 + 112);
  *(v2 + 128) = *(a2 + 128);
  *(v2 + 112) = v5;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = 0;
  result = *(a2 + 136);
  *(v2 + 152) = *(a2 + 152);
  *(v2 + 136) = result;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  return result;
}

uint64_t sub_9E64EC(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = (8 * ((*(a1 + 8) - *a1) >> 3));
  sub_9E5D00(v11, a2);
  v6 = 24 * v2 + 24;
  v7 = *(a1 + 8) - *a1;
  v8 = v11 - v7;
  memcpy(v11 - v7, *a1, v7);
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_9E660C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9E5FBC(va);
  _Unwind_Resume(a1);
}

void sub_9E6620()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B3648 = 0u;
  unk_27B3658 = 0u;
  dword_27B3668 = 1065353216;
  sub_3A9A34(&xmmword_27B3648, v0);
  sub_3A9A34(&xmmword_27B3648, v3);
  sub_3A9A34(&xmmword_27B3648, __p);
  sub_3A9A34(&xmmword_27B3648, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B3620 = 0;
    qword_27B3628 = 0;
    qword_27B3618 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_9E6868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3630)
  {
    qword_27B3638 = qword_27B3630;
    operator delete(qword_27B3630);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_9E6914(__n128 *a1, __n128 *a2, unint64_t a3)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a1[1].n128_u64[0] = a3;
  return result;
}

BOOL sub_9E6928@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a2;
  *(a3 + 8) = 0;
  *(a3 + 24) = -1;
  v5 = a3 + 32;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 100;
  v6 = *(a1 + 1232);
  if (v6 == 2)
  {
    v7 = (a1 + 4 * (*(a1 + 40) != 0x7FFFFFFF) + 36);
    v8 = (a1 + 4 * (*(a1 + 28) != 0x7FFFFFFF) + 24);
  }

  else if (v6 == 1)
  {
    v7 = (a1 + 4 * (*(a1 + 64) != 0x7FFFFFFF) + 60);
    v8 = (a1 + 4 * (*(a1 + 52) != 0x7FFFFFFF) + 48);
  }

  else
  {
    v7 = (a1 + 36);
    v8 = (a1 + 24);
  }

  *(a3 + 16) = 10 * (*v7 - *v8);
  *(a3 + 32) = *(a1 + 1160);
  if (v5 != a1 + 1160)
  {
    if (*(a1 + 1191) < 0)
    {
      sub_13A68((a3 + 40), *(a1 + 1168), *(a1 + 1176));
    }

    else
    {
      *(a3 + 40) = *(a1 + 1168);
      *(a3 + 56) = *(a1 + 1184);
    }
  }

  *(a3 + 64) = *(a1 + 1192);
  sub_9D4074(v12, a1);
  while (1)
  {
    sub_9D4040(v12, v11);
    result = sub_9D427C(v12, v11);
    if (!result)
    {
      break;
    }

    if (*sub_9D42B8(v12) == 1)
    {
      *(a3 + 8) += *(sub_9D42B8(v12) + 1888);
    }

    else if (*sub_9D42B8(v12) == 2)
    {
      v10 = *(a3 + 24);
      if (v10 == -1)
      {
        *(a3 + 24) = 1;
      }

      else
      {
        *(a3 + 24) = v10 + 1;
      }
    }

    sub_9D40D8(v12);
  }

  return result;
}

void sub_9E6B04(_Unwind_Exception *a1)
{
  if (*(v1 + 63) < 0)
  {
    v3 = a1;
    operator delete(*v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void sub_9E6B30(uint64_t *a1, void *a2)
{
  if (*(a1[2] + 1444))
  {
    return;
  }

  v3 = 0xDAB7EC1DD3431B57 * ((a2[1] - *a2) >> 5);
  if (v3 < 2)
  {
    return;
  }

  v74 = 0;
  v75 = 0;
  v76 = 0;
  sub_9E7470(&v74, v3);
  v5 = a2[1] - *a2;
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0xDAB7EC1DD3431B57 * (v5 >> 5);
    do
    {
      sub_9E6928(*a2 + v6, v7, &v68);
      v11 = v75;
      if (v75 < v76)
      {
        v9 = v69;
        *v75 = v68;
        v11[1] = v9;
        *(v11 + 8) = v70;
        v10 = __p;
        *(v11 + 7) = v72;
        *(v11 + 40) = v10;
        v72 = 0;
        __p = 0uLL;
        *(v11 + 16) = v73;
        v75 = (v11 + 72);
      }

      else
      {
        v75 = sub_9E7728(&v74, &v68);
        if (SHIBYTE(v72) < 0)
        {
          operator delete(__p);
        }
      }

      ++v7;
      v6 += 3296;
    }

    while (v8 != v7);
  }

  v12 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((v75 - v74) >> 3));
  if (v75 == v74)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  sub_9E7950(v74, v75, v13, 1);
  v14 = v74;
  if (0x8E38E38E38E38E39 * ((v75 - v74) >> 3) <= 1)
  {
    sub_6FAB4();
  }

  if (*(v74 + 4) == *(v74 + 22))
  {
    v68 = xmmword_2291230;
    LODWORD(v69) = 0;
    *(&v69 + 1) = -1;
    v70 = 0x7FFFFFFF;
    v72 = 0;
    __p = 0uLL;
    v73 = 100;
  }

  else
  {
    v15 = v74[1];
    v68 = *v74;
    v69 = v15;
    v70 = *(v74 + 8);
    if (*(v74 + 63) < 0)
    {
      sub_325C(&__p, *(v74 + 5), *(v74 + 6));
    }

    else
    {
      v16 = *(v74 + 40);
      v72 = *(v74 + 7);
      __p = v16;
    }

    v73 = *(v14 + 64);
    if (v68 != -1)
    {
      sub_9E75CC(a1, 0, *a2 + 3296 * v68);
    }
  }

  v17 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((v75 - v74) >> 3));
  if (v75 == v74)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  sub_9E9994(v74, v75, v18, 1);
  v19 = v74;
  if (0x8E38E38E38E38E39 * ((v75 - v74) >> 3) <= 1)
  {
    sub_6FAB4();
  }

  if (*(v74 + 1) == *(v74 + 10))
  {
    v62 = xmmword_2291230;
    LODWORD(v63) = 0;
    *(&v63 + 1) = -1;
    v64 = 0x7FFFFFFF;
    v66 = 0;
    v65 = 0uLL;
    v67 = 100;
  }

  else
  {
    v20 = v74[1];
    v62 = *v74;
    v63 = v20;
    v64 = *(v74 + 8);
    if (*(v74 + 63) < 0)
    {
      sub_325C(&v65, *(v74 + 5), *(v74 + 6));
    }

    else
    {
      v21 = *(v74 + 40);
      v66 = *(v74 + 7);
      v65 = v21;
    }

    v67 = *(v19 + 64);
    if (v62 != -1)
    {
      sub_9E75CC(a1, 2, *a2 + 3296 * v62);
    }
  }

  v22 = v74;
  if (*(v74 + 63) < 0)
  {
    sub_325C(v60, *(v74 + 5), *(v74 + 6));
    v22 = v74;
    v23 = v75;
    if (v74 == v75)
    {
      goto LABEL_59;
    }
  }

  else
  {
    *v60 = *(v74 + 40);
    v61 = *(v74 + 7);
    v23 = v75;
    if (v74 == v75)
    {
LABEL_59:
      v33 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((v23 - v22) >> 3));
      if (v23 == v22)
      {
        v34 = 0;
      }

      else
      {
        v34 = v33;
      }

      sub_9EB870(v22, v23, v34, 1);
      v35 = v74;
      v81 = *(v74 + 8);
      if (*(v74 + 63) < 0)
      {
        sub_325C(&v82, *(v74 + 5), *(v74 + 6));
      }

      else
      {
        v82 = *(v74 + 40);
        v83 = *(v74 + 7);
      }

      v36 = v74;
      v84 = *(v35 + 64);
      if (0x8E38E38E38E38E39 * ((v75 - v74) >> 3) <= 1)
      {
        sub_6FAB4();
      }

      v37 = *(v74 + 26);
      v77 = v37;
      if (*(v74 + 135) < 0)
      {
        sub_325C(&v78, *(v74 + 14), *(v74 + 15));
        v38 = *(v36 + 136);
        v80 = v38;
        if (v81 == v77)
        {
LABEL_68:
          if (v83 >= 0)
          {
            v39 = HIBYTE(v83);
          }

          else
          {
            v39 = *(&v82 + 1);
          }

          v40 = HIBYTE(v79);
          v41 = HIBYTE(v79);
          if (v79 < 0)
          {
            v40 = *(&v78 + 1);
          }

          if (v39 == v40 && (v83 >= 0 ? (v42 = &v82) : (v42 = v82), v79 >= 0 ? (v43 = &v78) : (v43 = v78), !memcmp(v42, v43, v39)))
          {
            v44 = v84 == v38;
            if ((v41 & 0x80) == 0)
            {
LABEL_86:
              if (SHIBYTE(v83) < 0)
              {
                operator delete(v82);
                if (v44)
                {
                  goto LABEL_88;
                }
              }

              else if (v44)
              {
LABEL_88:
                v57[1] = 0;
                v58 = 0;
                v57[0] = 0;
                v59 = 100;
LABEL_95:
                if (SHIBYTE(v58) < 0)
                {
                  operator delete(v57[0]);
                }

                v22 = v74;
                v23 = v75;
                goto LABEL_98;
              }

              v45 = v74;
              v54 = *v74;
              if (*(v74 + 63) < 0)
              {
                sub_325C(v57, *(v74 + 5), *(v74 + 6));
              }

              else
              {
                v46 = *(v74 + 40);
                v58 = *(v74 + 7);
                *v57 = v46;
              }

              v59 = *(v45 + 64);
              if (v54 != -1)
              {
                sub_9E75CC(a1, 3, *a2 + 3296 * v54);
              }

              goto LABEL_95;
            }
          }

          else
          {
            v44 = 0;
            if ((v41 & 0x80) == 0)
            {
              goto LABEL_86;
            }
          }

LABEL_85:
          operator delete(v78);
          goto LABEL_86;
        }
      }

      else
      {
        v78 = v74[7];
        v79 = *(v74 + 16);
        v38 = *(v74 + 34);
        v80 = v38;
        if (v81 == v37)
        {
          goto LABEL_68;
        }
      }

      v44 = 0;
      if ((v79 & 0x8000000000000000) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_85;
    }
  }

  if (v61 >= 0)
  {
    v24 = HIBYTE(v61);
  }

  else
  {
    v24 = v60[1];
  }

  if (v61 >= 0)
  {
    v25 = v60;
  }

  else
  {
    v25 = v60[0];
  }

  v26 = v22;
  while (1)
  {
    v27 = *(v26 + 32);
    if (v27 == 0x7FFFFFFF)
    {
      break;
    }

    v28 = *(v26 + 63);
    v29 = v28;
    if ((v28 & 0x80u) != 0)
    {
      v28 = *(v26 + 48);
    }

    v30 = v27 < 1 || v28 == 0;
    if (v30 || v24 != v28)
    {
      break;
    }

    v32 = v29 >= 0 ? (v26 + 40) : *(v26 + 40);
    if (memcmp(v25, v32, v24))
    {
      break;
    }

    v26 += 72;
    if (v26 == v23)
    {
      goto LABEL_59;
    }
  }

LABEL_98:
  if ((v23 - v22) == &stru_68.size && (*(v22 + 24) == -1 || *(v22 + 96) == -1))
  {
    goto LABEL_106;
  }

  v47 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((v23 - v22) >> 3));
  if (v23 == v22)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

  sub_9EE0DC(v22, v23, v48, 1);
  v49 = v74;
  if (0x8E38E38E38E38E39 * ((v75 - v74) >> 3) <= 1)
  {
    sub_6FAB4();
  }

  if (*(v74 + 3) == *(v74 + 12))
  {
LABEL_106:
    v57[1] = 0;
    v58 = 0;
    v57[0] = 0;
    v59 = 100;
  }

  else
  {
    v55 = *v74;
    v56 = v74[1];
    if (*(v74 + 63) < 0)
    {
      sub_325C(v57, *(v74 + 5), *(v74 + 6));
    }

    else
    {
      v50 = *(v74 + 40);
      v58 = *(v74 + 7);
      *v57 = v50;
    }

    v59 = *(v49 + 64);
    if (v55 != -1 && *(&v56 + 1) != -1)
    {
      sub_9E75CC(a1, 1, *a2 + 3296 * v55);
    }
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57[0]);
    if ((SHIBYTE(v61) & 0x80000000) == 0)
    {
LABEL_115:
      if ((SHIBYTE(v66) & 0x80000000) == 0)
      {
        goto LABEL_116;
      }

      goto LABEL_121;
    }
  }

  else if ((SHIBYTE(v61) & 0x80000000) == 0)
  {
    goto LABEL_115;
  }

  operator delete(v60[0]);
  if ((SHIBYTE(v66) & 0x80000000) == 0)
  {
LABEL_116:
    if ((SHIBYTE(v72) & 0x80000000) == 0)
    {
      goto LABEL_117;
    }

LABEL_122:
    operator delete(__p);
    v51 = v74;
    if (!v74)
    {
      return;
    }

    goto LABEL_123;
  }

LABEL_121:
  operator delete(v65);
  if (SHIBYTE(v72) < 0)
  {
    goto LABEL_122;
  }

LABEL_117:
  v51 = v74;
  if (!v74)
  {
    return;
  }

LABEL_123:
  v52 = v75;
  v53 = v51;
  if (v75 != v51)
  {
    do
    {
      if (*(v52 - 9) < 0)
      {
        operator delete(*(v52 - 4));
      }

      v52 = (v52 - 72);
    }

    while (v52 != v51);
    v53 = v74;
  }

  v75 = v51;
  operator delete(v53);
}

void sub_9E7348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((a39 & 0x80000000) == 0)
  {
LABEL_5:
    if (a52 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  operator delete(a34);
  if (a52 < 0)
  {
LABEL_6:
    operator delete(a47);
    sub_9E78DC((v52 - 192));
    _Unwind_Resume(a1);
  }

LABEL_9:
  sub_9E78DC((v52 - 192));
  _Unwind_Resume(a1);
}

void *sub_9E7470(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_9E75CC(uint64_t *a1, int a2, uint64_t a3)
{
  if (*(a3 + 1048))
  {
    return;
  }

  *(a3 + 1044) = a2;
  *(a3 + 1048) = 1;
  memset(&__p, 0, sizeof(__p));
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        *(&__p.__r_.__value_.__s + 23) = 21;
        strcpy(&__p, "RouteBadge_LowestFare");
      }

      goto LABEL_12;
    }

    v5 = "RouteBadge_LeastWalking";
    v6 = 23;
    goto LABEL_11;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = "RouteBadge_FewestTransfers";
      v6 = 26;
LABEL_11:
      sub_195A048(&__p, v5, v6);
    }
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = 18;
    strcpy(&__p, "RouteBadge_Fastest");
  }

LABEL_12:
  if (sub_4D1F6C((a3 + 880)))
  {
    v7 = sub_9274F4(*a1, &__p);
    sub_64BC20(v9, v7);
    sub_53D784(a3 + 880, v9);
    sub_53A868(v9);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_9E770C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9E7728(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = *(a2 + 16);
  v7 = 8 * ((a1[1] - *a1) >> 3);
  *v7 = *a2;
  *(v7 + 16) = v6;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(v7 + 64) = *(a2 + 64);
  v8 = 72 * v2 + 72;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v7 + *a1 - v10;
    do
    {
      v14 = *(v12 + 16);
      *v13 = *v12;
      *(v13 + 16) = v14;
      *(v13 + 32) = *(v12 + 32);
      v15 = *(v12 + 40);
      *(v13 + 56) = *(v12 + 56);
      *(v13 + 40) = v15;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 40) = 0;
      *(v13 + 64) = *(v12 + 64);
      v12 += 72;
      v13 += 72;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 63) < 0)
      {
        operator delete(*(v9 + 40));
      }

      v9 += 72;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void **sub_9E78DC(void **a1)
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
        if (*(v3 - 9) < 0)
        {
          operator delete(*(v3 - 4));
        }

        v3 -= 9;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_9E7950(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
LABEL_1:
  v168 = a2 - 9;
  v169 = (a2 - 72);
  v167 = (a2 - 216);
  v7 = a1;
  v184 = a2;
  while (1)
  {
    a1 = v7;
    v8 = a2 - v7;
    v9 = 0x8E38E38E38E38E39 * ((a2 - v7) >> 3);
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          sub_9E8BC4(a1, (a1 + 72), v169);
          return;
        case 4:
          sub_9E8BC4(a1, (a1 + 72), (a1 + 144));
          if (*(a2 - 14) < *(a1 + 160))
          {
            v191 = *(a1 + 144);
            v202 = *(a1 + 160);
            v72 = *(a1 + 184);
            v73 = *(a1 + 176);
            *v219 = *(a1 + 192);
            *&v219[7] = *(a1 + 199);
            v74 = a2;
            v75 = *(a1 + 207);
            *(a1 + 184) = 0;
            *(a1 + 200) = 0;
            *(a1 + 192) = 0;
            v76 = *(a1 + 208);
            v77 = *(v74 - 56);
            *(a1 + 144) = *(v74 - 72);
            *(a1 + 160) = v77;
            *(a1 + 176) = *(v74 - 10);
            v78 = *(v74 - 2);
            *(a1 + 200) = *(v74 - 2);
            *(a1 + 184) = v78;
            *(v74 - 9) = 0;
            *(v74 - 32) = 0;
            *(a1 + 208) = *(v74 - 2);
            *(v74 - 56) = v202;
            *(v74 - 72) = v191;
            *(v74 - 10) = v73;
            if (*(v74 - 9) < 0)
            {
              operator delete(*(v74 - 4));
            }

            *(v74 - 4) = v72;
            *(v74 - 17) = *&v219[7];
            *(v74 - 3) = *v219;
            *(v74 - 9) = v75;
            *(v74 - 2) = v76;
            if (*(a1 + 160) < *(a1 + 88))
            {
              v192 = *(a1 + 72);
              v203 = *(a1 + 88);
              v79 = *(a1 + 112);
              v80 = *(a1 + 104);
              *&v220 = *(a1 + 120);
              *(&v220 + 7) = *(a1 + 127);
              v81 = *(a1 + 135);
              v82 = *(a1 + 136);
              v83 = *(a1 + 160);
              *(a1 + 72) = *(a1 + 144);
              *(a1 + 88) = v83;
              v84 = *(a1 + 176);
              *(a1 + 104) = v84;
              *(a1 + 112) = *(a1 + 184);
              *(a1 + 128) = *(a1 + 200);
              v85 = *(a1 + 208);
              *(a1 + 136) = v85;
              *(a1 + 144) = v192;
              *(a1 + 160) = v203;
              *(a1 + 176) = v80;
              *(a1 + 184) = v79;
              *(a1 + 192) = v220;
              *(a1 + 199) = *(&v220 + 7);
              *(a1 + 207) = v81;
              *(a1 + 208) = v82;
              if (*(a1 + 88) < *(a1 + 16))
              {
                v193 = *a1;
                v204 = *(a1 + 16);
                v86 = *(a1 + 32);
                v87 = *(a1 + 40);
                *&v221 = *(a1 + 48);
                *(&v221 + 7) = *(a1 + 55);
                v88 = *(a1 + 63);
                v89 = *(a1 + 64);
                v90 = *(a1 + 88);
                *a1 = *(a1 + 72);
                *(a1 + 16) = v90;
                *(a1 + 32) = v84;
                *(a1 + 40) = *(a1 + 112);
                *(a1 + 56) = *(a1 + 128);
                *(a1 + 64) = v85;
                *(a1 + 88) = v204;
                *(a1 + 72) = v193;
                *(a1 + 104) = v86;
                *(a1 + 112) = v87;
                *(a1 + 120) = v221;
                *(a1 + 127) = *(&v221 + 7);
                *(a1 + 135) = v88;
                *(a1 + 136) = v89;
              }
            }
          }

          return;
        case 5:

          sub_9E8F7C(a1, a1 + 72, a1 + 144, (a1 + 216), v169);
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
        if (*(a2 - 14) < *(a1 + 16))
        {
          v190 = *a1;
          v201 = *(a1 + 16);
          v66 = *(a1 + 32);
          v67 = *(a1 + 40);
          *v218 = *(a1 + 48);
          *&v218[7] = *(a1 + 55);
          v68 = *(a1 + 63);
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          *(a1 + 40) = 0;
          v69 = *(a1 + 64);
          v70 = *(a2 - 56);
          *a1 = *(a2 - 72);
          *(a1 + 16) = v70;
          *(a1 + 32) = *(a2 - 10);
          v71 = *(a2 - 2);
          *(a1 + 56) = *(a2 - 2);
          *(a1 + 40) = v71;
          *(a2 - 9) = 0;
          *(a2 - 32) = 0;
          *(a1 + 64) = *(a2 - 2);
          *(a2 - 56) = v201;
          *(a2 - 72) = v190;
          *(a2 - 10) = v66;
          if (*(a2 - 9) < 0)
          {
            operator delete(*(a2 - 4));
          }

          *(a2 - 4) = v67;
          *(a2 - 17) = *&v218[7];
          *(a2 - 3) = *v218;
          *(a2 - 9) = v68;
          *(a2 - 2) = v69;
        }

        return;
      }
    }

    if (v8 <= 1727)
    {
      v91 = (a1 + 72);
      v93 = a1 == a2 || v91 == a2;
      if ((a4 & 1) == 0)
      {
        if (!v93)
        {
          v155 = (a1 + 136);
          do
          {
            v156 = v91;
            v157 = *(a1 + 88);
            if (v157 < *(a1 + 16))
            {
              v197 = *v91;
              v231 = *(a1 + 92);
              v158 = *(a1 + 104);
              v234 = *(a1 + 100);
              v159 = *(a1 + 112);
              *v225 = *(a1 + 120);
              *&v225[7] = *(a1 + 127);
              v160 = *(a1 + 135);
              *(a1 + 120) = 0;
              *(a1 + 128) = 0;
              *(a1 + 112) = 0;
              v161 = v155;
              v162 = *(a1 + 136);
              do
              {
                v165 = *(v161 - 30);
                *(v161 - 4) = *(v161 - 34);
                *(v161 - 3) = v165;
                *(v161 - 8) = *(v161 - 26);
                v166 = (v161 - 6);
                if (*(v161 - 1) < 0)
                {
                  operator delete(*v166);
                }

                *v166 = *(v161 - 6);
                *(v161 - 1) = *(v161 - 10);
                *(v161 - 73) = 0;
                *(v161 - 96) = 0;
                v163 = v161 - 18;
                *v161 = *(v161 - 18);
                v164 = *(v161 - 48);
                v161 -= 18;
              }

              while (v157 < v164);
              *(v163 - 4) = v197;
              *(v163 - 12) = v157;
              *(v163 - 11) = v231;
              *(v163 - 9) = v234;
              *(v163 - 8) = v158;
              if (*(v163 - 1) < 0)
              {
                operator delete(*(v163 - 3));
              }

              *(v163 - 3) = v159;
              *(v163 - 9) = *&v225[7];
              *(v163 - 2) = *v225;
              *(v163 - 1) = v160;
              *v163 = v162;
            }

            v91 = (v156 + 72);
            v155 += 18;
            a1 = v156;
          }

          while ((v156 + 72) != v184);
        }

        return;
      }

      if (v93)
      {
        return;
      }

      v94 = 0;
      v95 = a1;
      while (1)
      {
        v96 = v91;
        v97 = *(v95 + 88);
        if (v97 < *(v95 + 16))
        {
          v194 = *v91;
          v228 = *(v95 + 92);
          v98 = *(v95 + 104);
          v232 = *(v95 + 100);
          v99 = *(v95 + 112);
          *v222 = *(v95 + 120);
          *&v222[7] = *(v95 + 127);
          v100 = *(v95 + 135);
          *(v95 + 120) = 0;
          *(v95 + 128) = 0;
          *(v95 + 112) = 0;
          v101 = v94;
          v102 = *(v95 + 136);
          while (1)
          {
            v103 = v101;
            v104 = a1 + v101;
            v105 = *(a1 + v101 + 16);
            *(v104 + 72) = *(a1 + v101);
            *(v104 + 88) = v105;
            *(v104 + 104) = *(a1 + v101 + 32);
            if (*(a1 + v101 + 135) < 0)
            {
              operator delete(*(v104 + 112));
            }

            *(v104 + 112) = *(v104 + 40);
            *(v104 + 128) = *(v104 + 56);
            *(v104 + 63) = 0;
            *(v104 + 40) = 0;
            *(v104 + 136) = *(v104 + 64);
            if (!v103)
            {
              break;
            }

            v101 = v103 - 72;
            if (v97 >= *(a1 + v103 - 56))
            {
              v106 = a1 + v103;
              goto LABEL_106;
            }
          }

          v106 = a1;
LABEL_106:
          *v106 = v194;
          *(v106 + 16) = v97;
          *(v106 + 20) = v228;
          *(v106 + 28) = v232;
          *(v106 + 32) = v98;
          v107 = a1 + v103;
          if (*(v106 + 63) < 0)
          {
            operator delete(*(v107 + 40));
          }

          *(v107 + 40) = v99;
          *(v106 + 48) = *v222;
          *(v106 + 55) = *&v222[7];
          *(v106 + 63) = v100;
          *(v106 + 64) = v102;
          a2 = v184;
        }

        v91 = (v96 + 72);
        v94 += 72;
        v95 = v96;
        if ((v96 + 72) == a2)
        {
          return;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v11 = v9 >> 1;
    v12 = a1 + 72 * (v9 >> 1);
    if (v8 < 0x2401)
    {
      sub_9E8BC4(v12, a1, v169);
      v180 = a3 - 1;
      if (a4)
      {
LABEL_19:
        v20 = *(a1 + 16);
        goto LABEL_20;
      }
    }

    else
    {
      sub_9E8BC4(a1, v12, v169);
      v13 = 72 * v11;
      sub_9E8BC4((a1 + 72), (v13 + a1 - 72), v168);
      sub_9E8BC4((a1 + 144), (a1 + 72 + v13), v167);
      sub_9E8BC4((v13 + a1 - 72), v12, (a1 + 72 + v13));
      v187 = *a1;
      v198 = *(a1 + 16);
      v14 = *(a1 + 32);
      *(&v215 + 7) = *(a1 + 55);
      v15 = *(a1 + 40);
      *&v215 = *(a1 + 48);
      v16 = *(a1 + 63);
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 40) = 0;
      v17 = *(a1 + 64);
      v18 = *(v12 + 16);
      *a1 = *v12;
      *(a1 + 16) = v18;
      *(a1 + 32) = *(v12 + 32);
      v19 = *(v12 + 40);
      *(a1 + 56) = *(v12 + 56);
      *(a1 + 40) = v19;
      *(v12 + 63) = 0;
      *(v12 + 40) = 0;
      *(a1 + 64) = *(v12 + 64);
      *v12 = v187;
      *(v12 + 16) = v198;
      *(v12 + 32) = v14;
      *(v12 + 40) = v15;
      *(v12 + 48) = v215;
      *(v12 + 55) = *(&v215 + 7);
      *(v12 + 63) = v16;
      *(v12 + 64) = v17;
      v180 = a3 - 1;
      if (a4)
      {
        goto LABEL_19;
      }
    }

    v20 = *(a1 + 16);
    if (*(a1 - 56) < v20)
    {
LABEL_20:
      v27 = 0;
      v217 = *a1;
      v210 = *(a1 + 20);
      v213 = *(a1 + 28);
      v28 = (a1 + 40);
      v178 = *(a1 + 40);
      *v207 = *(a1 + 48);
      *&v207[7] = *(a1 + 55);
      v172 = *(a1 + 32);
      v175 = *(a1 + 63);
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      v171 = *(a1 + 64);
      do
      {
        v29 = *(a1 + v27 + 88);
        v27 += 72;
      }

      while (v29 < v20);
      v30 = a1 + v27;
      v31 = a2;
      if (v27 == 72)
      {
        v34 = v184;
        while (v30 < v34)
        {
          v32 = v34 - 72;
          v35 = *(v34 - 56);
          v34 -= 72;
          if (v35 < v20)
          {
            goto LABEL_28;
          }
        }

        v32 = v34;
        v7 = v30;
      }

      else
      {
        do
        {
          v32 = v31 - 72;
          v33 = *(v31 - 14);
          v31 = (v31 - 72);
        }

        while (v33 >= v20);
LABEL_28:
        v7 = v30;
        if (v30 < v32)
        {
          v36 = v32;
          do
          {
            v188 = *v7;
            v199 = *(v7 + 16);
            v37 = *(v7 + 32);
            v38 = *(v7 + 40);
            *v226 = *(v7 + 48);
            *&v226[7] = *(v7 + 55);
            v39 = *(v7 + 63);
            *(v7 + 48) = 0;
            *(v7 + 56) = 0;
            *(v7 + 40) = 0;
            v40 = *(v7 + 64);
            v41 = *(v36 + 16);
            *v7 = *v36;
            *(v7 + 16) = v41;
            *(v7 + 32) = *(v36 + 32);
            v42 = *(v36 + 40);
            *(v7 + 56) = *(v36 + 56);
            *(v7 + 40) = v42;
            *(v36 + 63) = 0;
            *(v36 + 40) = 0;
            *(v7 + 64) = *(v36 + 64);
            *v36 = v188;
            *(v36 + 16) = v199;
            *(v36 + 32) = v37;
            if (*(v36 + 63) < 0)
            {
              operator delete(*(v36 + 40));
            }

            *(v36 + 40) = v38;
            *(v36 + 48) = *v226;
            *(v36 + 55) = *&v226[7];
            *(v36 + 63) = v39;
            *(v36 + 64) = v40;
            do
            {
              v43 = *(v7 + 88);
              v7 += 72;
            }

            while (v43 < v20);
            do
            {
              v44 = *(v36 - 56);
              v36 -= 72;
            }

            while (v44 >= v20);
          }

          while (v7 < v36);
        }
      }

      v45 = (v7 - 72);
      if (v7 - 72 != a1)
      {
        v46 = *(v7 - 56);
        *a1 = *v45;
        *(a1 + 16) = v46;
        *(a1 + 32) = *(v7 - 40);
        if (*(a1 + 63) < 0)
        {
          operator delete(*v28);
        }

        v47 = *(v7 - 32);
        *(a1 + 56) = *(v7 - 16);
        *v28 = v47;
        *(v7 - 9) = 0;
        *(v7 - 32) = 0;
        *(a1 + 64) = *(v7 - 8);
      }

      *v45 = v217;
      *(v7 - 56) = v20;
      *(v7 - 52) = v210;
      *(v7 - 44) = v213;
      *(v7 - 40) = v172;
      if (*(v7 - 9) < 0)
      {
        operator delete(*(v7 - 32));
      }

      *(v7 - 32) = v178;
      *(v7 - 17) = *&v207[7];
      *(v7 - 24) = *v207;
      *(v7 - 9) = v175;
      *(v7 - 8) = v171;
      v48 = v30 >= v32;
      a3 = v180;
      a2 = v184;
      if (!v48)
      {
        goto LABEL_46;
      }

      v49 = sub_9E94E0(a1, v7 - 72);
      if (sub_9E94E0(v7, v184))
      {
        a2 = (v7 - 72);
        if (v49)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v49)
      {
LABEL_46:
        sub_9E7950(a1, v7 - 72, v180, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v216 = *a1;
      v21 = *(a1 + 16);
      v22 = a2;
      v23 = *(a1 + 32);
      v212 = *(a1 + 28);
      v209 = *(a1 + 20);
      v24 = (a1 + 40);
      v177 = *(a1 + 40);
      *v206 = *(a1 + 48);
      *&v206[7] = *(a1 + 55);
      v174 = *(a1 + 63);
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      if (v21 >= *(v22 - 14))
      {
        v50 = a1 + 72;
        do
        {
          v7 = v50;
          if (v50 >= v184)
          {
            break;
          }

          v50 += 72;
        }

        while (v21 >= *(v7 + 16));
      }

      else
      {
        v25 = a1;
        do
        {
          v7 = v25 + 72;
          v26 = *(v25 + 88);
          v25 += 72;
        }

        while (v21 >= v26);
      }

      v51 = v184;
      if (v7 < v184)
      {
        v52 = v184;
        do
        {
          v51 = v52 - 72;
          v53 = *(v52 - 56);
          v52 -= 72;
        }

        while (v21 < v53);
      }

      v54 = *(a1 + 64);
      while (v7 < v51)
      {
        v189 = *v7;
        v200 = *(v7 + 16);
        v55 = *(v7 + 32);
        v56 = *(v7 + 40);
        *v227 = *(v7 + 48);
        *&v227[7] = *(v7 + 55);
        v57 = *(v7 + 63);
        *(v7 + 48) = 0;
        *(v7 + 56) = 0;
        *(v7 + 40) = 0;
        v58 = *(v7 + 64);
        v59 = *(v51 + 16);
        *v7 = *v51;
        *(v7 + 16) = v59;
        *(v7 + 32) = *(v51 + 32);
        v60 = *(v51 + 40);
        *(v7 + 56) = *(v51 + 56);
        *(v7 + 40) = v60;
        *(v51 + 63) = 0;
        *(v51 + 40) = 0;
        *(v7 + 64) = *(v51 + 64);
        *v51 = v189;
        *(v51 + 16) = v200;
        *(v51 + 32) = v55;
        if (*(v51 + 63) < 0)
        {
          operator delete(*(v51 + 40));
        }

        *(v51 + 40) = v56;
        *(v51 + 48) = *v227;
        *(v51 + 55) = *&v227[7];
        *(v51 + 63) = v57;
        *(v51 + 64) = v58;
        do
        {
          v61 = *(v7 + 88);
          v7 += 72;
        }

        while (v21 >= v61);
        do
        {
          v62 = *(v51 - 56);
          v51 -= 72;
        }

        while (v21 < v62);
      }

      v63 = (v7 - 72);
      if (v7 - 72 != a1)
      {
        v64 = *(v7 - 56);
        *a1 = *v63;
        *(a1 + 16) = v64;
        *(a1 + 32) = *(v7 - 40);
        if (*(a1 + 63) < 0)
        {
          operator delete(*v24);
        }

        v65 = *(v7 - 32);
        *(a1 + 56) = *(v7 - 16);
        *v24 = v65;
        *(v7 - 9) = 0;
        *(v7 - 32) = 0;
        *(a1 + 64) = *(v7 - 8);
      }

      *v63 = v216;
      *(v7 - 56) = v21;
      *(v7 - 52) = v209;
      *(v7 - 44) = v212;
      *(v7 - 40) = v23;
      if (*(v7 - 9) < 0)
      {
        operator delete(*(v7 - 32));
      }

      a4 = 0;
      a3 = v180;
      *(v7 - 32) = v177;
      *(v7 - 17) = *&v206[7];
      *(v7 - 24) = *v206;
      *(v7 - 9) = v174;
      *(v7 - 8) = v54;
      a2 = v184;
    }
  }

  if (a1 == a2)
  {
    return;
  }

  v108 = v10 >> 1;
  v109 = v10 >> 1;
  do
  {
    v110 = v109;
    if (v108 >= v109)
    {
      v111 = (2 * v109) | 1;
      v112 = a1 + 72 * v111;
      if (2 * v110 + 2 < v9)
      {
        v113 = *(v112 + 16);
        v114 = *(v112 + 88);
        v115 = v113 < v114;
        v116 = v113 >= v114 ? 0 : 72;
        v112 += v116;
        if (v115)
        {
          v111 = 2 * v110 + 2;
        }
      }

      v117 = a1 + 72 * v110;
      v118 = *(v117 + 16);
      if (*(v112 + 16) >= v118)
      {
        v195 = *v117;
        v233 = *(v117 + 28);
        v229 = *(v117 + 20);
        v119 = *(v117 + 32);
        v181 = *(v117 + 40);
        *&v223[7] = *(v117 + 55);
        *v223 = *(v117 + 48);
        v179 = *(v117 + 63);
        *(v117 + 40) = 0;
        *(v117 + 48) = 0;
        *(v117 + 56) = 0;
        v173 = v119;
        v176 = *(v117 + 64);
        do
        {
          v120 = v112;
          v121 = *(v112 + 16);
          *v117 = *v112;
          *(v117 + 16) = v121;
          *(v117 + 32) = *(v112 + 32);
          if (*(v117 + 63) < 0)
          {
            operator delete(*(v117 + 40));
          }

          v122 = *(v120 + 40);
          *(v117 + 56) = *(v120 + 56);
          *(v117 + 40) = v122;
          *(v120 + 63) = 0;
          *(v120 + 40) = 0;
          *(v117 + 64) = *(v120 + 64);
          if (v108 < v111)
          {
            break;
          }

          v123 = (2 * v111) | 1;
          v112 = a1 + 72 * v123;
          if (2 * v111 + 2 < v9)
          {
            v124 = *(v112 + 16);
            v125 = *(v112 + 88);
            v126 = v124 < v125;
            v127 = v124 >= v125 ? 0 : 72;
            v112 += v127;
            if (v126)
            {
              v123 = 2 * v111 + 2;
            }
          }

          v117 = v120;
          v111 = v123;
        }

        while (*(v112 + 16) >= v118);
        *v120 = v195;
        *(v120 + 16) = v118;
        *(v120 + 20) = v229;
        *(v120 + 28) = v233;
        *(v120 + 32) = v173;
        if (*(v120 + 63) < 0)
        {
          operator delete(*(v120 + 40));
        }

        *(v120 + 40) = v181;
        *(v120 + 48) = *v223;
        *(v120 + 55) = *&v223[7];
        *(v120 + 63) = v179;
        *(v120 + 64) = v176;
      }
    }

    v109 = v110 - 1;
  }

  while (v110);
  v128 = 0x8E38E38E38E38E39 * (v8 >> 3);
  v129 = v184;
  while (2)
  {
    v130 = 0;
    v131 = v129;
    v196 = *a1;
    v205 = *(a1 + 16);
    v132 = *(a1 + 32);
    v182 = *(a1 + 40);
    *v208 = *(a1 + 48);
    *&v208[7] = *(a1 + 55);
    v185 = *(a1 + 63);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    v133 = a1;
    v134 = *(a1 + 64);
    while (2)
    {
      v136 = v133 + 72 * v130;
      v137 = v136 + 72;
      if (2 * v130 + 2 >= v128)
      {
        v130 = (2 * v130) | 1;
        v142 = *(v136 + 88);
        *v133 = *v137;
        *(v133 + 16) = v142;
        *(v133 + 32) = *(v136 + 104);
        if (*(v133 + 63) < 0)
        {
          goto LABEL_148;
        }
      }

      else
      {
        v138 = *(v136 + 88);
        v139 = *(v136 + 160);
        v140 = v136 + 144;
        if (v138 >= v139)
        {
          v130 = (2 * v130) | 1;
        }

        else
        {
          v137 = v140;
          v130 = 2 * v130 + 2;
        }

        v141 = *(v137 + 16);
        *v133 = *v137;
        *(v133 + 16) = v141;
        *(v133 + 32) = *(v137 + 32);
        if (*(v133 + 63) < 0)
        {
LABEL_148:
          operator delete(*(v133 + 40));
        }
      }

      v135 = *(v137 + 40);
      *(v133 + 56) = *(v137 + 56);
      *(v133 + 40) = v135;
      *(v137 + 63) = 0;
      *(v137 + 40) = 0;
      *(v133 + 64) = *(v137 + 64);
      v133 = v137;
      if (v130 <= ((v128 - 2) >> 1))
      {
        continue;
      }

      break;
    }

    v129 = (v131 - 72);
    if (v137 == (v131 - 72))
    {
      *v137 = v196;
      *(v137 + 16) = v205;
      *(v137 + 32) = v132;
      if (*(v137 + 63) < 0)
      {
        operator delete(*(v137 + 40));
      }

      *(v137 + 40) = v182;
      *(v137 + 48) = *v208;
      *(v137 + 55) = *&v208[7];
      *(v137 + 63) = v185;
      *(v137 + 64) = v134;
    }

    else
    {
      v143 = *(v131 - 56);
      *v137 = *v129;
      *(v137 + 16) = v143;
      *(v137 + 32) = *(v131 - 10);
      if (*(v137 + 63) < 0)
      {
        operator delete(*(v137 + 40));
      }

      v144 = *(v131 - 2);
      *(v137 + 56) = *(v131 - 2);
      *(v137 + 40) = v144;
      *(v131 - 9) = 0;
      *(v131 - 32) = 0;
      *(v137 + 64) = *(v131 - 2);
      *v129 = v196;
      *(v131 - 56) = v205;
      *(v131 - 10) = v132;
      if (*(v131 - 9) < 0)
      {
        operator delete(*(v131 - 4));
      }

      *(v131 - 4) = v182;
      *(v131 - 17) = *&v208[7];
      *(v131 - 3) = *v208;
      *(v131 - 9) = v185;
      *(v131 - 2) = v134;
      v145 = v137 + 72 - a1;
      if (v145 >= 73)
      {
        v146 = (-2 - 0x71C71C71C71C71C7 * (v145 >> 3)) >> 1;
        v147 = a1 + 72 * v146;
        v148 = *(v137 + 16);
        if (*(v147 + 16) < v148)
        {
          v224 = *v137;
          v211 = *(v137 + 20);
          v149 = *(v137 + 32);
          v214 = *(v137 + 28);
          v183 = *(v137 + 40);
          v186 = v129;
          *v230 = *(v137 + 48);
          *&v230[7] = *(v137 + 55);
          v150 = *(v137 + 63);
          *(v137 + 48) = 0;
          *(v137 + 56) = 0;
          *(v137 + 40) = 0;
          v151 = *(v137 + 64);
          do
          {
            v152 = v147;
            v153 = *(v147 + 16);
            *v137 = *v147;
            *(v137 + 16) = v153;
            *(v137 + 32) = *(v147 + 32);
            if (*(v137 + 63) < 0)
            {
              operator delete(*(v137 + 40));
            }

            v154 = *(v152 + 40);
            *(v137 + 56) = *(v152 + 56);
            *(v137 + 40) = v154;
            *(v152 + 63) = 0;
            *(v152 + 40) = 0;
            *(v137 + 64) = *(v152 + 64);
            if (!v146)
            {
              break;
            }

            v146 = (v146 - 1) >> 1;
            v147 = a1 + 72 * v146;
            v137 = v152;
          }

          while (*(v147 + 16) < v148);
          *v152 = v224;
          *(v152 + 16) = v148;
          *(v152 + 20) = v211;
          *(v152 + 28) = v214;
          *(v152 + 32) = v149;
          if (*(v152 + 63) < 0)
          {
            operator delete(*(v152 + 40));
          }

          *(v152 + 40) = v183;
          *(v152 + 48) = *v230;
          *(v152 + 55) = *&v230[7];
          *(v152 + 63) = v150;
          *(v152 + 64) = v151;
          v129 = v186;
        }
      }
    }

    v115 = v128-- <= 2;
    if (!v115)
    {
      continue;
    }

    break;
  }
}