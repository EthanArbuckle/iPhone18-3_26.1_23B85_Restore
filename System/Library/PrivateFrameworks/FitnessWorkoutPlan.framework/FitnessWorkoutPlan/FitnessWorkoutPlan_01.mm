uint64_t sub_1E58B6048(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_1E5A2C1B4();
    MEMORY[0x1E6932DE0](v13);
    result = sub_1E5A2C204();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B61B8(uint64_t result, uint64_t a2)
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
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_1E5A2C1B4();

    sub_1E5A2BB74();
    v17 = sub_1E5A2C204();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1E5A2C114() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

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
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B6370(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v35 = a2 + 56;
  v31 = result + 56;
  v32 = result;
  v30 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v33 = (v6 - 1) & v6;
LABEL_13:
    v11 = (*(result + 48) + 32 * (v8 | (v2 << 6)));
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[2];
    v15 = v11[3];
    v16 = *(a2 + 40);
    v17 = a2;
    sub_1E5A2C1B4();

    sub_1E5A2BB74();
    sub_1E58B93C8(v36, v14);
    v34 = v15;
    sub_1E58B93C8(v36, v15);
    v18 = sub_1E5A2C204();
    v19 = -1 << *(v17 + 32);
    v20 = v18 & ~v19;
    if (((*(v35 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_27:

      return 0;
    }

    v21 = v17;
    v22 = ~v19;
    while (1)
    {
      v23 = v21;
      v24 = (*(v21 + 48) + 32 * v20);
      v25 = v24[2];
      v26 = v24[3];
      if (*v24 != v13 || v24[1] != v12)
      {
        v28 = v24[1];
        if ((sub_1E5A2C114() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (sub_1E58B61B8(v25, v14))
      {
        break;
      }

LABEL_16:
      v20 = (v20 + 1) & v22;
      v21 = v23;
      if (((*(v35 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v29 = sub_1E58B61B8(v26, v34);

    if ((v29 & 1) == 0)
    {
      goto LABEL_16;
    }

    v3 = v31;
    result = v32;
    a2 = v23;
    v7 = v30;
    v6 = v33;
  }

  while (v33);
LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v33 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B6628(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
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
  v83 = a2 + 56;
  v76 = result + 56;
  v77 = result;
  v75 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v78 = (v7 - 1) & v7;
LABEL_13:
    v79 = v3;
    v12 = *(result + 48) + 48 * (v9 | (v3 << 6));
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = *(v12 + 32);
    v18 = *(v12 + 40);
    v95 = *v12;
    v13 = v95;
    v96 = v14;
    v97 = v15;
    v98 = v16;
    v99 = v17;
    v100 = v18;
    v19 = *(v2 + 40);
    sub_1E5A2C1B4();
    sub_1E58BACE0(v13, v14, v15, v16, v17, v18);
    WorkoutPlanCreationFilterItem.hash(into:)();
    v20 = sub_1E5A2C204();
    v21 = -1 << *(v2 + 32);
    v22 = v20 & ~v21;
    v23 = v95;
    v24 = v96;
    v25 = v97;
    v85 = v98;
    v86 = v99;
    v26 = v100;
    if (((*(v83 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_149:
      sub_1E58BACAC(v23, v24, v25, v85, v86, v26);
      return 0;
    }

    v81 = ~v21;
    v80 = v95;
    v84 = v97;
    while (1)
    {
      v35 = *(v2 + 48) + 48 * v22;
      v36 = *v35;
      v37 = *(v35 + 8);
      v39 = *(v35 + 16);
      v38 = *(v35 + 24);
      v40 = *(v35 + 32);
      v41 = *(v35 + 40);
      v87[0] = *v35;
      v87[1] = v37;
      v87[2] = v39;
      v87[3] = v38;
      v87[4] = v40;
      v88 = v41;
      v89 = v23;
      v90 = v24;
      v91 = v25;
      v92 = v85;
      v93 = v86;
      v94 = v26;
      v42 = v26;
      if (v41 > 3)
      {
        if (v41 <= 5)
        {
          if (v41 == 4)
          {
            if (v26 != 4)
            {
              goto LABEL_90;
            }

            if (v36 == v23 && v37 == v24)
            {
              sub_1E58BACE0(v23, v24, v39, v38, v40, 4u);
              v68 = v23;
              v69 = v24;
              v70 = v84;
              v71 = v85;
              v72 = v86;
              v73 = 4;
              goto LABEL_144;
            }

            v28 = sub_1E5A2C114();
            sub_1E58BACE0(v36, v37, v39, v38, v40, 4u);
            v29 = v23;
            v30 = v24;
            v31 = v84;
            v32 = v85;
            v33 = v86;
            v34 = 4;
          }

          else
          {
            if (v26 != 5)
            {
              goto LABEL_90;
            }

            if (v36 == v23 && v37 == v24)
            {
              sub_1E58BACE0(v23, v24, v39, v38, v40, 5u);
              v68 = v23;
              v69 = v24;
              v70 = v84;
              v71 = v85;
              v72 = v86;
              v73 = 5;
              goto LABEL_144;
            }

            v28 = sub_1E5A2C114();
            sub_1E58BACE0(v36, v37, v39, v38, v40, 5u);
            v29 = v23;
            v30 = v24;
            v31 = v84;
            v32 = v85;
            v33 = v86;
            v34 = 5;
          }

          goto LABEL_20;
        }

        if (v41 == 6)
        {
          if (v26 != 6)
          {
            goto LABEL_90;
          }

          if (v36 == v23 && v37 == v24)
          {
            sub_1E58BACE0(v23, v24, v39, v38, v40, 6u);
            v68 = v23;
            v69 = v24;
            v70 = v84;
            v71 = v85;
            v72 = v86;
            v73 = 6;
            goto LABEL_144;
          }

          v28 = sub_1E5A2C114();
          sub_1E58BACE0(v36, v37, v39, v38, v40, 6u);
          v29 = v23;
          v30 = v24;
          v31 = v84;
          v32 = v85;
          v33 = v86;
          v34 = 6;
          goto LABEL_20;
        }

        if (v41 == 7)
        {
          if (v26 != 7)
          {
            goto LABEL_90;
          }

          if (v36 == v23 && v37 == v24)
          {
            sub_1E58BACE0(v23, v24, v39, v38, v40, 7u);
            v68 = v23;
            v69 = v24;
            v70 = v84;
            v71 = v85;
            v72 = v86;
            v73 = 7;
            goto LABEL_144;
          }

          v28 = sub_1E5A2C114();
          sub_1E58BACE0(v36, v37, v39, v38, v40, 7u);
          v29 = v23;
          v30 = v24;
          v31 = v84;
          v32 = v85;
          v33 = v86;
          v34 = 7;
          goto LABEL_20;
        }

        if (v26 != 8)
        {
          goto LABEL_91;
        }

        v51 = v36;
        v2 = a2;
        if (v36 > 3u)
        {
          if (v36 <= 5u)
          {
            if (v36 == 4)
            {
              v53 = 0xE700000000000000;
              v52 = 0x7261655977656ELL;
            }

            else
            {
              v53 = 0xE500000000000000;
              v52 = 0x6564697270;
            }

            goto LABEL_106;
          }

          if (v36 == 6)
          {
            v52 = 0x576D6172676F7270;
            v53 = 0xEE0074756F6B726FLL;
            goto LABEL_106;
          }

          v52 = 0x6967736B6E616874;
          v56 = 1735289206;
        }

        else
        {
          if (v36 <= 1u)
          {
            v52 = 0x7053747369747261;
            v53 = 0xEF746867696C746FLL;
            if (v51)
            {
              v53 = 0xE90000000000006ELL;
              v52 = 0x6565776F6C6C6168;
            }

            goto LABEL_106;
          }

          if (v36 == 2)
          {
            v53 = 0xE700000000000000;
            v52 = 0x796164696C6F68;
LABEL_106:
            v57 = 0x576D6172676F7270;
            if (v80 != 6)
            {
              v57 = 0x6967736B6E616874;
            }

            v58 = 0xEE0074756F6B726FLL;
            if (v80 != 6)
            {
              v58 = 0xEC000000676E6976;
            }

            v59 = 0x7261655977656ELL;
            if (v80 != 4)
            {
              v59 = 0x6564697270;
            }

            v60 = 0xE500000000000000;
            if (v80 == 4)
            {
              v60 = 0xE700000000000000;
            }

            if (v80 <= 5)
            {
              v57 = v59;
              v58 = v60;
            }

            v61 = 0x796164696C6F68;
            if (v80 != 2)
            {
              v61 = 0x77654E72616E756CLL;
            }

            v62 = 0xEC00000072616559;
            if (v80 == 2)
            {
              v62 = 0xE700000000000000;
            }

            v63 = 0x7053747369747261;
            if (v80)
            {
              v63 = 0x6565776F6C6C6168;
            }

            v64 = 0xEF746867696C746FLL;
            if (v80)
            {
              v64 = 0xE90000000000006ELL;
            }

            if (v80 <= 1)
            {
              v61 = v63;
              v62 = v64;
            }

            if (v80 <= 3)
            {
              v65 = v61;
            }

            else
            {
              v65 = v57;
            }

            if (v80 <= 3)
            {
              v66 = v62;
            }

            else
            {
              v66 = v58;
            }

            if (v52 == v65 && v53 == v66)
            {

              goto LABEL_145;
            }

            v67 = sub_1E5A2C114();

            sub_1E58BAD14(v87, &qword_1ECFFB620, &qword_1E5A2CDC8);
            if (v67)
            {
              goto LABEL_146;
            }

            goto LABEL_21;
          }

          v52 = 0x77654E72616E756CLL;
          v56 = 1918985561;
        }

        v53 = v56 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        goto LABEL_106;
      }

      if (v41 > 1)
      {
        if (v41 == 2)
        {
          if (v26 != 2)
          {
            goto LABEL_90;
          }

          if (v36 == v23 && v37 == v24)
          {
            sub_1E58BACE0(v23, v24, v39, v38, v40, 2u);
            v68 = v23;
            v69 = v24;
            v70 = v84;
            v71 = v85;
            v72 = v86;
            v73 = 2;
            goto LABEL_144;
          }

          v28 = sub_1E5A2C114();
          sub_1E58BACE0(v36, v37, v39, v38, v40, 2u);
          v29 = v23;
          v30 = v24;
          v31 = v84;
          v32 = v85;
          v33 = v86;
          v34 = 2;
        }

        else
        {
          if (v26 != 3)
          {
            goto LABEL_90;
          }

          if (v36 == v23 && v37 == v24)
          {
            sub_1E58BACE0(v23, v24, v39, v38, v40, 3u);
            v68 = v23;
            v69 = v24;
            v70 = v84;
            v71 = v85;
            v72 = v86;
            v73 = 3;
            goto LABEL_144;
          }

          v28 = sub_1E5A2C114();
          sub_1E58BACE0(v36, v37, v39, v38, v40, 3u);
          v29 = v23;
          v30 = v24;
          v31 = v84;
          v32 = v85;
          v33 = v86;
          v34 = 3;
        }

        goto LABEL_20;
      }

      if (!v41)
      {
        break;
      }

      if (v26 != 1)
      {
        goto LABEL_90;
      }

      if (*&v36 != *&v23)
      {
        v42 = 1;
LABEL_90:
        sub_1E58BACE0(v36, v37, v39, v38, v40, v41);
        v25 = v84;
LABEL_91:
        sub_1E58BACE0(v23, v24, v25, v85, v86, v42);
        sub_1E58BAD14(v87, &qword_1ECFFB620, &qword_1E5A2CDC8);
        v2 = a2;
        goto LABEL_21;
      }

      v47 = *&v40;
      if (v37 == v24 && v39 == v84)
      {
        sub_1E58BACE0(v36, v24, v84, v38, v40, 1u);
        sub_1E58BACE0(v23, v24, v84, v85, v86, 1u);
        sub_1E58BAD14(v87, &qword_1ECFFB620, &qword_1E5A2CDC8);
        v55 = *&v38 == *&v85 && *&v40 == *&v86;
        v2 = a2;
        if (v55)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v74 = sub_1E5A2C114();
        sub_1E58BACE0(v36, v37, v39, v38, v40, 1u);
        sub_1E58BACE0(v23, v24, v84, v85, v86, 1u);
        sub_1E58BAD14(v87, &qword_1ECFFB620, &qword_1E5A2CDC8);
        v2 = a2;
        if ((v74 & 1) != 0 && *&v38 == *&v85 && v47 == *&v86)
        {
          goto LABEL_146;
        }
      }

LABEL_21:
      v22 = (v22 + 1) & v81;
      v25 = v84;
      if (((*(v83 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

    if (v26)
    {
      goto LABEL_90;
    }

    if (v36 != v23 || v37 != v24)
    {
      v28 = sub_1E5A2C114();
      sub_1E58BACE0(v36, v37, v39, v38, v40, 0);
      v29 = v23;
      v30 = v24;
      v31 = v84;
      v32 = v85;
      v33 = v86;
      v34 = 0;
LABEL_20:
      sub_1E58BACE0(v29, v30, v31, v32, v33, v34);
      sub_1E58BAD14(v87, &qword_1ECFFB620, &qword_1E5A2CDC8);
      v2 = a2;
      if (v28)
      {
        goto LABEL_146;
      }

      goto LABEL_21;
    }

    sub_1E58BACE0(v23, v24, v39, v38, v40, 0);
    v68 = v23;
    v69 = v24;
    v70 = v84;
    v71 = v85;
    v72 = v86;
    v73 = 0;
LABEL_144:
    sub_1E58BACE0(v68, v69, v70, v71, v72, v73);
    v2 = a2;
LABEL_145:
    sub_1E58BAD14(v87, &qword_1ECFFB620, &qword_1E5A2CDC8);
LABEL_146:
    sub_1E58BACAC(v23, v24, v84, v85, v86, v26);
    v4 = v76;
    result = v77;
    v7 = v78;
    v3 = v79;
    v8 = v75;
  }

  while (v78);
LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v78 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B7160(uint64_t result, uint64_t a2)
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
  v30 = v8;
  v31 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v32 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(result + 48) + 40 * (v10 | (v3 << 6));
      v14 = *v13;
      v16 = *(v13 + 8);
      v15 = *(v13 + 16);
      v17 = *(v13 + 24);
      v18 = *(v13 + 32);
      v19 = *(a2 + 40);
      sub_1E5A2C1B4();

      WorkoutPlanDuration.hash(into:)();
      v20 = sub_1E5A2C204();
      v21 = -1 << *(a2 + 32);
      v22 = v20 & ~v21;
      if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        break;
      }

      v23 = ~v21;
      v24 = *(a2 + 48);
      while (1)
      {
        v26 = v24 + 40 * v22;
        if (*v26 == v14)
        {
          v28 = *(v26 + 24);
          v27 = *(v26 + 32);
          v29 = *(v26 + 8) == v16 && *(v26 + 16) == v15;
          if (v29 || (sub_1E5A2C114()) && v28 == v17 && v27 == v18)
          {
            break;
          }
        }

        v22 = (v22 + 1) & v23;
        if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v8 = v30;
      result = v31;
      v7 = v32;
      if (!v32)
      {
        goto LABEL_8;
      }
    }

LABEL_30:

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
      v32 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B7378(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
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
  if (!v7)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v58 = v4;
    v10 = __clz(__rbit64(v7));
    v55 = (v7 - 1) & v7;
    v56 = v8;
LABEL_13:
    v57 = v3;
    v59 = result;
    v13 = (*(result + 48) + 56 * (v10 | (v3 << 6)));
    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[3];
    v18 = v13[4];
    v17 = v13[5];
    v19 = v13[6];
    v20 = *(v2 + 40);
    v76 = *v13;
    v78 = *v13;
    v79 = v14;
    v67 = v15;
    v80 = v15;
    v81 = v16;
    v82 = v18;
    v83 = v17;
    v60 = v17;
    v84 = v19;
    sub_1E5A2C1B4();
    v65 = v19;

    v69 = v18;

    WorkoutPlanFilterConfiguration.hash(into:)(v77);
    result = sub_1E5A2C204();
    v21 = -1 << *(v2 + 32);
    v22 = result & ~v21;
    if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_73:

      return 0;
    }

    v75 = ~v21;
    v66 = (v14 + 40);
    v64 = v16;
    while (1)
    {
      v23 = (*(v2 + 48) + 56 * v22);
      if (*v23 != v76)
      {
        goto LABEL_16;
      }

      v74 = v23[1];
      v24 = *(v74 + 16);
      if (v24 != *(v14 + 16))
      {
        goto LABEL_16;
      }

      v25 = v23[2];
      v26 = v23[4];
      v72 = v26;
      v73 = v23[3];
      v70 = v23[5];
      if (v24)
      {
        v27 = v74 == v14;
      }

      else
      {
        v27 = 1;
      }

      v71 = v23[6];
      if (!v27)
      {
        v34 = (v74 + 40);
        v35 = v66;
        while (v24)
        {
          result = *(v34 - 1);
          if (result != *(v35 - 1) || *v34 != *v35)
          {
            result = sub_1E5A2C114();
            if ((result & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          v34 += 2;
          v35 += 2;
          if (!--v24)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_76;
      }

LABEL_24:
      if (v73)
      {
        if (!v16)
        {
          goto LABEL_16;
        }

        if (v25 != v67 || v73 != v16)
        {
          result = sub_1E5A2C114();
          if ((result & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }

      else if (v16)
      {
        goto LABEL_16;
      }

      if (v72 == v69)
      {
        break;
      }

      if (*(v72 + 16) == *(v69 + 16))
      {
        v61 = v14;
        v62 = v9;
        v63 = v2;
        v28 = v72;
        v29 = 1 << *(v72 + 32);
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        else
        {
          v30 = -1;
        }

        v31 = v30 & *(v72 + 64);
        v32 = (v29 + 63) >> 6;

        v33 = 0;
        while (v31)
        {
          v37 = __clz(__rbit64(v31));
          v68 = (v31 - 1) & v31;
LABEL_51:
          v41 = 16 * (v37 | (v33 << 6));
          v42 = (*(v28 + 48) + v41);
          v43 = *v42;
          v44 = v42[1];
          v45 = (*(v28 + 56) + v41);
          v46 = *v45;
          v47 = v45[1];

          v48 = sub_1E58EF508(v43, v44);
          v50 = v49;

          if ((v50 & 1) == 0)
          {

            goto LABEL_68;
          }

          v51 = (*(v69 + 56) + 16 * v48);
          if (*v51 == v46 && v51[1] == v47)
          {

            v28 = v72;
            v31 = v68;
          }

          else
          {
            v53 = sub_1E5A2C114();

            v28 = v72;
            v31 = v68;
            if ((v53 & 1) == 0)
            {

LABEL_68:

              v9 = v62;
              v2 = v63;
              v14 = v61;
              v16 = v64;
              goto LABEL_16;
            }
          }
        }

        v38 = v33;
        v9 = v62;
        v2 = v63;
        v14 = v61;
        v39 = v71;
        while (1)
        {
          v33 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v33 >= v32)
          {
            goto LABEL_59;
          }

          v40 = *(v72 + 64 + 8 * v33);
          ++v38;
          if (v40)
          {
            v37 = __clz(__rbit64(v40));
            v68 = (v40 - 1) & v40;
            goto LABEL_51;
          }
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_16:
      v22 = (v22 + 1) & v75;
      if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    v39 = v71;

LABEL_59:
    if (!v39)
    {
      v16 = v64;
      if (!v65)
      {
        goto LABEL_69;
      }

LABEL_66:

      goto LABEL_16;
    }

    v16 = v64;
    if (!v65)
    {
      goto LABEL_66;
    }

    if (v70 != v60 || v39 != v65)
    {
      v54 = sub_1E5A2C114();

      if (v54)
      {
        goto LABEL_70;
      }

      goto LABEL_16;
    }

LABEL_69:

LABEL_70:

    v4 = v58;
    result = v59;
    v8 = v56;
    v3 = v57;
    v7 = v55;
    if (v55)
    {
      continue;
    }

    break;
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
      v56 = v8;
      v58 = v4;
      v10 = __clz(__rbit64(v12));
      v55 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_1E58B79BC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v27 = result + 56;
  v3 = 1 << *(result + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  v31 = a2;
  v32 = a2 + 56;
  v28 = v6;
  v29 = result;
  if (v5)
  {
    while (1)
    {
      v7 = __clz(__rbit64(v5));
      v30 = (v5 - 1) & v5;
LABEL_13:
      v10 = (*(result + 48) + 32 * (v7 | (v2 << 6)));
      v12 = *v10;
      v11 = v10[1];
      v14 = v10[2];
      v13 = v10[3];
      v15 = *(a2 + 40);
      v16 = a2;
      sub_1E5A2C1B4();

      sub_1E5A2BB74();
      sub_1E5A2BB74();
      v17 = sub_1E5A2C204();
      v18 = -1 << *(v16 + 32);
      v19 = v17 & ~v18;
      if (((*(v32 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        break;
      }

      v20 = ~v18;
      v21 = *(v31 + 48);
      while (1)
      {
        v22 = (v21 + 32 * v19);
        v23 = v22[2];
        v24 = v22[3];
        v25 = *v22 == v12 && v22[1] == v11;
        if (v25 || (sub_1E5A2C114() & 1) != 0)
        {
          v26 = v23 == v14 && v24 == v13;
          if (v26 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }
        }

        v19 = (v19 + 1) & v20;
        if (((*(v32 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v5 = v30;
      a2 = v31;
      v6 = v28;
      result = v29;
      if (!v30)
      {
        goto LABEL_8;
      }
    }

LABEL_29:

    return 0;
  }

LABEL_8:
  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v6)
    {
      return 1;
    }

    v9 = *(v27 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v30 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B7BF8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v43 = a2 + 56;
  v35 = result + 56;
  v36 = result;
  v39 = a2;
  v34 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v37 = v2;
    v38 = (v6 - 1) & v6;
    v8 = __clz(__rbit64(v6)) | (v2 << 6);
LABEL_13:
    v12 = (*(result + 48) + 48 * v8);
    v14 = *v12;
    v13 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    v17 = v12[5];
    v41 = v12[4];
    v18 = a2;
    v19 = *(a2 + 40);
    sub_1E5A2C1B4();

    v42 = v17;

    sub_1E5A2BB74();
    v40 = v15;
    if (v16)
    {
      sub_1E5A2C1D4();
      v20 = v16;
      sub_1E5A2BB74();
    }

    else
    {
      v20 = 0;
      sub_1E5A2C1D4();
    }

    sub_1E5A2BB74();
    v21 = sub_1E5A2C204();
    v22 = -1 << *(v18 + 32);
    v23 = v21 & ~v22;
    if (((*(v43 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
LABEL_40:

      return 0;
    }

    v24 = ~v22;
    v25 = *(v39 + 48);
    while (1)
    {
      v26 = (v25 + 48 * v23);
      v27 = v26[2];
      v28 = v26[3];
      v29 = v26[4];
      v30 = v26[5];
      v31 = *v26 == v14 && v26[1] == v13;
      if (!v31 && (sub_1E5A2C114() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (v28)
      {
        break;
      }

      if (!v20)
      {
        goto LABEL_32;
      }

LABEL_19:
      v23 = (v23 + 1) & v24;
      if (((*(v43 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    if (!v20)
    {
      goto LABEL_19;
    }

    v32 = v27 == v40 && v28 == v20;
    if (!v32 && (sub_1E5A2C114() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_32:
    v33 = v29 == v41 && v30 == v42;
    if (!v33 && (sub_1E5A2C114() & 1) == 0)
    {
      goto LABEL_19;
    }

    v3 = v35;
    result = v36;
    v6 = v38;
    a2 = v39;
    v7 = v34;
    v2 = v37;
  }

  while (v38);
LABEL_8:
  v9 = v2;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v10);
    ++v9;
    if (v11)
    {
      v37 = v10;
      v38 = (v11 - 1) & v11;
      v8 = __clz(__rbit64(v11)) | (v10 << 6);
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B7EE0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v37 = a2 + 56;
  v31 = result + 56;
  v32 = result;
  v34 = a2;
  v30 = v7;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v33 = (v6 - 1) & v6;
LABEL_13:
      v11 = *(result + 48) + 40 * (v8 | (v2 << 6));
      v13 = *v11;
      v12 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      v16 = *(v11 + 32);
      v17 = *(a2 + 40);
      v18 = a2;
      sub_1E5A2C1B4();

      sub_1E5A2BB74();
      v36 = v14;
      sub_1E5A2BB74();
      v35 = v16;
      sub_1E5A2C1E4();
      v19 = sub_1E5A2C204();
      v20 = -1 << *(v18 + 32);
      v21 = v19 & ~v20;
      if (((*(v37 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        break;
      }

      v22 = ~v20;
      v23 = *(v34 + 48);
      while (1)
      {
        v24 = v23 + 40 * v21;
        v25 = *(v24 + 16);
        v26 = *(v24 + 24);
        v27 = *(v24 + 32);
        v28 = *v24 == v13 && *(v24 + 8) == v12;
        if (v28 || (sub_1E5A2C114() & 1) != 0)
        {
          v29 = v25 == v36 && v26 == v15;
          if (v29 || (sub_1E5A2C114()) && v27 == v35)
          {
            break;
          }
        }

        v21 = (v21 + 1) & v22;
        if (((*(v37 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v3 = v31;
      result = v32;
      v6 = v33;
      a2 = v34;
      v7 = v30;
      if (!v33)
      {
        goto LABEL_8;
      }
    }

LABEL_31:

    return 0;
  }

LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v33 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B8154(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
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
  v48 = a2 + 56;
  v41 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v37 = (v7 - 1) & v7;
LABEL_13:
    v40 = result;
    v12 = (*(result + 48) + 56 * (v9 | (v3 << 6)));
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    v17 = v12[4];
    v42 = v12[5];
    v18 = v12[6];
    v19 = *(v2 + 40);
    sub_1E5A2C1B4();

    v44 = v18;

    v49 = v13;
    sub_1E58B892C(v50, v13);
    v46 = v14;
    v47 = v15;
    sub_1E5A2BB74();
    v45 = v17;
    v38 = v3;
    v43 = v16;
    sub_1E5A2C1D4();
    if (v17)
    {
      sub_1E5A2BB74();
    }

    v39 = v4;
    sub_1E5A2BB74();
    v20 = sub_1E5A2C204();
    v21 = -1 << *(v2 + 32);
    v22 = v20 & ~v21;
    if (((*(v48 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_43:

      return 0;
    }

    v23 = ~v21;
    while (1)
    {
      v24 = v2;
      v25 = (*(v2 + 48) + 56 * v22);
      v26 = *v25;
      v27 = v25[1];
      v29 = v25[2];
      v28 = v25[3];
      v30 = v25[4];
      v31 = v25[5];
      v32 = v25[6];

      if ((sub_1E58B4D88(v26, v49) & 1) == 0 || (v27 == v46 ? (v33 = v29 == v47) : (v33 = 0), !v33 && (sub_1E5A2C114() & 1) == 0))
      {
LABEL_18:

        v2 = v24;
        goto LABEL_19;
      }

      if (v30)
      {
        if (!v45)
        {
          goto LABEL_18;
        }

        v34 = v28 == v43 && v30 == v45;
        if (!v34 && (sub_1E5A2C114() & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else if (v45)
      {
        goto LABEL_18;
      }

      if (v31 == v42 && v32 == v44)
      {
        break;
      }

      v36 = sub_1E5A2C114();

      v2 = v24;
      if (v36)
      {
        goto LABEL_40;
      }

LABEL_19:
      v22 = (v22 + 1) & v23;
      if (((*(v48 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v2 = v24;
LABEL_40:
    v3 = v38;
    v4 = v39;

    result = v40;
    v8 = v41;
    v7 = v37;
  }

  while (v37);
LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v37 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t WorkoutPlanModalityPreference.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_1E5A2BB74();
  sub_1E58B93C8(a1, v6);

  return sub_1E58B93C8(a1, v5);
}

uint64_t WorkoutPlanModalityPreference.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E58B93C8(v6, v4);
  sub_1E58B93C8(v6, v3);
  return sub_1E5A2C204();
}

uint64_t sub_1E58B85F0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E58B93C8(v6, v4);
  sub_1E58B93C8(v6, v3);
  return sub_1E5A2C204();
}

uint64_t sub_1E58B8660(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_1E5A2BB74();
  sub_1E58B93C8(a1, v6);

  return sub_1E58B93C8(a1, v5);
}

uint64_t sub_1E58B86B8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E58B93C8(v6, v4);
  sub_1E58B93C8(v6, v3);
  return sub_1E5A2C204();
}

uint64_t sub_1E58B8724(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1E5A2C114() & 1) == 0 || (sub_1E58B61B8(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1E58B61B8(v3, v4);
}

uint64_t sub_1E58B87B8(__int128 *a1, uint64_t a2)
{
  v19 = a1[2];
  v20 = a1[3];
  v21 = *(a1 + 8);
  v17 = *a1;
  v18 = a1[1];
  sub_1E5A2C204();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v16)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(a2 + 48) + 24 * (v11 | (v10 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    sub_1E5A2C1B4();
    MEMORY[0x1E6932DE0](v15);

    sub_1E5A2BB74();
    v16 = sub_1E5A2C204();
    result = sub_1E58BAAC0(v13, v14, v15);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1E6932DE0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B892C(__int128 *a1, uint64_t a2)
{
  v60 = sub_1E5A29D44();
  v63 = *(v60 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v46 - v8;
  v10 = sub_1E5A2A064();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v62 = &v46 - v16;
  v59 = type metadata accessor for WorkoutPlanArtwork();
  v58 = *(v59 - 8);
  v17 = *(v58 + 64);
  v18 = MEMORY[0x1EEE9AC00](v59);
  v64 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v46 - v20;
  v21 = a1[3];
  v67 = a1[2];
  v68 = v21;
  v69 = *(a1 + 8);
  v23 = *a1;
  v22 = a1[1];
  v46 = a1;
  v65 = v23;
  v66 = v22;
  v56 = sub_1E5A2C204();
  v24 = a2 + 56;
  v25 = 1 << *(a2 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a2 + 56);
  v28 = (v25 + 63) >> 6;
  v55 = (v11 + 48);
  v50 = (v11 + 32);
  v49 = (v11 + 8);
  v54 = (v63 + 48);
  v48 = (v63 + 32);
  v47 = (v63 + 8);
  v61 = a2;

  v30 = 0;
  v31 = 0;
  v52 = v10;
  while (v27)
  {
    v63 = v30;
    v37 = v62;
LABEL_13:
    v39 = v57;
    sub_1E58BAAD8(*(v61 + 48) + *(v58 + 72) * (__clz(__rbit64(v27)) | (v31 << 6)), v57);
    v40 = v39;
    v41 = v64;
    sub_1E58BAB3C(v40, v64);
    sub_1E5A2C1B4();
    sub_1E58BABA0(v41, v37, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
    if ((*v55)(v37, 1, v10) == 1)
    {
      sub_1E5A2C1D4();
    }

    else
    {
      v42 = v51;
      (*v50)(v51, v37, v10);
      sub_1E5A2C1D4();
      sub_1E58BAC64(&qword_1ECFFB5F0, MEMORY[0x1E699DB98]);
      sub_1E5A2BA44();
      (*v49)(v42, v10);
    }

    v43 = v59;
    v44 = *(v64 + *(v59 + 20));
    if (v44 <= 4)
    {
      *(v64 + *(v59 + 20));
    }

    sub_1E5A2BB74();

    sub_1E58BABA0(v64 + *(v43 + 24), v9, &qword_1ECFFB5E0, &qword_1E5A3AC70);
    v45 = v60;
    if ((*v54)(v9, 1, v60) == 1)
    {
      sub_1E5A2C1D4();
    }

    else
    {
      v32 = v9;
      v33 = v53;
      (*v48)(v53, v32, v45);
      sub_1E5A2C1D4();
      sub_1E58BAC64(&qword_1ECFFB5F8, MEMORY[0x1E6968FB0]);
      sub_1E5A2BA44();
      v34 = v33;
      v9 = v32;
      v10 = v52;
      (*v47)(v34, v45);
    }

    v35 = v63;
    v27 &= v27 - 1;
    v36 = sub_1E5A2C204();
    result = sub_1E58BAC08(v64);
    v30 = v36 ^ v35;
  }

  v37 = v62;
  while (1)
  {
    v38 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v38 >= v28)
    {

      return MEMORY[0x1E6932DE0](v30);
    }

    v27 = *(v24 + 8 * v38);
    ++v31;
    if (v27)
    {
      v63 = v30;
      v31 = v38;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B90BC(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  result = sub_1E5A2C204();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_1E5A2C1B4();
    MEMORY[0x1E6932DE0](v12);
    result = sub_1E5A2C204();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1E6932DE0](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B91E8(__int128 *a1, uint64_t a2)
{
  v28 = a1[2];
  v29 = a1[3];
  v30 = *(a1 + 8);
  v26 = *a1;
  v27 = a1[1];
  sub_1E5A2C204();
  v24 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v25 = v9;
LABEL_11:
    v13 = (*(v24 + 48) + ((v10 << 11) | (32 * __clz(__rbit64(v6)))));
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = v13[3];
    sub_1E5A2C1B4();

    sub_1E5A2BB74();
    MEMORY[0x1E6932DE0](*(v16 + 16));
    v18 = *(v16 + 16);
    if (v18)
    {
      v19 = (v16 + 32);
      do
      {
        v20 = *v19++;
        MEMORY[0x1E6932DE0](v20);
        --v18;
      }

      while (v18);
    }

    MEMORY[0x1E6932DE0](*(v17 + 16));
    v21 = *(v17 + 16);
    if (v21)
    {
      v22 = (v17 + 32);
      do
      {
        v23 = *v22++;
        MEMORY[0x1E6932DE0](v23);
        --v21;
      }

      while (v21);
    }

    v6 &= v6 - 1;
    v11 = sub_1E5A2C204();

    v9 = v11 ^ v25;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return MEMORY[0x1E6932DE0](v9);
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v25 = v9;
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B93C8(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_1E5A2C204();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_1E5A2C1B4();

    sub_1E5A2BB74();
    v15 = sub_1E5A2C204();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1E6932DE0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E58B9528()
{
  result = qword_1ECFFB5C0;
  if (!qword_1ECFFB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB5C0);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E58B9588(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E58B95D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutPlanModalityPreference.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPlanModalityPreference.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E58B9764()
{
  result = qword_1ECFFB5C8;
  if (!qword_1ECFFB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB5C8);
  }

  return result;
}

unint64_t sub_1E58B97BC()
{
  result = qword_1ECFFB5D0;
  if (!qword_1ECFFB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB5D0);
  }

  return result;
}

unint64_t sub_1E58B9814()
{
  result = qword_1ECFFB5D8;
  if (!qword_1ECFFB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB5D8);
  }

  return result;
}

uint64_t sub_1E58B9868(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v20[13] = *(a1 + 32);
  *&v20[15] = v3;
  v20[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v20[9] = *a1;
  *&v20[11] = v4;
  sub_1E5A2C204();
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= v19)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = (*(a2 + 48) + ((v12 << 11) | (32 * v13)));
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = v14[3];
    sub_1E5A2C1B4();

    sub_1E5A2BB74();
    sub_1E58B93C8(v20, v17);
    sub_1E58B93C8(v20, v18);
    v19 = sub_1E5A2C204();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x1E6932DE0](v10);
    }

    v7 = *(a2 + 56 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B9A00(__int128 *a1, uint64_t a2)
{
  v28 = a1[2];
  v29 = a1[3];
  v30 = *(a1 + 8);
  v26 = *a1;
  v27 = a1[1];
  sub_1E5A2C204();
  v23 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_8:
      v12 = *(v23 + 48) + 48 * (__clz(__rbit64(v6)) | (v10 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 24);
      v25 = *(v12 + 16);
      v16 = *(v12 + 32);
      v17 = *(v12 + 40);
      sub_1E5A2C1B4();
      v24 = v9;
      if (v17 <= 3)
      {
        if (v17 > 1)
        {
          if (v17 == 2)
          {
            v18 = 2;
          }

          else
          {
            v18 = 3;
          }
        }

        else
        {
          if (v17)
          {
            MEMORY[0x1E6932DE0](1);
            if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v19 = v13;
            }

            else
            {
              v19 = 0;
            }

            MEMORY[0x1E6932E10](v19);

            sub_1E5A2BB74();
            if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v20 = v15;
            }

            else
            {
              v20 = 0;
            }

            MEMORY[0x1E6932E10](v20);
            if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v21 = v16;
            }

            else
            {
              v21 = 0;
            }

            MEMORY[0x1E6932E10](v21);
            goto LABEL_35;
          }

          v18 = 0;
        }

        goto LABEL_34;
      }

      if (v17 <= 5)
      {
        if (v17 == 4)
        {
          v18 = 4;
        }

        else
        {
          v18 = 5;
        }

        goto LABEL_34;
      }

      if (v17 == 6)
      {
        break;
      }

      if (v17 == 7)
      {
        v18 = 7;
LABEL_34:
        MEMORY[0x1E6932DE0](v18);

        sub_1E5A2BB74();
        goto LABEL_35;
      }

      MEMORY[0x1E6932DE0](8);
      sub_1E5A2BB74();

LABEL_35:
      v6 &= v6 - 1;
      v22 = sub_1E5A2C204();
      result = sub_1E58BACAC(v13, v14, v25, v15, v16, v17);
      v9 = v22 ^ v24;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    v18 = 6;
    goto LABEL_34;
  }

LABEL_4:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1E6932DE0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B9D88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v25[13] = *(a1 + 32);
  *&v25[15] = v3;
  v25[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v25[9] = *a1;
  *&v25[11] = v4;
  sub_1E5A2C204();
  v22 = a2;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  while (v8)
  {
    v24 = v11;
LABEL_11:
    v15 = (*(v22 + 48) + 56 * (__clz(__rbit64(v8)) | (v12 << 6)));
    v17 = *v15;
    v16 = v15[1];
    v19 = v15[2];
    v18 = v15[3];
    v20 = v15[4];
    v23 = v15[5];
    v21 = v15[6];
    sub_1E5A2C1B4();

    sub_1E58B892C(v25, v17);
    sub_1E5A2BB74();
    sub_1E5A2C1D4();
    if (v20)
    {
      sub_1E5A2BB74();
    }

    v8 &= v8 - 1;
    sub_1E5A2BB74();
    v13 = sub_1E5A2C204();

    v11 = v13 ^ v24;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return MEMORY[0x1E6932DE0](v11);
    }

    v8 = *(v5 + 8 * v14);
    ++v12;
    if (v8)
    {
      v24 = v11;
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B9F70(__int128 *a1, uint64_t a2)
{
  v23 = a1[2];
  v24 = a1[3];
  v25 = *(a1 + 8);
  v21 = *a1;
  v22 = a1[1];
  sub_1E5A2C204();
  v20 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= v19)
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = *(v20 + 48) + 40 * (v12 | (v11 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
    v18 = *(v13 + 32);
    sub_1E5A2C1B4();

    sub_1E5A2BB74();
    sub_1E5A2BB74();
    sub_1E5A2C1E4();
    v19 = sub_1E5A2C204();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1E6932DE0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58BA100(__int128 *a1, uint64_t a2)
{
  v24 = a1[2];
  v25 = a1[3];
  v26 = *(a1 + 8);
  v22 = *a1;
  v23 = a1[1];
  sub_1E5A2C204();
  v20 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v21 = v9;
LABEL_11:
    v13 = (*(v20 + 48) + 48 * (__clz(__rbit64(v6)) | (v10 << 6)));
    v14 = *v13;
    v15 = v13[1];
    v17 = v13[2];
    v16 = v13[3];
    v19 = v13[4];
    v18 = v13[5];
    sub_1E5A2C1B4();

    sub_1E5A2BB74();
    sub_1E5A2C1D4();
    if (v16)
    {
      sub_1E5A2BB74();
    }

    v6 &= v6 - 1;
    sub_1E5A2BB74();
    v11 = sub_1E5A2C204();

    v9 = v11 ^ v21;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return MEMORY[0x1E6932DE0](v9);
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v21 = v9;
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58BA2C4(__int128 *a1, uint64_t a2)
{
  v50 = a1[2];
  v51 = a1[3];
  v52 = *(a1 + 8);
  v48 = *a1;
  v49 = a1[1];
  sub_1E5A2C204();
  v41 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  v39 = v7;
  v40 = a2 + 56;
  while (v6)
  {
LABEL_11:
    v13 = (*(v41 + 48) + 56 * (__clz(__rbit64(v6)) | (v10 << 6)));
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[3];
    v46 = v13[2];
    v17 = v13[4];
    v42 = v13[5];
    v18 = v13[6];
    sub_1E5A2C1B4();
    MEMORY[0x1E6932DE0](v14);
    MEMORY[0x1E6932DE0](*(v15 + 16));
    v19 = *(v15 + 16);
    v43 = v18;
    if (v19)
    {

      v20 = (v15 + 40);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;

        sub_1E5A2BB74();

        v20 += 2;
        --v19;
      }

      while (v19);
    }

    else
    {
    }

    v44 = v9;
    sub_1E5A2C1D4();
    if (v16)
    {
      sub_1E5A2BB74();
    }

    v6 &= v6 - 1;
    v23 = v17 + 64;
    v24 = 1 << *(v17 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(v17 + 64);
    v27 = (v24 + 63) >> 6;
    v45 = v17;

    v28 = 0;
    for (i = 0; v26; v28 = result ^ v47)
    {
      v47 = v28;
      v30 = i;
      v31 = v45;
LABEL_28:
      v32 = *(v31 + 48);
      v33 = (v30 << 10) | (16 * __clz(__rbit64(v26)));
      v34 = *(v32 + v33);
      v35 = *(v32 + v33 + 8);
      v26 &= v26 - 1;
      v36 = (*(v31 + 56) + v33);
      v37 = *v36;
      v38 = v36[1];

      sub_1E5A2BB74();

      sub_1E5A2BB74();

      result = sub_1E5A2C204();
    }

    v31 = v45;
    while (1)
    {
      v30 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v30 >= v27)
      {
        break;
      }

      v26 = *(v23 + 8 * v30);
      ++i;
      if (v26)
      {
        v47 = v28;
        i = v30;
        goto LABEL_28;
      }
    }

    MEMORY[0x1E6932DE0](v28);
    sub_1E5A2C1D4();
    if (v43)
    {
      sub_1E5A2BB74();
    }

    v7 = v39;
    v3 = v40;
    v11 = sub_1E5A2C204();

    v9 = v11 ^ v44;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return MEMORY[0x1E6932DE0](v9);
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1E58BA66C(__int128 *a1, uint64_t a2)
{
  v24 = a1[2];
  v25 = a1[3];
  v26 = *(a1 + 8);
  v22 = *a1;
  v23 = a1[1];
  sub_1E5A2C204();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v21)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(a2 + 48) + 40 * (v11 | (v10 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = *(v12 + 32);
    sub_1E5A2C1B4();
    if (v13 == 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v13;
    }

    MEMORY[0x1E6932E10](*&v18);

    sub_1E5A2BB74();
    if (v16 == 0.0)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = v16;
    }

    MEMORY[0x1E6932E10](*&v19);
    if (v17 == 0.0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v17;
    }

    MEMORY[0x1E6932E10](*&v20);
    v21 = sub_1E5A2C204();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1E6932DE0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58BA820(__int128 *a1, uint64_t a2)
{
  v20 = a1[2];
  v21 = a1[3];
  v22 = *(a1 + 8);
  v18 = *a1;
  v19 = a1[1];
  sub_1E5A2C204();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v17)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 11) | (32 * v11)));
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    sub_1E5A2C1B4();

    sub_1E5A2BB74();
    sub_1E5A2BB74();
    v17 = sub_1E5A2C204();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1E6932DE0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58BA9A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001E5A45E20 == a2;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5A45E40 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5A45E60 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E58BAAC0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1E58BAAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanArtwork();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58BAB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanArtwork();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58BABA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E58BAC08(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanArtwork();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E58BAC64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E58BACAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v6 = a6 - 2 < 6 || a6 == 0;
  if (v6 || a6 == 1)
  {
  }

  return result;
}

uint64_t sub_1E58BACE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v6 = a6 - 2 < 6 || a6 == 0;
  if (v6 || a6 == 1)
  {
  }

  return result;
}

uint64_t sub_1E58BAD14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

FitnessWorkoutPlan::WorkoutPlanCatalogModalityKind_optional __swiftcall WorkoutPlanCatalogModalityKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E5A2BF34();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WorkoutPlanCatalogModalityKind.rawValue.getter()
{
  result = 0x436C7566646E694DLL;
  switch(*v0)
  {
    case 1:
      result = 1701998403;
      break;
    case 2:
      v2 = 1818458435;
      goto LABEL_11;
    case 3:
      result = 0x65636E6144;
      break;
    case 4:
      result = 7238994;
      break;
    case 5:
      v2 = 1802264919;
LABEL_11:
      result = v2 | 0x676E6900000000;
      break;
    case 6:
      result = 1414089032;
      break;
    case 7:
      result = 0x69786F626B63696BLL;
      break;
    case 8:
      result = 0x697461746964654DLL;
      break;
    case 9:
      result = 0x736574616C6950;
      break;
    case 0xA:
      result = 0x676E69776F52;
      break;
    case 0xB:
      result = 0x6874676E65727453;
      break;
    case 0xC:
      result = 0x6C696D6461657254;
      break;
    case 0xD:
      result = 1634168665;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E58BAF4C()
{
  result = qword_1ECFFB628;
  if (!qword_1ECFFB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB628);
  }

  return result;
}

uint64_t sub_1E58BAFA0()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  WorkoutPlanCatalogModalityKind.rawValue.getter();
  sub_1E5A2BB74();

  return sub_1E5A2C204();
}

uint64_t sub_1E58BB008()
{
  v2 = *v0;
  WorkoutPlanCatalogModalityKind.rawValue.getter();
  sub_1E5A2BB74();
}

uint64_t sub_1E58BB06C()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  WorkoutPlanCatalogModalityKind.rawValue.getter();
  sub_1E5A2BB74();

  return sub_1E5A2C204();
}

uint64_t sub_1E58BB0DC@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutPlanCatalogModalityKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1E58BB108()
{
  result = qword_1ECFFB630;
  if (!qword_1ECFFB630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB638, &qword_1E5A2CE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB630);
  }

  return result;
}

uint64_t sub_1E58BB22C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = WorkoutPlanCatalogModalityKind.rawValue.getter();
  v4 = v3;
  if (v2 == WorkoutPlanCatalogModalityKind.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E5A2C114();
  }

  return v7 & 1;
}

uint64_t getEnumTagSinglePayload for WorkoutPlanCatalogModalityKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPlanCatalogModalityKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E58BB418()
{
  result = qword_1ECFFB640;
  if (!qword_1ECFFB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB640);
  }

  return result;
}

uint64_t sub_1E58BB490(uint64_t a1)
{
  v2 = sub_1E58BBA04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BB4CC(uint64_t a1)
{
  v2 = sub_1E58BBA04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BB508()
{
  if (*v0)
  {
    result = 0x657669746361;
  }

  else
  {
    result = 1701602409;
  }

  *v0;
  return result;
}

uint64_t sub_1E58BB538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E58BB610(uint64_t a1)
{
  v2 = sub_1E58BB9B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BB64C(uint64_t a1)
{
  v2 = sub_1E58BB9B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BB688(uint64_t a1)
{
  v2 = sub_1E58BBA58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BB6C4(uint64_t a1)
{
  v2 = sub_1E58BBA58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlanCompletionMonitorState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB648, &qword_1E5A2CF80);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB650, &qword_1E5A2CF88);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB658, &qword_1E5A2CF90);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58BB9B0();
  sub_1E5A2C224();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E58BBA04();
    v18 = v22;
    sub_1E5A2C024();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E58BBA58();
    sub_1E5A2C024();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1E58BB9B0()
{
  result = qword_1ECFFB660;
  if (!qword_1ECFFB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB660);
  }

  return result;
}

unint64_t sub_1E58BBA04()
{
  result = qword_1ECFFB668;
  if (!qword_1ECFFB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB668);
  }

  return result;
}

unint64_t sub_1E58BBA58()
{
  result = qword_1ECFFB670;
  if (!qword_1ECFFB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB670);
  }

  return result;
}

uint64_t PlanCompletionMonitorState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB678, &qword_1E5A2CF98);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB680, &qword_1E5A2CFA0);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB688, &qword_1E5A2CFA8);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58BB9B0();
  v17 = v37;
  sub_1E5A2C214();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_1E5A2C004();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_1E5A2BE84();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v25 = &type metadata for PlanCompletionMonitorState;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_1E58BBA04();
    sub_1E5A2BF44();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_1E58BBA58();
    sub_1E5A2BF44();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_1E58BBF00()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 31;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E58BBF34()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E58BBF68()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E58BBF9C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E58BBFD0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E58BC004()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E58BC038()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E58BC06C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1E58BC098()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PlanCompletionMonitorState.hashValue.getter()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v1);
  return sub_1E5A2C204();
}

unint64_t sub_1E58BC174()
{
  result = qword_1ECFFB698;
  if (!qword_1ECFFB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB698);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CreatePersonalizedWorkoutPlanButtonAction.CreatePersonalizedWorkoutPlanTappedCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CreatePersonalizedWorkoutPlanButtonAction.CreatePersonalizedWorkoutPlanTappedCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E58BC33C()
{
  result = qword_1ECFFB6A0;
  if (!qword_1ECFFB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6A0);
  }

  return result;
}

unint64_t sub_1E58BC394()
{
  result = qword_1ECFFB6A8;
  if (!qword_1ECFFB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6A8);
  }

  return result;
}

unint64_t sub_1E58BC3EC()
{
  result = qword_1ECFFB6B0;
  if (!qword_1ECFFB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6B0);
  }

  return result;
}

unint64_t sub_1E58BC444()
{
  result = qword_1ECFFB6B8;
  if (!qword_1ECFFB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6B8);
  }

  return result;
}

unint64_t sub_1E58BC49C()
{
  result = qword_1ECFFB6C0;
  if (!qword_1ECFFB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6C0);
  }

  return result;
}

unint64_t sub_1E58BC4F4()
{
  result = qword_1ECFFB6C8;
  if (!qword_1ECFFB6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6C8);
  }

  return result;
}

unint64_t sub_1E58BC54C()
{
  result = qword_1ECFFB6D0;
  if (!qword_1ECFFB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6D0);
  }

  return result;
}

uint64_t WorkoutPlanFilterResult.init(bodyFocusIdentifiers:durationIdentifiers:equipmentIdentifiers:modalityIdentifiers:musicGenreIdentifiers:skillLevelIdentifiers:themeIdentifiers:trainerIdentifiers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

unint64_t sub_1E58BC630()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  v3 = 0xD000000000000010;
  if (v2 != 6)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0 <= 5u)
  {
    v3 = 0xD000000000000015;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 > 1u)
  {
    v1 = v4;
  }

  if (*v0 <= 3u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_1E58BC704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E58BD950(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E58BC738(uint64_t a1)
{
  v2 = sub_1E58BCB0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BC774(uint64_t a1)
{
  v2 = sub_1E58BCB0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanFilterResult.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB6D8, &unk_1E5A2D320);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v23 = v1[2];
  v24 = v9;
  v12 = v1[5];
  v21 = v1[4];
  v22 = v11;
  v13 = v1[7];
  v19 = v1[6];
  v20 = v12;
  v18 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58BCB0C();

  sub_1E5A2C224();
  v26 = v10;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5A0, &qword_1E5A3F610);
  sub_1E58B4A18(&qword_1ECFFB5A8);
  v15 = v4;
  sub_1E5A2C0B4();
  if (v2)
  {
  }

  else
  {
    v16 = v23;

    v26 = v24;
    v25 = 1;
    sub_1E5A2C0B4();
    v26 = v16;
    v25 = 2;
    sub_1E5A2C0B4();
    v26 = v22;
    v25 = 3;
    sub_1E5A2C0B4();
    v26 = v21;
    v25 = 4;
    sub_1E5A2C0B4();
    v26 = v20;
    v25 = 5;
    sub_1E5A2C0B4();
    v26 = v19;
    v25 = 6;
    sub_1E5A2C0B4();
    v26 = v18;
    v25 = 7;
    sub_1E5A2C0B4();
  }

  return (*(v5 + 8))(v8, v15);
}

unint64_t sub_1E58BCB0C()
{
  result = qword_1ECFFB6E0;
  if (!qword_1ECFFB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6E0);
  }

  return result;
}

uint64_t WorkoutPlanFilterResult.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB6E8, &qword_1E5A2D330);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58BCB0C();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5A0, &qword_1E5A3F610);
  LOBYTE(v32) = 0;
  sub_1E58B4A18(&qword_1ECFFB5B8);
  sub_1E5A2BFE4();
  v30 = v36[0];
  LOBYTE(v32) = 1;
  sub_1E5A2BFE4();
  v29 = v36[0];
  LOBYTE(v32) = 2;
  sub_1E5A2BFE4();
  v28 = v36[0];
  LOBYTE(v32) = 3;
  sub_1E5A2BFE4();
  v27 = v36[0];
  LOBYTE(v32) = 4;
  sub_1E5A2BFE4();
  v26 = v36[0];
  LOBYTE(v32) = 5;
  v25 = 0;
  sub_1E5A2BFE4();
  v24 = v36[0];
  LOBYTE(v32) = 6;
  sub_1E5A2BFE4();
  v23 = v36[0];
  v37 = 7;
  sub_1E5A2BFE4();
  (*(v6 + 8))(v9, v5);
  v25 = v38;
  v12 = v29;
  v11 = v30;
  *&v32 = v30;
  *(&v32 + 1) = v29;
  v13 = v28;
  v14 = v27;
  *&v33 = v28;
  *(&v33 + 1) = v27;
  v15 = v26;
  v16 = v24;
  *&v34 = v26;
  *(&v34 + 1) = v24;
  v17 = v23;
  *&v35 = v23;
  *(&v35 + 1) = v38;
  v18 = v33;
  v19 = v31;
  *v31 = v32;
  v19[1] = v18;
  v20 = v35;
  v19[2] = v34;
  v19[3] = v20;
  sub_1E58BD154(&v32, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v11;
  v36[1] = v12;
  v36[2] = v13;
  v36[3] = v14;
  v36[4] = v15;
  v36[5] = v16;
  v36[6] = v17;
  v36[7] = v25;
  return sub_1E58BD18C(v36);
}

uint64_t WorkoutPlanFilterResult.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v9 = v1[7];
  sub_1E58B93C8(a1, v3);
  sub_1E58B93C8(a1, v4);
  sub_1E58B93C8(a1, v5);
  sub_1E58B93C8(a1, v6);
  sub_1E58B93C8(a1, v7);
  sub_1E58B93C8(a1, v8);
  sub_1E58B93C8(a1, v10);

  return sub_1E58B93C8(a1, v9);
}

uint64_t WorkoutPlanFilterResult.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_1E5A2C1B4();
  sub_1E58B93C8(v10, v1);
  sub_1E58B93C8(v10, v2);
  sub_1E58B93C8(v10, v3);
  sub_1E58B93C8(v10, v4);
  sub_1E58B93C8(v10, v5);
  sub_1E58B93C8(v10, v6);
  sub_1E58B93C8(v10, v8);
  sub_1E58B93C8(v10, v7);
  return sub_1E5A2C204();
}

uint64_t sub_1E58BD360(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v9 = v1[7];
  sub_1E58B93C8(a1, v3);
  sub_1E58B93C8(a1, v4);
  sub_1E58B93C8(a1, v5);
  sub_1E58B93C8(a1, v6);
  sub_1E58B93C8(a1, v7);
  sub_1E58B93C8(a1, v8);
  sub_1E58B93C8(a1, v10);

  return sub_1E58B93C8(a1, v9);
}

uint64_t sub_1E58BD40C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_1E5A2C1B4();
  sub_1E58B93C8(v10, v1);
  sub_1E58B93C8(v10, v2);
  sub_1E58B93C8(v10, v3);
  sub_1E58B93C8(v10, v4);
  sub_1E58B93C8(v10, v5);
  sub_1E58B93C8(v10, v6);
  sub_1E58B93C8(v10, v8);
  sub_1E58B93C8(v10, v7);
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan0bC12FilterResultV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v16 = a1[6];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v14 = a1[7];
  v15 = a2[6];
  v13 = a2[7];
  if ((sub_1E58B61B8(*a1, *a2) & 1) == 0 || (sub_1E58B61B8(v2, v7) & 1) == 0 || (sub_1E58B61B8(v3, v8) & 1) == 0 || (sub_1E58B61B8(v4, v9) & 1) == 0 || (sub_1E58B61B8(v6, v11) & 1) == 0 || (sub_1E58B61B8(v5, v10) & 1) == 0 || (sub_1E58B61B8(v16, v15) & 1) == 0)
  {
    return 0;
  }

  return sub_1E58B61B8(v14, v13);
}

unint64_t sub_1E58BD5E8()
{
  result = qword_1ECFFB6F0;
  if (!qword_1ECFFB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6F0);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E58BD650(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1E58BD698(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutPlanFilterResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPlanFilterResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E58BD84C()
{
  result = qword_1ECFFB6F8;
  if (!qword_1ECFFB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB6F8);
  }

  return result;
}

unint64_t sub_1E58BD8A4()
{
  result = qword_1ECFFB700;
  if (!qword_1ECFFB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB700);
  }

  return result;
}

unint64_t sub_1E58BD8FC()
{
  result = qword_1ECFFB708;
  if (!qword_1ECFFB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB708);
  }

  return result;
}

uint64_t sub_1E58BD950(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001E5A45EB0 == a2;
  if (v3 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5A45ED0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5A45EF0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5A45F10 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5A45F30 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5A45F50 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5A45F70 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A45F90 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1E58BDBE4(char a1)
{
  result = 0x684374696D6D6F63;
  switch(a1)
  {
    case 1:
    case 15:
    case 18:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x63416574656C6564;
      break;
    case 6:
      result = 0x567373696D736964;
      break;
    case 7:
      result = 0x61437265746C6966;
      break;
    case 8:
    case 13:
      result = 0xD000000000000017;
      break;
    case 9:
    case 27:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD00000000000001CLL;
      break;
    case 11:
    case 17:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x45746E6573657270;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 16:
    case 22:
      result = 0xD000000000000015;
      break;
    case 19:
    case 24:
      result = 0xD000000000000019;
      break;
    case 20:
      result = 0xD000000000000013;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 25:
      result = 0x6353657461647075;
      break;
    case 26:
      result = 0xD00000000000001ALL;
      break;
    case 28:
      result = 0x4164694477656976;
      break;
    case 29:
      result = 0xD000000000000011;
      break;
    case 30:
      result = 0x537961646B656577;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_1E58BDF28(uint64_t a1)
{
  v2 = sub_1E58C3A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BDF64(uint64_t a1)
{
  v2 = sub_1E58C3A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BDFA0(uint64_t a1)
{
  v2 = sub_1E58C3A20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BDFDC(uint64_t a1)
{
  v2 = sub_1E58C3A20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E58CA53C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E58BE054(uint64_t a1)
{
  v2 = sub_1E58C2838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE090(uint64_t a1)
{
  v2 = sub_1E58C2838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE0CC(uint64_t a1)
{
  v2 = sub_1E58C39CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE108(uint64_t a1)
{
  v2 = sub_1E58C39CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7472656C417369 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5A2C114();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E58BE1EC(uint64_t a1)
{
  v2 = sub_1E58C3978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE228(uint64_t a1)
{
  v2 = sub_1E58C3978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE264(uint64_t a1)
{
  v2 = sub_1E58C3924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE2A0(uint64_t a1)
{
  v2 = sub_1E58C3924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE2DC(uint64_t a1)
{
  v2 = sub_1E58C38D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE318(uint64_t a1)
{
  v2 = sub_1E58C38D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E58CAED8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E58BE390(uint64_t a1)
{
  v2 = sub_1E58C37D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE3CC(uint64_t a1)
{
  v2 = sub_1E58C37D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001E5A45E20 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E5A2C114();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E58BE4B8(uint64_t a1)
{
  v2 = sub_1E58C377C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE4F4(uint64_t a1)
{
  v2 = sub_1E58C377C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE530(uint64_t a1)
{
  v2 = sub_1E58C3728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE56C(uint64_t a1)
{
  v2 = sub_1E58C3728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE5B4(uint64_t a1)
{
  v2 = sub_1E58C36D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE5F0(uint64_t a1)
{
  v2 = sub_1E58C36D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE62C(uint64_t a1)
{
  v2 = sub_1E58C362C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE668(uint64_t a1)
{
  v2 = sub_1E58C362C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE6A4(uint64_t a1)
{
  v2 = sub_1E58C35D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE6E0(uint64_t a1)
{
  v2 = sub_1E58C35D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE71C(uint64_t a1)
{
  v2 = sub_1E58C3584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE758(uint64_t a1)
{
  v2 = sub_1E58C3584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE794(uint64_t a1)
{
  v2 = sub_1E58C3530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE7D0(uint64_t a1)
{
  v2 = sub_1E58C3530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE80C()
{
  if (*v0)
  {
    result = 0x726F727265;
  }

  else
  {
    result = 0x64696C61567369;
  }

  *v0;
  return result;
}

uint64_t sub_1E58BE844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64696C61567369 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E58BE91C(uint64_t a1)
{
  v2 = sub_1E58C3488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BE958(uint64_t a1)
{
  v2 = sub_1E58C3488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BE994()
{
  v1 = 0x7961646B656577;
  if (*v0 != 1)
  {
    v1 = 0x7865646E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746E6572727563;
  }
}

uint64_t sub_1E58BE9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E58CAFD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E58BEA1C(uint64_t a1)
{
  v2 = sub_1E58C33CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BEA58(uint64_t a1)
{
  v2 = sub_1E58C33CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BEA94(uint64_t a1)
{
  v2 = sub_1E58C32B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BEAD0(uint64_t a1)
{
  v2 = sub_1E58C32B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BEB0C(uint64_t a1)
{
  v2 = sub_1E58C3260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BEB48(uint64_t a1)
{
  v2 = sub_1E58C3260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BEB84(uint64_t a1)
{
  v2 = sub_1E58C320C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BEBC0(uint64_t a1)
{
  v2 = sub_1E58C320C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BEBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7974696C61646F6DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E58BECD0(uint64_t a1)
{
  v2 = sub_1E58C30BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BED0C(uint64_t a1)
{
  v2 = sub_1E58C30BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BED48(uint64_t a1)
{
  v2 = sub_1E58C2F6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BED84(uint64_t a1)
{
  v2 = sub_1E58C2F6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BEDC0(uint64_t a1)
{
  v2 = sub_1E58C2FC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BEDFC(uint64_t a1)
{
  v2 = sub_1E58C2FC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BEE38()
{
  v1 = *v0;
  v2 = 0x7961646B656577;
  v3 = 0x76654C6C6C696B73;
  if (v1 != 5)
  {
    v3 = 0x656D656874;
  }

  v4 = 0x75636F4679646F62;
  if (v1 != 3)
  {
    v4 = 0x6E656D7069757165;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x6E6F697461727564;
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

uint64_t sub_1E58BEF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E58CB0F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E58BEF4C(uint64_t a1)
{
  v2 = sub_1E58C2D34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BEF88(uint64_t a1)
{
  v2 = sub_1E58C2D34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BEFC4(uint64_t a1)
{
  v2 = sub_1E58C2C8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BF000(uint64_t a1)
{
  v2 = sub_1E58C2C8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BF03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001E5A45E20 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E5A2C114();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1E58BF120(uint64_t a1)
{
  v2 = sub_1E58C2BE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BF15C(uint64_t a1)
{
  v2 = sub_1E58C2BE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BF198(uint64_t a1)
{
  v2 = sub_1E58C2B3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BF1D4(uint64_t a1)
{
  v2 = sub_1E58C2B3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BF210(uint64_t a1)
{
  v2 = sub_1E58C2A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BF24C(uint64_t a1)
{
  v2 = sub_1E58C2A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BF288(uint64_t a1)
{
  v2 = sub_1E58C2A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BF2C4(uint64_t a1)
{
  v2 = sub_1E58C2A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BF300(uint64_t a1)
{
  v2 = sub_1E58C29EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BF33C(uint64_t a1)
{
  v2 = sub_1E58C29EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BF378(uint64_t a1)
{
  v2 = sub_1E58C2998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BF3B4(uint64_t a1)
{
  v2 = sub_1E58C2998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58BF3F0()
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](0);
  return sub_1E5A2C204();
}

uint64_t sub_1E58BF434()
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](0);
  return sub_1E5A2C204();
}

uint64_t sub_1E58BF474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5A2C114();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E58BF4F4(uint64_t a1)
{
  v2 = sub_1E58C28F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58BF530(uint64_t a1)
{
  v2 = sub_1E58C28F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanCreationAction.encode(to:)(void *a1)
{
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB710, &qword_1E5A2D5A0);
  *(&v302 + 1) = *(v303 - 8);
  v2 = *(*(&v302 + 1) + 64);
  MEMORY[0x1EEE9AC00](v303);
  *&v302 = &v218 - v3;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB718, &qword_1E5A2D5A8);
  v300 = *(v301 - 8);
  v4 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v301);
  v299 = &v218 - v5;
  *(&v298 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB720, &qword_1E5A2D5B0);
  *&v298 = *(*(&v298 + 1) - 8);
  v6 = *(v298 + 64);
  MEMORY[0x1EEE9AC00](*(&v298 + 1));
  v297 = &v218 - v7;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB728, &qword_1E5A2D5B8);
  v291 = *(v293 - 8);
  v8 = *(v291 + 64);
  MEMORY[0x1EEE9AC00](v293);
  v288 = &v218 - v9;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB730, &qword_1E5A2D5C0);
  v292 = *(v294 - 8);
  v10 = *(v292 + 64);
  MEMORY[0x1EEE9AC00](v294);
  v289 = &v218 - v11;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB738, &qword_1E5A2D5C8);
  v286 = *(v287 - 8);
  v12 = *(v286 + 64);
  MEMORY[0x1EEE9AC00](v287);
  v285 = &v218 - v13;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB740, &qword_1E5A2D5D0);
  v295 = *(v296 - 8);
  v14 = *(v295 + 64);
  MEMORY[0x1EEE9AC00](v296);
  v290 = &v218 - v15;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB748, &qword_1E5A2D5D8);
  v281 = *(v282 - 8);
  v16 = *(v281 + 64);
  MEMORY[0x1EEE9AC00](v282);
  v278 = &v218 - v17;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB750, &qword_1E5A2D5E0);
  v305 = *(v304 - 8);
  v18 = *(v305 + 64);
  MEMORY[0x1EEE9AC00](v304);
  v306 = &v218 - v19;
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB758, &qword_1E5A2D5E8);
  v283 = *(v284 - 8);
  v20 = *(v283 + 64);
  MEMORY[0x1EEE9AC00](v284);
  v280 = &v218 - v21;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB760, &qword_1E5A2D5F0);
  v274 = *(v275 - 8);
  v22 = *(v274 + 64);
  MEMORY[0x1EEE9AC00](v275);
  v273 = &v218 - v23;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB768, &qword_1E5A2D5F8);
  v277 = *(v279 - 8);
  v24 = *(v277 + 64);
  MEMORY[0x1EEE9AC00](v279);
  v276 = &v218 - v25;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB770, &qword_1E5A2D600);
  v269 = *(v270 - 8);
  v26 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](v270);
  v267 = &v218 - v27;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB778, &qword_1E5A2D608);
  v263 = *(v265 - 8);
  v28 = *(v263 + 64);
  MEMORY[0x1EEE9AC00](v265);
  v262 = &v218 - v29;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB780, &qword_1E5A2D610);
  v264 = *(v266 - 8);
  v30 = *(v264 + 64);
  MEMORY[0x1EEE9AC00](v266);
  v261 = &v218 - v31;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB788, &qword_1E5A2D618);
  v271 = *(v272 - 8);
  v32 = *(v271 + 64);
  MEMORY[0x1EEE9AC00](v272);
  v268 = &v218 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v307 = &v218 - v36;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB798, &qword_1E5A2D628);
  v259 = *(v260 - 8);
  v37 = *(v259 + 64);
  MEMORY[0x1EEE9AC00](v260);
  v258 = &v218 - v38;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7A0, &qword_1E5A2D630);
  v254 = *(v255 - 8);
  v39 = *(v254 + 64);
  MEMORY[0x1EEE9AC00](v255);
  v252 = &v218 - v40;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7A8, &qword_1E5A2D638);
  v250 = *(v251 - 8);
  v41 = *(v250 + 64);
  MEMORY[0x1EEE9AC00](v251);
  v249 = &v218 - v42;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7B0, &qword_1E5A2D640);
  v247 = *(v248 - 8);
  v43 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v248);
  v246 = &v218 - v44;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7B8, &qword_1E5A2D648);
  v256 = *(v257 - 8);
  v45 = *(v256 + 64);
  MEMORY[0x1EEE9AC00](v257);
  v253 = &v218 - v46;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7C0, &qword_1E5A2D650);
  v244 = *(v245 - 8);
  v47 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v245);
  v241 = &v218 - v48;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7C8, &qword_1E5A2D658);
  v236 = *(v238 - 8);
  v49 = *(v236 + 64);
  MEMORY[0x1EEE9AC00](v238);
  v234 = &v218 - v50;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7D0, &qword_1E5A2D660);
  v237 = *(v239 - 8);
  v51 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v239);
  v235 = &v218 - v52;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7D8, &qword_1E5A2D668);
  v242 = *(v243 - 8);
  v53 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v243);
  v240 = &v218 - v54;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7E0, &qword_1E5A2D670);
  v232 = *(v233 - 8);
  v55 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v233);
  v231 = &v218 - v56;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7E8, &qword_1E5A2D678);
  v229 = *(v230 - 8);
  v57 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v230);
  v226 = &v218 - v58;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7F0, &qword_1E5A2D680);
  v227 = *(v228 - 8);
  v59 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](v228);
  v225 = &v218 - v60;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB7F8, &qword_1E5A2D688);
  v223 = *(v224 - 8);
  v61 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v222 = &v218 - v62;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB800, &qword_1E5A2D690);
  v220 = *(v221 - 8);
  v63 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v221);
  v65 = &v218 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB808, &qword_1E5A2D698);
  v219 = *(v66 - 8);
  v67 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v218 - v68;
  v70 = type metadata accessor for WorkoutPlanCreationAction();
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v218 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB810, &unk_1E5A2D6A0);
  v308 = *(v312 - 8);
  v74 = *(v308 + 64);
  MEMORY[0x1EEE9AC00](v312);
  v76 = &v218 - v75;
  v77 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58C2838();
  v311 = v76;
  sub_1E5A2C224();
  sub_1E58C288C(v310, v73);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v159 = *v73;
      v158 = *(v73 + 1);
      v160 = *(v73 + 2);
      v161 = v73[24];
      LOBYTE(v318) = 6;
      sub_1E58C37D0();
      v162 = v240;
      v163 = v312;
      v164 = v311;
      sub_1E5A2C024();
      LOBYTE(v318) = 0;
      v165 = v243;
      v166 = v309;
      sub_1E5A2C034();
      if (!v166)
      {

        *&v318 = v160;
        LOBYTE(v313) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB970, &unk_1E5A2D6B0);
        sub_1E58C3824();
        sub_1E5A2C054();

        LOBYTE(v318) = 2;
        sub_1E5A2C074();
        (*(v242 + 8))(v162, v165);
        v179 = *(v308 + 8);
        v180 = v164;
        goto LABEL_58;
      }

      (*(v242 + 8))(v162, v165);
      return (*(v308 + 8))(v164, v163);
    case 2u:
      v147 = *v73;
      v146 = *(v73 + 1);
      LOBYTE(v318) = 7;
      sub_1E58C377C();
      v91 = v235;
      v80 = v312;
      v92 = v311;
      sub_1E5A2C024();
      v93 = v239;
      sub_1E5A2C064();

      v95 = &v269;
      goto LABEL_30;
    case 3u:
      v150 = *v73;
      v149 = *(v73 + 1);
      LOBYTE(v318) = 9;
      sub_1E58C36D4();
      v91 = v241;
      v80 = v312;
      v92 = v311;
      sub_1E5A2C024();
      v93 = v245;
      sub_1E5A2C064();

      v95 = &v276;
      goto LABEL_30;
    case 4u:
      v127 = *v73;
      v126 = *(v73 + 1);
      v129 = *(v73 + 2);
      v128 = *(v73 + 3);
      v130 = *(v73 + 5);
      v320 = *(v73 + 4);
      v321 = v130;
      *&v322 = *(v73 + 12);
      v131 = *(v73 + 3);
      v318 = *(v73 + 2);
      v319 = v131;
      LOBYTE(v313) = 10;
      sub_1E58C362C();
      v132 = v253;
      v133 = v312;
      v134 = v311;
      sub_1E5A2C024();
      *&v313 = v127;
      *(&v313 + 1) = v126;
      *&v314 = v129;
      *(&v314 + 1) = v128;
      v324 = 0;
      sub_1E58C3680();
      v135 = v257;
      v136 = v309;
      sub_1E5A2C0B4();
      if (!v136)
      {

        v315 = v320;
        v316 = v321;
        *&v317 = v322;
        v313 = v318;
        v314 = v319;
        v324 = 1;
        sub_1E58C31B8();
        sub_1E5A2C0B4();
        (*(v256 + 8))(v132, v135);
        (*(v308 + 8))(v134, v133);
        return sub_1E58C3164(&v318);
      }

      sub_1E58C3164(&v318);
      (*(v256 + 8))(v132, v135);
      (*(v308 + 8))(v134, v133);

    case 5u:
      v173 = *v73;
      LOBYTE(v318) = 12;
      sub_1E58C3584();
      v79 = v249;
      v80 = v312;
      v81 = v311;
      sub_1E5A2C024();
      v82 = v251;
      sub_1E5A2C074();
      v83 = &v282;
      goto LABEL_40;
    case 6u:
      v181 = *v73;
      LOBYTE(v318) = 13;
      sub_1E58C3530();
      v79 = v252;
      v80 = v312;
      v81 = v311;
      sub_1E5A2C024();
      v82 = v255;
      sub_1E5A2C074();
      v83 = &v286;
      goto LABEL_40;
    case 7u:
      v151 = *v73;
      v152 = v73[1];
      LOBYTE(v318) = 14;
      sub_1E58C3488();
      v153 = v258;
      v154 = v312;
      v155 = v311;
      sub_1E5A2C024();
      LOBYTE(v318) = 0;
      v156 = v260;
      v157 = v309;
      sub_1E5A2C074();
      if (v157)
      {
        (*(v259 + 8))(v153, v156);
        return (*(v308 + 8))(v155, v154);
      }

      LOBYTE(v318) = v152;
      LOBYTE(v313) = 1;
      sub_1E58C34DC();
      sub_1E5A2C054();
      (*(v259 + 8))(v153, v156);
      v179 = *(v308 + 8);
      v180 = v155;
LABEL_58:
      v197 = v312;
      return v179(v180, v197);
    case 8u:
      v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB900, &qword_1E5A36290);
      LODWORD(v310) = v73[*(v184 + 48)];
      v185 = &v73[*(v184 + 64)];
      v186 = *v185;
      v187 = v185[8];
      v188 = v307;
      sub_1E58C335C(v73, v307);
      LOBYTE(v318) = 15;
      sub_1E58C33CC();
      v189 = v268;
      v80 = v312;
      v190 = v311;
      sub_1E5A2C024();
      LOBYTE(v318) = 0;
      type metadata accessor for WorkoutPlanScheduledItem();
      sub_1E58C79BC(&qword_1ECFFB910);
      v191 = v272;
      v192 = v309;
      sub_1E5A2C054();
      if (!v192)
      {
        LODWORD(v309) = v187;
        LOBYTE(v318) = v310;
        LOBYTE(v313) = 1;
        sub_1E58C2944();
        sub_1E5A2C054();
        LOBYTE(v318) = 2;
        sub_1E5A2C044();
        v188 = v307;
      }

      (*(v271 + 8))(v189, v191);
      sub_1E58C3420(v188);
      v179 = *(v308 + 8);
      v180 = v190;
      goto LABEL_41;
    case 9u:
      v143 = *v73;
      LOBYTE(v318) = 16;
      sub_1E58C32B4();
      v79 = v261;
      v80 = v312;
      v81 = v311;
      sub_1E5A2C024();
      LOBYTE(v318) = v143;
      sub_1E58C3308();
      v82 = v266;
      sub_1E5A2C0B4();
      v83 = &v296;
      goto LABEL_40;
    case 0xAu:
      v183 = *v73;
      LOBYTE(v318) = 18;
      sub_1E58C320C();
      v79 = v267;
      v80 = v312;
      v81 = v311;
      sub_1E5A2C024();
      v82 = v270;
      sub_1E5A2C094();
      v83 = &v300;
      goto LABEL_40;
    case 0xBu:
      v114 = *v73;
      v307 = *(v73 + 1);
      v115 = *(v73 + 2);
      v306 = *(v73 + 3);
      v116 = *(v73 + 4);
      v117 = *(v73 + 5);
      v118 = *(v73 + 6);
      v119 = *(v73 + 72);
      v120 = *(v73 + 104);
      v320 = *(v73 + 88);
      v321 = v120;
      *&v322 = *(v73 + 15);
      v318 = *(v73 + 56);
      v319 = v119;
      LOBYTE(v313) = 19;
      sub_1E58C30BC();
      v121 = v276;
      v122 = v312;
      v123 = v311;
      sub_1E5A2C024();
      *&v310 = v114;
      *&v313 = v114;
      *(&v313 + 1) = v307;
      *&v314 = v115;
      *(&v314 + 1) = v306;
      *&v315 = v116;
      *(&v315 + 1) = v117;
      *&v316 = v118;
      v324 = 0;
      sub_1E58C3110();
      v124 = v279;
      v125 = v309;
      sub_1E5A2C0B4();
      if (v125)
      {
        sub_1E58C3164(&v318);
        (*(v277 + 8))(v121, v124);
        (*(v308 + 8))(v123, v122);
      }

      else
      {

        v315 = v320;
        v316 = v321;
        *&v317 = v322;
        v313 = v318;
        v314 = v319;
        v324 = 1;
        sub_1E58C31B8();
        sub_1E5A2C0B4();
        (*(v277 + 8))(v121, v124);
        (*(v308 + 8))(v311, v122);
        return sub_1E58C3164(&v318);
      }

    case 0xCu:
      v137 = *(v73 + 3);
      v320 = *(v73 + 2);
      v321 = v137;
      v322 = *(v73 + 4);
      v138 = *(v73 + 1);
      v318 = *v73;
      v319 = v138;
      LOBYTE(v313) = 20;
      sub_1E58C2FC0();
      v139 = v273;
      v140 = v312;
      v141 = v311;
      sub_1E5A2C024();
      v315 = v320;
      v316 = v321;
      v317 = v322;
      v313 = v318;
      v314 = v319;
      sub_1E58C3014();
      v142 = v275;
      sub_1E5A2C0B4();
      (*(v274 + 8))(v139, v142);
      (*(v308 + 8))(v141, v140);
      return sub_1E58C3068(&v318);
    case 0xDu:
      v175 = *v73;
      v174 = *(v73 + 1);
      v176 = *(v73 + 2);
      v318 = *(v73 + 1);
      v319 = v176;
      v177 = *(v73 + 4);
      v320 = *(v73 + 3);
      v321 = v177;
      LOBYTE(v313) = 21;
      sub_1E58C2F6C();
      v91 = v280;
      v80 = v312;
      v92 = v311;
      sub_1E5A2C024();
      LOBYTE(v313) = 0;
      v93 = v284;
      v178 = v309;
      sub_1E5A2C064();
      if (v178)
      {

        sub_1E58BD18C(&v318);
        v95 = &v312;
        goto LABEL_30;
      }

      v313 = v318;
      v314 = v319;
      v315 = v320;
      v316 = v321;
      v324 = 1;
      sub_1E58C2C38();
      sub_1E5A2C0B4();
      v202 = &v312;
      goto LABEL_57;
    case 0xEu:
      v96 = *v73;
      v97 = *(v73 + 2);
      v290 = *(v73 + 1);
      v292 = v97;
      v289 = *(v73 + 3);
      LODWORD(v288) = v73[32];
      v98 = *(v73 + 6);
      v291 = *(v73 + 5);
      v99 = *(v73 + 7);
      v100 = *(v73 + 8);
      v101 = *(v73 + 10);
      v293 = *(v73 + 9);
      v295 = v101;
      v102 = *(v73 + 12);
      v294 = *(v73 + 11);
      v296 = v102;
      v103 = *(v73 + 14);
      *&v298 = *(v73 + 13);
      *(&v298 + 1) = v103;
      v104 = *(v73 + 16);
      *&v302 = *(v73 + 15);
      *(&v302 + 1) = v104;
      v105 = *(v73 + 18);
      v299 = *(v73 + 17);
      v300 = v105;
      v106 = *(v73 + 20);
      v301 = *(v73 + 19);
      v303 = v106;
      v107 = *(v73 + 22);
      v307 = *(v73 + 21);
      *&v310 = v107;
      LODWORD(v297) = *(v73 + 46);
      LOBYTE(v318) = 22;
      sub_1E58C2D34();
      v108 = v306;
      v109 = v312;
      v110 = v311;
      sub_1E5A2C024();
      LOBYTE(v318) = v96;
      LOBYTE(v313) = 0;
      sub_1E58C2944();
      v111 = v304;
      v112 = v309;
      sub_1E5A2C054();
      if (v112)
      {

        sub_1E58C2D88(v291, v98);
        sub_1E58C2D88(v293, v295);
        sub_1E58C2DCC(v298, *(&v298 + 1));
        sub_1E58C2D88(v301, v303);
        (*(v305 + 8))(v108, v111);
        return (*(v308 + 8))(v110, v109);
      }

      else
      {
        v203 = v291;
        LOBYTE(v318) = 1;
        sub_1E5A2C034();

        LOBYTE(v318) = 2;
        sub_1E5A2C044();
        v204 = v203;
        *&v318 = v203;
        *(&v318 + 1) = v98;
        v309 = v98;
        *&v319 = v99;
        *(&v319 + 1) = v100;
        LOBYTE(v313) = 3;
        sub_1E58C2E1C();
        sub_1E5A2C054();
        v205 = v295;
        v206 = v293;
        sub_1E58C2D88(v204, v309);
        *&v318 = v206;
        *(&v318 + 1) = v205;
        v207 = v206;
        *&v319 = v294;
        *(&v319 + 1) = v296;
        LOBYTE(v313) = 4;
        sub_1E58C2E70();
        v208 = v306;
        sub_1E5A2C054();
        v209 = v300;
        sub_1E58C2D88(v207, v205);
        v210 = v298;
        v318 = v298;
        v211 = *(&v298 + 1);
        v319 = v302;
        *&v320 = v299;
        *(&v320 + 1) = v209;
        LOBYTE(v313) = 5;
        sub_1E58C2EC4();
        v212 = v208;
        sub_1E5A2C054();
        v213 = v303;
        v214 = v210;
        v215 = v310;
        v216 = v297;
        sub_1E58C2DCC(v214, v211);
        v217 = v301;
        *&v318 = v301;
        *(&v318 + 1) = v213;
        *&v319 = v307;
        *(&v319 + 1) = v215;
        LODWORD(v320) = v216;
        LOBYTE(v313) = 6;
        sub_1E58C2F18();
        sub_1E5A2C054();
        (*(v305 + 8))(v212, v111);
        (*(v308 + 8))(v311, v312);
        return sub_1E58C2D88(v217, v303);
      }

    case 0xFu:
      v148 = *v73;
      LOBYTE(v318) = 23;
      sub_1E58C2C8C();
      v79 = v278;
      v80 = v312;
      v81 = v311;
      sub_1E5A2C024();
      LOBYTE(v318) = v148;
      sub_1E58C2CE0();
      v82 = v282;
      sub_1E5A2C0B4();
      v83 = &v310 + 1;
      goto LABEL_40;
    case 0x10u:
      v88 = *v73;
      v87 = *(v73 + 1);
      v89 = *(v73 + 2);
      v318 = *(v73 + 1);
      v319 = v89;
      v90 = *(v73 + 4);
      v320 = *(v73 + 3);
      v321 = v90;
      LOBYTE(v313) = 24;
      sub_1E58C2BE4();
      v91 = v290;
      v80 = v312;
      v92 = v311;
      sub_1E5A2C024();
      LOBYTE(v313) = 0;
      v93 = v296;
      v94 = v309;
      sub_1E5A2C064();
      if (v94)
      {

        sub_1E58BD18C(&v318);
        v95 = &v318 + 1;
LABEL_30:
        (*(*(v95 - 32) + 8))(v91, v93);
        v179 = *(v308 + 8);
        v180 = v92;
LABEL_41:
        v197 = v80;
        return v179(v180, v197);
      }

      else
      {

        v313 = v318;
        v314 = v319;
        v315 = v320;
        v316 = v321;
        v324 = 1;
        sub_1E58C2C38();
        sub_1E5A2C0B4();
        v202 = &v318 + 1;
LABEL_57:
        (*(*(v202 - 32) + 8))(v91, v93);
        (*(v308 + 8))(v92, v80);
        return sub_1E58BD18C(&v318);
      }

    case 0x11u:
      v167 = *v73;
      LOBYTE(v318) = 25;
      sub_1E58C2B3C();
      v168 = v285;
      v169 = v312;
      v170 = v311;
      sub_1E5A2C024();
      *&v318 = v167;
      sub_1E58C2B90();
      v171 = v287;
      sub_1E5A2C0B4();
      (*(v286 + 8))(v168, v171);
      (*(v308 + 8))(v170, v169);

    case 0x12u:
      v310 = *v73;
      v182 = *(v73 + 2);
      LOBYTE(v318) = 26;
      sub_1E58C2A94();
      v79 = v289;
      v80 = v312;
      v81 = v311;
      sub_1E5A2C024();
      v318 = v310;
      *&v319 = v182;
      sub_1E58C2AE8();
      v82 = v294;
      sub_1E5A2C0B4();
      v83 = &v317;
      goto LABEL_40;
    case 0x13u:
      v196 = *v73;
      LOBYTE(v318) = 29;
      sub_1E58C2998();
      v79 = v299;
      v80 = v312;
      v81 = v311;
      sub_1E5A2C024();
      v82 = v301;
      sub_1E5A2C094();
      v83 = &v321 + 1;
      goto LABEL_40;
    case 0x14u:
      v172 = *v73;
      LOBYTE(v318) = 30;
      sub_1E58C28F0();
      v79 = v302;
      v80 = v312;
      v81 = v311;
      sub_1E5A2C024();
      LOBYTE(v318) = v172;
      sub_1E58C2944();
      v82 = v303;
      sub_1E5A2C0B4();
      v83 = &v323;
      goto LABEL_40;
    case 0x15u:
      LOBYTE(v318) = 0;
      sub_1E58C3A74();
      v85 = v312;
      v86 = v311;
      sub_1E5A2C024();
      (*(v219 + 8))(v69, v66);
      return (*(v308 + 8))(v86, v85);
    case 0x16u:
      LOBYTE(v318) = 1;
      sub_1E58C3A20();
      v194 = v312;
      v195 = v311;
      sub_1E5A2C024();
      (*(v220 + 8))(v65, v221);
      return (*(v308 + 8))(v195, v194);
    case 0x17u:
      LOBYTE(v318) = 2;
      sub_1E58C39CC();
      v198 = v222;
      v85 = v312;
      v86 = v311;
      sub_1E5A2C024();
      (*(v223 + 8))(v198, v224);
      return (*(v308 + 8))(v86, v85);
    case 0x18u:
      LOBYTE(v318) = 4;
      sub_1E58C3924();
      v145 = v226;
      v85 = v312;
      v86 = v311;
      sub_1E5A2C024();
      (*(v229 + 8))(v145, v230);
      return (*(v308 + 8))(v86, v85);
    case 0x19u:
      LOBYTE(v318) = 5;
      sub_1E58C38D0();
      v144 = v231;
      v85 = v312;
      v86 = v311;
      sub_1E5A2C024();
      (*(v232 + 8))(v144, v233);
      return (*(v308 + 8))(v86, v85);
    case 0x1Au:
      LOBYTE(v318) = 8;
      sub_1E58C3728();
      v201 = v234;
      v85 = v312;
      v86 = v311;
      sub_1E5A2C024();
      (*(v236 + 8))(v201, v238);
      return (*(v308 + 8))(v86, v85);
    case 0x1Bu:
      LOBYTE(v318) = 11;
      sub_1E58C35D8();
      v84 = v246;
      v85 = v312;
      v86 = v311;
      sub_1E5A2C024();
      (*(v247 + 8))(v84, v248);
      return (*(v308 + 8))(v86, v85);
    case 0x1Cu:
      LOBYTE(v318) = 17;
      sub_1E58C3260();
      v199 = v262;
      v85 = v312;
      v86 = v311;
      sub_1E5A2C024();
      (*(v263 + 8))(v199, v265);
      return (*(v308 + 8))(v86, v85);
    case 0x1Du:
      LOBYTE(v318) = 27;
      sub_1E58C2A40();
      v200 = v288;
      v85 = v312;
      v86 = v311;
      sub_1E5A2C024();
      (*(v291 + 8))(v200, v293);
      return (*(v308 + 8))(v86, v85);
    case 0x1Eu:
      LOBYTE(v318) = 28;
      sub_1E58C29EC();
      v193 = v297;
      v85 = v312;
      v86 = v311;
      sub_1E5A2C024();
      (*(v298 + 8))(v193, *(&v298 + 1));
      return (*(v308 + 8))(v86, v85);
    default:
      v78 = *v73;
      LOBYTE(v318) = 3;
      sub_1E58C3978();
      v79 = v225;
      v80 = v312;
      v81 = v311;
      sub_1E5A2C024();
      v82 = v228;
      sub_1E5A2C074();
      v83 = &v259;
LABEL_40:
      (*(*(v83 - 32) + 8))(v79, v82);
      v179 = *(v308 + 8);
      v180 = v81;
      goto LABEL_41;
  }
}

uint64_t type metadata accessor for WorkoutPlanCreationAction()
{
  result = qword_1ECFFBB50;
  if (!qword_1ECFFBB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E58C2838()
{
  result = qword_1ECFFB818;
  if (!qword_1ECFFB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB818);
  }

  return result;
}

uint64_t sub_1E58C288C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanCreationAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E58C28F0()
{
  result = qword_1ECFFB820;
  if (!qword_1ECFFB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB820);
  }

  return result;
}

unint64_t sub_1E58C2944()
{
  result = qword_1ECFFB828;
  if (!qword_1ECFFB828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB828);
  }

  return result;
}

unint64_t sub_1E58C2998()
{
  result = qword_1ECFFB830;
  if (!qword_1ECFFB830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB830);
  }

  return result;
}

unint64_t sub_1E58C29EC()
{
  result = qword_1ECFFB838;
  if (!qword_1ECFFB838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB838);
  }

  return result;
}

unint64_t sub_1E58C2A40()
{
  result = qword_1ECFFB840;
  if (!qword_1ECFFB840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB840);
  }

  return result;
}

unint64_t sub_1E58C2A94()
{
  result = qword_1ECFFB848;
  if (!qword_1ECFFB848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB848);
  }

  return result;
}

unint64_t sub_1E58C2AE8()
{
  result = qword_1ECFFB850;
  if (!qword_1ECFFB850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB850);
  }

  return result;
}

unint64_t sub_1E58C2B3C()
{
  result = qword_1ECFFB858;
  if (!qword_1ECFFB858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB858);
  }

  return result;
}

unint64_t sub_1E58C2B90()
{
  result = qword_1ECFFB860;
  if (!qword_1ECFFB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB860);
  }

  return result;
}

unint64_t sub_1E58C2BE4()
{
  result = qword_1ECFFB868;
  if (!qword_1ECFFB868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB868);
  }

  return result;
}

unint64_t sub_1E58C2C38()
{
  result = qword_1ECFFB870;
  if (!qword_1ECFFB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB870);
  }

  return result;
}

unint64_t sub_1E58C2C8C()
{
  result = qword_1ECFFB878;
  if (!qword_1ECFFB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB878);
  }

  return result;
}

unint64_t sub_1E58C2CE0()
{
  result = qword_1ECFFB880;
  if (!qword_1ECFFB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB880);
  }

  return result;
}

unint64_t sub_1E58C2D34()
{
  result = qword_1ECFFB888;
  if (!qword_1ECFFB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB888);
  }

  return result;
}

uint64_t sub_1E58C2D88(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1E58C2DCC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1E58C2E1C()
{
  result = qword_1ECFFB890;
  if (!qword_1ECFFB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB890);
  }

  return result;
}

unint64_t sub_1E58C2E70()
{
  result = qword_1ECFFB898;
  if (!qword_1ECFFB898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB898);
  }

  return result;
}

unint64_t sub_1E58C2EC4()
{
  result = qword_1ECFFB8A0;
  if (!qword_1ECFFB8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8A0);
  }

  return result;
}

unint64_t sub_1E58C2F18()
{
  result = qword_1ECFFB8A8;
  if (!qword_1ECFFB8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8A8);
  }

  return result;
}

unint64_t sub_1E58C2F6C()
{
  result = qword_1ECFFB8B0;
  if (!qword_1ECFFB8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8B0);
  }

  return result;
}

unint64_t sub_1E58C2FC0()
{
  result = qword_1ECFFB8B8;
  if (!qword_1ECFFB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8B8);
  }

  return result;
}

unint64_t sub_1E58C3014()
{
  result = qword_1ECFFB8C0;
  if (!qword_1ECFFB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8C0);
  }

  return result;
}

unint64_t sub_1E58C30BC()
{
  result = qword_1ECFFB8C8;
  if (!qword_1ECFFB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8C8);
  }

  return result;
}

unint64_t sub_1E58C3110()
{
  result = qword_1ECFFB8D0;
  if (!qword_1ECFFB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8D0);
  }

  return result;
}

unint64_t sub_1E58C31B8()
{
  result = qword_1ECFFB8D8;
  if (!qword_1ECFFB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8D8);
  }

  return result;
}

unint64_t sub_1E58C320C()
{
  result = qword_1ECFFB8E0;
  if (!qword_1ECFFB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8E0);
  }

  return result;
}

unint64_t sub_1E58C3260()
{
  result = qword_1ECFFB8E8;
  if (!qword_1ECFFB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8E8);
  }

  return result;
}

unint64_t sub_1E58C32B4()
{
  result = qword_1ECFFB8F0;
  if (!qword_1ECFFB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8F0);
  }

  return result;
}

unint64_t sub_1E58C3308()
{
  result = qword_1ECFFB8F8;
  if (!qword_1ECFFB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB8F8);
  }

  return result;
}

uint64_t sub_1E58C335C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E58C33CC()
{
  result = qword_1ECFFB908;
  if (!qword_1ECFFB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB908);
  }

  return result;
}

uint64_t sub_1E58C3420(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E58C3488()
{
  result = qword_1ECFFB918;
  if (!qword_1ECFFB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB918);
  }

  return result;
}

unint64_t sub_1E58C34DC()
{
  result = qword_1ECFFB920;
  if (!qword_1ECFFB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB920);
  }

  return result;
}

unint64_t sub_1E58C3530()
{
  result = qword_1ECFFB928;
  if (!qword_1ECFFB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB928);
  }

  return result;
}

unint64_t sub_1E58C3584()
{
  result = qword_1ECFFB930;
  if (!qword_1ECFFB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB930);
  }

  return result;
}

unint64_t sub_1E58C35D8()
{
  result = qword_1ECFFB938;
  if (!qword_1ECFFB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB938);
  }

  return result;
}

unint64_t sub_1E58C362C()
{
  result = qword_1ECFFB940;
  if (!qword_1ECFFB940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB940);
  }

  return result;
}

unint64_t sub_1E58C3680()
{
  result = qword_1ECFFB948;
  if (!qword_1ECFFB948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB948);
  }

  return result;
}

unint64_t sub_1E58C36D4()
{
  result = qword_1ECFFB950;
  if (!qword_1ECFFB950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB950);
  }

  return result;
}

unint64_t sub_1E58C3728()
{
  result = qword_1ECFFB958;
  if (!qword_1ECFFB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB958);
  }

  return result;
}

unint64_t sub_1E58C377C()
{
  result = qword_1ECFFB960;
  if (!qword_1ECFFB960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB960);
  }

  return result;
}

unint64_t sub_1E58C37D0()
{
  result = qword_1ECFFB968;
  if (!qword_1ECFFB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB968);
  }

  return result;
}

unint64_t sub_1E58C3824()
{
  result = qword_1ECFFB978;
  if (!qword_1ECFFB978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB970, &unk_1E5A2D6B0);
    sub_1E58C7B54(&qword_1ECFFB980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB978);
  }

  return result;
}

unint64_t sub_1E58C38D0()
{
  result = qword_1ECFFB990;
  if (!qword_1ECFFB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB990);
  }

  return result;
}

unint64_t sub_1E58C3924()
{
  result = qword_1ECFFB998;
  if (!qword_1ECFFB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB998);
  }

  return result;
}

unint64_t sub_1E58C3978()
{
  result = qword_1ECFFB9A0;
  if (!qword_1ECFFB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB9A0);
  }

  return result;
}

unint64_t sub_1E58C39CC()
{
  result = qword_1ECFFB9A8;
  if (!qword_1ECFFB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB9A8);
  }

  return result;
}

unint64_t sub_1E58C3A20()
{
  result = qword_1ECFFB9B0;
  if (!qword_1ECFFB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB9B0);
  }

  return result;
}

unint64_t sub_1E58C3A74()
{
  result = qword_1ECFFB9B8;
  if (!qword_1ECFFB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB9B8);
  }

  return result;
}

uint64_t WorkoutPlanCreationAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v454 = a2;
  v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB9C0, &qword_1E5A2D6C0);
  v419 = *(v403 - 8);
  v3 = *(v419 + 64);
  MEMORY[0x1EEE9AC00](v403);
  v460 = &v347 - v4;
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB9C8, &qword_1E5A2D6C8);
  v417 = *(v418 - 8);
  v5 = *(v417 + 64);
  MEMORY[0x1EEE9AC00](v418);
  v452 = &v347 - v6;
  v416 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB9D0, &qword_1E5A2D6D0);
  v415 = *(v416 - 8);
  v7 = *(v415 + 64);
  MEMORY[0x1EEE9AC00](v416);
  v451 = &v347 - v8;
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB9D8, &qword_1E5A2D6D8);
  v411 = *(v413 - 8);
  v9 = *(v411 + 64);
  MEMORY[0x1EEE9AC00](v413);
  *(&v449 + 1) = &v347 - v10;
  v414 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB9E0, &qword_1E5A2D6E0);
  v412 = *(v414 - 8);
  v11 = *(v412 + 64);
  MEMORY[0x1EEE9AC00](v414);
  v450 = &v347 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB9E8, &qword_1E5A2D6E8);
  v408 = *(v13 - 8);
  v409 = v13;
  v14 = *(v408 + 64);
  MEMORY[0x1EEE9AC00](v13);
  *(&v448 + 1) = &v347 - v15;
  v410 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB9F0, &qword_1E5A2D6F0);
  v407 = *(v410 - 8);
  v16 = *(v407 + 64);
  MEMORY[0x1EEE9AC00](v410);
  *&v449 = &v347 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB9F8, &qword_1E5A2D6F8);
  v405 = *(v18 - 8);
  v406 = v18;
  v19 = *(v405 + 64);
  MEMORY[0x1EEE9AC00](v18);
  *&v448 = &v347 - v20;
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA00, &qword_1E5A2D700);
  v424 = *(v425 - 8);
  v21 = *(v424 + 64);
  MEMORY[0x1EEE9AC00](v425);
  v453 = &v347 - v22;
  v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA08, &qword_1E5A2D708);
  v459 = *(v404 - 8);
  v23 = *(v459 + 64);
  MEMORY[0x1EEE9AC00](v404);
  *(&v447 + 1) = &v347 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA10, &qword_1E5A2D710);
  v400 = *(v25 - 8);
  v401 = v25;
  v26 = *(v400 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v446 = &v347 - v27;
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA18, &qword_1E5A2D718);
  v423 = *(v402 - 8);
  v28 = *(v423 + 64);
  MEMORY[0x1EEE9AC00](v402);
  *&v447 = &v347 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA20, &qword_1E5A2D720);
  v397 = *(v30 - 8);
  v398 = v30;
  v31 = *(v397 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v444 = &v347 - v32;
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA28, &qword_1E5A2D728);
  v393 = *(v395 - 8);
  v33 = *(v393 + 64);
  MEMORY[0x1EEE9AC00](v395);
  v442 = &v347 - v34;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA30, &qword_1E5A2D730);
  v394 = *(v396 - 8);
  v35 = *(v394 + 64);
  MEMORY[0x1EEE9AC00](v396);
  v443 = &v347 - v36;
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA38, &qword_1E5A2D738);
  v422 = *(v399 - 8);
  v37 = *(v422 + 64);
  MEMORY[0x1EEE9AC00](v399);
  v445 = &v347 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA40, &qword_1E5A2D740);
  v391 = *(v39 - 8);
  v392 = v39;
  v40 = *(v391 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v441 = &v347 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA48, &qword_1E5A2D748);
  v389 = *(v42 - 8);
  v390 = v42;
  v43 = *(v389 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v440 = &v347 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA50, &qword_1E5A2D750);
  v386 = *(v45 - 8);
  v387 = v45;
  v46 = *(v386 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v438 = &v347 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA58, &qword_1E5A2D758);
  v384 = *(v48 - 8);
  v385 = v48;
  v49 = *(v384 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v437 = &v347 - v50;
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA60, &qword_1E5A2D760);
  v421 = *(v388 - 8);
  v51 = *(v421 + 64);
  MEMORY[0x1EEE9AC00](v388);
  v439 = &v347 - v52;
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA68, &qword_1E5A2D768);
  v457 = *(v382 - 8);
  v53 = *(v457 + 64);
  MEMORY[0x1EEE9AC00](v382);
  v435 = &v347 - v54;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA70, &qword_1E5A2D770);
  v379 = *(v381 - 8);
  v55 = *(v379 + 64);
  MEMORY[0x1EEE9AC00](v381);
  v434 = &v347 - v56;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA78, &qword_1E5A2D778);
  v378 = *(v380 - 8);
  v57 = *(v378 + 64);
  MEMORY[0x1EEE9AC00](v380);
  v433 = &v347 - v58;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA80, &qword_1E5A2D780);
  v420 = *(v383 - 8);
  v59 = *(v420 + 64);
  MEMORY[0x1EEE9AC00](v383);
  v436 = &v347 - v60;
  v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA88, &qword_1E5A2D788);
  v455 = *(v456 - 8);
  v61 = *(v455 + 64);
  MEMORY[0x1EEE9AC00](v456);
  v432 = &v347 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA90, &qword_1E5A2D790);
  v376 = *(v63 - 8);
  v377 = v63;
  v64 = *(v376 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v431 = &v347 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBA98, &qword_1E5A2D798);
  v374 = *(v66 - 8);
  v375 = v66;
  v67 = *(v374 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v430 = &v347 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBAA0, &qword_1E5A2D7A0);
  v372 = *(v69 - 8);
  v373 = v69;
  v70 = *(v372 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v429 = &v347 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBAA8, &qword_1E5A2D7A8);
  v370 = *(v72 - 8);
  v371 = v72;
  v73 = *(v370 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v428 = &v347 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBAB0, &qword_1E5A2D7B0);
  v368 = *(v75 - 8);
  v369 = v75;
  v76 = *(v368 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v427 = &v347 - v77;
  v462 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBAB8, &unk_1E5A2D7B8);
  v458 = *(v462 - 8);
  v78 = *(v458 + 64);
  MEMORY[0x1EEE9AC00](v462);
  v465 = &v347 - v79;
  v461 = type metadata accessor for WorkoutPlanCreationAction();
  v80 = *(*(v461 - 8) + 64);
  v81 = MEMORY[0x1EEE9AC00](v461);
  v367 = (&v347 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = MEMORY[0x1EEE9AC00](v81);
  v365 = (&v347 - v84);
  v85 = MEMORY[0x1EEE9AC00](v83);
  v366 = (&v347 - v86);
  v87 = MEMORY[0x1EEE9AC00](v85);
  v364 = (&v347 - v88);
  v89 = MEMORY[0x1EEE9AC00](v87);
  v357 = (&v347 - v90);
  v91 = MEMORY[0x1EEE9AC00](v89);
  v363 = &v347 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v352 = &v347 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v355 = (&v347 - v96);
  v97 = MEMORY[0x1EEE9AC00](v95);
  v362 = &v347 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v356 = &v347 - v100;
  v101 = MEMORY[0x1EEE9AC00](v99);
  v360 = (&v347 - v102);
  v103 = MEMORY[0x1EEE9AC00](v101);
  v361 = &v347 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v426 = &v347 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v353 = (&v347 - v108);
  v109 = MEMORY[0x1EEE9AC00](v107);
  v359 = &v347 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v358 = (&v347 - v112);
  v113 = MEMORY[0x1EEE9AC00](v111);
  v354 = (&v347 - v114);
  v115 = MEMORY[0x1EEE9AC00](v113);
  v117 = &v347 - v116;
  v118 = MEMORY[0x1EEE9AC00](v115);
  v120 = &v347 - v119;
  v121 = MEMORY[0x1EEE9AC00](v118);
  v123 = (&v347 - v122);
  v124 = MEMORY[0x1EEE9AC00](v121);
  v126 = &v347 - v125;
  MEMORY[0x1EEE9AC00](v124);
  v128 = &v347 - v127;
  v129 = a1[3];
  v130 = a1[4];
  v463 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v129);
  sub_1E58C2838();
  v131 = v464;
  sub_1E5A2C214();
  if (v131)
  {
    goto LABEL_9;
  }

  v348 = v126;
  v349 = v120;
  v350 = v117;
  v351 = v128;
  v347 = v123;
  v132 = v459;
  v133 = v460;
  v464 = 0;
  v134 = v465;
  v135 = sub_1E5A2C004();
  v136 = (2 * *(v135 + 16)) | 1;
  v484 = v135;
  v485 = v135 + 32;
  v486 = 0;
  v487 = v136;
  v137 = sub_1E58BBF00();
  if (v486 != v487 >> 1)
  {
LABEL_6:
    v146 = sub_1E5A2BE84();
    swift_allocError();
    v148 = v147;
    v149 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v148 = v461;
    v150 = v462;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v146 - 8) + 104))(v148, *MEMORY[0x1E69E6AF8], v146);
    swift_willThrow();
LABEL_7:
    (*(v458 + 8))(v134, v150);
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    v151 = v463;
    return __swift_destroy_boxed_opaque_existential_1(v151);
  }

  v138 = v132;
  v139 = v457;
  v140 = v456;
  v141 = v455;
  switch(v137)
  {
    case 0:
      LOBYTE(v471) = 0;
      sub_1E58C3A74();
      v142 = v427;
      v143 = v462;
      v144 = v464;
      sub_1E5A2BF44();
      if (v144)
      {
        goto LABEL_72;
      }

      (*(v368 + 8))(v142, v369);
      (*(v458 + 8))(v134, v143);
      swift_unknownObjectRelease();
      v145 = v351;
      goto LABEL_68;
    case 1:
      LOBYTE(v471) = 1;
      sub_1E58C3A20();
      v206 = v428;
      v143 = v462;
      v207 = v464;
      sub_1E5A2BF44();
      if (v207)
      {
        goto LABEL_72;
      }

      (*(v370 + 8))(v206, v371);
      (*(v458 + 8))(v134, v143);
      swift_unknownObjectRelease();
      v145 = v351;
      goto LABEL_68;
    case 2:
      LOBYTE(v471) = 2;
      sub_1E58C39CC();
      v189 = v429;
      v143 = v462;
      v190 = v464;
      sub_1E5A2BF44();
      if (v190)
      {
        goto LABEL_72;
      }

      (*(v372 + 8))(v189, v373);
      (*(v458 + 8))(v134, v143);
      swift_unknownObjectRelease();
      v145 = v351;
      goto LABEL_68;
    case 3:
      LOBYTE(v471) = 3;
      sub_1E58C3978();
      v195 = v430;
      v196 = v462;
      v197 = v464;
      sub_1E5A2BF44();
      if (v197)
      {
        goto LABEL_70;
      }

      v198 = v375;
      v199 = sub_1E5A2BFA4();
      v200 = v458;
      v278 = v199;
      (*(v374 + 8))(v195, v198);
      (*(v200 + 8))(v134, v196);
      swift_unknownObjectRelease();
      v279 = v278 & 1;
      v263 = v348;
      *v348 = v279;
      goto LABEL_82;
    case 4:
      LOBYTE(v471) = 4;
      sub_1E58C3924();
      v167 = v431;
      v143 = v462;
      v168 = v464;
      sub_1E5A2BF44();
      if (v168)
      {
        goto LABEL_72;
      }

      (*(v376 + 8))(v167, v377);
      (*(v458 + 8))(v134, v143);
      swift_unknownObjectRelease();
      v145 = v351;
      goto LABEL_68;
    case 5:
      LOBYTE(v471) = 5;
      sub_1E58C38D0();
      v214 = v432;
      v143 = v462;
      v215 = v464;
      sub_1E5A2BF44();
      if (v215)
      {
        goto LABEL_72;
      }

      (*(v141 + 8))(v214, v140);
      (*(v458 + 8))(v134, v143);
      swift_unknownObjectRelease();
      v145 = v351;
      goto LABEL_68;
    case 6:
      LOBYTE(v471) = 6;
      sub_1E58C37D0();
      v224 = v436;
      v185 = v462;
      v225 = v464;
      sub_1E5A2BF44();
      if (v225)
      {
        goto LABEL_50;
      }

      LOBYTE(v471) = 0;
      v253 = v383;
      v291 = sub_1E5A2BF64();
      v293 = v292;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB970, &unk_1E5A2D6B0);
      LOBYTE(v466) = 1;
      sub_1E58C7AA8();
      v294 = v224;
      sub_1E5A2BF84();
      v317 = v471;
      LOBYTE(v466) = 2;
      v318 = sub_1E5A2BFA4();
      v464 = 0;
      v333 = v318;
      (*(v420 + 8))(v294, v253);
      (*(v458 + 8))(v134, v185);
      swift_unknownObjectRelease();
      v309 = v347;
      *v347 = v291;
      v309[1] = v293;
      v309[2] = v317;
      *(v309 + 24) = v333 & 1;
      goto LABEL_80;
    case 7:
      LOBYTE(v471) = 7;
      sub_1E58C377C();
      v201 = v433;
      v160 = v462;
      v202 = v464;
      sub_1E5A2BF44();
      if (v202)
      {
        goto LABEL_74;
      }

      v203 = v380;
      v204 = sub_1E5A2BF94();
      v205 = v458;
      v280 = v204;
      v282 = v281;
      (*(v378 + 8))(v201, v203);
      (*(v205 + 8))(v134, v160);
      swift_unknownObjectRelease();
      v283 = v349;
      *v349 = v280;
      v283[1] = v282;
      swift_storeEnumTagMultiPayload();
      v332 = v283;
      goto LABEL_81;
    case 8:
      LOBYTE(v471) = 8;
      sub_1E58C3728();
      v235 = v434;
      v143 = v462;
      v236 = v464;
      sub_1E5A2BF44();
      if (v236)
      {
        goto LABEL_72;
      }

      (*(v379 + 8))(v235, v381);
      (*(v458 + 8))(v134, v143);
      swift_unknownObjectRelease();
      v145 = v351;
      goto LABEL_68;
    case 9:
      LOBYTE(v471) = 9;
      sub_1E58C36D4();
      v174 = v435;
      v150 = v462;
      v175 = v464;
      sub_1E5A2BF44();
      if (v175)
      {
        goto LABEL_7;
      }

      v176 = v382;
      v177 = sub_1E5A2BF94();
      v178 = v174;
      v179 = v458;
      v267 = *(v139 + 8);
      v268 = v177;
      v270 = v269;
      v267(v178, v176);
      (*(v179 + 8))(v134, v150);
      swift_unknownObjectRelease();
      v271 = v350;
      *v350 = v268;
      *(v271 + 8) = v270;
      swift_storeEnumTagMultiPayload();
      v145 = v351;
      sub_1E58C7568(v271, v351);
      v272 = v463;
      goto LABEL_85;
    case 10:
      LOBYTE(v471) = 10;
      sub_1E58C362C();
      v231 = v439;
      v232 = v134;
      v233 = v462;
      v234 = v464;
      sub_1E5A2BF44();
      if (v234)
      {
        (*(v458 + 8))(v232, v233);
        goto LABEL_55;
      }

      v254 = v232;
      LOBYTE(v471) = 0;
      sub_1E58C7A54();
      v255 = v388;
      sub_1E5A2BFE4();
      v297 = v466;
      v464 = v467;
      v298 = v231;
      v299 = *(&v467 + 1);
      LOBYTE(v480) = 1;
      sub_1E58C7914();
      sub_1E5A2BFE4();
      (*(v421 + 8))(v298, v255);
      (*(v458 + 8))(v254, v233);
      swift_unknownObjectRelease();
      v263 = v354;
      *v354 = v297;
      *(v263 + 2) = v464;
      *(v263 + 3) = v299;
      v319 = v474;
      *(v263 + 4) = v473;
      *(v263 + 5) = v319;
      *(v263 + 12) = v475;
      v320 = v472;
      *(v263 + 2) = v471;
      *(v263 + 3) = v320;
      goto LABEL_82;
    case 11:
      LOBYTE(v471) = 11;
      sub_1E58C35D8();
      v165 = v437;
      v143 = v462;
      v166 = v464;
      sub_1E5A2BF44();
      if (v166)
      {
        goto LABEL_72;
      }

      (*(v384 + 8))(v165, v385);
      (*(v458 + 8))(v134, v143);
      swift_unknownObjectRelease();
      v145 = v351;
      goto LABEL_68;
    case 12:
      LOBYTE(v471) = 12;
      sub_1E58C3584();
      v169 = v438;
      v160 = v462;
      v170 = v464;
      sub_1E5A2BF44();
      if (v170)
      {
        goto LABEL_74;
      }

      v171 = v387;
      v172 = sub_1E5A2BFA4();
      v173 = v458;
      v265 = v172;
      (*(v386 + 8))(v169, v171);
      (*(v173 + 8))(v134, v160);
      swift_unknownObjectRelease();
      v266 = v265 & 1;
      v309 = v358;
      *v358 = v266;
      goto LABEL_80;
    case 13:
      LOBYTE(v471) = 13;
      sub_1E58C3530();
      v219 = v440;
      v143 = v462;
      v220 = v464;
      sub_1E5A2BF44();
      if (v220)
      {
        goto LABEL_72;
      }

      v221 = v390;
      v222 = sub_1E5A2BFA4();
      v223 = v458;
      v289 = v222;
      (*(v389 + 8))(v219, v221);
      (*(v223 + 8))(v134, v462);
      swift_unknownObjectRelease();
      v290 = v289 & 1;
      v263 = v359;
      *v359 = v290;
      goto LABEL_82;
    case 14:
      LOBYTE(v471) = 14;
      sub_1E58C3488();
      v159 = v441;
      v160 = v462;
      v161 = v464;
      sub_1E5A2BF44();
      if (!v161)
      {
        LOBYTE(v471) = 0;
        v162 = v392;
        v163 = sub_1E5A2BFA4();
        v164 = v458;
        v264 = v163;
        LOBYTE(v466) = 1;
        sub_1E58C7A00();
        sub_1E5A2BF84();
        (*(v391 + 8))(v159, v162);
        (*(v164 + 8))(v134, v160);
        swift_unknownObjectRelease();
        v308 = v471;
        v309 = v353;
        *v353 = v264 & 1;
        *(v309 + 1) = v308;
        goto LABEL_80;
      }

LABEL_74:
      (*(v458 + 8))(v134, v160);
      swift_unknownObjectRelease();
      v151 = v463;
      return __swift_destroy_boxed_opaque_existential_1(v151);
    case 15:
      LOBYTE(v471) = 15;
      sub_1E58C33CC();
      v191 = v445;
      v150 = v462;
      v192 = v464;
      sub_1E5A2BF44();
      if (v192)
      {
        goto LABEL_7;
      }

      type metadata accessor for WorkoutPlanScheduledItem();
      LOBYTE(v471) = 0;
      sub_1E58C79BC(&qword_1ECFFBB28);
      v193 = v399;
      sub_1E5A2BF84();
      v194 = v458;
      v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB900, &qword_1E5A36290);
      v277 = *(v276 + 48);
      LOBYTE(v471) = 1;
      sub_1E58C7514();
      sub_1E5A2BF84();
      LOBYTE(v471) = 2;
      v312 = sub_1E5A2BF74();
      v313 = v191;
      v464 = 0;
      v329 = v328;
      v330 = v426;
      v331 = &v426[*(v276 + 64)];
      (*(v422 + 8))(v313, v193);
      (*(v194 + 8))(v134, v150);
      swift_unknownObjectRelease();
      *v331 = v312;
      v331[8] = v329 & 1;
      swift_storeEnumTagMultiPayload();
      v332 = v330;
      goto LABEL_81;
    case 16:
      LOBYTE(v471) = 16;
      sub_1E58C32B4();
      v155 = v443;
      v143 = v462;
      v156 = v464;
      sub_1E5A2BF44();
      if (v156)
      {
        goto LABEL_72;
      }

      sub_1E58C7968();
      v157 = v396;
      sub_1E5A2BFE4();
      v158 = v458;
      (*(v394 + 8))(v155, v157);
      (*(v158 + 8))(v134, v143);
      swift_unknownObjectRelease();
      v263 = v361;
      *v361 = v471;
      goto LABEL_82;
    case 17:
      LOBYTE(v471) = 17;
      sub_1E58C3260();
      v208 = v442;
      v143 = v462;
      v209 = v464;
      sub_1E5A2BF44();
      if (v209)
      {
        goto LABEL_72;
      }

      (*(v393 + 8))(v208, v395);
      (*(v458 + 8))(v134, v143);
      swift_unknownObjectRelease();
      v145 = v351;
      goto LABEL_68;
    case 18:
      LOBYTE(v471) = 18;
      sub_1E58C320C();
      v226 = v444;
      v196 = v462;
      v227 = v464;
      sub_1E5A2BF44();
      if (v227)
      {
        goto LABEL_70;
      }

      v228 = v398;
      v229 = sub_1E5A2BFC4();
      v230 = v458;
      v295 = v229;
      (*(v397 + 8))(v226, v228);
      (*(v230 + 8))(v134, v196);
      swift_unknownObjectRelease();
      v296 = v360;
      *v360 = v295;
      goto LABEL_79;
    case 19:
      LOBYTE(v471) = 19;
      sub_1E58C30BC();
      v240 = v447;
      v143 = v462;
      v241 = v464;
      sub_1E5A2BF44();
      if (v241)
      {
        goto LABEL_72;
      }

      LOBYTE(v471) = 0;
      sub_1E58C78C0();
      v242 = v402;
      sub_1E5A2BFE4();
      v301 = v240;
      v460 = *(&v466 + 1);
      v302 = v466;
      v459 = *(&v467 + 1);
      v303 = v467;
      v464 = v468;
      v457 = v469;
      v304 = v470;
      LOBYTE(v480) = 1;
      sub_1E58C7914();
      sub_1E5A2BFE4();
      (*(v423 + 8))(v301, v242);
      (*(v458 + 8))(v134, v462);
      swift_unknownObjectRelease();
      v323 = v471;
      v263 = v356;
      *(v356 + 72) = v472;
      v324 = v474;
      *(v263 + 88) = v473;
      *(v263 + 104) = v324;
      v325 = v460;
      *v263 = v302;
      *(v263 + 1) = v325;
      v326 = v459;
      *(v263 + 2) = v303;
      *(v263 + 3) = v326;
      v327 = v457;
      *(v263 + 4) = v464;
      *(v263 + 5) = v327;
      *(v263 + 6) = v304;
      *(v263 + 15) = v475;
      *(v263 + 56) = v323;
      goto LABEL_82;
    case 20:
      LOBYTE(v471) = 20;
      sub_1E58C2FC0();
      v210 = v446;
      v143 = v462;
      v211 = v464;
      sub_1E5A2BF44();
      if (v211)
      {
        goto LABEL_72;
      }

      sub_1E58C786C();
      v212 = v401;
      sub_1E5A2BFE4();
      v213 = (v458 + 8);
      (*(v400 + 8))(v210, v212);
      (*v213)(v134, v143);
      swift_unknownObjectRelease();
      v284 = v474;
      v263 = v362;
      *(v362 + 2) = v473;
      *(v263 + 3) = v284;
      *(v263 + 4) = v475;
      v285 = v472;
      *v263 = v471;
      *(v263 + 1) = v285;
      goto LABEL_82;
    case 21:
      LOBYTE(v471) = 21;
      sub_1E58C2F6C();
      v216 = *(&v447 + 1);
      v185 = v462;
      v217 = v464;
      sub_1E5A2BF44();
      if (v217)
      {
        goto LABEL_50;
      }

      LOBYTE(v471) = 0;
      v218 = v404;
      v464 = sub_1E5A2BF94();
      v287 = v286;
      LOBYTE(v466) = 1;
      sub_1E58C7674();
      sub_1E5A2BFE4();
      v288 = (v458 + 8);
      (*(v138 + 8))(v216, v218);
      (*v288)(v134, v185);
      swift_unknownObjectRelease();
      v314 = v355;
      *v355 = v464;
      *(v314 + 8) = v287;
      v315 = v472;
      *(v314 + 16) = v471;
      *(v314 + 32) = v315;
      v316 = v474;
      *(v314 + 48) = v473;
      *(v314 + 64) = v316;
      swift_storeEnumTagMultiPayload();
      v145 = v351;
      sub_1E58C7568(v314, v351);
      v272 = v463;
      goto LABEL_85;
    case 22:
      LOBYTE(v471) = 22;
      sub_1E58C2D34();
      v143 = v462;
      v239 = v464;
      sub_1E5A2BF44();
      if (v239)
      {
        goto LABEL_72;
      }

      LOBYTE(v471) = 0;
      sub_1E58C7514();
      sub_1E5A2BF84();
      v300 = v490;
      LOBYTE(v471) = 1;
      v460 = sub_1E5A2BF64();
      v322 = v321;
      LOBYTE(v471) = 2;
      v334 = sub_1E5A2BF74();
      v336 = v335;
      LOBYTE(v471) = 3;
      sub_1E58C771C();
      sub_1E5A2BF84();
      v456 = v480;
      v457 = v481;
      v337 = v483;
      v459 = v482;
      LOBYTE(v471) = 4;
      sub_1E58C7770();
      sub_1E5A2BF84();
      v450 = v476;
      v451 = v477;
      v452 = v478;
      v455 = v479;
      LOBYTE(v466) = 5;
      sub_1E58C77C4();
      sub_1E5A2BF84();
      v464 = 0;
      v447 = v471;
      v448 = v472;
      v449 = v473;
      v489 = 6;
      sub_1E58C7818();
      v338 = v464;
      sub_1E5A2BF84();
      if (v338)
      {

        sub_1E58C2D88(v456, v457);
        sub_1E58C2D88(v450, v451);
        sub_1E58C2DCC(v447, *(&v447 + 1));
        (*(v424 + 8))(v453, v425);
        (*(v458 + 8))(v134, v462);
        goto LABEL_55;
      }

      (*(v424 + 8))(v453, v425);
      (*(v458 + 8))(v134, v462);
      swift_unknownObjectRelease();
      v339 = v467;
      v263 = v352;
      *(v352 + 152) = v466;
      v340 = v468;
      v488 = v336 & 1;
      *v263 = v300;
      *(v263 + 1) = v460;
      *(v263 + 2) = v322;
      *(v263 + 3) = v334;
      v263[32] = v336 & 1;
      v341 = v457;
      *(v263 + 5) = v456;
      *(v263 + 6) = v341;
      *(v263 + 7) = v459;
      *(v263 + 8) = v337;
      v342 = v451;
      *(v263 + 9) = v450;
      *(v263 + 10) = v342;
      v343 = v455;
      *(v263 + 11) = v452;
      *(v263 + 12) = v343;
      v344 = *(&v447 + 1);
      *(v263 + 13) = v447;
      *(v263 + 14) = v344;
      v345 = *(&v448 + 1);
      *(v263 + 15) = v448;
      *(v263 + 16) = v345;
      v346 = *(&v449 + 1);
      *(v263 + 17) = v449;
      *(v263 + 18) = v346;
      *(v263 + 168) = v339;
      *(v263 + 46) = v340;
LABEL_82:
      swift_storeEnumTagMultiPayload();
      v306 = v263;
      goto LABEL_83;
    case 23:
      LOBYTE(v471) = 23;
      sub_1E58C2C8C();
      v243 = v448;
      v143 = v462;
      v244 = v464;
      sub_1E5A2BF44();
      if (v244)
      {
        goto LABEL_72;
      }

      sub_1E58C76C8();
      v245 = v406;
      sub_1E5A2BFE4();
      v246 = v458;
      (*(v405 + 8))(v243, v245);
      (*(v246 + 8))(v134, v143);
      swift_unknownObjectRelease();
      v263 = v363;
      *v363 = v471;
      goto LABEL_82;
    case 24:
      LOBYTE(v471) = 24;
      sub_1E58C2BE4();
      v184 = v449;
      v185 = v462;
      v186 = v464;
      sub_1E5A2BF44();
      if (!v186)
      {
        LOBYTE(v471) = 0;
        v187 = v410;
        v188 = sub_1E5A2BF94();
        v274 = v273;
        v460 = v188;
        LOBYTE(v466) = 1;
        sub_1E58C7674();
        sub_1E5A2BFE4();
        v275 = (v458 + 8);
        v464 = 0;
        (*(v407 + 8))(v184, v187);
        (*v275)(v134, v185);
        swift_unknownObjectRelease();
        v309 = v357;
        *v357 = v460;
        v309[1] = v274;
        v310 = v472;
        *(v309 + 1) = v471;
        *(v309 + 2) = v310;
        v311 = v474;
        *(v309 + 3) = v473;
        *(v309 + 4) = v311;
        goto LABEL_80;
      }

LABEL_50:
      (*(v458 + 8))(v134, v185);
      goto LABEL_55;
    case 25:
      LOBYTE(v471) = 25;
      sub_1E58C2B3C();
      v180 = *(&v448 + 1);
      v143 = v462;
      v181 = v464;
      sub_1E5A2BF44();
      if (v181)
      {
        goto LABEL_72;
      }

      sub_1E58C7620();
      v182 = v409;
      sub_1E5A2BFE4();
      v183 = v458;
      (*(v408 + 8))(v180, v182);
      (*(v183 + 8))(v134, v143);
      swift_unknownObjectRelease();
      v263 = v364;
      *v364 = v471;
      goto LABEL_82;
    case 26:
      LOBYTE(v471) = 26;
      sub_1E58C2A94();
      v251 = v450;
      v143 = v462;
      v252 = v464;
      sub_1E5A2BF44();
      if (v252)
      {
        goto LABEL_72;
      }

      sub_1E58C75CC();
      v261 = v414;
      sub_1E5A2BFE4();
      v262 = v458;
      (*(v412 + 8))(v251, v261);
      (*(v262 + 8))(v134, v143);
      swift_unknownObjectRelease();
      v307 = v472;
      v263 = v366;
      *v366 = v471;
      *(v263 + 2) = v307;
      goto LABEL_82;
    case 27:
      LOBYTE(v471) = 27;
      sub_1E58C2A40();
      v153 = *(&v449 + 1);
      v143 = v462;
      v154 = v464;
      sub_1E5A2BF44();
      if (v154)
      {
        goto LABEL_72;
      }

      (*(v411 + 8))(v153, v413);
      (*(v458 + 8))(v134, v143);
      swift_unknownObjectRelease();
      v145 = v351;
      goto LABEL_68;
    case 28:
      LOBYTE(v471) = 28;
      sub_1E58C29EC();
      v247 = v451;
      v143 = v462;
      v248 = v464;
      sub_1E5A2BF44();
      if (v248)
      {
LABEL_72:
        (*(v458 + 8))(v134, v143);
        goto LABEL_8;
      }

      (*(v415 + 8))(v247, v416);
      (*(v458 + 8))(v134, v143);
      swift_unknownObjectRelease();
      v145 = v351;
LABEL_68:
      swift_storeEnumTagMultiPayload();
      goto LABEL_84;
    case 29:
      LOBYTE(v471) = 29;
      sub_1E58C2998();
      v249 = v452;
      v196 = v462;
      v250 = v464;
      sub_1E5A2BF44();
      if (v250)
      {
LABEL_70:
        (*(v458 + 8))(v134, v196);
        goto LABEL_8;
      }

      v258 = v418;
      v259 = sub_1E5A2BFC4();
      v260 = v458;
      v305 = v259;
      (*(v417 + 8))(v249, v258);
      (*(v260 + 8))(v134, v196);
      swift_unknownObjectRelease();
      v296 = v365;
      *v365 = v305;
LABEL_79:
      swift_storeEnumTagMultiPayload();
      v306 = v296;
LABEL_83:
      v145 = v351;
      sub_1E58C7568(v306, v351);
LABEL_84:
      v272 = v463;
      goto LABEL_85;
    case 30:
      LOBYTE(v471) = 30;
      sub_1E58C28F0();
      v237 = v462;
      v238 = v464;
      sub_1E5A2BF44();
      if (v238)
      {
        (*(v458 + 8))(v134, v237);
LABEL_55:
        swift_unknownObjectRelease();
        v151 = v463;
        return __swift_destroy_boxed_opaque_existential_1(v151);
      }

      sub_1E58C7514();
      v256 = v403;
      sub_1E5A2BFE4();
      v257 = v458;
      (*(v419 + 8))(v133, v256);
      (*(v257 + 8))(v134, v237);
      swift_unknownObjectRelease();
      v309 = v367;
      *v367 = v471;
LABEL_80:
      swift_storeEnumTagMultiPayload();
      v332 = v309;
LABEL_81:
      v145 = v351;
      sub_1E58C7568(v332, v351);
      v272 = v463;
LABEL_85:
      sub_1E58C7568(v145, v454);
      result = __swift_destroy_boxed_opaque_existential_1(v272);
      break;
    default:
      goto LABEL_6;
  }

  return result;
}

unint64_t sub_1E58C7514()
{
  result = qword_1ECFFBAC0;
  if (!qword_1ECFFBAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBAC0);
  }

  return result;
}

uint64_t sub_1E58C7568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanCreationAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E58C75CC()
{
  result = qword_1ECFFBAC8;
  if (!qword_1ECFFBAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBAC8);
  }

  return result;
}

