void sub_215A3C1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = a1 - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v19 = v10;
    v20 = v9;
    while (1)
    {
      v22 = v11;
      v21 = *v9;
      v12 = v21;
      v13 = v11;
      v14 = v12;
      v15 = sub_215A2F820(&v22, &v21, a5);

      if (v5)
      {
        break;
      }

      if (v15)
      {
        if (!v8)
        {
          __break(1u);
          return;
        }

        v16 = *v9;
        v11 = *(v9 + 8);
        *v9 = v11;
        *(v9 + 8) = v16;
        v9 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v20 + 8;
      v10 = v19 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_215A3C2E0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v8 = a5;
  v9 = a3[1];
  if (v9 < 1)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_105:
    v6 = v12;
    v12 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_107;
  }

  v10 = 0;
  if (a5)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  v12 = MEMORY[0x277D84F90];
  v128 = v11;
  while (1)
  {
    v13 = v10;
    v14 = v10 + 1;
    v118 = v10;
    if (v10 + 1 >= v9)
    {
      ++v10;
    }

    else
    {
      v126 = v9;
      v15 = *a3;
      v131 = *(*a3 + 8 * v14);
      v16 = v13;
      v129 = *(v15 + 8 * v13);
      v17 = v129;
      v18 = v131;
      v19 = v17;
      v121 = sub_215A2FFB4(&v131, &v129, v8);
      if (v7)
      {

        return;
      }

      v20 = v16 + 2;
      v8 = 8 * v16;
      v7 = (v15 + 8 * v16 + 16);
      v6 = v121;
      v123 = v12;
      while (v126 != v20)
      {
        v27 = *(v7 - 1);
        v28 = *v7;
        v29 = v27;
        v30 = sub_215A707D0();
        if (v31)
        {
          v32 = v31;
        }

        else
        {
          v33 = [v28 address];
          v34 = sub_215A70540();
          v32 = v35;

          v30 = v34;
        }

        v131 = v30;
        v132 = v32;
        v25 = sub_215A707D0();
        if (v36)
        {
          v24 = v36;
        }

        else
        {
          v21 = [v29 address];
          v22 = sub_215A70540();
          v24 = v23;

          v25 = v22;
          v6 = v121;
        }

        v129 = v25;
        v130 = v24;
        sub_215A41998();
        v26 = sub_215A70B60();

        v11 = v128;
        ++v20;
        ++v7;
        v12 = v123;
        if (((v6 ^ (v26 != v128)) & 1) == 0)
        {
          v10 = v20 - 1;
          v13 = v118;
          if ((v6 & 1) == 0)
          {
            goto LABEL_29;
          }

LABEL_22:
          if (v10 >= v13)
          {
            if (v13 < v10)
            {
              v37 = 8 * v10 - 8;
              v38 = v10;
              v39 = v13;
              do
              {
                if (v39 != --v38)
                {
                  v40 = *a3;
                  if (!*a3)
                  {
                    goto LABEL_141;
                  }

                  v41 = *(v40 + v8);
                  *(v40 + v8) = *(v40 + v37);
                  *(v40 + v37) = v41;
                }

                ++v39;
                v37 -= 8;
                v8 += 8;
              }

              while (v39 < v38);
            }

            goto LABEL_29;
          }

LABEL_137:
          __break(1u);
LABEL_138:
          v6 = sub_215A3ED68(v6);
LABEL_107:
          v133 = v6;
          v110 = *(v6 + 16);
          if (v110 >= 2)
          {
            while (*a3)
            {
              v111 = *(v6 + 16 * v110);
              v112 = *(v6 + 16 * (v110 - 1) + 40);
              sub_215A3E0AC((*a3 + 8 * v111), (*a3 + 8 * *(v6 + 16 * (v110 - 1) + 32)), (*a3 + 8 * v112), v12, v8);
              if (v7)
              {
                goto LABEL_115;
              }

              if (v112 < v111)
              {
                goto LABEL_131;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_215A3ED68(v6);
              }

              if (v110 - 2 >= *(v6 + 16))
              {
                goto LABEL_132;
              }

              v113 = (v6 + 16 * v110);
              *v113 = v111;
              v113[1] = v112;
              v133 = v6;
              sub_215A3ECDC(v110 - 1);
              v6 = v133;
              v110 = *(v133 + 16);
              if (v110 <= 1)
              {
                goto LABEL_115;
              }
            }

            goto LABEL_142;
          }

LABEL_115:

          return;
        }
      }

      v10 = v126;
      v13 = v118;
      if (v6)
      {
        goto LABEL_22;
      }

LABEL_29:
      v8 = a5;
      v7 = 0;
    }

    v42 = a3[1];
    if (v10 < v42)
    {
      if (__OFSUB__(v10, v13))
      {
        goto LABEL_134;
      }

      if (v10 - v13 < a4)
      {
        if (__OFADD__(v13, a4))
        {
          goto LABEL_135;
        }

        if (v13 + a4 < v42)
        {
          v42 = v13 + a4;
        }

        if (v42 < v13)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v10 != v42)
        {
          break;
        }
      }
    }

LABEL_53:
    if (v10 < v13)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_215A38FAC(0, *(v12 + 2) + 1, 1, v12);
    }

    v65 = *(v12 + 2);
    v64 = *(v12 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      v12 = sub_215A38FAC((v64 > 1), v65 + 1, 1, v12);
    }

    *(v12 + 2) = v66;
    v67 = &v12[16 * v65];
    *(v67 + 4) = v118;
    *(v67 + 5) = v10;
    v68 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v65)
    {
      while (1)
      {
        v6 = v66 - 1;
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v69 = *(v12 + 4);
          v70 = *(v12 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_73:
          if (v72)
          {
            goto LABEL_122;
          }

          v85 = &v12[16 * v66];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_125;
          }

          v91 = &v12[16 * v6 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_129;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v6 = v66 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v95 = &v12[16 * v66];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_87:
        if (v90)
        {
          goto LABEL_124;
        }

        v98 = &v12[16 * v6];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_127;
        }

        if (v101 < v89)
        {
          goto LABEL_6;
        }

LABEL_94:
        v106 = v6 - 1;
        if (v6 - 1 >= v66)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v107 = *&v12[16 * v106 + 32];
        v108 = *&v12[16 * v6 + 40];
        sub_215A3E0AC((*a3 + 8 * v107), (*a3 + 8 * *&v12[16 * v6 + 32]), (*a3 + 8 * v108), v68, v8);
        if (v7)
        {
          goto LABEL_115;
        }

        if (v108 < v107)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_215A3ED68(v12);
        }

        if (v106 >= *(v12 + 2))
        {
          goto LABEL_119;
        }

        v109 = &v12[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v133 = v12;
        sub_215A3ECDC(v6);
        v12 = v133;
        v66 = *(v133 + 16);
        if (v66 <= 1)
        {
          goto LABEL_6;
        }
      }

      v73 = &v12[16 * v66 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_120;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_121;
      }

      v80 = &v12[16 * v66];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_123;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_126;
      }

      if (v84 >= v76)
      {
        v102 = &v12[16 * v6 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_130;
        }

        if (v71 < v105)
        {
          v6 = v66 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_6:
    v9 = a3[1];
    v11 = v128;
    if (v10 >= v9)
    {
      goto LABEL_105;
    }
  }

  v119 = v42;
  v124 = v12;
  v116 = v7;
  v43 = *a3;
  v44 = *a3 + 8 * v10 - 8;
  v45 = v13 - v10;
LABEL_40:
  v127 = v10;
  v46 = *(v43 + 8 * v10);
  v120 = v45;
  v122 = v44;
  while (1)
  {
    v47 = *v44;
    v6 = v46;
    v48 = v47;
    v49 = sub_215A707D0();
    if (v50)
    {
      v51 = v50;
    }

    else
    {
      v52 = [v6 address];
      v53 = sub_215A70540();
      v51 = v54;

      v49 = v53;
    }

    v131 = v49;
    v132 = v51;
    v55 = sub_215A707D0();
    if (v56)
    {
      v57 = v56;
    }

    else
    {
      v58 = [v48 address];
      v59 = sub_215A70540();
      v57 = v60;

      v55 = v59;
      v11 = v128;
    }

    v129 = v55;
    v130 = v57;
    sub_215A41998();
    v61 = sub_215A70B60();

    if (v61 != v11)
    {
LABEL_39:
      v10 = v127 + 1;
      v44 = v122 + 8;
      v45 = v120 - 1;
      if (v127 + 1 != v119)
      {
        goto LABEL_40;
      }

      v8 = a5;
      v7 = v116;
      v12 = v124;
      v13 = v118;
      v10 = v119;
      goto LABEL_53;
    }

    if (!v43)
    {
      break;
    }

    v62 = *v44;
    v46 = *(v44 + 8);
    *v44 = v46;
    *(v44 + 8) = v62;
    v44 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

void sub_215A3CB00(char **a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v8 = a5;
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v13 = MEMORY[0x277D84F90];
LABEL_95:
    v6 = v13;
    v13 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_97;
  }

  v11 = 0;
  v12 = -1;
  if (a5)
  {
    v12 = 1;
  }

  v124 = v12;
  v13 = MEMORY[0x277D84F90];
  while (1)
  {
    v14 = v11;
    if (v11 + 1 >= v10)
    {
      v22 = v11 + 1;
      goto LABEL_24;
    }

    v122 = v10;
    v15 = *v9;
    v127 = *&(*v9)[8 * v11 + 8];
    v125 = *&v15[8 * v11];
    v16 = v125;
    v17 = v127;
    v18 = v16;
    v120 = sub_215A2FEC0(&v127, &v125, v8);
    if (v7)
    {

      return;
    }

    v111 = v13;

    v19 = v14 + 2;
    v114 = v14;
    v20 = 8 * v14;
    v21 = &v15[v20 + 16];
    while (1)
    {
      v22 = v122;
      if (v122 == v19)
      {
        break;
      }

      v23 = *(v21 - 1);
      v6 = *v21;
      v13 = v23;
      v24 = [v6 title];
      v25 = sub_215A70540();
      v27 = v26;

      v127 = v25;
      v128 = v27;
      v28 = [v13 title];
      v29 = sub_215A70540();
      v31 = v30;

      v125 = v29;
      v126 = v31;
      sub_215A41998();
      v32 = sub_215A70B60();

      ++v19;
      ++v21;
      if (((v120 ^ (v32 != v124)) & 1) == 0)
      {
        v22 = v19 - 1;
        break;
      }
    }

    v7 = 0;
    v9 = a3;
    v8 = a5;
    if (!v120)
    {
      v13 = v111;
LABEL_22:
      v14 = v114;
      goto LABEL_24;
    }

    v33 = v114;
    if (v22 < v114)
    {
      goto LABEL_127;
    }

    if (v114 < v22)
    {
      v34 = 8 * v22 - 8;
      v35 = v22;
      v13 = v111;
      do
      {
        if (v33 != --v35)
        {
          v36 = *a3;
          if (!*a3)
          {
            goto LABEL_131;
          }

          v37 = *&v36[v20];
          *&v36[v20] = *&v36[v34];
          *&v36[v34] = v37;
        }

        ++v33;
        v34 -= 8;
        v20 += 8;
      }

      while (v33 < v35);
      goto LABEL_22;
    }

    v13 = v111;
    v14 = v114;
LABEL_24:
    v38 = v9[1];
    if (v22 < v38)
    {
      if (__OFSUB__(v22, v14))
      {
        goto LABEL_124;
      }

      if (v22 - v14 < a4)
      {
        if (__OFADD__(v14, a4))
        {
          goto LABEL_125;
        }

        if (v14 + a4 >= v38)
        {
          v39 = v9[1];
        }

        else
        {
          v39 = (v14 + a4);
        }

        if (v39 < v14)
        {
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          v6 = sub_215A3ED68(v6);
LABEL_97:
          v129 = v6;
          v104 = *(v6 + 2);
          if (v104 >= 2)
          {
            while (*v9)
            {
              v105 = *&v6[16 * v104];
              v106 = *&v6[16 * v104 + 24];
              sub_215A3E528(&(*v9)[8 * v105], &(*v9)[8 * *&v6[16 * v104 + 16]], &(*v9)[8 * v106], v13, v8);
              if (v7)
              {
                goto LABEL_105;
              }

              if (v106 < v105)
              {
                goto LABEL_121;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_215A3ED68(v6);
              }

              if (v104 - 2 >= *(v6 + 2))
              {
                goto LABEL_122;
              }

              v107 = &v6[16 * v104];
              *v107 = v105;
              *(v107 + 1) = v106;
              v129 = v6;
              sub_215A3ECDC(v104 - 1);
              v6 = v129;
              v104 = *(v129 + 2);
              if (v104 <= 1)
              {
                goto LABEL_105;
              }
            }

            goto LABEL_132;
          }

LABEL_105:

          return;
        }

        if (v22 != v39)
        {
          break;
        }
      }
    }

    v40 = v22;
    if (v22 < v14)
    {
      goto LABEL_123;
    }

LABEL_34:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_215A38FAC(0, *(v13 + 2) + 1, 1, v13);
    }

    v42 = *(v13 + 2);
    v41 = *(v13 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v13 = sub_215A38FAC((v41 > 1), v42 + 1, 1, v13);
    }

    *(v13 + 2) = v43;
    v44 = &v13[16 * v42];
    *(v44 + 4) = v14;
    *(v44 + 5) = v40;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    v117 = v40;
    if (v42)
    {
      while (1)
      {
        v45 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v46 = *(v13 + 4);
          v47 = *(v13 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_53:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v13[16 * v43];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v13[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v43 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v72 = &v13[16 * v43];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_67:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v13[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_5;
        }

LABEL_74:
        v83 = v45 - 1;
        if (v45 - 1 >= v43)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
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
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*v9)
        {
          goto LABEL_130;
        }

        v84 = *&v13[16 * v83 + 32];
        v85 = *&v13[16 * v45 + 40];
        sub_215A3E528(&(*v9)[8 * v84], &(*v9)[8 * *&v13[16 * v45 + 32]], &(*v9)[8 * v85], v6, v8);
        if (v7)
        {
          goto LABEL_105;
        }

        if (v85 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_215A3ED68(v13);
        }

        if (v83 >= *(v13 + 2))
        {
          goto LABEL_109;
        }

        v86 = &v13[16 * v83];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        v129 = v13;
        sub_215A3ECDC(v45);
        v13 = v129;
        v43 = *(v129 + 2);
        if (v43 <= 1)
        {
          goto LABEL_5;
        }
      }

      v50 = &v13[16 * v43 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v13[16 * v43];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v13[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v43 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_5:
    v10 = v9[1];
    v11 = v117;
    if (v117 >= v10)
    {
      goto LABEL_95;
    }
  }

  v112 = v13;
  v113 = v7;
  v6 = *v9;
  v87 = &(*v9)[8 * v22 - 8];
  v115 = v14;
  v88 = v14 - v22;
  v118 = v39;
LABEL_85:
  v121 = v87;
  v123 = v22;
  v89 = *&v6[8 * v22];
  v119 = v88;
  while (1)
  {
    v90 = *v87;
    v91 = v89;
    v92 = v90;
    v93 = [v91 title];
    v94 = sub_215A70540();
    v96 = v95;

    v127 = v94;
    v128 = v96;
    v97 = [v92 title];
    v98 = sub_215A70540();
    v100 = v99;

    v125 = v98;
    v126 = v100;
    sub_215A41998();
    v101 = sub_215A70B60();

    if (v101 != v124)
    {
LABEL_84:
      v22 = v123 + 1;
      v87 = v121 + 8;
      v40 = v118;
      v88 = v119 - 1;
      if ((v123 + 1) != v118)
      {
        goto LABEL_85;
      }

      v13 = v112;
      v7 = v113;
      v9 = a3;
      v8 = a5;
      v14 = v115;
      if (v118 < v115)
      {
        goto LABEL_123;
      }

      goto LABEL_34;
    }

    if (!v6)
    {
      break;
    }

    v102 = *v87;
    v89 = *(v87 + 8);
    *v87 = v89;
    *(v87 + 8) = v102;
    v87 -= 8;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_215A3D2A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v177 = a5;
  v158 = a1;
  v9 = sub_215A6F910();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v174 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EB10);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v170 = &v153 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v153 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v171 = &v153 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v167 = &v153 - v24;
  MEMORY[0x28223BE20](v23);
  v166 = &v153 - v28;
  v163 = a3;
  v29 = *(a3 + 8);
  if (v29 >= 1)
  {
    v164 = v27;
    v165 = v26;
    v169 = v25;
    v155 = a4;
    v179 = (v10 + 48);
    v180 = (v10 + 56);
    v173 = (v10 + 16);
    v30 = MEMORY[0x277D84F90];
    v172 = (v10 + 8);
    v31 = 0;
    v168 = v9;
    v175 = v20;
    while (1)
    {
      v32 = v31;
      v33 = v31 + 1;
      if (v31 + 1 < v29)
      {
        v181 = v29;
        v157 = v30;
        v10 = *v163;
        v34 = *(*v163 + 8 * v33);
        v182 = *(*v163 + 8 * v32);
        v35 = v182;
        v183[0] = v34;
        v36 = v34;
        v37 = v35;
        LODWORD(v178) = sub_215A2F820(v183, &v182, v177);
        if (v6)
        {

          return;
        }

        v38 = (v32 + 2);
        v156 = v32;
        v39 = 8 * v32;
        v40 = (v10 + 8 * v32 + 16);
        while (1)
        {
          v41 = v181;
          if (v181 == v38)
          {
            break;
          }

          v42 = *v40;
          v182 = *(v40 - 1);
          v43 = v182;
          v183[0] = v42;
          v44 = v42;
          v45 = v43;
          v10 = sub_215A2F820(v183, &v182, v177);

          ++v38;
          ++v40;
          if ((v178 ^ v10))
          {
            v41 = (v38 - 1);
            break;
          }
        }

        v6 = 0;
        v30 = v157;
        if (v178)
        {
          v32 = v156;
          if (v41 < v156)
          {
            goto LABEL_154;
          }

          if (v156 < v41)
          {
            v46 = 8 * v41 - 8;
            v47 = v41;
            v48 = v156;
            do
            {
              if (v48 != --v47)
              {
                v50 = *v163;
                if (!*v163)
                {
                  goto LABEL_158;
                }

                v49 = *(v50 + v39);
                *(v50 + v39) = *(v50 + v46);
                *(v50 + v46) = v49;
              }

              ++v48;
              v46 -= 8;
              v39 += 8;
            }

            while (v48 < v47);
          }

          v33 = v41;
        }

        else
        {
          v33 = v41;
          v32 = v156;
        }
      }

      v51 = v163[1];
      if (v33 >= v51)
      {
        v55 = v33;
        if (v33 < v32)
        {
          goto LABEL_149;
        }
      }

      else
      {
        v52 = v33;
        v73 = __OFSUB__(v33, v32);
        v53 = v33 - v32;
        if (v73)
        {
          goto LABEL_150;
        }

        if (v53 >= v155)
        {
          goto LABEL_29;
        }

        v54 = v32 + v155;
        if (__OFADD__(v32, v155))
        {
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
          return;
        }

        if (v54 >= v51)
        {
          v54 = v163[1];
        }

        if (v54 < v32)
        {
          goto LABEL_153;
        }

        if (v52 == v54)
        {
LABEL_29:
          v55 = v52;
          if (v52 < v32)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v157 = v30;
          v154 = v6;
          v176 = *v163;
          v103 = v176 + 8 * v52 - 8;
          v156 = v32;
          v104 = v32 - v52;
          v159 = v54;
          do
          {
            v162 = v52;
            v105 = *(v176 + 8 * v52);
            v160 = v104;
            v161 = v103;
            do
            {
              v106 = *v103;
              v107 = v105;
              v181 = v106;
              v178 = v107;
              v108 = [v107 dateAdded];
              if (v177)
              {
                if (v108)
                {
                  v109 = v108;
                  sub_215A6F8E0();

                  v110 = 0;
                }

                else
                {
                  v110 = 1;
                }

                v114 = *v180;
                (*v180)(v20, v110, 1, v9);
                v115 = v20;
                v116 = v171;
                sub_215A26130(v115, v171, &unk_27CA7EB10);
                v117 = *v179;
                if ((*v179)(v116, 1, v9))
                {
                  sub_21583F14C(v116, &unk_27CA7EB10);
                  v118 = 0.0;
                }

                else
                {
                  v119 = v174;
                  (*v173)(v174, v116, v9);
                  sub_21583F14C(v116, &unk_27CA7EB10);
                  sub_215A6F8D0();
                  v118 = v120;
                  (*v172)(v119, v9);
                }

                v121 = v170;
                v122 = [v181 dateAdded];
                if (v122)
                {
                  v123 = v169;
                  v124 = v122;
                  sub_215A6F8E0();

                  v125 = 0;
                }

                else
                {
                  v125 = 1;
                  v123 = v169;
                }

                v10 = v168;
                v114(v123, v125, 1, v168);
                v126 = v123;
                v127 = v121;
                v9 = v10;
                sub_215A26130(v126, v127, &unk_27CA7EB10);
                if (v117(v127, 1, v10))
                {
                  sub_21583F14C(v127, &unk_27CA7EB10);
                  v128 = 0.0;
                }

                else
                {
                  v10 = v174;
                  (*v173)(v174, v127, v9);
                  sub_21583F14C(v127, &unk_27CA7EB10);
                  sub_215A6F8D0();
                  v128 = v129;
                  (*v172)(v10, v9);
                }

                v20 = v175;

                if (v118 >= v128)
                {
                  break;
                }
              }

              else
              {
                if (v108)
                {
                  v111 = v167;
                  v112 = v108;
                  sub_215A6F8E0();

                  v113 = 0;
                }

                else
                {
                  v113 = 1;
                  v111 = v167;
                }

                v130 = *v180;
                (*v180)(v111, v113, 1, v9);
                v131 = v111;
                v132 = v166;
                sub_215A26130(v131, v166, &unk_27CA7EB10);
                v133 = v9;
                v134 = *v179;
                if ((*v179)(v132, 1, v133))
                {
                  v135 = v133;
                  sub_21583F14C(v132, &unk_27CA7EB10);
                  v136 = 0.0;
                }

                else
                {
                  v137 = v174;
                  (*v173)(v174, v132, v133);
                  sub_21583F14C(v132, &unk_27CA7EB10);
                  sub_215A6F8D0();
                  v136 = v138;
                  v135 = v133;
                  (*v172)(v137, v133);
                }

                v139 = [v181 dateAdded];
                if (v139)
                {
                  v140 = v165;
                  v141 = v139;
                  sub_215A6F8E0();

                  v10 = v140;
                  v142 = 0;
                }

                else
                {
                  v142 = 1;
                  v10 = v165;
                }

                v130(v10, v142, 1, v135);
                v143 = v164;
                sub_215A26130(v10, v164, &unk_27CA7EB10);
                if (v134(v143, 1, v135))
                {
                  sub_21583F14C(v143, &unk_27CA7EB10);
                  v144 = 0.0;
                }

                else
                {
                  v10 = v174;
                  (*v173)(v174, v143, v135);
                  sub_21583F14C(v143, &unk_27CA7EB10);
                  sub_215A6F8D0();
                  v144 = v145;
                  (*v172)(v10, v135);
                }

                v9 = v135;

                v20 = v175;
                if (v144 >= v136)
                {
                  break;
                }
              }

              if (!v176)
              {
                goto LABEL_155;
              }

              v146 = *v103;
              v105 = *(v103 + 8);
              *v103 = v105;
              *(v103 + 8) = v146;
              v103 -= 8;
            }

            while (!__CFADD__(v104++, 1));
            v52 = v162 + 1;
            v103 = v161 + 8;
            v104 = v160 - 1;
          }

          while (v162 + 1 != v159);
          v55 = v159;
          v6 = v154;
          v30 = v157;
          v32 = v156;
          if (v159 < v156)
          {
            goto LABEL_149;
          }
        }
      }

      v56 = v32;
      v162 = v55;
      v57 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v30 = v57;
      }

      else
      {
        v30 = sub_215A38FAC(0, *(v57 + 2) + 1, 1, v57);
      }

      v32 = *(v30 + 2);
      v58 = *(v30 + 3);
      v10 = v32 + 1;
      if (v32 >= v58 >> 1)
      {
        v30 = sub_215A38FAC((v58 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v10;
      v59 = &v30[16 * v32];
      v60 = v162;
      *(v59 + 4) = v56;
      *(v59 + 5) = v60;
      v61 = *v158;
      if (!*v158)
      {
        goto LABEL_159;
      }

      if (v32)
      {
        while (1)
        {
          v62 = v10 - 1;
          if (v10 >= 4)
          {
            break;
          }

          if (v10 == 3)
          {
            v63 = *(v30 + 4);
            v64 = *(v30 + 5);
            v73 = __OFSUB__(v64, v63);
            v65 = v64 - v63;
            v66 = v73;
LABEL_51:
            if (v66)
            {
              goto LABEL_138;
            }

            v79 = &v30[16 * v10];
            v81 = *v79;
            v80 = *(v79 + 1);
            v82 = __OFSUB__(v80, v81);
            v83 = v80 - v81;
            v84 = v82;
            if (v82)
            {
              goto LABEL_141;
            }

            v85 = &v30[16 * v62 + 32];
            v87 = *v85;
            v86 = *(v85 + 1);
            v73 = __OFSUB__(v86, v87);
            v88 = v86 - v87;
            if (v73)
            {
              goto LABEL_144;
            }

            if (__OFADD__(v83, v88))
            {
              goto LABEL_145;
            }

            if (v83 + v88 >= v65)
            {
              if (v65 < v88)
              {
                v62 = v10 - 2;
              }

              goto LABEL_72;
            }

            goto LABEL_65;
          }

          v89 = &v30[16 * v10];
          v91 = *v89;
          v90 = *(v89 + 1);
          v73 = __OFSUB__(v90, v91);
          v83 = v90 - v91;
          v84 = v73;
LABEL_65:
          if (v84)
          {
            goto LABEL_140;
          }

          v92 = &v30[16 * v62];
          v94 = *(v92 + 4);
          v93 = *(v92 + 5);
          v73 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v73)
          {
            goto LABEL_143;
          }

          if (v95 < v83)
          {
            goto LABEL_3;
          }

LABEL_72:
          v32 = v62 - 1;
          if (v62 - 1 >= v10)
          {
            __break(1u);
LABEL_134:
            __break(1u);
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
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            v148 = sub_215A3ED68(v10);
            goto LABEL_123;
          }

          if (!*v163)
          {
            goto LABEL_156;
          }

          v100 = v30;
          v10 = *&v30[16 * v32 + 32];
          v101 = *&v30[16 * v62 + 40];
          sub_215A3E920((*v163 + 8 * v10), (*v163 + 8 * *&v30[16 * v62 + 32]), (*v163 + 8 * v101), v61, v177);
          if (v6)
          {
            goto LABEL_131;
          }

          if (v101 < v10)
          {
            goto LABEL_134;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v100 = sub_215A3ED68(v100);
          }

          if (v32 >= *(v100 + 2))
          {
            goto LABEL_135;
          }

          v102 = &v100[16 * v32];
          *(v102 + 4) = v10;
          *(v102 + 5) = v101;
          v184 = v100;
          sub_215A3ECDC(v62);
          v30 = v184;
          v10 = *(v184 + 2);
          if (v10 <= 1)
          {
            goto LABEL_3;
          }
        }

        v67 = &v30[16 * v10 + 32];
        v68 = *(v67 - 64);
        v69 = *(v67 - 56);
        v73 = __OFSUB__(v69, v68);
        v70 = v69 - v68;
        if (v73)
        {
          goto LABEL_136;
        }

        v72 = *(v67 - 48);
        v71 = *(v67 - 40);
        v73 = __OFSUB__(v71, v72);
        v65 = v71 - v72;
        v66 = v73;
        if (v73)
        {
          goto LABEL_137;
        }

        v74 = &v30[16 * v10];
        v76 = *v74;
        v75 = *(v74 + 1);
        v73 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v73)
        {
          goto LABEL_139;
        }

        v73 = __OFADD__(v65, v77);
        v78 = v65 + v77;
        if (v73)
        {
          goto LABEL_142;
        }

        if (v78 >= v70)
        {
          v96 = &v30[16 * v62 + 32];
          v98 = *v96;
          v97 = *(v96 + 1);
          v73 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v73)
          {
            goto LABEL_148;
          }

          if (v65 < v99)
          {
            v62 = v10 - 2;
          }

          goto LABEL_72;
        }

        goto LABEL_51;
      }

LABEL_3:
      v29 = v163[1];
      v31 = v162;
      if (v162 >= v29)
      {
        goto LABEL_120;
      }
    }
  }

  v30 = MEMORY[0x277D84F90];
LABEL_120:
  v32 = *v158;
  if (!*v158)
  {
    goto LABEL_160;
  }

  v10 = v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_151;
  }

  v148 = v10;
LABEL_123:
  v184 = v148;
  v10 = *(v148 + 2);
  if (v10 >= 2)
  {
    while (*v163)
    {
      v149 = *&v148[16 * v10];
      v150 = v148;
      v151 = *&v148[16 * v10 + 24];
      sub_215A3E920((*v163 + 8 * v149), (*v163 + 8 * *&v148[16 * v10 + 16]), (*v163 + 8 * v151), v32, v177);
      if (v6)
      {
        goto LABEL_131;
      }

      if (v151 < v149)
      {
        goto LABEL_146;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v150 = sub_215A3ED68(v150);
      }

      if (v10 - 2 >= *(v150 + 2))
      {
        goto LABEL_147;
      }

      v152 = &v150[16 * v10];
      *v152 = v149;
      *(v152 + 1) = v151;
      v184 = v150;
      sub_215A3ECDC(v10 - 1);
      v148 = v184;
      v10 = *(v184 + 2);
      if (v10 <= 1)
      {
        goto LABEL_131;
      }
    }

    goto LABEL_157;
  }

LABEL_131:
}

uint64_t sub_215A3E0AC(void **__dst, id *__src, id *a3, id *a4, uint64_t a5)
{
  v6 = a3;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    v29 = __src;
    if (a4 != __src || &__src[v13] <= a4)
    {
      v30 = a4;
      memmove(a4, __src, 8 * v13);
      a4 = v30;
    }

    v51 = a4;
    if (v11 < 8)
    {
      v15 = a4;
    }

    else
    {
      v15 = a4;
      if (v29 > v7)
      {
        v31 = -1;
        if (a5)
        {
          v31 = 1;
        }

        v47 = v31;
        v16 = &a4[v13];
        v44 = v7;
LABEL_35:
        v32 = v29 - 1;
        --v6;
        v33 = v16;
        v46 = v29;
        v49 = v29 - 1;
        do
        {
          v34 = *(v16 - 1);
          v16 -= 8;
          v35 = *v32;
          v36 = v34;
          v37 = v35;
          sub_215A707D0();
          if (!v38)
          {
            v39 = [v36 address];
            sub_215A70540();

            v29 = v46;
          }

          sub_215A707D0();
          if (!v40)
          {
            v41 = [v37 address];
            sub_215A70540();

            v29 = v46;
          }

          sub_215A41998();
          v42 = sub_215A70B60();

          if (v42 == v47)
          {
            if (v6 + 1 != v29)
            {
              *v6 = *v49;
            }

            v15 = v51;
            v16 = v33;
            if (v33 <= v51 || (v29 = v49, v49 <= v44))
            {
              v29 = v49;
              goto LABEL_52;
            }

            goto LABEL_35;
          }

          v32 = v49;
          if (v6 + 1 != v33)
          {
            *v6 = *v16;
          }

          --v6;
          v33 = v16;
        }

        while (v16 > v51);
        v15 = v51;
        goto LABEL_52;
      }
    }

    v16 = &a4[v13];
    goto LABEL_52;
  }

  v15 = a4;
  if (a4 != __dst || &__dst[v10] <= a4)
  {
    memmove(a4, __dst, 8 * v10);
  }

  v16 = &v15[v10];
  if (v8 >= 8 && __src < v6)
  {
    v17 = __src;
    v18 = -1;
    if (a5)
    {
      v18 = 1;
    }

    v48 = v18;
    v45 = v6;
    while (1)
    {
      v19 = *v15;
      v20 = *v17;
      v21 = v19;
      sub_215A707D0();
      v50 = v20;
      if (!v22)
      {
        v23 = [v20 address];
        sub_215A70540();
      }

      sub_215A707D0();
      if (!v24)
      {
        v25 = [v21 address];
        sub_215A70540();

        v6 = v45;
      }

      sub_215A41998();
      v26 = sub_215A70B60();

      if (v26 != v48)
      {
        break;
      }

      v27 = v17;
      v28 = v7 == v17++;
      if (!v28)
      {
        goto LABEL_23;
      }

LABEL_24:
      ++v7;
      if (v15 >= v16 || v17 >= v6)
      {
        goto LABEL_26;
      }
    }

    v27 = v15;
    v28 = v7 == v15++;
    if (v28)
    {
      goto LABEL_24;
    }

LABEL_23:
    *v7 = *v27;
    goto LABEL_24;
  }

LABEL_26:
  v29 = v7;
LABEL_52:
  if (v29 != v15 || v29 >= (v15 + ((v16 - v15 + (v16 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v29, v15, 8 * ((v16 - v15) / 8));
  }

  return 1;
}

uint64_t sub_215A3E528(id *__dst, id *__src, id *a3, id *a4, uint64_t a5)
{
  v6 = a3;
  v7 = __src;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[v13] <= a4)
    {
      v25 = a4;
      memmove(a4, __src, 8 * v13);
      a4 = v25;
    }

    v43 = &a4[v13];
    v14 = a4;
    if (v11 >= 8 && v7 > __dst)
    {
      v26 = -1;
      if (a5)
      {
        v26 = 1;
      }

      v40 = v26;
      v41 = a4;
LABEL_31:
      v27 = v7 - 1;
      --v6;
      v28 = v43;
      v42 = v7 - 1;
      do
      {
        v29 = *--v28;
        v30 = v6 + 1;
        v31 = *v27;
        v32 = v29;
        v33 = v31;
        v34 = [v32 title];
        sub_215A70540();

        v35 = [v33 title];
        sub_215A70540();

        sub_215A41998();
        v36 = sub_215A70B60();

        if (v36 == v40)
        {
          if (v30 != v7)
          {
            *v6 = *v42;
          }

          v14 = v41;
          if (v43 <= v41 || (--v7, v42 <= __dst))
          {
            v7 = v42;
            goto LABEL_42;
          }

          goto LABEL_31;
        }

        if (v30 != v43)
        {
          *v6 = *v28;
        }

        --v6;
        v43 = v28;
        v14 = v41;
        v27 = v7 - 1;
      }

      while (v28 > v41);
      v43 = v28;
    }
  }

  else
  {
    v14 = a4;
    v15 = __dst;
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v43 = &v14[v10];
    if (v8 >= 8 && v7 < v6)
    {
      v16 = -1;
      if (a5)
      {
        v16 = 1;
      }

      v39 = v16;
      while (1)
      {
        v17 = *v14;
        v18 = *v7;
        v19 = v17;
        v20 = [v18 title];
        sub_215A70540();

        v21 = [v19 title];
        sub_215A70540();

        sub_215A41998();
        v22 = sub_215A70B60();

        if (v22 != v39)
        {
          break;
        }

        v23 = v7;
        v24 = v15 == v7++;
        if (!v24)
        {
          goto LABEL_19;
        }

LABEL_20:
        ++v15;
        if (v14 >= v43 || v7 >= v6)
        {
          goto LABEL_22;
        }
      }

      v23 = v14;
      v24 = v15 == v14++;
      if (v24)
      {
        goto LABEL_20;
      }

LABEL_19:
      *v15 = *v23;
      goto LABEL_20;
    }

LABEL_22:
    v7 = v15;
  }

LABEL_42:
  if (v7 != v14 || v7 >= (v14 + ((v43 - v14 + (v43 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v7, v14, 8 * ((v43 - v14) / 8));
  }

  return 1;
}

uint64_t sub_215A3E920(void **__dst, void **__src, void **a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v17 = &v16[v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_51;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v19 = v17;
      v20 = v8;
      v55 = *v8;
      v21 = v16;
      v54 = *v16;
      v22 = v54;
      v23 = v55;
      v24 = v22;
      v25 = sub_215A2F820(&v55, &v54, a5);
      if (v6)
      {

        v45 = v19 - v21 + 7;
        if (v19 - v21 >= 0)
        {
          v45 = v19 - v21;
        }

        v46 = v45 >> 3;
        if (v9 < v21 || v9 >= (v21 + (v45 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v9, v21, 8 * v46);
          return 1;
        }

        if (v9 == v21)
        {
          return 1;
        }

        v44 = 8 * v46;
        v42 = v9;
        v43 = v21;
        goto LABEL_57;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v18 = v21;
      v16 = v21 + 1;
      v8 = v20;
      if (v9 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v9;
      v17 = v19;
      v6 = 0;
      if (v16 >= v19)
      {
        goto LABEL_10;
      }
    }

    v18 = v20;
    v8 = v20 + 1;
    v16 = v21;
    if (v9 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = *v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v15] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v15);
    a4 = v27;
  }

  v52 = a4;
  v17 = (a4 + 8 * v15);
  if (v13 >= 8 && v8 > v9)
  {
    v28 = -a4;
    v49 = -a4;
    v50 = v9;
LABEL_25:
    v51 = v8;
    v29 = v8 - 1;
    v30 = v17 + v28;
    --v7;
    v31 = v17;
    while (1)
    {
      v32 = *--v31;
      v55 = v32;
      v33 = v29;
      v54 = *v29;
      v34 = v54;
      v35 = v32;
      v36 = v34;
      v37 = sub_215A2F820(&v55, &v54, a5);
      if (v6)
      {
        break;
      }

      v38 = v37;

      v39 = v7 + 1;
      if (v38)
      {
        if (v39 != v51)
        {
          *v7 = *v33;
        }

        v16 = v52;
        v6 = 0;
        if (v17 <= v52 || (v8 = v33, v28 = v49, v33 <= v50))
        {
          v8 = v33;
          goto LABEL_51;
        }

        goto LABEL_25;
      }

      if (v39 != v17)
      {
        *v7 = *v31;
      }

      v30 -= 8;
      --v7;
      v17 = v31;
      v6 = 0;
      v29 = v33;
      if (v31 <= v52)
      {
        v17 = v31;
        v8 = v51;
        v16 = v52;
        goto LABEL_51;
      }
    }

    if (v30 >= 0)
    {
      v40 = v30;
    }

    else
    {
      v40 = v30 + 7;
    }

    v41 = v40 >> 3;
    v42 = v51;
    v43 = v52;
    if (v51 < v52 || v51 >= (v52 + (v40 & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v51, v52, 8 * v41);
      return 1;
    }

    if (v51 == v52)
    {
      return 1;
    }

    v44 = 8 * v41;
    goto LABEL_57;
  }

  v16 = a4;
LABEL_51:
  v47 = v17 - v16 + 7;
  if (v17 - v16 >= 0)
  {
    v47 = v17 - v16;
  }

  if (v8 < v16 || v8 >= (v16 + (v47 & 0xFFFFFFFFFFFFFFF8)) || v8 != v16)
  {
    v44 = 8 * (v47 >> 3);
    v42 = v8;
    v43 = v16;
LABEL_57:
    memmove(v42, v43, v44);
  }

  return 1;
}

uint64_t sub_215A3ECDC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_215A3ED68(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_215A3ED7C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_215A70CD0();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_215A393EC(v3, 0);
  sub_215A3EE10((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_215A3EE10(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_215A70CD0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_215A70CD0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2159FB2D8(&qword_27CA7EB28, &qword_27CA7EB20);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EB20);
            v9 = sub_2159FFC18(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2159F7DA8(0, &unk_2811A28A0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_215A3EFC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_215A70CD0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_215A70CD0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2159FB2D8(&qword_27CA7EB78, &qword_27CA7E7A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E7A0);
            v9 = sub_2159FFCAC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2159F7DA8(0, &unk_2811A25B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_215A3F178(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_215A70CD0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_215A70CD0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2159FB2D8(&qword_27CA7EB58, &qword_27CA7EB50);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EB50);
            v9 = sub_2159FFC18(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2159F7DA8(0, &qword_2811A24F0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_215A3F354(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_215A3F38C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EAD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v26 - v5;
  v7 = sub_215A6FF70();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_215A6FED0();
  sub_215A41A94(&qword_2811A28B8, 255, MEMORY[0x277D28B80]);
  if (*(a1 + 16) != *(sub_215A70620() + 16))
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_215A70C10();

    v28 = 0xD00000000000001ALL;
    v29 = 0x8000000215AC3310;
    v12 = MEMORY[0x216073110](a1, v11);
    MEMORY[0x216073070](v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAE0);
    v13 = sub_215A701F0();
    v14 = *(v13 + 16);
    if (v14)
    {
      (*(v8 + 16))(v10, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * (v14 - 1), v7);

      strcpy(v27, " in section: ");
      HIWORD(v27[1]) = -4864;
      sub_215A41A94(&qword_27CA7EAE8, 255, MEMORY[0x277D28B98]);
      v15 = sub_215A70D60();
      MEMORY[0x216073070](v15);

      MEMORY[0x216073070](v27[0], v27[1]);

      (*(v8 + 8))(v10, v7);
    }

    else
    {
    }

    if (qword_2811A21D8 != -1)
    {
      swift_once();
    }

    v16 = sub_215A70000();
    __swift_project_value_buffer(v16, qword_2811A32C8);
    v18 = v28;
    v17 = v29;

    v19 = sub_215A6FFE0();
    v20 = sub_215A70820();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v26[1] = a2;
      v22 = v21;
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      v24 = sub_215A39474(v18, v17, v27);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_215819000, v19, v20, "%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x216075690](v23, -1, -1);
      MEMORY[0x216075690](v22, -1, -1);
    }

    else
    {
    }
  }

  (*(v8 + 56))(v6, 1, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAE0);
  sub_215A701C0();

  return sub_21583F14C(v6, &unk_27CA7EAD0);
}

uint64_t sub_215A3F81C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 safari_browserDefaults];
  v4 = sub_215A708F0();

  v5 = [v2 safari_browserDefaults];
  v6 = sub_215A708B0();

  if ((v4 - 2) < 2)
  {

    v10 = sub_215A3ED7C(v7);
    sub_215A3B9C4(&v10, v6);
    return v10;
  }

  if (v4 == 1)
  {

    v10 = sub_215A3ED7C(v9);
    sub_215A3BA48(&v10, v6);
    return v10;
  }

  return a1;
}

uint64_t sub_215A3F92C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 safari_browserDefaults];
  v4 = sub_215A708F0();

  v5 = [v2 safari_browserDefaults];
  v6 = sub_215A708B0();

  if (v4 > 1)
  {
    if (v4 == 2)
    {

      v11 = sub_215A3ED7C(v10);
      sub_215A3B9C4(&v11, v6);
      return v11;
    }

    if (v4 == 3)
    {

      v11 = sub_215A3ED7C(v8);
      sub_215A3BACC(&v11, v6);
      return v11;
    }

LABEL_8:

    return a1;
  }

  if (v4 != 1)
  {
    goto LABEL_8;
  }

  v11 = sub_215A3ED7C(v7);
  sub_215A3BA48(&v11, v6);
  return v11;
}

uint64_t sub_215A3FA7C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, int a5)
{
  v60 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v59 - v11;
  v71 = sub_215A6FED0();
  v73 = *(v71 - 8);
  v13 = MEMORY[0x28223BE20](v71);
  v61 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v59 - v15;
  v16 = sub_215A6FA60();
  v65 = *(v16 - 8);
  v66 = v16;
  MEMORY[0x28223BE20](v16);
  v64 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2159F7DA8(0, &unk_2811A2530);
  v18 = [*(v5 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection) rootBookmark];
  v19 = sub_215A70A80();

  v20 = a4;
  v63 = a3;
  v72 = v5;
  v21 = sub_215A2ED4C(a2, a3, a4);
  v22 = v21;
  v24 = v23;
  v25 = v21 >> 62;
  if (v21 >> 62)
  {
    v26 = sub_215A70CD0();
  }

  else
  {
    v26 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v70 = v24;
  if ((v26 != 0) | v19 & 1)
  {
    v27 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v27 = v63 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27)
    {
      v59 = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EAF8);
      sub_215A6FF70();
      *(swift_allocObject() + 16) = xmmword_215A96960;
      v42 = v64;
      sub_215A6FA50();
      sub_215A6FA40();
      (*(v65 + 8))(v42, v66);
      sub_215A6FEF0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAE0);
      sub_215A701D0();

      if (v19)
      {
        v43 = sub_215A2E3E8();
        sub_215A3F38C(v43, a1);
      }

      if (v25)
      {
        v44 = sub_215A70CD0();
      }

      else
      {
        v44 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = v70;
      v20 = v59;
      if (v44)
      {
        v62 = a1;
        v74 = MEMORY[0x277D84F90];
        result = sub_215A52BEC(0, v44 & ~(v44 >> 63), 0);
        if (v44 < 0)
        {
LABEL_50:
          __break(1u);
          return result;
        }

        v45 = 0;
        v46 = v22;
        v68 = v22 & 0xC000000000000001;
        v67 = *MEMORY[0x277D28B70];
        v47 = v74;
        v48 = v22;
        v49 = v44;
        do
        {
          if (v68)
          {
            v50 = MEMORY[0x216073710](v45, v46);
          }

          else
          {
            v50 = *(v46 + 8 * v45 + 32);
          }

          v51 = v50;
          v52 = sub_215A6FE20();
          v53 = *(v52 - 8);
          (*(v53 + 104))(v12, v67, v52);
          (*(v53 + 56))(v12, 0, 1, v52);
          v54 = v69;
          sub_215A2B4D0(v51, v12, 0);

          sub_21583F14C(v12, &qword_27CA7EAB0);
          v74 = v47;
          v56 = *(v47 + 16);
          v55 = *(v47 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_215A52BEC(v55 > 1, v56 + 1, 1);
            v47 = v74;
          }

          ++v45;
          *(v47 + 16) = v56 + 1;
          (*(v73 + 32))(v47 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v56, v54, v71);
          v46 = v48;
        }

        while (v49 != v45);

        a1 = v62;
        v24 = v70;
        v20 = v59;
      }

      else
      {

        v47 = MEMORY[0x277D84F90];
      }

      sub_215A3F38C(v47, a1);
    }
  }

  if (v24 >> 62)
  {
    if (sub_215A70CD0())
    {
LABEL_9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EAF8);
      sub_215A6FF70();
      *(swift_allocObject() + 16) = xmmword_215A96960;
      v28 = v64;
      sub_215A6FA50();
      sub_215A6FA40();
      (*(v65 + 8))(v28, v66);
      sub_215A6FF00();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAE0);
      sub_215A701D0();

      if (v24 >> 62)
      {
        v29 = v70;
        v30 = sub_215A70CD0();
        v62 = a1;
        if (v30)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v29 = v70;
        v30 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v62 = a1;
        if (v30)
        {
LABEL_11:
          v74 = MEMORY[0x277D84F90];
          result = sub_215A52BEC(0, v30 & ~(v30 >> 63), 0);
          if ((v30 & 0x8000000000000000) == 0)
          {
            v32 = 0;
            v33 = v74;
            v34 = v29;
            v35 = v29 & 0xC000000000000001;
            v36 = v61;
            do
            {
              if (v35)
              {
                v37 = MEMORY[0x216073710](v32, v34);
              }

              else
              {
                v37 = *(v34 + 8 * v32 + 32);
              }

              v38 = v37;
              v39 = sub_215A6FE20();
              (*(*(v39 - 8) + 56))(v12, 1, 1, v39);
              sub_215A2B4D0(v38, v12, 0);

              sub_21583F14C(v12, &qword_27CA7EAB0);
              v74 = v33;
              v41 = *(v33 + 16);
              v40 = *(v33 + 24);
              if (v41 >= v40 >> 1)
              {
                sub_215A52BEC(v40 > 1, v41 + 1, 1);
                v33 = v74;
              }

              ++v32;
              *(v33 + 16) = v41 + 1;
              (*(v73 + 32))(v33 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v41, v36, v71);
              v34 = v70;
            }

            while (v30 != v32);

            goto LABEL_22;
          }

          __break(1u);
          goto LABEL_50;
        }
      }

      v33 = MEMORY[0x277D84F90];
LABEL_22:
      sub_215A3F38C(v33, v62);
    }
  }

  else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

  if (v60)
  {
    v57 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v57 = v63 & 0xFFFFFFFFFFFFLL;
    }

    if (v57)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAC0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_215A96960;
      sub_215A6FDC0();
      sub_215A3F38C(v58, a1);
    }
  }

  return result;
}

id sub_215A40418(void *a1)
{
  v2 = sub_215A6FA60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_215A70540();
  v8 = v7;
  if (v6 == sub_215A70540() && v8 == v9)
  {
LABEL_13:

    goto LABEL_14;
  }

  v11 = sub_215A70D90();

  if ((v11 & 1) == 0)
  {
    v12 = sub_215A70540();
    v14 = v13;
    if (v12 == sub_215A70540() && v14 == v15)
    {

      goto LABEL_14;
    }

    v17 = sub_215A70D90();

    if ((v17 & 1) == 0)
    {
      v18 = sub_215A70540();
      v20 = v19;
      if (v18 != sub_215A70540() || v20 != v21)
      {
        v28 = sub_215A70D90();

        if ((v28 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

LABEL_14:
  sub_215A6FA50();
  sub_215A6FA40();
  (*(v3 + 8))(v5, v2);
LABEL_15:
  sub_2159F7DA8(0, &unk_2811A2520);
  v22 = sub_215A70500();
  v23 = [objc_opt_self() systemImageNamed_];

  *(swift_allocObject() + 16) = a1;
  v24 = a1;
  v25 = sub_215A70A90();
  v26 = sub_215A70500();

  [v25 setAccessibilityIdentifier_];

  return v25;
}

void *sub_215A40848(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EA20);
  v3 = sub_215A70D10();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_215A39B30(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_215A39B30(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id sub_215A4095C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_215A70CD0())
  {
    v25 = a3;
    v7 = 0;
    a3 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x216073710](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v8 isDeletable])
      {
        sub_215A70C60();
        sub_215A70C90();
        sub_215A70CA0();
        v3 = &v26;
        sub_215A70C70();
      }

      else
      {
      }

      ++v7;
      if (v10 == i)
      {
        a3 = v25;
        v11 = v26;
        v3 = v24;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_18:
  v12 = *(v3 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection);
  sub_2159F7DA8(0, &qword_2811A22B8);
  v13 = sub_215A70500();
  v14 = [objc_opt_self() systemImageNamed_];

  sub_2159F7DA8(0, &unk_2811A2520);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v11;
  v16 = v12;

  sub_215A70A90();
  v17 = sub_215A70920();
  v18 = [objc_opt_self() systemRedColor];
  [v17 setTintColor_];

  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
    v19 = sub_215A70CD0();
  }

  else
  {
    v19 = *(v11 + 16);
  }

  v20 = v17;

  [v20 setEnabled_];

  if (a3)
  {
    v21 = v20;
    v22 = sub_215A70500();
    [v21 setAccessibilityIdentifier_];
  }

  return v20;
}

uint64_t objectdestroy_12Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void *sub_215A40DE0()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_215A40E60()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAB0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_215A300D4(v2, v3, v4);
}

uint64_t objectdestroy_3Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

unint64_t sub_215A4102C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EBA0);
  v3 = sub_215A70D10();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_215A39B30(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_215A39B30(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_215A41128(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E0C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v49 - v11;
  v13 = sub_215A6F870();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  swift_unknownObjectRetain();
  v18 = a5;
  v19 = [a1 address];
  sub_215A70540();

  sub_215A6F860();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21583F14C(v12, &qword_27CA7E0C0);
  }

  (*(v14 + 32))(v16, v12, v13);
  if ([a1 isFolder])
  {
    (*(v14 + 8))(v16, v13);
  }

  v20 = [objc_opt_self() sharedSiteMetadataManager];
  v21 = objc_allocWithZone(MEMORY[0x277D4A790]);
  v22 = sub_215A6F840();
  v23 = [v21 initWithURL_];

  v24 = swift_allocObject();
  *(v24 + 16) = sub_215A41848;
  *(v24 + 24) = v17;
  v59 = sub_215A4187C;
  v60 = v24;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v58 = sub_215A2A290;
  *(&v58 + 1) = &block_descriptor_191;
  v25 = _Block_copy(&aBlock);

  v50 = v23;
  v51 = v20;
  v26 = [v20 registerOneTimeRequest:v23 priority:2 responseHandler:v25];
  _Block_release(v25);
  v52 = a2;
  if (v26)
  {
    sub_215A70B70();
    swift_unknownObjectRelease();
  }

  else
  {
    v55 = 0u;
    v56 = 0u;
  }

  aBlock = v55;
  v58 = v56;
  v27 = [a1 UUID];
  v28 = sub_215A70540();
  v30 = v29;

  v31 = OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_idToLinkMetadataRequestToken;
  v32 = v52;
  swift_beginAccess();
  v49[1] = v31;
  v33 = *(v32 + v31);
  if (!*(v33 + 16))
  {

    goto LABEL_12;
  }

  v34 = sub_215A39A1C(v28, v30);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_12:
    v55 = 0u;
    v56 = 0u;
    goto LABEL_13;
  }

  sub_215A07378(*(v33 + 56) + 32 * v34, &v55);
LABEL_13:
  swift_endAccess();
  sub_215A07074(&v55, v53, &qword_27CA7E2E0);
  v37 = v54;
  v49[0] = v16;
  if (v54)
  {
    v38 = __swift_project_boxed_opaque_existential_0(v53, v54);
    v39 = *(v37 - 8);
    MEMORY[0x28223BE20](v38);
    v41 = v49 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v41);
    v42 = sub_215A70D80();
    (*(v39 + 8))(v41, v37);
    __swift_destroy_boxed_opaque_existential_0(v53);
  }

  else
  {
    v42 = 0;
  }

  v43 = v51;
  [v51 cancelRequestWithToken_];
  swift_unknownObjectRelease();
  v44 = [a1 UUID];
  v45 = sub_215A70540();
  v47 = v46;

  sub_215A07074(&aBlock, v53, &qword_27CA7E2E0);
  swift_beginAccess();
  sub_215A2A4B8(v53, v45, v47);
  swift_endAccess();

  sub_21583F14C(&v55, &qword_27CA7E2E0);
  sub_21583F14C(&aBlock, &qword_27CA7E2E0);
  (*(v14 + 8))(v49[0], v13);
}

void sub_215A41744(uint64_t a1)
{
  v2 = objc_opt_self();
  v7 = [v2 sharedMetadataFetcher];
  if ([v2 shouldFetchMetadataForBookmark_])
  {
    v3 = &selRef_fetchMetadataForReadingListBookmark_withProvider_;
    v4 = v7;
  }

  else
  {
    v5 = [v2 shouldFetchThumbnailForBookmark_];
    v6 = v7;
    if (!v5)
    {
      goto LABEL_6;
    }

    v3 = &selRef_fetchThumbnailForReadingListBookmark_withProvider_;
    v4 = v7;
  }

  [v4 *v3];
  v6 = v7;
LABEL_6:
}

uint64_t objectdestroy_178Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_215A41884(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_215A418EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_215A41900(a1, a2);
  }

  return a1;
}

uint64_t sub_215A41900(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_215A41954(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_215A41884(a1, a2);
  }

  return a1;
}

unint64_t sub_215A41998()
{
  result = qword_27CA7EB38;
  if (!qword_27CA7EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA7EB38);
  }

  return result;
}

uint64_t sub_215A41A00()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_215A41A94(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_215A41BA0()
{
  v1 = v0;
  v2 = sub_215A6FA60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 headerType];
  if (v6 == 2 || v6 == 1)
  {
    goto LABEL_11;
  }

  if (!v6)
  {
    v7 = [v1 configuration];
    v8 = [v7 tabGroupProvider];

    if (v8)
    {
      if ([v8 hasMultipleProfiles])
      {
        v9 = [v8 activeProfile];
        if (v9)
        {
          v10 = v9;
          sub_215A6FA50();
          sub_215A6FA40();
          (*(v3 + 8))(v5, v2);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E220);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_215A96960;
          v12 = [v10 title];
          v13 = sub_215A70540();
          v15 = v14;

          *(v11 + 56) = MEMORY[0x277D837D0];
          *(v11 + 64) = sub_2159F501C();
          *(v11 + 32) = v13;
          *(v11 + 40) = v15;
          v16 = sub_215A70510();
          swift_unknownObjectRelease();

          return v16;
        }
      }

      swift_unknownObjectRelease();
    }

LABEL_11:
    sub_215A6FA50();
    v16 = sub_215A6FA40();
    (*(v3 + 8))(v5, v2);
    return v16;
  }

  v18 = v6;
  type metadata accessor for LibraryHeaderType(0);
  v19[1] = v18;
  result = sub_215A70DB0();
  __break(1u);
  return result;
}

uint64_t HeaderLibraryItemController.accessibilityIdentifier.getter()
{
  v1 = 0xD000000000000019;
  v2 = [v0 headerType];
  if (!v2)
  {
    return 0xD000000000000022;
  }

  if (v2 == 2)
  {
    return v1;
  }

  if (v2 == 1)
  {
    return 0xD00000000000001DLL;
  }

  type metadata accessor for LibraryHeaderType(0);
  result = sub_215A70DB0();
  __break(1u);
  return result;
}

Swift::Void __swiftcall HeaderLibraryItemController.willToggleExpansionState()()
{
  v1 = [v0 _isExpanded] ^ 1;

  [v0 set:v1 isExpanded:?];
}

Swift::Void __swiftcall HeaderLibraryItemController.updateListContentConfiguration(_:)(UIListContentConfiguration a1)
{
  [(objc_class *)a1.super.isa setImage:0];
  v3 = [v1 title];
  [(objc_class *)a1.super.isa setText:v3];
}

uint64_t HeaderLibraryItemController.hash.getter()
{
  v1 = [v0 accessibilityIdentifier];
  v2 = sub_215A70540();
  v4 = v3;

  v5 = MEMORY[0x216073090](v2, v4);

  return v5;
}

uint64_t _sSo27HeaderLibraryItemControllerC14MobileSafariUIE11accessoriesSaySo15UICellAccessoryCGvg_0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75270]) init];
  [v0 setDisplayedState_];
  [v0 setStyle_];
  v1 = [objc_opt_self() tertiaryLabelColor];
  [v0 setTintColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_215A96990;
  *(v2 + 32) = v0;

  return v2;
}

