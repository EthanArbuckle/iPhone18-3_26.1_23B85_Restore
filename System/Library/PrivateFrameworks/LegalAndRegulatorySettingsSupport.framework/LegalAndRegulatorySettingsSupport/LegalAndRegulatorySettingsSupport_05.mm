uint64_t sub_255C8E694(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v7 = *(v3 - 3);
      v6 = *(v3 - 2);
      v8 = *(v3 - 1);
      v9 = *v3;
      v11 = *(v4 - 3);
      v10 = *(v4 - 2);
      v12 = *(v4 - 1);
      v13 = *v4;
      if (v9 <= 3)
      {
        if (*v3 > 1u)
        {
          if (v9 != 2)
          {
            if (v13 != 3)
            {
              return 0;
            }

            sub_255C74200(*(v4 - 3), *(v4 - 2), *(v4 - 1), 3u);
            sub_255C74200(v7, v6, v8, 3u);
            v16 = sub_255C8E694(v7, v11);
            sub_255C7429C(v11, v10, v12, 3u);
            sub_255C7429C(v7, v6, v8, 3u);
            if ((v16 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_7;
          }

          if (v13 != 2)
          {
            return 0;
          }
        }

        else if (*v3)
        {
          if (v13 != 1)
          {
            return 0;
          }
        }

        else if (*v4)
        {
          return 0;
        }

        if ((v7 != v11 || v6 != v10) && (sub_255D076D8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (*v3 <= 5u)
      {
        if (v9 == 4)
        {
          if (v13 != 4)
          {
            return 0;
          }

          sub_255C74200(*(v4 - 3), *(v4 - 2), *(v4 - 1), 4u);
          sub_255C74200(v7, v6, v8, 4u);
          v15 = sub_255C8E694(v7, v11);
          sub_255C7429C(v11, v10, v12, 4u);
          sub_255C7429C(v7, v6, v8, 4u);
          if ((v15 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v13 != 5)
          {
            return 0;
          }

          sub_255C74200(*(v4 - 3), *(v4 - 2), *(v4 - 1), 5u);
          sub_255C74200(v7, v6, v8, 5u);
          v18 = sub_255C8E694(v7, v11);
          sub_255C7429C(v11, v10, v12, 5u);
          sub_255C7429C(v7, v6, v8, 5u);
          if ((v18 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v9 == 6)
      {
        if (v13 != 6 || (v7 != v11 || v6 != v10) && (sub_255D076D8() & 1) == 0)
        {
          return 0;
        }

        sub_255C74200(v11, v10, v12, 6u);
        sub_255C74200(v7, v6, v8, 6u);
        v5 = sub_255C8E694(v8, v12);
        sub_255C7429C(v11, v10, v12, 6u);
        sub_255C7429C(v7, v6, v8, 6u);
        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9 == 7)
      {
        if (v13 != 7 || (v7 != v11 || v6 != v10) && (sub_255D076D8() & 1) == 0)
        {
          return 0;
        }

        sub_255C74200(v11, v10, v12, 7u);
        sub_255C74200(v7, v6, v8, 7u);
        v14 = sub_255C8E694(v8, v12);
        sub_255C7429C(v11, v10, v12, 7u);
        sub_255C7429C(v7, v6, v8, 7u);
        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8 | v6 | v7)
      {
        result = 0;
        if (v13 != 8 || v11 != 1 || v12 | v10)
        {
          return result;
        }
      }

      else if (v13 != 8 || v12 | v10 | v11)
      {
        return 0;
      }

LABEL_7:
      v3 += 32;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_255C8EA80(uint64_t a1, uint64_t a2)
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
      if (qword_255D0C000[*v3] == qword_255D0C000[*v4])
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v5 = sub_255D076D8();
        swift_bridgeObjectRelease_n();
        if ((v5 & 1) == 0)
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

uint64_t sub_255C8EB48(uint64_t a1, uint64_t a2)
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

  v3 = a1 + 32;
  v4 = a2 + 32;
  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  v7 = *(v5 + 16);
  if (v7 != *(v6 + 16))
  {
    return 0;
  }

  v8 = 1;
LABEL_6:
  if (!v7 || v5 == v6)
  {
    goto LABEL_233;
  }

  v9 = *(v5 + 32);
  v10 = *(v6 + 32);
  if (*(v9 + 16) != *(v10 + 16))
  {
    return 0;
  }

  v116 = v8;
  v117 = v4;
  v118 = v3;
  v119 = v2;
  v129 = v6 + 32;
  v130 = v5 + 32;
  v11 = *(v9 + 16);

  v133 = v6;

  v13 = v11;
  v14 = 1;
  v127 = v5;
  v121 = v7;
  while (!v13 || v9 == v10)
  {
LABEL_227:
    if (v14 == v7)
    {

      v3 = v118;
      v2 = v119;
      v8 = v116;
      v4 = v117;
LABEL_233:
      if (v8 == v2)
      {
        return 1;
      }

      result = 0;
      v5 = *(v3 + 8 * v8);
      v6 = *(v4 + 8 * v8++);
      v7 = *(v5 + 16);
      if (v7 != *(v6 + 16))
      {
        return result;
      }

      goto LABEL_6;
    }

    if (v14 >= *(v5 + 16))
    {
      goto LABEL_263;
    }

    if (v14 >= *(v133 + 16))
    {
      goto LABEL_264;
    }

    v9 = *(v130 + 8 * v14);
    v10 = *(v129 + 8 * v14++);
    v13 = *(v9 + 16);
    if (v13 != *(v10 + 16))
    {
      goto LABEL_244;
    }
  }

  v120 = v14;
  v142 = v10 + 32;
  v143 = v9 + 32;
  v134 = v13;

  v15 = v134;
  v16 = 0;
  while (1)
  {
    if (v16 >= *(v9 + 16))
    {
      __break(1u);
LABEL_252:
      __break(1u);
      goto LABEL_253;
    }

    if (v16 >= *(v10 + 16))
    {
      goto LABEL_252;
    }

    v18 = v143 + 32 * v16;
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    LODWORD(v22) = *(v18 + 24);
    v23 = v142 + 32 * v16;
    v24 = *v23;
    v25 = *(v23 + 8);
    v145 = *v18;
    v146 = *(v23 + 16);
    v26 = *(v23 + 24);
    v147 = v24;
    if (v22 <= 3)
    {
      if (*(v18 + 24) <= 1u)
      {
        if (*(v18 + 24))
        {
          if (v26 != 1)
          {
            goto LABEL_237;
          }
        }

        else if (v26)
        {
          goto LABEL_237;
        }

LABEL_63:
        if (v20 != v24 || v19 != v25)
        {
          v17 = v16;
          result = sub_255D076D8();
          v16 = v17;
          v15 = v134;
          if ((result & 1) == 0)
          {
LABEL_237:

LABEL_245:

            return 0;
          }
        }

        goto LABEL_14;
      }

      if (v22 == 2)
      {
        if (v26 != 2)
        {
          goto LABEL_237;
        }

        goto LABEL_63;
      }

      if (v26 != 3)
      {
        goto LABEL_237;
      }

      v55 = *(v20 + 16);
      if (v55 != *(v24 + 16))
      {
        v115 = v24;
        sub_255C74200(v24, v25, v146, 3u);
        sub_255C74200(v20, v19, v21, 3u);

        sub_255C7429C(v115, v25, v146, 3u);
        v108 = v20;
        v110 = v19;
        v109 = v21;
        v111 = 3;
        goto LABEL_243;
      }

      if (v55)
      {
        v56 = v20 == v24;
      }

      else
      {
        v56 = 1;
      }

      if (v56)
      {
        goto LABEL_14;
      }

      v126 = v22;
      v128 = v16;
      v124 = v9;
      v125 = v10;
      v122 = v25;
      sub_255C74200(v24, v25, v146, 3u);
      v123 = v19;
      v144 = v21;
      result = sub_255C74200(v20, v19, v21, 3u);
      v38 = v147;
      v57 = 0;
      v58 = (v20 + 56);
      v59 = (v147 + 56);
      while (1)
      {
        if (v57 >= *(v145 + 16))
        {
          goto LABEL_257;
        }

        if (v57 >= *(v38 + 16))
        {
          goto LABEL_260;
        }

        v70 = *(v58 - 3);
        v71 = *(v58 - 2);
        v72 = *(v58 - 1);
        v73 = *v58;
        v75 = *(v59 - 3);
        v74 = *(v59 - 2);
        v76 = *(v59 - 1);
        v77 = *v59;
        if (v73 <= 3)
        {
          if (*v58 <= 1u)
          {
            if (*v58)
            {
              if (v77 != 1)
              {
                goto LABEL_240;
              }
            }

            else if (*v59)
            {
              goto LABEL_240;
            }

LABEL_118:
            if (v70 != v75 || v71 != v74)
            {
              result = sub_255D076D8();
              v38 = v147;
              if ((result & 1) == 0)
              {
LABEL_240:
                v113 = v38;

                sub_255C7429C(v113, v122, v146, 3u);
                v109 = v144;
                v108 = v145;
                v110 = v123;
                v111 = 3;
                goto LABEL_243;
              }
            }

            goto LABEL_91;
          }

          if (v73 == 2)
          {
            if (v77 != 2)
            {
              goto LABEL_240;
            }

            goto LABEL_118;
          }

          if (v77 != 3)
          {
            goto LABEL_240;
          }

          sub_255C74200(*(v59 - 3), *(v59 - 2), *(v59 - 1), 3u);
          sub_255C74200(v70, v71, v72, 3u);
          v139 = sub_255C8E694(v70, v75);
          sub_255C7429C(v75, v74, v76, 3u);
          v66 = v70;
          v67 = v71;
          v68 = v72;
          v69 = 3;
        }

        else if (*v58 <= 5u)
        {
          if (v73 == 4)
          {
            if (v77 != 4)
            {
              goto LABEL_240;
            }

            sub_255C74200(*(v59 - 3), *(v59 - 2), *(v59 - 1), 4u);
            sub_255C74200(v70, v71, v72, 4u);
            v139 = sub_255C8E694(v70, v75);
            sub_255C7429C(v75, v74, v76, 4u);
            v66 = v70;
            v67 = v71;
            v68 = v72;
            v69 = 4;
          }

          else
          {
            if (v77 != 5)
            {
              goto LABEL_240;
            }

            sub_255C74200(*(v59 - 3), *(v59 - 2), *(v59 - 1), 5u);
            sub_255C74200(v70, v71, v72, 5u);
            v139 = sub_255C8E694(v70, v75);
            sub_255C7429C(v75, v74, v76, 5u);
            v66 = v70;
            v67 = v71;
            v68 = v72;
            v69 = 5;
          }
        }

        else if (v73 == 6)
        {
          if (v77 != 6)
          {
            goto LABEL_240;
          }

          if (v70 != v75 || v71 != v74)
          {
            v65 = sub_255D076D8();
            v38 = v147;
            if ((v65 & 1) == 0)
            {
              goto LABEL_240;
            }
          }

          sub_255C74200(v75, v74, v76, 6u);
          sub_255C74200(v70, v71, v72, 6u);
          v139 = sub_255C8E694(v72, v76);
          sub_255C7429C(v75, v74, v76, 6u);
          v66 = v70;
          v67 = v71;
          v68 = v72;
          v69 = 6;
        }

        else
        {
          if (v73 != 7)
          {
            if (v72 | v71 | v70)
            {
              if (v77 != 8 || v75 != 1 || v76 | v74)
              {
                goto LABEL_240;
              }
            }

            else if (v77 != 8 || v76 | v74 | v75)
            {
              goto LABEL_240;
            }

            goto LABEL_91;
          }

          if (v77 != 7)
          {
            goto LABEL_240;
          }

          if (v70 != v75 || v71 != v74)
          {
            v78 = sub_255D076D8();
            v38 = v147;
            if ((v78 & 1) == 0)
            {
              goto LABEL_240;
            }
          }

          sub_255C74200(v75, v74, v76, 7u);
          sub_255C74200(v70, v71, v72, 7u);
          v139 = sub_255C8E694(v72, v76);
          sub_255C7429C(v75, v74, v76, 7u);
          v66 = v70;
          v67 = v71;
          v68 = v72;
          v69 = 7;
        }

        result = sub_255C7429C(v66, v67, v68, v69);
        v38 = v147;
        if ((v139 & 1) == 0)
        {
          goto LABEL_240;
        }

LABEL_91:
        ++v57;
        v58 += 32;
        v59 += 32;
        if (v55 == v57)
        {
LABEL_61:
          sub_255C7429C(v38, v122, v146, v126);
          result = sub_255C7429C(v145, v123, v144, v126);
          v5 = v127;
          v16 = v128;
          v9 = v124;
          v10 = v125;
          v7 = v121;
          v15 = v134;
          goto LABEL_14;
        }
      }
    }

    if (*(v18 + 24) > 5u)
    {
      break;
    }

    if (v22 != 4)
    {
      if (v26 != 5)
      {
        goto LABEL_237;
      }

      v60 = *(v20 + 16);
      if (v60 != *(v24 + 16))
      {
        goto LABEL_237;
      }

      if (v60)
      {
        v61 = v20 == v24;
      }

      else
      {
        v61 = 1;
      }

      if (v61)
      {
        goto LABEL_14;
      }

      v126 = v22;
      v128 = v16;
      v124 = v9;
      v125 = v10;
      v122 = v25;
      sub_255C74200(v24, v25, v146, 5u);
      v123 = v19;
      v144 = v21;
      result = sub_255C74200(v20, v19, v21, 5u);
      v38 = v147;
      v62 = 0;
      v63 = (v20 + 56);
      v64 = (v147 + 56);
      while (2)
      {
        if (v62 >= *(v145 + 16))
        {
          goto LABEL_259;
        }

        if (v62 >= *(v38 + 16))
        {
          goto LABEL_261;
        }

        v98 = *(v63 - 3);
        v99 = *(v63 - 2);
        v100 = *(v63 - 1);
        v101 = *v63;
        v103 = *(v64 - 3);
        v102 = *(v64 - 2);
        v104 = *(v64 - 1);
        v105 = *v64;
        if (v101 <= 3)
        {
          if (*v63 > 1u)
          {
            if (v101 != 2)
            {
              if (v105 != 3)
              {
                goto LABEL_239;
              }

              sub_255C74200(*(v64 - 3), *(v64 - 2), *(v64 - 1), 3u);
              sub_255C74200(v98, v99, v100, 3u);
              v141 = sub_255C8E694(v98, v103);
              sub_255C7429C(v103, v102, v104, 3u);
              v94 = v98;
              v95 = v99;
              v96 = v100;
              v97 = 3;
              goto LABEL_182;
            }

            if (v105 != 2)
            {
              goto LABEL_239;
            }
          }

          else if (*v63)
          {
            if (v105 != 1)
            {
              goto LABEL_239;
            }
          }

          else if (*v64)
          {
            goto LABEL_239;
          }

          if (v98 != v103 || v99 != v102)
          {
            result = sub_255D076D8();
            v38 = v147;
            if ((result & 1) == 0)
            {
LABEL_239:
              v112 = v38;

              sub_255C7429C(v112, v122, v146, 5u);
              v109 = v144;
              v108 = v145;
              v110 = v123;
              v111 = 5;
              goto LABEL_243;
            }
          }
        }

        else
        {
          if (*v63 <= 5u)
          {
            if (v101 == 4)
            {
              if (v105 != 4)
              {
                goto LABEL_239;
              }

              sub_255C74200(*(v64 - 3), *(v64 - 2), *(v64 - 1), 4u);
              sub_255C74200(v98, v99, v100, 4u);
              v141 = sub_255C8E694(v98, v103);
              sub_255C7429C(v103, v102, v104, 4u);
              v94 = v98;
              v95 = v99;
              v96 = v100;
              v97 = 4;
            }

            else
            {
              if (v105 != 5)
              {
                goto LABEL_239;
              }

              sub_255C74200(*(v64 - 3), *(v64 - 2), *(v64 - 1), 5u);
              sub_255C74200(v98, v99, v100, 5u);
              v141 = sub_255C8E694(v98, v103);
              sub_255C7429C(v103, v102, v104, 5u);
              v94 = v98;
              v95 = v99;
              v96 = v100;
              v97 = 5;
            }

            goto LABEL_182;
          }

          if (v101 == 6)
          {
            if (v105 != 6)
            {
              goto LABEL_239;
            }

            if (v98 != v103 || v99 != v102)
            {
              v93 = sub_255D076D8();
              v38 = v147;
              if ((v93 & 1) == 0)
              {
                goto LABEL_239;
              }
            }

            sub_255C74200(v103, v102, v104, 6u);
            sub_255C74200(v98, v99, v100, 6u);
            v141 = sub_255C8E694(v100, v104);
            sub_255C7429C(v103, v102, v104, 6u);
            v94 = v98;
            v95 = v99;
            v96 = v100;
            v97 = 6;
LABEL_182:
            result = sub_255C7429C(v94, v95, v96, v97);
            v38 = v147;
            if ((v141 & 1) == 0)
            {
              goto LABEL_239;
            }
          }

          else
          {
            if (v101 == 7)
            {
              if (v105 != 7)
              {
                goto LABEL_239;
              }

              if (v98 != v103 || v99 != v102)
              {
                v106 = sub_255D076D8();
                v38 = v147;
                if ((v106 & 1) == 0)
                {
                  goto LABEL_239;
                }
              }

              sub_255C74200(v103, v102, v104, 7u);
              sub_255C74200(v98, v99, v100, 7u);
              v141 = sub_255C8E694(v100, v104);
              sub_255C7429C(v103, v102, v104, 7u);
              v94 = v98;
              v95 = v99;
              v96 = v100;
              v97 = 7;
              goto LABEL_182;
            }

            if (v100 | v99 | v98)
            {
              if (v105 != 8 || v103 != 1 || v104 | v102)
              {
                goto LABEL_239;
              }
            }

            else if (v105 != 8 || v104 | v102 | v103)
            {
              goto LABEL_239;
            }
          }
        }

        ++v62;
        v63 += 32;
        v64 += 32;
        if (v60 == v62)
        {
          goto LABEL_61;
        }

        continue;
      }
    }

    if (v26 != 4)
    {
      goto LABEL_237;
    }

    v39 = *(v20 + 16);
    if (v39 != *(v24 + 16))
    {
      v114 = v24;
      sub_255C74200(v24, v25, v146, 4u);
      sub_255C74200(v20, v19, v21, 4u);

      sub_255C7429C(v114, v25, v146, 4u);
      v108 = v20;
      v110 = v19;
      v109 = v21;
      v111 = 4;
      goto LABEL_243;
    }

    if (v39)
    {
      v40 = v20 == v24;
    }

    else
    {
      v40 = 1;
    }

    if (!v40)
    {
      v126 = 4;
      v128 = v16;
      v124 = v9;
      v125 = v10;
      v122 = v25;
      sub_255C74200(v24, v25, v146, 4u);
      v123 = v19;
      v144 = v21;
      result = sub_255C74200(v20, v19, v21, 4u);
      v38 = v147;
      v41 = 0;
      v42 = (v20 + 56);
      v43 = (v147 + 56);
      while (1)
      {
        if (v41 >= *(v145 + 16))
        {
          goto LABEL_258;
        }

        if (v41 >= *(v38 + 16))
        {
          goto LABEL_262;
        }

        v84 = *(v42 - 3);
        v85 = *(v42 - 2);
        v86 = *(v42 - 1);
        v87 = *v42;
        v89 = *(v43 - 3);
        v88 = *(v43 - 2);
        v90 = *(v43 - 1);
        v91 = *v43;
        if (v87 <= 3)
        {
          if (*v42 > 1u)
          {
            if (v87 != 2)
            {
              if (v91 != 3)
              {
                goto LABEL_238;
              }

              sub_255C74200(*(v43 - 3), *(v43 - 2), *(v43 - 1), 3u);
              sub_255C74200(v84, v85, v86, 3u);
              v140 = sub_255C8E694(v84, v89);
              sub_255C7429C(v89, v88, v90, 3u);
              v80 = v84;
              v81 = v85;
              v82 = v86;
              v83 = 3;
LABEL_136:
              result = sub_255C7429C(v80, v81, v82, v83);
              v38 = v147;
              if ((v140 & 1) == 0)
              {
                goto LABEL_238;
              }

              goto LABEL_137;
            }

            if (v91 != 2)
            {
              goto LABEL_238;
            }
          }

          else if (*v42)
          {
            if (v91 != 1)
            {
              goto LABEL_238;
            }
          }

          else if (*v43)
          {
            goto LABEL_238;
          }

          if (v84 != v89 || v85 != v88)
          {
            result = sub_255D076D8();
            v38 = v147;
            if ((result & 1) == 0)
            {
LABEL_238:
              v107 = v38;

              sub_255C7429C(v107, v122, v146, 4u);
              v109 = v144;
              v108 = v145;
              v110 = v123;
              v111 = 4;
              goto LABEL_243;
            }
          }
        }

        else
        {
          if (*v42 <= 5u)
          {
            if (v87 == 4)
            {
              if (v91 != 4)
              {
                goto LABEL_238;
              }

              sub_255C74200(*(v43 - 3), *(v43 - 2), *(v43 - 1), 4u);
              sub_255C74200(v84, v85, v86, 4u);
              v140 = sub_255C8E694(v84, v89);
              sub_255C7429C(v89, v88, v90, 4u);
              v80 = v84;
              v81 = v85;
              v82 = v86;
              v83 = 4;
            }

            else
            {
              if (v91 != 5)
              {
                goto LABEL_238;
              }

              sub_255C74200(*(v43 - 3), *(v43 - 2), *(v43 - 1), 5u);
              sub_255C74200(v84, v85, v86, 5u);
              v140 = sub_255C8E694(v84, v89);
              sub_255C7429C(v89, v88, v90, 5u);
              v80 = v84;
              v81 = v85;
              v82 = v86;
              v83 = 5;
            }

            goto LABEL_136;
          }

          if (v87 == 6)
          {
            if (v91 != 6)
            {
              goto LABEL_238;
            }

            if (v84 != v89 || v85 != v88)
            {
              v79 = sub_255D076D8();
              v38 = v147;
              if ((v79 & 1) == 0)
              {
                goto LABEL_238;
              }
            }

            sub_255C74200(v89, v88, v90, 6u);
            sub_255C74200(v84, v85, v86, 6u);
            v140 = sub_255C8E694(v86, v90);
            sub_255C7429C(v89, v88, v90, 6u);
            v80 = v84;
            v81 = v85;
            v82 = v86;
            v83 = 6;
            goto LABEL_136;
          }

          if (v87 == 7)
          {
            if (v91 != 7)
            {
              goto LABEL_238;
            }

            if (v84 != v89 || v85 != v88)
            {
              v92 = sub_255D076D8();
              v38 = v147;
              if ((v92 & 1) == 0)
              {
                goto LABEL_238;
              }
            }

            sub_255C74200(v89, v88, v90, 7u);
            sub_255C74200(v84, v85, v86, 7u);
            v140 = sub_255C8E694(v86, v90);
            sub_255C7429C(v89, v88, v90, 7u);
            v80 = v84;
            v81 = v85;
            v82 = v86;
            v83 = 7;
            goto LABEL_136;
          }

          if (v86 | v85 | v84)
          {
            if (v91 != 8 || v89 != 1 || v90 | v88)
            {
              goto LABEL_238;
            }
          }

          else if (v91 != 8 || v90 | v88 | v89)
          {
            goto LABEL_238;
          }
        }

LABEL_137:
        ++v41;
        v42 += 32;
        v43 += 32;
        if (v39 == v41)
        {
          goto LABEL_61;
        }
      }
    }

LABEL_14:
    if (++v16 == v15)
    {

      v14 = v120;
      goto LABEL_227;
    }
  }

  if (v22 != 6)
  {
    if (v22 == 7)
    {
      if (v26 != 7)
      {
        goto LABEL_237;
      }

      if (v20 == v24 && v19 == v25 || (v22 = v16, result = sub_255D076D8(), v16 = v22, LOBYTE(v22) = 7, v15 = v134, v24 = v147, (result & 1) != 0))
      {
        v27 = *(v21 + 16);
        if (v27 != *(v146 + 16))
        {
          goto LABEL_237;
        }

        if (v27 && v21 != v146)
        {
          v131 = *(v21 + 16);
          v126 = v22;
          v128 = v16;
          v124 = v9;
          v125 = v10;
          v122 = v25;
          sub_255C74200(v24, v25, v146, 7u);
          v123 = v19;
          result = sub_255C74200(v20, v19, v21, 7u);
          v28 = 0;
          v144 = v21;
          v29 = (v21 + 56);
          v30 = (v146 + 56);
          while (v28 < *(v144 + 16))
          {
            if (v28 >= *(v146 + 16))
            {
              goto LABEL_255;
            }

            v32 = *(v29 - 2);
            v31 = *(v29 - 1);
            v33 = *(v29 - 3);
            v34 = *(v30 - 3);
            v35 = *(v30 - 2);
            v36 = *(v30 - 1);
            v135 = *v29;
            v37 = *v30;
            sub_255C74200(v33, v32, v31, *v29);
            sub_255C74200(v34, v35, v36, v37);
            v137 = sub_255D025BC(v33, v32, v31, v135, v34, v35, v36, v37);
            sub_255C7429C(v34, v35, v36, v37);
            result = sub_255C7429C(v33, v32, v31, v135);
            if ((v137 & 1) == 0)
            {

              sub_255C7429C(v147, v122, v146, 7u);
              v109 = v144;
              v108 = v145;
              v110 = v123;
              v111 = 7;
              goto LABEL_243;
            }

            ++v28;
            v29 += 32;
            v30 += 32;
            v38 = v147;
            if (v131 == v28)
            {
              goto LABEL_61;
            }
          }

LABEL_253:
          __break(1u);
          goto LABEL_254;
        }

        goto LABEL_14;
      }

      sub_255C74200(v147, v25, v146, 7u);
      sub_255C74200(v20, v19, v21, 7u);

      sub_255C7429C(v147, v25, v146, 7u);
      v108 = v20;
      v110 = v19;
      v109 = v21;
      v111 = 7;
      goto LABEL_243;
    }

    if (v21 | v19 | v20)
    {
      if (v26 != 8 || v24 != 1 || v146 | v25)
      {
        goto LABEL_237;
      }
    }

    else if (v26 != 8 || v146 | v25 | v24)
    {
      goto LABEL_237;
    }

    goto LABEL_14;
  }

  if (v26 != 6)
  {
    goto LABEL_237;
  }

  v128 = v16;
  if (v20 != v24 || v19 != v25)
  {
    result = sub_255D076D8();
    v24 = v147;
    if ((result & 1) == 0)
    {
      sub_255C74200(v147, v25, v146, 6u);
      sub_255C74200(v20, v19, v21, 6u);

      sub_255C7429C(v147, v25, v146, 6u);
      v108 = v20;
      v110 = v19;
      v109 = v21;
      v111 = 6;
LABEL_243:
      sub_255C7429C(v108, v110, v109, v111);
LABEL_244:

      goto LABEL_245;
    }
  }

  v44 = *(v21 + 16);
  if (v44 != *(v146 + 16))
  {
    goto LABEL_237;
  }

  v15 = v134;
  v16 = v128;
  if (!v44 || v21 == v146)
  {
    goto LABEL_14;
  }

  v132 = *(v21 + 16);
  v126 = 6;
  v124 = v9;
  v125 = v10;
  v122 = v25;
  sub_255C74200(v24, v25, v146, 6u);
  v123 = v19;
  result = sub_255C74200(v20, v19, v21, 6u);
  v45 = 0;
  v144 = v21;
  v46 = (v21 + 56);
  v47 = (v146 + 56);
  while (v45 < *(v144 + 16))
  {
    if (v45 >= *(v146 + 16))
    {
      goto LABEL_256;
    }

    v49 = *(v46 - 2);
    v48 = *(v46 - 1);
    v50 = *(v46 - 3);
    v51 = *(v47 - 3);
    v52 = *(v47 - 2);
    v53 = *(v47 - 1);
    v136 = *v46;
    v54 = *v47;
    sub_255C74200(v50, v49, v48, *v46);
    sub_255C74200(v51, v52, v53, v54);
    v138 = sub_255D025BC(v50, v49, v48, v136, v51, v52, v53, v54);
    sub_255C7429C(v51, v52, v53, v54);
    result = sub_255C7429C(v50, v49, v48, v136);
    if ((v138 & 1) == 0)
    {

      sub_255C7429C(v147, v122, v146, 6u);
      v109 = v144;
      v108 = v145;
      v110 = v123;
      v111 = 6;
      goto LABEL_243;
    }

    ++v45;
    v46 += 32;
    v47 += 32;
    v38 = v147;
    if (v132 == v45)
    {
      goto LABEL_61;
    }
  }

LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
  return result;
}

uint64_t sub_255C900CC(uint64_t a1, uint64_t a2)
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

        v8 = sub_255C8E694(v5, v7);

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

uint64_t sub_255C90184(uint64_t a1, uint64_t a2)
{
  v4 = sub_255D05B78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LegalDocumentModel.DocumentType(0);
  MEMORY[0x28223BE20](v8);
  v84 = (&v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v85 = &v78 - v11;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE028);
  MEMORY[0x28223BE20](v94);
  v89 = &v78 - v12;
  v96 = type metadata accessor for LegalDocumentModel(0);
  MEMORY[0x28223BE20](v96);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v78 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    return 0;
  }

  if (!v19 || a1 == a2)
  {
    return 1;
  }

  v79 = v7;
  v81 = v4;
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = a1 + v20;
  v22 = a2 + v20;
  v93 = 0x8000000255D184D0;
  v91 = 0x8000000255D184F0;
  v92 = 0x8000000255D184B0;
  v90 = 0x8000000255D18490;
  v87 = 0x8000000255D18450;
  v88 = 0x8000000255D18470;
  v86 = 0x8000000255D18420;
  v78 = (v5 + 32);
  v23 = *(v16 + 72);
  v80 = (v5 + 8);
  v24 = v89;
  v83 = v23;
  while (1)
  {
    sub_255C90D58(v21, v18, type metadata accessor for LegalDocumentModel);
    sub_255C90D58(v22, v14, type metadata accessor for LegalDocumentModel);
    v25 = *v18;
    if (v25 <= 4)
    {
      v31 = 0xD000000000000016;
      if (v25 == 3)
      {
        v31 = 0xD000000000000010;
      }

      v27 = v87;
      v26 = v88;
      if (v25 == 3)
      {
        v32 = v87;
      }

      else
      {
        v32 = v88;
      }

      if (v25 == 2)
      {
        v31 = 0x6157656369766564;
        v32 = 0xEE0079746E617272;
      }

      v33 = 0xD000000000000012;
      if (*v18)
      {
        v33 = 0x694C656369766564;
      }

      v28 = v86;
      if (*v18)
      {
        v34 = 0xED000065736E6563;
      }

      else
      {
        v34 = v86;
      }

      if (*v18 <= 1u)
      {
        v29 = v33;
      }

      else
      {
        v29 = v31;
      }

      if (*v18 <= 1u)
      {
        v30 = v34;
      }

      else
      {
        v30 = v32;
      }
    }

    else
    {
      v27 = v87;
      v26 = v88;
      v28 = v86;
      if (*v18 > 7u)
      {
        if (v25 == 8)
        {
          v29 = 0xD000000000000013;
          v30 = v91;
        }

        else if (v25 == 9)
        {
          v29 = 0x4C646F50656D6F68;
          v30 = 0xEE0065736E656369;
        }

        else
        {
          v29 = 0x57646F50656D6F68;
          v30 = 0xEF79746E61727261;
        }
      }

      else if (v25 == 5)
      {
        v29 = 0xD000000000000017;
        v30 = v90;
      }

      else
      {
        if (v25 == 6)
        {
          v29 = 0xD000000000000014;
        }

        else
        {
          v29 = 0xD000000000000011;
        }

        if (v25 == 6)
        {
          v30 = v92;
        }

        else
        {
          v30 = v93;
        }
      }
    }

    v35 = *v14;
    v36 = 0xD000000000000013;
    v37 = 0x57646F50656D6F68;
    if (v35 == 9)
    {
      v37 = 0x4C646F50656D6F68;
    }

    v38 = 0xEF79746E61727261;
    if (v35 == 9)
    {
      v38 = 0xEE0065736E656369;
    }

    if (v35 != 8)
    {
      v36 = v37;
    }

    v39 = v91;
    if (v35 != 8)
    {
      v39 = v38;
    }

    v40 = 0xD000000000000017;
    v41 = 0xD000000000000014;
    if (v35 != 6)
    {
      v41 = 0xD000000000000011;
    }

    v42 = v93;
    if (v35 == 6)
    {
      v42 = v92;
    }

    if (v35 != 5)
    {
      v40 = v41;
    }

    v43 = v90;
    if (v35 != 5)
    {
      v43 = v42;
    }

    if (*v14 <= 7u)
    {
      v36 = v40;
      v39 = v43;
    }

    v44 = 0xD000000000000016;
    if (v35 == 3)
    {
      v44 = 0xD000000000000010;
      v45 = v27;
    }

    else
    {
      v45 = v26;
    }

    if (v35 == 2)
    {
      v44 = 0x6157656369766564;
      v45 = 0xEE0079746E617272;
    }

    v46 = 0xD000000000000012;
    if (*v14)
    {
      v46 = 0x694C656369766564;
      v47 = 0xED000065736E6563;
    }

    else
    {
      v47 = v28;
    }

    if (*v14 <= 1u)
    {
      v44 = v46;
      v45 = v47;
    }

    if (*v14 <= 4u)
    {
      v48 = v44;
    }

    else
    {
      v48 = v36;
    }

    if (*v14 <= 4u)
    {
      v49 = v45;
    }

    else
    {
      v49 = v39;
    }

    v95 = v21;
    if (v29 == v48 && v30 == v49)
    {
    }

    else
    {
      v50 = sub_255D076D8();

      if ((v50 & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    v51 = v96[5];
    v52 = (v24 + *(v94 + 48));
    sub_255C90D58(&v18[v51], v24, type metadata accessor for LegalDocumentModel.DocumentType);
    sub_255C90D58(&v14[v51], v52, type metadata accessor for LegalDocumentModel.DocumentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_112;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_112;
      }

      goto LABEL_91;
    }

    if (EnumCaseMultiPayload)
    {
      break;
    }

    v54 = v85;
    sub_255C90D58(v24, v85, type metadata accessor for LegalDocumentModel.DocumentType);
    if (swift_getEnumCaseMultiPayload())
    {
      (*v80)(v54, v81);
LABEL_112:
      sub_255C90DC0(v24);
      goto LABEL_113;
    }

    v55 = v8;
    v56 = v79;
    v57 = v81;
    (*v78)(v79, v52, v81);
    v82 = sub_255D05B18();
    v58 = v54;
    v59 = *v80;
    v60 = v56;
    v8 = v55;
    v24 = v89;
    (*v80)(v60, v57);
    v59(v58, v57);
    v23 = v83;
    sub_255C90E28(v24, type metadata accessor for LegalDocumentModel.DocumentType);
    if ((v82 & 1) == 0)
    {
      goto LABEL_113;
    }

LABEL_92:
    v67 = v96[6];
    v68 = &v18[v67];
    v69 = *&v18[v67 + 8];
    v70 = &v14[v67];
    v71 = v70[1];
    if (v69)
    {
      if (!v71 || (*v68 != *v70 || v69 != v71) && (sub_255D076D8() & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    else if (v71)
    {
      goto LABEL_113;
    }

    v72 = v96[7];
    v73 = &v18[v72];
    v74 = *&v18[v72 + 8];
    v75 = &v14[v72];
    v76 = v75[1];
    if (v74)
    {
      if (!v76 || (*v73 != *v75 || v74 != v76) && (sub_255D076D8() & 1) == 0)
      {
        goto LABEL_113;
      }

      sub_255C90E28(v14, type metadata accessor for LegalDocumentModel);
      sub_255C90E28(v18, type metadata accessor for LegalDocumentModel);
    }

    else
    {
      sub_255C90E28(v14, type metadata accessor for LegalDocumentModel);
      sub_255C90E28(v18, type metadata accessor for LegalDocumentModel);
      if (v76)
      {
        return 0;
      }
    }

    v22 += v23;
    v21 = v95 + v23;
    if (!--v19)
    {
      return 1;
    }
  }

  v61 = v84;
  sub_255C90D58(v24, v84, type metadata accessor for LegalDocumentModel.DocumentType);
  v63 = *v61;
  v62 = v61[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_112;
  }

  v64 = *v52;
  v65 = v52[1];
  v23 = v83;
  if (v63 == v64 && v62 == v65)
  {

LABEL_91:
    sub_255C90E28(v24, type metadata accessor for LegalDocumentModel.DocumentType);
    goto LABEL_92;
  }

  v66 = sub_255D076D8();

  if (v66)
  {
    goto LABEL_91;
  }

  sub_255C90E28(v24, type metadata accessor for LegalDocumentModel.DocumentType);
LABEL_113:
  sub_255C90E28(v14, type metadata accessor for LegalDocumentModel);
  sub_255C90E28(v18, type metadata accessor for LegalDocumentModel);
  return 0;
}

uint64_t TaskListItem.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  sub_255D07748();
  result = MEMORY[0x259C4BB60](*(v3 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (v3 + 32);
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v11 = *(v6 + 32);
      v10[0] = v7;
      v10[1] = v8;
      sub_255C76B38(v10, v9);
      sub_255CD5C50(a1);
      result = sub_255C76BF4(v10);
      v6 = (v6 + 40);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t TaskListItem.hashValue.getter()
{
  v1 = *(v0 + 8);
  v3[72] = *v0;
  v4 = v1;
  sub_255D07728();
  TaskListItem.hash(into:)(v3);
  return sub_255D07768();
}

uint64_t sub_255C90C24()
{
  v1 = *(v0 + 8);
  v3[72] = *v0;
  v4 = v1;
  sub_255D07728();
  TaskListItem.hash(into:)(v3);
  return sub_255D07768();
}

uint64_t sub_255C90C7C()
{
  v1 = *(v0 + 8);
  v3[72] = *v0;
  v4 = v1;
  sub_255D07728();
  TaskListItem.hash(into:)(v3);
  return sub_255D07768();
}

uint64_t sub_255C90CCC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_255C8AF80(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_255C90CF4()
{
  result = qword_27F7DE020;
  if (!qword_27F7DE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE020);
  }

  return result;
}

uint64_t sub_255C90D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255C90DC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255C90E28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_255C90E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 3u)
  {
    if (a5 > 2u)
    {
      result = a2;
      if (a5 != 3)
      {
        return result;
      }
    }

    goto LABEL_14;
  }

  if (a5 <= 5u)
  {
    result = a2;
    if (a5 != 4)
    {
      if (a5 != 5)
      {
        return result;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (a5 != 6 && a5 != 7)
  {
    if (a5 != 8)
    {
      return result;
    }

LABEL_13:
  }

LABEL_14:
}

uint64_t sub_255C90F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 3u)
  {
    if (a5 > 2u)
    {
      result = a2;
      if (a5 != 3)
      {
        return result;
      }
    }

    goto LABEL_14;
  }

  if (a5 <= 5u)
  {
    if (a5 != 4)
    {
      result = a2;
      if (a5 != 5)
      {
        return result;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (a5 != 6 && a5 != 7)
  {
    if (a5 != 8)
    {
      return result;
    }

LABEL_13:
  }

LABEL_14:
}

uint64_t static RelativeSize.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t RelativeSize.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x259C4BB80](*&v1);
  return MEMORY[0x259C4BB60](v2);
}

uint64_t RelativeSize.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_255D07728();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x259C4BB80](*&v3);
  MEMORY[0x259C4BB60](v2);
  return sub_255D07768();
}

uint64_t sub_255C91110()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x259C4BB80](*&v1);
  return MEMORY[0x259C4BB60](v2);
}

uint64_t sub_255C91160()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_255D07728();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x259C4BB80](*&v3);
  MEMORY[0x259C4BB60](v2);
  return sub_255D07768();
}

uint64_t sub_255C911C8(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

double static RelativeSize.zero.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27F7DD7D8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&qword_27F7DE030;
  v2 = byte_27F7DE038;
  *a1 = qword_27F7DE030;
  *(a1 + 8) = v2;
  return result;
}

double sub_255C9129C(uint64_t a1)
{
  v3 = type metadata accessor for FontProperties.Family(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for FontProperties(0);
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  LODWORD(v1) = *(v1 + 8);
  sub_255C73CD8(a1, v8);
  v14 = *(v10 + 48);
  if (v14(v8, 1, v9) == 1)
  {
    v33 = v1;
    v15 = *MEMORY[0x277CE0990];
    v16 = sub_255D06808();
    v17 = *(*(v16 - 8) + 104);
    v32 = v14;
    v17(v5, v15, v16);
    swift_storeEnumTagMultiPayload();
    _s33LegalAndRegulatorySettingsSupport14FontPropertiesV13defaultWeight7SwiftUI0F0V0I0VvgZ_0();
    v19 = v18;
    v17(v12, v15, v16);
    swift_storeEnumTagMultiPayload();
    v1 = v9[5];
    v12[v1] = 0;
    v20 = v9[6];
    v12[v20] = 0;
    v21 = v9[7];
    v12[v21] = 0;
    v22 = v9[8];
    v12[v22] = 0;
    v31 = v9[9];
    _s33LegalAndRegulatorySettingsSupport14FontPropertiesV13defaultWeight7SwiftUI0F0V0I0VvgZ_0();
    v23 = &v12[v9[10]];
    *(v23 + 4) = 0;
    *v23 = 0u;
    *(v23 + 1) = 0u;
    v24 = v5;
    v25 = v9[11];
    v26 = v9[12];
    sub_255C92E40(v24, v12);
    v12[v1] = 0;
    LOBYTE(v1) = v33;
    v12[v20] = 0;
    v12[v21] = 0;
    v12[v22] = 0;
    *&v12[v31] = v19;
    *&v12[v25] = 0x4031000000000000;
    *&v12[v26] = 0x3FF0000000000000;
    if (v32(v8, 1, v9) != 1)
    {
      sub_255C73D48(v8);
    }
  }

  else
  {
    sub_255C8A26C(v8, v12);
  }

  v27 = *&v12[v9[11]];
  if ((v1 & 1) == 0)
  {
    v27 = round(v27 * *&v12[v9[12]]);
  }

  v28 = round(v13 * v27);
  sub_255C8A2D0(v12);
  return v28;
}

uint64_t View.relativeFrame(width:height:alignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v29 = a2;
  v30 = a3;
  v31 = a6;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v12 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v11;
  v13 = *(v11 + 8);
  v28 = *v14;
  v27 = *(v14 + 8);
  (*(v9 + 16))(v12, v6, v15);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = (v16 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v16 + v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  (*(v9 + 32))(v20 + v16, v12, a4);
  v21 = v20 + v17;
  *v21 = v26;
  *(v21 + 8) = v13;
  v22 = v20 + v18;
  *v22 = v28;
  *(v22 + 8) = v27;
  v23 = (v20 + v19);
  v24 = v30;
  *v23 = v29;
  v23[1] = v24;
  sub_255D061D8();
  v32 = a5;
  v33 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  return sub_255CA3104(sub_255C91B08, v20, v31);
}

uint64_t sub_255C917A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v31 = a6;
  v32 = a7;
  v28 = a5;
  v27 = a4;
  v30 = a1;
  v33 = a8;
  v12 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v29 = a9;
  v16 = sub_255D061D8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v26 - v21;
  if (v12 != 2)
  {
    v34 = a2;
    v35 = a3 & 1;
    sub_255C73C84();
    sub_255D059E8();
    sub_255C9129C(v15);
    sub_255C73D48(v15);
  }

  if (v28 != 2)
  {
    v34 = v27;
    v35 = v28 & 1;
    sub_255C73C84();
    sub_255D059E8();
    sub_255C9129C(v15);
    sub_255C73D48(v15);
  }

  sub_255D06BC8();
  v36 = a10;
  v37 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  sub_255C818BC(v20, v16, WitnessTable);
  v24 = *(v17 + 8);
  v24(v20, v16);
  sub_255C818BC(v22, v16, WitnessTable);
  return (v24)(v22, v16);
}

uint64_t sub_255C91A7C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 39) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_255C91B08@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 32) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = v2 + *(*(*(v1 + 16) - 8) + 64);
  return sub_255C917A8(v1 + v2, *(v1 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v3 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v3 + 39) & 0xFFFFFFFFFFFFFFF8) + 8), a1, *(v1 + 16), *(v1 + 24));
}

uint64_t View.relativeFrame(minWidth:alignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a3;
  v26 = a6;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v12 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v11;
  v14 = *(v11 + 8);
  (*(v9 + 16))(v12, v16, v15);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v17 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  (*(v9 + 32))(v20 + v17, v12, a4);
  v21 = v20 + v18;
  *v21 = v13;
  *(v21 + 8) = v14;
  v22 = (v20 + v19);
  v23 = v25;
  *v22 = a2;
  v22[1] = v23;
  sub_255D061D8();
  v27 = a5;
  v28 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  return sub_255CA3104(sub_255C92090, v20, v26);
}

uint64_t sub_255C91D8C@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X8>, double a6@<D0>)
{
  v22[1] = a3;
  v22[2] = a1;
  v22[3] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  v12 = sub_255D061D8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  *&v22[6] = a6;
  v23 = a2 & 1;
  sub_255C73C84();
  sub_255D059E8();
  sub_255C9129C(v11);
  sub_255C73D48(v11);
  sub_255D06BD8();
  v22[4] = a4;
  v22[5] = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  sub_255C818BC(v16, v12, WitnessTable);
  v20 = *(v13 + 8);
  v20(v16, v12);
  sub_255C818BC(v18, v12, WitnessTable);
  return (v20)(v18, v12);
}

uint64_t sub_255C92004()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t View.relativePadding(_:length:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = a1;
  v21 = a4;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v10;
  v12 = *(v10 + 8);
  (*(v7 + 16))(v9, v13);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = v14 + v8;
  v16 = (v14 + v8) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  (*(v7 + 32))(v17 + v14, v9, a2);
  *(v17 + v15) = v6;
  v18 = v17 + v16;
  *(v18 + 8) = v11;
  *(v18 + 16) = v12;
  sub_255D061D8();
  v22 = a3;
  v23 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  return sub_255CA3104(sub_255C9258C, v17, v21);
}

uint64_t sub_255C922C8@<X0>(uint64_t a1@<X1>, char a2@<W3>, uint64_t a3@<X5>, uint64_t a4@<X8>, double a5@<D0>)
{
  v21[0] = a1;
  v21[1] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  v11 = sub_255D061D8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  *&v21[4] = a5;
  v22 = a2 & 1;
  sub_255C73C84();
  sub_255D059E8();
  sub_255C9129C(v10);
  sub_255C73D48(v10);
  sub_255D06BF8();
  v21[2] = a3;
  v21[3] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  sub_255C818BC(v15, v11, WitnessTable);
  v19 = *(v12 + 8);
  v19(v15, v11);
  sub_255C818BC(v17, v11, WitnessTable);
  return (v19)(v17, v11);
}

uint64_t sub_255C92504()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 17, v2 | 7);
}

uint64_t sub_255C9258C@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 32) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = v1 + ((v2 + *(*(*(v1 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8);
  return sub_255C922C8(v1 + v2, *(v3 + 16), *(v1 + 24), a1, *(v3 + 8));
}

uint64_t View.relativeLineSpacing(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v10 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v9;
  v12 = *(v9 + 8);
  (*(v7 + 16))(v10, v13, a2);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  (*(v7 + 32))(v16 + v14, v10, a2);
  v17 = v16 + v15;
  *v17 = v11;
  *(v17 + 8) = v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE040);
  sub_255D061D8();
  v18 = sub_255C92AFC();
  v20[0] = a3;
  v20[1] = v18;
  swift_getWitnessTable();
  return sub_255CA3104(sub_255C92A8C, v16, a4);
}

uint64_t sub_255C927C0@<X0>(char a1@<W2>, uint64_t a2@<X4>, uint64_t a3@<X8>, double a4@<D0>)
{
  v21[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE040);
  v10 = sub_255D061D8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  *&v21[4] = a4;
  v22 = a1 & 1;
  sub_255C73C84();
  sub_255D059E8();
  sub_255C9129C(v9);
  sub_255C73D48(v9);
  sub_255D06A88();
  v17 = sub_255C92AFC();
  v21[2] = a2;
  v21[3] = v17;
  WitnessTable = swift_getWitnessTable();
  sub_255C818BC(v14, v10, WitnessTable);
  v19 = *(v11 + 8);
  v19(v14, v10);
  sub_255C818BC(v16, v10, WitnessTable);
  return (v19)(v16, v10);
}

uint64_t sub_255C92A00()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 9, v2 | 7);
}

unint64_t sub_255C92AFC()
{
  result = qword_27F7DE048;
  if (!qword_27F7DE048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE048);
  }

  return result;
}