unint64_t sub_1E58C7620()
{
  result = qword_1ECFFBAD0;
  if (!qword_1ECFFBAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBAD0);
  }

  return result;
}

unint64_t sub_1E58C7674()
{
  result = qword_1ECFFBAD8;
  if (!qword_1ECFFBAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBAD8);
  }

  return result;
}

unint64_t sub_1E58C76C8()
{
  result = qword_1ECFFBAE0;
  if (!qword_1ECFFBAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBAE0);
  }

  return result;
}

unint64_t sub_1E58C771C()
{
  result = qword_1ECFFBAE8;
  if (!qword_1ECFFBAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBAE8);
  }

  return result;
}

unint64_t sub_1E58C7770()
{
  result = qword_1ECFFBAF0;
  if (!qword_1ECFFBAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBAF0);
  }

  return result;
}

unint64_t sub_1E58C77C4()
{
  result = qword_1ECFFBAF8;
  if (!qword_1ECFFBAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBAF8);
  }

  return result;
}

unint64_t sub_1E58C7818()
{
  result = qword_1ECFFBB00;
  if (!qword_1ECFFBB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBB00);
  }

  return result;
}

unint64_t sub_1E58C786C()
{
  result = qword_1ECFFBB08;
  if (!qword_1ECFFBB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBB08);
  }

  return result;
}