char *sub_215A423D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_fluidGesture;
  *&v6[v13] = [objc_allocWithZone(MEMORY[0x277D75FF8]) initWithAxes_];
  v14 = OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_interactiveRegion;
  *&v6[v14] = [objc_allocWithZone(MEMORY[0x277D76008]) initWithDimensions_];
  *&v6[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_isPresented] = 0;
  *&v6[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toastPlacement] = 0;
  v15 = &v6[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toastObscuredEdgeInsets];
  v16 = *(MEMORY[0x277D768C8] + 16);
  *v15 = *MEMORY[0x277D768C8];
  v15[1] = v16;
  v17 = &v6[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_onTapHandler];
  *v17 = a2;
  v17[1] = a3;
  v18 = &v6[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_onDismissHandler];
  *v18 = a4;
  v18[1] = a5;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = a2;
  v19[4] = a3;
  v20 = objc_allocWithZone(type metadata accessor for AddedBookmarkToast());
  swift_retain_n();

  v21 = a1;
  *&v6[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toast] = sub_215A07654(v21, sub_215A43FF0, v19);
  v34.receiver = v6;
  v34.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v34, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_fluidGesture;
  v24 = *&v22[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_fluidGesture];
  v25 = v22;
  v26 = [v24 _interactor];
  [v26 _setDelegate_];

  [*&v22[v23] _setDelegate_];
  v27 = [*&v22[v23] _interactor];
  [v27 _setRegion_];

  v28 = OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toast;
  v29 = *&v25[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toast];
  v30 = sub_215A70500();
  [v29 setAccessibilityIdentifier_];

  v31 = *&v25[v28];
  v32 = [*&v22[v23] _panGestureRecognizer];
  [v31 addGestureRecognizer_];

  [v25 addSubview_];

  return v25;
}