unint64_t sub_255C92B64()
{
  result = qword_27F7DE050;
  if (!qword_27F7DE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE050);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RelativeSize(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RelativeSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzl33LegalAndRegulatorySettingsSupport25TextStyleAttributesReaderVyAA15ModifiedContentVyxAA12_FrameLayoutVGGAaBHPyHCTm()
{
  sub_255D061D8();
  swift_getWitnessTable();
  type metadata accessor for TextStyleAttributesReader();
  return swift_getWitnessTable();
}

uint64_t sub_255C92D34()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE040);
  sub_255D061D8();
  sub_255C92AFC();
  swift_getWitnessTable();
  type metadata accessor for TextStyleAttributesReader();
  return swift_getWitnessTable();
}

unint64_t sub_255C92DEC()
{
  result = qword_27F7DE058[0];
  if (!qword_27F7DE058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F7DE058);
  }

  return result;
}

uint64_t sub_255C92E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontProperties.Family(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ForegroundColor._collectAttributes(in:)()
{
  sub_255C8A1A8();

  return sub_255D059F8();
}

uint64_t sub_255C92F10()
{
  sub_255C8A1A8();

  return sub_255D059F8();
}

uint64_t sub_255C92F74(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_255C92FD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t static TextStyleBuilder.buildEither<A, B>(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  type metadata accessor for TextStyleBuilder._Conditional();
  return swift_storeEnumTagMultiPayload();
}

uint64_t static TextStyleBuilder.buildEither<A, B>(second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1);
  type metadata accessor for TextStyleBuilder._Conditional();
  return swift_storeEnumTagMultiPayload();
}

uint64_t static TextStyleBuilder.buildLimitedAvailability<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 16);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t static TextStyleBuilder.buildOptional<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_255D074A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t static TextStyleBuilder.buildPartialBlock<A, B>(accumulated:next:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a4 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  (*(v9 + 16))(v12, a2, a4);
  return sub_255C9344C(v14, v12, a3, a4, a5);
}