unint64_t sub_1E58C78C0()
{
  result = qword_1ECFFBB10;
  if (!qword_1ECFFBB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBB10);
  }

  return result;
}

unint64_t sub_1E58C7914()
{
  result = qword_1ECFFBB18;
  if (!qword_1ECFFBB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBB18);
  }

  return result;
}

unint64_t sub_1E58C7968()
{
  result = qword_1ECFFBB20;
  if (!qword_1ECFFBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBB20);
  }

  return result;
}

uint64_t sub_1E58C79BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutPlanScheduledItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E58C7A00()
{
  result = qword_1ECFFBB30;
  if (!qword_1ECFFBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBB30);
  }

  return result;
}

unint64_t sub_1E58C7A54()
{
  result = qword_1ECFFBB38;
  if (!qword_1ECFFBB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBB38);
  }

  return result;
}

unint64_t sub_1E58C7AA8()
{
  result = qword_1ECFFBB40;
  if (!qword_1ECFFBB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB970, &unk_1E5A2D6B0);
    sub_1E58C7B54(&qword_1ECFFBB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBB40);
  }

  return result;
}

uint64_t sub_1E58C7B54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB988, &qword_1E5A3A470);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E58C7C40()
{
  sub_1E58C7E08();
  if (v0 <= 0x3F)
  {
    sub_1E58C7E38();
    if (v1 <= 0x3F)
    {
      sub_1E58C7EC8();
      if (v2 <= 0x3F)
      {
        sub_1E58C8020(319, &qword_1ECFFBB88);
        if (v3 <= 0x3F)
        {
          sub_1E58C7EF8();
          if (v4 <= 0x3F)
          {
            sub_1E58C7F70();
            if (v5 <= 0x3F)
            {
              sub_1E58C8020(319, &qword_1ECFFBBB8);
              if (v6 <= 0x3F)
              {
                sub_1E58C8020(319, &qword_1ECFFBBC0);
                if (v7 <= 0x3F)
                {
                  sub_1E58C8078(319);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

uint64_t sub_1E58C7E08()
{
  result = qword_1ECFFBB60;
  if (!qword_1ECFFBB60)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1ECFFBB60);
  }

  return result;
}

void sub_1E58C7E38()
{
  if (!qword_1ECFFBB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBB70, &qword_1E5A2D840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBB78, &qword_1E5A2D848);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECFFBB68);
    }
  }
}

uint64_t sub_1E58C7EC8()
{
  result = qword_1ECFFBB80;
  if (!qword_1ECFFBB80)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1ECFFBB80);
  }

  return result;
}

void sub_1E58C7EF8()
{
  if (!qword_1ECFFBB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBB98, &qword_1E5A2D850);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECFFBB90);
    }
  }
}