uint64_t sub_215A426D0(uint64_t Strong, uint64_t (*a2)(uint64_t))
{
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(ObjectType, v4);
      Strong = swift_unknownObjectRelease();
    }
  }

  return a2(Strong);
}

uint64_t sub_215A42778(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_215A43FD8;
  *(v6 + 24) = v5;
  v21 = sub_215A43FE0;
  v22 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_215A44E6C;
  v20 = &block_descriptor_50;
  v7 = _Block_copy(&aBlock);
  v8 = v2;

  [v4 performWithoutAnimation_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v21 = sub_215A43FE8;
    v22 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_2159F7E08;
    v20 = &block_descriptor_56;
    v12 = _Block_copy(&aBlock);
    v13 = v8;

    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    v21 = sub_215A1FE18;
    v22 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_2159F6F40;
    v20 = &block_descriptor_62;
    v15 = _Block_copy(&aBlock);

    [v4 _animateUsingDefaultTimingWithOptions_animations_completion_];
    _Block_release(v15);
    _Block_release(v12);
  }

  return result;
}

id sub_215A42A28(_BYTE *a1)
{
  v2 = a1[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_isPresented];
  a1[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_isPresented] = 1;
  if ((v2 & 1) == 0)
  {
    [a1 setNeedsLayout];
  }

  v3 = *&a1[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toast];
  memset(&v5, 0, 40);
  sub_215A70A60();
  [*&v3[OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_contentView] setAlpha_];
  CGAffineTransformMakeScale(&v5, 0.9, 0.9);
  [v3 setTransform_];
  return [a1 layoutIfNeeded];
}

id sub_215A42AFC(uint64_t a1)
{
  v2 = sub_215A703A0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_215A703C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toast);
  sub_215A70390();
  sub_215A703D0();
  v10 = v3;
  v11 = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_215A703B0();
  (*(v4 + 8))(v6, v3);
  sub_215A70A60();
  [*&v7[OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_contentView] setAlpha_];
  v9[0] = 0x3FF0000000000000;
  v9[1] = 0;
  v9[2] = 0;
  v10 = 0x3FF0000000000000;
  v11 = 0;
  v12 = 0;
  return [v7 setTransform_];
}

void sub_215A42C9C(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v15 = sub_215A43FD0;
  v16 = v6;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_2159F7E08;
  v14 = &block_descriptor_35;
  v7 = _Block_copy(&v11);
  v8 = v2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v15 = sub_215A1FC34;
  v16 = v9;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_2159F6F40;
  v14 = &block_descriptor_41;
  v10 = _Block_copy(&v11);

  [v5 _animateUsingDefaultTimingWithOptions_animations_completion_];
  _Block_release(v10);
  _Block_release(v7);
}

id sub_215A42E30(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toast);
  memset(&v3, 0, 40);
  sub_215A70A60();
  [*&v1[OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_contentView] setAlpha_];
  CGAffineTransformMakeScale(&v3, 0.9, 0.9);
  return [v1 setTransform_];
}

void sub_215A42EC8()
{
  v1 = v0;
  v54.receiver = v0;
  v54.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v54, sel_layoutSubviews);
  [v0 bounds];
  v6 = UIEdgeInsetsInsetRect(v2, v3, v4, v5, *&v0[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toastObscuredEdgeInsets], *&v0[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toastObscuredEdgeInsets + 8]);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *&v0[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toast];
  v14 = sub_215A0868C(0.0, 0.0);
  v16 = v15;
  [v1 bounds];
  Width = CGRectGetWidth(v55);
  v18 = OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toastPlacement;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  v22 = v12;
  if (*&v1[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toastPlacement] == 1)
  {
    MinY = CGRectGetMaxY(*&v19) - v16;
  }

  else
  {
    MinY = CGRectGetMinY(*&v19);
  }

  v24 = *&v1[v18];
  [v1 bounds];
  if (v24 == 1)
  {
    MaxY = CGRectGetMaxY(*&v25);
  }

  else
  {
    MaxY = CGRectGetMinY(*&v25) - v16;
  }

  v30 = *&v1[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_interactiveRegion];
  v31 = swift_allocObject();
  *(v31 + 16) = v1;
  *(v31 + 24) = MinY;
  *(v31 + 32) = MaxY;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_215A4401C;
  *(v32 + 24) = v31;
  v52 = sub_215A43F50;
  v53 = v32;
  v48 = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_215A43434;
  v51 = &block_descriptor_9_2;
  v33 = _Block_copy(&v48);
  v34 = v1;

  [v30 _mutateMinimumPoint_];
  _Block_release(v33);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_14;
  }

  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = MaxY;
  *(v36 + 32) = MinY;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_215A43F78;
  *(v37 + 24) = v36;
  v52 = sub_215A44040;
  v53 = v37;
  v48 = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_215A43434;
  v51 = &block_descriptor_19_0;
  v38 = _Block_copy(&v48);
  v39 = v34;

  [v30 _mutateMaximumPoint_];
  _Block_release(v38);
  v40 = swift_isEscapingClosureAtFileLocation();

  if (v40)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v41 = [*&v39[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_fluidGesture] _interactor];
  v42 = swift_allocObject();
  *(v42 + 16) = v39;
  *(v42 + 24) = MinY;
  *(v42 + 32) = MaxY;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_215A43FA4;
  *(v43 + 24) = v42;
  v52 = sub_215A44040;
  v53 = v43;
  v48 = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_215A43434;
  v51 = &block_descriptor_29;
  v44 = _Block_copy(&v48);
  v45 = v39;

  [v41 _mutateUnconstrainedPoint_];
  _Block_release(v44);
  LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

  if (v44)
  {
LABEL_15:
    __break(1u);
    return;
  }

  if (Width + -60.0 < v14)
  {
    v14 = Width + -60.0;
  }

  [v45 bounds];
  v46 = (CGRectGetWidth(v56) - v14) * 0.5;
  v47 = *[v41 _presentationPoint];
  [v13 setFrame_];
  v57.origin.x = v46;
  v57.origin.y = v47;
  v57.size.width = v14;
  v57.size.height = v16;
  [v13 _setContinuousCornerRadius_];
}

void sub_215A435E4(void *a1)
{
  [v1 bounds];
  v7 = UIEdgeInsetsInsetRect(v3, v4, v5, v6, *&v1[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toastObscuredEdgeInsets], *&v1[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toastObscuredEdgeInsets + 8]);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [a1 _interactor];
  v15 = [v14 _projectedPoint];

  v16 = *v15;
  [*&v1[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toast] bounds];
  v17 = CGRectGetHeight(v23) * 0.5;
  v18 = *&v1[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toastPlacement];
  if (v18)
  {
    if (v18 != 1)
    {
      sub_215A70CB0();
      __break(1u);
      return;
    }

    v25.origin.x = v7;
    v25.origin.y = v9;
    v25.size.width = v11;
    v25.size.height = v13;
    v19 = v16 < CGRectGetMaxY(v25) - v17;
  }

  else
  {
    v24.origin.x = v7;
    v24.origin.y = v9;
    v24.size.width = v11;
    v24.size.height = v13;
    v19 = CGRectGetMinY(v24) - v17 < v16;
  }

  v20 = v19;
  v21 = v1[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_isPresented];
  v1[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_isPresented] = v20;
  if (v20 != v21)
  {

    [v1 setNeedsLayout];
  }
}

void sub_215A43930()
{
  v1 = OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_fluidGesture;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75FF8]) initWithAxes_];
  v2 = OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_interactiveRegion;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D76008]) initWithDimensions_];
  *(v0 + OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_isPresented) = 0;
  *(v0 + OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toastPlacement) = 0;
  v3 = (v0 + OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toastObscuredEdgeInsets);
  v4 = *(MEMORY[0x277D768C8] + 16);
  *v3 = *MEMORY[0x277D768C8];
  v3[1] = v4;
  sub_215A70CB0();
  __break(1u);
}