uint64_t sub_255C9344C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for TextStyleBuilder.Pair();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t TextStyleBuilder._Conditional._collectAttributes(in:)(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v6);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v16, v4);
    (*(a2[5] + 8))(a1, v4);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    (*(v11 + 32))(v14, v16, v10);
    (*(a2[4] + 8))(a1, v10);
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t Optional<A>._collectAttributes(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v9, v4);
  v10 = *(v4 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    (*(a3 + 8))(a1, v10, a3);
    v6 = v11;
    v4 = v10;
  }

  return (*(v6 + 8))(v8, v4);
}

uint64_t sub_255C9399C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_255C93A18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_255C93B40(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_255C93D7C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_255C93E08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_255C93FE4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t AssetInlineImageProvider.init(name:bundle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t AssetInlineImageProvider.image(with:label:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 32) = a1;
  *(v4 + 56) = *v3;
  v5 = *(v3 + 16);
  *(v4 + 72) = v5;
  v6 = v5;

  return MEMORY[0x2822009F8](sub_255C9434C, 0, 0);
}

uint64_t sub_255C9434C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  (*(v0 + 56))(*(v0 + 32));
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  sub_255C8407C();

  sub_255D069A8();
  v3 = sub_255D06D78();
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_255C94438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 32) = a1;
  *(v4 + 56) = *v3;
  v5 = *(v3 + 16);
  *(v4 + 72) = v5;
  v6 = v5;

  return MEMORY[0x2822009F8](sub_255C9434C, 0, 0);
}