void sub_1E58C7F70()
{
  if (!qword_1ECFFBBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB790, &qword_1E5A2D620);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBBA8, &qword_1E5A2D858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBBB0, &qword_1E5A2D860);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECFFBBA0);
    }
  }
}

void sub_1E58C8020(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1E58C8078(uint64_t a1)
{
  if (!qword_1ECFFBBC8)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBBA8, &qword_1E5A2D858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBB70, &qword_1E5A2D840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBBB0, &qword_1E5A2D860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBBD0, &qword_1E5A2D868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBBD8, &qword_1E5A2D870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBBE0, &qword_1E5A2D878);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBBE8, &qword_1E5A2D880);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ECFFBBC8);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutPlanCreationAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPlanCreationAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutPlanWeekday(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutPlanWeekday(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PlanCompletionState.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PlanCompletionState.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1E58C87B0()
{
  result = qword_1ECFFBBF0;
  if (!qword_1ECFFBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBBF0);
  }

  return result;
}

unint64_t sub_1E58C8808()
{
  result = qword_1ECFFBBF8;
  if (!qword_1ECFFBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBBF8);
  }

  return result;
}

unint64_t sub_1E58C8860()
{
  result = qword_1ECFFBC00;
  if (!qword_1ECFFBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC00);
  }

  return result;
}

