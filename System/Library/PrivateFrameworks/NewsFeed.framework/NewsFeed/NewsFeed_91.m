uint64_t sub_1D6354F50(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v29 = a2 + 32;
  v30 = result + 32;
  v27 = *(result + 16);
  while (v3 != v2)
  {
    v4 = (v30 + 24 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = (v29 + 24 * v3);
    v9 = v8[2];
    v10 = v5 == *v8 && v6 == v8[1];
    if (!v10 && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }

    v11 = *(v7 + 16);
    if (v11 != *(v9 + 16))
    {
      return 0;
    }

    if (v11)
    {
      v12 = v7 == v9;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v28 = v3;

      v13 = 0;
      v14 = 0;
      v31 = v7;
      v33 = v11;
      while (v14 < *(v7 + 16))
      {
        if (v14 >= *(v9 + 16))
        {
          goto LABEL_46;
        }

        v16 = *(v7 + v13 + 32);
        v15 = *(v7 + v13 + 40);
        v17 = *(v7 + v13 + 48);
        v18 = *(v7 + v13 + 49);
        v20 = *(v9 + v13 + 32);
        v19 = *(v9 + v13 + 40);
        v21 = *(v9 + v13 + 48);
        v34 = v18;
        if (v18)
        {
          if ((*(v9 + v13 + 49) & 1) == 0)
          {
            goto LABEL_38;
          }

          sub_1D5E04C58(v16, v15, v17, 1);
          sub_1D5E04C58(v20, v19, v21, 1);
          v7 = v31;
          if ((0x29282F2A2D2BuLL >> (8 * v16)) != (0x29282F2A2D2BuLL >> (8 * v20)))
          {
            v23 = v16;
            v24 = v15;
            v25 = v17;
            v26 = 1;
            goto LABEL_42;
          }
        }

        else
        {
          if (*(v9 + v13 + 49))
          {
LABEL_38:
            v22 = *(v7 + v13 + 49);
            sub_1D5E04C58(v16, v15, v17, v18);
            sub_1D5E04C58(v20, v19, v21, v22 ^ 1);
            sub_1D5E04C68(v16, v15, v17, v22);
            v26 = v22 ^ 1;
            v23 = v20;
            v24 = v19;
            v25 = v21;
            goto LABEL_42;
          }

          if (*(v7 + v13 + 48))
          {
            if ((*(v9 + v13 + 48) & 1) == 0)
            {
              sub_1D5E04C58(v16, v15, v17, 0);
              sub_1D5E04C58(v20, v19, v21, 0);
              sub_1D5E04C58(v16, v15, v17, 0);
              sub_1D5E04C58(v20, v19, v21, 0);
              sub_1D5E04C58(v16, v15, v17, 0);
              sub_1D5D2F2C8(v16, v15, 1);
LABEL_40:
              sub_1D5D2F2C8(v20, v19, (v17 & 1) == 0);
LABEL_41:
              sub_1D5E04C68(v16, v15, v17, 0);
              sub_1D5E04C68(v20, v19, v21, 0);
              v23 = v16;
              v24 = v15;
              v25 = v17;
              v26 = 0;
LABEL_42:
              sub_1D5E04C68(v23, v24, v25, v26);

              return 0;
            }

            if (v16 == v20 && v15 == v19)
            {
              sub_1D5E04C58(v16, v15, v17, 0);
              sub_1D5E04C58(v16, v15, v21, 0);
              sub_1D5E04C58(v16, v15, v17, 0);
              sub_1D5E04C58(v16, v15, v21, 0);
              sub_1D5E04C58(v16, v15, v17, 0);
              sub_1D5D2F2C8(v16, v15, 1);
              sub_1D5D2F2C8(v16, v15, 1);
            }

            else
            {
              v32 = sub_1D72646CC();
              sub_1D5E04C58(v16, v15, v17, 0);
              sub_1D5E04C58(v20, v19, v21, 0);
              sub_1D5E04C58(v16, v15, v17, 0);
              sub_1D5E04C58(v20, v19, v21, 0);
              sub_1D5E04C58(v16, v15, v17, 0);
              sub_1D5D2F2C8(v16, v15, 1);
              sub_1D5D2F2C8(v20, v19, 1);
              if ((v32 & 1) == 0)
              {
                goto LABEL_41;
              }
            }
          }

          else
          {
            sub_1D5E04C58(v16, v15, v17, 0);
            sub_1D5E04C58(v20, v19, v21, 0);
            sub_1D5E04C58(v16, v15, v17, 0);
            sub_1D5E04C58(v20, v19, v21, 0);
            sub_1D5D2F2C8(v16, v15, 0);
            if (v21)
            {
              goto LABEL_40;
            }

            sub_1D5D2F2C8(v20, v19, 0);
            if (v16 != v20)
            {
              goto LABEL_41;
            }
          }

          sub_1D5E04C68(v16, v15, v17, 0);
          sub_1D5E04C68(v20, v19, v21, 0);
        }

        ++v14;
        result = sub_1D5E04C68(v16, v15, v17, v34);
        v13 += 24;
        if (v33 == v14)
        {

          v2 = v27;
          v3 = v28;
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
      break;
    }

LABEL_7:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D63554CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v6 = *v3;
      v7 = *i;
      v8 = *(v3 - 2) == *(i - 2) && *(v3 - 1) == *(i - 1);
      if (!v8 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      if (v6 >> 62)
      {
        break;
      }

      if (v7 >> 62)
      {
LABEL_105:
        sub_1D5EB1500(v7);
        sub_1D5EB1500(v6);
        v56 = v6;
        goto LABEL_107;
      }

      if (*(v6 + 16) == *(v7 + 16) && *(v6 + 24) == *(v7 + 24))
      {
        sub_1D5EB1500(v7);
        sub_1D5EB1500(v6);
        v5 = v7;
LABEL_6:
        sub_1D5EB15C4(v6);
        sub_1D5EB15C4(v5);
        goto LABEL_7;
      }

      v27 = sub_1D72646CC();
      sub_1D5EB1500(v7);
      sub_1D5EB1500(v6);
      sub_1D5EB15C4(v6);
      sub_1D5EB15C4(v7);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v6 >> 62 != 1)
    {
      if (v6 == 0x8000000000000000)
      {
        v6 = 0x8000000000000000;
        v5 = 0x8000000000000000;
        if (v7 != 0x8000000000000000)
        {
          sub_1D5EB1500(v7);
          v56 = 0x8000000000000000;
LABEL_107:
          sub_1D5EB15C4(v56);
          v6 = v7;
          goto LABEL_131;
        }
      }

      else
      {
        v6 = 0x8000000000000008;
        v5 = 0x8000000000000008;
        if (v7 != 0x8000000000000008)
        {
          sub_1D5EB1500(v7);
          v56 = 0x8000000000000008;
          goto LABEL_107;
        }
      }

      goto LABEL_6;
    }

    if (v7 >> 62 != 1)
    {
      goto LABEL_105;
    }

    v9 = 0x8000000000000000;
    v10 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v98 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v99 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (v10 >> 62)
    {
      if (v10 >> 62 == 1)
      {
        if (v11 >> 62 != 1)
        {
          goto LABEL_106;
        }

        v12 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v13 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v97 = v12;
        v94 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v95 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v12 >> 62)
        {
          v93 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v96 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          if (v12 >> 62 == 1)
          {
            if (v13 >> 62 != 1)
            {
              v65 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              sub_1D5EB1500(v7);
              sub_1D5EB1500(v6);

              sub_1D5EB1500(v6);

              sub_1D5EB1500(v7);
              sub_1D5EB1500(v11);
              sub_1D5EB1500(v10);
              sub_1D5EB1500(v65);
              v66 = v97;
              goto LABEL_110;
            }

            v14 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v85 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v86 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v15 = v13 & 0x3FFFFFFFFFFFFFFFLL;
            v16 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v90 = v14;
            v84 = *(v15 + 24);
            if (v14 >> 62)
            {
              v82 = v16;
              if (v14 >> 62 == 1)
              {
                if (v16 >> 62 != 1)
                {
                  v63 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                  v60 = v16;
                  sub_1D5EB1500(v7);
                  sub_1D5EB1500(v6);

                  sub_1D5EB1500(v6);

                  sub_1D5EB1500(v7);
                  sub_1D5EB1500(v11);
                  sub_1D5EB1500(v10);
                  v62 = v96;
                  sub_1D5EB1500(v96);
                  sub_1D5EB1500(v97);
                  sub_1D5EB1500(v60);
                  v61 = v90;
                  goto LABEL_116;
                }

                v17 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                v18 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                v78 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                v79 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                v80 = v17;
                v81 = v18;
                if (v17 >> 62)
                {
                  if (v17 >> 62 == 1)
                  {
                    if (v18 >> 62 != 1)
                    {
                      v68 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                      sub_1D5EB1500(v7);
                      sub_1D5EB1500(v6);

                      sub_1D5EB1500(v6);

                      sub_1D5EB1500(v7);
                      sub_1D5EB1500(v11);
                      sub_1D5EB1500(v10);
                      sub_1D5EB1500(v96);
                      sub_1D5EB1500(v97);
                      v47 = v82;
                      sub_1D5EB1500(v82);
                      v69 = v90;
                      sub_1D5EB1500(v90);
                      sub_1D5EB1500(v68);
                      sub_1D5EB1500(v80);
                      sub_1D5EB15C4(v80);
                      v70 = v68;
LABEL_120:
                      sub_1D5EB15C4(v70);
                      sub_1D5EB15C4(v69);
                      v73 = v47;
                      goto LABEL_126;
                    }

                    v19 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                    v76 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                    v77 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                    v102 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                    v103 = v19;
                    v100 = v76;
                    v101 = v77;
                    v20 = v18;
                    sub_1D5EB1500(v7);
                    sub_1D5EB1500(v6);

                    sub_1D5EB1500(v6);

                    sub_1D5EB1500(v7);
                    sub_1D5EB1500(v11);
                    sub_1D5EB1500(v10);
                    sub_1D5EB1500(v96);
                    sub_1D5EB1500(v97);
                    sub_1D5EB1500(v82);
                    sub_1D5EB1500(v90);
                    sub_1D5EB1500(v20);

                    sub_1D5EB1500(v20);
                    sub_1D5EB1500(v80);
                    sub_1D5EB1500(v76);

                    if ((static FormatVisibility.== infix(_:_:)(&v102, &v100) & 1) == 0)
                    {
                      sub_1D5EB15C4(v76);

                      sub_1D5EB15C4(v80);
                      v24 = v81;
                      sub_1D5EB15C4(v81);
LABEL_122:
                      sub_1D5EB15C4(v24);

                      sub_1D5EB15C4(v90);
                      sub_1D5EB15C4(v82);
                      sub_1D5EB15C4(v97);
                      sub_1D5EB15C4(v96);
                      goto LABEL_128;
                    }

                    v21 = v103;
                    v22 = v10;
                    v23 = v101;

                    v75 = sub_1D63554CC(v21, v23);

                    v10 = v22;

                    sub_1D5EB15C4(v76);

                    sub_1D5EB15C4(v80);
                    v24 = v81;
                    sub_1D5EB15C4(v81);
                    if ((v75 & 1) == 0)
                    {
                      goto LABEL_122;
                    }

                    v25 = v79;
                    goto LABEL_98;
                  }

                  v49 = v16;
                  sub_1D5EB1500(v7);
                  sub_1D5EB1500(v6);

                  sub_1D5EB1500(v6);

                  sub_1D5EB1500(v7);
                  sub_1D5EB1500(v11);
                  sub_1D5EB1500(v10);
                  sub_1D5EB1500(v96);
                  sub_1D5EB1500(v97);
                  sub_1D5EB1500(v49);
                  sub_1D5EB1500(v90);
                  if (v80 == 0x8000000000000000)
                  {
                    v50 = v81;
                    if (v81 != 0x8000000000000000)
                    {
                      sub_1D5EB1500(v81);
                      v74 = 0x8000000000000000;
LABEL_125:
                      sub_1D5EB15C4(v74);
                      sub_1D5EB15C4(v50);
                      sub_1D5EB15C4(v90);
                      v73 = v82;
LABEL_126:
                      sub_1D5EB15C4(v73);
                      sub_1D5EB15C4(v97);
                      v58 = v96;
LABEL_127:
                      sub_1D5EB15C4(v58);
LABEL_128:
                      v57 = v10;
                      goto LABEL_129;
                    }

                    sub_1D5EB1500(0x8000000000000000);
                    v25 = v79;

                    sub_1D5EB15C4(0x8000000000000000);
                    v51 = 0x8000000000000000;
                  }

                  else
                  {
                    v50 = v81;
                    if (v81 != 0x8000000000000008)
                    {
                      sub_1D5EB1500(v81);
                      v74 = 0x8000000000000008;
                      goto LABEL_125;
                    }

                    sub_1D5EB1500(0x8000000000000008);
                    v25 = v79;

                    sub_1D5EB15C4(0x8000000000000008);
                    v51 = 0x8000000000000008;
                  }
                }

                else
                {
                  v47 = v16;
                  if (v18 >> 62)
                  {
                    v71 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                    v72 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                    sub_1D5EB1500(v7);
                    sub_1D5EB1500(v6);

                    sub_1D5EB1500(v6);

                    sub_1D5EB1500(v7);
                    sub_1D5EB1500(v11);
                    sub_1D5EB1500(v10);
                    sub_1D5EB1500(v96);
                    sub_1D5EB1500(v97);
                    sub_1D5EB1500(v47);
                    v69 = v90;
                    sub_1D5EB1500(v90);
                    sub_1D5EB1500(v71);
                    sub_1D5EB1500(v72);
                    sub_1D5EB15C4(v72);
                    v70 = v71;
                    goto LABEL_120;
                  }

                  if (*(v17 + 16) != *(v18 + 16) || *(v17 + 24) != *(v18 + 24))
                  {
                    v89 = sub_1D72646CC();
                    sub_1D5EB1500(v7);
                    sub_1D5EB1500(v6);

                    sub_1D5EB1500(v6);

                    sub_1D5EB1500(v7);
                    sub_1D5EB1500(v11);
                    sub_1D5EB1500(v10);
                    sub_1D5EB1500(v96);
                    sub_1D5EB1500(v97);
                    sub_1D5EB1500(v47);
                    sub_1D5EB1500(v90);
                    sub_1D5EB1500(v81);
                    v25 = v79;

                    sub_1D5EB1500(v81);
                    sub_1D5EB1500(v80);
                    sub_1D5EB15C4(v80);
                    sub_1D5EB15C4(v81);
                    if ((v89 & 1) == 0)
                    {
                      sub_1D5EB15C4(v81);

                      sub_1D5EB15C4(v90);
                      sub_1D5EB15C4(v82);
                      sub_1D5EB15C4(v97);
                      sub_1D5EB15C4(v96);
                      v57 = v93;
                      goto LABEL_129;
                    }

                    goto LABEL_98;
                  }

                  sub_1D5EB1500(v7);
                  sub_1D5EB1500(v6);

                  sub_1D5EB1500(v6);

                  sub_1D5EB1500(v7);
                  sub_1D5EB1500(v11);
                  sub_1D5EB1500(v10);
                  sub_1D5EB1500(v96);
                  sub_1D5EB1500(v97);
                  sub_1D5EB1500(v47);
                  sub_1D5EB1500(v90);
                  sub_1D5EB1500(v81);
                  v25 = v79;

                  sub_1D5EB1500(v81);
                  sub_1D5EB1500(v80);
                  sub_1D5EB15C4(v80);
                  v51 = v81;
                }

                sub_1D5EB15C4(v51);
LABEL_98:

                v52 = sub_1D63554CC(v78, v25);

                sub_1D5EB15C4(v81);

                sub_1D5EB15C4(v90);
                sub_1D5EB15C4(v82);
                if ((v52 & 1) == 0)
                {
LABEL_113:
                  sub_1D5EB15C4(v97);
                  sub_1D5EB15C4(v96);
                  v57 = v93;
                  goto LABEL_129;
                }

                goto LABEL_99;
              }

              sub_1D5EB1500(v7);
              sub_1D5EB1500(v6);

              sub_1D5EB1500(v6);

              if (v90 == 0x8000000000000000)
              {
                v43 = 0x8000000000000000;
                v44 = v7;
                v41 = v96;
                v45 = v97;
                v46 = 0x8000000000000000;
                if (v82 != 0x8000000000000000)
                {
                  v64 = v82;
                  sub_1D5EB1500(v7);
                  sub_1D5EB1500(v11);
                  sub_1D5EB1500(v10);
                  v65 = v96;
                  sub_1D5EB1500(v96);
                  v66 = v97;
                  sub_1D5EB1500(v97);
                  sub_1D5EB1500(v82);
                  v67 = 0x8000000000000000;
                  goto LABEL_117;
                }
              }

              else
              {
                v44 = v7;
                v41 = v96;
                v45 = v97;
                v43 = 0x8000000000000008;
                v46 = 0x8000000000000008;
                if (v82 != 0x8000000000000008)
                {
                  v64 = v82;
                  sub_1D5EB1500(v7);
                  sub_1D5EB1500(v11);
                  sub_1D5EB1500(v10);
                  v65 = v96;
                  sub_1D5EB1500(v96);
                  v66 = v97;
                  sub_1D5EB1500(v97);
                  sub_1D5EB1500(v82);
                  v67 = 0x8000000000000008;
LABEL_117:
                  sub_1D5EB15C4(v67);
                  sub_1D5EB15C4(v64);
LABEL_111:
                  sub_1D5EB15C4(v66);
                  v58 = v65;
                  goto LABEL_127;
                }
              }
            }

            else
            {
              if (v16 >> 62)
              {
                v60 = v16;
                v61 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                sub_1D5EB1500(v7);
                sub_1D5EB1500(v6);

                sub_1D5EB1500(v6);

                sub_1D5EB1500(v7);
                sub_1D5EB1500(v11);
                sub_1D5EB1500(v10);
                v62 = v96;
                sub_1D5EB1500(v96);
                v63 = v97;
                sub_1D5EB1500(v97);
                sub_1D5EB1500(v60);
LABEL_116:
                sub_1D5EB1500(v61);
                sub_1D5EB15C4(v61);
                sub_1D5EB15C4(v60);
                sub_1D5EB15C4(v63);
                v58 = v62;
                goto LABEL_127;
              }

              v41 = v16;
              if (*(v14 + 16) != *(v16 + 16) || *(v14 + 24) != *(v16 + 24))
              {
                v87 = sub_1D72646CC();
                sub_1D5EB1500(v7);
                sub_1D5EB1500(v6);

                sub_1D5EB1500(v6);

                sub_1D5EB1500(v7);
                sub_1D5EB1500(v11);
                sub_1D5EB1500(v10);
                sub_1D5EB1500(v96);
                sub_1D5EB1500(v97);
                sub_1D5EB1500(v41);
                sub_1D5EB1500(v90);
                sub_1D5EB15C4(v90);
                sub_1D5EB15C4(v41);
                if ((v87 & 1) == 0)
                {
                  goto LABEL_113;
                }

LABEL_99:

                v53 = sub_1D63554CC(v85, v84);

                sub_1D5EB15C4(v97);
                sub_1D5EB15C4(v96);
                v11 = v86;
                v10 = v93;
                if ((v53 & 1) == 0)
                {
                  goto LABEL_128;
                }

                goto LABEL_100;
              }

              sub_1D5EB1500(v7);
              sub_1D5EB1500(v6);

              sub_1D5EB1500(v6);

              sub_1D5EB1500(v7);
              sub_1D5EB1500(v11);
              v44 = v10;
              v11 = v96;
              v10 = v97;
              v45 = v90;
              v43 = v90;
              v46 = v41;
            }

            v88 = v46;
            v92 = v45;
            v83 = v43;
            sub_1D5EB1500(v44);
            sub_1D5EB1500(v11);
            sub_1D5EB1500(v10);
            sub_1D5EB1500(v41);
            sub_1D5EB1500(v92);
            sub_1D5EB15C4(v83);
            sub_1D5EB15C4(v88);
            goto LABEL_99;
          }

          sub_1D5EB1500(v7);
          sub_1D5EB1500(v6);

          sub_1D5EB1500(v6);

          v35 = v7;
          v36 = v11;
          if (v97 == 0x8000000000000000)
          {
            v37 = v10;
            v38 = 0x8000000000000000;
            v39 = v96;
            if (v96 != 0x8000000000000000)
            {
              sub_1D5EB1500(v7);
              sub_1D5EB1500(v11);
              v10 = v93;
              sub_1D5EB1500(v93);
              sub_1D5EB1500(v96);
              v59 = 0x8000000000000000;
LABEL_112:
              sub_1D5EB15C4(v59);
              sub_1D5EB15C4(v39);
              goto LABEL_128;
            }
          }

          else
          {
            v37 = v10;
            v9 = 0x8000000000000008;
            v38 = 0x8000000000000008;
            v39 = v96;
            if (v96 != 0x8000000000000008)
            {
              sub_1D5EB1500(v7);
              sub_1D5EB1500(v11);
              v10 = v93;
              sub_1D5EB1500(v93);
              sub_1D5EB1500(v96);
              v59 = 0x8000000000000008;
              goto LABEL_112;
            }
          }
        }

        else
        {
          if (v13 >> 62)
          {
            v66 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v65 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            sub_1D5EB1500(v7);
            sub_1D5EB1500(v6);

            sub_1D5EB1500(v6);

            sub_1D5EB1500(v7);
            sub_1D5EB1500(v11);
            sub_1D5EB1500(v10);
            sub_1D5EB1500(v65);
LABEL_110:
            sub_1D5EB1500(v66);
            goto LABEL_111;
          }

          v33 = *(v12 + 16) == *(v13 + 16) && *(v12 + 24) == *(v13 + 24);
          v34 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          if (!v33)
          {
            v91 = sub_1D72646CC();
            sub_1D5EB1500(v7);
            sub_1D5EB1500(v6);

            sub_1D5EB1500(v6);

            sub_1D5EB1500(v7);
            sub_1D5EB1500(v11);
            sub_1D5EB1500(v10);
            sub_1D5EB1500(v34);
            sub_1D5EB1500(v97);
            sub_1D5EB15C4(v97);
            sub_1D5EB15C4(v34);
            if ((v91 & 1) == 0)
            {
              goto LABEL_128;
            }

            goto LABEL_100;
          }

          sub_1D5EB1500(v7);
          sub_1D5EB1500(v6);

          sub_1D5EB1500(v6);

          sub_1D5EB1500(v7);
          v36 = v11;
          sub_1D5EB1500(v11);
          v93 = v10;
          v35 = v10;
          v11 = v34;
          v38 = v34;
          v37 = v97;
          v9 = v97;
        }

        v40 = v37;
        sub_1D5EB1500(v35);
        sub_1D5EB1500(v11);
        sub_1D5EB1500(v40);
        sub_1D5EB15C4(v9);
        sub_1D5EB15C4(v38);
        v11 = v36;
        v10 = v93;
LABEL_100:

        v29 = sub_1D63554CC(v95, v94);

        sub_1D5EB15C4(v10);
        v30 = v11;
LABEL_101:
        sub_1D5EB15C4(v30);
        if ((v29 & 1) == 0)
        {
          goto LABEL_130;
        }

        goto LABEL_102;
      }

      sub_1D5EB1500(v7);
      sub_1D5EB1500(v6);

      sub_1D5EB1500(v6);

      v31 = v7;
      if (v10 == 0x8000000000000000)
      {
        v32 = 0x8000000000000000;
        if (v11 != 0x8000000000000000)
        {
          sub_1D5EB1500(v7);
          sub_1D5EB1500(v11);
          v57 = 0x8000000000000000;
LABEL_129:
          sub_1D5EB15C4(v57);
          sub_1D5EB15C4(v11);
LABEL_130:
          sub_1D5EB15C4(v6);
          sub_1D5EB15C4(v7);

          sub_1D5EB15C4(v7);

LABEL_131:
          sub_1D5EB15C4(v6);
          return 0;
        }
      }

      else
      {
        v9 = 0x8000000000000008;
        v32 = 0x8000000000000008;
        if (v11 != 0x8000000000000008)
        {
          sub_1D5EB1500(v7);
          sub_1D5EB1500(v11);
          v57 = 0x8000000000000008;
          goto LABEL_129;
        }
      }
    }

    else
    {
      if (v11 >> 62)
      {
LABEL_106:
        sub_1D5EB1500(v7);
        sub_1D5EB1500(v6);

        sub_1D5EB1500(v6);

        sub_1D5EB1500(v7);
        sub_1D5EB1500(v11);
        sub_1D5EB1500(v10);
        goto LABEL_128;
      }

      if (*(v10 + 16) != *(v11 + 16) || *(v10 + 24) != *(v11 + 24))
      {
        v29 = sub_1D72646CC();
        sub_1D5EB1500(v7);
        sub_1D5EB1500(v6);

        sub_1D5EB1500(v6);

        sub_1D5EB1500(v7);
        sub_1D5EB1500(v11);
        sub_1D5EB1500(v10);
        sub_1D5EB15C4(v10);
        v30 = v11;
        goto LABEL_101;
      }

      sub_1D5EB1500(v7);
      sub_1D5EB1500(v6);

      sub_1D5EB1500(v6);

      sub_1D5EB1500(v7);
      sub_1D5EB1500(v11);
      v9 = v10;
      v31 = v10;
      v32 = v11;
    }

    sub_1D5EB1500(v31);
    sub_1D5EB15C4(v9);
    sub_1D5EB15C4(v32);
LABEL_102:

    v54 = sub_1D63554CC(v99, v98);

    sub_1D5EB15C4(v6);
    sub_1D5EB15C4(v7);

    sub_1D5EB15C4(v7);

    sub_1D5EB15C4(v6);
    if ((v54 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1D635677C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v230 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69D6A58];
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v227 = &v192 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v233 = &v192 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v225 = &v192 - v17;
  sub_1D66F4EB8(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v8);
  v235 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v234 = &v192 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v232 = &v192 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v226 = (&v192 - v26);
  v27 = type metadata accessor for FormatPropertyDefinition(0);
  v239 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v192 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v192 - v33;
  v231 = type metadata accessor for FormatSlotDefinitionItemSet();
  v237 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231, v35);
  v228 = &v192 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v229 = &v192 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v192 - v42;
  MEMORY[0x1EEE9AC00](v44, v45);
  v236 = &v192 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v192 - v49;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v192 - v53;
  v55 = type metadata accessor for FormatSlotDefinition();
  MEMORY[0x1EEE9AC00](v55, v56);
  v240 = (&v192 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v58, v59);
  v63 = (&v192 - v62);
  v64 = *(a1 + 16);
  if (v64 != *(a2 + 16))
  {
    return 0;
  }

  if (!v64 || a1 == a2)
  {
    return 1;
  }

  v214 = v60;
  v224 = v54;
  v222 = v50;
  v65 = 0;
  v66 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v67 = a1 + v66;
  v68 = a2 + v66;
  v219 = (v5 + 48);
  v215 = (v5 + 32);
  v216 = (v5 + 8);
  v69 = *(v61 + 72);
  v238 = (&v192 - v62);
  v220 = v4;
  v221 = v43;
  v223 = v64;
  v212 = v67;
  v211 = a2 + v66;
  v210 = v69;
  while (1)
  {
    result = sub_1D6706BB4(v67 + v69 * v65, v63, type metadata accessor for FormatSlotDefinition);
    if (v65 == v223)
    {
      __break(1u);
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_147:
      __break(1u);
      return result;
    }

    v218 = v65;
    v71 = v240;
    sub_1D6706BB4(v68 + v69 * v65, v240, type metadata accessor for FormatSlotDefinition);
    v72 = *v63 == *v71 && v63[1] == v71[1];
    if (!v72 && (sub_1D72646CC() & 1) == 0 || (v238[2] != v240[2] || v238[3] != v240[3]) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_134;
    }

    result = v238[4];
    if (result != v240[4] || v238[5] != v240[5])
    {
      result = sub_1D72646CC();
      if ((result & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    v73 = v238[6];
    v74 = v240[6];
    v75 = *(v73 + 16);
    if (v75 != *(v74 + 16))
    {
      goto LABEL_134;
    }

    if (v75 && v73 != v74)
    {
      break;
    }

LABEL_97:
    v149 = v238[7];
    v83 = v240[7];
    v136 = *(v149 + 16);
    if (v136 != *(v83 + 16))
    {
      goto LABEL_134;
    }

    if (v136 && v149 != v83)
    {
      v166 = 0;
      v81 = v149 + 32;
      v137 = v83 + 32;
      while (v166 < *(v149 + 16))
      {
        v167 = *(v81 + 8 * v166);
        v242 = v167;
        if (v166 >= *(v83 + 16))
        {
          goto LABEL_137;
        }

        v241 = *(v137 + 8 * v166);
        v168 = v241;
        sub_1D5FBABE0(v167);
        sub_1D5FBABE0(v168);
        LOBYTE(v168) = static FormatSlotTransform.== infix(_:_:)(&v242, &v241);
        sub_1D5FBAC60(v241);
        sub_1D5FBAC60(v242);
        if ((v168 & 1) == 0)
        {
          goto LABEL_134;
        }

        if (v136 == ++v166)
        {
          goto LABEL_105;
        }
      }

      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

LABEL_105:
    v149 = v238[8];
    v137 = v240[8];
    v169 = *(v149 + 16);
    if (v169 != *(v137 + 16))
    {
      goto LABEL_134;
    }

    if (v169 && v149 != v137)
    {
      v83 = 0;
      v170 = (*(v239 + 80) + 32) & ~*(v239 + 80);
      v171 = v149 + v170;
      v81 = v137 + v170;
      while (v83 < *(v149 + 16))
      {
        v172 = *(v239 + 72) * v83;
        sub_1D6706BB4(v171 + v172, v34, type metadata accessor for FormatPropertyDefinition);
        if (v83 >= *(v137 + 16))
        {
          goto LABEL_139;
        }

        sub_1D6706BB4(v81 + v172, v30, type metadata accessor for FormatPropertyDefinition);
        v173 = static FormatPropertyDefinition.== infix(_:_:)(v34, v30);
        v136 = type metadata accessor for FormatPropertyDefinition;
        sub_1D5D2CFE8(v30, type metadata accessor for FormatPropertyDefinition);
        sub_1D5D2CFE8(v34, type metadata accessor for FormatPropertyDefinition);
        if (!v173)
        {
          goto LABEL_134;
        }

        if (v169 == ++v83)
        {
          goto LABEL_113;
        }
      }

LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      (*v216)(v137, v149);
LABEL_141:
      sub_1D66F4424(v136, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
LABEL_130:
      sub_1D5D2CFE8(v221, type metadata accessor for FormatSlotDefinitionItemSet);
      sub_1D5D2CFE8(v236, type metadata accessor for FormatSlotDefinitionItemSet);
LABEL_131:
      sub_1D5CDE22C(v201);

      v191 = v207;

      v188 = v191;
LABEL_132:
      sub_1D5CDE22C(v188);
      goto LABEL_133;
    }

LABEL_113:
    v174 = *(v214 + 40);
    v175 = v234;
    v176 = *(v235 + 48);
    v177 = MEMORY[0x1E69D6A58];
    v63 = v238;
    sub_1D5CDE2EC(v238 + v174, v234, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    v178 = v240 + v174;
    v179 = v175;
    sub_1D5CDE2EC(v178, v175 + v176, &qword_1EDF45AD0, v177);
    v180 = *v219;
    v181 = v175;
    v182 = v220;
    if ((*v219)(v181, 1, v220) == 1)
    {
      if (v180(v179 + v176, 1, v182) != 1)
      {
        goto LABEL_125;
      }

      sub_1D5D35558(v179, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
      sub_1D5D2CFE8(v240, type metadata accessor for FormatSlotDefinition);
      sub_1D5D2CFE8(v63, type metadata accessor for FormatSlotDefinition);
    }

    else
    {
      v183 = v227;
      sub_1D5CDE2EC(v179, v227, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      if (v180(v179 + v176, 1, v182) == 1)
      {
        (*v216)(v183, v182);
LABEL_125:
        sub_1D66F4424(v179, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        goto LABEL_134;
      }

      v184 = v179 + v176;
      v185 = v230;
      (*v215)(v230, v184, v182);
      sub_1D5B58B84(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
      v186 = sub_1D7261FBC();
      v187 = *v216;
      (*v216)(v185, v182);
      v187(v183, v182);
      sub_1D5D35558(v234, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
      sub_1D5D2CFE8(v240, type metadata accessor for FormatSlotDefinition);
      sub_1D5D2CFE8(v63, type metadata accessor for FormatSlotDefinition);
      if ((v186 & 1) == 0)
      {
        return 0;
      }
    }

    v65 = v218 + 1;
    result = 1;
    v67 = v212;
    v68 = v211;
    v69 = v210;
    if (v218 + 1 == v223)
    {
      return result;
    }
  }

  v76 = 0;
  v77 = (*(v237 + 80) + 32) & ~*(v237 + 80);
  v78 = v73 + v77;
  v200 = v77;
  v79 = v74 + v77;
  v206 = v73;
  v205 = v74;
  v204 = v75;
  v203 = v73 + v77;
  v202 = v74 + v77;
  while (1)
  {
    if (v76 >= *(v73 + 16))
    {
      goto LABEL_145;
    }

    v213 = *(v237 + 72);
    v80 = v213 * v76;
    v81 = v224;
    result = sub_1D6706BB4(v78 + v213 * v76, v224, type metadata accessor for FormatSlotDefinitionItemSet);
    v82 = *(v74 + 16);
    v209 = v76;
    v83 = v222;
    if (v76 >= v82)
    {
      goto LABEL_146;
    }

    sub_1D6706BB4(v79 + v80, v222, type metadata accessor for FormatSlotDefinitionItemSet);
    if (*v81 != *v83)
    {
      goto LABEL_133;
    }

    if (*(v81 + 4) != *(v83 + 4))
    {
      goto LABEL_133;
    }

    if ((sub_1D5E1EFE4(*(v81 + 8), *(v83 + 8)) & 1) == 0)
    {
      goto LABEL_133;
    }

    v84 = *(v81 + 16);
    v85 = *(v83 + 16);
    v86 = *(v84 + 16);
    if (v86 != *(v85 + 16))
    {
      goto LABEL_133;
    }

    if (v86 && v84 != v85)
    {
      v87 = (*(v239 + 80) + 32) & ~*(v239 + 80);
      v88 = v84 + v87;
      v89 = v85 + v87;
      v90 = *(v239 + 72);
      do
      {
        sub_1D6706BB4(v88, v34, type metadata accessor for FormatPropertyDefinition);
        sub_1D6706BB4(v89, v30, type metadata accessor for FormatPropertyDefinition);
        v91 = static FormatPropertyDefinition.== infix(_:_:)(v34, v30);
        sub_1D5D2CFE8(v30, type metadata accessor for FormatPropertyDefinition);
        sub_1D5D2CFE8(v34, type metadata accessor for FormatPropertyDefinition);
        if (!v91)
        {
          goto LABEL_133;
        }

        v89 += v90;
        v88 += v90;
      }

      while (--v86);
    }

    v93 = *(v81 + 24);
    v92 = *(v81 + 32);
    v94 = *(v83 + 24);
    v217 = *(v83 + 32);
    if (!v93)
    {
      sub_1D5D615EC(0);
      v106 = v232;
      v105 = v233;
      if (!v94)
      {
        sub_1D5D615EC(0);
        goto LABEL_91;
      }

      sub_1D5D615EC(v94);
LABEL_123:
      sub_1D5CDE22C(v93);
      v188 = v94;
      goto LABEL_132;
    }

    if (!v94)
    {
      sub_1D5D615EC(v93);
      sub_1D5D615EC(0);
      sub_1D5D615EC(v93);

      goto LABEL_123;
    }

    v95 = *(v93 + 16);
    v72 = v95 == *(v94 + 16);
    v208 = v92;
    v207 = v93;
    v201 = v94;
    if (!v72)
    {
      sub_1D5D615EC(v93);
      sub_1D5D615EC(v94);
      sub_1D5D615EC(v93);
      goto LABEL_131;
    }

    if (v95)
    {
      v96 = v94;
      v97 = *(v239 + 80);
      sub_1D5D615EC(v93);
      v98 = v93;
      if (v93 != v96)
      {
        v99 = (v97 + 32) & ~v97;
        v100 = v93;
        v101 = v93 + v99;
        v102 = v201 + v99;
        sub_1D5D615EC(v201);
        sub_1D5D615EC(v100);
        v103 = *(v239 + 72);
        while (1)
        {
          sub_1D6706BB4(v101, v34, type metadata accessor for FormatPropertyDefinition);
          sub_1D6706BB4(v102, v30, type metadata accessor for FormatPropertyDefinition);
          v104 = static FormatPropertyDefinition.== infix(_:_:)(v34, v30);
          sub_1D5D2CFE8(v30, type metadata accessor for FormatPropertyDefinition);
          sub_1D5D2CFE8(v34, type metadata accessor for FormatPropertyDefinition);
          if (!v104)
          {
            goto LABEL_131;
          }

          v102 += v103;
          v101 += v103;
          if (!--v95)
          {
            goto LABEL_46;
          }
        }
      }
    }

    else
    {
      sub_1D5D615EC(v93);
      v98 = v94;
    }

    sub_1D5D615EC(v98);
    sub_1D5D615EC(v93);
LABEL_46:
    v107 = *(v208 + 16);
    if (v107 != *(v217 + 16))
    {
      goto LABEL_131;
    }

    if (v107)
    {
      v106 = v232;
      v105 = v233;
      v94 = v207;
      if (v208 != v217)
      {
        v108 = 0;
        v109 = v208 + v200;
        v196 = v217 + v200;
        v194 = v107;
        v193 = v208 + v200;
        while (1)
        {
          v110 = v108 * v213;
          v111 = v236;
          v112 = v108;
          result = sub_1D6706BB4(v109 + v108 * v213, v236, type metadata accessor for FormatSlotDefinitionItemSet);
          v197 = v112;
          if (v112 == v107)
          {
            goto LABEL_147;
          }

          v113 = v196 + v110;
          v114 = v221;
          sub_1D6706BB4(v113, v221, type metadata accessor for FormatSlotDefinitionItemSet);
          if (*v111 != *v114)
          {
            goto LABEL_130;
          }

          if (*(v236 + 4) != *(v221 + 1))
          {
            goto LABEL_130;
          }

          if ((sub_1D5E1EFE4(*(v236 + 8), *(v221 + 1)) & 1) == 0)
          {
            goto LABEL_130;
          }

          v115 = *(v236 + 16);
          v116 = *(v221 + 2);
          v117 = *(v115 + 16);
          if (v117 != *(v116 + 16))
          {
            goto LABEL_130;
          }

          if (v117 && v115 != v116)
          {
            break;
          }

LABEL_60:
          v123 = v236;
          v125 = *(v236 + 24);
          v124 = *(v236 + 32);
          v126 = *(v221 + 3);
          v199 = *(v221 + 4);
          v198 = v126;
          if (v125)
          {
            if (!v126)
            {
              sub_1D5D615EC(v125);
              sub_1D5D615EC(0);
              sub_1D5D615EC(v125);

              v189 = 0;
LABEL_143:
              sub_1D5CDE22C(v125);
              sub_1D5CDE22C(v189);
              goto LABEL_130;
            }

            v127 = *(v125 + 16);
            v72 = v127 == *(v126 + 16);
            v195 = v124;
            v192 = v125;
            if (!v72)
            {
              sub_1D5D615EC(v125);
              sub_1D5D615EC(v126);
              sub_1D5D615EC(v125);
LABEL_129:
              sub_1D5CDE22C(v198);

              v190 = v192;

              sub_1D5CDE22C(v190);
              v83 = v222;
              goto LABEL_130;
            }

            if (v127)
            {
              v128 = *(v239 + 80);
              sub_1D5D615EC(v125);
              v129 = v125;
              if (v125 != v198)
              {
                v130 = (v128 + 32) & ~v128;
                v131 = v125;
                v132 = v125 + v130;
                v133 = v198 + v130;
                sub_1D5D615EC(v198);
                sub_1D5D615EC(v131);
                v134 = *(v239 + 72);
                while (1)
                {
                  sub_1D6706BB4(v132, v34, type metadata accessor for FormatPropertyDefinition);
                  sub_1D6706BB4(v133, v30, type metadata accessor for FormatPropertyDefinition);
                  v135 = static FormatPropertyDefinition.== infix(_:_:)(v34, v30);
                  sub_1D5D2CFE8(v30, type metadata accessor for FormatPropertyDefinition);
                  sub_1D5D2CFE8(v34, type metadata accessor for FormatPropertyDefinition);
                  if (!v135)
                  {
                    goto LABEL_129;
                  }

                  v133 += v134;
                  v132 += v134;
                  if (!--v127)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else
            {
              sub_1D5D615EC(v125);
              v129 = v198;
            }

            sub_1D5D615EC(v129);
            sub_1D5D615EC(v125);
LABEL_74:
            v139 = *(v195 + 16);
            if (v139 != *(v199 + 16))
            {
              goto LABEL_129;
            }

            if (v139)
            {
              v137 = v225;
              v136 = v226;
              v140 = v229;
              if (v195 != v199)
              {
                v141 = v195 + v200;
                v142 = v199 + v200;
                while (1)
                {
                  sub_1D6706BB4(v141, v140, type metadata accessor for FormatSlotDefinitionItemSet);
                  v143 = v228;
                  sub_1D6706BB4(v142, v228, type metadata accessor for FormatSlotDefinitionItemSet);
                  v144 = static FormatSlotDefinitionItemSet.== infix(_:_:)(v140, v143);
                  sub_1D5D2CFE8(v143, type metadata accessor for FormatSlotDefinitionItemSet);
                  sub_1D5D2CFE8(v140, type metadata accessor for FormatSlotDefinitionItemSet);
                  if (!v144)
                  {
                    goto LABEL_129;
                  }

                  v142 += v213;
                  v141 += v213;
                  --v139;
                  v140 = v229;
                  if (!v139)
                  {
                    goto LABEL_80;
                  }
                }
              }
            }

            else
            {
LABEL_80:
              v137 = v225;
              v136 = v226;
            }

            sub_1D5CDE22C(v198);

            v138 = v192;

            v123 = v236;
            v83 = v222;
          }

          else
          {
            sub_1D5D615EC(0);
            v137 = v225;
            v136 = v226;
            if (v198)
            {
              v189 = v198;
              sub_1D5D615EC(v198);
              v125 = 0;
              goto LABEL_143;
            }

            sub_1D5D615EC(0);
            v138 = 0;
          }

          sub_1D5CDE22C(v138);
          v145 = *(v231 + 36);
          v146 = *(v235 + 48);
          v147 = MEMORY[0x1E69D6A58];
          sub_1D5CDE2EC(v123 + v145, v136, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
          sub_1D5CDE2EC(&v221[v145], v136 + v146, &qword_1EDF45AD0, v147);
          v148 = *v219;
          v149 = v220;
          if ((*v219)(v136, 1, v220) == 1)
          {
            v150 = v148(v136 + v146, 1, v149);
            v81 = v224;
            if (v150 != 1)
            {
              goto LABEL_141;
            }

            sub_1D5D35558(v136, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
            sub_1D5D2CFE8(v221, type metadata accessor for FormatSlotDefinitionItemSet);
            sub_1D5D2CFE8(v236, type metadata accessor for FormatSlotDefinitionItemSet);
            v107 = v194;
          }

          else
          {
            sub_1D5CDE2EC(v136, v137, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
            v151 = v148(v136 + v146, 1, v149);
            v81 = v224;
            if (v151 == 1)
            {
              goto LABEL_140;
            }

            v152 = v136 + v146;
            v153 = v230;
            (*v215)(v230, v152, v149);
            sub_1D5B58B84(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
            LODWORD(v199) = sub_1D7261FBC();
            v154 = *v216;
            (*v216)(v153, v149);
            v154(v137, v149);
            sub_1D5D35558(v226, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
            sub_1D5D2CFE8(v221, type metadata accessor for FormatSlotDefinitionItemSet);
            sub_1D5D2CFE8(v236, type metadata accessor for FormatSlotDefinitionItemSet);
            v107 = v194;
            if ((v199 & 1) == 0)
            {
              goto LABEL_131;
            }
          }

          v108 = v197 + 1;
          v106 = v232;
          v105 = v233;
          v94 = v207;
          v109 = v193;
          if (v197 + 1 == v107)
          {
            goto LABEL_90;
          }
        }

        v118 = (*(v239 + 80) + 32) & ~*(v239 + 80);
        v119 = v115 + v118;
        v120 = v116 + v118;
        v121 = *(v239 + 72);
        while (1)
        {
          sub_1D6706BB4(v119, v34, type metadata accessor for FormatPropertyDefinition);
          sub_1D6706BB4(v120, v30, type metadata accessor for FormatPropertyDefinition);
          v122 = static FormatPropertyDefinition.== infix(_:_:)(v34, v30);
          sub_1D5D2CFE8(v30, type metadata accessor for FormatPropertyDefinition);
          sub_1D5D2CFE8(v34, type metadata accessor for FormatPropertyDefinition);
          if (!v122)
          {
            goto LABEL_130;
          }

          v120 += v121;
          v119 += v121;
          if (!--v117)
          {
            goto LABEL_60;
          }
        }
      }
    }

    else
    {
      v106 = v232;
      v105 = v233;
      v94 = v207;
    }

LABEL_90:
    sub_1D5CDE22C(v201);

LABEL_91:
    sub_1D5CDE22C(v94);
    v155 = *(v231 + 36);
    v156 = *(v235 + 48);
    v157 = MEMORY[0x1E69D6A58];
    sub_1D5CDE2EC(&v224[v155], v106, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    sub_1D5CDE2EC(v83 + v155, v106 + v156, &qword_1EDF45AD0, v157);
    v158 = *v219;
    v159 = v220;
    if ((*v219)(v106, 1, v220) != 1)
    {
      break;
    }

    v160 = v158(v106 + v156, 1, v159);
    v81 = v224;
    if (v160 != 1)
    {
      goto LABEL_127;
    }

    sub_1D5D35558(v106, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    sub_1D5D2CFE8(v222, type metadata accessor for FormatSlotDefinitionItemSet);
    result = sub_1D5D2CFE8(v81, type metadata accessor for FormatSlotDefinitionItemSet);
    v73 = v206;
    v74 = v205;
    v161 = v204;
LABEL_96:
    v76 = v209 + 1;
    v78 = v203;
    v79 = v202;
    if (v209 + 1 == v161)
    {
      goto LABEL_97;
    }
  }

  sub_1D5CDE2EC(v106, v105, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if (v158(v106 + v156, 1, v159) != 1)
  {
    v162 = v105;
    v163 = v230;
    (*v215)(v230, v106 + v156, v159);
    sub_1D5B58B84(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
    v164 = sub_1D7261FBC();
    v165 = *v216;
    (*v216)(v163, v159);
    v165(v162, v159);
    sub_1D5D35558(v106, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    sub_1D5D2CFE8(v222, type metadata accessor for FormatSlotDefinitionItemSet);
    result = sub_1D5D2CFE8(v224, type metadata accessor for FormatSlotDefinitionItemSet);
    v73 = v206;
    v74 = v205;
    v161 = v204;
    if ((v164 & 1) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_96;
  }

  (*v216)(v105, v159);
  v81 = v224;
LABEL_127:
  sub_1D66F4424(v106, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v83 = v222;
LABEL_133:
  sub_1D5D2CFE8(v83, type metadata accessor for FormatSlotDefinitionItemSet);
  sub_1D5D2CFE8(v81, type metadata accessor for FormatSlotDefinitionItemSet);
LABEL_134:
  sub_1D5D2CFE8(v240, type metadata accessor for FormatSlotDefinition);
  sub_1D5D2CFE8(v238, type metadata accessor for FormatSlotDefinition);
  return 0;
}

uint64_t sub_1D63583EC(uint64_t a1, uint64_t a2)
{
  sub_1D5C30060(0, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_1D665F27C(v15, v12, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
        sub_1D665F27C(v16, v7, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
        v18 = sub_1D6B1AB54(v12, v7);
        sub_1D66F4A30(v7);
        sub_1D66F4A30(v12);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D6358610(uint64_t a1, uint64_t a2)
{
  sub_1D5C30060(0, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_1D665F27C(v15, v12, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
        sub_1D665F27C(v16, v7, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
        v18 = sub_1D6B1B3A4(v12, v7);
        sub_1D66F4AC4(v7);
        sub_1D66F4AC4(v12);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D6358834(uint64_t a1, uint64_t a2)
{
  sub_1D5C30060(0, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_1D665F27C(v15, v12, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
        sub_1D665F27C(v16, v7, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
        v18 = sub_1D6B1BB98(v12, v7);
        sub_1D66F4B58(v7);
        sub_1D66F4B58(v12);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D6358A58(uint64_t a1, uint64_t a2)
{
  sub_1D5C30060(0, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_1D665F27C(v15, v12, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
        sub_1D665F27C(v16, v7, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
        v18 = sub_1D6B1C388(v12, v7);
        sub_1D66F4BEC(v7);
        sub_1D66F4BEC(v12);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D6358CD0(uint64_t a1, uint64_t a2)
{
  sub_1D5C30060(0, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_1D665F27C(v15, v12, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
        sub_1D665F27C(v16, v7, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
        v18 = sub_1D6B1D1D4(v12, v7);
        sub_1D66F4C80(v7);
        sub_1D66F4C80(v12);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D6358EF4(uint64_t a1, uint64_t a2)
{
  sub_1D5C30060(0, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_1D665F27C(v15, v12, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
        sub_1D665F27C(v16, v7, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
        v18 = sub_1D6B1DA8C(v12, v7);
        sub_1D66F4D14(v7);
        sub_1D66F4D14(v12);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D6359118(uint64_t a1, uint64_t a2)
{
  sub_1D5C30060(0, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_1D665F27C(v15, v12, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
        sub_1D665F27C(v16, v7, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
        v18 = sub_1D6B1E2A8(v12, v7);
        sub_1D66F4DA8(v7);
        sub_1D66F4DA8(v12);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D6359368(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v3 = *(a1 + 16);
  if (v3 == *(a2 + 16))
  {
    if (!v3 || a1 == a2)
    {
      v9 = 1;
    }

    else
    {
      v5 = (a1 + 32);
      v6 = (a2 + 32);
      do
      {
        v7 = *v5++;
        v12 = v7;
        v8 = *v6++;
        v11 = v8;

        v9 = a3(&v12, &v11);

        --v3;
      }

      while ((v9 & 1) != 0 && v3);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

unint64_t sub_1D6359438(unint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  v54 = result + 32;
  v55 = *(result + 16);
  while (v3 != v2)
  {
    v8 = (v4 + 24 * v3);
    v9 = *v8;
    v10 = v8[1];
    v6 = v8[2];
    v11 = (v5 + 24 * v3);
    v12 = v11[2];
    v13 = v9 == *v11 && v10 == v11[1];
    if (!v13 && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }

    v14 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v14 != 2)
      {
        if (v6 == 0xC000000000000000)
        {
          if (v12 != 0xC000000000000000)
          {
            sub_1D5F33D5C(v12);
            v46 = 0xC000000000000000;
            goto LABEL_72;
          }

          v6 = 0xC000000000000000;
          v7 = 0xC000000000000000;
        }

        else
        {
          v6 = 0xC000000000000008;
          if (v12 != 0xC000000000000008)
          {
            sub_1D5F33D5C(v12);
            v46 = 0xC000000000000008;
            goto LABEL_72;
          }

          v7 = 0xC000000000000008;
        }

        sub_1D5F33D8C(v7);
        goto LABEL_8;
      }

      if (v12 >> 62 != 2)
      {
        goto LABEL_71;
      }

      v22 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v57 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v58 = v22;
      v24 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v25 = v22 >> 62;
      if ((v22 >> 62) > 1)
      {
        v56 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v25 == 2)
        {
          if (v24 >> 62 != 2)
          {

            sub_1D5F33D5C(v6);

            sub_1D5F33D5C(v12);
            sub_1D5F33D5C(v12);
            sub_1D5F33D5C(v6);
            sub_1D5F33D5C(v24);
            v48 = v58;
            goto LABEL_82;
          }

          v53 = v5;
          v35 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v37 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v36 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v61 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v62 = v35;
          v59 = v37;
          v60 = v36;

          sub_1D5F33D5C(v6);

          sub_1D5F33D5C(v12);
          sub_1D5F33D5C(v12);
          sub_1D5F33D5C(v6);
          sub_1D5F33D5C(v24);

          sub_1D5F33D5C(v24);
          sub_1D5F33D5C(v58);
          sub_1D5F33D5C(v37);

          if ((static FormatSymbolImageColor.== infix(_:_:)(&v61, &v59) & 1) == 0)
          {
            sub_1D5F33D8C(v37);

            sub_1D5F33D8C(v58);
            sub_1D5F33D8C(v24);
LABEL_85:
            sub_1D5F33D8C(v24);

            sub_1D5F33D8C(v6);
            sub_1D5F33D8C(v12);

            sub_1D5F33D8C(v12);
            goto LABEL_70;
          }

          v38 = v62;
          v39 = v24;
          v40 = v60;

          v51 = sub_1D6359438(v38, v40);

          v24 = v39;

          sub_1D5F33D8C(v37);

          sub_1D5F33D8C(v58);
          sub_1D5F33D8C(v39);
          if ((v51 & 1) == 0)
          {
            goto LABEL_85;
          }

          v29 = v39;
          v5 = v53;
LABEL_49:
          v2 = v55;
LABEL_50:
          v23 = v56;
        }

        else
        {

          sub_1D5F33D5C(v6);

          sub_1D5F33D5C(v12);
          sub_1D5F33D5C(v12);
          sub_1D5F33D5C(v6);
          if (v58 == 0xC000000000000000)
          {
            if (v24 != 0xC000000000000000)
            {
              sub_1D5F33D5C(v24);
              v49 = 0xC000000000000000;
LABEL_83:
              sub_1D5F33D8C(v49);
              sub_1D5F33D8C(v24);
LABEL_68:
              sub_1D5F33D8C(v6);
              sub_1D5F33D8C(v12);
LABEL_69:

              sub_1D5F33D8C(v12);
LABEL_70:

LABEL_73:
              sub_1D5F33D8C(v6);
              return 0;
            }

            sub_1D5F33D5C(0xC000000000000000);

            sub_1D5F33D8C(0xC000000000000000);
            v44 = 0xC000000000000000;
          }

          else
          {
            if (v24 != 0xC000000000000008)
            {
              sub_1D5F33D5C(v24);
              v49 = 0xC000000000000008;
              goto LABEL_83;
            }

            sub_1D5F33D5C(0xC000000000000008);

            sub_1D5F33D8C(0xC000000000000008);
            v44 = 0xC000000000000008;
          }

          sub_1D5F33D8C(v44);
          v29 = v24;
        }
      }

      else if (v25)
      {
        if (v24 >> 62 != 1)
        {
LABEL_80:
          v48 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

          sub_1D5F33D5C(v6);

          sub_1D5F33D5C(v12);
          sub_1D5F33D5C(v12);
          sub_1D5F33D5C(v6);
          sub_1D5F33D5C(v24);
LABEL_82:
          sub_1D5F33D5C(v48);
          v49 = v48;
          goto LABEL_83;
        }

        v41 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v61 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v59 = v41;
        v42 = v22;

        sub_1D5F33D5C(v6);

        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v6);
        sub_1D5F33D5C(v24);

        sub_1D5F33D5C(v24);
        sub_1D5F33D5C(v42);
        v29 = v24;
        v43 = static FormatColor.== infix(_:_:)(&v61, &v59);
        sub_1D5F33D8C(v58);
        sub_1D5F33D8C(v24);
        if ((v43 & 1) == 0)
        {
          sub_1D5F33D8C(v24);

          sub_1D5F33D8C(v6);
          sub_1D5F33D8C(v12);
          goto LABEL_69;
        }
      }

      else
      {
        if (v24 >> 62)
        {
          goto LABEL_80;
        }

        v56 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v26 = *(v22 + 16);
        v52 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v27 = *(v24 + 16);
        v28 = *(v26 + 16);
        if (v28 != *(v27 + 16))
        {
          v50 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

          sub_1D5F33D5C(v6);

          sub_1D5F33D5C(v12);
          sub_1D5F33D5C(v12);
          sub_1D5F33D5C(v6);
          v47 = v52;
          sub_1D5F33D5C(v52);

          sub_1D5F33D5C(v52);
          sub_1D5F33D5C(v50);
          goto LABEL_76;
        }

        if (v28)
        {

          sub_1D5F33D5C(v6);

          sub_1D5F33D5C(v12);
          sub_1D5F33D5C(v12);
          sub_1D5F33D5C(v6);
          v29 = v52;
          sub_1D5F33D5C(v52);

          sub_1D5F33D5C(v52);
          sub_1D5F33D5C(v58);
          if (v26 != v27)
          {
            v30 = v5;

            v31 = 32;
            while (1)
            {
              v61 = *(v26 + v31);
              v59 = *(v27 + v31);

              v32 = static FormatColor.== infix(_:_:)(&v61, &v59);

              if ((v32 & 1) == 0)
              {
                break;
              }

              v31 += 8;
              if (!--v28)
              {

                sub_1D5F33D8C(v58);
                v29 = v52;
                sub_1D5F33D8C(v52);
                v5 = v30;
                goto LABEL_49;
              }
            }

            v47 = v52;
LABEL_76:
            sub_1D5F33D8C(v58);
            sub_1D5F33D8C(v47);
            sub_1D5F33D8C(v47);

            sub_1D5F33D8C(v6);
            sub_1D5F33D8C(v12);
            goto LABEL_69;
          }

          sub_1D5F33D8C(v58);
          sub_1D5F33D8C(v52);
          goto LABEL_50;
        }

        sub_1D5F33D5C(v6);

        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v6);
        v29 = v52;
        sub_1D5F33D5C(v52);
        v23 = v56;

        sub_1D5F33D5C(v52);
        sub_1D5F33D5C(v58);
        sub_1D5F33D8C(v58);
        sub_1D5F33D8C(v52);
      }

      v45 = sub_1D6359438(v57, v23);

      sub_1D5F33D8C(v29);

      sub_1D5F33D8C(v6);
      sub_1D5F33D8C(v12);

      sub_1D5F33D8C(v12);

      result = sub_1D5F33D8C(v6);
      v4 = v54;
      if ((v45 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    if (!v14)
    {
      if (v12 >> 62)
      {
        goto LABEL_71;
      }

      v15 = v5;
      v16 = v4;
      v17 = *(v6 + 16);
      v18 = *(v12 + 16);
      v19 = *(v17 + 16);
      if (v19 != *(v18 + 16))
      {

        sub_1D5F33D5C(v6);

        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v6);
        goto LABEL_68;
      }

      if (v19)
      {

        sub_1D5F33D5C(v6);

        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v6);
        if (v17 != v18)
        {

          v20 = 32;
          while (1)
          {
            v61 = *(v17 + v20);
            v59 = *(v18 + v20);

            v21 = static FormatColor.== infix(_:_:)(&v61, &v59);

            if ((v21 & 1) == 0)
            {
              break;
            }

            v20 += 8;
            if (!--v19)
            {

              goto LABEL_52;
            }
          }

          goto LABEL_68;
        }
      }

      else
      {

        sub_1D5F33D5C(v6);

        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v6);
      }

LABEL_52:
      sub_1D5F33D8C(v6);
      sub_1D5F33D8C(v12);

      sub_1D5F33D8C(v12);

      v4 = v16;
      v5 = v15;
      v2 = v55;
LABEL_8:
      result = sub_1D5F33D8C(v6);
      goto LABEL_9;
    }

    if (v12 >> 62 != 1)
    {
LABEL_71:
      sub_1D5F33D5C(v12);
      sub_1D5F33D5C(v6);
      v46 = v6;
LABEL_72:
      sub_1D5F33D8C(v46);
      v6 = v12;
      goto LABEL_73;
    }

    v33 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v61 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v59 = v33;

    sub_1D5F33D5C(v6);

    sub_1D5F33D5C(v12);
    sub_1D5F33D5C(v12);
    sub_1D5F33D5C(v6);
    v34 = static FormatColor.== infix(_:_:)(&v61, &v59);
    sub_1D5F33D8C(v6);
    sub_1D5F33D8C(v12);

    sub_1D5F33D8C(v12);

    result = sub_1D5F33D8C(v6);
    if ((v34 & 1) == 0)
    {
      return 0;
    }

LABEL_9:
    if (++v3 == v2)
    {
      return 1;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1D6359F3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, void *))
{
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    v14 = 0;
    return v14 & 1;
  }

  if (!v3 || a1 == a2)
  {
    v14 = 1;
    return v14 & 1;
  }

  v4 = 0;
  while (1)
  {
    v6 = *(a1 + v4 + 32);
    v5 = *(a1 + v4 + 40);
    v7 = *(a1 + v4 + 48);
    v8 = *(a1 + v4 + 56);
    v10 = *(a2 + v4 + 32);
    v9 = *(a2 + v4 + 40);
    v11 = *(a2 + v4 + 48);
    v12 = *(a2 + v4 + 56);
    v26[1] = v6;
    v26[2] = v5;
    v27 = v7;
    v28 = v8;
    v26[0] = v12;
    v25 = v11;
    if (v7)
    {
      if (v7 == 1)
      {
        if (v11 == 1)
        {
          sub_1D5D03180(v6, v5, 1);

          sub_1D5D03180(v10, v9, 1);

          sub_1D5D07BA8(v6, v5, 1);
          sub_1D5D07BA8(v10, v9, 1);
          if ((v10 ^ v6))
          {
            sub_1D5D07BA8(v10, v9, 1);

            v19 = v6;
            v20 = v5;
            v21 = 1;
            goto LABEL_29;
          }

          goto LABEL_18;
        }

        sub_1D5D03180(v10, v9, v11);
        v16 = v6;
        v17 = v5;
        v18 = 1;
LABEL_27:
        sub_1D5D07BA8(v16, v17, v18);
        sub_1D5D07BA8(v10, v9, v11);
        v14 = 0;
        return v14 & 1;
      }

      if (v11 != 2)
      {
        sub_1D5D03180(v10, v9, v11);
        v16 = v6;
        v17 = v5;
        v18 = 2;
        goto LABEL_27;
      }

      sub_1D5D03180(v6, v5, 2);

      sub_1D5D03180(v10, v9, 2);

      sub_1D5D07BA8(v6, v5, 2);
      sub_1D5D07BA8(v10, v9, 2);
      if (v6 != v10)
      {
        sub_1D5D07BA8(v10, v9, 2);

        v19 = v6;
        v20 = v5;
        v21 = 2;
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v11)
    {
      sub_1D5D03180(v10, v9, v11);
      sub_1D5D03180(v6, v5, 0);
      v16 = v6;
      v17 = v5;
      v18 = 0;
      goto LABEL_27;
    }

    if (v6 == v10 && v5 == v9)
    {
      sub_1D5D03180(v6, v5, 0);

      sub_1D5D03180(v6, v5, 0);

      sub_1D5D03180(v6, v5, 0);
      sub_1D5D03180(v6, v5, 0);
      sub_1D5D07BA8(v6, v5, 0);
      sub_1D5D07BA8(v6, v5, 0);
      goto LABEL_18;
    }

    v13 = sub_1D72646CC();
    sub_1D5D03180(v6, v5, 0);

    sub_1D5D03180(v10, v9, 0);

    sub_1D5D03180(v10, v9, 0);
    sub_1D5D03180(v6, v5, 0);
    sub_1D5D07BA8(v6, v5, 0);
    sub_1D5D07BA8(v10, v9, 0);
    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_18:
    v14 = a3(&v28, v26);
    sub_1D5D07BA8(v10, v9, v25);

    sub_1D5D07BA8(v6, v5, v7);

    if (v14)
    {
      v4 += 32;
      if (--v3)
      {
        continue;
      }
    }

    return v14 & 1;
  }

  sub_1D5D07BA8(v10, v9, 0);

  v19 = v6;
  v20 = v5;
  v21 = 0;
LABEL_29:
  sub_1D5D07BA8(v19, v20, v21);

  v14 = 0;
  return v14 & 1;
}

uint64_t sub_1D635A390(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D635A3EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *i;
      v6 = *v3;
      v7 = *(i - 2) == *(v3 - 2) && *(i - 1) == *(v3 - 1);
      if (!v7 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      if (v5)
      {
        v8 = 0x746C7561666564;
      }

      else
      {
        v8 = 1685217635;
      }

      if (v5)
      {
        v9 = 0xE700000000000000;
      }

      else
      {
        v9 = 0xE400000000000000;
      }

      if (v6)
      {
        v10 = 0x746C7561666564;
      }

      else
      {
        v10 = 1685217635;
      }

      if (v6)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      if (v8 == v10 && v9 == v11)
      {
      }

      else
      {
        v13 = sub_1D72646CC();

        if ((v13 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

BOOL sub_1D635A518(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = (a2 + 48);
      v4 = (a1 + 48);
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;
        v15 = *(v4 - 2);
        v16 = v5;
        v17 = v6;
        v8 = *(v3 - 1);
        v12 = *(v3 - 2);
        v7 = v12;
        v13 = v8;
        v14 = *v3;
        v9 = v14;
        sub_1D66F4990(v15, v5, v6);
        sub_1D66F4990(v7, v8, v9);
        v10 = _s8NewsFeed22FormatGroupRequirementO2eeoiySbAC_ACtFZ_0(&v15, &v12);
        sub_1D62B7514(v12, v13, v14);
        sub_1D62B7514(v15, v16, v17);
        if (!v10)
        {
          break;
        }

        v4 += 24;
        v3 += 24;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v10;
}

uint64_t sub_1D635A604(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 64);
  for (i = (a2 + 64); ; i += 5)
  {
    v9 = *(v3 - 4);
    v8 = *(v3 - 3);
    v10 = *(v3 - 1);
    v11 = *(i - 4);
    v12 = *(i - 3);
    v13 = *(i - 16);
    v35 = *i;
    v36 = *v3;
    v33 = *(v3 - 16);
    v34 = *(i - 16);
    v32 = *(i - 1);
    if (v33)
    {
      break;
    }

    if (*(i - 16))
    {
      sub_1D5D03180(v11, v12, v13);
      sub_1D5D03180(v9, v8, 0);
      v24 = v9;
      v25 = v8;
      v26 = 0;
      goto LABEL_31;
    }

    v20 = v9 == v11 && v8 == v12;
    v31 = *(i - 4);
    v21 = *(v3 - 3);
    if (v20)
    {
      sub_1D5D03180(v9, v8, 0);

      sub_1D5D03180(v9, v8, 0);
      v15 = v35;

      sub_1D5D03180(v9, v8, 0);
      sub_1D5D03180(v9, v8, 0);
      sub_1D5D07BA8(v9, v8, 0);
      v17 = v9;
      v16 = v21;
      sub_1D5D07BA8(v9, v21, 0);
      v19 = v31;
    }

    else
    {
      v30 = sub_1D72646CC();
      sub_1D5D03180(v9, v8, 0);

      sub_1D5D03180(v11, v12, 0);
      v15 = v35;

      sub_1D5D03180(v11, v12, 0);
      sub_1D5D03180(v9, v8, 0);
      v17 = v9;
      v16 = v21;
      sub_1D5D07BA8(v9, v21, 0);
      v19 = v31;
      sub_1D5D07BA8(v31, v12, 0);
      if ((v30 & 1) == 0)
      {
        sub_1D5D07BA8(v31, v12, 0);

        v27 = v17;
        v28 = v21;
        v29 = 0;
        goto LABEL_32;
      }
    }

LABEL_23:
    if (v10 == v32 && v36 == v15)
    {
      sub_1D5D07BA8(v19, v12, v34);

      sub_1D5D07BA8(v17, v16, v33);
    }

    else
    {
      v5 = sub_1D72646CC();
      v6 = v12;
      v7 = v5;
      sub_1D5D07BA8(v19, v6, v34);

      sub_1D5D07BA8(v17, v16, v33);

      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    v3 += 5;
    if (!--v2)
    {
      return 1;
    }
  }

  if (*(v3 - 16) == 1)
  {
    if (v13 != 1)
    {
      sub_1D5D03180(v11, v12, v13);
      v24 = v9;
      v25 = v8;
      v26 = 1;
      goto LABEL_31;
    }

    sub_1D5D03180(v9, v8, 1);

    v14 = v11;
    sub_1D5D03180(v11, v12, 1);
    v15 = v35;

    v16 = v8;
    sub_1D5D07BA8(v9, v8, 1);
    sub_1D5D07BA8(v14, v12, 1);
    v17 = v9;
    v18 = v14 ^ v9;
    v19 = v14;
    if (v18)
    {
      sub_1D5D07BA8(v14, v12, 1);

      v27 = v17;
      v28 = v16;
      v29 = 1;
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  if (v13 != 2)
  {
    sub_1D5D03180(v11, v12, v13);
    v24 = v9;
    v25 = v8;
    v26 = 2;
LABEL_31:
    sub_1D5D07BA8(v24, v25, v26);
    sub_1D5D07BA8(v11, v12, v13);
    return 0;
  }

  sub_1D5D03180(v9, v8, 2);

  v22 = v11;
  sub_1D5D03180(v11, v12, 2);
  v15 = v35;

  v16 = v8;
  sub_1D5D07BA8(v9, v8, 2);
  sub_1D5D07BA8(v22, v12, 2);
  v17 = v9;
  v20 = v9 == v22;
  v19 = v22;
  if (v20)
  {
    goto LABEL_23;
  }

  sub_1D5D07BA8(v22, v12, 2);

  v27 = v17;
  v28 = v16;
  v29 = 2;
LABEL_32:
  sub_1D5D07BA8(v27, v28, v29);

  return 0;
}

uint64_t sub_1D635AA9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 64);
    for (i = (a2 + 64); ; i += 5)
    {
      v6 = *(v3 - 2);
      v13 = *(v3 - 1);
      v7 = *v3;
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      v11 = *(v3 - 4) == *(i - 4) && *(v3 - 3) == *(i - 3);
      if (!v11 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      if ((sub_1D5BFC390(v6, v8) & 1) == 0)
      {

        return 0;
      }

      if (v13 == v9 && v7 == v10)
      {
      }

      else
      {
        v5 = sub_1D72646CC();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D635AC6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v17 = v2;
  v18 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    memcpy(__dst, v5, sizeof(__dst));
    memcpy(v12, v5, sizeof(v12));
    memcpy(v14, v6, sizeof(v14));
    memcpy(__src, v6, sizeof(__src));
    sub_1D5CFDDA0(__dst, v10);
    sub_1D5CFDDA0(v14, v10);
    v8 = _s8NewsFeed19FormatTextNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(v12, __src);
    memcpy(v15, __src, sizeof(v15));
    sub_1D5CFF4CC(v15);
    memcpy(v16, v12, sizeof(v16));
    sub_1D5CFF4CC(v16);
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 528;
    v5 += 528;
  }

  return 1;
}

uint64_t sub_1D635ADD8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t *, char *), void (*a5)(uint64_t))
{
  v5 = *(a1 + 16);
  if (v5 != *(a2 + 16))
  {
LABEL_11:
    v13 = 0;
    return v13 & 1;
  }

  if (v5 && a1 != a2)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 40);
    while (1)
    {
      v11 = v9 + 2;
      v10 = *v9;
      v20 = *(v9 - 1);
      v21 = v10;
      v16 = *v8;
      v19 = v16;
      v18 = v20;
      v17 = v16;

      a3(v10);

      a3(*(&v16 + 1));

      v12 = static FormatExpression.== infix(_:_:)(&v18, &v17);

      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = a4(&v21, &v19 + 8);

      a5(*(&v16 + 1));

      a5(v10);
      if (v13)
      {
        ++v8;
        v9 = v11;
        if (--v5)
        {
          continue;
        }
      }

      return v13 & 1;
    }

    a5(*(&v16 + 1));

    a5(v10);
    goto LABEL_11;
  }

  v13 = 1;
  return v13 & 1;
}

uint64_t sub_1D635AF88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_1D6EEB7F0(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D635B040(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 <= 1)
      {
        if (*v3)
        {
          v7 = 0x7466654C706F74;
        }

        else
        {
          v7 = 7105633;
        }

        if (*v3)
        {
          v8 = 0xE700000000000000;
        }

        else
        {
          v8 = 0xE300000000000000;
        }
      }

      else if (v6 == 2)
      {
        v8 = 0xE800000000000000;
        v7 = 0x7468676952706F74;
      }

      else if (v6 == 3)
      {
        v7 = 0x654C6D6F74746F62;
        v8 = 0xEA00000000007466;
      }

      else
      {
        v7 = 0x69526D6F74746F62;
        v8 = 0xEB00000000746867;
      }

      v9 = *v4;
      if (v9 <= 1)
      {
        if (*v4)
        {
          v11 = 0x7466654C706F74;
        }

        else
        {
          v11 = 7105633;
        }

        if (*v4)
        {
          v10 = 0xE700000000000000;
        }

        else
        {
          v10 = 0xE300000000000000;
        }

        if (v7 != v11)
        {
LABEL_5:
          v5 = sub_1D72646CC();

          if ((v5 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      else if (v9 == 2)
      {
        v10 = 0xE800000000000000;
        if (v7 != 0x7468676952706F74)
        {
          goto LABEL_5;
        }
      }

      else if (v9 == 3)
      {
        v10 = 0xEA00000000007466;
        if (v7 != 0x654C6D6F74746F62)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0xEB00000000746867;
        if (v7 != 0x69526D6F74746F62)
        {
          goto LABEL_5;
        }
      }

      if (v8 != v10)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D635B244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v27 - v18;
  v20 = *(a1 + 16);
  if (v20 == *(a2 + 16))
  {
    if (!v20 || a1 == a2)
    {
      v25 = 1;
    }

    else
    {
      v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v22 = a1 + v21;
      v23 = a2 + v21;
      v24 = *(v17 + 72);
      do
      {
        sub_1D6706BB4(v22, v19, a4);
        sub_1D6706BB4(v23, v15, a4);
        v25 = a5(v19, v15);
        sub_1D5D2CFE8(v15, a6);
        sub_1D5D2CFE8(v19, a6);
        if ((v25 & 1) == 0)
        {
          break;
        }

        v23 += v24;
        v22 += v24;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_1D635B3E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v225 = v2;
  v226 = v3;
  v180 = (a2 + 32);
  v181 = (a1 + 32);
  for (i = v4 - 1; ; --i)
  {
    v6 = v181[3];
    v7 = v181[5];
    v214 = v181[4];
    *v215 = v7;
    *&v215[10] = *(v181 + 90);
    v8 = v181[1];
    v210 = *v181;
    v211 = v8;
    v9 = v181[3];
    v11 = *v181;
    v10 = v181[1];
    v212 = v181[2];
    v213 = v9;
    v12 = v180[1];
    v216 = *v180;
    v217 = v12;
    *&v221[10] = *(v180 + 90);
    v13 = v180[3];
    v14 = v180[5];
    v220 = v180[4];
    *v221 = v14;
    v15 = v180[3];
    v16 = *v180;
    v17 = v180[1];
    v218 = v180[2];
    v219 = v15;
    v222[0] = v11;
    v222[1] = v10;
    *(v223 + 10) = *(v181 + 90);
    v18 = v181[5];
    v222[4] = v214;
    v223[0] = v18;
    v222[2] = v212;
    v222[3] = v6;
    v223[2] = v16;
    v223[3] = v17;
    *(v224 + 10) = *(v180 + 90);
    v19 = v180[5];
    v223[6] = v220;
    v224[0] = v19;
    v223[4] = v218;
    v223[5] = v13;
    v20 = *(&v210 + 1);
    v21 = v210;
    v22 = v211;
    v23 = v212;
    v24 = (*&v215[24] >> 12) & 3;
    v25 = v213;
    if (!v24)
    {
      if ((*&v221[24] & 0x3000) != 0)
      {
        goto LABEL_85;
      }

      v43 = v217;
      v202 = v210;
      v203 = v211;
      v204 = v212;
      v205 = v213;
      v206 = v216;
      v207 = v217;
      v208 = v218;
      v209 = v219;
      if (v213 >> 14)
      {
        if (v213 >> 14 == 1)
        {
          if ((v219 & 0xC000) != 0x4000 || v210 != v216 && (sub_1D72646CC() & 1) == 0)
          {
LABEL_89:
            sub_1D60B2AC8(&v216, &v190);
            sub_1D60B2AC8(&v210, &v190);
            sub_1D60B2AC8(&v216, &v190);
            sub_1D60B2AC8(&v210, &v190);
            sub_1D60B2AC8(&v216, &v190);
            sub_1D60B2AC8(&v210, &v190);
            sub_1D60B2AC8(&v216, &v190);
            sub_1D60B2AC8(&v210, &v190);
            goto LABEL_95;
          }

          sub_1D60B2AC8(&v216, &v190);
          sub_1D60B2AC8(&v210, &v190);
          sub_1D60B2AC8(&v216, &v190);
          sub_1D60B2AC8(&v210, &v190);
          sub_1D60B2AC8(&v216, &v190);
          sub_1D60B2AC8(&v210, &v190);
          sub_1D60B2AC8(&v216, &v190);
          sub_1D60B2AC8(&v210, &v190);
          sub_1D60B2AC8(&v216, &v190);
          sub_1D60B2AC8(&v210, &v190);
          v44 = sub_1D6341C50(v22, v43);
        }

        else
        {
          if ((v219 & 0xC000) != 0x8000)
          {
            goto LABEL_89;
          }

          v186 = v210;
          v187 = v211;
          v188 = v212;
          v189 = v213 & 0x3FFF;
          v182 = v216;
          v183 = v217;
          v184 = v218;
          v185 = v219 & 0x3FFF;
          sub_1D60B2AC8(&v216, &v190);
          sub_1D60B2AC8(&v210, &v190);
          sub_1D60B2AC8(&v216, &v190);
          sub_1D60B2AC8(&v210, &v190);
          sub_1D60B2AC8(&v216, &v190);
          sub_1D60B2AC8(&v210, &v190);
          sub_1D60B2AC8(&v216, &v190);
          sub_1D60B2AC8(&v210, &v190);
          sub_1D60B2AC8(&v216, &v190);
          sub_1D60B2AC8(&v210, &v190);
          v44 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v186, &v182);
        }

        v62 = v44;
        sub_1D66AD7C0(&v202, &qword_1EC88A028);
        sub_1D60B2A74(&v216);
        sub_1D60B2A74(&v210);
      }

      else
      {
        if (v219 >= 0x4000u)
        {
          goto LABEL_89;
        }

        if (v210 == v216)
        {
          sub_1D60B2AC8(&v216, &v190);
          sub_1D60B2AC8(&v210, &v190);
          sub_1D60B2AC8(&v216, &v190);
          sub_1D60B2AC8(&v210, &v190);
          sub_1D60B2AC8(&v216, &v190);
          sub_1D60B2AC8(&v210, &v190);
          sub_1D60B2AC8(&v216, &v190);
          sub_1D60B2AC8(&v210, &v190);
          sub_1D66AD7C0(&v202, &qword_1EC88A028);
          sub_1D66AD7C0(v222, &qword_1EC88A020);
          sub_1D60B2A74(&v216);
          sub_1D60B2A74(&v210);
          sub_1D60B2A74(&v216);
          sub_1D60B2A74(&v210);
          goto LABEL_81;
        }

        v62 = sub_1D72646CC();
        sub_1D60B2AC8(&v216, &v190);
        sub_1D60B2AC8(&v210, &v190);
        sub_1D60B2AC8(&v216, &v190);
        sub_1D60B2AC8(&v210, &v190);
        sub_1D60B2AC8(&v216, &v190);
        sub_1D60B2AC8(&v210, &v190);
        sub_1D60B2AC8(&v216, &v190);
        sub_1D60B2AC8(&v210, &v190);
        sub_1D66AD7C0(&v202, &qword_1EC88A028);
      }

      sub_1D66AD7C0(v222, &qword_1EC88A020);
      sub_1D60B2A74(&v216);
      sub_1D60B2A74(&v210);
      sub_1D60B2A74(&v216);
      sub_1D60B2A74(&v210);
      if ((v62 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_81;
    }

    v177 = *(&v213 + 1);
    v165 = v214;
    v161 = i;
    v179 = *&v215[8];
    v171 = *(&v211 + 1);
    v174 = *v215;
    v178 = *(&v214 + 1);
    v168 = v212;
    v162 = *&v215[24];
    if (v24 != 1)
    {
      break;
    }

    if ((*&v221[24] & 0x3000) != 0x1000)
    {
      goto LABEL_85;
    }

    v26 = *(&v216 + 1);
    v27 = v216;
    v28 = v217;
    v29 = *(&v218 + 1);
    *v153 = *(&v220 + 1);
    *&v153[8] = *v221;
    *&v155 = *(&v217 + 1);
    v158 = v220;
    v160 = *&v221[16];
    v30 = v219;
    v202 = v210;
    v203 = v211;
    v204 = v212;
    v205 = v213;
    v206 = v216;
    v207 = v217;
    v208 = v218;
    v209 = v219;
    *(&v155 + 1) = *(&v219 + 1);
    v143 = *&v221[24];
    v149 = v218;
    if (v213 >> 14)
    {
      v175 = v211;
      v166 = *(&v210 + 1);
      v139 = *(&v216 + 1);
      v141 = v219;
      v163 = v210;
      v145 = *(&v218 + 1);
      v147 = v217;
      v151 = v216;
      v156 = v213;
      v31 = v219 & 0xC000;
      if (v213 >> 14 == 1)
      {
        if (v31 != 0x4000)
        {
          goto LABEL_90;
        }

        v32 = v210;
        if (v210 != v216)
        {
          v33 = *(&v210 + 1);
          v34 = sub_1D72646CC();
          v20 = v33;
          if ((v34 & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        v35 = v20;
        sub_1D60B2AC8(&v216, &v190);
        sub_1D60B2AC8(&v210, &v190);
        sub_1D5E1DA6C(v151, v26, v147, v155, v149, v29, v141);
        sub_1D5E1DA6C(v32, v35, v175, v171, v23, *(&v23 + 1), v25);
        sub_1D60B2AC8(&v216, &v190);
        sub_1D60B2AC8(&v210, &v190);
        sub_1D5E1DA6C(v151, v26, v147, v155, v149, v29, v141);
        sub_1D5E1DA6C(v163, v35, v175, v171, v23, *(&v23 + 1), v25);
        sub_1D60B2AC8(&v216, &v190);
        sub_1D60B2AC8(&v210, &v190);
        sub_1D5E1DA6C(v151, v139, v147, v155, v149, v29, v141);
        sub_1D5E1DA6C(v163, v166, v175, v171, v23, *(&v23 + 1), v25);
        v137 = sub_1D6341C50(v175, v147);
        sub_1D66AD7C0(&v202, &qword_1EC88A028);
        sub_1D5E1DE98(v151, v139, v147, v155, v149, v145, v141);
        v36 = v156;
        sub_1D5E1DE98(v163, v166, v175, v171, v23, *(&v23 + 1), v156);
        sub_1D5E1DE98(v151, v139, v147, v155, v149, v145, v141);
        v37 = v163;
        v38 = v166;
        v39 = v175;
        v40 = v171;
        v42 = *(&v23 + 1);
        v41 = v23;
      }

      else
      {
        if (v31 != 0x8000)
        {
LABEL_90:
          v151 = v216;
          v147 = v217;
          v32 = v210;
          v141 = v219;
          v33 = *(&v210 + 1);
          v175 = v211;
LABEL_91:
          sub_1D60B2AC8(&v216, &v190);
          sub_1D60B2AC8(&v210, &v190);
          sub_1D60B2AC8(&v216, &v190);
          sub_1D60B2AC8(&v210, &v190);
          sub_1D60B2AC8(&v216, &v190);
          sub_1D60B2AC8(&v210, &v190);
          sub_1D5E1DA6C(v151, v26, v147, v155, v149, v29, v141);
          v135 = v32;
          v136 = v33;
          goto LABEL_94;
        }

        v186 = v210;
        v187 = v211;
        v188 = v212;
        v189 = v213 & 0x3FFF;
        v182 = v216;
        v183 = v217;
        v184 = v218;
        v185 = v219 & 0x3FFF;
        v60 = *(&v211 + 1);
        v61 = v218;
        sub_1D60B2AC8(&v216, &v190);
        sub_1D60B2AC8(&v210, &v190);
        sub_1D5E1DA6C(v27, v26, v28, v155, v61, v145, v30);
        sub_1D5E1DA6C(v21, v166, v175, v60, v23, *(&v23 + 1), v156);
        sub_1D60B2AC8(&v216, &v190);
        sub_1D60B2AC8(&v210, &v190);
        sub_1D5E1DA6C(v151, v26, v28, v155, v61, v145, v30);
        sub_1D5E1DA6C(v163, v166, v175, v171, v23, *(&v23 + 1), v156);
        sub_1D60B2AC8(&v216, &v190);
        sub_1D60B2AC8(&v210, &v190);
        sub_1D5E1DA6C(v151, v26, v147, v155, v149, v145, v141);
        sub_1D5E1DA6C(v163, v166, v175, v171, v23, *(&v23 + 1), v156);
        v137 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v186, &v182);
        sub_1D66AD7C0(&v202, &qword_1EC88A028);
        sub_1D5E1DE98(v151, v139, v147, v155, v149, v145, v141);
        v36 = v156;
        sub_1D5E1DE98(v163, v166, v175, v171, v23, *(&v23 + 1), v156);
        sub_1D5E1DE98(v151, v139, v147, v155, v149, v145, v141);
        v37 = v163;
        v38 = v166;
        v39 = v175;
        v40 = v171;
        v42 = *(&v23 + 1);
        v41 = v23;
      }

      sub_1D5E1DE98(v37, v38, v39, v40, v41, v42, v36);
      if ((v137 & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v219 >= 0x4000u)
      {
        goto LABEL_90;
      }

      if (v210 == v216)
      {
        v59 = *(&v210 + 1);
        sub_1D60B2AC8(&v216, &v190);
        sub_1D60B2AC8(&v210, &v190);
        sub_1D60B2AC8(&v216, &v190);
        sub_1D60B2AC8(&v210, &v190);
        sub_1D60B2AC8(&v216, &v190);
        sub_1D60B2AC8(&v210, &v190);
        sub_1D5E1DA6C(v21, v59, v28, v155, v149, v29, v30);
        sub_1D5E1DA6C(v21, v59, v22, v171, v23, *(&v23 + 1), v25);
        sub_1D66AD7C0(&v202, &qword_1EC88A028);
      }

      else
      {
        v69 = v210;
        v70 = v219;
        v71 = *(&v210 + 1);
        v72 = v216;
        v73 = sub_1D72646CC();
        sub_1D60B2AC8(&v216, &v190);
        sub_1D60B2AC8(&v210, &v190);
        sub_1D60B2AC8(&v216, &v190);
        sub_1D60B2AC8(&v210, &v190);
        sub_1D60B2AC8(&v216, &v190);
        sub_1D60B2AC8(&v210, &v190);
        sub_1D5E1DA6C(v72, v26, v28, v155, v149, v29, v70);
        sub_1D5E1DA6C(v69, v71, v22, v171, v168, *(&v168 + 1), v25);
        sub_1D66AD7C0(&v202, &qword_1EC88A028);
        if ((v73 & 1) == 0)
        {
          goto LABEL_97;
        }
      }
    }

    v74 = v162 & 0xCFFF;
    v75 = v143;
    v76 = v143 & 0xCFFF;
    v78 = v177;
    v77 = v178;
    v79 = v165;
    v190 = v177;
    v191 = v165;
    v80 = v174;
    v192 = v178;
    v193 = v174;
    v81 = *(&v179 + 1);
    v82 = v179;
    v194 = v179;
    v195 = v162 & 0xCFFF;
    v83 = *(&v155 + 1);
    v84 = v158;
    v196 = *(&v155 + 1);
    v197 = v158;
    v86 = *v153;
    v85 = *&v153[8];
    v198 = *v153;
    v87 = *&v153[16];
    v199 = *&v153[8];
    v200 = v160;
    v201 = v143 & 0xCFFF;
    v176 = v162 & 0xCFFF;
    if (v162 >> 14)
    {
      v172 = v143 & 0xCFFF;
      if (v162 >> 14 == 1)
      {
        if ((v143 & 0xC000) != 0x4000)
        {
          goto LABEL_87;
        }

        if (v177 != *(&v155 + 1) || v165 != v158)
        {
          v88 = sub_1D72646CC();
          v76 = v143 & 0xCFFF;
          v83 = *(&v155 + 1);
          if ((v88 & 1) == 0)
          {
            goto LABEL_99;
          }
        }

        v89 = v83;
        v90 = v76;
        sub_1D5E1DA6C(v83, v158, *v153, *&v153[8], *&v153[16], v160, v76);
        sub_1D5E1DA6C(v177, v165, v178, v174, v179, *(&v179 + 1), v176);
        sub_1D5E1DA6C(v89, v158, *v153, *&v153[8], *&v153[16], v160, v90);
        sub_1D5E1DA6C(v177, v165, v178, v174, v179, *(&v179 + 1), v176);
        v91 = v160;
        sub_1D5E1DA6C(v89, v158, *v153, *&v153[8], *&v153[16], v160, v90);
        v92 = v177;
        v93 = v174;
        v94 = *(&v179 + 1);
        v95 = v162 & 0xCFFF;
        sub_1D5E1DA6C(v177, v165, v178, v174, v179, *(&v179 + 1), v176);
        v169 = sub_1D6341C50(v178, *v153);
        sub_1D66AD7C0(&v190, &qword_1EC88A028);
        v96 = *&v153[16];
        v97 = *&v153[8];
        v98 = v143 & 0xCFFF;
        sub_1D5E1DE98(*(&v155 + 1), v158, *v153, *&v153[8], *&v153[16], v160, v172);
        v99 = v179;
        sub_1D5E1DE98(v177, v165, v178, v174, v179, *(&v179 + 1), v176);
        v100 = *(&v155 + 1);
        v101 = v158;
        v102 = *v153;
LABEL_69:
        sub_1D5E1DE98(v100, v101, v102, v97, v96, v91, v98);
        sub_1D5E1DE98(v92, v79, v178, v93, v99, v94, v95);
        sub_1D66AD7C0(v222, &qword_1EC88A020);
        sub_1D60B2A74(&v216);
        sub_1D60B2A74(&v210);
        sub_1D60B2A74(&v216);
        sub_1D60B2A74(&v210);
        if ((v169 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_75;
      }

      if ((v143 & 0xC000) != 0x8000)
      {
        goto LABEL_87;
      }

      *&v186 = v177;
      *(&v186 + 1) = v165;
      *&v187 = v178;
      *(&v187 + 1) = v174;
      v188 = v179;
      v189 = v162 & 0xFFF;
      *&v182 = *(&v155 + 1);
      *(&v182 + 1) = v158;
      v183 = *v153;
      *&v184 = *&v153[16];
      *(&v184 + 1) = v160;
      v185 = v143 & 0xFFF;
      sub_1D5E1DA6C(*(&v155 + 1), v158, *v153, *&v153[8], *&v153[16], v160, v76);
      sub_1D5E1DA6C(v177, v165, v178, v174, v179, *(&v179 + 1), v162 & 0xCFFF);
      sub_1D5E1DA6C(*(&v155 + 1), v158, *v153, *&v153[8], *&v153[16], v160, v172);
      sub_1D5E1DA6C(v177, v165, v178, v174, v179, *(&v179 + 1), v176);
      sub_1D5E1DA6C(*(&v155 + 1), v158, *v153, *&v153[8], *&v153[16], v160, v172);
      sub_1D5E1DA6C(v177, v165, v178, v174, v179, *(&v179 + 1), v176);
      v170 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v186, &v182);
      sub_1D66AD7C0(&v190, &qword_1EC88A028);
      v103 = v158;
      v105 = *v153;
      v104 = *&v153[8];
      v106 = *&v153[16];
      v107 = v143 & 0xCFFF;
      sub_1D5E1DE98(*(&v155 + 1), v158, *v153, *&v153[8], *&v153[16], v160, v172);
      v108 = v177;
      v109 = v177;
      v110 = v165;
      v111 = v178;
LABEL_78:
      sub_1D5E1DE98(v109, v110, v111, v174, v179, *(&v179 + 1), v176);
      sub_1D5E1DE98(*(&v155 + 1), v103, v105, v104, v106, v160, v107);
      sub_1D5E1DE98(v108, v165, v178, v174, v179, *(&v179 + 1), v176);
      sub_1D66AD7C0(v222, &qword_1EC88A020);
      sub_1D60B2A74(&v216);
      sub_1D60B2A74(&v210);
      sub_1D60B2A74(&v216);
      sub_1D60B2A74(&v210);
      i = v161;
      if ((v170 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_81;
    }

LABEL_71:
    if (v75 >= 0x4000)
    {
      goto LABEL_87;
    }

    if (v78 == v83 && v79 == v84)
    {
      sub_1D5E1DA6C(v78, v79, v86, v85, v87, v160, v76);
      sub_1D5E1DA6C(v78, v79, v178, v80, v179, *(&v179 + 1), v176);
      sub_1D66AD7C0(&v190, &qword_1EC88A028);
      sub_1D66AD7C0(v222, &qword_1EC88A020);
      sub_1D60B2A74(&v216);
      sub_1D60B2A74(&v210);
      sub_1D60B2A74(&v216);
      sub_1D60B2A74(&v210);
LABEL_75:
      i = v161;
      goto LABEL_81;
    }

    v118 = v78;
    v119 = v83;
    v120 = v76;
    v121 = sub_1D72646CC();
    sub_1D5E1DA6C(v119, v84, v86, v85, v87, v160, v120);
    sub_1D5E1DA6C(v118, v79, v178, v80, v179, *(&v179 + 1), v176);
    sub_1D66AD7C0(&v190, &qword_1EC88A028);
    sub_1D66AD7C0(v222, &qword_1EC88A020);
    sub_1D60B2A74(&v216);
    sub_1D60B2A74(&v210);
    sub_1D60B2A74(&v216);
    sub_1D60B2A74(&v210);
    i = v161;
    if ((v121 & 1) == 0)
    {
      return 0;
    }

LABEL_81:
    if (!i)
    {
      return 1;
    }

    v180 += 7;
    v181 += 7;
  }

  if ((*&v221[24] & 0x3000) != 0x2000)
  {
LABEL_85:
    sub_1D60B2AC8(&v216, &v202);
    sub_1D60B2AC8(&v210, &v202);
    sub_1D66AD7C0(v222, &qword_1EC88A020);
    return 0;
  }

  v45 = *(&v216 + 1);
  v46 = v217;
  *v152 = *(&v220 + 1);
  *&v152[8] = *v221;
  v154 = *(&v217 + 1);
  v159 = v220;
  v160 = *&v221[16];
  v47 = v219;
  v202 = v210;
  v203 = v211;
  v204 = v212;
  v205 = v213;
  v206 = v216;
  v207 = v217;
  v48 = *(&v218 + 1);
  v208 = v218;
  v209 = v219;
  v175 = v211;
  v155 = v219;
  v140 = *&v221[24];
  v148 = v218;
  if (!(v213 >> 14))
  {
    if (v219 >= 0x4000u)
    {
      goto LABEL_92;
    }

    if (v210 == v216)
    {
      v63 = *(&v210 + 1);
      sub_1D60B2AC8(&v216, &v190);
      sub_1D60B2AC8(&v210, &v190);
      sub_1D60B2AC8(&v216, &v190);
      sub_1D60B2AC8(&v210, &v190);
      sub_1D60B2AC8(&v216, &v190);
      sub_1D60B2AC8(&v210, &v190);
      sub_1D5E1DA6C(v21, v63, v46, v154, v148, v48, v155);
      sub_1D5E1DA6C(v21, v63, v175, v171, v23, *(&v23 + 1), v25);
      sub_1D66AD7C0(&v202, &qword_1EC88A028);
    }

    else
    {
      v112 = *(&v210 + 1);
      v113 = v216;
      v114 = sub_1D72646CC();
      sub_1D60B2AC8(&v216, &v190);
      sub_1D60B2AC8(&v210, &v190);
      sub_1D60B2AC8(&v216, &v190);
      sub_1D60B2AC8(&v210, &v190);
      sub_1D60B2AC8(&v216, &v190);
      sub_1D60B2AC8(&v210, &v190);
      sub_1D5E1DA6C(v113, *(&v113 + 1), v46, v154, v148, v48, v155);
      sub_1D5E1DA6C(v21, v112, v175, v171, v168, *(&v168 + 1), v25);
      sub_1D66AD7C0(&v202, &qword_1EC88A028);
      if ((v114 & 1) == 0)
      {
        goto LABEL_97;
      }
    }

LABEL_62:
    v74 = v162 & 0xCFFF;
    v75 = v140;
    v76 = v140 & 0xCFFF;
    v78 = v177;
    v77 = v178;
    v79 = v165;
    v190 = v177;
    v191 = v165;
    v80 = v174;
    v192 = v178;
    v193 = v174;
    v81 = *(&v179 + 1);
    v82 = v179;
    v194 = v179;
    v195 = v162 & 0xCFFF;
    v83 = *(&v155 + 1);
    v84 = v159;
    v196 = *(&v155 + 1);
    v197 = v159;
    v86 = *v152;
    v85 = *&v152[8];
    v198 = *v152;
    v199 = *&v152[8];
    v87 = *&v152[16];
    v200 = v160;
    v201 = v140 & 0xCFFF;
    v176 = v162 & 0xCFFF;
    if (v162 >> 14)
    {
      v173 = v140 & 0xCFFF;
      if (v162 >> 14 == 1)
      {
        if ((v140 & 0xC000) != 0x4000)
        {
          goto LABEL_87;
        }

        if (v177 != *(&v155 + 1) || v165 != v159)
        {
          v115 = sub_1D72646CC();
          v76 = v140 & 0xCFFF;
          v83 = *(&v155 + 1);
          if ((v115 & 1) == 0)
          {
LABEL_99:
            sub_1D5E1DA6C(v83, v84, v86, v85, v87, v160, v76);
            v127 = v177;
            v129 = v178;
            v128 = v79;
            v130 = v80;
            v132 = *(&v179 + 1);
            v131 = v179;
            v133 = v176;
            goto LABEL_88;
          }
        }

        v116 = v83;
        v117 = v76;
        sub_1D5E1DA6C(v83, v159, *v152, *&v152[8], *&v152[16], v160, v76);
        sub_1D5E1DA6C(v177, v165, v178, v174, v179, *(&v179 + 1), v176);
        sub_1D5E1DA6C(v116, v159, *v152, *&v152[8], *&v152[16], v160, v117);
        sub_1D5E1DA6C(v177, v165, v178, v174, v179, *(&v179 + 1), v176);
        v91 = v160;
        sub_1D5E1DA6C(v116, v159, *v152, *&v152[8], *&v152[16], v160, v117);
        v92 = v177;
        v93 = v174;
        v94 = *(&v179 + 1);
        v95 = v162 & 0xCFFF;
        sub_1D5E1DA6C(v177, v165, v178, v174, v179, *(&v179 + 1), v176);
        v169 = sub_1D6341C50(v178, *v152);
        sub_1D66AD7C0(&v190, &qword_1EC88A028);
        v97 = *&v152[8];
        v96 = *&v152[16];
        v98 = v140 & 0xCFFF;
        sub_1D5E1DE98(*(&v155 + 1), v159, *v152, *&v152[8], *&v152[16], v160, v173);
        v99 = v179;
        sub_1D5E1DE98(v177, v165, v178, v174, v179, *(&v179 + 1), v176);
        v100 = *(&v155 + 1);
        v101 = v159;
        v102 = *v152;
        goto LABEL_69;
      }

      if ((v140 & 0xC000) != 0x8000)
      {
LABEL_87:
        v123 = v85;
        v124 = v87;
        v125 = v81;
        v126 = v74;
        sub_1D5E1DA6C(v83, v84, v86, v123, v124, v160, v76);
        v127 = v78;
        v128 = v79;
        v129 = v77;
        v130 = v80;
        v131 = v82;
        v132 = v125;
        v133 = v126;
LABEL_88:
        sub_1D5E1DA6C(v127, v128, v129, v130, v131, v132, v133);
        v134 = &v190;
        goto LABEL_96;
      }

      *&v186 = v177;
      *(&v186 + 1) = v165;
      *&v187 = v178;
      *(&v187 + 1) = v174;
      v188 = v179;
      v189 = v162 & 0xFFF;
      *&v182 = *(&v155 + 1);
      *(&v182 + 1) = v159;
      v183 = *v152;
      *&v184 = *&v152[16];
      *(&v184 + 1) = v160;
      v185 = v140 & 0xFFF;
      sub_1D5E1DA6C(*(&v155 + 1), v159, *v152, *&v152[8], *&v152[16], v160, v76);
      sub_1D5E1DA6C(v177, v165, v178, v174, v179, *(&v179 + 1), v162 & 0xCFFF);
      sub_1D5E1DA6C(*(&v155 + 1), v159, *v152, *&v152[8], *&v152[16], v160, v173);
      sub_1D5E1DA6C(v177, v165, v178, v174, v179, *(&v179 + 1), v176);
      sub_1D5E1DA6C(*(&v155 + 1), v159, *v152, *&v152[8], *&v152[16], v160, v173);
      sub_1D5E1DA6C(v177, v165, v178, v174, v179, *(&v179 + 1), v176);
      v170 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v186, &v182);
      sub_1D66AD7C0(&v190, &qword_1EC88A028);
      v103 = v159;
      v105 = *v152;
      v104 = *&v152[8];
      v106 = *&v152[16];
      v107 = v140 & 0xCFFF;
      sub_1D5E1DE98(*(&v155 + 1), v159, *v152, *&v152[8], *&v152[16], v160, v173);
      v108 = v177;
      v109 = v177;
      v110 = v165;
      v111 = v178;
      goto LABEL_78;
    }

    goto LABEL_71;
  }

  v167 = *(&v210 + 1);
  v144 = v216;
  v146 = v217;
  v164 = v210;
  v150 = *(&v216 + 1);
  v157 = v213;
  v142 = *(&v218 + 1);
  if (v213 >> 14 == 1)
  {
    if ((v219 & 0xC000) != 0x4000)
    {
      goto LABEL_92;
    }

    if (v210 != v216)
    {
      v49 = sub_1D72646CC();
      v45 = v150;
      v20 = v167;
      if ((v49 & 1) == 0)
      {
        goto LABEL_93;
      }
    }

    v50 = v20;
    v51 = v45;
    sub_1D60B2AC8(&v216, &v190);
    sub_1D60B2AC8(&v210, &v190);
    sub_1D5E1DA6C(v144, v51, v146, v154, v148, v48, v155);
    sub_1D5E1DA6C(v164, v50, v175, v171, v23, *(&v23 + 1), v25);
    sub_1D60B2AC8(&v216, &v190);
    sub_1D60B2AC8(&v210, &v190);
    sub_1D5E1DA6C(v144, v51, v146, v154, v148, v142, v155);
    sub_1D5E1DA6C(v164, v50, v175, v171, v23, *(&v23 + 1), v25);
    sub_1D60B2AC8(&v216, &v190);
    sub_1D60B2AC8(&v210, &v190);
    sub_1D5E1DA6C(v144, v150, v146, v154, v148, v142, v155);
    sub_1D5E1DA6C(v164, v167, v175, v171, v23, *(&v23 + 1), v25);
    v138 = sub_1D6341C50(v175, v146);
    sub_1D66AD7C0(&v202, &qword_1EC88A028);
    sub_1D5E1DE98(v144, v150, v146, v154, v148, v142, v155);
    sub_1D5E1DE98(v164, v167, v175, v171, v23, *(&v23 + 1), v157);
    sub_1D5E1DE98(v144, v150, v146, v154, v148, v142, v155);
    v52 = v164;
    v53 = v167;
    v54 = v175;
    v55 = v171;
    v57 = *(&v23 + 1);
    v56 = v23;
    v58 = v157;
    goto LABEL_46;
  }

  if ((v219 & 0xC000) == 0x8000)
  {
    v186 = v210;
    v187 = v211;
    v188 = v212;
    v189 = v213 & 0x3FFF;
    v182 = v216;
    v183 = v217;
    v184 = v218;
    v64 = *(&v218 + 1);
    v185 = v219 & 0x3FFF;
    v65 = *(&v211 + 1);
    v66 = v218;
    v67 = *(&v216 + 1);
    v68 = v216;
    sub_1D60B2AC8(&v216, &v190);
    sub_1D60B2AC8(&v210, &v190);
    sub_1D5E1DA6C(v68, v67, v46, v154, v66, v64, v47);
    sub_1D5E1DA6C(v21, v167, v175, v65, v23, *(&v168 + 1), v157);
    sub_1D60B2AC8(&v216, &v190);
    sub_1D60B2AC8(&v210, &v190);
    sub_1D5E1DA6C(v144, v150, v146, v154, v148, v142, v155);
    sub_1D5E1DA6C(v164, v167, v175, v171, v23, *(&v168 + 1), v157);
    sub_1D60B2AC8(&v216, &v190);
    sub_1D60B2AC8(&v210, &v190);
    sub_1D5E1DA6C(v144, v150, v146, v154, v148, v142, v155);
    sub_1D5E1DA6C(v164, v167, v175, v171, v168, *(&v168 + 1), v157);
    v138 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v186, &v182);
    sub_1D66AD7C0(&v202, &qword_1EC88A028);
    sub_1D5E1DE98(v144, v150, v146, v154, v148, v142, v155);
    sub_1D5E1DE98(v164, v167, v175, v171, v168, *(&v168 + 1), v157);
    sub_1D5E1DE98(v144, v150, v146, v154, v148, v142, v155);
    v52 = v164;
    v53 = v167;
    v54 = v175;
    v55 = v171;
    v57 = *(&v168 + 1);
    v56 = v168;
    v58 = v157;
LABEL_46:
    sub_1D5E1DE98(v52, v53, v54, v55, v56, v57, v58);
    if ((v138 & 1) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_62;
  }

LABEL_92:
  v144 = v216;
  v146 = v217;
  v150 = *(&v216 + 1);
  v167 = *(&v210 + 1);
  v164 = v210;
LABEL_93:
  sub_1D60B2AC8(&v216, &v190);
  sub_1D60B2AC8(&v210, &v190);
  sub_1D60B2AC8(&v216, &v190);
  sub_1D60B2AC8(&v210, &v190);
  sub_1D60B2AC8(&v216, &v190);
  sub_1D60B2AC8(&v210, &v190);
  sub_1D5E1DA6C(v144, v150, v146, v154, v148, v48, v155);
  v135 = v164;
  v136 = v167;
LABEL_94:
  sub_1D5E1DA6C(v135, v136, v175, v171, v23, *(&v23 + 1), v25);
LABEL_95:
  v134 = &v202;
LABEL_96:
  sub_1D66AD7C0(v134, &qword_1EC88A028);
LABEL_97:
  sub_1D66AD7C0(v222, &qword_1EC88A020);
  sub_1D60B2A74(&v216);
  sub_1D60B2A74(&v210);
  sub_1D60B2A74(&v216);
  sub_1D60B2A74(&v210);
  return 0;
}

uint64_t sub_1D635D3A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D635D3FC(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
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
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1D5B5A498(0, &qword_1EDF1AC18);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1DA6FB460](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1DA6FB460](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1D726370C();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1D726370C();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1D7263BFC();
  }

  result = sub_1D7263BFC();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1D635D64C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 48;
    v4 = a2 + 48;
    do
    {
      v6 = *(v4 - 8);
      if (*(v3 - 8))
      {
        if (!*(v4 - 8))
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 16) != *(v4 - 16))
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      if (*(v3 + 8))
      {
        if (!*(v4 + 8))
        {
          return 0;
        }
      }

      else
      {
        if (*v3 == *v4)
        {
          v7 = *(v4 + 8);
        }

        else
        {
          v7 = 1;
        }

        if (v7)
        {
          return 0;
        }
      }

      if (*(v3 + 24))
      {
        if (!*(v4 + 24))
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 + 16) == *(v4 + 16))
        {
          v8 = *(v4 + 24);
        }

        else
        {
          v8 = 1;
        }

        if (v8)
        {
          return 0;
        }
      }

      if (*(v3 + 40))
      {
        if (!*(v4 + 40))
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 + 32) == *(v4 + 32))
        {
          v5 = *(v4 + 40);
        }

        else
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 64;
      v4 += 64;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D635D7C8(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1D7263BFC();
    if (v8 == result)
    {
      goto LABEL_5;
    }

LABEL_35:
    v20 = 0;
    return v20 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 != result)
  {
    goto LABEL_35;
  }

LABEL_5:
  if (!v8)
  {
    goto LABEL_33;
  }

  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  v11 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v10 = a1;
  }

  if (v7)
  {
    v11 = v10;
  }

  v12 = a2 & 0xFFFFFFFFFFFFFF8;
  v13 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v12 = a2;
  }

  if (a2 >> 62)
  {
    v13 = v12;
  }

  if (v11 == v13)
  {
LABEL_33:
    v20 = 1;
    return v20 & 1;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v21 = a2 & 0xC000000000000001;
    v14 = 4;
    while (1)
    {
      v15 = v14 - 4;
      v16 = v14 - 3;
      if (__OFADD__(v14 - 4, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        v8 = sub_1D7263BFC();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1DA6FB460](v14 - 4, a1);
        if (v21)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v17 = *(a1 + 8 * v14);

        if (v21)
        {
LABEL_20:
          v18 = MEMORY[0x1DA6FB460](v14 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v18 = *(a2 + 8 * v14);

LABEL_25:
      v19 = v17[2] == *(v18 + 16) && v17[3] == *(v18 + 24);
      if (!v19 && (sub_1D72646CC() & 1) == 0)
      {

        goto LABEL_35;
      }

      a3(0);
      v7 = *(*v17 + 120);
      sub_1D5B58B84(a4, a5);
      v20 = sub_1D7261FBC();

      if (v20)
      {
        ++v14;
        if (v16 != v8)
        {
          continue;
        }
      }

      return v20 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D635DA1C(uint64_t a1, uint64_t a2)
{
  v4 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1D7263BFC();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_35:
    v17 = 0;
    return v17 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_35;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_33;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
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
LABEL_33:
    v17 = 1;
    return v17 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        v5 = sub_1D7263BFC();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1DA6FB460](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = MEMORY[0x1DA6FB460](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = v4[2] == v15[2] && v4[3] == v15[3];
      if (!v16 && (sub_1D72646CC() & 1) == 0)
      {

        goto LABEL_35;
      }

      v17 = sub_1D635DC08(v4[4], v15[4]);

      if (v17)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v17 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D635DC08(uint64_t a1, uint64_t a2)
{
  v53 = sub_1D72593CC();
  v4 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v5);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E34A8];
  sub_1D5B5BF78(0, &qword_1EDF188B0, MEMORY[0x1E69E34A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v49 = &v42 - v10;
  sub_1D66F4EB8(0, &qword_1EC889AD8, &qword_1EDF188B0, v7);
  v51 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v42 - v13;
  v50 = type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota();
  MEMORY[0x1EEE9AC00](v50, v15);
  v17 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v22 = (&v42 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    return 0;
  }

  if (!v23 || a1 == a2)
  {
    return 1;
  }

  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v27 = (v4 + 48);
  v42 = (v4 + 32);
  v43 = (v4 + 48);
  v28 = *(v20 + 72);
  v44 = (v4 + 8);
  v45 = v28;
  v48 = (&v42 - v21);
  v46 = v17;
  while (1)
  {
    sub_1D6706BB4(v25, v22, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
    sub_1D6706BB4(v26, v17, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
    if (*v22 != *v17 || v22[1] != v17[1])
    {
      sub_1D5D2CFE8(v17, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
      sub_1D5D2CFE8(v22, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
      return 0;
    }

    v52 = v25;
    v29 = v22;
    v30 = v27;
    v31 = *(v50 + 24);
    v32 = *(v51 + 48);
    v33 = MEMORY[0x1E69E34A8];
    sub_1D5CDE2EC(v29 + v31, v14, &qword_1EDF188B0, MEMORY[0x1E69E34A8]);
    sub_1D5CDE2EC(v17 + v31, &v14[v32], &qword_1EDF188B0, v33);
    v34 = *v30;
    if ((*v30)(v14, 1, v53) != 1)
    {
      break;
    }

    sub_1D5D2CFE8(v17, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
    sub_1D5D2CFE8(v29, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
    if (v34(&v14[v32], 1, v53) != 1)
    {
      goto LABEL_17;
    }

    v27 = v30;
    sub_1D5D35558(v14, &qword_1EDF188B0, MEMORY[0x1E69E34A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v17 = v46;
LABEL_5:
    v26 += v45;
    v25 = v52 + v45;
    --v23;
    v22 = v48;
    if (!v23)
    {
      return 1;
    }
  }

  v35 = v49;
  sub_1D5CDE2EC(v14, v49, &qword_1EDF188B0, MEMORY[0x1E69E34A8]);
  if (v34(&v14[v32], 1, v53) != 1)
  {
    v36 = &v14[v32];
    v37 = v47;
    v38 = v53;
    (*v42)(v47, v36, v53);
    sub_1D5B58B84(&unk_1EDF188C0, MEMORY[0x1E69E34A8]);
    v39 = sub_1D7261FBC();
    v40 = *v44;
    (*v44)(v37, v38);
    v17 = v46;
    sub_1D5D2CFE8(v46, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
    sub_1D5D2CFE8(v48, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
    v40(v49, v38);
    v27 = v43;
    sub_1D5D35558(v14, &qword_1EDF188B0, MEMORY[0x1E69E34A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    if ((v39 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_1D5D2CFE8(v46, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
  sub_1D5D2CFE8(v48, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
  (*v44)(v35, v53);
LABEL_17:
  sub_1D66F4424(v14, &qword_1EC889AD8, &qword_1EDF188B0, MEMORY[0x1E69E34A8]);
  return 0;
}

uint64_t sub_1D635E254(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72593CC();
  v60 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v59 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v43 - v10;
  v12 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    if (a2 >> 62)
    {
      result = sub_1D7263BFC();
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

    v15 = a1 & 0xFFFFFFFFFFFFFF8;
    v16 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v49 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v15 = a1;
    }

    if (v12)
    {
      v16 = v15;
    }

    v17 = a2 & 0xFFFFFFFFFFFFFF8;
    v18 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v48 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v17 = a2;
    }

    if (a2 >> 62)
    {
      v18 = v17;
    }

    if (v16 == v18)
    {
      return 1;
    }

    if (i < 0)
    {
      break;
    }

    v19 = 0;
    v50 = a2 & 0xC000000000000001;
    v51 = a1 & 0xC000000000000001;
    v43 = a2 + 32;
    v44 = a1 + 32;
    v57 = (v60 + 8);
    v58 = v60 + 16;
    v46 = a1;
    v47 = a2;
    v45 = i;
    while (1)
    {
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_63;
      }

      if (v51)
      {
        result = MEMORY[0x1DA6FB460](v19, a1, v9);
        v20 = result;
      }

      else
      {
        if (v19 >= *(v49 + 16))
        {
          goto LABEL_64;
        }

        v20 = *(v44 + 8 * v19);
      }

      v52 = v19 + 1;
      if (v50)
      {
        v21 = MEMORY[0x1DA6FB460](v19, a2);
      }

      else
      {
        if (v19 >= *(v48 + 16))
        {
          goto LABEL_65;
        }

        v21 = *(v43 + 8 * v19);
      }

      v22 = *(v20 + 16);
      v23 = *(v20 + 24);
      v53 = v21;
      v54 = v20;
      v24 = v22 == *(v21 + 16) && v23 == *(v21 + 24);
      if (!v24 && (sub_1D72646CC() & 1) == 0 || (v25 = v54 + *(*v54 + 120), v12 = v53 + *(*v53 + 120), *v25 != *v12) || (v26 = *(v25 + 8), v27 = *(v12 + 8), v28 = *(v26 + 16), v28 != *(v27 + 16)))
      {
LABEL_53:

        return 0;
      }

      if (v28 && v26 != v27)
      {
        break;
      }

LABEL_43:
      v32 = type metadata accessor for FeedGroupBundleArticleQuotas();
      if ((MEMORY[0x1DA6F0A40](v25 + *(v32 + 24), v12 + *(v32 + 24)) & 1) == 0)
      {
        goto LABEL_53;
      }

      v33 = *(v32 + 28);
      v34 = *(v25 + v33);
      v35 = *(v12 + v33);
      v36 = *(v34 + 16);
      if (v36 != *(v35 + 16))
      {
        goto LABEL_53;
      }

      if (v36 && v34 != v35)
      {
        v37 = 0;
        v38 = (*(v60 + 80) + 32) & ~*(v60 + 80);
        v55 = v35 + v38;
        v56 = v34 + v38;
        while (v37 < *(v34 + 16))
        {
          a1 = *(v60 + 72) * v37;
          v39 = *(v60 + 16);
          v12 = v58;
          v39(v11, v56 + a1, v4);
          if (v37 >= *(v35 + 16))
          {
            goto LABEL_58;
          }

          a2 = v11;
          v40 = v59;
          v39(v59, v55 + a1, v4);
          sub_1D5B58B84(&unk_1EDF188C0, MEMORY[0x1E69E34A8]);
          v41 = sub_1D7261FBC();
          v12 = v57;
          a1 = *v57;
          v42 = v40;
          v11 = a2;
          (*v57)(v42, v4);
          (a1)(a2, v4);
          if ((v41 & 1) == 0)
          {
            goto LABEL_53;
          }

          if (v36 == ++v37)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_57;
      }

LABEL_18:

      result = 1;
      v19 = v52;
      a1 = v46;
      a2 = v47;
      if (v52 == v45)
      {
        return result;
      }
    }

    v30 = (v26 + 32);
    v31 = (v27 + 32);
    while (v28)
    {
      if (*v30 != *v31)
      {
        goto LABEL_53;
      }

      ++v30;
      ++v31;
      if (!--v28)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_1D635E760(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_50:
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = sub_1D7263BFC();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v26 = a2 & 0xFFFFFFFFFFFFFF8;
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

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
          goto LABEL_50;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1DA6FB460](v12 - 4, a1);
          v15 = result;
          if (v11)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          v15 = *(a1 + 8 * v12);

          if (v11)
          {
LABEL_21:
            v16 = MEMORY[0x1DA6FB460](v12 - 4, a2);
            goto LABEL_26;
          }
        }

        if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v16 = *(a2 + 8 * v12);

LABEL_26:
        v17 = v15[2] == v16[2] && v15[3] == v16[3];
        if (!v17 && (sub_1D72646CC() & 1) == 0)
        {

          return 0;
        }

        v18 = v15[4];

        v4 = v16[4];

        result = v18 == v4;
        if (v18 == v4)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return result;
      }
    }

    v19 = a1 + 32;
    v20 = a2 + 32;
    v21 = *(v27 + 16);
    v22 = *(v26 + 16);
    while (1)
    {
      if (!v21)
      {
        goto LABEL_55;
      }

      if (!v22)
      {
        break;
      }

      v23 = *v19;
      v24 = *v20;
      v25 = *(*v19 + 16) == *(*v20 + 16) && *(*v19 + 24) == *(*v20 + 24);
      if (!v25 && (sub_1D72646CC() & 1) == 0 || *(v23 + 32) != *(v24 + 32))
      {
        return 0;
      }

      --v22;
      --v21;
      v19 += 8;
      v20 += 8;
      result = 1;
      if (!--v5)
      {
        return result;
      }
    }

LABEL_56:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D635E9D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_52:
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = sub_1D7263BFC();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (a2 >> 62)
  {
    v10 = v11;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      for (i = 4; ; ++i)
      {
        v17 = i - 4;
        v18 = i - 3;
        if (__OFADD__(i - 4, 1))
        {
          __break(1u);
          goto LABEL_52;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1DA6FB460](i - 4, a1);
          v4 = result;
          if (v12)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          v4 = *(a1 + 8 * i);

          if (v12)
          {
LABEL_26:
            v19 = MEMORY[0x1DA6FB460](i - 4, a2);
            goto LABEL_31;
          }
        }

        if (v17 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v19 = *(a2 + 8 * i);

LABEL_31:
        v20 = *(v4 + 16) == *(v19 + 16) && *(v4 + 24) == *(v19 + 24);
        if (!v20 && (sub_1D72646CC() & 1) == 0)
        {

          return 0;
        }

        v14 = *(v19 + 32);

        v15 = *(v4 + 32);

        result = v15 == v14;
        if (v15 != v14 || v18 == v5)
        {
          return result;
        }
      }
    }

    v21 = a1 + 32;
    v22 = a2 + 32;
    v23 = *(v28 + 16);
    v24 = *(v9 + 16);
    while (1)
    {
      if (!v23)
      {
        goto LABEL_57;
      }

      if (!v24)
      {
        break;
      }

      v25 = *v21;
      v26 = *v22;
      v27 = *(*v21 + 16) == *(*v22 + 16) && *(*v21 + 24) == *(*v22 + 24);
      if (!v27 && (sub_1D72646CC() & 1) == 0 || *(v25 + 32) != *(v26 + 32))
      {
        return 0;
      }

      --v24;
      --v23;
      v21 += 8;
      v22 += 8;
      result = 1;
      if (!--v5)
      {
        return result;
      }
    }

LABEL_58:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D635EC3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = sub_1D7263BFC();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (a2 >> 62)
  {
    v9 = v10;
  }

  if (v8 == v9)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v34 = a2 & 0xC000000000000001;
      for (i = 4; ; ++i)
      {
        v12 = i - 4;
        v13 = i - 3;
        if (__OFADD__(i - 4, 1))
        {
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1DA6FB460](i - 4, a1);
          v14 = result;
          if (v34)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_89;
          }

          v14 = *(a1 + 8 * i);

          if (v34)
          {
LABEL_26:
            v15 = MEMORY[0x1DA6FB460](i - 4, a2);
            goto LABEL_31;
          }
        }

        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_90;
        }

        v15 = *(a2 + 8 * i);

LABEL_31:
        v16 = *(v14 + 16) == *(v15 + 16) && *(v14 + 24) == *(v15 + 24);
        if (!v16 && (sub_1D72646CC() & 1) == 0)
        {
          goto LABEL_53;
        }

        v17 = *(v14 + 64);
        v18 = *(v15 + 40);
        v19 = *(v15 + 64);
        if (*(v14 + 40))
        {
          if (!*(v15 + 40))
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (*(v14 + 32) != *(v15 + 32))
          {
            v18 = 1;
          }

          if (v18)
          {
LABEL_53:

            return 0;
          }
        }

        if (*(v14 + 56))
        {
          if (!*(v15 + 56))
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (*(v14 + 48) == *(v15 + 48))
          {
            v20 = *(v15 + 56);
          }

          else
          {
            v20 = 1;
          }

          if (v20)
          {
            goto LABEL_53;
          }
        }

        if (v17)
        {
          if (!v19)
          {
            goto LABEL_53;
          }

          v21 = sub_1D5BFC390(v17, v19);

          if ((v21 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v19)
          {
            goto LABEL_53;
          }
        }

        result = 1;
        if (v13 == v5)
        {
          return result;
        }
      }
    }

    v22 = a1 + 32;
    v23 = a2 + 32;
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (!v24)
      {
        goto LABEL_87;
      }

      if (!v25)
      {
        break;
      }

      v26 = *v22;
      v27 = *v23;
      v28 = *(*v22 + 16) == *(*v23 + 16) && *(*v22 + 24) == *(*v23 + 24);
      if (!v28 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      v29 = *(v26 + 64);
      v30 = *(v27 + 40);
      v31 = *(v27 + 64);
      if (*(v26 + 40))
      {
        if (!*(v27 + 40))
        {
          return 0;
        }
      }

      else
      {
        if (*(v26 + 32) != *(v27 + 32))
        {
          v30 = 1;
        }

        if (v30)
        {
          return 0;
        }
      }

      if (*(v26 + 56))
      {
        if (!*(v27 + 56))
        {
          return 0;
        }
      }

      else
      {
        if (*(v26 + 48) == *(v27 + 48))
        {
          v32 = *(v27 + 56);
        }

        else
        {
          v32 = 1;
        }

        if (v32)
        {
          return 0;
        }
      }

      if (v29)
      {
        if (!v31)
        {
          return 0;
        }

        v33 = sub_1D5BFC390(v29, v31);

        if ((v33 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v31)
      {
        return 0;
      }

      --v25;
      --v24;
      v22 += 8;
      v23 += 8;
      result = 1;
      if (!--v5)
      {
        return result;
      }
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D635EFDC(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_76;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1D7263BFC();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  if (v3 < 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4)
  {
    v8 = v9;
  }

  v10 = a2 & 0xFFFFFFFFFFFFFF8;
  v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (a2 >> 62)
  {
    v11 = v12;
  }

  if (v8 == v11)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v13 = 0;
      v14 = v3 & 0xC000000000000001;
      v37 = a2 & 0xC000000000000001;
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        if (v14)
        {
          result = MEMORY[0x1DA6FB460](v13, v3);
          v16 = result;
          if (v37)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v13 >= *(v7 + 16))
          {
            goto LABEL_82;
          }

          v16 = *(v3 + 32 + 8 * v13);

          if (v37)
          {
LABEL_23:
            v17 = MEMORY[0x1DA6FB460](v13, a2);
            goto LABEL_28;
          }
        }

        if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_83;
        }

        v17 = *(a2 + 32 + 8 * v13);

LABEL_28:
        v18 = v16[2] == v17[2] && v16[3] == v17[3];
        if (!v18 && (sub_1D72646CC() & 1) == 0)
        {
          goto LABEL_49;
        }

        v19 = v16[4];
        v20 = v17[4];
        v21 = *(v19 + 16);
        if (v21 != *(v20 + 16))
        {
          goto LABEL_49;
        }

        if (v21 && v19 != v20)
        {
          v22 = (v19 + 40);
          v23 = (v20 + 40);
          while (1)
          {
            v24 = *(v22 - 1) == *(v23 - 1) && *v22 == *v23;
            if (!v24 && (sub_1D72646CC() & 1) == 0)
            {
              break;
            }

            v22 += 2;
            v23 += 2;
            if (!--v21)
            {

              v14 = v3 & 0xC000000000000001;
              v7 = v3 & 0xFFFFFFFFFFFFFF8;
              goto LABEL_46;
            }
          }

LABEL_49:

          return 0;
        }

LABEL_46:
        result = 1;
        v13 = v15;
        if (v15 == v5)
        {
          return result;
        }
      }
    }

    v4 = 0;
    v3 += 32;
    a2 += 32;
    v25 = *(v7 + 16);
    v26 = *(v10 + 16);
    while (1)
    {
      if (v4 == v25)
      {
        goto LABEL_80;
      }

      if (v4 == v26)
      {
        break;
      }

      v27 = *(v3 + 8 * v4);
      v28 = *(a2 + 8 * v4);
      v29 = v27[2] == v28[2] && v27[3] == v28[3];
      if (!v29 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      v30 = v27[4];
      v31 = v28[4];
      v32 = *(v30 + 16);
      if (v32 != *(v31 + 16))
      {
        return 0;
      }

      if (v32)
      {
        v33 = v30 == v31;
      }

      else
      {
        v33 = 1;
      }

      if (!v33)
      {
        v34 = (v30 + 40);
        v35 = (v31 + 40);
        while (v32)
        {
          v36 = *(v34 - 1) == *(v35 - 1) && *v34 == *v35;
          if (!v36 && (sub_1D72646CC() & 1) == 0)
          {
            return 0;
          }

          v34 += 2;
          v35 += 2;
          if (!--v32)
          {
            goto LABEL_51;
          }
        }

        __break(1u);
LABEL_76:
        v5 = sub_1D7263BFC();
        goto LABEL_3;
      }

LABEL_51:
      ++v4;
      result = 1;
      if (v4 == v5)
      {
        return result;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D635F338(uint64_t a1, uint64_t a2)
{
  v4 = (a1 >> 62);
  if (a1 >> 62)
  {
LABEL_50:
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = sub_1D7263BFC();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_47:
    v17 = 0;
    return v17 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_47;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_34;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
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
LABEL_34:
    v17 = 1;
    return v17 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
          goto LABEL_50;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1DA6FB460](v12 - 4, a1);
          v4 = result;
          if (v11)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          v4 = *(a1 + 8 * v12);

          if (v11)
          {
LABEL_21:
            v15 = MEMORY[0x1DA6FB460](v12 - 4, a2);
            goto LABEL_26;
          }
        }

        if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v15 = *(a2 + 8 * v12);

LABEL_26:
        v16 = v4[2] == v15[2] && v4[3] == v15[3];
        if (!v16 && (sub_1D72646CC() & 1) == 0)
        {

          goto LABEL_47;
        }

        v17 = sub_1D5E2D074(v4[4], v15[4]);

        if (v17)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v17 & 1;
      }
    }

    v18 = a1 + 32;
    v19 = a2 + 32;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (!v20)
      {
        goto LABEL_55;
      }

      if (!v21)
      {
        break;
      }

      v22 = *v18;
      v23 = *v19;
      v24 = *(*v18 + 16) == *(*v19 + 16) && *(*v18 + 24) == *(*v19 + 24);
      if (!v24 && (sub_1D72646CC() & 1) == 0)
      {
        goto LABEL_47;
      }

      v25 = *(v22 + 32);
      v26 = *(v23 + 32);

      LOBYTE(v25) = sub_1D5E2D074(v25, v26);

      if ((v25 & 1) == 0)
      {
        goto LABEL_47;
      }

      --v21;
      --v20;
      v18 += 8;
      v19 += 8;
      v17 = 1;
      if (!--v5)
      {
        return v17 & 1;
      }
    }

LABEL_56:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D635F5D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_50:
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = sub_1D7263BFC();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_47:
    v19 = 0;
    return v19 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_47;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_34;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v27 = a2 & 0xFFFFFFFFFFFFFF8;
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
LABEL_34:
    v19 = 1;
    return v19 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
          goto LABEL_50;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1DA6FB460](v12 - 4, a1);
          v15 = result;
          if (v11)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          v15 = *(a1 + 8 * v12);

          if (v11)
          {
LABEL_21:
            v16 = MEMORY[0x1DA6FB460](v12 - 4, a2);
            goto LABEL_26;
          }
        }

        if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v16 = *(a2 + 8 * v12);

LABEL_26:
        v17 = *(v15 + 16) == *(v16 + 16) && *(v15 + 24) == *(v16 + 24);
        if (!v17 && (sub_1D72646CC() & 1) == 0)
        {

          goto LABEL_47;
        }

        v18 = *(v15 + 32);

        v4 = *(v16 + 32);

        if (((v18 ^ v4) & 1) == 0)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        v19 = v18 ^ v4 ^ 1;
        return v19 & 1;
      }
    }

    v20 = a1 + 32;
    v21 = a2 + 32;
    v22 = *(v28 + 16);
    v23 = *(v27 + 16);
    while (1)
    {
      if (!v22)
      {
        goto LABEL_55;
      }

      if (!v23)
      {
        break;
      }

      v24 = *v20;
      v25 = *v21;
      result = *(*v20 + 16);
      if (result != *(*v21 + 16) || *(*v20 + 24) != *(*v21 + 24))
      {
        result = sub_1D72646CC();
        if ((result & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      if (*(v24 + 32) != *(v25 + 32))
      {
        goto LABEL_47;
      }

      --v23;
      --v22;
      v20 += 8;
      v21 += 8;
      v19 = 1;
      if (!--v5)
      {
        return v19 & 1;
      }
    }

LABEL_56:
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1D635F84C(uint64_t a1, uint64_t a2)
{
  v80 = type metadata accessor for PuzzleLeaderboardEntry();
  MEMORY[0x1EEE9AC00](v80, v4);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v70 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v71 = 0;
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v74 = *(v9 + 72);
  while (1)
  {
    sub_1D6706BB4(v14, v11, type metadata accessor for PuzzleLeaderboardEntry);
    v75 = v14;
    sub_1D6706BB4(v15, v6, type metadata accessor for PuzzleLeaderboardEntry);
    if ((sub_1D72588AC() & 1) == 0)
    {
      goto LABEL_63;
    }

    v16 = v80[5];
    v17 = *&v11[v16];
    v18 = *&v11[v16 + 8];
    v19 = &v6[v16];
    v20 = v17 == *v19 && v18 == *(v19 + 1);
    if (!v20 && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_63;
    }

    v21 = v80[6];
    v22 = *&v11[v21];
    v23 = *&v11[v21 + 8];
    v25 = *&v11[v21 + 16];
    v24 = *&v11[v21 + 24];
    v26 = *&v11[v21 + 32];
    v27 = *&v11[v21 + 40];
    v28 = &v6[v21];
    v29 = *v28;
    v30 = *(v28 + 1);
    v32 = *(v28 + 2);
    v31 = *(v28 + 3);
    v34 = *(v28 + 4);
    v33 = *(v28 + 5);
    v76 = v34;
    v77 = v30;
    v78 = v23;
    v79 = v33;
    if (v22 != v29 || v23 != v30)
    {
      v36 = v31;
      v37 = v12;
      v38 = v11;
      v39 = v6;
      v40 = v15;
      v41 = v24;
      v42 = sub_1D72646CC();
      v24 = v41;
      v15 = v40;
      v6 = v39;
      v11 = v38;
      v12 = v37;
      v31 = v36;
      if ((v42 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    if (v25 != v32 || v24 != v31)
    {
      v44 = v24;
      v45 = sub_1D72646CC();
      v24 = v44;
      if ((v45 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    v46 = v27;
    if (v27 >> 60 == 15)
    {
      v47 = v79;
      v48 = v26;
      if (v79 >> 60 != 15)
      {
        goto LABEL_60;
      }

      sub_1D5F13DE4(v26, v46);
      sub_1D5F13DE4(v76, v47);
      goto LABEL_54;
    }

    v47 = v79;
    v48 = v26;
    if (v79 >> 60 == 15)
    {
LABEL_60:
      sub_1D5F13DE4(v48, v46);
      v66 = v76;
      sub_1D5F13DE4(v76, v47);
      sub_1D5B952E4(v48, v46);
      v67 = v66;
      v68 = v47;
LABEL_62:
      sub_1D5B952E4(v67, v68);
LABEL_63:
      sub_1D5D2CFE8(v6, type metadata accessor for PuzzleLeaderboardEntry);
      sub_1D5D2CFE8(v11, type metadata accessor for PuzzleLeaderboardEntry);
      return 0;
    }

    v49 = v46 >> 62;
    v50 = v79 >> 62;
    v51 = v76;
    v72 = v24;
    if (v46 >> 62 == 3)
    {
      v52 = 0;
      result = v78;
      if (!v48 && v46 == 0xC000000000000000 && v79 >> 62 == 3)
      {
        v52 = 0;
        if (!v76 && v79 == 0xC000000000000000)
        {

          sub_1D5F13DE4(0, 0xC000000000000000);

          sub_1D5F13DE4(0, 0xC000000000000000);
          sub_1D5F13DE4(0, 0xC000000000000000);
          sub_1D5F13DE4(0, 0xC000000000000000);
          sub_1D5B952E4(0, 0xC000000000000000);
          v54 = v79;
          goto LABEL_53;
        }
      }
    }

    else
    {
      result = v78;
      if (v49)
      {
        if (v49 == 1)
        {
          LODWORD(v52) = HIDWORD(v48) - v48;
          if (__OFSUB__(HIDWORD(v48), v48))
          {
            goto LABEL_69;
          }

          v52 = v52;
        }

        else
        {
          v56 = *(v48 + 16);
          v55 = *(v48 + 24);
          v57 = __OFSUB__(v55, v56);
          v52 = v55 - v56;
          if (v57)
          {
            goto LABEL_68;
          }
        }
      }

      else
      {
        v52 = BYTE6(v46);
      }
    }

    v73 = v31;
    if (v50 <= 1)
    {
      break;
    }

    if (v50 != 2)
    {
      if (v52)
      {
LABEL_61:

        sub_1D5F13DE4(v48, v46);

        v69 = v79;
        sub_1D5F13DE4(v51, v79);
        sub_1D5F13DE4(v48, v46);
        sub_1D5F13DE4(v51, v69);
        sub_1D5B952E4(v51, v69);
        sub_1D5B952E4(v48, v46);

        sub_1D5B952E4(v51, v69);

        v67 = v48;
        v68 = v46;
        goto LABEL_62;
      }

LABEL_52:

      sub_1D5F13DE4(v48, v46);

      v54 = v79;
      sub_1D5F13DE4(v51, v79);
      sub_1D5F13DE4(v48, v46);
      sub_1D5F13DE4(v51, v54);
      sub_1D5B952E4(v51, v54);
LABEL_53:
      sub_1D5B952E4(v48, v46);

      sub_1D5B952E4(v51, v54);

LABEL_54:
      sub_1D5B952E4(v48, v46);
      goto LABEL_55;
    }

    v60 = *(v76 + 16);
    v59 = *(v76 + 24);
    v57 = __OFSUB__(v59, v60);
    v58 = v59 - v60;
    if (v57)
    {
      goto LABEL_67;
    }

LABEL_47:
    if (v52 != v58)
    {
      goto LABEL_61;
    }

    if (v52 < 1)
    {
      goto LABEL_52;
    }

    sub_1D5F13DE4(v48, v46);

    v61 = v79;
    sub_1D5F13DE4(v51, v79);
    sub_1D5F13DE4(v48, v46);
    sub_1D5F13DE4(v51, v61);
    sub_1D5F13DE4(v51, v61);
    v62 = v71;
    LODWORD(v77) = sub_1D6DF11B4(v48, v46, v51, v61);
    v71 = v62;
    sub_1D5B952E4(v51, v61);
    sub_1D5B952E4(v48, v46);

    sub_1D5B952E4(v51, v61);

    sub_1D5B952E4(v48, v46);
    if ((v77 & 1) == 0)
    {
      goto LABEL_63;
    }

LABEL_55:
    if (*&v11[v80[7]] != *&v6[v80[7]])
    {
      goto LABEL_63;
    }

    v63 = v80[8];
    v64 = *&v11[v63];
    v65 = *&v6[v63];
    sub_1D5D2CFE8(v6, type metadata accessor for PuzzleLeaderboardEntry);
    sub_1D5D2CFE8(v11, type metadata accessor for PuzzleLeaderboardEntry);
    result = v64 == v65;
    if (v64 == v65)
    {
      v15 += v74;
      v14 = v75 + v74;
      if (--v12)
      {
        continue;
      }
    }

    return result;
  }

  if (!v50)
  {
    v58 = BYTE6(v79);
    goto LABEL_47;
  }

  LODWORD(v58) = HIDWORD(v76) - v76;
  if (!__OFSUB__(HIDWORD(v76), v76))
  {
    v58 = v58;
    goto LABEL_47;
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_1D635FF88(uint64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for FormatContentOverlaySubgroup();
  v4 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v5);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = (&v33 - v11);
  if (a1 >> 62)
  {
    v13 = sub_1D7263BFC();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = sub_1D7263BFC();
  if (v13 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v13)
  {
    return 1;
  }

  v15 = a1 & 0xFFFFFFFFFFFFFF8;
  v16 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v39 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v15 = a1;
  }

  if (a1 >> 62)
  {
    v16 = v15;
  }

  v17 = a2 & 0xFFFFFFFFFFFFFF8;
  v18 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v38 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v17 = a2;
  }

  if (a2 >> 62)
  {
    v18 = v17;
  }

  if (v16 == v18)
  {
    return 1;
  }

  if (v13 < 0)
  {
    goto LABEL_55;
  }

  v19 = 0;
  v41 = a2 & 0xC000000000000001;
  v42 = a1 & 0xC000000000000001;
  v36 = a2 + 32;
  v37 = a1 + 32;
  v40 = v13;
  v34 = a1;
  v35 = a2;
  v33 = v4;
  while (!__OFADD__(v19, 1))
  {
    if (v42)
    {
      result = MEMORY[0x1DA6FB460](v19, a1, v10);
      v20 = result;
      if (v41)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v19 >= *(v39 + 16))
      {
        goto LABEL_53;
      }

      v20 = *(v37 + 8 * v19);

      if (v41)
      {
LABEL_20:
        v21 = MEMORY[0x1DA6FB460](v19, a2);
        goto LABEL_25;
      }
    }

    if (v19 >= *(v38 + 16))
    {
      goto LABEL_54;
    }

    v21 = *(v36 + 8 * v19);

LABEL_25:
    v22 = v20[2] == v21[2] && v20[3] == v21[3];
    if (!v22 && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_47;
    }

    v43 = v19 + 1;
    v23 = v20[4];
    v24 = v21[4];
    v25 = *(v23 + 16);
    if (v25 != *(v24 + 16))
    {
      goto LABEL_47;
    }

    if (v25 && v23 != v24)
    {
      v26 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v27 = v4;
      v28 = v23 + v26;
      v29 = v24 + v26;
      v30 = *(v27 + 72);
      while (1)
      {
        sub_1D6706BB4(v28, v12, type metadata accessor for FormatContentOverlaySubgroup);
        sub_1D6706BB4(v29, v7, type metadata accessor for FormatContentOverlaySubgroup);
        v31 = *v12 == *v7 && v12[1] == v7[1];
        if (!v31 && (sub_1D72646CC() & 1) == 0)
        {
          break;
        }

        v32 = sub_1D633C3EC(*(v12 + *(v44 + 20)), *(v7 + *(v44 + 20)));
        sub_1D5D2CFE8(v7, type metadata accessor for FormatContentOverlaySubgroup);
        sub_1D5D2CFE8(v12, type metadata accessor for FormatContentOverlaySubgroup);
        if ((v32 & 1) == 0)
        {
          goto LABEL_47;
        }

        v29 += v30;
        v28 += v30;
        if (!--v25)
        {

          a1 = v34;
          a2 = v35;
          v4 = v33;
          goto LABEL_43;
        }
      }

      sub_1D5D2CFE8(v7, type metadata accessor for FormatContentOverlaySubgroup);
      sub_1D5D2CFE8(v12, type metadata accessor for FormatContentOverlaySubgroup);
LABEL_47:

      return 0;
    }

LABEL_43:
    result = 1;
    v19 = v43;
    if (v43 == v40)
    {
      return result;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1D63603D8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 48);
  v4 = (a2 + 48);
  while (v2)
  {
    v5 = *(v3 - 1) == *(v4 - 1);
    if (*v3 != *v4)
    {
      v5 = 0;
    }

    result = *(v3 - 2) == *(v4 - 2) && v5;
    v6 = result != 1 || v2-- == 1;
    v3 += 3;
    v4 += 3;
    if (v6)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6360458(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = sub_1D7263BFC();
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4)
  {
    v7 = v8;
  }

  v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (a2 >> 62)
  {
    v9 = v10;
  }

  if (v7 == v9)
  {
    return 1;
  }

  if (v5 < 0)
  {
    goto LABEL_52;
  }

  v11 = 0;
  v12 = a2 & 0xC000000000000001;
  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1DA6FB460](v11, a1);
      v14 = result;
      if (v12)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v14 = *(a1 + 32 + 8 * v11);

      if (v12)
      {
LABEL_23:
        v15 = MEMORY[0x1DA6FB460](v11, a2);
        goto LABEL_28;
      }
    }

    if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    v15 = *(a2 + 32 + 8 * v11);

LABEL_28:
    v16 = v14[2] == v15[2] && v14[3] == v15[3];
    if (!v16 && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_43;
    }

    v17 = v14[4];
    v18 = v15[4];
    v19 = *(v17 + 16);
    if (v19 != *(v18 + 16))
    {
      goto LABEL_43;
    }

    if (v19 && v17 != v18)
    {
      v20 = (v17 + 48);
      v21 = (v18 + 48);
      while (*(v20 - 2) == *(v21 - 2) && *(v20 - 1) == *(v21 - 1) && *v20 == *v21)
      {
        v20 += 3;
        v21 += 3;
        if (!--v19)
        {
          goto LABEL_19;
        }
      }

LABEL_43:

      return 0;
    }

LABEL_19:

    result = 1;
    v11 = v13;
    if (v13 == v5)
    {
      return result;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1D63606C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_50:
    v6 = sub_1D7263BFC();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = sub_1D7263BFC();
    if (v6 == result)
    {
      goto LABEL_5;
    }

LABEL_47:
    v18 = 0;
    return v18 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 != result)
  {
    goto LABEL_47;
  }

LABEL_5:
  if (!v6)
  {
    goto LABEL_34;
  }

  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  v9 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v8 = a1;
  }

  if (v5)
  {
    v9 = v8;
  }

  v10 = a2 & 0xFFFFFFFFFFFFFF8;
  v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v10 = a2;
  }

  if (a2 >> 62)
  {
    v11 = v10;
  }

  if (v9 == v11)
  {
LABEL_34:
    v18 = 1;
    return v18 & 1;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v5 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
          goto LABEL_50;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1DA6FB460](v13 - 4, a1);
          v15 = result;
          if (v12)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          v15 = *(a1 + 8 * v13);

          if (v12)
          {
LABEL_21:
            v16 = MEMORY[0x1DA6FB460](v13 - 4, a2);
            goto LABEL_26;
          }
        }

        if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v16 = *(a2 + 8 * v13);

LABEL_26:
        v17 = v15[2] == v16[2] && v15[3] == v16[3];
        if (!v17 && (sub_1D72646CC() & 1) == 0)
        {

          goto LABEL_47;
        }

        v18 = a3(v15[4], v16[4]);

        if (v18)
        {
          ++v13;
          if (v5 != v6)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = a1 + 32;
    v20 = a2 + 32;
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (!v21)
      {
        goto LABEL_55;
      }

      if (!v22)
      {
        break;
      }

      v23 = *v19;
      v24 = *v20;
      v25 = *(*v19 + 16) == *(*v20 + 16) && *(*v19 + 24) == *(*v20 + 24);
      if (!v25 && (sub_1D72646CC() & 1) == 0)
      {
        goto LABEL_47;
      }

      v26 = *(v23 + 32);
      v27 = *(v24 + 32);

      LOBYTE(v26) = a3(v26, v27);

      if ((v26 & 1) == 0)
      {
        goto LABEL_47;
      }

      --v22;
      --v21;
      v19 += 8;
      v20 += 8;
      v18 = 1;
      if (!--v6)
      {
        return v18 & 1;
      }
    }

LABEL_56:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6360974(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D63609D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3)
      {
        v5 = 0x6B636F6C62;
      }

      else
      {
        v5 = 0x776F6C6C6F66;
      }

      if (*v3)
      {
        v6 = 0xE500000000000000;
      }

      else
      {
        v6 = 0xE600000000000000;
      }

      if (*v4)
      {
        v7 = 0x6B636F6C62;
      }

      else
      {
        v7 = 0x776F6C6C6F66;
      }

      if (*v4)
      {
        v8 = 0xE500000000000000;
      }

      else
      {
        v8 = 0xE600000000000000;
      }

      if (v5 == v7 && v6 == v8)
      {
      }

      else
      {
        v10 = sub_1D72646CC();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D6360ADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 64);
    for (i = (a2 + 64); ; i += 5)
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;
      v10 = *(v3 - 4) == *(i - 4) && *(v3 - 3) == *(i - 3);
      if (!v10 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v16 = v9;
      v17 = v5;

      swift_retain_n();
      swift_retain_n();

      v11 = static FormatTextContent.== infix(_:_:)(&v17, &v16);

      if ((v11 & 1) == 0)
      {
        goto LABEL_19;
      }

      if (v6)
      {
        if (!v8 || (, v12 = _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v6, v8), , (v12 & 1) == 0))
        {
LABEL_19:

          return 0;
        }
      }

      else if (v8)
      {
        goto LABEL_19;
      }

      v13 = sub_1D5BFC390(v7, v15);

      if ((v13 & 1) == 0)
      {
        return 0;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D6360D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *))
{
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v3 && a1 != a2)
  {
    v5 = (a1 + 32);
    v6 = (a2 + 32);
    while (1)
    {
      v7 = *v5;
      v13 = *v6;
      v14 = v7;
      v11 = v13;
      v12 = v7;

      swift_retain_n();
      swift_retain_n();

      v8 = static FormatExpression.== infix(_:_:)(&v12, &v11);

      if ((v8 & 1) == 0)
      {
        break;
      }

      v9 = a3(&v14 + 8, &v13 + 8);

      if (v9)
      {
        ++v5;
        ++v6;
        if (--v3)
        {
          continue;
        }
      }

      return v9 & 1;
    }

    goto LABEL_11;
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t sub_1D6360EB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v3 = *(a1 + 16);
  if (v3 == *(a2 + 16))
  {
    if (!v3 || a1 == a2)
    {
      v14 = 1;
      return v14 & 1;
    }

    v7 = 0;
    while (1)
    {
      v8 = *(a1 + v7 + 40);
      v9 = *(a1 + v7 + 48);
      v10 = *(a2 + v7 + 32);
      v11 = *(a2 + v7 + 40);
      v12 = *(a2 + v7 + 48);
      v17 = *(a1 + v7 + 32);
      v18 = v8;
      v19 = v9;
      v16 = v12;
      v13 = v17 == v10 && v8 == v11;
      if (!v13 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v14 = a3(&v19, &v16);
      if (v14)
      {
        v7 += 24;
        if (--v3)
        {
          continue;
        }
      }

      return v14 & 1;
    }
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t sub_1D6360FA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = *(a1 + 33);
    v4 = *(a2 + 33);
    v5 = *(a2 + 32);
    v6 = sub_1D6E23ADC(*(a1 + 32));
    v8 = v7;
    v10 = v6 == sub_1D6E23ADC(v5) && v8 == v9;
    v30 = v2;
    if (v10)
    {
      v12 = 1;
LABEL_12:

LABEL_13:
      v14 = a2;
      v15 = a1;
      v16 = ~v12;
      v17 = 2 * v12;
      for (i = v2 - v12; ; --i)
      {
        v20 = (v3 & 1) != 0 ? 0x70616373646E616CLL : 0x7469617274726F70;
        v21 = (v3 & 1) != 0 ? 0xE900000000000065 : 0xE800000000000000;
        v22 = (v4 & 1) != 0 ? 0x70616373646E616CLL : 0x7469617274726F70;
        v23 = (v4 & 1) != 0 ? 0xE900000000000065 : 0xE800000000000000;
        if (v20 == v22 && v21 == v23)
        {
        }

        else
        {
          v24 = sub_1D72646CC();

          if ((v24 & 1) == 0)
          {
            return 0;
          }
        }

        if (!i)
        {
          break;
        }

        v3 = *(v15 + v17 + 33);
        v4 = *(v14 + v17 + 33);
        v25 = *(v14 + v17 + 32);
        v26 = sub_1D6E23ADC(*(v15 + v17 + 32));
        v28 = v27;
        if (v26 == sub_1D6E23ADC(v25) && v28 == v29)
        {
          v12 = -v16;
          v2 = v30;
          goto LABEL_12;
        }

        v19 = sub_1D72646CC();

        --v16;
        v15 += 2;
        v14 += 2;
        if ((v19 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    v11 = sub_1D72646CC();

    if (v11)
    {
      v12 = 1;
      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t FormatWorkspace.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a2;
  sub_1D5C8CD38();
  v76 = v3;
  v73 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v77 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E528();
  *&v81 = v6;
  v75 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v78 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E60C(0, &qword_1EC885F90, sub_1D60CEE3C, sub_1D60CEE90);
  v10 = v9;
  v79 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v56 - v12;
  sub_1D66587CC();
  v15 = v14;
  v80 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C94C();
  sub_1D5B58B84(&qword_1EC87FA18, sub_1D5E1C94C);
  v19 = v82;
  sub_1D7264B0C();
  v20 = v19;
  if (v19)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v20);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v72 = v13;
  v21 = v81;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_1D7264AFC();
  v23 = Dictionary<>.errorOnUnknownKeys.getter(v22);

  v24 = v15;
  v25 = v80;
  if (v23)
  {
    v26 = sub_1D726433C();
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = (v26 + 48);
      while (*v28 != 1)
      {
        v28 += 24;
        if (!--v27)
        {
          goto LABEL_7;
        }
      }

      v32 = *(v28 - 2);
      v31 = *(v28 - 1);

      v33 = sub_1D66127C8();
      sub_1D5E2D970();
      v20 = swift_allocError();
      *v34 = v32;
      *(v34 + 8) = v31;
      *(v34 + 16) = v33;
      *(v34 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v25 + 8))(v18, v24);
      goto LABEL_10;
    }

LABEL_7:
  }

  v85 = 0uLL;
  LOBYTE(v86) = 0;
  v29 = sub_1D72642BC();
  v82 = v30;
  v85 = xmmword_1D728CF30;
  LOBYTE(v86) = 0;
  v70 = sub_1D72642BC();
  v71 = v35;
  v85 = xmmword_1D7297410;
  LOBYTE(v86) = 0;
  v66 = sub_1D726422C();
  v67 = v29;
  v69 = v37;
  v68 = xmmword_1D72BAA60;
  v85 = xmmword_1D72BAA60;
  LOBYTE(v86) = 0;
  v38 = sub_1D726434C();
  if (v38)
  {
    v83 = v68;
    v84 = 0;
    sub_1D726431C();
    v87 = v88;
  }

  else
  {
    v87 = 0;
  }

  v68 = xmmword_1D72BAA70;
  v85 = xmmword_1D72BAA70;
  LOBYTE(v86) = 0;
  if (sub_1D726434C())
  {
    v83 = v68;
    v84 = 0;
    sub_1D6658B30();
    sub_1D726431C();
    v39 = v72;
    *&v68 = sub_1D725A74C();
    (v79[1])(v39, v10);
  }

  else
  {
    *&v68 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5B5BF78(0, &qword_1EC885FA0, type metadata accessor for FormatWorkspaceGroup, MEMORY[0x1E69E62F8]);
  v85 = xmmword_1D72BAA80;
  LOBYTE(v86) = 0;
  sub_1D6658860();
  sub_1D726431C();
  v40 = v83;
  v83 = xmmword_1D72BAA90;
  v84 = 0;
  sub_1D6658938();
  sub_1D726431C();
  v72 = v40;
  v79 = a1;
  v41 = v18;
  v42 = v85;
  v43 = v86;
  v85 = xmmword_1D72BAAA0;
  LOBYTE(v86) = 0;
  sub_1D665898C();
  sub_1D726427C();
  v64 = *(&v42 + 1);
  v65 = v43;
  v44 = v83;
  v85 = xmmword_1D72BAAB0;
  LOBYTE(v86) = 0;
  sub_1D66589E0();
  sub_1D726427C();
  v45 = *(&v83 + 1);
  v62 = v83;
  v85 = xmmword_1D72BAAC0;
  LOBYTE(v86) = 0;
  sub_1D6658A34();
  sub_1D726427C();
  v61 = __PAIR128__(*(&v83 + 1), v44);
  v60 = v83;
  v85 = xmmword_1D72BAAD0;
  LOBYTE(v86) = 0;
  sub_1D6658A88();
  v63 = v24;
  v46 = v41;
  sub_1D726427C();
  v59 = *(&v83 + 1);
  v57 = v83;
  v58 = xmmword_1D72BAAE0;
  v85 = xmmword_1D72BAAE0;
  LOBYTE(v86) = 0;
  if (sub_1D726434C())
  {
    v83 = v58;
    v84 = 0;
    sub_1D5B58B84(&qword_1EDF3BD80, sub_1D5C2E528);
    sub_1D726431C();
    v47 = v21;
    v48 = v78;
    v49 = sub_1D725A74C();
    (*(v75 + 8))(v48, v47);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  v81 = xmmword_1D72BAAF0;
  v85 = xmmword_1D72BAAF0;
  LOBYTE(v86) = 0;
  if (sub_1D726434C())
  {
    v83 = v81;
    v84 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    sub_1D726431C();
    v51 = v76;
    v50 = v77;
    *&v81 = sub_1D725A74C();
    (*(v73 + 8))(v50, v51);
  }

  else
  {
    *&v81 = MEMORY[0x1E69E7CD0];
  }

  v85 = xmmword_1D7282A80;
  LOBYTE(v86) = 0;
  sub_1D6658ADC();
  sub_1D726431C();
  (*(v25 + 8))(v46, v63);
  v52 = v88;
  v53 = v89;
  v54 = v90;
  v55 = v74;
  *v74 = v67;
  v55[1] = v82;
  v55[2] = v70;
  v55[3] = v71;
  v55[4] = v66;
  v55[5] = v69;
  *(v55 + 48) = v87;
  *(v55 + 49) = v83;
  *(v55 + 13) = *(&v83 + 3);
  v55[7] = v68;
  v55[8] = v72;
  v55[9] = v42;
  v55[10] = v64;
  v55[11] = v65;
  v55[12] = v61;
  v55[13] = *(&v44 + 1);
  v55[14] = v62;
  v55[15] = v45;
  v55[16] = v60;
  v55[17] = *(&v61 + 1);
  v55[18] = v57;
  v55[19] = v59;
  v55[20] = v49;
  v55[21] = v81;
  *(v55 + 176) = v52;
  *(v55 + 177) = v53;
  *(v55 + 178) = v54;
  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t FormatWorkspace.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v276 = (&v272 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v279 = (&v272 - v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v282 = (&v272 - v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v285 = (&v272 - v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v288 = (&v272 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v290 = (&v272 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v291 = (&v272 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v296 = (&v272 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v298 = &v272 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v299 = &v272 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v302 = &v272 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v304 = (&v272 - v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v313 = (&v272 - v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v272 - v44;
  sub_1D6658BC0();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v46, v48);
  v50 = &v272 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *v1;
  v52 = v1[1];
  v53 = v1[3];
  v306 = v1[2];
  v305 = v53;
  v54 = v1[5];
  v301 = v1[4];
  v303 = v54;
  v325 = *(v1 + 48);
  v55 = v1[8];
  v300 = v1[7];
  v297 = v55;
  v56 = v1[10];
  v295 = v1[9];
  v294 = v56;
  v57 = v1[12];
  v293 = v1[11];
  v286 = v57;
  v58 = v1[14];
  v292 = v1[13];
  v283 = v58;
  v59 = v1[16];
  v289 = v1[15];
  v280 = v59;
  v60 = v1[18];
  v287 = v1[17];
  v277 = v60;
  v61 = v1[20];
  v284 = v1[19];
  v281 = v61;
  v278 = v1[21];
  v275 = *(v1 + 176);
  v274 = *(v1 + 177);
  v273 = *(v1 + 178);
  v62 = a1[3];
  v63 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v62);
  sub_1D5E1C94C();
  v65 = v64;
  v66 = sub_1D5B58B84(&qword_1EC87FA18, sub_1D5E1C94C);
  sub_1D5D2EE70(&type metadata for FormatWorkspace, v65, v67, v62, &type metadata for FormatWorkspace, v65, &type metadata for FormatVersions.CrystalGlowE, v63, v50, v66, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v68 = sub_1D725BD1C();
  v69 = __swift_project_value_buffer(v68, qword_1EDFFCE38);
  v70 = *(v68 - 8);
  v71 = *(v70 + 16);
  v308 = v69;
  v307 = v68;
  v309 = v71;
  v311 = v70 + 16;
  (v71)(v45);
  v312 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v320 = v51;
  *(&v320 + 1) = v52;
  v322 = 0uLL;
  LOBYTE(v323) = 0;
  v72 = &v50[*(v47 + 44)];
  v73 = *v72;
  v74 = *(v72 + 1);
  v324 = 0;
  v75 = swift_allocObject();
  *&v317 = &v272;
  *(v75 + 16) = 0;
  *(v75 + 24) = 0;
  *(v75 + 32) = v324;
  *(v75 + 40) = v73;
  *(v75 + 48) = v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v316 = (&v272 - 6);
  *(&v272 - 4) = sub_1D5B4AA6C;
  *(&v272 - 3) = 0;
  v270 = sub_1D6708860;
  v271 = v77;
  v324 = 0;
  v78 = swift_allocObject();
  *(v78 + 16) = 0;
  *(v78 + 24) = 0;
  *(v78 + 32) = v324;
  v310 = v73;
  *(v78 + 40) = v73;
  *(v78 + 48) = v74;
  sub_1D5E1C910(0);
  v80 = v79;
  v81 = sub_1D5B58B84(&qword_1EC87FA20, sub_1D5E1C910);
  swift_retain_n();
  v314 = v80;
  v315 = v81;
  v82 = sub_1D72647CC();
  v324 = 0;
  v83 = swift_allocObject();
  *(v83 + 24) = 0;
  *(v83 + 32) = 0;
  *(v83 + 16) = v82;
  *(v83 + 40) = v324;
  v84 = *(v47 + 36);
  v85 = v45;
  v319 = v50;
  v86 = &v50[v84];
  v87 = __swift_project_boxed_opaque_existential_1(&v50[v84], *&v50[v84 + 24]);
  MEMORY[0x1EEE9AC00](v87, v88);
  MEMORY[0x1EEE9AC00](v89, v90);
  v91 = v316;
  *(&v272 - 4) = sub_1D615B4A4;
  *(&v272 - 3) = v91;
  v270 = sub_1D6708860;
  v271 = v78;
  v92 = v318;
  sub_1D5D2BC70(v85, sub_1D615B49C, v93, sub_1D615B4A4, (&v272 - 6));
  if (v92)
  {
    sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);

    v108 = v319;
    return sub_1D5D2CFE8(v108, sub_1D6658BC0);
  }

  v316 = v86;
  v272 = v74;

  sub_1D72647EC();
  sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);

  v309(v313, v308, v307);
  swift_storeEnumTagMultiPayload();
  *&v320 = v306;
  *(&v320 + 1) = v305;
  v318 = xmmword_1D728CF30;
  v322 = xmmword_1D728CF30;
  LOBYTE(v323) = 0;
  v324 = 0;
  v94 = swift_allocObject();
  *&v317 = &v272;
  *(v94 + 16) = v318;
  *(v94 + 32) = v324;
  v95 = v310;
  v96 = v272;
  *(v94 + 40) = v310;
  *(v94 + 48) = v96;
  MEMORY[0x1EEE9AC00](v94, v97);
  *(&v272 - 4) = sub_1D5B4AA6C;
  *(&v272 - 3) = 0;
  v270 = sub_1D6708860;
  v271 = v98;
  v324 = 0;
  v99 = swift_allocObject();
  *(v99 + 16) = v318;
  *(v99 + 32) = v324;
  *(v99 + 40) = v95;
  *(v99 + 48) = v96;
  swift_retain_n();
  v100 = sub_1D72647CC();
  v324 = 0;
  v101 = swift_allocObject();
  *(v101 + 16) = v100;
  *(v101 + 24) = v318;
  *(v101 + 40) = v324;
  v102 = __swift_project_boxed_opaque_existential_1(v316, *(v316 + 3));
  MEMORY[0x1EEE9AC00](v102, v103);
  MEMORY[0x1EEE9AC00](v104, v105);
  *(&v272 - 4) = sub_1D615B4A4;
  *(&v272 - 3) = (&v272 - 6);
  v106 = v313;
  v270 = sub_1D6708860;
  v271 = v99;
  sub_1D5D2BC70(v313, sub_1D615B49C, v107, sub_1D615B4A4, (&v272 - 6));

  sub_1D72647EC();
  sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);

  v110 = v304;
  v111 = v308;
  v112 = v307;
  v113 = v309;
  v309(v304, v308, v307);
  swift_storeEnumTagMultiPayload();
  v318 = xmmword_1D7297410;
  v322 = xmmword_1D7297410;
  LOBYTE(v323) = 0;
  LOBYTE(v320) = 0;
  v115 = swift_allocObject();
  *(v115 + 16) = v318;
  *(v115 + 32) = v320;
  v116 = v310;
  *(v115 + 40) = v310;
  v117 = v272;
  *(v115 + 48) = v272;
  if (v303)
  {
    *&v317 = &v272;
    *&v320 = v301;
    *(&v320 + 1) = v303;
    MEMORY[0x1EEE9AC00](v117, v114);
    *(&v272 - 4) = sub_1D5B4AA6C;
    *(&v272 - 3) = 0;
    v270 = sub_1D6708860;
    v271 = v115;
    v324 = 0;
    v119 = v118;
    v120 = swift_allocObject();
    *(v120 + 16) = v318;
    *(v120 + 32) = v324;
    *(v120 + 40) = v116;
    *(v120 + 48) = v119;
    swift_retain_n();

    v121 = sub_1D72647CC();
    v324 = 0;
    v122 = swift_allocObject();
    *(v122 + 16) = v121;
    *(v122 + 24) = v318;
    *(v122 + 40) = v324;
    v123 = __swift_project_boxed_opaque_existential_1(v316, *(v316 + 3));
    MEMORY[0x1EEE9AC00](v123, v124);
    MEMORY[0x1EEE9AC00](v125, v126);
    *(&v272 - 4) = sub_1D615B4A4;
    *(&v272 - 3) = (&v272 - 6);
    v270 = sub_1D6708860;
    v271 = v120;
    v128 = sub_1D5D2F7A4(v110, sub_1D615B49C, v127, sub_1D615B4A4, (&v272 - 6));
    v129 = v128;

    if (v129)
    {
      sub_1D72647EC();
      v113 = v309;
      v116 = v310;
      v112 = v307;
      v111 = v308;

      sub_1D5D2CFE8(v304, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v304, type metadata accessor for FormatVersionRequirement);
      v113 = v309;
      v116 = v310;
      v112 = v307;
      v111 = v308;
    }
  }

  else
  {

    sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);
  }

  v130 = v302;
  v113(v302, v111, v112);
  swift_storeEnumTagMultiPayload();
  if (v325)
  {
    LOBYTE(v322) = 0;
    v131 = swift_allocObject();
    v318 = xmmword_1D72BAA60;
    *(v131 + 16) = xmmword_1D72BAA60;
    *(v131 + 32) = v322;
    *(v131 + 40) = v116;
    *(v131 + 48) = v272;

    v132 = sub_1D72647CC();
    LOBYTE(v322) = 0;
    v133 = swift_allocObject();
    *(v133 + 16) = v132;
    *(v133 + 24) = v318;
    *(v133 + 40) = v322;
    v134 = __swift_project_boxed_opaque_existential_1(v316, *(v316 + 3));
    *&v317 = &v272;
    MEMORY[0x1EEE9AC00](v134, v135);
    MEMORY[0x1EEE9AC00](v136, v137);
    *(&v272 - 4) = sub_1D5B4AA6C;
    *(&v272 - 3) = 0;
    v270 = sub_1D6708860;
    v271 = v131;
    v139 = sub_1D5D2F7A4(v130, sub_1D615B49C, v138, sub_1D615B4A4, (&v272 - 6));
    v152 = v139;

    v140 = v299;
    if (v152)
    {
      v322 = v318;
      LOBYTE(v323) = 0;
      LOBYTE(v320) = 1;
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v302, type metadata accessor for FormatVersionRequirement);
    v111 = v308;
    v113 = v309;
  }

  else
  {
    sub_1D5D2CFE8(v130, type metadata accessor for FormatVersionRequirement);
    v140 = v299;
  }

  *&v318 = 0;
  v113(v140, v111, v112);
  swift_storeEnumTagMultiPayload();
  if (!*(v300 + 16))
  {
    sub_1D5D2CFE8(v140, type metadata accessor for FormatVersionRequirement);
    goto LABEL_29;
  }

  LOBYTE(v322) = 0;
  v141 = swift_allocObject();
  v317 = xmmword_1D72BAA70;
  *(v141 + 16) = xmmword_1D72BAA70;
  *(v141 + 32) = v322;
  *(v141 + 40) = v310;
  *(v141 + 48) = v272;

  v142 = v319;
  v143 = sub_1D72647CC();
  LOBYTE(v322) = 0;
  v144 = swift_allocObject();
  *(v144 + 16) = v143;
  *(v144 + 24) = v317;
  *(v144 + 40) = v322;
  v145 = __swift_project_boxed_opaque_existential_1(v316, *(v316 + 3));
  MEMORY[0x1EEE9AC00](v145, v146);
  MEMORY[0x1EEE9AC00](v147, v148);
  *(&v272 - 4) = sub_1D5B4AA6C;
  *(&v272 - 3) = 0;
  v270 = sub_1D6658C54;
  v271 = v141;
  v149 = v318;
  v151 = sub_1D5D2F7A4(v140, sub_1D615B49C, v150, sub_1D615B4A4, (&v272 - 6));
  *&v318 = v149;
  if (!v149)
  {
    v153 = v151;

    if (v153)
    {
      v322 = v317;
      LOBYTE(v323) = 0;
      *&v320 = v300;
      sub_1D5C34D84(0, &qword_1EC886038, &type metadata for FormatWorkspacePackage, MEMORY[0x1E69E62F8]);
      sub_1D6658FB4();
      v154 = v319;
      v155 = v318;
      sub_1D72647EC();
      v156 = v309;
      if (v155)
      {

        sub_1D5D2CFE8(v140, type metadata accessor for FormatVersionRequirement);
        v108 = v154;
        return sub_1D5D2CFE8(v108, sub_1D6658BC0);
      }

      *&v318 = 0;

      sub_1D5D2CFE8(v140, type metadata accessor for FormatVersionRequirement);
      v111 = v308;
      v113 = v156;
    }

    else
    {
      sub_1D5D2CFE8(v140, type metadata accessor for FormatVersionRequirement);

      v111 = v308;
      v113 = v309;
    }

LABEL_29:
    v157 = v298;
    v113(v298, v111, v112);
    swift_storeEnumTagMultiPayload();
    *&v320 = v297;
    v317 = xmmword_1D72BAA80;
    v322 = xmmword_1D72BAA80;
    LOBYTE(v323) = 0;
    v324 = 0;
    v158 = swift_allocObject();
    v313 = &v272;
    *(v158 + 16) = v317;
    *(v158 + 32) = v324;
    v159 = v310;
    v160 = v272;
    *(v158 + 40) = v310;
    *(v158 + 48) = v160;
    MEMORY[0x1EEE9AC00](v158, v161);
    *(&v272 - 4) = sub_1D5B4AA6C;
    *(&v272 - 3) = 0;
    v270 = sub_1D6708860;
    v271 = v162;
    v324 = 0;
    v163 = swift_allocObject();
    *(v163 + 16) = v317;
    *(v163 + 32) = v324;
    *(v163 + 40) = v159;
    *(v163 + 48) = v160;
    swift_retain_n();
    v164 = v319;
    v165 = sub_1D72647CC();
    v324 = 0;
    v166 = swift_allocObject();
    *(v166 + 16) = v165;
    *(v166 + 24) = v317;
    *(v166 + 40) = v324;
    v167 = __swift_project_boxed_opaque_existential_1(v316, *(v316 + 3));
    MEMORY[0x1EEE9AC00](v167, v168);
    MEMORY[0x1EEE9AC00](v169, v170);
    *(&v272 - 4) = sub_1D615B4A4;
    *(&v272 - 3) = (&v272 - 6);
    v270 = sub_1D6708860;
    v271 = v163;
    v171 = v318;
    sub_1D5D2BC70(v157, sub_1D615B49C, v172, sub_1D615B4A4, (&v272 - 6));
    if (v171)
    {
      sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);

      v108 = v164;
      return sub_1D5D2CFE8(v108, sub_1D6658BC0);
    }

    sub_1D5B5BF78(0, &qword_1EC885FA0, type metadata accessor for FormatWorkspaceGroup, MEMORY[0x1E69E62F8]);
    sub_1D6658CE4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);

    v309(v296, v308, v307);
    swift_storeEnumTagMultiPayload();
    *&v322 = v295;
    *(&v322 + 1) = v294;
    v323 = v293;
    v318 = xmmword_1D72BAA90;
    v320 = xmmword_1D72BAA90;
    v321 = 0;
    v324 = 0;
    v173 = swift_allocObject();
    *&v317 = &v272;
    *(v173 + 16) = v318;
    *(v173 + 32) = v324;
    v174 = v310;
    v175 = v272;
    *(v173 + 40) = v310;
    *(v173 + 48) = v175;
    MEMORY[0x1EEE9AC00](v173, v176);
    *(&v272 - 4) = sub_1D5B4AA6C;
    *(&v272 - 3) = 0;
    v270 = sub_1D6708860;
    v271 = v177;
    v324 = 0;
    v178 = swift_allocObject();
    *(v178 + 16) = v318;
    *(v178 + 32) = v324;
    *(v178 + 40) = v174;
    *(v178 + 48) = v175;
    swift_retain_n();
    v179 = sub_1D72647CC();
    v324 = 0;
    v180 = swift_allocObject();
    *(v180 + 16) = v179;
    *(v180 + 24) = v318;
    *(v180 + 40) = v324;
    v181 = __swift_project_boxed_opaque_existential_1(v316, *(v316 + 3));
    MEMORY[0x1EEE9AC00](v181, v182);
    MEMORY[0x1EEE9AC00](v183, v184);
    *(&v272 - 4) = sub_1D615B4A4;
    *(&v272 - 3) = (&v272 - 6);
    v185 = v296;
    v270 = sub_1D6708860;
    v271 = v178;
    sub_1D5D2BC70(v296, sub_1D615B49C, v186, sub_1D615B4A4, (&v272 - 6));

    sub_1D6658DBC();
    sub_1D72647EC();
    sub_1D5D2CFE8(v185, type metadata accessor for FormatVersionRequirement);

    v187 = v291;
    v309(v291, v308, v307);
    swift_storeEnumTagMultiPayload();
    v318 = xmmword_1D72BAAA0;
    v322 = xmmword_1D72BAAA0;
    LOBYTE(v323) = 0;
    LOBYTE(v320) = 0;
    v188 = swift_allocObject();
    v190 = v188;
    *(v188 + 16) = v318;
    *(v188 + 32) = v320;
    v191 = v272;
    *(v188 + 40) = v310;
    *(v188 + 48) = v191;
    if (v292)
    {
      *&v320 = v286;
      *(&v320 + 1) = v292;
      MEMORY[0x1EEE9AC00](v188, v189);
      *(&v272 - 4) = sub_1D5B4AA6C;
      *(&v272 - 3) = 0;
      v270 = sub_1D6708860;
      v271 = v190;
      v324 = 0;
      v192 = swift_allocObject();
      *(v192 + 16) = v318;
      *(v192 + 32) = v324;
      *(v192 + 40) = v310;
      *(v192 + 48) = v191;
      swift_retain_n();

      v193 = sub_1D72647CC();
      v324 = 0;
      v194 = swift_allocObject();
      *(v194 + 16) = v193;
      *(v194 + 24) = v318;
      *(v194 + 40) = v324;
      v195 = __swift_project_boxed_opaque_existential_1(v316, *(v316 + 3));
      MEMORY[0x1EEE9AC00](v195, v196);
      MEMORY[0x1EEE9AC00](v197, v198);
      *(&v272 - 4) = sub_1D615B4A4;
      *(&v272 - 3) = (&v272 - 6);
      v270 = sub_1D6708860;
      v271 = v192;
      v200 = sub_1D5D2F7A4(v187, sub_1D615B49C, v199, sub_1D615B4A4, (&v272 - 6));

      if (v200)
      {
        sub_1D6658F60();
        sub_1D72647EC();
      }

      sub_1D5D2CFE8(v291, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);
    }

    v309(v290, v308, v307);
    swift_storeEnumTagMultiPayload();
    v318 = xmmword_1D72BAAB0;
    v322 = xmmword_1D72BAAB0;
    LOBYTE(v323) = 0;
    LOBYTE(v320) = 0;
    v201 = swift_allocObject();
    v203 = v201;
    *(v201 + 16) = v318;
    *(v201 + 32) = v320;
    v204 = v272;
    *(v201 + 40) = v310;
    *(v201 + 48) = v204;
    if (v289)
    {
      *&v320 = v283;
      *(&v320 + 1) = v289;
      MEMORY[0x1EEE9AC00](v201, v202);
      *(&v272 - 4) = sub_1D5B4AA6C;
      *(&v272 - 3) = 0;
      v270 = sub_1D6708860;
      v271 = v203;
      v324 = 0;
      v205 = swift_allocObject();
      *(v205 + 16) = v318;
      *(v205 + 32) = v324;
      *(v205 + 40) = v310;
      *(v205 + 48) = v272;
      swift_retain_n();

      v206 = sub_1D72647CC();
      v324 = 0;
      v207 = swift_allocObject();
      *(v207 + 16) = v206;
      *(v207 + 24) = v318;
      *(v207 + 40) = v324;
      v208 = __swift_project_boxed_opaque_existential_1(v316, *(v316 + 3));
      MEMORY[0x1EEE9AC00](v208, v209);
      MEMORY[0x1EEE9AC00](v210, v211);
      *(&v272 - 4) = sub_1D615B4A4;
      *(&v272 - 3) = (&v272 - 6);
      v270 = sub_1D6708860;
      v271 = v205;
      v213 = sub_1D5D2F7A4(v290, sub_1D615B49C, v212, sub_1D615B4A4, (&v272 - 6));

      if (v213)
      {
        sub_1D6658F0C();
        sub_1D72647EC();
      }

      sub_1D5D2CFE8(v290, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v290, type metadata accessor for FormatVersionRequirement);
    }

    v309(v288, v308, v307);
    swift_storeEnumTagMultiPayload();
    v318 = xmmword_1D72BAAC0;
    v322 = xmmword_1D72BAAC0;
    LOBYTE(v323) = 0;
    LOBYTE(v320) = 0;
    v214 = swift_allocObject();
    v216 = v214;
    *(v214 + 16) = v318;
    *(v214 + 32) = v320;
    v217 = v272;
    *(v214 + 40) = v310;
    *(v214 + 48) = v217;
    if (v287)
    {
      *&v320 = v280;
      *(&v320 + 1) = v287;
      MEMORY[0x1EEE9AC00](v214, v215);
      *(&v272 - 4) = sub_1D5B4AA6C;
      *(&v272 - 3) = 0;
      v270 = sub_1D6708860;
      v271 = v216;
      v324 = 0;
      v218 = swift_allocObject();
      *(v218 + 16) = v318;
      *(v218 + 32) = v324;
      *(v218 + 40) = v310;
      *(v218 + 48) = v272;
      swift_retain_n();

      v219 = sub_1D72647CC();
      v324 = 0;
      v220 = swift_allocObject();
      *(v220 + 16) = v219;
      *(v220 + 24) = v318;
      *(v220 + 40) = v324;
      v221 = __swift_project_boxed_opaque_existential_1(v316, *(v316 + 3));
      MEMORY[0x1EEE9AC00](v221, v222);
      MEMORY[0x1EEE9AC00](v223, v224);
      *(&v272 - 4) = sub_1D615B4A4;
      *(&v272 - 3) = (&v272 - 6);
      v270 = sub_1D6708860;
      v271 = v218;
      v226 = sub_1D5D2F7A4(v288, sub_1D615B49C, v225, sub_1D615B4A4, (&v272 - 6));

      if (v226)
      {
        sub_1D6658EB8();
        sub_1D72647EC();
      }

      sub_1D5D2CFE8(v288, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v288, type metadata accessor for FormatVersionRequirement);
    }

    v309(v285, v308, v307);
    swift_storeEnumTagMultiPayload();
    v318 = xmmword_1D72BAAD0;
    v322 = xmmword_1D72BAAD0;
    LOBYTE(v323) = 0;
    LOBYTE(v320) = 0;
    v227 = swift_allocObject();
    v229 = v227;
    *(v227 + 16) = v318;
    *(v227 + 32) = v320;
    v230 = v272;
    *(v227 + 40) = v310;
    *(v227 + 48) = v230;
    if (v284)
    {
      *&v320 = v277;
      *(&v320 + 1) = v284;
      MEMORY[0x1EEE9AC00](v227, v228);
      *(&v272 - 4) = sub_1D5B4AA6C;
      *(&v272 - 3) = 0;
      v270 = sub_1D6708860;
      v271 = v229;
      v324 = 0;
      v231 = swift_allocObject();
      *(v231 + 16) = v318;
      *(v231 + 32) = v324;
      *(v231 + 40) = v310;
      *(v231 + 48) = v272;
      swift_retain_n();

      v232 = sub_1D72647CC();
      v324 = 0;
      v233 = swift_allocObject();
      *(v233 + 16) = v232;
      *(v233 + 24) = v318;
      *(v233 + 40) = v324;
      v234 = __swift_project_boxed_opaque_existential_1(v316, *(v316 + 3));
      MEMORY[0x1EEE9AC00](v234, v235);
      MEMORY[0x1EEE9AC00](v236, v237);
      *(&v272 - 4) = sub_1D615B4A4;
      *(&v272 - 3) = (&v272 - 6);
      v270 = sub_1D6708860;
      v271 = v231;
      v239 = sub_1D5D2F7A4(v285, sub_1D615B49C, v238, sub_1D615B4A4, (&v272 - 6));

      if (v239)
      {
        sub_1D6658E64();
        sub_1D72647EC();
      }

      sub_1D5D2CFE8(v285, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v285, type metadata accessor for FormatVersionRequirement);
    }

    v309(v282, v308, v307);
    swift_storeEnumTagMultiPayload();
    if (*(v281 + 16))
    {
      LOBYTE(v322) = 0;
      v240 = swift_allocObject();
      v318 = xmmword_1D72BAAE0;
      *(v240 + 16) = xmmword_1D72BAAE0;
      *(v240 + 32) = v322;
      *(v240 + 40) = v310;
      *(v240 + 48) = v272;

      v241 = sub_1D72647CC();
      LOBYTE(v322) = 0;
      v242 = swift_allocObject();
      *(v242 + 16) = v241;
      *(v242 + 24) = v318;
      *(v242 + 40) = v322;
      v243 = __swift_project_boxed_opaque_existential_1(v316, *(v316 + 3));
      MEMORY[0x1EEE9AC00](v243, v244);
      MEMORY[0x1EEE9AC00](v245, v246);
      *(&v272 - 4) = sub_1D5B4AA6C;
      *(&v272 - 3) = 0;
      v270 = sub_1D6708860;
      v271 = v240;
      LOBYTE(v241) = sub_1D5D2F7A4(v282, sub_1D615B49C, v247, sub_1D615B4A4, (&v272 - 6));

      if ((v241 & 1) == 0)
      {
        sub_1D5D2CFE8(v282, type metadata accessor for FormatVersionRequirement);

LABEL_60:
        v309(v279, v308, v307);
        swift_storeEnumTagMultiPayload();
        if (*(v278 + 16))
        {
          LOBYTE(v322) = 0;
          v248 = swift_allocObject();
          v318 = xmmword_1D72BAAF0;
          *(v248 + 16) = xmmword_1D72BAAF0;
          *(v248 + 32) = v322;
          *(v248 + 40) = v310;
          *(v248 + 48) = v272;

          v249 = sub_1D72647CC();
          LOBYTE(v322) = 0;
          v250 = swift_allocObject();
          *(v250 + 16) = v249;
          *(v250 + 24) = v318;
          *(v250 + 40) = v322;
          v251 = __swift_project_boxed_opaque_existential_1(v316, *(v316 + 3));
          MEMORY[0x1EEE9AC00](v251, v252);
          MEMORY[0x1EEE9AC00](v253, v254);
          *(&v272 - 4) = sub_1D5B4AA6C;
          *(&v272 - 3) = 0;
          v270 = sub_1D6708860;
          v271 = v248;
          LOBYTE(v249) = sub_1D5D2F7A4(v279, sub_1D615B49C, v255, sub_1D615B4A4, (&v272 - 6));

          if (v249)
          {
            sub_1D5E087E4(v278, v319, 0xC, 0, 0);
          }
        }

        sub_1D5D2CFE8(v279, type metadata accessor for FormatVersionRequirement);
        v256 = v276;
        v309(v276, v308, v307);
        swift_storeEnumTagMultiPayload();
        LOBYTE(v320) = v275;
        BYTE1(v320) = v274;
        BYTE2(v320) = v273;
        v318 = xmmword_1D7282A80;
        v322 = xmmword_1D7282A80;
        LOBYTE(v323) = 0;
        v324 = 0;
        v257 = swift_allocObject();
        *(v257 + 16) = v318;
        *(v257 + 32) = v324;
        v258 = v310;
        v259 = v272;
        *(v257 + 40) = v310;
        *(v257 + 48) = v259;
        MEMORY[0x1EEE9AC00](v257, v260);
        *(&v272 - 4) = sub_1D5B4AA6C;
        *(&v272 - 3) = 0;
        v270 = sub_1D6708860;
        v271 = v261;
        v324 = 0;
        v262 = swift_allocObject();
        *(v262 + 16) = v318;
        *(v262 + 32) = v324;
        *(v262 + 40) = v258;
        *(v262 + 48) = v259;
        swift_retain_n();
        v263 = sub_1D72647CC();
        v324 = 0;
        v264 = swift_allocObject();
        *(v264 + 16) = v263;
        *(v264 + 24) = v318;
        *(v264 + 40) = v324;
        v265 = __swift_project_boxed_opaque_existential_1(v316, *(v316 + 3));
        MEMORY[0x1EEE9AC00](v265, v266);
        MEMORY[0x1EEE9AC00](v267, v268);
        *(&v272 - 4) = sub_1D615B4A4;
        *(&v272 - 3) = (&v272 - 6);
        v270 = sub_1D6708860;
        v271 = v262;
        sub_1D5D2BC70(v256, sub_1D615B49C, v269, sub_1D615B4A4, (&v272 - 6));

        sub_1D6658E10();
        sub_1D72647EC();
        sub_1D5D2CFE8(v276, type metadata accessor for FormatVersionRequirement);

        v108 = v319;
        return sub_1D5D2CFE8(v108, sub_1D6658BC0);
      }

      v322 = v318;
      LOBYTE(v323) = 0;
      *&v320 = v281;
      sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
      sub_1D60AD304();
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v282, type metadata accessor for FormatVersionRequirement);
    goto LABEL_60;
  }

  sub_1D5D2CFE8(v140, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v142, sub_1D6658BC0);
}

uint64_t FormatOptionsNodeStatementModifier.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v10;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F50F3638;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6659050();
    v26 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      v22 = v25;
      v26 = xmmword_1D7279980;
      if (v27 == 1)
      {
        sub_1D66590A4();
        sub_1D726431C();
        (*(v7 + 8))(v13, v6);
        v23 = v27 | 0x40;
      }

      else
      {
        sub_1D6328CC0();
        sub_1D726431C();
        (*(v7 + 8))(v13, v6);
        v23 = 0x80;
      }
    }

    else
    {
      v26 = xmmword_1D7279980;
      sub_1D66590F8();
      sub_1D726431C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      v23 = v27;
    }

    *v22 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatOptionsNodeStatementModifier.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v32 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v32 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatOptionsNodeStatementModifier, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatOptionsNodeStatementModifier, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v21, v18, v22, &off_1F51F6CF8);
  if (v19 >> 6)
  {
    if (v19 >> 6 == 1)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCCA8);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6386A48(1, v19 & 1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCCA8);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6386BE0(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCCA8);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63868B4(0, v19, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6365C30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return sub_1D633D734(a2, a4);
  }

  v6 = (result + 32);
  v7 = (a3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return sub_1D633D734(a2, a4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6365CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    if (a3 < 0)
    {
      v9 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      v10 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);

      LOBYTE(v8) = sub_1D6365CBC(v9, v8, v10, v11);

      if (v8)
      {
        goto LABEL_3;
      }
    }
  }

  else if ((a3 & 0x8000000000000000) == 0)
  {
LABEL_3:

    v6 = sub_1D6341D90(a2, a4);

    return v6 & 1;
  }

  return 0;
}

uint64_t sub_1D6365DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    if (a3 < 0)
    {
      v9 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      v10 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      v12 = a2;

      LOBYTE(v8) = a5(v9, v8, v10, v11);

      a2 = v12;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

  if (a3 < 0)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    if (*(a3 + 16))
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (*(a3 + 16))
  {
    return 0;
  }

LABEL_10:
  v15 = a2;

  v16 = a6(v15, a4);

  return v16 & 1;
}