void static InlineImageProvider<>.asset.getter(uint64_t (**a1)()@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = sub_255C8A91C;
}

uint64_t TaskList._markdownContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255D0AA80;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 3;
  *a1 = v5;
}

uint64_t sub_255C94568@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = result;
  v3 = 0;
  v4 = *(a2 + 16);
  v28 = a2 + 32;
  while (2)
  {
    v6 = *(a2 + 16);
    if (v3 == v4)
    {
      v17 = v26;
    }

    else
    {
      if (v3 >= v6)
      {
LABEL_26:
        __break(1u);
        return result;
      }

      v7 = *(v28 + 16 * v3++ + 8);
      v8 = *(v7 + 16);
      result = swift_bridgeObjectRetain_n();
      v9 = 0;
      v10 = MEMORY[0x277D84F90];
LABEL_6:
      v11 = v7 - 8 + 40 * v9;
      while (v8 != v9)
      {
        if (v9 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        ++v9;
        v12 = (v11 + 40);
        v13 = *(v11 + 72);
        v11 += 40;
        if (v13 == 6)
        {
          v30 = v12[1];
          v31 = *v12;

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_255C977F8(0, *(v10 + 16) + 1, 1);
          }

          v15 = *(v10 + 16);
          v14 = *(v10 + 24);
          if (v15 >= v14 >> 1)
          {
            result = sub_255C977F8((v14 > 1), v15 + 1, 1);
          }

          *(v10 + 16) = v15 + 1;
          v16 = v10 + 40 * v15;
          *(v16 + 32) = v31;
          *(v16 + 48) = v30;
          *(v16 + 64) = 6;
          goto LABEL_6;
        }
      }

      swift_bridgeObjectRelease_n();
      v5 = *(v10 + 16);

      if (v5 < 2)
      {
        continue;
      }

      v17 = 0;
      v6 = *(a2 + 16);
    }

    break;
  }

  v18 = v17 & 1;
  v33 = v17 & 1;
  if (v6)
  {
    v32 = MEMORY[0x277D84F90];
    sub_255C977D8(0, v6, 0);
    v19 = v32;
    v20 = (a2 + 40);
    do
    {
      v21 = *(v20 - 8);
      v22 = *v20;
      v24 = *(v32 + 16);
      v23 = *(v32 + 24);

      if (v24 >= v23 >> 1)
      {
        sub_255C977D8((v23 > 1), v24 + 1, 1);
      }

      *(v32 + 16) = v24 + 1;
      v25 = v32 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      v20 += 2;
      --v6;
    }

    while (v6);

    v18 = v33;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  *a3 = v18;
  *(a3 + 8) = v19;
  return result;
}

uint64_t TaskList.init(tight:items:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a2();
  result = sub_255C94568(a1, v5, v8);
  v7 = v9;
  *a3 = v8[0];
  *(a3 + 8) = v7;
  return result;
}

uint64_t TaskList.init<A>(of:tight:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE160);
  sub_255C9495C();
  v8 = sub_255D07258();
  sub_255C94568(a2, v8, v11);
  result = (*(*(a3 - 8) + 8))(a1, a3);
  v10 = v12;
  *a4 = v11[0];
  *(a4 + 8) = v10;
  return result;
}

uint64_t sub_255C9491C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  return result;
}

unint64_t sub_255C9495C()
{
  result = qword_27F7DE168;
  if (!qword_27F7DE168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE168);
  }

  return result;
}

uint64_t sub_255C949C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255D0AA80;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 3;
  *a1 = v5;
}

uint64_t sub_255C94A54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t View.markdownMargin(top:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  return View.markdownMargin(top:bottom:)(&v6, a2, a3, a4);
}

uint64_t View.markdownMargin(top:bottom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v10 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v9;
  v12 = *(v9 + 8);
  v24 = *v13;
  v23 = *(v13 + 8);
  (*(v7 + 16))(v10, v4);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = (v14 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  (*(v7 + 32))(v17 + v14, v10, a2);
  v18 = v17 + v15;
  *v18 = v11;
  *(v18 + 8) = v12;
  v19 = v17 + v16;
  *v19 = v24;
  *(v19 + 8) = v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE170);
  sub_255D061D8();
  v20 = sub_255C95118();
  v26 = a3;
  v27 = v20;
  swift_getWitnessTable();
  return sub_255CA3104(sub_255C95094, v17, v25);
}

uint64_t View.markdownMargin(bottom:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = 0;
  v5 = 2;
  return View.markdownMargin(top:bottom:)(&v4, a1, a2, a3);
}

uint64_t sub_255C94D34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X4>, unsigned __int8 a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v36 = a7;
  v37 = a8;
  v32 = a2;
  v33 = a4;
  v34 = a1;
  v11 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE170);
  v35 = a6;
  v15 = sub_255D061D8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - v20;
  v22 = 0;
  if (v11 != 2)
  {
    v38 = v32;
    v39 = a3 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v23 = sub_255C9129C(v14);
    sub_255C73D48(v14);
    v22 = *&v23;
  }

  v24 = a5;
  if (a5 == 2)
  {
    v25 = 0;
  }

  else
  {
    v38 = v33;
    v39 = a5 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v26 = sub_255C9129C(v14);
    sub_255C73D48(v14);
    v25 = *&v26;
  }

  v27 = v36;
  View.markdownMargin(top:bottom:)(v22, a3 == 2, v25, v24 == 2);
  v28 = sub_255C95118();
  v40 = v27;
  v41 = v28;
  WitnessTable = swift_getWitnessTable();
  sub_255C818BC(v19, v15, WitnessTable);
  v30 = *(v16 + 8);
  v30(v19, v15);
  sub_255C818BC(v21, v15, WitnessTable);
  return (v30)(v21, v15);
}