unint64_t sub_1E58C88B8()
{
  result = qword_1ECFFBC08;
  if (!qword_1ECFFBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC08);
  }

  return result;
}

unint64_t sub_1E58C8910()
{
  result = qword_1ECFFBC10;
  if (!qword_1ECFFBC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC10);
  }

  return result;
}

unint64_t sub_1E58C8968()
{
  result = qword_1ECFFBC18;
  if (!qword_1ECFFBC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC18);
  }

  return result;
}

unint64_t sub_1E58C89C0()
{
  result = qword_1ECFFBC20;
  if (!qword_1ECFFBC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC20);
  }

  return result;
}

unint64_t sub_1E58C8A18()
{
  result = qword_1ECFFBC28;
  if (!qword_1ECFFBC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC28);
  }

  return result;
}

unint64_t sub_1E58C8A70()
{
  result = qword_1ECFFBC30;
  if (!qword_1ECFFBC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC30);
  }

  return result;
}

unint64_t sub_1E58C8AC8()
{
  result = qword_1ECFFBC38;
  if (!qword_1ECFFBC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC38);
  }

  return result;
}

unint64_t sub_1E58C8B20()
{
  result = qword_1ECFFBC40;
  if (!qword_1ECFFBC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC40);
  }

  return result;
}

unint64_t sub_1E58C8B78()
{
  result = qword_1ECFFBC48;
  if (!qword_1ECFFBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC48);
  }

  return result;
}

unint64_t sub_1E58C8BD0()
{
  result = qword_1ECFFBC50;
  if (!qword_1ECFFBC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC50);
  }

  return result;
}

unint64_t sub_1E58C8C28()
{
  result = qword_1ECFFBC58;
  if (!qword_1ECFFBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFBC58);
  }

  return result;
}