uint64_t sub_215A43A2C()
{
  v1 = sub_215A70440();
  v25 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_215A70460();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_215A70480();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = &v0[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 1);
    ObjectType = swift_getObjectType();
    (*(v16 + 16))(ObjectType, v16);
    result = swift_unknownObjectRelease();
  }

  if ((v0[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_isPresented] & 1) == 0)
  {
    sub_215A43DEC();
    v18 = sub_215A709D0();
    sub_215A70470();
    sub_215A70490();
    v22 = *(v8 + 8);
    v22(v11, v7);
    v19 = swift_allocObject();
    *(v19 + 16) = v0;
    aBlock[4] = sub_215A43E38;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2159F7E08;
    aBlock[3] = &block_descriptor_11;
    v20 = _Block_copy(aBlock);
    v21 = v0;

    sub_215A70450();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_215A43E78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7ECE0);
    sub_215A43ED0();
    sub_215A70B90();
    MEMORY[0x216073490](v13, v6, v3, v20);
    _Block_release(v20);

    (*(v25 + 8))(v3, v1);
    (*(v23 + 8))(v6, v24);
    return (v22)(v13, v7);
  }

  return result;
}

unint64_t sub_215A43DEC()
{
  result = qword_2811A2910;
  if (!qword_2811A2910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811A2910);
  }

  return result;
}

unint64_t sub_215A43E78()
{
  result = qword_2811A28C0;
  if (!qword_2811A28C0)
  {
    sub_215A70440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811A28C0);
  }

  return result;
}

unint64_t sub_215A43ED0()
{
  result = qword_2811A28D0;
  if (!qword_2811A28D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA7ECE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811A28D0);
  }

  return result;
}

double sub_215A43F78(void *a1)
{
  if (*(*(v1 + 16) + OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toastPlacement) == 1)
  {
    v2 = (v1 + 24);
  }

  else
  {
    v2 = (v1 + 32);
  }

  result = *v2;
  *a1 = *v2;
  return result;
}

double sub_215A43FA4(void *a1)
{
  if (*(*(v1 + 16) + OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_isPresented))
  {
    v2 = (v1 + 24);
  }

  else
  {
    v2 = (v1 + 32);
  }

  result = *v2;
  *a1 = *v2;
  return result;
}

FolderSuggestionManager __swiftcall FolderSuggestionManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.lastSelectedFolderValidityPeriod = v2;
  result.super.isa = v1;
  return result;
}

id static FolderSuggestionManager.shared.getter()
{
  if (qword_2811A2200 != -1)
  {
    swift_once();
  }

  v1 = qword_2811A2918;

  return v1;
}

uint64_t sub_215A4415C()
{
  v1 = v0;
  v2 = sub_215A6F910();
  v3 = *(v2 - 1);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v38 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = [objc_opt_self() mainBookmarkCollection];
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v14 = v12;
  v39 = MEMORY[0x277D84F90];
  v15 = [objc_opt_self() safari_browserDefaults];
  v16 = [v15 safari:*MEMORY[0x277D29038] dateForKey:?];

  if (!v16)
  {
    v21 = v13;
    goto LABEL_9;
  }

  sub_215A6F8E0();

  (*(v3 + 32))(v11, v9, v2);
  sub_215A6F900();
  sub_215A6F8C0();
  v18 = v17;
  v9 = *(v3 + 8);
  (v9)(v6, v2);
  [v1 lastSelectedFolderValidityPeriod];
  if (v18 >= v19 || (v20 = [objc_opt_self() _sf_lastSelectedFolderIn_]) == 0)
  {
    (v9)(v11, v2);
    v21 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v21 = v20;
  MEMORY[0x2160730A0]();
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    sub_215A70660();

    (v9)(v11, v2);
    v21 = v39;
LABEL_9:
    v2 = [v14 rootBookmark];
    v11 = [v14 readingListFolder];
    if (v21 >> 62)
    {
      if (!sub_215A70CD0())
      {
        goto LABEL_15;
      }
    }

    else if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x216073710](0, v21);
    }

    else
    {
      if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_42;
      }

      v22 = *(v21 + 32);
    }

    v23 = v22;
    sub_2159F7DA8(0, &unk_2811A28A0);
    v24 = v2;
    v25 = sub_215A70A80();

    if ((v25 & 1) == 0)
    {
LABEL_15:
      v26 = [v14 rootBookmark];
      MEMORY[0x2160730A0]();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_215A70640();
      }

      sub_215A70660();
      v21 = v39;
    }

    if (v21 >> 62)
    {
      if (!sub_215A70CD0())
      {
        goto LABEL_24;
      }
    }

    else if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x216073710](0, v21);
    }

    else
    {
      if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_48;
      }

      v27 = *(v21 + 32);
    }

    v28 = v27;
    sub_2159F7DA8(0, &unk_2811A28A0);
    v29 = v11;
    v30 = sub_215A70A80();

    if ((v30 & 1) == 0)
    {
LABEL_24:
      v31 = [v14 readingListFolder];
      MEMORY[0x2160730A0]();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_215A70640();
      }

      sub_215A70660();
      v21 = v39;
    }

    v32 = [objc_opt_self() _sf_lastSelectedFolderIn_];
    if (!v32)
    {
      goto LABEL_45;
    }

    v9 = v32;
    if (!(v21 >> 62))
    {
      if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      goto LABEL_30;
    }

LABEL_42:
    if (!sub_215A70CD0())
    {
      goto LABEL_43;
    }

LABEL_30:
    if ((v21 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v33 = *(v21 + 32);
      goto LABEL_33;
    }

    __break(1u);
LABEL_51:
    sub_215A70640();
  }

  v33 = MEMORY[0x216073710](0, v21);
LABEL_33:
  v34 = v33;
  sub_2159F7DA8(0, &unk_2811A28A0);
  v35 = v9;
  v36 = sub_215A70A80();

  if (v36)
  {

    goto LABEL_45;
  }

LABEL_43:
  v21 = v9;
  MEMORY[0x2160730A0]();
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_44;
  }

LABEL_48:
  sub_215A70640();
LABEL_44:
  sub_215A70660();

LABEL_45:
  sub_2159F7DA8(0, &unk_2811A28A0);
  sub_215A4495C();
  v13 = sub_215A70620();

  return v13;
}

uint64_t sub_215A44830()
{
  v1 = [v0 suggestedFolderDestinations];
  sub_2159F7DA8(0, &unk_2811A28A0);
  v2 = sub_215A705E0();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v6 = WebBookmarksRootBookmarkTitle();
    goto LABEL_9;
  }

  result = sub_215A70CD0();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x216073710](0, v2);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_6:
    v5 = v4;

    v6 = [v5 localizedTitle];

LABEL_9:
    v7 = sub_215A70540();

    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_215A4495C()
{
  result = qword_27CA7ECF0;
  if (!qword_27CA7ECF0)
  {
    sub_2159F7DA8(255, &unk_2811A28A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA7ECF0);
  }

  return result;
}

BOOL sub_215A44A0C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_215A54F30(a4, a5);
  }

  while ((sub_215A704F0() & 1) == 0);
  return v9 != v10;
}

uint64_t sub_215A44B14(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v6 = MEMORY[0x277D84F90];
    sub_215A70C80();
    v4 = a1 + 32;
    do
    {
      sub_215A07378(v4, &v5);
      sub_2159F7DA8(0, &qword_27CA7E098);
      swift_dynamicCast();
      sub_215A70C60();
      sub_215A70C90();
      sub_215A70CA0();
      sub_215A70C70();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

void sub_215A44C0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_215A44C78(uint64_t a1)
{
  v3 = ([v1 attributes] >> 1) & 1;
  v4 = [v1 title];
  sub_215A70540();

  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = v1;
  v7 = sub_215A70500();

  v12[4] = sub_215A54CA4;
  v12[5] = v5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_215A4FAE4;
  v12[3] = &block_descriptor_109;
  v8 = _Block_copy(v12);
  v9 = [objc_opt_self() contextualActionWithStyle:v3 title:v7 handler:v8];

  _Block_release(v8);

  [v9 setBackgroundColor_];
  if ([objc_opt_self() isSolariumEnabled])
  {
    v10 = [v6 image];
    [v9 setImage_];
  }

  return v9;
}

id BookmarksViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id sub_215A44FAC()
{
  v1 = OBJC_IVAR___BookmarksViewController____lazy_storage___clearHistoryController;
  v2 = *&v0[OBJC_IVAR___BookmarksViewController____lazy_storage___clearHistoryController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___BookmarksViewController____lazy_storage___clearHistoryController];
  }

  else
  {
    v4 = [objc_allocWithZone(SafariClearBrowsingDataController) init];
    [v4 setTabGroupProvider_];
    swift_unknownObjectRelease();
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_215A450E8()
{
  v1 = OBJC_IVAR___BookmarksViewController____lazy_storage___dismissButton;
  v2 = *(v0 + OBJC_IVAR___BookmarksViewController____lazy_storage___dismissButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___BookmarksViewController____lazy_storage___dismissButton);
  }

  else
  {
    sub_2159F7DA8(0, &qword_2811A22B8);
    sub_2159F7DA8(0, &unk_2811A2520);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v0;
    sub_215A70A90();
    v5 = sub_215A70910();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_215A45254()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong bookmarksNavigationControllerDelegate];

    if (v2)
    {
      if ([v2 respondsToSelector_])
      {
        [v2 bookmarksNavigationControllerDidPressDoneButton_];
      }

      swift_unknownObjectRelease();
    }
  }
}

id sub_215A453F4()
{

  v0 = sub_215A70730();

  return v0;
}

uint64_t sub_215A45460(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = sub_215A70740();
}

void *sub_215A45514()
{
  v1 = OBJC_IVAR___BookmarksViewController____lazy_storage___historyDataSource;
  v2 = *&v0[OBJC_IVAR___BookmarksViewController____lazy_storage___historyDataSource];
  v3 = v2;
  if (v2 == 1)
  {
    sub_215A455E4(v0);
    v3 = v4;
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v6 = v4;
    sub_215A54E9C(v5);
  }

  sub_215A54EAC(v2);
  return v3;
}

void sub_215A455E4(void *a1)
{
  v2 = [a1 tabGroupProvider];
  if (!v2)
  {
    return;
  }

  v3 = [v2 activeProfile];
  swift_unknownObjectRelease();
  if (!v3)
  {
    return;
  }

  v4 = [objc_opt_self() sharedApplication];
  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  v6 = [v4 historyController];

  if (!v6)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v7 = [v3 identifier];
  if (!v7)
  {
    sub_215A70540();
    v7 = sub_215A70500();
  }

  v8 = [v6 historyForProfileIdentifier:v7 loadIfNeeded:1];

  if (v8)
  {
    v9 = [objc_opt_self() safari_browserDefaults];
    sub_215A70830();

    v10 = sub_215A70730();

    [a1 setCollapsedHistorySessionIDs_];

    v11 = sub_215A70730();

    [a1 setExpandedHistorySessionIDs_];

    v12 = [objc_allocWithZone(SFHistoryViewDataSource) initWithHistory_];
    [v12 setDelegate_];
    [v12 setTabGroupProvider_];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_215A45958(char a1)
{
  v2 = v1[OBJC_IVAR___BookmarksViewController_isClearHistoryAllowed];
  v1[OBJC_IVAR___BookmarksViewController_isClearHistoryAllowed] = a1;
  if (v2 != (a1 & 1))
  {
    v3 = [v1 selectedCollectionType];
    v4 = sub_215A70540();
    v6 = v5;
    if (v4 == sub_215A70540() && v6 == v7)
    {
    }

    else
    {
      v9 = sub_215A70D90();

      if ((v9 & 1) == 0)
      {
        return;
      }
    }

    v10 = [v1 rootCollectionViewController];
    if (v10)
    {
      v11 = v10;
      sub_215A6FD00();
    }
  }
}

uint64_t sub_215A45B60()
{
  v1 = [v0 innerNavigationController];
  v2 = [v1 viewControllers];

  sub_2159F7DA8(0, &qword_2811A24F0);
  v3 = sub_215A705E0();

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

    return 0;
  }

  result = sub_215A70CD0();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x216073710](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  sub_215A6FF90();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

uint64_t sub_215A45CB4()
{
  v1 = [v0 innerNavigationController];
  v2 = [v1 viewControllers];

  sub_2159F7DA8(0, &qword_2811A24F0);
  v3 = sub_215A705E0();

  v14 = v3;
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    while (!__OFSUB__(v5--, 1))
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x216073710](v5, v3);
LABEL_8:
        v8 = v7;
        sub_215A6FF90();
        v9 = swift_dynamicCastClass();
        v10 = v9 == 0;

        if (v9 || !v5)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_13;
        }

        if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v7 = *(v3 + 32 + 8 * v5);
          goto LABEL_8;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        v4 = sub_215A70CD0();
        v5 = v4;
        if (!v4)
        {
          goto LABEL_16;
        }
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_16:
  v10 = 1;
LABEL_17:
  MEMORY[0x28223BE20](v4);
  v13[2] = &v14;
  v11 = sub_215A02F14(sub_215A02FD8, v13, v5, v10);

  if (v11)
  {
    sub_215A6FF90();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t BookmarksViewController.bookmarksNavigationControllerDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_215A46114()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t BookmarksViewController.tabGroupProvider.setter()
{
  v1 = *(v0 + OBJC_IVAR___BookmarksViewController_contentProvider);
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong registerTabGroupManagerObserver_];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall BookmarksViewController.viewDidLoad()()
{
  v25.super_class = BookmarksViewController;
  objc_msgSendSuper2(&v25, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = sub_215A70500();
  [v2 setAccessibilityIdentifier_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [objc_opt_self() systemGroupedBackgroundColor];
  [v5 setBackgroundColor_];

  v7 = [v0 innerNavigationController];
  [v7 _setClipUnderlapWhileTransitioning_];

  v8 = [v0 innerNavigationController];
  [v8 setDelegate_];

  v9 = [v0 innerNavigationController];
  [v0 addChildViewController_];

  v10 = [v0 innerNavigationController];
  v11 = [v10 view];

  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v11 setAutoresizingMask_];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v11 setFrame_];
  v22 = [v0 view];
  if (v22)
  {
    v23 = v22;
    [v22 addSubview_];

    v24 = [v0 innerNavigationController];
    [v24 didMoveToParentViewController_];

    [v0 loadSavedState];
    [v0 restoreState];

    return;
  }

LABEL_11:
  __break(1u);
}

Swift::Void __swiftcall BookmarksViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, a1);
  v2 = [v1 overrideCollectionType];
  if (v2)
  {
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_215A54354;
    *(v4 + 24) = v3;
    v7[4] = sub_215A1FC34;
    v7[5] = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_215A44E6C;
    v7[3] = &block_descriptor_12;
    v5 = _Block_copy(v7);
    v6 = v1;

    [v6 performWithoutReload_];
    _Block_release(v5);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }
}

void sub_215A4678C(void *a1)
{
  v2 = [a1 savedState];
  v3 = sub_215A704B0();

  if (!*(v3 + 16) || (v4 = sub_215A39A1C(0xD000000000000011, 0x8000000215AC41F0), (v5 & 1) == 0))
  {

    goto LABEL_6;
  }

  sub_215A07378(*(v3 + 56) + 32 * v4, v8);

  type metadata accessor for BookmarksCollectionType(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v6 = @"BookmarksCollection";
    goto LABEL_7;
  }

  v6 = v7;
LABEL_7:
  [a1 setSelectedCollectionType_];
}

Swift::Void __swiftcall BookmarksViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  objc_msgSendSuper2(&v6, sel_viewWillDisappear_, a1);
  v3 = [objc_opt_self() safari_browserDefaults];
  v4 = [v2 collapsedHistorySessionIDs];
  sub_215A70740();

  v5 = [v2 expandedHistorySessionIDs];
  sub_215A70740();

  sub_215A70840();

  [v2 saveState];
}

void sub_215A46A64()
{
  v1 = v0;
  v2 = sub_215A6F910();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  v9 = [v0 overrideCollectionType];
  if (!v9)
  {
    sub_215A6F8F0();
    v11 = objc_opt_self();
    v12 = [v11 safari_browserDefaults];
    sub_215A70890();

    sub_215A6F8C0();
    v14 = v13;
    v15 = *(v3 + 8);
    v15(v6, v2);
    v15(v8, v2);
    v16 = [v11 safari_browserDefaults];
    v17 = sub_215A70500();
    v18 = [v16 dictionaryForKey_];

    if (v14 > 480.0)
    {
      if (v18)
      {
        sub_215A704B0();
      }

      else
      {
        sub_2158368B0(MEMORY[0x277D84F90]);
      }

      v19 = sub_215A704A0();

      [v1 setSavedState_];

      v20 = [v1 savedState];
      v21 = sub_215A704B0();

      if (*(v21 + 16))
      {
        v22 = sub_215A39A1C(0xD000000000000011, 0x8000000215AC41F0);
        if (v23)
        {
          sub_215A07378(*(v21 + 56) + 32 * v22, &v45);

          if ((swift_dynamicCast() & 1) == 0)
          {
            return;
          }

          v24 = v44[0];
          v25 = [v1 savedState];
          v26 = sub_215A704B0();

          if (*(v26 + 16) && (v27 = sub_215A39A1C(v24, *(&v24 + 1)), (v28 & 1) != 0))
          {
            sub_215A07378(*(v26 + 56) + 32 * v27, &v45);

            v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EE40);
            if (swift_dynamicCast())
            {
              v30 = *&v44[0];
              v41 = "CurrentCollectionIndexPathItem";
              v46 = MEMORY[0x277D83B88];
              *&v45 = 0;
              sub_215A07368(&v45, v44);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v43 = v30;
              sub_215A3B13C(v44, 0xD00000000000001ELL, v41 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
              v46 = v29;
              *&v45 = v43;
              v32 = [v1 savedState];
              v33 = sub_215A704B0();

              v43 = v33;
              if (v29)
              {
                sub_215A07368(&v45, v44);
                v34 = swift_isUniquelyReferenced_nonNull_native();
                v42 = v33;
                sub_215A3B13C(v44, v24, *(&v24 + 1), v34);
              }

              else
              {
                sub_21583F14C(&v45, &qword_27CA7E2E0);
                sub_215A39F8C(v24, *(&v24 + 1), v44);

                sub_21583F14C(v44, &qword_27CA7E2E0);
              }

              v36 = sub_215A704A0();

              [v1 setSavedState_];

              v37 = [v11 safari_browserDefaults];
              v38 = [v1 savedState];
              sub_215A704B0();

              v39 = sub_215A704A0();

              v35 = sub_215A70500();
              [v37 setObject:v39 forKey:v35];

LABEL_22:
              return;
            }
          }

          else
          {
          }
        }
      }

      return;
    }

    if (v18)
    {
      sub_215A704B0();
    }

    else
    {
      sub_2158368B0(MEMORY[0x277D84F90]);
    }

    v35 = sub_215A704A0();

    [v1 setSavedState_];
    goto LABEL_22;
  }

  sub_2158368B0(MEMORY[0x277D84F90]);
  v41 = sub_215A704A0();

  [v0 setSavedState_];
  v10 = v41;
}

void sub_215A471C0()
{
  v1 = v0;
  v2 = sub_215A6F910();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_215A6FA10();
  v83 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v74 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EE38);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v74 - v12;
  v14 = sub_215A6FAB0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v1 overrideCollectionType];
  if (v18)
  {
  }

  else
  {
    v77 = v5;
    v78 = v13;
    v75 = v10;
    v76 = v8;
    v79 = v17;
    v80 = v15;
    v81 = v14;
    v82 = v4;
    v19 = [v1 currentCollection];
    v20 = sub_215A70540();
    v22 = v21;

    *(&v88 + 1) = MEMORY[0x277D837D0];
    *&v87 = v20;
    *(&v87 + 1) = v22;
    v23 = [v1 savedState];
    v24 = sub_215A704B0();

    sub_215A07368(&v87, v85);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86 = v24;
    sub_215A3B13C(v85, 0xD000000000000011, 0x8000000215AC41F0, isUniquelyReferenced_nonNull_native);
    v26 = sub_215A704A0();

    [v1 setSavedState_];

    v27 = [v1 topmostCollectionViewController];
    v28 = v1;
    if (!v27 || (v29 = v27, v30 = sub_215A6FF80(), v29, (v30 & 0x100000000) != 0))
    {
      v87 = 0u;
      v88 = 0u;
      v32 = 1;
    }

    else
    {
      type metadata accessor for ID(0);
      *(&v88 + 1) = v31;
      LODWORD(v87) = v30;
      v32 = v31 == 0;
    }

    v33 = [v1 savedState];
    v34 = sub_215A704B0();

    v86 = v34;
    if (v32)
    {
      sub_21583F14C(&v87, &qword_27CA7E2E0);
      sub_215A39F8C(0xD000000000000010, 0x8000000215AC41D0, v85);
      sub_21583F14C(v85, &qword_27CA7E2E0);
    }

    else
    {
      sub_215A07368(&v87, v85);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v84 = v34;
      sub_215A3B13C(v85, 0xD000000000000010, 0x8000000215AC41D0, v35);
    }

    v36 = sub_215A704A0();

    [v1 setSavedState_];

    v37 = [v1 currentCollection];
    v38 = sub_215A70540();
    v40 = v39;

    v87 = 0u;
    v88 = 0u;
    v41 = [v1 savedState];
    v42 = sub_215A704B0();

    v86 = v42;
    sub_21583F14C(&v87, &qword_27CA7E2E0);
    sub_215A39F8C(v38, v40, v85);

    sub_21583F14C(v85, &qword_27CA7E2E0);
    v43 = sub_215A704A0();

    [v28 setSavedState_];

    v44 = [v28 topmostCollectionViewController];
    if (v44)
    {
      v45 = v44;
      v46 = v78;
      sub_215A6FBF0();
      v48 = v80;
      v47 = v81;
      if ((*(v80 + 48))(v46, 1, v81) == 1)
      {

        sub_21583F14C(v46, &qword_27CA7EE38);
      }

      else
      {
        v74 = v45;
        (*(v48 + 32))(v79, v46, v47);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EE48);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_215A96D40;
        *(inited + 32) = 0xD000000000000021;
        v78 = (inited + 32);
        *(inited + 40) = 0x8000000215AC4210;
        v50 = v75;
        sub_215A6FAA0();
        v51 = sub_215A6FA00();
        v52 = *(v83 + 8);
        v53 = v77;
        v52(v50, v77);
        v54 = MEMORY[0x277D83B88];
        *(inited + 48) = v51;
        *(inited + 72) = v54;
        *(inited + 80) = 0xD00000000000001ELL;
        *(inited + 88) = 0x8000000215AC4240;
        v55 = v76;
        sub_215A6FAA0();
        v56 = sub_215A6F9F0();
        v52(v55, v53);
        *(inited + 96) = v56;
        *(inited + 120) = MEMORY[0x277D83B88];
        *(inited + 128) = 0xD00000000000001ELL;
        *(inited + 136) = 0x8000000215AC4260;
        sub_215A6FA80();
        *(inited + 168) = MEMORY[0x277D85048];
        *(inited + 144) = v57;
        v58 = sub_2158368B0(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EB60);
        swift_arrayDestroy();
        v59 = [v28 currentCollection];
        v60 = sub_215A70540();
        v62 = v61;

        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EE40);
        *(&v88 + 1) = v63;
        *&v87 = v58;
        v64 = [v28 savedState];
        v65 = sub_215A704B0();

        v86 = v65;
        if (v63)
        {
          sub_215A07368(&v87, v85);
          v66 = swift_isUniquelyReferenced_nonNull_native();
          v84 = v65;
          sub_215A3B13C(v85, v60, v62, v66);

          v86 = v84;
        }

        else
        {
          sub_21583F14C(&v87, &qword_27CA7E2E0);
          sub_215A39F8C(v60, v62, v85);

          sub_21583F14C(v85, &qword_27CA7E2E0);
        }

        v67 = sub_215A704A0();

        [v28 setSavedState_];

        (*(v80 + 8))(v79, v81);
      }
    }

    v68 = objc_opt_self();
    v69 = [v68 safari_browserDefaults];
    v70 = [v28 savedState];
    sub_215A704B0();

    v71 = sub_215A704A0();

    v72 = sub_215A70500();
    [v69 setObject:v71 forKey:v72];

    v73 = [v68 safari_browserDefaults];
    sub_215A6F8F0();
    sub_215A708A0();
  }
}