uint64_t sub_255C95008()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 9, v2 | 7);
}

uint64_t sub_255C95094@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 32) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = v2 + *(*(*(v1 + 16) - 8) + 64);
  return sub_255C94D34(v1 + v2, *(v1 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + 16), *(v1 + 24), a1);
}

unint64_t sub_255C95118()
{
  result = qword_27F7DE178;
  if (!qword_27F7DE178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE178);
  }

  return result;
}

uint64_t View.markdownMargin(top:bottom:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2 & 1;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4 & 1;
  sub_255C95658();
  sub_255D06B38();
}

uint64_t sub_255C9528C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255D0B6E0;
  v11 = *a1;
  v12 = *(a1 + 8);
  *(inited + 32) = *a1;
  *(inited + 40) = v12;
  *(inited + 48) = a2;
  *(inited + 56) = a3 & 1;
  if (v12)
  {
    v13 = MEMORY[0x277D84F90];

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_13:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_255C96654(0, *(v13 + 2) + 1, 1, v13);
    }

    v23 = *(v13 + 2);
    v22 = *(v13 + 3);
    if (v23 >= v22 >> 1)
    {
      v13 = sub_255C96654((v22 > 1), v23 + 1, 1, v13);
    }

    *(v13 + 2) = v23 + 1;
    *&v13[8 * v23 + 32] = a2;
    v14 = *(v13 + 2);
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_18:
    v15 = 0.0;
    goto LABEL_19;
  }

  v13 = sub_255C96654(0, 1, 1, MEMORY[0x277D84F90]);
  v21 = *(v13 + 2);
  v20 = *(v13 + 3);
  if (v21 >= v20 >> 1)
  {
    v13 = sub_255C96654((v20 > 1), v21 + 1, 1, v13);
  }

  *(v13 + 2) = v21 + 1;
  *&v13[8 * v21 + 32] = v11;

  if ((a3 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  v14 = *(v13 + 2);
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_4:
  v15 = *(v13 + 4);
  v16 = v14 - 1;
  if (v14 != 1)
  {
    v17 = (v13 + 40);
    do
    {
      v18 = *v17++;
      v19 = v18;
      if (v15 < v18)
      {
        v15 = v19;
      }

      --v16;
    }

    while (v16);
  }

LABEL_19:
  v24 = v14 == 0;

  *a1 = v15;
  *(a1 + 8) = v24;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_255D0B6E0;
  v26 = *(a1 + 16);
  v27 = *(a1 + 24);
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  *(v25 + 48) = a4;
  *(v25 + 56) = a5 & 1;
  if (v27)
  {
    v28 = MEMORY[0x277D84F90];

    if (a5)
    {
      goto LABEL_21;
    }

LABEL_31:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_255C96654(0, *(v28 + 2) + 1, 1, v28);
    }

    v38 = *(v28 + 2);
    v37 = *(v28 + 3);
    if (v38 >= v37 >> 1)
    {
      v28 = sub_255C96654((v37 > 1), v38 + 1, 1, v28);
    }

    *(v28 + 2) = v38 + 1;
    *&v28[8 * v38 + 32] = a4;
    v29 = *(v28 + 2);
    if (v29)
    {
      goto LABEL_22;
    }

LABEL_36:
    v30 = 0.0;
    goto LABEL_37;
  }

  v28 = sub_255C96654(0, 1, 1, MEMORY[0x277D84F90]);
  v36 = *(v28 + 2);
  v35 = *(v28 + 3);
  if (v36 >= v35 >> 1)
  {
    v28 = sub_255C96654((v35 > 1), v36 + 1, 1, v28);
  }

  *(v28 + 2) = v36 + 1;
  *&v28[8 * v36 + 32] = v26;

  if ((a5 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v29 = *(v28 + 2);
  if (!v29)
  {
    goto LABEL_36;
  }

LABEL_22:
  v30 = *(v28 + 4);
  v31 = v29 - 1;
  if (v29 != 1)
  {
    v32 = (v28 + 40);
    do
    {
      v33 = *v32++;
      v34 = v33;
      if (v30 < v33)
      {
        v30 = v34;
      }

      --v31;
    }

    while (v31);
  }

LABEL_37:
  v39 = v29 == 0;

  *(a1 + 16) = v30;
  *(a1 + 24) = v39;
  return result;
}

uint64_t sub_255C95614(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

unint64_t sub_255C95658()
{
  result = qword_27F7DE180;
  if (!qword_27F7DE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE180);
  }

  return result;
}

uint64_t sub_255C956AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE170);
  sub_255D061D8();
  sub_255C95118();
  swift_getWitnessTable();
  type metadata accessor for TextStyleAttributesReader();
  return swift_getWitnessTable();
}

uint64_t sub_255C95750()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE170);
  sub_255D061D8();
  sub_255C95118();
  return swift_getWitnessTable();
}

void sub_255C957D8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t sub_255C957FC(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v38);
  v3 = v38;
  v4 = v39;
  v5 = v40;
  v6 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255D0B6E0;
  v8 = *a1;
  v9 = *(a1 + 8);
  *(inited + 32) = *a1;
  *(inited + 40) = v9;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  if (v9)
  {
    v10 = MEMORY[0x277D84F90];

    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_255C96654(0, *(v10 + 2) + 1, 1, v10);
    }

    v20 = *(v10 + 2);
    v19 = *(v10 + 3);
    if (v20 >= v19 >> 1)
    {
      v10 = sub_255C96654((v19 > 1), v20 + 1, 1, v10);
    }

    *(v10 + 2) = v20 + 1;
    *&v10[8 * v20 + 32] = v3;
    v11 = *(v10 + 2);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_18:
    v12 = 0.0;
    goto LABEL_19;
  }

  v10 = sub_255C96654(0, 1, 1, MEMORY[0x277D84F90]);
  v18 = *(v10 + 2);
  v17 = *(v10 + 3);
  if (v18 >= v17 >> 1)
  {
    v10 = sub_255C96654((v17 > 1), v18 + 1, 1, v10);
  }

  *(v10 + 2) = v18 + 1;
  *&v10[8 * v18 + 32] = v8;

  if ((v4 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  v11 = *(v10 + 2);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_4:
  v12 = *(v10 + 4);
  v13 = v11 - 1;
  if (v11 != 1)
  {
    v14 = (v10 + 40);
    do
    {
      v15 = *v14++;
      v16 = v15;
      if (v12 < v15)
      {
        v12 = v16;
      }

      --v13;
    }

    while (v13);
  }

LABEL_19:
  v21 = v11 == 0;

  *a1 = v12;
  *(a1 + 8) = v21;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_255D0B6E0;
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  *(v22 + 32) = v23;
  *(v22 + 40) = v24;
  *(v22 + 48) = v5;
  *(v22 + 56) = v6;
  if (v24)
  {
    v25 = MEMORY[0x277D84F90];

    if (v6)
    {
      goto LABEL_21;
    }

LABEL_31:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_255C96654(0, *(v25 + 2) + 1, 1, v25);
    }

    v35 = *(v25 + 2);
    v34 = *(v25 + 3);
    if (v35 >= v34 >> 1)
    {
      v25 = sub_255C96654((v34 > 1), v35 + 1, 1, v25);
    }

    *(v25 + 2) = v35 + 1;
    *&v25[8 * v35 + 32] = v5;
    v26 = *(v25 + 2);
    if (v26)
    {
      goto LABEL_22;
    }

LABEL_36:
    v27 = 0.0;
    goto LABEL_37;
  }

  v25 = sub_255C96654(0, 1, 1, MEMORY[0x277D84F90]);
  v33 = *(v25 + 2);
  v32 = *(v25 + 3);
  if (v33 >= v32 >> 1)
  {
    v25 = sub_255C96654((v32 > 1), v33 + 1, 1, v25);
  }

  *(v25 + 2) = v33 + 1;
  *&v25[8 * v33 + 32] = v23;

  if ((v6 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v26 = *(v25 + 2);
  if (!v26)
  {
    goto LABEL_36;
  }

LABEL_22:
  v27 = *(v25 + 4);
  v28 = v26 - 1;
  if (v26 != 1)
  {
    v29 = (v25 + 40);
    do
    {
      v30 = *v29++;
      v31 = v30;
      if (v27 < v30)
      {
        v27 = v31;
      }

      --v28;
    }

    while (v28);
  }

LABEL_37:
  v36 = v26 == 0;

  *(a1 + 16) = v27;
  *(a1 + 24) = v36;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_255C95B7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255C95B9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

uint64_t BackgroundColor._collectAttributes(in:)()
{
  sub_255C95C48();

  return sub_255D059F8();
}

unint64_t sub_255C95C48()
{
  result = qword_27F7DE190;
  if (!qword_27F7DE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE190);
  }

  return result;
}

uint64_t sub_255C95C9C()
{
  sub_255C95C48();

  return sub_255D059F8();
}

void MarkdownContent.childContent.getter(char **a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v4)
  {
    v26 = MEMORY[0x277D84F90];
    sub_255C97818(0, v4, 0);
    v5 = v26;
    v6 = (v3 + 32);
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v28 = *(v6 + 32);
      v27[0] = v7;
      v27[1] = v8;
      sub_255C76B38(v27, v25);
      sub_255CD5330();
      v10 = v9;
      sub_255C76BF4(v27);
      v26 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_255C97818((v11 > 1), v12 + 1, 1);
        v5 = v26;
      }

      *(v5 + 16) = v13;
      *(v5 + 8 * v12 + 32) = v10;
      v6 = (v6 + 40);
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    v13 = *(MEMORY[0x277D84F90] + 16);
    v14 = MEMORY[0x277D84F90];
    if (!v13)
    {
LABEL_25:

      if (!*(v14 + 2))
      {

        v14 = 0;
      }

      *a1 = v14;
      return;
    }
  }

  v15 = 0;
  v14 = MEMORY[0x277D84F90];
  while (v15 < *(v5 + 16))
  {
    v16 = *(v5 + 8 * v15 + 32);
    v17 = *(v16 + 16);
    v18 = *(v14 + 2);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      goto LABEL_29;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v19 <= *(v14 + 3) >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v21 = v18 + v17;
      }

      else
      {
        v21 = v18;
      }

      v14 = sub_255C96758(isUniquelyReferenced_nonNull_native, v21, 1, v14);
      if (*(v16 + 16))
      {
LABEL_21:
        if ((*(v14 + 3) >> 1) - *(v14 + 2) < v17)
        {
          goto LABEL_31;
        }

        swift_arrayInitWithCopy();

        if (v17)
        {
          v22 = *(v14 + 2);
          v23 = __OFADD__(v22, v17);
          v24 = v22 + v17;
          if (v23)
          {
            goto LABEL_32;
          }

          *(v14 + 2) = v24;
        }

        goto LABEL_10;
      }
    }

    if (v17)
    {
      goto LABEL_30;
    }

LABEL_10:
    if (v13 == ++v15)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

char *sub_255C95F58@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v28 = MEMORY[0x277D84F90];
    sub_255C97838(0, v3, 0);
    v4 = v28;
    v5 = a1 + 32;
    do
    {
      sub_255C98A24(v5, v25);
      v6 = v26;
      v7 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v7 + 8))(&v24, v6, v7);
      v8 = v24;
      __swift_destroy_boxed_opaque_existential_1(v25);
      v28 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_255C97838((v9 > 1), v10 + 1, 1);
        v4 = v28;
      }

      *(v4 + 16) = v10 + 1;
      *(v4 + 8 * v10 + 32) = v8;
      v5 += 40;
      --v3;
    }

    while (v3);

    v12 = *(v4 + 16);
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_25:
    v14 = MEMORY[0x277D84F90];
LABEL_26:

    *a2 = v14;
    return result;
  }

  v4 = MEMORY[0x277D84F90];
  v12 = *(MEMORY[0x277D84F90] + 16);
  if (!v12)
  {
    goto LABEL_25;
  }

LABEL_7:
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  while (v13 < *(v4 + 16))
  {
    v15 = *(v4 + 32 + 8 * v13);
    v16 = *(v15 + 16);
    v17 = *(v14 + 2);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_28;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v18 <= *(v14 + 3) >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v19 = v17 + v16;
      }

      else
      {
        v19 = v17;
      }

      result = sub_255C96758(result, v19, 1, v14);
      v14 = result;
      if (*(v15 + 16))
      {
LABEL_20:
        if ((*(v14 + 3) >> 1) - *(v14 + 2) < v16)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v20 = *(v14 + 2);
          v21 = __OFADD__(v20, v16);
          v22 = v20 + v16;
          if (v21)
          {
            goto LABEL_31;
          }

          *(v14 + 2) = v22;
        }

        goto LABEL_9;
      }
    }

    if (v16)
    {
      goto LABEL_29;
    }

LABEL_9:
    if (v12 == ++v13)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

LegalAndRegulatorySettingsSupport::MarkdownContent __swiftcall MarkdownContent.init(_:)(Swift::String a1)
{
  v2 = v1;
  v3 = sub_255CA7390(a1._countAndFlagsBits, a1._object);

  v5 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void *MarkdownContent.init(content:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, void *a2@<X8>)
{
  result = a1(&v4);
  *a2 = v4;
  return result;
}

Swift::String __swiftcall MarkdownContent.renderMarkdown()()
{
  v0 = sub_255C96280(sub_255CA5258);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall MarkdownContent.renderPlainText()()
{
  v0 = sub_255C96280(sub_255CA5270);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_255C96280(uint64_t (*a1)(void))
{
  v2 = a1(*v1);
  if ((sub_255D071F8() & 1) == 0)
  {
    return v2;
  }

  v3 = sub_255C98930(1);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = MEMORY[0x259C4B570](v3, v5, v7, v9);

  return v10;
}

Swift::String __swiftcall MarkdownContent.renderHTML()()
{
  v1 = sub_255CA543C(*v0);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t static MarkdownContent.== infix(_:_:)(int8x16_t **a1, int8x16_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (*a1)[1].i64[0];
  if (v4 == (*a2)[1].i64[0])
  {
    if (!v4 || v2 == v3)
    {
      v11 = 1;
    }

    else
    {
      v5 = v2 + 2;
      v6 = v3 + 2;
      do
      {
        v7 = *v5;
        v8 = v5[1];
        v15 = v5[2].i8[0];
        v14[0] = v7;
        v14[1] = v8;
        v9 = *v6;
        v10 = v6[1];
        v17 = v6[2].i8[0];
        v16[0] = v9;
        v16[1] = v10;
        sub_255C76B38(v14, v13);
        sub_255C76B38(v16, v13);
        v11 = sub_255CD5888(v14, v16);
        sub_255C76BF4(v16);
        sub_255C76BF4(v14);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v6 = (v6 + 40);
        v5 = (v5 + 40);
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

char *sub_255C96444(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255C96550(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDED8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_255C96654(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE198);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_255C96758(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255C96874(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE240);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_255C96978(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE238);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255C96AC8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE298);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255C96BE8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255C96D10(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE248);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_255C96E04(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE2A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_255C96F20(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE2A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255C97040(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255C97160(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255C9726C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_255C9738C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

size_t sub_255C97498(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1D8);
  v10 = *(type metadata accessor for LegalDocumentModel(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for LegalDocumentModel(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_255C9768C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_255C97798(char *a1, int64_t a2, char a3)
{
  result = sub_255C97AB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255C977B8(char *a1, int64_t a2, char a3)
{
  result = sub_255C97BBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255C977D8(char *a1, int64_t a2, char a3)
{
  result = sub_255C97CC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255C977F8(char *a1, int64_t a2, char a3)
{
  result = sub_255C97DD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_255C97818(void *a1, int64_t a2, char a3)
{
  result = sub_255C97EF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255C97838(char *a1, int64_t a2, char a3)
{
  result = sub_255C986F0(a1, a2, a3, *v3, &qword_27F7DE1B0);
  *v3 = result;
  return result;
}

void *sub_255C97870(void *a1, int64_t a2, char a3)
{
  result = sub_255C98024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255C97890(char *a1, int64_t a2, char a3)
{
  result = sub_255C986F0(a1, a2, a3, *v3, &qword_27F7DE1C0);
  *v3 = result;
  return result;
}

char *sub_255C978C8(char *a1, int64_t a2, char a3)
{
  result = sub_255C986F0(a1, a2, a3, *v3, &qword_27F7DE1A8);
  *v3 = result;
  return result;
}

char *sub_255C97900(char *a1, int64_t a2, char a3)
{
  result = sub_255C986F0(a1, a2, a3, *v3, &qword_27F7DE1C8);
  *v3 = result;
  return result;
}

char *sub_255C97938(char *a1, int64_t a2, char a3)
{
  result = sub_255C9816C(a1, a2, a3, *v3, &qword_27F7DE1D0);
  *v3 = result;
  return result;
}

char *sub_255C97968(char *a1, int64_t a2, char a3)
{
  result = sub_255C9816C(a1, a2, a3, *v3, &qword_27F7DE248);
  *v3 = result;
  return result;
}

void *sub_255C97998(void *a1, int64_t a2, char a3)
{
  result = sub_255C98258(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_255C979B8(void *a1, int64_t a2, char a3)
{
  result = sub_255C9839C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_255C979D8(size_t a1, int64_t a2, char a3)
{
  result = sub_255C98514(a1, a2, a3, *v3, &qword_27F7DE1F8, &unk_255D0C508, type metadata accessor for SafetyAndHandlingSectionModel);
  *v3 = result;
  return result;
}

size_t sub_255C97A1C(size_t a1, int64_t a2, char a3)
{
  result = sub_255C98514(a1, a2, a3, *v3, &qword_27F7DE200, &unk_255D0C510, MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

char *sub_255C97A60(char *a1, int64_t a2, char a3)
{
  result = sub_255C986F0(a1, a2, a3, *v3, &qword_27F7DE1B8);
  *v3 = result;
  return result;
}

void *sub_255C97A98(void *a1, int64_t a2, char a3)
{
  result = sub_255C987FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255C97AB8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDED8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_255C97BBC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255C97CC8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255C97DD4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_255C97EF0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE250);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE258);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_255C98024(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE260);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE268);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255C9816C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

void *sub_255C98258(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE208);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE210);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_255C9839C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE278);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_255C98514(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_255C986F0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_255C987FC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE288);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE290);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_255C98930(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = sub_255D07178();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_255D07198();

  return sub_255D07228();
}

uint64_t sub_255C98A24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *ListItem.init(content:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, void *a2@<X8>)
{
  result = a1(&v4);
  *a2 = v4;
  return result;
}

uint64_t static ListItem.== infix(_:_:)(int8x16_t **a1, int8x16_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (*a1)[1].i64[0];
  if (v4 == (*a2)[1].i64[0])
  {
    if (!v4 || v2 == v3)
    {
      v11 = 1;
    }

    else
    {
      v5 = v2 + 2;
      v6 = v3 + 2;
      do
      {
        v7 = *v5;
        v8 = v5[1];
        v15 = v5[2].i8[0];
        v14[0] = v7;
        v14[1] = v8;
        v9 = *v6;
        v10 = v6[1];
        v17 = v6[2].i8[0];
        v16[0] = v9;
        v16[1] = v10;
        sub_255C76B38(v14, v13);
        sub_255C76B38(v16, v13);
        v11 = sub_255CD5888(v14, v16);
        sub_255C76BF4(v16);
        sub_255C76BF4(v14);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v6 = (v6 + 40);
        v5 = (v5 + 40);
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t ListItem.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  result = MEMORY[0x259C4BB60](*(*v1 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (v3 + 32);
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v11 = *(v6 + 32);
      v10[0] = v7;
      v10[1] = v8;
      sub_255C76B38(v10, v9);
      sub_255CD5C50(a1);
      result = sub_255C76BF4(v10);
      v6 = (v6 + 40);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t ListItem.hashValue.getter()
{
  v1 = *v0;
  sub_255D07728();
  MEMORY[0x259C4BB60](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3;
      v5 = v3[1];
      v10 = *(v3 + 32);
      v9[0] = v4;
      v9[1] = v5;
      sub_255C76B38(v9, &v7);
      sub_255CD5C50(v8);
      sub_255C76BF4(v9);
      v3 = (v3 + 40);
      --v2;
    }

    while (v2);
  }

  return sub_255D07768();
}

uint64_t sub_255C98CD4(uint64_t a1)
{
  v3 = *v1;
  result = MEMORY[0x259C4BB60](*(*v1 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (v3 + 32);
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v11 = *(v6 + 32);
      v10[0] = v7;
      v10[1] = v8;
      sub_255C76B38(v10, v9);
      sub_255CD5C50(a1);
      result = sub_255C76BF4(v10);
      v6 = (v6 + 40);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255C98D5C()
{
  v1 = *v0;
  sub_255D07728();
  MEMORY[0x259C4BB60](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3;
      v5 = v3[1];
      v10 = *(v3 + 32);
      v9[0] = v4;
      v9[1] = v5;
      sub_255C76B38(v9, &v7);
      sub_255CD5C50(v8);
      sub_255C76BF4(v9);
      v3 = (v3 + 40);
      --v2;
    }

    while (v2);
  }

  return sub_255D07768();
}

unint64_t sub_255C98DF4()
{
  result = qword_27F7DE2B0;
  if (!qword_27F7DE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE2B0);
  }

  return result;
}

uint64_t sub_255C98E58()
{
  Theme.init()(v13);
  sub_255C99DF4(v13, v2);
  __swift_destroy_boxed_opaque_existential_1(v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE470);
  v7 = &off_2867D69C0;
  v3[0] = 1;
  v4 = 0x3FEE147AE147AE14;
  v5 = 0x80;
  sub_255C99E50(v13);
  sub_255C99DF4(v2, v13);
  v0 = v14;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v0[2])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v0 = sub_255CF4310(v0);
    if (v0[2])
    {
LABEL_3:
      v0[4] = sub_255C9A194;
      v0[5] = 0;

      v14 = v0;
      sub_255C99E50(v2);
      sub_255C99DF4(v13, v2);
      v0 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  v0 = sub_255CF4310(v0);
LABEL_4:
  if (v0[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v0[6] = sub_255C9A1C8;
    v0[7] = 0;

    v8 = v0;
    sub_255C99E50(v13);
    sub_255C99DF4(v2, v13);
    v0 = v14;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_6;
    }
  }

  v0 = sub_255CF4310(v0);
LABEL_6:
  if (v0[2] < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v0[8] = sub_255C9A260;
    v0[9] = 0;

    v14 = v0;
    sub_255C99E50(v2);
    sub_255C99DF4(v13, v2);
    v0 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_8;
    }
  }

  v0 = sub_255CF4310(v0);
LABEL_8:
  if (v0[2] < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v0[10] = sub_255C9A294;
    v0[11] = 0;

    v8 = v0;
    sub_255C99E50(v13);
    sub_255C99DF4(v2, v13);
    v0 = v14;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_10;
    }
  }

  v0 = sub_255CF4310(v0);
LABEL_10:
  if (v0[2] < 5uLL)
  {
    __break(1u);
  }

  else
  {
    v0[12] = sub_255C9A2C8;
    v0[13] = 0;

    v14 = v0;
    sub_255C99E50(v2);
    sub_255C99DF4(v13, v2);
    v0 = v8;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_12;
    }
  }

  result = sub_255CF4310(v0);
  v0 = result;
LABEL_12:
  if (v0[2] < 6uLL)
  {
    __break(1u);
  }

  else
  {
    v0[14] = sub_255C9A2FC;
    v0[15] = 0;

    v8 = v0;
    sub_255C99E50(v13);
    sub_255C99DF4(v2, v13);

    v15 = sub_255C9A164;
    v16 = 0;
    sub_255C99E50(v2);
    sub_255C99DF4(v13, v2);

    v9 = sub_255C9A0A0;
    v10 = 0;
    sub_255C99E50(v13);
    sub_255C99DF4(v2, v13);

    v17 = sub_255C99FF8;
    v18 = 0;
    sub_255C99E50(v2);
    sub_255C99DF4(v13, v2);

    v11 = sub_255C99FC8;
    v12 = 0;
    sub_255C99E50(v13);
    sub_255C99DF4(v2, v13);

    v19 = sub_255C99F30;
    v20 = 0;
    sub_255C99E50(v2);
    sub_255C99DF4(v13, &unk_27F7DE2B8);
    qword_27F7DE460 = sub_255C99EA4;
    qword_27F7DE468 = 0;

    return sub_255C99E50(v13);
  }

  return result;
}

uint64_t sub_255C99274@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 0x3FF8000000000000;
  *(v8 + 32) = 1;
  *(v8 + 40) = 0x3FF0000000000000;
  *(v8 + 48) = 1;
  *a4 = swift_getKeyPath();
  *(a4 + 40) = 0;
  *(a4 + 48) = a2;
  *(a4 + 56) = v8;
  *(a4 + 64) = swift_getKeyPath();
  *(a4 + 72) = a3;
  *(a4 + 80) = 0;
}

uint64_t sub_255C99320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 256;
  *(v4 + 32) = 0x3FC3333333333333;
  *(v4 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v6 = qword_27F7DD7D8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7DE030;
  v8 = byte_27F7DE038;
  v9 = swift_allocObject();
  *(v9 + 16) = KeyPath;
  *(v9 + 56) = 0;
  *(v9 + 64) = sub_255C9A894;
  *(v9 + 72) = v4;
  *(v9 + 80) = v7;
  *(v9 + 88) = v8;
  *(v9 + 96) = 0x3FF0000000000000;
  *(v9 + 104) = 0;
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255C9A9F0;
  *(a2 + 56) = v9;
  return result;
}

uint64_t sub_255C99468@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();

  v5 = sub_255D06748();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = KeyPath;
  *(v6 + 32) = sub_255CDFD00;
  *(v6 + 40) = 0;
  *(v6 + 48) = v5;
  *(v6 + 56) = 0x4000000000000000;
  *(v6 + 64) = 0;
  v7 = swift_getKeyPath();
  LOBYTE(KeyPath) = sub_255D06768();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 56) = 0;
  *(v8 + 64) = sub_255C9A960;
  *(v8 + 72) = v6;
  *(v8 + 80) = KeyPath;
  *(v8 + 88) = 0x3FF0000000000000;
  *(v8 + 96) = 0;
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255C9A974;
  *(a2 + 56) = v8;
  return result;
}

uint64_t sub_255C99594@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE4B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = *(a1 + 16);
  v25[0] = *a1;
  v25[1] = v10;
  v26 = *(a1 + 32);
  sub_255D066D8();
  v24 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE4C0);
  sub_255C9A604();
  sub_255D05F08();
  if (qword_27F7DD7D8 != -1)
  {
    swift_once();
  }

  v11 = qword_27F7DE030;
  v12 = byte_27F7DE038;
  v13 = *(v4 + 32);
  v13(v7, v9, v3);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = (v14 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v13((v17 + v14), v7, v3);
  v18 = v17 + v15;
  *v18 = v11;
  *(v18 + 8) = v12;
  v19 = v17 + v16;
  *v19 = 0x3FF0000000000000;
  *(v19 + 8) = 0;
  result = swift_getKeyPath();
  v21 = v23;
  *v23 = result;
  *(v21 + 40) = 0;
  v21[6] = sub_255C9A788;
  v21[7] = v17;
  return result;
}

uint64_t sub_255C997E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *(a1 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = v11;
  *(v3 + 24) = 256;
  *(v3 + 32) = 0x3FC3333333333333;
  *(v3 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v10 = 0;
  sub_255C9A8A4(&v11, v9);
  v5 = sub_255D06748();
  v6 = v10;
  v7 = swift_allocObject();
  *(v7 + 16) = KeyPath;
  *(v7 + 56) = v6;
  *(v7 + 64) = sub_255C9A894;
  *(v7 + 72) = v3;
  *(v7 + 80) = v5;
  *(v7 + 88) = 0x3FF0000000000000;
  *(v7 + 96) = 1;
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255C9A900;
  *(a2 + 56) = v7;
  result = swift_getKeyPath();
  *(a2 + 64) = result;
  *(a2 + 72) = sub_255CDFDBC;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_255C9991C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F7DD7D8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_27F7DE030;
  v6 = byte_27F7DE038;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = 256;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  *(v7 + 48) = 0x3FF0000000000000;
  *(v7 + 56) = 0;
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255C9A5CC;
  *(a2 + 56) = v7;
  return result;
}

uint64_t sub_255C999F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v6;
  v7[5] = v5;
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_255C9A4D4;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = KeyPath;
  *(v10 + 32) = sub_255C9A54C;
  *(v10 + 40) = v9;
  *(v10 + 48) = 256;
  *(v10 + 56) = 0x3FC3333333333333;
  *(v10 + 64) = 0;
  v11 = swift_getKeyPath();
  swift_retain_n();

  LOBYTE(v5) = sub_255D06708();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 56) = 0;
  *(v12 + 64) = sub_255C9A554;
  *(v12 + 72) = v10;
  *(v12 + 80) = v5;
  *(v12 + 88) = 0x3FE70A3D70A3D70ALL;
  *(v12 + 96) = 0;
  v13 = swift_getKeyPath();
  LOBYTE(v10) = sub_255D06778();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 56) = 0;
  *(v14 + 64) = sub_255C9A56C;
  *(v14 + 72) = v12;
  *(v14 + 80) = v10;
  *(v14 + 88) = 0x3FD6666666666666;
  *(v14 + 96) = 0;
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255C9A580;
  *(a2 + 56) = v14;
  return result;
}

uint64_t sub_255C99BF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_255D06E98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  sub_255D06E88();
  v9 = *(v3 + 32);
  v9(v6, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v10 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v9((v13 + v10), v6, v2);
  v14 = v13 + v11;
  *v14 = 0x4000000000000000;
  *(v14 + 8) = 0;
  v15 = v13 + v12;
  *v15 = 0x4000000000000000;
  *(v15 + 8) = 0;
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 40) = 0;
  *(a1 + 48) = sub_255C9A3C4;
  *(a1 + 56) = v13;
  return result;
}

uint64_t static Theme.basic.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27F7DD7E0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_255C99DF4(&unk_27F7DE2B8, v2);
}

uint64_t sub_255C99EA4()
{
  sub_255C99BF0(&v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE478);
  sub_255C810A8(&qword_27F7DE480, &qword_27F7DE478);
  return sub_255D06E78();
}

uint64_t sub_255C99F30(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  sub_255C999F8(v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE488);
  sub_255C810A8(&qword_27F7DE490, &qword_27F7DE488);
  return sub_255D06E78();
}

uint64_t sub_255C99FF8(__int128 *a1)
{
  v1 = *(a1 + 2);
  v4 = *a1;
  v5 = v1;
  v6 = *(a1 + 24);
  sub_255C99594(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE4A8);
  sub_255C810A8(&qword_27F7DE4B0, &qword_27F7DE4A8);
  return sub_255D06E78();
}

uint64_t sub_255C9A0D0(__int128 *a1, void (*a2)(void *__return_ptr, __int128 *), uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v9 = *a1;
  a2(v8, &v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  sub_255C810A8(a5, a3);
  return sub_255D06E78();
}

uint64_t sub_255C9A1FC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  sub_255C99274(&v6, a3, a4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE510);
  sub_255C9AA08();
  return sub_255D06E78();
}

uint64_t sub_255C9A330()
{
  v1 = sub_255D06E98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_255C9A3C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_255D06E98() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v6 + 8);

  return sub_255CE848C(v1 + v4, v7, v11, v9, v10, a1);
}

uint64_t sub_255C9A494()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_255C9A4D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = 0;
  if (!v3)
  {
    result = sub_255D06868();
  }

  *a1 = v4;
  *(a1 + 8) = v3 != 0;
  return result;
}

uint64_t sub_255C9A514()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255C9A594()
{

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_255C9A5CC@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_255CE82A0(*(v1 + 16), v2 | *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), a1);
}

unint64_t sub_255C9A604()
{
  result = qword_27F7DE4C8;
  if (!qword_27F7DE4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE4C0);
    sub_255C810A8(&qword_27F7DE4D0, &qword_27F7DE4D8);
    sub_255C810A8(&qword_27F7DE4E0, &qword_27F7DE4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE4C8);
  }

  return result;
}

uint64_t sub_255C9A6E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE4B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_255C9A788@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE4B8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v6 + 8);

  return sub_255CE8070(v1 + v4, v7, v11, v9, v10, a1);
}

uint64_t sub_255C9A85C()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t objectdestroy_8Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t objectdestroy_11Tm(uint64_t a1)
{
  if (*(v1 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + 16);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_255C9AA08()
{
  result = qword_27F7DE518;
  if (!qword_27F7DE518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE510);
    sub_255C810A8(&qword_27F7DE520, qword_27F7DE528);
    sub_255C810A8(&qword_27F7DE4E0, &qword_27F7DE4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE518);
  }

  return result;
}

uint64_t sub_255C9AAEC()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t dispatch thunk of InlineImageProvider.image(with:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_255C7DDDC;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t static TextTableColumnBuilder.buildExpression(_:)(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 3);
  type metadata accessor for TextTableColumn();
  sub_255D076C8();
  swift_allocObject();
  v4 = sub_255D07298();
  *v5 = v2;
  *(v5 + 8) = *(a1 + 8);
  *(v5 + 24) = v3;
  sub_255D072C8();

  return v4;
}

uint64_t sub_255C9ADB0()
{
  type metadata accessor for TextTableColumn();
  sub_255D072C8();
  sub_255D072C8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_255D07258();
}

uint64_t static TextTableColumnBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    type metadata accessor for TextTableColumn();
    v1 = sub_255D072A8();
  }

  return v1;
}

uint64_t sub_255C9AF18(uint64_t result)
{
  v1 = result;
  if ((result - 1) > 0xF9E)
  {
    return sub_255D076B8();
  }

  v2 = 0;
  for (i = &unk_2867D48D8; ; i += 16)
  {
    v4 = *(&unk_2867D4828 + v2 + 32);
    if (!v4)
    {
      break;
    }

    if (v1 / v4 >= 1)
    {

      v5 = sub_255D07208();
      MEMORY[0x259C4B5D0](v5);
    }

    v1 %= v4;
    v2 += 8;
    if (v2 == 104)
    {
      swift_arrayDestroy();
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*BlockStyle.init<A>(body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)(uint64_t a1)@<X8>))(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 2) = a3;
  *(result + 3) = a4;
  *(result + 4) = a5;
  *(result + 5) = a1;
  *(result + 6) = a2;
  *a6 = sub_255C9B164;
  a6[1] = result;
  return result;
}

uint64_t sub_255C9B09C(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v2(v1);
  return sub_255D06E78();
}

uint64_t sub_255C9B12C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t (*BlockStyle<A>.init<A>(body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)(uint64_t a1)@<X8>))(uint64_t a1)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  result = swift_allocObject();
  *(result + 2) = MEMORY[0x277D84F78] + 8;
  *(result + 3) = a3;
  *(result + 4) = a4;
  *(result + 5) = sub_255C9B390;
  *(result + 6) = v10;
  *a5 = sub_255C9B164;
  a5[1] = result;
  return result;
}

uint64_t sub_255C9B224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 - 8);
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v17 - v12;
  v14(v11);
  sub_255C818BC(v10, a4, a5);
  v15 = *(v7 + 8);
  v15(v10, a4);
  sub_255C818BC(v13, a4, a5);
  return (v15)(v13, a4);
}

uint64_t sub_255C9B358()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_255C9B39C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static TaskListContentBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE228);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255D0AA80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255D0AA80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255D0AA80;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v5 + 32) = v6;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 6;
  *(v4 + 32) = 0;
  *(v4 + 40) = v5;

  return v4;
}

uint64_t static TaskListContentBuilder.buildExpression(_:)(char *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE228);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_255D0AA80;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;

  return v3;
}

uint64_t sub_255C9B550(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = result + 32;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 24) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_255C96AAC(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 16) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static TaskListContentBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_255C9B6D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255C9B71C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255C9B778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE648);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255D0AA80;
  *(inited + 32) = a2;
  v9 = inited + 32;
  *(inited + 40) = a3;
  *(inited + 48) = a1;
  v10 = sub_255CD4630(inited);
  swift_setDeallocating();

  result = sub_255C9BF00(v9);
  *a4 = v10;
  return result;
}

uint64_t sub_255C9B818()
{
  v1 = *v0;
  v2 = v0[1];
  sub_255D07728();
  MEMORY[0x259C4BB60](v1);
  MEMORY[0x259C4BB60](v2);
  return sub_255D07768();
}

uint64_t sub_255C9B874()
{
  v1 = v0[1];
  MEMORY[0x259C4BB60](*v0);
  return MEMORY[0x259C4BB60](v1);
}

uint64_t sub_255C9B8B0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_255D07728();
  MEMORY[0x259C4BB60](v1);
  MEMORY[0x259C4BB60](v2);
  return sub_255D07768();
}