uint64_t sub_215A47C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_215A6FA10();
  MEMORY[0x28223BE20](v4 - 8);
  if (*(a1 + 16) && (v5 = sub_215A39A1C(0xD000000000000021, 0x8000000215AC4210), (v6 & 1) != 0) && (sub_215A07378(*(a1 + 56) + 32 * v5, v14), (swift_dynamicCast() & 1) != 0) && *(a1 + 16) && (v7 = sub_215A39A1C(0xD00000000000001ELL, 0x8000000215AC4240), (v8 & 1) != 0) && (sub_215A07378(*(a1 + 56) + 32 * v7, v14), (swift_dynamicCast() & 1) != 0) && *(a1 + 16) && (v9 = sub_215A39A1C(0xD00000000000001ELL, 0x8000000215AC4260), (v10 & 1) != 0) && (sub_215A07378(*(a1 + 56) + 32 * v9, v14), (swift_dynamicCast() & 1) != 0))
  {
    MEMORY[0x2160724C0]();
    sub_215A6FA90();
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_215A6FAB0();
  return (*(*(v12 - 8) + 56))(a2, v11, 1, v12);
}

uint64_t sub_215A47E74()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EE38);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v58 - v6;
  v8 = sub_215A6FAB0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v0 savedState];
  v13 = sub_215A704B0();

  v14 = *(v13 + 16);
  v62 = v9;
  v63 = v8;
  v59 = v5;
  v60 = v11;
  v61 = v7;
  if (!v14 || (v15 = sub_215A39A1C(0xD000000000000010, 0x8000000215AC41D0), (v16 & 1) == 0))
  {

    goto LABEL_14;
  }

  sub_215A07378(*(v13 + 56) + 32 * v15, v68);

  type metadata accessor for ID(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v19 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v17 = v65;
  v18 = *MEMORY[0x277D7B510];
  v19 = MEMORY[0x277D84F90];
  while (v17 != v18)
  {
    v20 = [v1 bookmarkCollection];
    v21 = [v20 bookmarkWithID_];

    if (!v21)
    {
      break;
    }

    if (![v21 isFolder])
    {

      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_215A392E8(0, *(v19 + 2) + 1, 1, v19);
    }

    v23 = *(v19 + 2);
    v22 = *(v19 + 3);
    if (v23 >= v22 >> 1)
    {
      v19 = sub_215A392E8((v22 > 1), v23 + 1, 1, v19);
    }

    *(v19 + 2) = v23 + 1;
    *&v19[4 * v23 + 32] = v17;
    v17 = [v21 parentID];
  }

LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_215A96990;
  *(v24 + 32) = [v1 makeTopLevelCollectionViewController];
  v67 = v24;
  v25 = *(v19 + 2);
  if (!v25)
  {
    v30 = &selRef_resetZoom;
    goto LABEL_42;
  }

  v26 = MEMORY[0x277D84F90];
  v68[0] = MEMORY[0x277D84F90];
  while (v25 <= *(v19 + 2))
  {
    v27 = *&v19[4 * v25 + 28];
    v28 = [v1 bookmarkCollection];
    v29 = [v28 bookmarkWithID_];

    if (v29)
    {
      MEMORY[0x2160730A0]();
      if (*((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_215A70640();
      }

      sub_215A70660();
      v26 = v68[0];
    }

    if (!--v25)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_25:
  if (v26 >> 62)
  {
    goto LABEL_39;
  }

  v31 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v30 = &selRef_resetZoom;
  if (!v31)
  {
LABEL_40:

    v37 = MEMORY[0x277D84F90];
LABEL_41:
    sub_215A2A6F0(v37);
LABEL_42:
    v38 = [v1 innerNavigationController];
    sub_2159F7DA8(0, &qword_2811A24F0);
    v39 = sub_215A705D0();
    [v38 setViewControllers_];

    v40 = [v1 v30[368]];
    v41 = sub_215A704B0();

    if (*(v41 + 16) && (v42 = sub_215A39A1C(0xD000000000000011, 0x8000000215AC41F0), (v43 & 1) != 0))
    {
      sub_215A07378(*(v41 + 56) + 32 * v42, v68);

      if (swift_dynamicCast())
      {
        v44 = v65;
        v45 = v66;
LABEL_48:
        v46 = [v1 v30[368]];
        v47 = sub_215A704B0();

        if (*(v47 + 16))
        {
          v48 = sub_215A39A1C(v44, v45);
          v50 = v49;

          if (v50)
          {
            sub_215A07378(*(v47 + 56) + 32 * v48, v68);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EE40);
            if (swift_dynamicCast())
            {
              v51 = v61;
              sub_215A47C60(v65, v61);

              v53 = v62;
              v52 = v63;
              if ((*(v62 + 48))(v51, 1, v63) == 1)
              {
                sub_21583F14C(v51, &qword_27CA7EE38);
              }

              else
              {
                v54 = v60;
                (*(v53 + 32))(v60, v51, v52);
                v55 = [v1 topmostCollectionViewController];
                if (v55)
                {
                  v56 = v55;
                  v57 = v59;
                  (*(v53 + 16))(v59, v54, v52);
                  (*(v53 + 56))(v57, 0, 1, v52);
                  sub_215A6FC00();
                }

                (*(v53 + 8))(v54, v52);
              }
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }

    else
    {
    }

    v44 = 0;
    v45 = 0xE000000000000000;
    goto LABEL_48;
  }

  while (1)
  {
    v68[0] = MEMORY[0x277D84F90];
    result = sub_215A70C80();
    if (v31 < 0)
    {
      break;
    }

    v33 = 0;
    v64 = v26 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x216073710](v33, v26);
      }

      else
      {
        if (v33 >= *(v64 + 16))
        {
          goto LABEL_38;
        }

        v34 = *(v26 + 8 * v33 + 32);
      }

      v35 = v34;
      sub_215A2BCF0(v34);

      sub_215A70C60();
      sub_215A70C90();
      sub_215A70CA0();
      sub_215A70C70();
      ++v33;
      if (v36 == v31)
      {

        v37 = v68[0];
        v30 = &selRef_resetZoom;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v31 = sub_215A70CD0();
    v30 = &selRef_resetZoom;
    if (!v31)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_215A4873C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  sub_215A706C0();
  v4[27] = sub_215A706B0();
  v6 = sub_215A70670();
  v4[28] = v6;
  v4[29] = v5;

  return MEMORY[0x2822009F8](sub_215A487D4, v6, v5);
}

uint64_t sub_215A487D4()
{
  v1 = objc_opt_self();
  v0[30] = v1;
  v2 = [v1 sharedFeatureManager];
  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = sub_215A4891C;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EE30);
  v0[31] = v4;
  v0[25] = v4;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_215A48D44;
  v0[21] = &block_descriptor_169;
  v0[22] = v3;
  [v2 determineIfHistoryClearingIsAvailableWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_215A4891C()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return MEMORY[0x2822009F8](sub_215A48A24, v2, v1);
}

uint64_t sub_215A48A24()
{
  v1 = *(v0 + 208);
  [v1 setIsClearHistoryAvailable_];
  if ([v1 isClearHistoryAvailable])
  {
    v2 = [*(v0 + 208) historySessions];
    v3 = [v2 count];

    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  [*(v0 + 208) setIsClearHistoryAllowed_];
  v7 = [v5 sharedFeatureManager];
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 256;
  *(v0 + 88) = sub_215A48BC8;
  v8 = swift_continuation_init();
  *(v0 + 200) = v6;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_215A48D44;
  *(v0 + 168) = &block_descriptor_172;
  *(v0 + 176) = v8;
  [v7 determineIfScreenTimePasscodeIsSetWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_215A48BC8()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return MEMORY[0x2822009F8](sub_215A48CD0, v2, v1);
}

uint64_t sub_215A48CD0()
{
  v1 = *(v0 + 208);

  [v1 setIsScreenTimePasscodeSet_];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_215A48D44(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

void sub_215A48F60()
{
  v1 = sub_215A70540();
  v3 = v2;
  if (v1 != sub_215A70540() || v3 != v4)
  {
    v6 = sub_215A70D90();

    if (v6)
    {
      return;
    }

    v7 = [v0 innerNavigationController];
    v8 = [v7 viewControllers];

    sub_2159F7DA8(0, &qword_2811A24F0);
    v9 = sub_215A705E0();

    if (v9 >> 62)
    {
      v10 = sub_215A70CD0();
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    if (v10 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v10; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x216073710](i, v9);
      }

      else
      {
        v12 = *(v9 + 8 * i + 32);
      }

      v13 = v12;
      [v12 setEditing_];
    }

LABEL_19:

    v14 = sub_215A70540();
    v16 = v15;
    if (v14 == sub_215A70540() && v16 == v17)
    {
    }

    else
    {
      v19 = sub_215A70D90();

      if ((v19 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_27:

    sub_215A51CC8();
    return;
  }
}

id sub_215A493AC()
{
  v1 = v0;
  v2 = sub_215A6FD60();
  MEMORY[0x28223BE20](v2);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = *MEMORY[0x277D7B510];
  (*(v5 + 104))(v4, *MEMORY[0x277D28B60]);
  v6 = *(v1 + OBJC_IVAR___BookmarksViewController_contentProvider);
  sub_215A54F30(&qword_2811A28B0, type metadata accessor for BookmarksViewContentProvider);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = objc_allocWithZone(sub_215A6FF90());
  v8 = v6;
  v9 = sub_215A6FD70();
  sub_215A6FCD0();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;

  v12 = v9;
  sub_215A6FBE0();

  sub_215A6FC10();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_215A6FD50();

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;

  sub_215A6FD40();

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;

  sub_215A6FD20();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_215A6FC30();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_215A6FAD0();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_215A6FD10();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_215A6FCC0();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_215A6FAE0();

  return v12;
}

void sub_215A498C4(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E070);
  MEMORY[0x28223BE20](v6);
  v8 = (v70 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EAD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v70 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v73 = v6;
    v74 = v8;
    v14 = HIBYTE(a2) & 0xF;
    v75 = a1;
    *&v76 = a2;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v14 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v72 = v14;
    if (!v14)
    {
      v15 = *(Strong + OBJC_IVAR___BookmarksViewController_contentProvider);
      sub_215A28918(a3, 0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EAF8);
    v16 = sub_215A6FF70();
    v17 = *(v16 - 8);
    v18 = swift_allocObject();
    v77 = xmmword_215A96960;
    *(v18 + 16) = xmmword_215A96960;
    sub_215A6FF60();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAE0);
    sub_215A701D0();

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAC0);
    v21 = *(sub_215A6FED0() - 8);
    v22 = *(v21 + 80);
    v70[1] = *(v21 + 72);
    v70[3] = v20;
    *(swift_allocObject() + 16) = v77;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v70[2] = (v22 + 32) & ~v22;
    sub_215A6FE30();

    v23 = *(v17 + 56);
    v71 = v16;
    v23(v11, 1, 1, v16);
    v70[4] = v19;
    v78 = a3;
    sub_215A701C0();

    sub_21583F14C(v11, &unk_27CA7EAD0);
    v24 = [v13 selectedCollectionType];
    v25 = sub_215A70540();
    v27 = v26;
    if (v25 == sub_215A70540() && v27 == v28)
    {

LABEL_11:
      v30 = *&v13[OBJC_IVAR___BookmarksViewController_contentProvider];
      v31 = WebBookmarksRootBookmarkTitle();
      v32 = sub_215A70540();
      v34 = v33;

      v35 = [objc_opt_self() safari_browserDefaults];
      v36 = sub_215A708D0();

      if (v36 != 1)
      {
        if (!v36)
        {
          v37 = [*(v30 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection) rootBookmark];
          sub_215A2C98C(v78, v37, v32, v34, v75, v76, 1);
        }

LABEL_27:

        return;
      }

      v38 = [*(v30 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection) rootBookmark];
      sub_215A3FA7C(v78, v38, v75, v76, 1);

LABEL_16:
      return;
    }

    v29 = sub_215A70D90();

    if (v29)
    {

      goto LABEL_11;
    }

    v39 = sub_215A70540();
    v41 = v40;
    if (v39 == sub_215A70540() && v41 == v42)
    {

      goto LABEL_22;
    }

    v43 = sub_215A70D90();

    if (v43)
    {

LABEL_22:
      v44 = *&v13[OBJC_IVAR___BookmarksViewController_contentProvider];
      v45 = [v13 bookmarkCollection];
      v46 = [v45 readingListFolder];

      v47 = WebBookmarksReadingListFolderTitle();
      v48 = sub_215A70540();
      v50 = v49;

      sub_2159F7DA8(0, &unk_2811A2530);
      v51 = [*(v44 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection) readingListFolder];
      LOBYTE(v47) = sub_215A70A80();

      if (v47)
      {
        goto LABEL_25;
      }

      v52 = [objc_opt_self() safari_browserDefaults];
      v53 = sub_215A708D0();

      if (v53 == 1)
      {

        sub_215A3FA7C(v78, v46, v75, v76, 1);

        return;
      }

      if (!v53)
      {
LABEL_25:
        sub_215A2C98C(v78, v46, v48, v50, v75, v76, 1);
      }

      goto LABEL_27;
    }

    v54 = sub_215A70540();
    v56 = v55;
    if (v54 == sub_215A70540() && v56 == v57)
    {

      v58 = v74;
    }

    else
    {
      v59 = sub_215A70D90();

      v58 = v74;
      if ((v59 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v74 = v23;
    v60 = [v13 historyDataSource];
    if (v60)
    {
      v61 = v60;
      v62 = sub_215A70500();
      [v61 searchWithText_];
    }

    v63 = [v13 historySessions];
    sub_215A707E0();

    v75 = *(v73 + 36);
    *(v58 + v75) = 0;
    sub_215A6F830();
    sub_215A54F30(&qword_27CA7E078, MEMORY[0x277CC9178]);
    sub_215A70B50();
    if (!*(&v80 + 1))
    {
LABEL_44:
      sub_21583F14C(&v79, &qword_27CA7E2E0);
      v84 = 0u;
      v85 = 0u;
      v86 = 0;
LABEL_45:
      sub_21583F14C(v58, &qword_27CA7E070);
      v68 = [v13 historySessions];
      v69 = [v68 count];

      if (!v69 && v72)
      {
        *(swift_allocObject() + 16) = v77;
        sub_215A6FDC0();
        v74(v11, 1, 1, v71);
        sub_215A701C0();

        sub_21583F14C(v11, &unk_27CA7EAD0);
        return;
      }

      goto LABEL_16;
    }

    v64 = 0;
    while (1)
    {
      sub_215A07368(&v79, v83);
      *&v79 = v64;
      sub_215A07368(v83, (&v79 + 8));
      if (__OFADD__(v64, 1))
      {
        break;
      }

      *(v58 + v75) = v64 + 1;
      v84 = v79;
      v85 = v80;
      v86 = v81;
      if (!v81)
      {
        goto LABEL_45;
      }

      v76 = v79;
      sub_215A07368((&v84 + 8), &v79);
      if (v76 || (v67 = [v13 tabGroupProvider]) == 0)
      {
        v65 = 0;
      }

      else
      {
        v65 = [v67 hasMultipleProfiles];
        swift_unknownObjectRelease();
      }

      sub_215A07378(&v79, v83);
      sub_2159F7DA8(0, &unk_27CA7E080);
      swift_dynamicCast();
      v66 = v82;
      sub_215A4A418(v82, v78, v65);

      __swift_destroy_boxed_opaque_existential_0(&v79);
      sub_215A70B50();
      ++v64;
      if (!*(&v80 + 1))
      {
        goto LABEL_44;
      }
    }

    __break(1u);
  }
}

uint64_t sub_215A4A418(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EAD0);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = &v91 - v9;
  v10 = sub_215A6FED0();
  v102 = *(v10 - 8);
  v103 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_215A6FF70();
  v13 = *(v96 - 8);
  v14 = MEMORY[0x28223BE20](v96);
  v94 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v91 - v16;
  v18 = &selRef_tabGroupsMenuElementsWithOptions_newTabGroupName_hostTitle_descendantCount_movingSelectedTabs_actionHandler_dismissHandler_;
  v95 = a2;
  v97 = v13;
  if (a3)
  {
    v101 = a1;
    v19 = [a1 identifier];
    sub_215A70540();

    v20 = [v4 tabGroupProvider];
    if (v20)
    {
      v21 = [v20 activeProfile];
      swift_unknownObjectRelease();
      v22 = [v21 symbolImage];
    }

    else
    {
      v22 = 0;
    }

    v23 = [v4 tabGroupProvider];
    if (v23)
    {
      v24 = [v23 activeProfile];
      swift_unknownObjectRelease();
      v25 = "stPlacement";
      if (v24)
      {
        v26 = [v24 title];

        sub_215A70540();
      }
    }

    else
    {
      v25 = "NAddedBookmarkToastPlacement" + 17;
    }

    v18 = &selRef_tabGroupsMenuElementsWithOptions_newTabGroupName_hostTitle_descendantCount_movingSelectedTabs_actionHandler_dismissHandler_;
    sub_215A6FEE0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EAF8);
    v27 = v97;
    v28 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = *(v25 + 150);
    v30 = v96;
    (*(v27 + 16))(v29 + v28, v17, v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAE0);
    sub_215A701D0();

    (*(v27 + 8))(v17, v30);
    a1 = v101;
  }

  v31 = [a1 identifier];
  v32 = sub_215A70540();
  v34 = v33;

  v35 = [a1 &selRef_initWithFolder_inCollection_];
  v36 = sub_215A70540();
  v100 = v37;
  v101 = v36;

  v38 = [a1 v18[146]];
  v99 = sub_215A70540();

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = v32;
  v40[4] = v34;
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = v32;
  v42[4] = v34;
  v42[5] = a1;

  v43 = a1;
  v44 = v94;
  sub_215A6FF10();

  v45 = v96;

  v46 = [v43 historyItems];
  v47 = [v46 array];

  v48 = sub_215A705E0();
  v49 = sub_215A44B14(v48);

  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = swift_allocObject();
  *(v51 + 16) = v50;
  *(v51 + 24) = v49;

  sub_215A6FF20();
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = v49;

  sub_215A6FF30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EAF8);
  v54 = v97;
  v55 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_215A96960;
  (*(v54 + 16))(v56 + v55, v44, v45);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAE0);
  sub_215A701D0();

  if (v49 >> 62)
  {
    v58 = sub_215A70CD0();
    v92 = v57;
    if (v58)
    {
      goto LABEL_12;
    }

LABEL_22:

    v57 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v58 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v92 = v57;
  if (!v58)
  {
    goto LABEL_22;
  }

LABEL_12:
  v104 = MEMORY[0x277D84F90];
  sub_215A52BEC(0, v58 & ~(v58 >> 63), 0);
  if (v58 < 0)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_26;
  }

  v59 = 0;
  v60 = v49;
  v57 = v104;
  v98 = v102 + 32;
  v99 = v49 & 0xC000000000000001;
  v100 = v58;
  v101 = v49;
  do
  {
    if (v99)
    {
      v61 = MEMORY[0x216073710](v59, v60);
    }

    else
    {
      v61 = *(v60 + 8 * v59 + 32);
    }

    v62 = v61;
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v64 = swift_allocObject();
    *(v64 + 16) = v62;
    *(v64 + 24) = v63;
    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v66 = swift_allocObject();
    *(v66 + 16) = v65;
    *(v66 + 24) = v62;
    v67 = v62;

    sub_215A6FDF0();

    v68 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = v67;
    v70 = v67;
    sub_215A6FE70();
    v71 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v72 = swift_allocObject();
    *(v72 + 16) = v71;
    *(v72 + 24) = v70;
    v73 = v70;
    sub_215A6FE00();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_215A6FE60();
    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v75 = swift_allocObject();
    *(v75 + 16) = v74;
    *(v75 + 24) = v73;
    sub_215A6FEA0();
    v104 = v57;
    v77 = *(v57 + 16);
    v76 = *(v57 + 24);
    if (v77 >= v76 >> 1)
    {
      sub_215A52BEC(v76 > 1, v77 + 1, 1);
      v57 = v104;
    }

    ++v59;
    *(v57 + 16) = v77 + 1;
    (*(v102 + 32))(v57 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v77, v12, v103);
    v60 = v101;
  }

  while (v100 != v59);

  v45 = v96;
LABEL_23:
  sub_215A54F30(&qword_2811A28B8, MEMORY[0x277D28B80]);
  if (*(v57 + 16) == *(sub_215A70620() + 16))
  {

    goto LABEL_30;
  }

  if (qword_2811A21D8 != -1)
  {
    goto LABEL_32;
  }

LABEL_26:
  v78 = sub_215A70000();
  __swift_project_value_buffer(v78, qword_2811A32C8);

  v79 = sub_215A6FFE0();
  v80 = sub_215A70820();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v104 = v82;
    *v81 = 136315138;
    v83 = MEMORY[0x216073110](v57, v103);
    v85 = v84;

    v86 = sub_215A39474(v83, v85, &v104);

    *(v81 + 4) = v86;
    _os_log_impl(&dword_215819000, v79, v80, "Duplicate history items detected in history session: %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v82);
    MEMORY[0x216075690](v82, -1, -1);
    v87 = v81;
    v45 = v96;
    MEMORY[0x216075690](v87, -1, -1);
  }

  else
  {
  }

LABEL_30:
  v88 = v97;
  v89 = v93;
  (*(v97 + 56))(v93, 1, 1, v45);
  sub_215A701C0();

  sub_21583F14C(v89, &unk_27CA7EAD0);
  return (*(v88 + 8))(v94, v45);
}

uint64_t sub_215A4B108()
{
  v0 = sub_215A6FA60();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v8 = Strong;
  v9 = [Strong selectedCollectionType];
  v10 = sub_215A70540();
  v12 = v11;
  if (v10 == sub_215A70540() && v12 == v13)
  {

    goto LABEL_9;
  }

  v15 = sub_215A70D90();

  if (v15)
  {

LABEL_9:
    sub_215A6FD90();
    v16 = WebBookmarksRootBookmarkTitle();
    goto LABEL_10;
  }

  v19 = sub_215A70540();
  v21 = v20;
  if (v19 == sub_215A70540() && v21 == v22)
  {

LABEL_16:
    sub_215A6FD90();
    v16 = WebBookmarksReadingListFolderTitle();
    goto LABEL_10;
  }

  v23 = sub_215A70D90();

  if (v23)
  {

    goto LABEL_16;
  }

  v24 = sub_215A70540();
  v26 = v25;
  if (v24 == sub_215A70540() && v26 == v27)
  {

    goto LABEL_21;
  }

  v28 = sub_215A70D90();

  if ((v28 & 1) == 0)
  {

    return 0;
  }

LABEL_21:
  sub_215A6FD90();
  v29 = [v8 tabGroupProvider];
  if (v29)
  {
    v30 = [v29 hasMultipleProfiles];
    swift_unknownObjectRelease();
    if (v30)
    {
      v31 = [v8 tabGroupProvider];
      if (v31)
      {
        v32 = [v31 activeProfile];
        swift_unknownObjectRelease();
        if (v32)
        {
          sub_215A6FA50();
          sub_215A6FA50();
          sub_215A6FA30();
          v33 = *(v1 + 8);
          v33(v4, v0);
          v33(v6, v0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E220);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_215A96960;
          v35 = [v32 title];
          v36 = sub_215A70540();
          v38 = v37;

          *(v34 + 56) = MEMORY[0x277D837D0];
          *(v34 + 64) = sub_2159F501C();
          *(v34 + 32) = v36;
          *(v34 + 40) = v38;
          v18 = sub_215A70510();

          return v18;
        }
      }
    }
  }

  v16 = WebBookmarksHistoryFolderTitle();
LABEL_10:
  v17 = v16;
  v18 = sub_215A70540();

  return v18;
}

void sub_215A4B604(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v7 = v6 != 0;
    if (a2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    [Strong setKeepHistorySectionsExpanded_];
    v9 = [v5 selectedCollectionType];
    v10 = sub_215A70540();
    v12 = v11;
    if (v10 == sub_215A70540() && v12 == v13)
    {
    }

    else
    {
      v15 = sub_215A70D90();

      if ((v15 & 1) == 0)
      {
        sub_215A6FAC0();
LABEL_18:

        return;
      }
    }

    v16 = [v5 historyDataSource];
    if (v16)
    {
      v17 = v16;
      if (a2)
      {
        a2 = sub_215A70500();
      }

      [v17 searchWithText_];
    }

    goto LABEL_18;
  }
}

uint64_t sub_215A4B79C(uint64_t a1, int a2, uint64_t a3)
{
  v43 = a1;
  v42 = a2;
  v4 = sub_215A6FED0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x277D84F90];
  v8 = *(a3 + 16);
  v41 = a3;
  if (v8)
  {
    v11 = *(v5 + 16);
    v9 = v5 + 16;
    v10 = v11;
    v12 = a3 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    v45 = MEMORY[0x277D84F90];
    v11(v7, v12, v4);
    while (1)
    {
      v14 = sub_215A6FEB0();
      v15 = (*(v9 - 8))(v7, v4);
      if (v14)
      {
        MEMORY[0x2160730A0](v15);
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v45 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_215A70640();
        }

        sub_215A70660();
        v45 = v46;
      }

      v12 += v13;
      if (!--v8)
      {
        break;
      }

      v10(v7, v12, v4);
    }
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  v16 = v44;
  v17 = [v44 selectedCollectionType];
  v18 = sub_215A70540();
  v20 = v19;
  if (v18 == sub_215A70540() && v20 == v21)
  {

    goto LABEL_17;
  }

  v23 = sub_215A70D90();

  if (v23)
  {

LABEL_17:
    v24 = [v16 bookmarkCollection];
    v25 = [v24 rootBookmark];

    sub_2159F7DA8(0, &unk_2811A28A0);
    v26 = sub_215A705D0();

    v27 = [v16 makeBookmarksLeadingBarButtonItemsFor:v25 in:v43 isEditing:v42 & 1 selectedBookmarks:v26];

LABEL_18:
    sub_2159F7DA8(0, &qword_2811A22B8);
    v28 = sub_215A705E0();

    return v28;
  }

  v30 = sub_215A70540();
  v32 = v31;
  if (v30 == sub_215A70540() && v32 == v33)
  {

    goto LABEL_27;
  }

  v35 = sub_215A70D90();

  if (v35)
  {

LABEL_27:
    sub_2159F7DA8(0, &unk_2811A28A0);
    v26 = sub_215A705D0();

    v27 = [v16 makeReadingListLeadingBarButtonItemsIn:v43 isEditing:v42 & 1 selectedBookmarks:v26];
    goto LABEL_18;
  }

  v36 = sub_215A70540();
  v38 = v37;
  if (v36 == sub_215A70540() && v38 == v39)
  {
  }

  else
  {
    v40 = sub_215A70D90();

    if ((v40 & 1) == 0)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return sub_215A50F34(v43, v42 & 1, v41);
}

void sub_215A4BC4C(void *a1, int64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR___BookmarksViewController_contentProvider);
    v7 = [v5 bookmarkCollection];
    v8 = [v7 rootBookmark];

    sub_215A28FB4(a1, a2, v8);
  }
}

uint64_t sub_215A4BD1C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_215A2E3E8();
    v5 = sub_215A44A0C(a1, v4, MEMORY[0x277D28B80], &unk_2811A2980, MEMORY[0x277D28B80]);

    v6 = !v5;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_215A4BDF8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = sub_215A4BE64(a1);

  return v4;
}

uint64_t sub_215A4BE64(void *a1)
{
  v2 = v1;
  v4 = [v1 selectedCollectionType];
  v5 = sub_215A70540();
  v7 = v6;
  if (v5 == sub_215A70540() && v7 == v8)
  {

LABEL_8:
    v11 = [objc_opt_self() safari_browserDefaults];
    v12 = sub_215A708F0();

    if (v12)
    {
      return 0;
    }

    v14 = objc_opt_self();

    return [v14 _sf_operationForDropSession_];
  }

  v10 = sub_215A70D90();

  if (v10)
  {

    goto LABEL_8;
  }

  v15 = sub_215A70540();
  v17 = v16;
  if (v15 == sub_215A70540() && v17 == v18)
  {

    goto LABEL_20;
  }

  v20 = sub_215A70D90();

  if (v20)
  {

LABEL_20:
    v21 = [v2 bookmarkCollection];
    v22 = [(WebBookmarkCollection *)v21 dropOperationForReadingListDropSession:a1];

    return v22;
  }

  v23 = sub_215A70540();
  v25 = v24;
  if (v23 == sub_215A70540() && v25 == v26)
  {

    return 1;
  }

  else
  {
    v27 = sub_215A70D90();

    return v27 & 1;
  }
}

uint64_t sub_215A4C0DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong selectedCollectionType];
    v3 = sub_215A70540();
    v5 = v4;
    if (v3 == sub_215A70540() && v5 == v6)
    {

      v9 = 0;
    }

    else
    {
      v8 = sub_215A70D90();

      v9 = v8 ^ 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_215A4C1DC(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong selectedCollectionType];
    v7 = sub_215A70540();
    v9 = v8;
    if (v7 == sub_215A70540() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_215A70D90();

      if ((v12 & 1) == 0)
      {
        v18 = sub_215A70540();
        v20 = v19;
        if (v18 == sub_215A70540() && v20 == v21)
        {
        }

        else
        {
          v23 = sub_215A70D90();

          if ((v23 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        v13 = [v5 bookmarkCollection];
        v17 = [objc_msgSend(a1 session)];
        swift_unknownObjectRelease();
        if (!v17)
        {
          sub_2159F7DA8(0, &qword_27CA7E2B0);
          sub_215A705E0();
          v17 = sub_215A705D0();
        }

        [(WebBookmarkCollection *)v13 dropDragItemsInReadingList:v17];
LABEL_13:

LABEL_14:
        return;
      }
    }

    if (a2)
    {
      v13 = a2;
    }

    else
    {
      v14 = [v5 bookmarkCollection];
      v13 = [v14 rootBookmark];
    }

    v15 = a2;
    v16 = [v5 bookmarkCollection];
    v17 = [v16 rootBookmark];

    sub_215A29234(a1, v13, v17);
    goto LABEL_13;
  }
}

void sub_215A4C4E8(void *a1)
{
  v2 = sub_215A6FA60();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [a1 removeAllSegments];
    sub_2159F7DA8(0, &unk_2811A2520);
    v11 = sub_215A70500();
    v12 = objc_opt_self();
    v42 = a1;
    v13 = v12;
    v14 = [v12 systemImageNamed_];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = v10;
    v16 = sub_215A70A90();
    [v42 insertSegmentWithAction:v16 atIndex:0 animated:0];

    v17 = sub_215A70500();
    v18 = [v13 systemImageNamed_];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = sub_215A70A90();
    [v42 insertSegmentWithAction:v19 atIndex:1 animated:0];

    sub_215A6FA50();
    sub_215A6FA50();
    sub_215A6FA30();
    v20 = *(v3 + 8);
    v20(v6, v2);
    v20(v8, v2);
    v21 = sub_215A70500();
    v22 = v42;
    v23 = [v13 systemImageNamed_];

    swift_allocObject();
    swift_unknownObjectWeakInit();

    v24 = sub_215A70A90();
    [v22 insertSegmentWithAction:v24 atIndex:2 animated:0];

    v25 = [v15 selectedCollectionType];
    v26 = sub_215A70540();
    v28 = v27;
    if (v26 == sub_215A70540() && v28 == v29)
    {

      v30 = 0;
    }

    else
    {
      v31 = sub_215A70D90();

      if (v31)
      {

        v30 = 0;
      }

      else
      {
        v32 = sub_215A70540();
        v34 = v33;
        if (v32 == sub_215A70540() && v34 == v35)
        {

          v30 = 1;
        }

        else
        {
          v36 = sub_215A70D90();

          if (v36)
          {

            v30 = 1;
          }

          else
          {
            v37 = sub_215A70540();
            v39 = v38;
            if (v37 == sub_215A70540() && v39 == v40)
            {
            }

            else
            {
              v41 = sub_215A70D90();

              if ((v41 & 1) == 0)
              {
LABEL_18:

                return;
              }
            }

            v30 = 2;
          }
        }
      }
    }

    [v22 setSelectedSegmentIndex_];
    goto LABEL_18;
  }
}

void sub_215A4CAE4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *a3;
    v6 = Strong;
    [Strong setSelectedCollectionType_];
  }
}

void sub_215A4CB48(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {

      v9 = [v8 expandedHistorySessionIDs];
      v10 = sub_215A70740();

      v19 = v10;
      sub_215A52F8C(&v20, a3, a4);

      v11 = sub_215A70730();

      [v8 setExpandedHistorySessionIDs_];

      v12 = [v8 collapsedHistorySessionIDs];
      v13 = sub_215A70740();

      v20 = v13;
      sub_215A530DC(a3, a4);
    }

    else
    {
      v14 = [Strong expandedHistorySessionIDs];
      v15 = sub_215A70740();

      v20 = v15;
      sub_215A530DC(a3, a4);

      v16 = sub_215A70730();

      [v8 setExpandedHistorySessionIDs_];

      v17 = [v8 collapsedHistorySessionIDs];
      sub_215A70740();

      sub_215A52F8C(&v20, a3, a4);
    }

    v18 = sub_215A70730();

    [v8 setCollapsedHistorySessionIDs_];
  }
}

uint64_t sub_215A4CDD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v35 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EB10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_215A6F910();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v34 = sub_215A6F9A0();
  v16 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if ([Strong keepHistorySectionsExpanded])
    {
      goto LABEL_3;
    }

    v32 = v16;
    v33 = v10;
    v22 = [v20 collapsedHistorySessionIDs];
    v23 = sub_215A70740();

    LOBYTE(v22) = sub_21583CECC(a2, a3, v23);

    if (v22)
    {

      v21 = 0;
      return v21 & 1;
    }

    v24 = [v20 expandedHistorySessionIDs];
    v25 = sub_215A70740();

    LOBYTE(v24) = sub_21583CECC(a2, a3, v25);

    if (v24)
    {
LABEL_3:

      v21 = 1;
    }

    else
    {
      sub_215A6F990();
      v26 = [v35 lastVisitedDate];
      if (v26)
      {
        v27 = v26;
        sub_215A6F8E0();

        v28 = v33;
        v29 = *(v33 + 32);
        v29(v8, v13, v9);
        (*(v28 + 56))(v8, 0, 1, v9);
        v29(v15, v8, v9);
      }

      else
      {
        v28 = v33;
        (*(v33 + 56))(v8, 1, 1, v9);
        sub_215A6F8B0();
        if ((*(v28 + 48))(v8, 1, v9) != 1)
        {
          sub_21583F14C(v8, &unk_27CA7EB10);
        }
      }

      v21 = sub_215A6F970();

      (*(v28 + 8))(v15, v9);
      (*(v32 + 8))(v18, v34);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

id sub_215A4D1E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  sub_2159F7DA8(0, &qword_27CA7E098);
  v2 = sub_215A705D0();
  v3 = [v1 historyContextMenuFor_];

  return v3;
}

uint64_t sub_215A4D298()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = Strong;
  if ([Strong isClearHistoryAllowed])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_215A96990;
    sub_2159F7DA8(0, &qword_27CA7E098);
    v3 = sub_215A705D0();
    v4 = [v1 makeHistoryDeleteItemActionFor_];

    *(v2 + 32) = v4;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  return v2;
}

void sub_215A4D3A0(void *a1)
{
  v2 = sub_215A6F870();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D28F40]) init];
  v7 = [a1 url];
  if (v7)
  {
    v8 = v7;
    sub_215A6F850();

    v9 = sub_215A6F840();
    (*(v3 + 8))(v5, v2);
    v10 = [v6 navigationIntentWithHistoryURL_];

    [v10 setShouldDismissSidebarOnLoad_];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v12 = Strong, v13 = [Strong navigationIntentHandler], v12, v13))
    {
      [v13 dispatchNavigationIntent_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_215A4D568(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong tabGroupProvider];

    if (v9)
    {
      v10 = [v9 activeProfileIdentifier];
      swift_unknownObjectRelease();
      if (v10)
      {
        sub_215A70540();

        swift_getObjectType();
        sub_215A6FC40();
      }
    }
  }

  v11 = [a4 urlString];
  if (v11)
  {
    v12 = v11;
    sub_215A70540();
  }

  swift_getObjectType();
  sub_215A6FC90();
  v13 = [a4 title];
  if (v13)
  {
    v14 = v13;
    sub_215A70540();
  }

  sub_215A6FC70();
  sub_215A6FC50();
  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = a4;
    v20[4] = sub_215A54D58;
    v20[5] = v17;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 1107296256;
    v20[2] = sub_215A44C0C;
    v20[3] = &block_descriptor_153;
    v18 = _Block_copy(v20);
    swift_unknownObjectRetain();
    v19 = a4;

    [v16 loadIconForHistoryItem:v19 completionHandler:v18];
    _Block_release(v18);
  }
}