void *sub_255C9B934()
{
  result = sub_255CD4630(MEMORY[0x277D84F90]);
  qword_27F7DE630 = result;
  return result;
}

uint64_t sub_255C9B95C@<X0>(void *a1@<X8>)
{
  if (qword_27F7DD7E8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F7DE630;
}

uint64_t sub_255C9B9CC(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  sub_255C9BF68(v3, sub_255C9BA5C, 0, isUniquelyReferenced_nonNull_native, &v6);

  *a1 = v6;
  return result;
}

uint64_t sub_255C9BA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
}

void sub_255C9BA74(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v62 = a4;
  v9 = sub_255D06548();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_58;
  }

  if (!a1)
  {
    v14 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE640);
  v13 = sub_255D072B8();
  v14 = v13;
  *(v13 + 16) = a1;
  v15 = (v13 + 32);
  if (a1 <= 3)
  {
    v16 = 0;
LABEL_9:
    v19 = a1 - v16;
    do
    {
      *v15++ = xmmword_255D0C7E0;
      --v19;
    }

    while (v19);
    goto LABEL_11;
  }

  v16 = a1 & 0x7FFFFFFFFFFFFFFCLL;
  v15 += a1 & 0x7FFFFFFFFFFFFFFCLL;
  v17 = (v13 + 64);
  v18 = a1 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    *(v17 - 2) = xmmword_255D0C7E0;
    *(v17 - 1) = xmmword_255D0C7E0;
    *v17 = xmmword_255D0C7E0;
    v17[1] = xmmword_255D0C7E0;
    v17 += 4;
    v18 -= 4;
  }

  while (v18);
  if (v16 != a1)
  {
    goto LABEL_9;
  }

LABEL_11:
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_59;
  }

  v56 = v12;
  v57 = v10;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE638);
    v20 = sub_255D072B8();
    v21 = v20;
    *(v20 + 16) = a2;
    v22 = (v20 + 32);
    if (a2 > 3)
    {
      v23 = a2 & 0x7FFFFFFFFFFFFFFCLL;
      v22 += a2 & 0x7FFFFFFFFFFFFFFCLL;
      v24 = (v20 + 64);
      v25 = a2 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        *(v24 - 2) = xmmword_255D0C7E0;
        *(v24 - 1) = xmmword_255D0C7E0;
        *v24 = xmmword_255D0C7E0;
        v24[1] = xmmword_255D0C7E0;
        v24 += 4;
        v25 -= 4;
      }

      while (v25);
      if (v23 == a2)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v23 = 0;
    }

    v26 = a2 - v23;
    do
    {
      *v22++ = xmmword_255D0C7E0;
      --v26;
    }

    while (v26);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

LABEL_21:
  if (!a1)
  {
LABEL_48:

LABEL_50:
    v43 = v56;
    sub_255D065D8();
    v44 = v62;
    sub_255D06048();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = sub_255D06058();
    (*(*(v53 - 8) + 8))(v44, v53);
    (*(v57 + 8))(v43, v9);
    *a5 = v46;
    *(a5 + 1) = v48;
    *(a5 + 2) = v50;
    *(a5 + 3) = v52;
    *(a5 + 4) = v14;
    *(a5 + 5) = v21;
    return;
  }

  v54 = v9;
  v55 = a5;
  v9 = 0;
  v58 = (v21 + 40);
  v59 = v14 + 32;
  v60 = a1;
  while (1)
  {
    if (__OFADD__(v9, 1))
    {
      goto LABEL_57;
    }

    v61 = v9 + 1;
    if (a2)
    {
      break;
    }

LABEL_23:
    v9 = v61;
    if (v61 == v60)
    {

      v9 = v54;
      a5 = v55;
      goto LABEL_50;
    }
  }

  v27 = 0;
  v28 = v58;
  a5 = (v59 + 16 * v9);
  while (1)
  {
    if (!*(a3 + 16))
    {
      goto LABEL_31;
    }

    sub_255C7B700(v9, v27);
    if ((v30 & 1) == 0)
    {
      goto LABEL_31;
    }

    type metadata accessor for CGRect(0);

    sub_255D06068();
    if (v9 >= *(v14 + 16))
    {
      break;
    }

    x = v63.origin.x;
    y = v63.origin.y;
    width = v63.size.width;
    height = v63.size.height;
    v35 = *a5;
    MinY = CGRectGetMinY(v63);
    if (v9 >= *(v14 + 16))
    {
      goto LABEL_52;
    }

    if (MinY >= v35)
    {
      MinY = v35;
    }

    *a5 = MinY;
    v37 = a5[1];
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    v38 = CGRectGetHeight(v64);
    if (v9 >= *(v14 + 16))
    {
      goto LABEL_53;
    }

    if (v37 > v38)
    {
      v38 = v37;
    }

    a5[1] = v38;
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_54;
    }

    if (v27 >= *(v21 + 16))
    {
      goto LABEL_55;
    }

    v39 = *(v28 - 1);
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = width;
    v65.size.height = height;
    MinX = CGRectGetMinX(v65);
    if (v27 >= *(v21 + 16))
    {
      goto LABEL_56;
    }

    if (MinX >= v39)
    {
      MinX = v39;
    }

    *(v28 - 1) = MinX;
    v41 = *v28;
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    v42 = CGRectGetWidth(v66);

    if (v27 >= *(v21 + 16))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v41 > v42)
    {
      v29 = v41;
    }

    else
    {
      v29 = v42;
    }

    *v28 = v29;
LABEL_31:
    ++v27;
    v28 += 2;
    if (a2 == v27)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
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
  __break(1u);
}

uint64_t sub_255C9BF00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255C9BF68(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, void *a5)
{
  v43 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v34 = v6;
  while (v9)
  {
    v37 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = *(*(a1 + 56) + 8 * v14);
    v41 = *(*(a1 + 48) + 16 * v14);
    v42 = v15;

    a2(&v38, &v41);

    v17 = v38;
    v16 = v39;
    v18 = v40;
    v19 = *v43;
    v21 = sub_255C7B700(v38, v39);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_25;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if ((v37 & 1) == 0)
      {
        sub_255C7D4A0();
      }
    }

    else
    {
      sub_255C7C0C0(v24, v37 & 1);
      v26 = sub_255C7B700(v17, v16);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_27;
      }

      v21 = v26;
    }

    v9 &= v9 - 1;
    v28 = *v43;
    if (v25)
    {
      *(v28[7] + 8 * v21) = v18;
    }

    else
    {
      v28[(v21 >> 6) + 8] |= 1 << v21;
      v29 = (v28[6] + 16 * v21);
      *v29 = v17;
      v29[1] = v16;
      *(v28[7] + 8 * v21) = v18;
      v30 = v28[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_26;
      }

      v28[2] = v32;
    }

    a4 = 1;
    v11 = v12;
    v6 = v34;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_255C9C1D8();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v37 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_255D07708();
  __break(1u);
  return result;
}

unint64_t sub_255C9C1F4()
{
  result = qword_27F7DE658;
  if (!qword_27F7DE658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE658);
  }

  return result;
}

uint64_t sub_255C9C248(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_255C9C290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255C9C308@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE660);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = sub_255D063E8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v13 = *(v1 + 8);
  v15 = *(v1 + 16);
  v16 = *(v1 + 24);
  v29 = *(v1 + 32);
  v17 = *(v1 + 33);
  v30 = v16;
  v31 = v17;
  v18 = *(v1 + 40);
  if (v15 == 1)
  {
    v40 = v14;
    v41 = v13;
    sub_255C74DCC();
    v19 = v14;
  }

  else
  {
    v27 = v10;
    sub_255C74DCC();
    sub_255D07438();
    v20 = sub_255D066C8();
    v28 = v18;
    v21 = v20;
    sub_255D05D88();

    v18 = v28;
    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C74DD0();
    (*(v9 + 8))(v12, v27);
    v19 = v40;
  }

  v33 = v14;
  v34 = v13;
  v35 = v15;
  v22 = v31;
  v36 = v30;
  v37 = v29;
  v38 = v31;
  v39 = v18;
  sub_255C9C60C(v7);
  sub_255C9CA64(v7, v5);
  sub_255C9CAD4();
  v23 = sub_255D06E78();
  sub_255C9CD2C(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_255D0AA80;
  *(v24 + 32) = v22;
  *(v24 + 40) = v18;
  *(v24 + 48) = 0;
  *(v24 + 56) = 0;
  *(v24 + 64) = 3;
  v33 = v23;
  v34 = v24;

  v25 = v19(&v33);

  *v32 = v25;
  return result;
}

uint64_t sub_255C9C60C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_255D063E8();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_255D065B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v1 + 24);
  v32 = *(v1 + 32);
  v30 = *(v1 + 33);
  v8 = *(v1 + 40);
  KeyPath = swift_getKeyPath();
  v31 = KeyPath;
  v10 = swift_getKeyPath();
  v44 = sub_255CD474C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE698);
  sub_255D06D98();
  v11 = v35;
  v12 = v36;
  v13 = sub_255C9CD94(0, v8);
  LOBYTE(v44) = 0;
  v45 = 0;
  v35 = KeyPath;
  LOBYTE(v36) = 0;
  v37 = v10;
  v38 = 0;
  v39 = v11;
  v40 = v12;
  v41 = v13;
  v42 = sub_255C9C9D4;
  v43 = 0;
  sub_255D065A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE680);
  sub_255C810A8(&qword_27F7DE688, &qword_27F7DE680);
  sub_255C9CCD4();
  sub_255D06A38();
  (*(v5 + 8))(v7, v4);

  result = swift_getKeyPath();
  v15 = result;
  if (v32)
  {
    v16 = v33;
  }

  else
  {
    v17 = v33;

    sub_255D07438();
    v18 = sub_255D066C8();
    sub_255D05D88();

    v19 = v27;
    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C74DA4(v17, 0);
    result = (*(v28 + 8))(v19, v29);
    v16 = v35;
  }

  v20 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE678);
    v22 = v34;
    v23 = (v34 + *(v21 + 36));
    *v23 = v15;
    v23[1] = v20;
    v24 = swift_getKeyPath();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE660);
    v25 = v22 + *(result + 36);
    *v25 = v24;
    *(v25 + 8) = v30;
  }

  return result;
}

uint64_t sub_255C9C9D4@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v3;
  *(a2 + 56) = v4;
}

uint64_t sub_255C9CA64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_255C9CAD4()
{
  result = qword_27F7DE668;
  if (!qword_27F7DE668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE660);
    sub_255C9CB8C();
    sub_255C810A8(&qword_27F7DDA50, &qword_27F7DDA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE668);
  }

  return result;
}

unint64_t sub_255C9CB8C()
{
  result = qword_27F7DE670;
  if (!qword_27F7DE670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE680);
    sub_255D065B8();
    sub_255C810A8(&qword_27F7DE688, &qword_27F7DE680);
    sub_255C9CCD4();
    swift_getOpaqueTypeConformance2();
    sub_255C810A8(&qword_27F7DDA40, &qword_27F7DDA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE670);
  }

  return result;
}

unint64_t sub_255C9CCD4()
{
  result = qword_27F7DE690;
  if (!qword_27F7DE690)
  {
    sub_255D065B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE690);
  }

  return result;
}

uint64_t sub_255C9CD2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255C9CD94(uint64_t a1, uint64_t a2)
{
  v14 = MEMORY[0x277D84F90];
  result = sub_255C97870(0, 0, 0);
  v5 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_10:
    __break(1u);
  }

  else
  {
    v6 = *(a2 + 16) + 1;
    v7 = (a2 + 40);
    while (--v6)
    {
      v8 = *(v7 - 8);
      v9 = *v7;
      v11 = *(v14 + 16);
      v10 = *(v14 + 24);

      if (v11 >= v10 >> 1)
      {
        result = sub_255C97870((v10 > 1), v11 + 1, 1);
      }

      *(v14 + 16) = v11 + 1;
      v12 = v14 + 24 * v11;
      *(v12 + 32) = a1;
      a1 = v5;
      v7 += 2;
      *(v12 + 40) = v8;
      *(v12 + 48) = v9;
      if (__OFADD__(v5++, 1))
      {
        goto LABEL_10;
      }
    }

    return v14;
  }

  return result;
}

uint64_t sub_255C9CEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_255C9CFC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for InlineText()
{
  result = qword_27F7DE6A8;
  if (!qword_27F7DE6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255C9D0D4()
{
  sub_255C9D2A8(319, &qword_27F7DE6B8, &qword_27F7DE6C0, &unk_255D0CBB0, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_255C9D2A8(319, &qword_27F7DE6C8, &qword_27F7DDCB0, &unk_255D0BED0, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_255C9D30C(319, &qword_27F7DE6D0, &type metadata for SoftBreak.Mode, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_255C9D30C(319, &qword_27F7DE6D8, &type metadata for Theme, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_255C9D2A8(319, &qword_27F7DE6E0, &qword_27F7DE6E8, &unk_255D0CBC0, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_255C9D30C(319, &qword_27F7DE6F0, &type metadata for InlineNode, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_255C9D2A8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_255C9D30C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_255C9D378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v36 = a1;
  v37 = a3;
  v4 = type metadata accessor for TextInlineRenderer();
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_255D063E8();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for InlineText();
  v35 = *(a2 + v12[10]);
  sub_255CBEFD4(v11);
  sub_255CBEFF8(v46);
  sub_255C98A24(&v47, v48);
  sub_255C99E50(v46);
  sub_255CBEFF8(v44);
  sub_255C98A24(&v45, &v49);
  sub_255C99E50(v44);
  sub_255CBEFF8(v42);
  sub_255C98A24(&v43, &v50);
  sub_255C99E50(v42);
  sub_255CBEFF8(v40);
  sub_255C98A24(&v41, &v51);
  sub_255C99E50(v40);
  sub_255CBEFF8(v38);
  sub_255C98A24(&v39, &v52);
  sub_255C99E50(v38);
  v13 = (a2 + v12[9]);
  v15 = *v13;
  v14 = v13[1];
  v46[0] = v15;
  v46[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE710);
  sub_255D06DA8();
  v16 = v44[0];
  v17 = a2 + v12[7];
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    LOBYTE(v46[0]) = v18 & 1;
  }

  else
  {

    sub_255D07438();
    v19 = sub_255D066C8();
    sub_255D05D88();

    v20 = v32;
    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C74DA4(v18, 0);
    (*(v33 + 8))(v20, v34);
    LOBYTE(v18) = v46[0];
  }

  sub_255C7299C(v11, &v6[v4[5]], &qword_27F7DDCB0);
  sub_255CA1EB0(v48, &v6[v4[6]]);
  v21 = v4[9];
  v22 = sub_255D059D8();
  (*(*(v22 - 8) + 16))(&v6[v21], v36, v22);
  sub_255D06478();
  *v6 = sub_255D06988();
  *(v6 + 1) = v23;
  v6[16] = v24 & 1;
  *(v6 + 3) = v25;
  v6[v4[10]] = 0;
  *&v6[v4[7]] = v16;
  v6[v4[8]] = v18 & 1;
  sub_255C9F924(v35);
  sub_255CA1F0C(v48);
  sub_255C76B94(v11, &qword_27F7DDCB0);
  v26 = *v6;
  v27 = *(v6 + 1);
  v28 = v6[16];
  v29 = *(v6 + 3);
  sub_255C8A25C(*v6, v27, v28);

  result = sub_255CA1F60(v6, type metadata accessor for TextInlineRenderer);
  v31 = v37;
  *v37 = v26;
  v31[1] = v27;
  *(v31 + 16) = v28;
  v31[3] = v29;
  return result;
}

uint64_t sub_255C9D7F8(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_255D07308();
  v1[7] = sub_255D072F8();
  v2 = swift_task_alloc();
  v1[8] = v2;
  *v2 = v1;
  v2[1] = sub_255C9D8A8;

  return sub_255C9DBB4();
}

uint64_t sub_255C9D8A8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_255D072E8();
    v7 = v6;
    v8 = sub_255C9DAF0;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_255D072E8();
    v7 = v9;
    v8 = sub_255C9DA38;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_255C9DA38()
{

  v1 = v0[9];
  v2 = v0[5];
  v3 = (v2 + *(type metadata accessor for InlineText() + 36));
  v5 = *v3;
  v4 = v3[1];
  v0[2] = v5;
  v0[3] = v4;
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE710);
  sub_255D06DB8();
  v6 = v0[1];

  return v6();
}

uint64_t sub_255C9DAF0()
{

  v1 = sub_255CD484C(MEMORY[0x277D84F90]);
  v2 = v0[5];
  v3 = (v2 + *(type metadata accessor for InlineText() + 36));
  v5 = *v3;
  v4 = v3[1];
  v0[2] = v5;
  v0[3] = v4;
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE710);
  sub_255D06DB8();
  v6 = v0[1];

  return v6();
}

uint64_t sub_255C9DBB4()
{
  v1[9] = v0;
  v1[10] = sub_255D07308();
  v1[11] = sub_255D072F8();
  v3 = sub_255D072E8();
  v1[12] = v3;
  v1[13] = v2;

  return MEMORY[0x2822009F8](sub_255C9DC50, v3, v2);
}

uint64_t sub_255C9DC50()
{
  v1 = *(v0 + 72);
  isUniquelyReferenced_nonNull_native = type metadata accessor for InlineText();
  v10 = 0;
  v11 = *(v1 + *(isUniquelyReferenced_nonNull_native + 40));
  v42 = *(v11 + 16);
  v40 = v11;
  v12 = v11 + 56;
  v38 = v11 + 56;
  v39 = MEMORY[0x277D84F90];
LABEL_2:
  v13 = (v12 + 32 * v10);
  while (v42 != v10)
  {
    if (v10 >= *(v40 + 16))
    {
      __break(1u);
      return MEMORY[0x282200740](isUniquelyReferenced_nonNull_native, v3, v4, v5, v6, v7, v8, v9);
    }

    v43 = v13 + 32;
    v45 = v10 + 1;
    v14 = *(v13 - 2);
    v15 = *(v13 - 1);
    v16 = *(v13 - 3);
    v17 = *v13;
    sub_255C74200(v16, v14, v15, *v13);
    sub_255C7407C(v16, v14, v15, v17, (v41 + 16));
    v19 = *(v41 + 16);
    v18 = *(v41 + 24);
    v21 = *(v41 + 32);
    v20 = *(v41 + 40);
    v22 = *(v41 + 48);
    v23 = *(v41 + 56);
    v24 = v15;
    v10 = v45;
    isUniquelyReferenced_nonNull_native = sub_255C7429C(v16, v14, v24, v17);
    v13 = v43;
    if (v18)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_255C96AC8(0, *(v39 + 16) + 1, 1, v39);
        v39 = isUniquelyReferenced_nonNull_native;
      }

      v26 = *(v39 + 16);
      v25 = *(v39 + 24);
      if (v26 >= v25 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_255C96AC8((v25 > 1), v26 + 1, 1, v39);
        v39 = isUniquelyReferenced_nonNull_native;
      }

      *(v39 + 16) = v26 + 1;
      v27 = (v39 + 48 * v26);
      v27[4] = v19;
      v27[5] = v18;
      v27[6] = v21;
      v27[7] = v20;
      v27[8] = v22;
      v27[9] = v23;
      v12 = v38;
      goto LABEL_2;
    }
  }

  v28 = sub_255CA1728(v39);
  *(v41 + 112) = v28;

  if (*(v28 + 16))
  {
    v29 = *(v41 + 72);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE718);
    v31 = sub_255D072F8();
    *(v41 + 120) = v31;
    v32 = swift_task_alloc();
    *(v41 + 128) = v32;
    *(v32 + 16) = v28;
    *(v32 + 24) = v29;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6E8);
    v34 = swift_task_alloc();
    *(v41 + 136) = v34;
    *v34 = v41;
    v34[1] = sub_255C9DF88;
    v6 = MEMORY[0x277D85700];
    v7 = &unk_255D0CC88;
    isUniquelyReferenced_nonNull_native = v41 + 64;
    v3 = v30;
    v4 = v33;
    v5 = v31;
    v8 = v32;
    v9 = v30;

    return MEMORY[0x282200740](isUniquelyReferenced_nonNull_native, v3, v4, v5, v6, v7, v8, v9);
  }

  v35 = sub_255CD484C(MEMORY[0x277D84F90]);
  v36 = *(v41 + 8);

  return v36(v35);
}