void sub_215A4D810(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    return;
  }

  swift_getObjectType();
  v15 = a1;
  v6 = sub_215A6FC80();
  v8 = v7;
  v9 = [a4 urlString];
  if (v9)
  {
    v10 = v9;
    v11 = sub_215A70540();
    v13 = v12;

    if (!v8)
    {
      if (!v13)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    if (v13)
    {
      if (v6 == v11 && v8 == v13)
      {

LABEL_16:
        v15 = v15;
        sub_215A6FC60();
        goto LABEL_17;
      }

      v14 = sub_215A70D90();

      if (v14)
      {
        goto LABEL_16;
      }

LABEL_17:

      return;
    }
  }

  else if (!v8)
  {
    goto LABEL_16;
  }
}

id sub_215A4D9BC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_215A96990;
  *(v6 + 32) = a3;
  sub_2159F7DA8(0, &qword_27CA7E098);
  v7 = a3;
  v8 = sub_215A705D0();

  v9 = [v5 historyContextMenuFor_];

  return v9;
}

id sub_215A4DAB4(uint64_t a1, void *a2)
{
  v3 = sub_215A6F870();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = [result linkPreviewProvider];

    if (v9)
    {
      v10 = [a2 url];
      if (v10)
      {
        v11 = v10;
        sub_215A6F850();

        v12 = sub_215A6F840();
        (*(v4 + 8))(v6, v3);
      }

      else
      {
        v12 = 0;
      }

      v13 = [v9 linkPreviewViewControllerForURL_];
      swift_unknownObjectRelease();

      return v13;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_215A4DC38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong linkPreviewProvider];

    if (v2)
    {
      [v2 linkPreviewProviderWillDismissPreview];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_215A4DCBC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = Strong;
  if ([Strong isClearHistoryAllowed])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_215A96990;
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_215A96990;
    *(v7 + 32) = a3;
    sub_2159F7DA8(0, &qword_27CA7E098);
    v8 = a3;
    v9 = sub_215A705D0();

    v10 = [v5 makeHistoryDeleteItemActionFor_];

    *(v6 + 32) = v10;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  return v6;
}

id sub_215A4DE04(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_215A6F870();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - v11;
  result = [a1 url];
  if (result)
  {
    v14 = result;
    sub_215A6F850();

    (*(v7 + 32))(v12, v10, v6);
    v15 = [a1 urlString];
    if (v15)
    {
      v16 = v15;
      v17 = sub_215A70540();
      v19 = v18;

      strcpy(v20, "HistoryItem-");
      BYTE5(v20[1]) = 0;
      HIWORD(v20[1]) = -5120;
      MEMORY[0x216073070](v17, v19);

      sub_215A37730(v12, v20[0], v20[1], a2, a3);
    }

    return (*(v7 + 8))(v12, v6);
  }

  return result;
}

id sub_215A4E088(unint64_t a1)
{
  v2 = v1;
  v4 = sub_215A6FA60();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - v7;
  v9 = sub_215A6F870();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  v60 = MEMORY[0x277D84F90];
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_215A54B00;
  *(v16 + 24) = v14;
  v58 = sub_215A54B08;
  v59 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v55 = 1107296256;
  v56 = sub_2159F7E08;
  v57 = &block_descriptor_68_0;
  v17 = _Block_copy(&aBlock);

  v53 = v14;

  v18 = [v15 _sf_openInNewTabActionWithHandler_];
  _Block_release(v17);
  MEMORY[0x2160730A0]();
  if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_215A70640();
  }

  sub_215A70660();
  v19 = v60;
  if (a1 >> 62)
  {
    if (sub_215A70CD0() != 1)
    {
      goto LABEL_15;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_15;
  }

  result = [v2 tabGroupProvider];
  if (result)
  {
    v21 = result;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x216073710](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v22 = *(a1 + 32);
    }

    v23 = v22;
    v24 = [v22 url];

    if (v24)
    {
      sub_215A6F850();

      v25 = sub_215A6F840();
      (*(v10 + 8))(v12, v9);
    }

    else
    {
      v25 = 0;
    }

    v26 = swift_allocObject();
    v27 = v53;
    *(v26 + 16) = sub_215A54B00;
    *(v26 + 24) = v27;
    v58 = sub_215A54B3C;
    v59 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v55 = 1107296256;
    v56 = sub_2159F6F40;
    v57 = &block_descriptor_77;
    v28 = _Block_copy(&aBlock);

    v29 = [v21 openInTabGroupMenuWithNewTabGroupName:0 URL:v25 descendantCount:0 handler:v28];
    _Block_release(v28);

    MEMORY[0x2160730A0]();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_215A70640();
    }

    sub_215A70660();
    swift_unknownObjectRelease();
    v19 = v60;
  }

LABEL_15:
  v48 = v19;
  v49 = sub_2159F7DA8(0, &unk_2811A26B0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_215A96A80;
  v46 = v30;
  v32 = swift_allocObject();
  v45 = xmmword_215A96990;
  *(v32 + 16) = xmmword_215A96990;
  v47 = sub_2159F7DA8(0, &unk_2811A2520);
  sub_215A6FA50();
  v33 = v50;
  sub_215A6FA50();
  sub_215A6FA30();
  v34 = a1;
  v35 = v2;
  v36 = *(v51 + 8);
  v37 = v33;
  v38 = v52;
  v36(v37, v52);
  v36(v8, v38);
  v39 = sub_215A70500();
  v40 = [objc_opt_self() systemImageNamed_];

  *(swift_allocObject() + 16) = v34;

  *(v32 + 32) = sub_215A70A90();
  *(v31 + 32) = sub_215A70A50();
  *(v31 + 40) = sub_215A70A50();
  if ([v35 isClearHistoryAllowed])
  {
    v41 = swift_allocObject();
    *(v41 + 16) = v45;
    sub_2159F7DA8(0, &qword_27CA7E098);
    v42 = sub_215A705D0();
    v43 = [v35 makeDeleteMultipleHistoryItemsActionFor_];

    *(v41 + 32) = v43;
  }

  *(v31 + 48) = sub_215A70A50();
  v44 = sub_215A70A50();

  return v44;
}

void sub_215A4E8C8(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v30 = sub_215A6F870();
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  v10 = a3 >> 62;
  if (a3 >> 62)
  {
    goto LABEL_26;
  }

  if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_27:
    v11 = v9;
LABEL_36:

    return;
  }

  while (1)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D28F40]) init];
    [v11 setPreferredTabOrder_];
    [v11 setPrefersOpenInNewTab_];
    v12 = v10 ? sub_215A70CD0() : *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = MEMORY[0x277D84F90];
    if (!v12)
    {
      break;
    }

    v29 = v11;
    v27 = v9;
    v31 = MEMORY[0x277D84F90];
    a1 = &v31;
    sub_215A70C80();
    if (v12 < 0)
    {
      __break(1u);
LABEL_39:
      v22 = MEMORY[0x216073710](0, v13);
LABEL_23:
      v23 = v22;

LABEL_30:
      v25 = [v9 navigationIntentHandler];
      if (v25)
      {
        [v25 dispatchNavigationIntent_];
        swift_unknownObjectRelease();
      }

      if ([v23 shouldOrderToForeground] && (v26 = objc_msgSend(v9, sel_tabGroupProvider)) != 0)
      {
        [v26 removeSingleBlankTabFromActiveTabGroup];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      goto LABEL_36;
    }

    v14 = 0;
    v10 = a3 & 0xC000000000000001;
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    v9 = (v5 + 8);
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v10)
      {
        v16 = MEMORY[0x216073710](v14, a3);
      }

      else
      {
        if (v14 >= *(v28 + 16))
        {
          goto LABEL_25;
        }

        v16 = *(a3 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 url];
      if (!v18)
      {
        goto LABEL_41;
      }

      v19 = v18;
      sub_215A6F850();

      v20 = sub_215A6F840();
      (*v9)(v7, v30);
      v21 = [v29 navigationIntentWithHistoryURL_];

      a1 = &v31;
      sub_215A70C60();
      v5 = *(v31 + 16);
      sub_215A70C90();
      sub_215A70CA0();
      sub_215A70C70();
      ++v14;
      if (v15 == v12)
      {
        v13 = v31;
        v9 = v27;
        v11 = v29;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    if (!sub_215A70CD0())
    {
      goto LABEL_27;
    }
  }

LABEL_18:
  if (v13 >> 62)
  {
    if (sub_215A70CD0() == 1)
    {
      goto LABEL_20;
    }

LABEL_29:
    sub_2159F7DA8(0, &qword_27CA7EE20);
    v24 = sub_215A705D0();

    v23 = [v11 navigationIntentWithMultipleIntents_];

    goto LABEL_30;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_29;
  }

LABEL_20:
  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_39;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v13 + 32);
    goto LABEL_23;
  }

  __break(1u);
LABEL_41:
  __break(1u);
}

void sub_215A4ECD8(uint64_t a1, id *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E0C0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v44 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v40 - v7);
  v9 = MEMORY[0x28223BE20](v6);
  v47 = &v40 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v46 = (&v40 - v12);
  MEMORY[0x28223BE20](v11);
  v14 = (&v40 - v13);
  v15 = sub_215A6F870();
  v48 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  v21 = [objc_opt_self() generalPasteboard];
  if (a2 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_215A70CD0())
  {
    if (!i)
    {
LABEL_24:
      v39 = sub_215A705D0();

      [v21 setURLs_];

      return;
    }

    v49 = MEMORY[0x277D84F90];
    sub_215A52C50(0, i & ~(i >> 63), 0);
    v45 = i;
    if (i < 0)
    {
      break;
    }

    v41 = v21;
    v23 = v49;
    v24 = a2;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      v44 = (v48 + 56);
      v42 = v20;
      v43 = (v48 + 48);
      v25 = (v48 + 32);
      while (1)
      {
        v26 = v24;
        v8 = MEMORY[0x216073710](v18);
        v27 = [swift_unknownObjectRetain() url];
        if (v27)
        {
          a2 = v27;
          v21 = v46;
          sub_215A6F850();

          v28 = 0;
        }

        else
        {
          v28 = 1;
          v21 = v46;
        }

        (*v44)(v21, v28, 1, v15);
        sub_215A54B68(v21, v14);
        if ((*v43)(v14, 1, v15) == 1)
        {
          break;
        }

        v29 = v47;
        sub_215A54BD8(v14, v47);
        a2 = *v25;
        v20 = v42;
        (*v25)(v42, v29, v15);
        sub_21583F14C(v14, &qword_27CA7E0C0);
        swift_unknownObjectRelease_n();
        v49 = v23;
        v31 = *(v23 + 16);
        v30 = *(v23 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_215A52C50(v30 > 1, v31 + 1, 1);
          v23 = v49;
        }

        ++v18;
        *(v23 + 16) = v31 + 1;
        (a2)(v23 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v31, v20, v15);
        v24 = v26;
        if (v45 == v18)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    else
    {
      v14 = a2 + 4;
      v46 = (v48 + 56);
      v43 = (v48 + 48);
      v32 = (v48 + 32);
      v20 = v45;
      while (1)
      {
        v33 = *v14;
        v34 = [v33 url];
        if (v34)
        {
          v21 = v44;
          a2 = v34;
          sub_215A6F850();

          v35 = 0;
        }

        else
        {
          v35 = 1;
          v21 = v44;
        }

        (*v46)(v21, v35, 1, v15);
        sub_215A54B68(v21, v8);
        if ((*v43)(v8, 1, v15) == 1)
        {
          break;
        }

        v36 = v47;
        sub_215A54BD8(v8, v47);
        a2 = *v32;
        (*v32)(v18, v36, v15);
        sub_21583F14C(v8, &qword_27CA7E0C0);

        v49 = v23;
        v38 = *(v23 + 16);
        v37 = *(v23 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_215A52C50(v37 > 1, v38 + 1, 1);
          v23 = v49;
        }

        *(v23 + 16) = v38 + 1;
        (a2)(v23 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v38, v18, v15);
        ++v14;
        if (!--v20)
        {
LABEL_23:
          v21 = v41;
          goto LABEL_24;
        }
      }
    }

    __break(1u);
LABEL_27:
    ;
  }

  __break(1u);
}

id sub_215A4F294(uint64_t a1)
{
  v2 = sub_215A6FA60();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  sub_2159F7DA8(0, &unk_2811A2520);
  sub_215A6FA50();
  sub_215A6FA50();
  sub_215A6FA30();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v9(v8, v2);
  v10 = sub_215A70500();
  v11 = [objc_opt_self() systemImageNamed_];

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;

  v14 = sub_215A70A90();
  v15 = sub_215A70500();
  [v14 setAccessibilityIdentifier_];

  return v14;
}

void sub_215A4F534()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2159F7DA8(0, &qword_27CA7E098);
    v2 = sub_215A705D0();
    [v1 deleteHistoryItems:v2 completionHandler:0];
  }
}

id sub_215A4F5E4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_2159F7DA8(0, &qword_27CA7E098);
  v6 = sub_215A705E0();
  v7 = a1;
  v8 = a4(v6);

  return v8;
}

id sub_215A4F674(uint64_t a1)
{
  v2 = sub_215A6FA60();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  sub_215A6FA50();
  sub_215A6FA50();
  sub_215A6FA30();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v9(v8, v2);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;

  v12 = sub_215A70500();

  aBlock[4] = sub_215A54AC4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_215A4FAE4;
  aBlock[3] = &block_descriptor_45_0;
  v13 = _Block_copy(aBlock);
  v14 = [objc_opt_self() contextualActionWithStyle:1 title:v12 handler:v13];

  _Block_release(v13);

  v15 = v14;
  v16 = sub_215A70500();
  [v15 setAccessibilityIdentifier_];

  v17 = sub_215A70500();
  v18 = [objc_opt_self() systemImageNamed_];

  [v15 setImage_];
  return v15;
}

void sub_215A4F99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_2159F7DA8(0, &qword_27CA7E098);
    v8 = sub_215A705D0();
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    aBlock[4] = sub_215A54ACC;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2159F7E08;
    aBlock[3] = &block_descriptor_54;
    v10 = _Block_copy(aBlock);

    [v7 deleteHistoryItems:v8 completionHandler:v10];
    _Block_release(v10);
  }
}

void sub_215A4FAE4(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_2159F7D3C, v8);
}

void sub_215A4FBD0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  if ([v4 isClearHistoryAllowed])
  {
    v7 = [v4 historyDataSource];
    if (v7)
    {
      v8 = v7;
      sub_2159F7DA8(0, &qword_27CA7E098);
      v9 = sub_215A705D0();
      v10 = swift_allocObject();
      *(v10 + 16) = a2;
      *(v10 + 24) = a3;
      v12[4] = sub_215A54A94;
      v12[5] = v10;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 1107296256;
      v12[2] = sub_2159F7E08;
      v12[3] = &block_descriptor_38;
      v11 = _Block_copy(v12);
      sub_2159F7D90(a2);

      [v8 deleteHistoryItems:v9 completionHandler:v11];
      _Block_release(v11);
    }
  }

  else if (a2)
  {
    a2();
  }
}

uint64_t sub_215A4FE20(void *a1, char a2)
{
  v5 = [v2 makeMoreMenuBarButtonIn:a1 isEditing:a2 & 1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_215A96A80;
    *(v6 + 32) = [v2 dismissButton];
    v7 = [objc_opt_self() flexibleSpaceItem];
    result = v6;
    *(v6 + 40) = v7;
    *(v6 + 48) = v5;
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_215A96990;
    if (a2)
    {
      sub_2159F7DA8(0, &qword_2811A22B8);
      sub_2159F7DA8(0, &unk_2811A2520);
      v10 = swift_allocObject();
      *(v10 + 16) = a1;
      v11 = a1;
      sub_215A70A90();
      v12 = sub_215A70910();
      v13 = sub_215A70500();
      [v12 setAccessibilityIdentifier_];

      result = v9;
      *(v9 + 32) = v12;
    }

    else
    {
      v14 = [v2 dismissButton];
      result = v9;
      *(v9 + 32) = v14;
    }
  }

  return result;
}

id sub_215A500D8(id a1, char a2)
{
  v3 = v2;
  v6 = sub_215A6FD60();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = (&v47 - v11);
  v13 = [v3 rootCollectionViewController];
  if (!v13 || (v14 = v13, v13, v14 != a1))
  {
    sub_215A6FD80();
    v15 = (*(v7 + 88))(v10, v6);
    if (v15 == *MEMORY[0x277D28B60])
    {
      (*(v7 + 96))(v10, v6);
      v16 = *v10;
      v17 = [v3 bookmarkCollection];
      v18 = [v17 bookmarkWithID_];

      if (v18)
      {
        v19 = [v3 makeTrailingBarButtonItemFor:v18 in:a1 isEditing:{objc_msgSend(a1, sel_isEditing)}];
LABEL_16:

        return v19;
      }
    }

    else
    {
      if (v15 == *MEMORY[0x277D28B50])
      {
        return [v3 makeReadingListMoreButtonItemIn:a1 isEditing:{objc_msgSend(a1, sel_isEditing)}];
      }

      if (v15 == *MEMORY[0x277D28B58])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_215A96990;
        *(v28 + 32) = sub_215A34D78(0);
        sub_2159F7DA8(0, &unk_2811A26B0);
        v29 = sub_215A70A50();
        v30 = sub_215A70500();
        [v29 setAccessibilityIdentifier_];

        sub_2159F7DA8(0, &qword_2811A22B8);
        v31 = sub_215A70500();
        v32 = [objc_opt_self() systemImageNamed_];

        v18 = v29;
        v19 = sub_215A70920();
        [v19 setPreferredMenuElementOrder_];
        goto LABEL_16;
      }

      (*(v7 + 8))(v10, v6);
    }

    return 0;
  }

  v21 = [v3 selectedCollectionType];
  v22 = sub_215A70540();
  v24 = v23;
  if (v22 == sub_215A70540() && v24 == v25)
  {

LABEL_18:
    sub_215A6FD80();
    if ((*(v7 + 88))(v12, v6) == *MEMORY[0x277D28B60])
    {
      (*(v7 + 96))(v12, v6);
      v33 = *v12;
      v34 = [v3 bookmarkCollection];
      v35 = [v34 bookmarkWithID_];

      if (v35)
      {
        v36 = [v3 makeTrailingBarButtonItemFor:v35 in:a1 isEditing:a2 & 1];

        return v36;
      }
    }

    else
    {
      (*(v7 + 8))(v12, v6);
    }

    return 0;
  }

  v27 = sub_215A70D90();

  if (v27)
  {

    goto LABEL_18;
  }

  v37 = sub_215A70540();
  v39 = v38;
  if (v37 == sub_215A70540() && v39 == v40)
  {

    return [v3 makeReadingListMoreButtonItemIn:a1 isEditing:a2 & 1];
  }

  v41 = sub_215A70D90();

  if (v41)
  {

    return [v3 makeReadingListMoreButtonItemIn:a1 isEditing:a2 & 1];
  }

  v42 = sub_215A70540();
  v44 = v43;
  if (v42 == sub_215A70540() && v44 == v45)
  {

    return [v3 makeHistoryMoreButtonItemFor:a1 isEditing:a2 & 1];
  }

  v46 = sub_215A70D90();

  if (v46)
  {
    return [v3 makeHistoryMoreButtonItemFor:a1 isEditing:a2 & 1];
  }

  return 0;
}

id sub_215A50850(void *a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_215A96A80;
  *(v4 + 32) = sub_215A34D78(1);
  *(v4 + 40) = sub_215A35238();
  *(v4 + 48) = sub_215A40418(a1);
  sub_2159F7DA8(0, &unk_2811A26B0);
  v5 = sub_215A70A50();
  v6 = sub_215A70500();
  [v5 setAccessibilityIdentifier_];

  sub_2159F7DA8(0, &qword_2811A22B8);
  v7 = sub_215A70500();
  v8 = [objc_opt_self() systemImageNamed_];

  v9 = v5;
  v10 = sub_215A70920();
  [v10 setPreferredMenuElementOrder_];

  v11 = v10;
  v12 = sub_215A70500();
  [v11 setAccessibilityIdentifier_];

  return v11;
}

id sub_215A50AD8(void *a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_215A96980;
  *(v5 + 32) = sub_215A40418(a1);
  *(v5 + 40) = [v2 makeClearHistoryActionIn_];
  sub_2159F7DA8(0, &unk_2811A26B0);
  v6 = sub_215A70A50();
  v7 = sub_215A70500();
  [v6 setAccessibilityIdentifier_];

  sub_2159F7DA8(0, &qword_2811A22B8);
  v8 = sub_215A70500();
  v9 = [objc_opt_self() systemImageNamed_];

  v10 = v6;
  v11 = sub_215A70920();
  [v11 setPreferredMenuElementOrder_];

  v12 = v11;
  v13 = sub_215A70500();
  [v12 setAccessibilityIdentifier_];

  return v12;
}

void *sub_215A50D60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_215A96990;
  *(v0 + 32) = sub_215A34D78(0);
  sub_2159F7DA8(0, &unk_2811A26B0);
  v8 = v0;
  v1 = sub_215A70A50();
  v2 = sub_215A70500();
  [v1 setAccessibilityIdentifier_];

  sub_2159F7DA8(0, &qword_2811A22B8);
  v3 = sub_215A70500();
  v4 = [objc_opt_self() systemImageNamed_];

  v5 = v1;
  v6 = sub_215A70920();
  [v6 setPreferredMenuElementOrder_];

  return v6;
}

uint64_t sub_215A50F34(uint64_t a1, char a2, uint64_t a3)
{
  v7 = sub_215A6FED0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84F90];
  result = MEMORY[0x277D84F90];
  if (a2)
  {
    v23 = v3;
    v24 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_215A96990;
    v27 = v11;
    v14 = *(a3 + 16);
    v25 = v13;
    if (v14)
    {
      v15 = *(v8 + 16);
      v16 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v17 = *(v8 + 72);
      v26 = MEMORY[0x277D84F90];
      v15(v10, v16, v7);
      while (1)
      {
        v18 = sub_215A6FDE0();
        v19 = (*(v8 + 8))(v10, v7);
        if (v18)
        {
          MEMORY[0x2160730A0](v19);
          if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v26 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_215A70640();
          }

          sub_215A70660();
          v26 = v27;
        }

        v16 += v17;
        if (!--v14)
        {
          break;
        }

        v15(v10, v16, v7);
      }
    }

    else
    {
      v26 = v11;
    }

    sub_2159F7DA8(0, &qword_27CA7E098);
    v20 = sub_215A705D0();

    v21 = [v23 makeDeleteMultipleHistoryItemsButtonFor:v20 in:v24];

    result = v25;
    *(v25 + 32) = v21;
  }

  return result;
}

uint64_t sub_215A51180(char **a1, char a2, unint64_t a3)
{
  v3 = MEMORY[0x277D84F90];
  if (a2)
  {
    v11[4] = sub_215A29EE8(a3, a1);
    v5 = sub_215A4095C(a3, 0xD00000000000001ALL, 0x8000000215AC1170);
    v6 = 0;
    v11[5] = v5;
    v10 = v3;
    while (v6 != 2)
    {
      v7 = v11[v6++ + 4];
      if (v7)
      {
        v8 = v7;
        MEMORY[0x2160730A0]();
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_215A70640();
        }

        sub_215A70660();
        v3 = v10;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DF38);
    swift_arrayDestroy();
  }

  return v3;
}

void sub_215A51474(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a3 >> 62)
    {
      if (sub_215A70CD0())
      {
        goto LABEL_4;
      }
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v6 = [v5 isClearHistoryAllowed];
      sub_2159F7DA8(0, &qword_27CA7E098);
      v7 = sub_215A705D0();
      if (v6)
      {
        [v5 deleteHistoryItems:v7 completionHandler:0];
      }

      else
      {
        [v5 showClearHistoryDenialAlertFor_];
      }

      goto LABEL_10;
    }

    v7 = v5;
LABEL_10:
  }
}

id sub_215A51688(void *a1)
{
  v2 = v1;
  v4 = sub_215A6FA60();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  [v2 updateClearHistoryAllowed];
  sub_2159F7DA8(0, &unk_2811A2520);
  sub_215A6FA50();
  sub_215A6FA50();
  sub_215A6FA30();
  v11 = *(v5 + 8);
  v11(v8, v4);
  v11(v10, v4);
  v12 = sub_215A70500();
  v13 = [objc_opt_self() systemImageNamed_];

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  v16 = a1;
  v17 = sub_215A70A90();
  v18 = sub_215A70500();
  [v17 setAccessibilityIdentifier_];

  v19 = [v2 historySessions];
  v20 = [v19 count];

  if (v20)
  {
    v21 = 2;
  }

  else
  {
    v21 = 3;
  }

  [v17 setAttributes_];
  return v17;
}

void sub_215A5198C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong isClearHistoryAvailable])
    {
      if ([v5 isClearHistoryAllowed])
      {
        v6 = [v5 clearHistoryController];
        [v6 showClearHistoryMenuFromViewController_];
      }
    }

    else
    {
      [v5 showClearHistoryDenialAlertFor_];
    }
  }
}

void *sub_215A51AB4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_215A96980;
  *(v3 + 32) = sub_215A40418(a1);
  *(v3 + 40) = [v1 makeClearHistoryActionIn_];
  sub_2159F7DA8(0, &unk_2811A26B0);
  v4 = sub_215A70A50();
  v5 = sub_215A70500();
  [v4 setAccessibilityIdentifier_];

  sub_2159F7DA8(0, &qword_2811A22B8);
  v6 = sub_215A70500();
  v7 = [objc_opt_self() systemImageNamed_];

  v8 = v4;
  v9 = sub_215A70920();
  [v9 setPreferredMenuElementOrder_];

  return v9;
}

void sub_215A51CC8()
{
  v1 = v0;
  if ([v0 suppressingReloads])
  {
    return;
  }

  v2 = [v0 innerNavigationController];
  v3 = [v2 viewControllers];

  sub_2159F7DA8(0, &qword_2811A24F0);
  v4 = sub_215A705E0();

  v21 = v1;
  if (v4 >> 62)
  {
LABEL_22:
    v5 = sub_215A70CD0();
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_5:
      v6 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x216073710](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        sub_215A6FF90();
        if (swift_dynamicCastClass())
        {
          v10 = sub_215A6FCE0();
          v11 = v10();

          if ((v11 & 1) == 0)
          {

            v12 = [v21 innerNavigationController];

            v13 = [v21 rootCollectionViewController];
            if (v13)
            {
              v22 = v13;
              sub_215A6FAC0();
            }

            return;
          }
        }

        else
        {
        }

        ++v6;
      }

      while (v9 != v5);
    }
  }

  v14 = [v21 innerNavigationController];
  v15 = [v14 viewControllers];

  v16 = sub_215A705E0();
  if (v16 >> 62)
  {
    v17 = sub_215A70CD0();
    if (v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_25:
      if (v17 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v17; ++i)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x216073710](i, v16);
        }

        else
        {
          v19 = *(v16 + 8 * i + 32);
        }

        v20 = v19;
        sub_215A6FF90();
        if (swift_dynamicCastClass())
        {
          sub_215A6FAC0();
        }
      }
    }
  }
}

id BookmarksViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_215A70500();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

uint64_t sub_215A522F8(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 innerNavigationController];
  [v4 pushViewController:a1 animated:1];

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;

  sub_215A6FD40();

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;

  sub_215A6FD20();
}

uint64_t sub_215A524B4(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = Strong;
  v4 = swift_unknownObjectUnownedLoadStrong();
  v5 = [v3 makeTrailingBarButtonItemsIn:v4 isEditing:a1 & 1];

  sub_2159F7DA8(0, &qword_2811A22B8);
  v6 = sub_215A705E0();

  return v6;
}

uint64_t sub_215A52584(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = Strong;
  v6 = swift_unknownObjectUnownedLoadStrong();
  v7 = sub_215A4B79C(v6, a1 & 1, a2);

  return v7;
}

void sub_215A5261C()
{
  v1 = [v0 innerNavigationController];
  v2 = [v1 viewControllers];

  sub_2159F7DA8(0, &qword_2811A24F0);
  v3 = sub_215A705E0();

  if (v3 >> 62)
  {
    v4 = sub_215A70CD0();
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x216073710](i, v3);
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    sub_215A6FF90();
    if (swift_dynamicCastClass())
    {
      sub_215A6FC20();
    }
  }

LABEL_12:
}

Swift::Void __swiftcall BookmarksViewController.recentlySavedBookmarksDidChange()()
{
  v1 = v0;
  v2 = sub_215A6FD60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 topmostCollectionViewController];
  if (v6)
  {
    v7 = v6;
    sub_215A6FD80();
    v8 = (*(v3 + 88))(v5, v2);
    v9 = *MEMORY[0x277D28B58];
    (*(v3 + 8))(v5, v2);
    if (v8 == v9)
    {
      goto LABEL_3;
    }

    v10 = v7;
    v11 = [v1 rootCollectionViewController];
    if (!v11)
    {

      goto LABEL_8;
    }

    v12 = v11;

    if (v10 == v12)
    {
LABEL_3:
      sub_215A6FAC0();
    }

LABEL_8:
  }
}

Swift::Void __swiftcall BookmarksViewController.historyViewDataSource(_:didComputeSessions:)(SFHistoryViewDataSource *_, NSOrderedSet didComputeSessions)
{
  [v2 setHistorySessions_];
  v3 = [v2 selectedCollectionType];
  v4 = sub_215A70540();
  v6 = v5;
  if (v4 == sub_215A70540() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_215A70D90();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  sub_215A51CC8();
}

size_t sub_215A52BEC(size_t a1, int64_t a2, char a3)
{
  result = sub_215A52DB0(a1, a2, a3, *v3, &qword_27CA7EAC0, &unk_215A971F8, MEMORY[0x277D28B80]);
  *v3 = result;
  return result;
}

char *sub_215A52C30(char *a1, int64_t a2, char a3)
{
  result = sub_215A52CBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_215A52C50(size_t a1, int64_t a2, char a3)
{
  result = sub_215A52DB0(a1, a2, a3, *v3, &qword_27CA7EE18, &unk_215A97320, MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

char *sub_215A52CBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EE60);
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

size_t sub_215A52DB0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

uint64_t sub_215A52F8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_215A70E20();
  sub_215A70580();
  v8 = sub_215A70E50();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_215A70D90() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_215A53B10(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_215A530DC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_215A70E20();
  sub_215A70580();
  v6 = sub_215A70E50();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_215A70D90() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_215A53218();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_215A5394C(v8);
  *v2 = v16;
  return v12;
}

void *sub_215A53218()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EE28);
  v2 = *v0;
  v3 = sub_215A70BE0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_215A53374()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EE58);
  v2 = *v0;
  v3 = sub_215A70BE0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_215A534B4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EE28);
  result = sub_215A70BF0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_215A70E20();

      sub_215A70580();
      result = sub_215A70E50();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_215A536EC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EE28);
  result = sub_215A70BF0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_215A70E20();
      sub_215A70580();
      result = sub_215A70E50();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_215A5394C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_215A70BA0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_215A70E20();

        sub_215A70580();
        v10 = sub_215A70E50();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_215A53B10(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_215A536EC();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_215A53218();
      goto LABEL_16;
    }

    sub_215A534B4();
  }

  v10 = *v4;
  sub_215A70E20();
  sub_215A70580();
  result = sub_215A70E50();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_215A70D90();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_215A70DC0();
  __break(1u);
  return result;
}

char *sub_215A53C90(void *a1, uint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v22 = a2;
  v4 = sub_215A709C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_215A70460();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_215A709A0();
  MEMORY[0x28223BE20](v9 - 8);
  *&v3[OBJC_IVAR___BookmarksViewController____lazy_storage___clearHistoryController] = 0;
  *&v3[OBJC_IVAR___BookmarksViewController____lazy_storage___dismissButton] = 0;
  v10 = OBJC_IVAR___BookmarksViewController_savedState;
  *&v3[v10] = sub_2158368B0(MEMORY[0x277D84F90]);
  v11 = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR___BookmarksViewController_collapsedHistorySessionIDs] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR___BookmarksViewController_expandedHistorySessionIDs] = v11;
  *&v3[OBJC_IVAR___BookmarksViewController____lazy_storage___historyDataSource] = 1;
  v12 = OBJC_IVAR___BookmarksViewController_historySessions;
  *&v3[v12] = [objc_allocWithZone(MEMORY[0x277CBEB70]) init];
  v3[OBJC_IVAR___BookmarksViewController_isClearHistoryAvailable] = 1;
  v3[OBJC_IVAR___BookmarksViewController_isClearHistoryAllowed] = 0;
  v3[OBJC_IVAR___BookmarksViewController_isScreenTimePasscodeSet] = 0;
  v3[OBJC_IVAR___BookmarksViewController_isPrivateBrowsingAvailable] = 0;
  v13 = OBJC_IVAR___BookmarksViewController_imageLoadingQueue;
  sub_2159F7DA8(0, &qword_2811A2910);
  sub_215A70990();
  sub_215A70450();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v4);
  *&v3[v13] = sub_215A709F0();
  v14 = OBJC_IVAR___BookmarksViewController_innerNavigationController;
  *&v3[v14] = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  v3[OBJC_IVAR___BookmarksViewController_keepHistorySectionsExpanded] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___BookmarksViewController_suppressingReloads] = 0;
  v15 = &v3[OBJC_IVAR___BookmarksViewController_importHandler];
  *v15 = 0;
  v15[1] = 0;
  v16 = v21;
  *&v3[OBJC_IVAR___BookmarksViewController_bookmarkCollection] = v21;
  v17 = objc_allocWithZone(type metadata accessor for BookmarksViewContentProvider());
  *&v3[OBJC_IVAR___BookmarksViewController_contentProvider] = sub_215A2A9C4(v16, -1);
  *&v3[OBJC_IVAR___BookmarksViewController_selectedCollectionType] = @"BookmarksCollection";
  *&v3[OBJC_IVAR___BookmarksViewController_overrideCollectionType] = v22;
  v23.receiver = v3;
  v23.super_class = BookmarksViewController;
  v18 = @"BookmarksCollection";
  v19 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, 0, 0);
  *(*&v19[OBJC_IVAR___BookmarksViewController_contentProvider] + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate + 8) = &off_2827BE428;
  swift_unknownObjectWeakAssign();
  return v19;
}

void _sSo23BookmarksViewControllerC14MobileSafariUIE5coderABSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = sub_215A709C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_215A70460();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_215A709A0();
  MEMORY[0x28223BE20](v7 - 8);
  *(v1 + OBJC_IVAR___BookmarksViewController____lazy_storage___clearHistoryController) = 0;
  *(v1 + OBJC_IVAR___BookmarksViewController____lazy_storage___dismissButton) = 0;
  v8 = OBJC_IVAR___BookmarksViewController_savedState;
  *(v1 + v8) = sub_2158368B0(MEMORY[0x277D84F90]);
  v9 = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR___BookmarksViewController_collapsedHistorySessionIDs) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR___BookmarksViewController_expandedHistorySessionIDs) = v9;
  *(v1 + OBJC_IVAR___BookmarksViewController____lazy_storage___historyDataSource) = 1;
  v10 = OBJC_IVAR___BookmarksViewController_historySessions;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277CBEB70]) init];
  *(v1 + OBJC_IVAR___BookmarksViewController_isClearHistoryAvailable) = 1;
  *(v1 + OBJC_IVAR___BookmarksViewController_isClearHistoryAllowed) = 0;
  *(v1 + OBJC_IVAR___BookmarksViewController_isScreenTimePasscodeSet) = 0;
  *(v1 + OBJC_IVAR___BookmarksViewController_isPrivateBrowsingAvailable) = 0;
  v11 = OBJC_IVAR___BookmarksViewController_imageLoadingQueue;
  sub_2159F7DA8(0, &qword_2811A2910);
  sub_215A70990();
  sub_215A70450();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v2);
  *(v1 + v11) = sub_215A709F0();
  v12 = OBJC_IVAR___BookmarksViewController_innerNavigationController;
  *(v1 + v12) = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  *(v1 + OBJC_IVAR___BookmarksViewController_keepHistorySectionsExpanded) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR___BookmarksViewController_suppressingReloads) = 0;
  v13 = (v1 + OBJC_IVAR___BookmarksViewController_importHandler);
  *v13 = 0;
  v13[1] = 0;
  sub_215A70CB0();
  __break(1u);
}

uint64_t sub_215A54364(void *a1, char a2, unint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  if (a3 >> 62)
  {
    v5 = sub_215A70CD0();
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_215A96990;
  if (v5)
  {
    v7 = sub_215A4095C(a3, 0, 0);
  }

  else
  {
    sub_2159F7DA8(0, &qword_2811A22B8);
    v9 = sub_215A70500();
    v10 = [objc_opt_self() systemImageNamed_];

    sub_2159F7DA8(0, &unk_2811A2520);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;
    v13 = a1;
    sub_215A70A90();
    v7 = sub_215A70920();
  }

  *(v6 + 32) = v7;
  return v6;
}

id sub_215A54564(unint64_t a1)
{
  sub_2159F7DA8(0, &qword_2811A22B8);
  v2 = sub_215A70500();
  v3 = [objc_opt_self() systemImageNamed_];

  sub_2159F7DA8(0, &unk_2811A2520);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;

  v12 = v5;
  sub_215A70A90();
  v6 = sub_215A70920();
  v7 = [objc_opt_self() systemRedColor];
  [v6 setTintColor_];

  if (a1 >> 62)
  {
    v8 = sub_215A70CD0();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v6 setEnabled_];
  v9 = v6;
  v10 = sub_215A70500();
  [v9 setAccessibilityIdentifier_];

  return v9;
}

void sub_215A54784(void *a1)
{
  v2 = v1;
  sub_215A6FF90();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v6 navigationItem];
    v8 = [v2 makeTrailingBarButtonItemsIn:v5 isEditing:{objc_msgSend(v5, sel_isEditing)}];
    [v7 setRightBarButtonItems_];

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;

    sub_215A6FD40();
  }

  else
  {
    v12 = [a1 navigationItem];
    v13 = [v2 dismissButton];
    [v12 setRightBarButtonItem_];
  }

  v14 = [v2 innerNavigationController];
  v15 = [v14 viewControllers];

  sub_2159F7DA8(0, &qword_2811A24F0);
  v16 = sub_215A705E0();

  if (v16 >> 62)
  {
    v17 = sub_215A70CD0();
    if (!v17)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_13;
    }
  }

  if (v17 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v17; ++i)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x216073710](i, v16);
    }

    else
    {
      v19 = *(v16 + 8 * i + 32);
    }

    v20 = v19;
    [v19 setEditing_];
  }

LABEL_13:
}

uint64_t sub_215A54A94()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_215A54B68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E0C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_215A54BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E0C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_215A54DD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_215A07214;

  return sub_215A4873C(a1, v4, v5, v6);
}

void sub_215A54E9C(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_215A54EAC(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroy_19Tm_0(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_215A54F30(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_215A54FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___AddedBookmarkToastViewController_dismissTimer] = 0;
  *&v4[OBJC_IVAR___AddedBookmarkToastViewController_suggestedFolders] = MEMORY[0x277D84F90];
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR___AddedBookmarkToastViewController_toastObscuredEdgeInsets];
  v10 = *(MEMORY[0x277D768C8] + 16);
  *v9 = *MEMORY[0x277D768C8];
  *(v9 + 1) = v10;
  *&v4[OBJC_IVAR___AddedBookmarkToastViewController_bookmark] = a1;
  *&v4[OBJC_IVAR___AddedBookmarkToastViewController_bookmarkCollection] = a2;
  v11 = &v4[OBJC_IVAR___AddedBookmarkToastViewController_dismissCompletionHandler];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v4;
  v13.super_class = AddedBookmarkToastViewController;
  return objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
}

id AddedBookmarkToastViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void AddedBookmarkToastViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR___AddedBookmarkToastViewController_dismissTimer) = 0;
  *(v0 + OBJC_IVAR___AddedBookmarkToastViewController_suggestedFolders) = MEMORY[0x277D84F90];
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR___AddedBookmarkToastViewController_toastObscuredEdgeInsets);
  v2 = *(MEMORY[0x277D768C8] + 16);
  *v1 = *MEMORY[0x277D768C8];
  v1[1] = v2;
  sub_215A70CB0();
  __break(1u);
}

uint64_t AddedBookmarkToastViewController.suggestedFolders.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AddedBookmarkToastViewController_suggestedFolders;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_215A555D8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 suggestedFolders];
  sub_2159F7DA8(0, &unk_2811A28A0);
  v4 = sub_215A705E0();

  *a2 = v4;
}

void sub_215A5564C(uint64_t a1, void **a2)
{
  v2 = *a2;
  sub_2159F7DA8(0, &unk_2811A28A0);
  v3 = sub_215A705D0();
  [v2 setSuggestedFolders_];
}

uint64_t AddedBookmarkToastViewController.tabGroupProvider.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

double AddedBookmarkToastViewController.toastObscuredEdgeInsets.getter()
{
  v1 = v0 + OBJC_IVAR___AddedBookmarkToastViewController_toastObscuredEdgeInsets;
  swift_beginAccess();
  return *v1;
}

void AddedBookmarkToastViewController.toastObscuredEdgeInsets.setter(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR___AddedBookmarkToastViewController_toastObscuredEdgeInsets];
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v10 = [v4 view];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for AddedBookmarkToastInteractionView();
    v12 = swift_dynamicCastClassUnconditional();
    UIEdgeInsetsMakeWithEdges();
    UIEdgeInsetsAdd();
    v13 = (v12 + OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toastObscuredEdgeInsets);
    *v13 = v14;
    v13[1] = v15;
    v13[2] = v16;
    v13[3] = v17;

    v18 = [v4 view];
    if (v18)
    {
      v19 = v18;
      [v18 layoutIfNeeded];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id AddedBookmarkToastViewController.toastPlacement.getter()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for AddedBookmarkToastInteractionView();
    v3 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toastPlacement);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AddedBookmarkToastViewController.toastPlacement.setter(uint64_t a1)
{
  v5 = [v1 view];
  if (v5)
  {
    type metadata accessor for AddedBookmarkToastInteractionView();
    v3 = swift_dynamicCastClassUnconditional();
    v4 = *&v3[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toastPlacement];
    *&v3[OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toastPlacement] = a1;
    if (v4 != a1)
    {
      [v3 setNeedsLayout];
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall AddedBookmarkToastViewController.loadView()()
{
  v1 = v0;
  v2 = [v0 bookmarkCollection];
  v3 = [v0 bookmark];
  v4 = [v3 parentID];

  v5 = [v2 bookmarkWithID_];
  if (!v5)
  {
    v6 = [v1 bookmarkCollection];
    v5 = [v6 rootBookmark];
  }

  v7 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v8 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  objc_allocWithZone(type metadata accessor for AddedBookmarkToastInteractionView());
  v9 = v5;
  v10 = sub_215A423D8(v9, sub_215A575A8, v7, sub_215A575B0, v8);
  [v1 setView_];

  v11 = [v1 view];
  if (v11)
  {
    v13 = v11;
    v12 = swift_dynamicCastClassUnconditional();

    *(v12 + OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_delegate + 8) = &off_2827BEC30;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

void sub_215A55E90()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong presentEditBookmarkController];

  v1 = swift_unknownObjectUnownedLoadStrong();
  [v1 cancelDismissTimer];
}

void sub_215A55F00()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong dismissCompletionHandler];

  v1[2](v1);
  _Block_release(v1);
  v2 = swift_unknownObjectUnownedLoadStrong();
  [v2 startDismissTimer];
}

Swift::Void __swiftcall AddedBookmarkToastViewController.viewDidLoad()()
{
  v1 = sub_215A700D0();
  MEMORY[0x28223BE20](v1);
  v2.receiver = v0;
  v2.super_class = AddedBookmarkToastViewController;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_215A70970();
  sub_215A700B0();
  sub_215A70980();
}

id sub_215A5621C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  result = [v3 view];
  if (result)
  {
    v7 = result;
    type metadata accessor for AddedBookmarkToastInteractionView();
    swift_dynamicCastClassUnconditional();
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    v9 = v3;
    a3(a2, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_215A56318(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = a1;
  v8 = [v7 view];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for AddedBookmarkToastInteractionView();
    swift_dynamicCastClassUnconditional();
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    v11 = v7;
    a5(a4, v10);
  }

  else
  {
    __break(1u);
  }
}

void sub_215A563F8()
{
  v1 = [v0 dismissTimer];
  [v1 invalidate];

  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_215A57634;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_215A2A290;
  v6[3] = &block_descriptor_13;
  v4 = _Block_copy(v6);

  v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:5.0];
  _Block_release(v4);
  [v0 setDismissTimer_];
}

void sub_215A56538()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissToast];
  }
}

void sub_215A56658()
{
  v1 = v0;
  v2 = [v0 bookmarkCollection];
  v3 = [v0 bookmark];
  v4 = [v0 tabGroupProvider];
  sub_215A6FFD0();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  v7 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v2;
  v8[4] = v4;
  v9 = v2;
  swift_unknownObjectRetain_n();
  v10 = v9;
  v11 = v3;

  v12 = sub_215A6FFA0();

  v13 = [v1 suggestedFolders];
  sub_2159F7DA8(0, &unk_2811A28A0);
  sub_215A705E0();

  sub_215A6FFC0();
  v14 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v11;
  v15[4] = v4;
  v15[5] = v10;
  v25 = v10;
  swift_unknownObjectRetain();
  v16 = v11;

  sub_215A6FFB0();

  v17 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_215A96990;
  *(v18 + 32) = v12;
  sub_2159F7DA8(0, &qword_2811A24F0);
  v19 = v12;
  v20 = sub_215A705D0();

  [v17 setViewControllers_];

  v21 = v17;
  [v21 setModalPresentationStyle_];
  sub_2159F7DA8(0, &qword_27CA7EEC0);
  swift_allocObject();
  swift_unknownObjectUnownedInit();

  v22 = sub_215A70A40();

  [v21 setPreferredTransition_];

  v23 = [v1 parentViewController];
  if (v23)
  {
    v24 = v23;
    [v23 presentViewController:v21 animated:1 completion:0];
  }

  swift_unknownObjectRelease();
}

uint64_t sub_215A56AA8(char a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D28C78]) initWithBookmarkCollection:a2 style:0];
  [v5 setIncludesReadingList_];
  if (a1)
  {
    [v5 setSyntheticBookmarkProvider_];
  }

  v6 = [v5 folderListItemsIgnoringIdentifiers_];
  sub_2159F7DA8(0, &qword_27CA7EEC8);
  v7 = sub_215A705E0();

  return v7;
}

void *sub_215A56B78(unint64_t a1, id a2, void *a3)
{
  v4 = a2;
  if ([a2 subtype] == 1)
  {
    if (a1 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_215A70CD0())
    {
      for (j = 0; ; ++j)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x216073710](j, a1);
        }

        else
        {
          if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v8 = *(a1 + 8 * j + 32);
        }

        v9 = v8;
        v10 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        v11 = [v8 syntheticFolder];
        if (v11 && (v12 = v11, v13 = [v11 bookmarkList], v12, v13))
        {
          v14 = [v13 folderID];

          if (v14 == [v4 parentID])
          {
            return v9;
          }
        }

        else
        {
          [v4 parentID];
        }

        if (v10 == i)
        {
          return 0;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

    return 0;
  }

  v23 = [a3 bookmarkWithID_];
  if (!v23)
  {
    return 0;
  }

  if (!(a1 >> 62))
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

  v15 = sub_215A70CD0();
  if (!v15)
  {
LABEL_36:

    return 0;
  }

LABEL_19:
  v16 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x216073710](v16, a1);
    }

    else
    {
      if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v17 = *(a1 + 8 * v16 + 32);
    }

    v9 = v17;
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_31;
    }

    v19 = [v17 bookmark];
    if (v19)
    {
      v20 = v19;
      sub_2159F7DA8(0, &unk_2811A28A0);
      v21 = v23;
      v4 = sub_215A70A80();

      if (v4)
      {
        break;
      }
    }

    ++v16;
    if (v18 == v15)
    {
      goto LABEL_36;
    }
  }

  return v9;
}

void sub_215A56E34(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong startDismissTimer];

  v11 = [a5 rootBookmark];
  v12 = [objc_allocWithZone(MEMORY[0x277CDB6C8]) initWithCollection:a5 syntheticBookmarkProvider:a6];
  if (a3)
  {
    v13 = [a3 syntheticFolder];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 bookmarkList];
      if (v15)
      {

        v16 = [v12 saveBookmark:a2 inSyntheticFolder:v14];
LABEL_13:

        goto LABEL_14;
      }
    }

    v17 = [a3 bookmark];
    if (!v17)
    {
      goto LABEL_14;
    }

    v18 = v17;

    v16 = v18;
    if ([a2 isFolder])
    {
      sub_2159F7DA8(0, &unk_2811A28A0);
      v14 = sub_215A705D0();
    }

    else
    {
      v19 = [v16 isReadingListFolder];
      v20 = &selRef_migrateToReadingListItem;
      if (!v19)
      {
        v20 = &selRef_migrateToBookmarkItem;
      }

      [a2 *v20];
      v14 = [v12 saveBookmark:a2 inFolder:v16];
    }

    v11 = v16;
    goto LABEL_13;
  }

LABEL_14:
  v21 = swift_unknownObjectUnownedLoadStrong();
  v25 = [v21 view];
  if (v25)
  {

    type metadata accessor for AddedBookmarkToastInteractionView();
    v22 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toast);
    v23 = *(v22 + OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_folder);
    *(v22 + OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_folder) = v11;
    sub_2159F7DA8(0, &unk_2811A28A0);
    v24 = v11;
    if ((sub_215A70A80() & 1) == 0)
    {
      sub_215A083D8();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_215A57124(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = [a1 presentingViewController];
  [a1 dismissViewControllerAnimated:1 completion:0];
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong startDismissTimer];

  if ([a3 subtype] == 1)
  {
    if (a4)
    {
      v11 = [a3 UUID];
      if (!v11)
      {
        sub_215A70540();
        v11 = sub_215A70500();
      }

      [a4 deleteScopedBookmarkWithUUID:v11 completionHandler:0];
    }
  }

  else
  {
    v12 = objc_opt_self();
    if ([v12 isLockedSync])
    {
      [a5 deleteBookmark_];
    }

    else if ([v12 lockSync])
    {
      [a5 deleteBookmark_];
      [v12 unlockSync];
    }

    else
    {
      v13 = [objc_opt_self() sharedFeatureManager];
      v14 = [v13 isInMemoryBookmarkChangeTrackingAvailable];

      if (v14)
      {
        [a5 deleteBookmarkInMemory_];
      }

      else if (v9)
      {
        [objc_opt_self() showLockedDatabaseAlertForAction:0 fromViewController:v9];
      }
    }
  }

  v15 = swift_unknownObjectUnownedLoadStrong();
  [v15 dismissToast];
}

id sub_215A57348()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  result = [Strong view];
  if (result)
  {
    v2 = result;

    type metadata accessor for AddedBookmarkToastInteractionView();
    v3 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toast);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id AddedBookmarkToastViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_215A70500();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

void sub_215A57644()
{
  v1 = [*(v0 + 16) dismissCompletionHandler];
  v1[2]();

  _Block_release(v1);
}

void MobileSafariUIMain_cold_1(uint8_t *a1, void *a2, int *a3)
{
  v5 = a2;
  v6 = *__error();
  *a1 = 67109120;
  *a3 = v6;
  _os_log_error_impl(&dword_215819000, v5, OS_LOG_TYPE_ERROR, "Failed to consume sandbox extension: %{errno}i", a1, 8u);
}

void tabViewFromInteraction_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = 138543874;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  v10 = 2114;
  v11 = objc_opt_class();
  _os_log_fault_impl(&dword_215819000, v5, OS_LOG_TYPE_FAULT, "Tab interaction has unexpected view that isn't a tab view; interaction: %{public}@; view: %@; view class: %{public}@", &v6, 0x20u);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x282128850](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x282110B10](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x282114910](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}