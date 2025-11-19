uint64_t sub_1BB651994(unint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  v189 = a4;
  v190 = a3;
  v192 = a2;
  v188 = sub_1BB6BAA34();
  v5 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v7 = v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_187;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v9 < v192)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = MEMORY[0x1E69E7CC0];
  v187 = v7;
  v195 = a1;
  if (v9)
  {
    v203 = MEMORY[0x1E69E7CC0];
    sub_1BB5E5900(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      goto LABEL_191;
    }

    v11 = v203;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = MEMORY[0x1BFB111F0](v13, v195);
        v15 = (v14 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
        MidX = CGRectGetMidX(*(v14 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect));
        MidY = CGRectGetMidY(*v15);
        v203 = v11;
        v19 = v11[2];
        v18 = v11[3];
        if (v19 >= v18 >> 1)
        {
          v21 = MidY;
          sub_1BB5E5900((v18 > 1), v19 + 1, 1);
          MidY = v21;
          v11 = v203;
        }

        ++v13;
        v11[2] = v19 + 1;
        v20 = &v11[2 * v19];
        v20[4] = sqrt((MidX + -0.5) * (MidX + -0.5) + (MidY + -0.5) * (MidY + -0.5));
        *(v20 + 5) = v14;
      }

      while (v9 != v13);
    }

    else
    {
      v22 = (a1 + 32);
      do
      {
        v23 = *v22;
        v24 = *v22 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v24 + 16);
        v28 = *(v24 + 24);

        v208.origin.x = v25;
        v208.origin.y = v26;
        v208.size.width = v27;
        v208.size.height = v28;
        v29 = CGRectGetMidX(v208);
        v30 = CGRectGetMidY(*v24);
        v203 = v11;
        v32 = v11[2];
        v31 = v11[3];
        if (v32 >= v31 >> 1)
        {
          v34 = v30;
          sub_1BB5E5900((v31 > 1), v32 + 1, 1);
          v30 = v34;
          v11 = v203;
        }

        v11[2] = v32 + 1;
        v33 = &v11[2 * v32];
        v33[4] = sqrt((v29 + -0.5) * (v29 + -0.5) + (v30 + -0.5) * (v30 + -0.5));
        *(v33 + 5) = v23;
        ++v22;
        --v9;
      }

      while (v9);
    }
  }

  v203 = v11;

  a1 = 0;
  sub_1BB6509B0(&v203);
  v181[1] = 0;

  v35 = v203;
  v205 = MEMORY[0x1E69E7CD0];
  v36 = v203[2];
  v7 = &unk_1BB6C5000;
  if (v36)
  {
    v201 = v8;
    v202 = v5;
    v37 = 0;
    v5 = (v203 + 4);
    v196 = MEMORY[0x1E69E7CC0];
    v8 = 24;
    while (1)
    {
      if (v37 >= v35[2])
      {
        goto LABEL_183;
      }

      v42 = v5 + 16 * v37;
      v43 = *v42;
      v7 = *(v42 + 8);
      v44 = v205;
      if (*(v205 + 16))
      {
        v45 = sub_1BB6BB914();
        v46 = -1 << *(v44 + 32);
        v47 = v45 & ~v46;
        if ((*(v44 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
        {
          v48 = ~v46;
          while (*(*(v44 + 48) + 8 * v47) != v43)
          {
            v47 = (v47 + 1) & v48;
            if (((*(v44 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_26;
        }
      }

LABEL_33:
      v49 = (v7 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
      v50 = *(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
      v51 = *(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect + 8);
      v52 = *(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect + 16);
      v53 = *(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect + 24);

      v209.origin.x = v50;
      v209.origin.y = v51;
      v209.size.width = v52;
      v209.size.height = v53;
      v54 = CGRectGetMidX(v209);
      v55 = CGRectGetMidY(*v49);
      v56 = *(*(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (fabs(v56) < 0.00001)
      {
        break;
      }

      v38 = 1.0 / v56;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_23:
      a1 = *(v196 + 2);
      v39 = *(v196 + 3);
      if (a1 >= v39 >> 1)
      {
        v196 = sub_1BB59DC6C((v39 > 1), a1 + 1, 1, v196);
      }

      v40 = v196;
      *(v196 + 2) = a1 + 1;
      v41 = &v40[24 * a1];
      v41[4] = v54;
      v41[5] = v55;
      v41[6] = v38;
      sub_1BB5AD468(&v203, v43);

LABEL_26:
      if (++v37 == v36)
      {

        v8 = v201;
        v5 = v202;
        v7 = 0x1BB6C5000;
        goto LABEL_38;
      }
    }

    if (v56 <= 0)
    {
      v38 = -100000.0;
    }

    else
    {
      v38 = 100000.0;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

LABEL_35:
    v196 = sub_1BB59DC6C(0, *(v196 + 2) + 1, 1, v196);
    goto LABEL_23;
  }

  v196 = MEMORY[0x1E69E7CC0];
LABEL_38:
  v12 = &v207;
  v59 = v195;
  if (v192 < 0)
  {
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);

    __break(1u);
    return result;
  }

  v12 = *(v196 + 2);
  if (v12 < v192)
  {
    goto LABEL_189;
  }

  if (v12 != v192)
  {
    a1 = v196;
    sub_1BB650B0C(v196, (v196 + 32), 0, (2 * v192) | 1);
    v61 = v60;

    v196 = v61;
  }

  v12 = &v206;
  v62 = v190;
  if ((v190 & 0x8000000000000000) != 0)
  {
    goto LABEL_190;
  }

  v63 = MEMORY[0x1E69E7CC0];
  if (!v190)
  {
    v64 = MEMORY[0x1E69E7CC0];
    goto LABEL_169;
  }

  v194 = v59 & 0xFFFFFFFFFFFFFF8;
  if (v8)
  {
    v200 = sub_1BB6BB564();
  }

  else
  {
    v200 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = 0;
  v186 = "number of selected tracks are ";
  v185 = "ed. Ignoring body detection";
  v197 = v59 & 0xC000000000000001;
  v193 = v59 + 32;
  v184 = (v5 + 8);
  v183 = 8 * v192;
  *&v58 = 136315138;
  v182 = v58;
  v66 = *(v7 + 2352);
  while (1)
  {
    if (v65 >= v62)
    {
      goto LABEL_184;
    }

    v67 = __OFADD__(v65, 1);
    v68 = v65 + 1;
    if (v67)
    {
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      v9 = sub_1BB6BB564();
      goto LABEL_3;
    }

    v191 = v68;
    v69 = v192;
    if (v192)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF00);
      v70 = sub_1BB6BAE94();
      *(v70 + 16) = v69;
      memset_pattern16((v70 + 32), &unk_1E7FB3FB0, v183);
    }

    else
    {
      v70 = v63;
    }

    if (v200)
    {
      v71 = 0;
      v7 = *(v196 + 2);
      v199 = v196 + 48;
      v64 = v70;
      v201 = v7;
      while (1)
      {
        if (v197)
        {
          v8 = MEMORY[0x1BFB111F0](v71, v195);
          v67 = __OFADD__(v71++, 1);
          if (v67)
          {
            goto LABEL_177;
          }
        }

        else
        {
          if (v71 >= *(v194 + 16))
          {
            goto LABEL_181;
          }

          v8 = *(v193 + 8 * v71);

          v67 = __OFADD__(v71++, 1);
          if (v67)
          {
            goto LABEL_177;
          }
        }

        if (v7)
        {
          v202 = v64;
          v203 = v63;
          sub_1BB5E5760(0, v7, 0);
          v72 = v203;
          v73 = (v8 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
          v74 = v199;
          do
          {
            v76 = *(v74 - 2);
            v75 = *(v74 - 1);
            v77 = *v74;
            v78 = *v74 > 0.0;
            v79 = CGRectGetMidX(*v73);
            v80 = CGRectGetMidY(*v73);
            if (fabs(v77) < v66)
            {
              v77 = dbl_1BB6C5920[v78];
            }

            v203 = v72;
            v82 = v72[2];
            v81 = v72[3];
            v5 = v82 + 1;
            if (v82 >= v81 >> 1)
            {
              v83 = v80;
              sub_1BB5E5760((v81 > 1), v82 + 1, 1);
              v80 = v83;
              v72 = v203;
            }

            v72[2] = v5;
            *&v72[v82 + 4] = sqrt((v76 - v79) * (v76 - v79) + (v75 - v80) * (v75 - v80)) / v77;
            v74 += 3;
            --v7;
          }

          while (v7);
          v64 = v202;
        }

        else
        {
          v72 = v63;
          v5 = v63[2];
          if (!v5)
          {

            a1 = 0;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_79;
            }

            goto LABEL_85;
          }
        }

        a1 = 0;
        v84 = 0;
        v85 = INFINITY;
        do
        {
          v86 = *&v72[v84 + 4];
          if (v86 < v85)
          {
            a1 = v84;
          }

          v87 = (v84 + 1);
          if (v86 < v85)
          {
            v85 = *&v72[v84 + 4];
          }

          ++v84;
        }

        while (v5 != v87);

        v88 = swift_isUniquelyReferenced_nonNull_native();
        v63 = MEMORY[0x1E69E7CC0];
        v7 = v201;
        if (v88)
        {
          if ((a1 & 0x8000000000000000) != 0)
          {
            goto LABEL_176;
          }

          goto LABEL_79;
        }

LABEL_85:
        v64 = sub_1BB6B1010(v64);
        if ((a1 & 0x8000000000000000) != 0)
        {
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

LABEL_79:
        if (a1 >= v64[2])
        {
          goto LABEL_178;
        }

        a1 = &v64[a1];
        MEMORY[0x1BFB10C80]();
        if (*((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BB6BAE64();
          v7 = v201;
        }

        sub_1BB6BAEB4();

        if (v71 == v200)
        {
          goto LABEL_88;
        }
      }
    }

    v64 = v70;
LABEL_88:
    v199 = v64[2];
    if (v199)
    {
      v198 = v64 + 4;
      a1 = v196;

      v8 = 0;
      v202 = v64;
      while (1)
      {
        if (v8 >= v64[2])
        {
          goto LABEL_179;
        }

        v90 = v198[v8];
        if (v90 >> 62)
        {
          v7 = sub_1BB6BB564();
          if (v7 >= 1)
          {
LABEL_95:
            v201 = a1;
            v203 = v63;

            sub_1BB5E5760(0, v7, 0);
            v91 = 0;
            v92 = v203;
            v93 = v90 & 0xC000000000000001;
            do
            {
              if (v93)
              {
                v94 = MEMORY[0x1BFB111F0](v91, v90);
              }

              else
              {
              }

              v95 = *(*(v94 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16);

              if (fabs(v95) >= v66)
              {
                v96 = v95;
              }

              else
              {
                v96 = dbl_1BB6C5920[v95 > 0];
              }

              v203 = v92;
              v98 = v92[2];
              v97 = v92[3];
              if (v98 >= v97 >> 1)
              {
                sub_1BB5E5760((v97 > 1), v98 + 1, 1);
                v92 = v203;
              }

              ++v91;
              v92[2] = v98 + 1;
              *&v92[v98 + 4] = 1.0 / v96;
            }

            while (v7 != v91);
            if (v98 < 3)
            {
              v99 = 0;
              v100 = 0.0;
              v101 = MEMORY[0x1E69E7CC0];
              goto LABEL_110;
            }

            v99 = (v98 + 1) & 0x7FFFFFFFFFFFFFFCLL;
            v102 = (v92 + 6);
            v100 = 0.0;
            v103 = v99;
            v101 = MEMORY[0x1E69E7CC0];
            do
            {
              v100 = v100 + *(v102 - 2) + *(v102 - 1) + *v102 + v102[1];
              v102 += 4;
              v103 -= 4;
            }

            while (v103);
            if (v98 + 1 != v99)
            {
LABEL_110:
              v104 = v98 - v99 + 1;
              v105 = &v92[v99 + 4];
              do
              {
                v106 = *v105++;
                v100 = v100 + v106;
                --v104;
              }

              while (v104);
            }

            v203 = v101;
            sub_1BB5E5760(0, v7, 0);
            v107 = 0;
            v108 = v203;
            do
            {
              if (v93)
              {
                v109 = MEMORY[0x1BFB111F0](v107, v90);
              }

              else
              {
                v109 = *(v90 + 8 * v107 + 32);
              }

              v110 = CGRectGetMidX(*(v109 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect));

              v203 = v108;
              v112 = v108[2];
              v111 = v108[3];
              if (v112 >= v111 >> 1)
              {
                sub_1BB5E5760((v111 > 1), v112 + 1, 1);
                v108 = v203;
              }

              ++v107;
              v108[2] = v112 + 1;
              *&v108[v112 + 4] = v110;
            }

            while (v7 != v107);
            if (v112 <= 2)
            {
              v113 = 0;
              v114 = 0.0;
              v115 = MEMORY[0x1E69E7CC0];
              goto LABEL_124;
            }

            v113 = (v112 + 1) & 0x7FFFFFFFFFFFFFFCLL;
            v116 = (v108 + 6);
            v114 = 0.0;
            v117 = v113;
            v115 = MEMORY[0x1E69E7CC0];
            do
            {
              v114 = v114 + *(v116 - 2) + *(v116 - 1) + *v116 + v116[1];
              v116 += 4;
              v117 -= 4;
            }

            while (v117);
            if (v112 + 1 != v113)
            {
LABEL_124:
              v118 = v112 - v113 + 1;
              v119 = &v108[v113 + 4];
              do
              {
                v120 = *v119++;
                v114 = v114 + v120;
                --v118;
              }

              while (v118);
            }

            v121 = v7;
            v203 = v115;
            sub_1BB5E5760(0, v7, 0);
            v5 = 0;
            v122 = v203;
            do
            {
              if (v93)
              {
                v123 = MEMORY[0x1BFB111F0](v5, v90);
              }

              else
              {
                v123 = *(v90 + 8 * v5 + 32);
              }

              v124 = CGRectGetMidY(*(v123 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect));

              v203 = v122;
              v126 = v122[2];
              v125 = v122[3];
              if (v126 >= v125 >> 1)
              {
                sub_1BB5E5760((v125 > 1), v126 + 1, 1);
                v122 = v203;
              }

              ++v5;
              v122[2] = v126 + 1;
              *&v122[v126 + 4] = v124;
            }

            while (v7 != v5);

            v127 = v122[2];
            if (v127)
            {
              a1 = v201;
              v64 = v202;
              if (v127 <= 3)
              {
                v128 = 0;
                v129 = 0.0;
                v63 = MEMORY[0x1E69E7CC0];
                goto LABEL_141;
              }

              v128 = v127 & 0x7FFFFFFFFFFFFFFCLL;
              v132 = (v122 + 6);
              v129 = 0.0;
              v133 = v127 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v129 = v129 + *(v132 - 2) + *(v132 - 1) + *v132 + v132[1];
                v132 += 4;
                v133 -= 4;
              }

              while (v133);
              v63 = MEMORY[0x1E69E7CC0];
              if (v127 != v128)
              {
LABEL_141:
                v134 = v127 - v128;
                v135 = &v122[v128 + 4];
                do
                {
                  v136 = *v135++;
                  v129 = v129 + v136;
                  --v134;
                }

                while (v134);
              }

              v130 = v129 / v121;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_144:
                if (v8 >= *(a1 + 16))
                {
                  goto LABEL_180;
                }

                v137 = (a1 + 24 * v8);
                v137[4] = v114 / v121;
                v137[5] = v130;
                v137[6] = v100;
                goto LABEL_91;
              }
            }

            else
            {

              v130 = 0.0 / v121;
              a1 = v201;
              v131 = swift_isUniquelyReferenced_nonNull_native();
              v64 = v202;
              v63 = MEMORY[0x1E69E7CC0];
              if (v131)
              {
                goto LABEL_144;
              }
            }

            a1 = sub_1BB6B0FFC(a1);
            goto LABEL_144;
          }
        }

        else
        {
          v7 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= 1)
          {
            goto LABEL_95;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_1BB6B0FFC(a1);
        }

        if (v8 >= *(a1 + 16))
        {
          goto LABEL_182;
        }

        v89 = (a1 + 24 * v8);
        *(v89 + 4) = 0;
        *(v89 + 5) = 0;
        *(v89 + 6) = 0x3FF0000000000000;
LABEL_91:
        if (++v8 == v199)
        {
          goto LABEL_152;
        }
      }
    }

    a1 = v196;

LABEL_152:
    v138 = *(v196 + 2);
    v201 = a1;
    if (v138)
    {
      if (v138 > *(a1 + 16))
      {
        goto LABEL_186;
      }

      if (v138 >= 5)
      {
        v141 = v138 & 3;
        if ((v138 & 3) == 0)
        {
          v141 = 4;
        }

        v139 = v138 - v141;
        v142 = (v196 + 80);
        v143 = (a1 + 80);
        v140 = 0.0;
        v144 = v139;
        do
        {
          v145 = vsubq_f64(v142[-3], v143[-3]);
          v146 = vsubq_f64(v142[-2], v143[-2]);
          v147 = vsubq_f64(v142[-1], v143[-1]);
          v148 = vsubq_f64(*v142, *v143);
          v149 = vsubq_f64(v142[1], v143[1]);
          v150 = vsubq_f64(v142[2], v143[2]);
          v151 = vmulq_f64(v145, v145);
          v152 = vmulq_f64(v148, v148);
          v153 = vextq_s8(v151, vmulq_f64(v147, v147), 8uLL);
          v151.f64[1] = vmulq_f64(v146, v146).f64[1];
          v154 = vextq_s8(v152, vmulq_f64(v150, v150), 8uLL);
          v152.f64[1] = vmulq_f64(v149, v149).f64[1];
          v155 = vsqrtq_f64(vaddq_f64(v151, v153));
          v156 = vsqrtq_f64(vaddq_f64(v152, v154));
          v140 = v140 + v155.f64[0] + v155.f64[1] + v156.f64[0] + v156.f64[1];
          v142 += 6;
          v143 += 6;
          v144 -= 4;
        }

        while (v144);
      }

      else
      {
        v139 = 0;
        v140 = 0.0;
      }

      v157 = v138 - v139;
      v158 = 24 * v139;
      v159 = (a1 + 24 * v139 + 32);
      v160 = &v196[v158 + 32];
      do
      {
        v161 = *v160;
        v160 += 24;
        v162 = v161;
        v163 = *v159;
        v159 += 24;
        v164 = vsubq_f64(v162, v163);
        v140 = v140 + sqrt(vaddvq_f64(vmulq_f64(v164, v164)));
        --v157;
      }

      while (v157);
    }

    else
    {
      v140 = 0.0;
    }

    v203 = 0;
    v204 = 0xE000000000000000;
    sub_1BB6BB2F4();
    MEMORY[0x1BFB10B60](0xD000000000000019, v186 | 0x8000000000000000);
    sub_1BB6BAFB4();
    v5 = v203;
    v8 = v204;
    v165 = sub_1BB6BB054();
    a1 = v187;
    sub_1BB6BAA24();
    v166 = sub_1BB6BAA14();
    if (os_log_type_enabled(v166, v165))
    {
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v203 = v168;
      *v167 = v182;
      *(v167 + 4) = sub_1BB6A0A5C(v5, v8, &v203);
      _os_log_impl(&dword_1BB58A000, v166, v165, "%s", v167, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v168);
      MEMORY[0x1BFB122F0](v168, -1, -1);
      MEMORY[0x1BFB122F0](v167, -1, -1);
    }

    (*v184)(a1, v188);

    v62 = v190;
    v63 = MEMORY[0x1E69E7CC0];
    v7 = v201;
    if (v140 < v189)
    {
      break;
    }

    v196 = v7;
    v65 = v191;
    if (v191 == v62)
    {
      goto LABEL_169;
    }
  }

LABEL_169:
  v169 = v64[2];
  v10 = MEMORY[0x1E69E7CC0];
  if (v169)
  {
    v203 = MEMORY[0x1E69E7CC0];
    sub_1BB5E58E0(0, v169, 0);
    v10 = v203;
    v170 = v64 + 4;
    do
    {

      v172 = sub_1BB65138C(v171);
      v174 = v173;
      v176 = v175;

      v203 = v10;
      v178 = v10[2];
      v177 = v10[3];
      if (v178 >= v177 >> 1)
      {
        sub_1BB5E58E0((v177 > 1), v178 + 1, 1);
        v10 = v203;
      }

      v10[2] = v178 + 1;
      v179 = &v10[3 * v178];
      v179[4] = v172;
      v179[5] = v174;
      v179[6] = v176;
      ++v170;
      --v169;
    }

    while (v169);
  }

  return v10;
}

uint64_t sub_1BB652C44(unint64_t a1, double a2, double a3)
{
  v6 = sub_1BB65138C(a1);
  if (v8 > a3 || v7 > a2)
  {
    v15 = 3;
    sub_1BB6BB2F4();

    if (a1 >> 62)
    {
      sub_1BB6BB564();
    }

    v10 = sub_1BB6BB794();
    MEMORY[0x1BFB10B60](v10);

    v11 = sub_1BB6BB054();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v15, 0xD00000000000001ELL, 0x80000001BB6CDD60, v11);

    v12 = sub_1BB651994(a1, 2, 0x14uLL, 0.1);
    v13 = sub_1BB5A1494(v12);
  }

  else
  {
    v13 = v6;
  }

  return v13;
}

uint64_t sub_1BB652DA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BB652DE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BB652E3C()
{
  result = qword_1EBC5DAF0;
  if (!qword_1EBC5DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DAF0);
  }

  return result;
}

uint64_t sub_1BB652E90()
{
  v1[6] = v0;
  v2 = sub_1BB6BA7F4();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB652F94, 0, 0);
}

void sub_1BB652F94()
{
  v45 = v3;
  v5 = v3[6];
  v6 = *(v5 + 40);
  v7 = *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_localHomePosition);
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = OBJC_IVAR____TtC23IntelligentTrackingCore12DKSearchTask_searchIndex;
  if (*(v5 + OBJC_IVAR____TtC23IntelligentTrackingCore12DKSearchTask_searchIndex) == -1)
  {
    v9 = -1;
LABEL_6:
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      v1 = v3[6];
      *(v5 + v8) = v11;
      v2 = OBJC_IVAR____TtC23IntelligentTrackingCore12DKSearchTask_searchWaypoints;
      v12 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore12DKSearchTask_searchWaypoints);
      v13 = *(v12 + 16);
      if (v11 == v13)
      {
        v14 = v3[11];
        v15 = v3[7];
        v16 = v3[8];
        v17 = *(v5 + 40);

        sub_1BB6BA724();
        (*(v16 + 56))(v14, 0, 1, v15);
        sub_1BB5BF3C4(v14, v17 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastSearchCommandTime);

        goto LABEL_20;
      }

      if (v11 < v13)
      {
        if (*(v7 + 16))
        {
          v0 = *(v12 + 16 * v11 + 40);
          v18 = *(v7 + 32);
          v19 = *(v0 + 2);
          if (v18 <= 6.28318531)
          {
            if (!v19)
            {
LABEL_32:
              __break(1u);
              return;
            }

            v4 = v18 + *(v0 + 4);
          }

          else
          {
            if (!v19)
            {
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

            v4 = v18 - *(v0 + 4);
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_17:
            *(v0 + 4) = v4;
            v20 = *(v5 + v8);
            if ((v20 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else
            {
              v21 = *(v1 + v2);
              if (v20 < *(v21 + 16))
              {
                v23 = v3[8];
                v22 = v3[9];
                v24 = v3[7];
                v25 = *(v21 + 16 * v20 + 32);
                v26 = *(v3[6] + 48);
                (*(v23 + 16))(v22, v26 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v24);
                type metadata accessor for DKIntelligentTrackingCommand(0);
                v27 = swift_allocObject();
                (*(v23 + 32))(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_time, v22, v24);
                v28 = v27 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command;
                *v28 = v0;
                *(v28 + 8) = v25;
                *(v28 + 16) = 0x4000;
                *(v26 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_command) = v27;

                v42 = 10;
                v43 = 0;
                v44 = 0xE000000000000000;
                sub_1BB6BB2F4();
                v3[2] = 0;
                v3[3] = 0xE000000000000000;
                MEMORY[0x1BFB10B60](0xD000000000000011, 0x80000001BB6CDDF0);
                v3[4] = v0;
                sub_1BB6BB4B4();

                MEMORY[0x1BFB10B60](0x3D7865646E6920, 0xE700000000000000);
                v3[5] = *(v5 + v8);
                v29 = sub_1BB6BB794();
                MEMORY[0x1BFB10B60](v29);

                v31 = v3[2];
                v30 = v3[3];
                v32 = sub_1BB6BB084();
                _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v42, v31, v30, v32);

                goto LABEL_20;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

LABEL_28:
          v0 = sub_1BB6B0F28(v0);
          goto LABEL_17;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  if (sub_1BB5C4BEC(0, *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_signals)))
  {
    v9 = *(v5 + v8);
    goto LABEL_6;
  }

LABEL_20:
  v33 = v3[10];
  v34 = v3[7];
  v35 = v3[8];
  sub_1BB5BA930(*(v5 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastSearchCommandTime, v33);
  LODWORD(v34) = (*(v35 + 48))(v33, 1, v34);
  sub_1BB5A1908(v33);
  if (v34 == 1)
  {
    v36 = v3[7];
    v37 = v3[8];
    v38 = v3[6];
    v39 = *(v5 + 40);
    v40 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastSearchCommandTime;

    sub_1BB5A1908(v39 + v40);
    (*(v37 + 16))(v39 + v40, *(v38 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v36);
    (*(v37 + 56))(v39 + v40, 0, 1, v36);
  }

  v41 = v3[1];

  v41(1);
}

uint64_t sub_1BB653438()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKIntelligentTrackingTask_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DKSearchTask()
{
  result = qword_1EBC5DAF8;
  if (!qword_1EBC5DAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB6535B0()
{
  v1[14] = v0;
  v2 = sub_1BB6BAA34();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0);
  v1[18] = swift_task_alloc();
  v3 = type metadata accessor for DKCamera();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v4 = sub_1BB6BA7F4();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB65378C, 0, 0);
}

uint64_t sub_1BB65378C()
{
  v42 = v0;
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 112);
  v5 = *(v2 + 16);
  v5(v1, *(v4 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v3);
  sub_1BB6BA7B4();
  v7 = v6;
  v8 = *(v2 + 8);
  v8(v1, v3);
  v9 = OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_lastProcessedTime;
  if (vabdd_f64(v7, *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_lastProcessedTime)) >= 0.2)
  {
    v11 = *(v4 + 48);
    v12 = *(v11 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image);
    if (v12)
    {
      v39 = v8;
      v13 = *(v0 + 152);
      v14 = *(v0 + 160);
      v15 = *(v0 + 144);
      sub_1BB5982A0(v11 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, v15, &qword_1EBC5BCB0);
      if ((*(v14 + 48))(v15, 1, v13) == 1)
      {
        sub_1BB598308(*(v0 + 144), &qword_1EBC5BCB0);
      }

      else
      {
        v37 = *(v0 + 112);
        sub_1BB5981C8(*(v0 + 144), *(v0 + 168));
        sub_1BB654B5C(0, &qword_1EBC5DB30);
        v16 = v12;
        v17 = MEMORY[0x1E69E7CC0];
        v35 = MEMORY[0x1BFB10FE0](MEMORY[0x1E69E7CC0]);
        type metadata accessor for DKImageCrop();
        inited = swift_initStackObject();
        v19 = v16;
        *(inited + 56) = sub_1BB5B0EA0(v17);
        *(inited + 16) = v12;
        v20 = v19;
        Width = CVPixelBufferGetWidth(v20);
        Height = CVPixelBufferGetHeight(v20);

        v44.origin.x = 0.0;
        v44.origin.y = 0.0;
        v44.size.width = 1.0;
        v44.size.height = 1.0;
        *(inited + 24) = VNImageRectForNormalizedRect(v44, Width, Height);
        *(v0 + 200) = 0;
        *(v0 + 208) = 0;
        v23 = OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_session;
        [*(v37 + OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_session) requiredInputFormat:v0 + 200 height:v0 + 204 format:v0 + 208];
        v24 = sub_1BB64F24C(*(v0 + 200), *(v0 + 204));
        v34 = v20;
        v25 = *(v37 + v23);
        v38 = v24;
        [v25 processFrame:v24 withOptions:0 results:v35];
        v40 = 0;
        sub_1BB654B5C(0, &qword_1EBC5DB38);
        v26 = v35;
        sub_1BB6BAE24();

        v27 = *(v0 + 192);
        v28 = *(v0 + 176);
        v36 = *(v0 + 168);
        v29 = *(v0 + 112);
        v5(v27, *(v4 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v28);
        sub_1BB6BA7B4();
        v31 = v30;

        v39(v27, v28);
        sub_1BB59822C(v36);
        *(v4 + v9) = v31;
        *(*(v29 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_runSubjectSelection) = 1;
      }
    }
  }

  else
  {
    v10 = *(v0 + 112);
    sub_1BB6542F8();
    *(*(v10 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_runSubjectSelection) = 0;
  }

  v32 = *(v0 + 8);

  return v32(1);
}

BOOL sub_1BB653D74()
{
  v1 = v0;
  v2 = sub_1BB6BA7F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, *(v1 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v2, v4);
  sub_1BB6BA7B4();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  return vabdd_f64(v8, *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_lastProcessedTime)) >= 0.2;
}

void sub_1BB653E90(unint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DB40);
  v35 = *(v6 - 8);
  v36 = v6;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  v10 = *a2;
  v11 = *a3;
  v39 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    v12 = sub_1BB6BB564();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {
    if (v12 < 1)
    {
      __break(1u);
      return;
    }

    v13 = 0;
    v34 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1BFB111F0](v13, a1, v7);
      }

      else
      {
        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v37[0] = v10;
      v38 = v11;
      type metadata accessor for DKBodyKeyPointList();
      swift_allocObject();
      v16 = v15;
      if (sub_1BB628B80(v16, v37, &v38))
      {

        MEMORY[0x1BFB10C80](v17);
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1BB6BAE64();
        }

        sub_1BB6BAEB4();

        v34 = v39;
      }

      else
      {
      }

      ++v13;
    }

    while (v12 != v13);
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  v18 = v33;
  v19 = *(*(*(v33 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);

  v20 = sub_1BB60D238(v34, v19, v18, 1.79769313e308);

  v21 = *(v20 + 16);
  if (v21)
  {
    *v37 = MEMORY[0x1E69E7CC0];
    sub_1BB5E5980(0, v21, 0);
    v22 = *v37;
    v32 = v20;
    v23 = (v20 + 40);
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      if (*v23)
      {
        v26 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid;
        v27 = sub_1BB6BA844();
        v28 = *(v27 - 8);
        (*(v28 + 16))(v9, v25 + v26, v27);
        (*(v28 + 56))(v9, 0, 1, v27);
      }

      else
      {
        v29 = sub_1BB6BA844();
        (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
      }

      *&v9[*(v36 + 48)] = v24;
      *v37 = v22;
      v31 = *(v22 + 16);
      v30 = *(v22 + 24);

      if (v31 >= v30 >> 1)
      {
        sub_1BB5E5980(v30 > 1, v31 + 1, 1);
        v22 = *v37;
      }

      v23 += 3;
      *(v22 + 16) = v31 + 1;
      sub_1BB60DF90(v9, v22 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v31, &qword_1EBC5DB40);
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  *(v33 + OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_latestAssociations) = v22;

  sub_1BB6542F8();
}

uint64_t sub_1BB6542F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v52 - v5;
  v7 = sub_1BB6BA844();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DB40);
  MEMORY[0x1EEE9AC00](v14);
  v53 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v70 = v52 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v52 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v69 = v52 - v23;
  v63 = v0;
  result = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_latestAssociations);
  v25 = *(result + 16);
  if (v25)
  {
    v54 = v10;
    v62 = v3;
    v66 = *(v14 + 48);
    v26 = result + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v64 = *(v22 + 72);
    v61 = (v8 + 32);
    v58 = (v8 + 56);
    v59 = (v8 + 16);
    v57 = (v8 + 8);
    v52[1] = result;

    v56 = 0;
    v67 = v14;
    v68 = v13;
    v27 = v6;
    v65 = (v8 + 48);
    v60 = v20;
    while (1)
    {
      v28 = v69;
      sub_1BB5982A0(v26, v69, &qword_1EBC5DB40);
      v29 = *(v28 + v66);
      v30 = *(v14 + 48);
      v31 = v28;
      v32 = v65;
      sub_1BB60DF90(v31, v20, &qword_1EBC5C370);
      *&v20[v30] = v29;
      v33 = v70;
      sub_1BB5982A0(v20, v70, &qword_1EBC5DB40);

      v34 = *v32;
      if ((*v32)(v33, 1, v7) != 1)
      {
        break;
      }

      sub_1BB598308(v20, &qword_1EBC5DB40);
      sub_1BB598308(v33, &qword_1EBC5C370);
      v14 = v67;
LABEL_4:
      v26 += v64;
      if (!--v25)
      {
      }
    }

    v35 = *v61;
    v36 = v68;
    (*v61)(v68, v33, v7);
    v37 = *(*(v63 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker);
    (*v59)(v27, v36, v7);
    (*v58)(v27, 0, 1, v7);
    v38 = v27;
    v39 = v27;
    v40 = v62;
    sub_1BB5982A0(v38, v62, &qword_1EBC5C370);
    if (v34(v40, 1, v7) == 1)
    {
      sub_1BB598308(v39, &qword_1EBC5C370);
      (*v57)(v68, v7);
      sub_1BB598308(v40, &qword_1EBC5C370);
      v27 = v39;
    }

    else
    {
      v41 = v54;
      v42 = v35(v54, v40, v7);
      v43 = v41;
      v44 = *(v37 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
      MEMORY[0x1EEE9AC00](v42);
      v52[-2] = v41;

      v45 = v56;
      v46 = sub_1BB5CB764(sub_1BB654BA4, &v52[-4], v44);
      v56 = v45;

      sub_1BB598308(v39, &qword_1EBC5C370);
      v47 = *v57;
      (*v57)(v68, v7);
      v27 = v39;
      if (v46)
      {
        v47(v43, v7);
        v20 = v60;
        v48 = v53;
        sub_1BB60DF90(v60, v53, &qword_1EBC5DB40);
        v14 = v67;
        v49 = *(v48 + *(v67 + 48));
        v55 = *(v46 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyKeypoints);
        *(v46 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyKeypoints) = v49;

        v50 = v48;
        v51 = &qword_1EBC5C370;
LABEL_12:
        sub_1BB598308(v50, v51);
        goto LABEL_4;
      }

      v47(v43, v7);
    }

    v14 = v67;
    v20 = v60;
    v50 = v60;
    v51 = &qword_1EBC5DB40;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1BB654970()
{
}

uint64_t sub_1BB6549B0()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKIntelligentTrackingTask_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_session);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DKBodyPoseExtractionTask()
{
  result = qword_1EBC5DB20;
  if (!qword_1EBC5DB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB654B5C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1BB654BC4(void *a1, char a2, int a3)
{
  v4 = v3;
  v72 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v71[-v8];
  if ((a2 & 1) == 0)
  {

    v32 = a1;
    goto LABEL_25;
  }

  *&v75 = &v71[-v8];
  v10 = v4[2];
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v76 = a1;
  while (1)
  {
    v16 = v15;
    if (!v13)
    {
      break;
    }

LABEL_9:
    v17 = __clz(__rbit64(v13)) | (v15 << 6);
    v18 = *(*(v10 + 48) + v17);
    v19 = *(*(v10 + 56) + 8 * v17);

    if (!v19)
    {
      goto LABEL_24;
    }

    v13 &= v13 - 1;
    if (a1[2] && (sub_1BB6A36B4(v18), (v20 & 1) != 0))
    {
LABEL_12:
    }

    else
    {
      v21 = v76;
      LODWORD(v74) = swift_isUniquelyReferenced_nonNull_native();
      v77 = v21;
      v22 = sub_1BB6A36B4(v18);
      v24 = v21[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_57;
      }

      if (v21[3] >= v27)
      {
        if ((v74 & 1) == 0)
        {
          v74 = v22;
          LODWORD(v76) = v23;
          sub_1BB5E9D14();
          LOBYTE(v23) = v76;
          v22 = v74;
        }
      }

      else
      {
        LODWORD(v76) = v23;
        sub_1BB5E64D0(v27, v74);
        v22 = sub_1BB6A36B4(v18);
        v28 = v23 & 1;
        LOBYTE(v23) = v76;
        if ((v76 & 1) != v28)
        {
          goto LABEL_59;
        }
      }

      v29 = v77;
      v76 = v77;
      if (v23)
      {
        *(v77[7] + 8 * v22) = 0;
        goto LABEL_12;
      }

      v77[(v22 >> 6) + 8] |= 1 << v22;
      *(v29[6] + v22) = v18;
      *(v29[7] + 8 * v22) = 0;

      v30 = v29[2];
      v26 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v26)
      {
        goto LABEL_58;
      }

      v29[2] = v31;
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_54;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v15);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

LABEL_24:

  v9 = v75;
  v32 = v76;
LABEL_25:
  v33 = 0;
  v34 = v32[8];
  v73 = v32 + 8;
  v35 = 1 << *(v32 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v74 = (v35 + 63) >> 6;
  v75 = xmmword_1BB6BE460;
  v76 = v32;
  while (2)
  {
    if (v37)
    {
LABEL_33:
      v39 = __clz(__rbit64(v37)) | (v33 << 6);
      v40 = *(v32[6] + v39);
      v41 = *(v32[7] + 8 * v39);
      if (*(v4[2] + 16))
      {
        sub_1BB6A36B4(v40);
        if (v42)
        {
LABEL_46:
          v37 &= v37 - 1;
          if (*(v4[2] + 16))
          {
            sub_1BB6A36B4(v40);
            if (v66)
            {
              v67 = sub_1BB6BA7F4();
              (*(*(v67 - 8) + 56))(v9, 1, 1, v67);

              if (v72)
              {
                v68 = 0x3FF0000000000000;
                v69 = 0;
              }

              else
              {
                v68 = 0;
                v69 = 1;
              }

              sub_1BB6ABB40(v68, v69, v9, v41);

              sub_1BB598308(v9, &qword_1EBC5C050);
            }
          }

          continue;
        }
      }

      v43 = v4[4];
      v44 = v4[5];
      v45 = sub_1BB6BA7F4();
      v46 = *(*(v45 - 8) + 56);
      v46(v9, 1, 1, v45);
      type metadata accessor for DKSmoothingFilter();
      v47 = swift_allocObject();
      *(v47 + 48) = v75;
      v48 = v4;
      v49 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
      v46((v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v45);
      v50 = v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
      *v50 = 0;
      *(v50 + 8) = 1;
      v51 = v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
      *v51 = 0;
      *(v51 + 8) = 1;
      *(v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
      *(v47 + 16) = v43;
      *(v47 + 24) = v44;
      *(v47 + 32) = 256;
      *(v47 + 40) = 0x3FE0000000000000;
      v52 = v47 + v49;
      v4 = v48;
      sub_1BB5BA0DC(v9, v52, &qword_1EBC5C050);
      *v50 = 0;
      *(v50 + 8) = 1;
      *v51 = 0;
      *(v51 + 8) = 1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v48[2];
      v54 = v77;
      v48[2] = 0x8000000000000000;
      v55 = sub_1BB6A36B4(v40);
      v57 = v54[2];
      v58 = (v56 & 1) == 0;
      v26 = __OFADD__(v57, v58);
      v59 = v57 + v58;
      if (v26)
      {
        goto LABEL_55;
      }

      v60 = v56;
      if (v54[3] >= v59)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v63 = v55;
          sub_1BB5E9D00();
          v55 = v63;
          v62 = v77;
          if (v60)
          {
            goto LABEL_41;
          }

          goto LABEL_43;
        }
      }

      else
      {
        sub_1BB5E64BC(v59, isUniquelyReferenced_nonNull_native);
        v55 = sub_1BB6A36B4(v40);
        if ((v60 & 1) != (v61 & 1))
        {
          goto LABEL_59;
        }
      }

      v62 = v77;
      if (v60)
      {
LABEL_41:
        *(v62[7] + 8 * v55) = v47;

LABEL_45:
        v48[2] = v62;

        v32 = v76;
        goto LABEL_46;
      }

LABEL_43:
      v62[(v55 >> 6) + 8] |= 1 << v55;
      *(v62[6] + v55) = v40;
      *(v62[7] + 8 * v55) = v47;
      v64 = v62[2];
      v26 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v26)
      {
        goto LABEL_56;
      }

      v62[2] = v65;
      goto LABEL_45;
    }

    break;
  }

  while (1)
  {
    v38 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v38 >= v74)
    {
    }

    v37 = v73[v38];
    ++v33;
    if (v37)
    {
      v33 = v38;
      goto LABEL_33;
    }
  }

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
  result = sub_1BB6BB874();
  __break(1u);
  return result;
}

uint64_t sub_1BB655218(void *a1, char a2, int a3)
{
  v4 = v3;
  v72 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v71[-v8];
  if ((a2 & 1) == 0)
  {

    v32 = a1;
    goto LABEL_25;
  }

  *&v75 = &v71[-v8];
  v10 = v4[2];
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v76 = a1;
  while (1)
  {
    v16 = v15;
    if (!v13)
    {
      break;
    }

LABEL_9:
    v17 = __clz(__rbit64(v13)) | (v15 << 6);
    v18 = *(*(v10 + 48) + v17);
    v19 = *(*(v10 + 56) + 8 * v17);

    if (!v19)
    {
      goto LABEL_24;
    }

    v13 &= v13 - 1;
    if (a1[2] && (sub_1BB6A36B4(v18), (v20 & 1) != 0))
    {
LABEL_12:
    }

    else
    {
      v21 = v76;
      LODWORD(v74) = swift_isUniquelyReferenced_nonNull_native();
      v77 = v21;
      v22 = sub_1BB6A36B4(v18);
      v24 = v21[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_57;
      }

      if (v21[3] >= v27)
      {
        if ((v74 & 1) == 0)
        {
          v74 = v22;
          LODWORD(v76) = v23;
          sub_1BB5EA848();
          LOBYTE(v23) = v76;
          v22 = v74;
        }
      }

      else
      {
        LODWORD(v76) = v23;
        sub_1BB5E7644(v27, v74);
        v22 = sub_1BB6A36B4(v18);
        v28 = v23 & 1;
        LOBYTE(v23) = v76;
        if ((v76 & 1) != v28)
        {
          goto LABEL_59;
        }
      }

      v29 = v77;
      v76 = v77;
      if (v23)
      {
        *(v77[7] + 8 * v22) = 0;
        goto LABEL_12;
      }

      v77[(v22 >> 6) + 8] |= 1 << v22;
      *(v29[6] + v22) = v18;
      *(v29[7] + 8 * v22) = 0;

      v30 = v29[2];
      v26 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v26)
      {
        goto LABEL_58;
      }

      v29[2] = v31;
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_54;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v15);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

LABEL_24:

  v9 = v75;
  v32 = v76;
LABEL_25:
  v33 = 0;
  v34 = v32[8];
  v73 = v32 + 8;
  v35 = 1 << *(v32 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v74 = (v35 + 63) >> 6;
  v75 = xmmword_1BB6BE460;
  v76 = v32;
  while (2)
  {
    if (v37)
    {
LABEL_33:
      v39 = __clz(__rbit64(v37)) | (v33 << 6);
      v40 = *(v32[6] + v39);
      v41 = *(v32[7] + 8 * v39);
      if (*(v4[2] + 16))
      {
        sub_1BB6A36B4(v40);
        if (v42)
        {
LABEL_46:
          v37 &= v37 - 1;
          if (*(v4[2] + 16))
          {
            sub_1BB6A36B4(v40);
            if (v66)
            {
              v67 = sub_1BB6BA7F4();
              (*(*(v67 - 8) + 56))(v9, 1, 1, v67);

              if (v72)
              {
                v68 = 0x3FF0000000000000;
                v69 = 0;
              }

              else
              {
                v68 = 0;
                v69 = 1;
              }

              sub_1BB6ABB40(v68, v69, v9, v41);

              sub_1BB598308(v9, &qword_1EBC5C050);
            }
          }

          continue;
        }
      }

      v43 = v4[4];
      v44 = v4[5];
      v45 = sub_1BB6BA7F4();
      v46 = *(*(v45 - 8) + 56);
      v46(v9, 1, 1, v45);
      type metadata accessor for DKSmoothingFilter();
      v47 = swift_allocObject();
      *(v47 + 48) = v75;
      v48 = v4;
      v49 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
      v46((v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v45);
      v50 = v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
      *v50 = 0;
      *(v50 + 8) = 1;
      v51 = v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
      *v51 = 0;
      *(v51 + 8) = 1;
      *(v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
      *(v47 + 16) = v43;
      *(v47 + 24) = v44;
      *(v47 + 32) = 256;
      *(v47 + 40) = 0x3FE0000000000000;
      v52 = v47 + v49;
      v4 = v48;
      sub_1BB5BA0DC(v9, v52, &qword_1EBC5C050);
      *v50 = 0;
      *(v50 + 8) = 1;
      *v51 = 0;
      *(v51 + 8) = 1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v48[2];
      v54 = v77;
      v48[2] = 0x8000000000000000;
      v55 = sub_1BB6A36B4(v40);
      v57 = v54[2];
      v58 = (v56 & 1) == 0;
      v26 = __OFADD__(v57, v58);
      v59 = v57 + v58;
      if (v26)
      {
        goto LABEL_55;
      }

      v60 = v56;
      if (v54[3] >= v59)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v63 = v55;
          sub_1BB5EA454();
          v55 = v63;
          v62 = v77;
          if (v60)
          {
            goto LABEL_41;
          }

          goto LABEL_43;
        }
      }

      else
      {
        sub_1BB5E6FB4(v59, isUniquelyReferenced_nonNull_native);
        v55 = sub_1BB6A36B4(v40);
        if ((v60 & 1) != (v61 & 1))
        {
          goto LABEL_59;
        }
      }

      v62 = v77;
      if (v60)
      {
LABEL_41:
        *(v62[7] + 8 * v55) = v47;

LABEL_45:
        v48[2] = v62;

        v32 = v76;
        goto LABEL_46;
      }

LABEL_43:
      v62[(v55 >> 6) + 8] |= 1 << v55;
      *(v62[6] + v55) = v40;
      *(v62[7] + 8 * v55) = v47;
      v64 = v62[2];
      v26 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v26)
      {
        goto LABEL_56;
      }

      v62[2] = v65;
      goto LABEL_45;
    }

    break;
  }

  while (1)
  {
    v38 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v38 >= v74)
    {
    }

    v37 = v73[v38];
    ++v33;
    if (v37)
    {
      v33 = v38;
      goto LABEL_33;
    }
  }

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
  result = sub_1BB6BB874();
  __break(1u);
  return result;
}

uint64_t sub_1BB65586C(void *a1, char a2, int a3)
{
  v4 = v3;
  v72 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v71[-v8];
  if ((a2 & 1) == 0)
  {

    v32 = a1;
    goto LABEL_25;
  }

  *&v75 = &v71[-v8];
  v10 = v4[2];
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v76 = a1;
  while (1)
  {
    v16 = v15;
    if (!v13)
    {
      break;
    }

LABEL_9:
    v17 = __clz(__rbit64(v13)) | (v15 << 6);
    v18 = *(*(v10 + 48) + v17);
    v19 = *(*(v10 + 56) + 8 * v17);

    if (!v19)
    {
      goto LABEL_24;
    }

    v13 &= v13 - 1;
    if (a1[2] && (sub_1BB6A36B4(v18), (v20 & 1) != 0))
    {
LABEL_12:
    }

    else
    {
      v21 = v76;
      LODWORD(v74) = swift_isUniquelyReferenced_nonNull_native();
      v77 = v21;
      v22 = sub_1BB6A36B4(v18);
      v24 = v21[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_57;
      }

      if (v21[3] >= v27)
      {
        if ((v74 & 1) == 0)
        {
          v74 = v22;
          LODWORD(v76) = v23;
          sub_1BB5EA85C();
          LOBYTE(v23) = v76;
          v22 = v74;
        }
      }

      else
      {
        LODWORD(v76) = v23;
        sub_1BB5E7658(v27, v74);
        v22 = sub_1BB6A36B4(v18);
        v28 = v23 & 1;
        LOBYTE(v23) = v76;
        if ((v76 & 1) != v28)
        {
          goto LABEL_59;
        }
      }

      v29 = v77;
      v76 = v77;
      if (v23)
      {
        *(v77[7] + 8 * v22) = 0;
        goto LABEL_12;
      }

      v77[(v22 >> 6) + 8] |= 1 << v22;
      *(v29[6] + v22) = v18;
      *(v29[7] + 8 * v22) = 0;

      v30 = v29[2];
      v26 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v26)
      {
        goto LABEL_58;
      }

      v29[2] = v31;
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_54;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v15);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

LABEL_24:

  v9 = v75;
  v32 = v76;
LABEL_25:
  v33 = 0;
  v34 = v32[8];
  v73 = v32 + 8;
  v35 = 1 << *(v32 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v74 = (v35 + 63) >> 6;
  v75 = xmmword_1BB6BE460;
  v76 = v32;
  while (2)
  {
    if (v37)
    {
LABEL_33:
      v39 = __clz(__rbit64(v37)) | (v33 << 6);
      v40 = *(v32[6] + v39);
      v41 = *(v32[7] + 8 * v39);
      if (*(v4[2] + 16))
      {
        sub_1BB6A36B4(v40);
        if (v42)
        {
LABEL_46:
          v37 &= v37 - 1;
          if (*(v4[2] + 16))
          {
            sub_1BB6A36B4(v40);
            if (v66)
            {
              v67 = sub_1BB6BA7F4();
              (*(*(v67 - 8) + 56))(v9, 1, 1, v67);

              if (v72)
              {
                v68 = 0x3FF0000000000000;
                v69 = 0;
              }

              else
              {
                v68 = 0;
                v69 = 1;
              }

              sub_1BB6ABB40(v68, v69, v9, v41);

              sub_1BB598308(v9, &qword_1EBC5C050);
            }
          }

          continue;
        }
      }

      v43 = v4[4];
      v44 = v4[5];
      v45 = sub_1BB6BA7F4();
      v46 = *(*(v45 - 8) + 56);
      v46(v9, 1, 1, v45);
      type metadata accessor for DKSmoothingFilter();
      v47 = swift_allocObject();
      *(v47 + 48) = v75;
      v48 = v4;
      v49 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
      v46((v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v45);
      v50 = v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
      *v50 = 0;
      *(v50 + 8) = 1;
      v51 = v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
      *v51 = 0;
      *(v51 + 8) = 1;
      *(v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
      *(v47 + 16) = v43;
      *(v47 + 24) = v44;
      *(v47 + 32) = 256;
      *(v47 + 40) = 0x3FE0000000000000;
      v52 = v47 + v49;
      v4 = v48;
      sub_1BB5BA0DC(v9, v52, &qword_1EBC5C050);
      *v50 = 0;
      *(v50 + 8) = 1;
      *v51 = 0;
      *(v51 + 8) = 1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v48[2];
      v54 = v77;
      v48[2] = 0x8000000000000000;
      v55 = sub_1BB6A36B4(v40);
      v57 = v54[2];
      v58 = (v56 & 1) == 0;
      v26 = __OFADD__(v57, v58);
      v59 = v57 + v58;
      if (v26)
      {
        goto LABEL_55;
      }

      v60 = v56;
      if (v54[3] >= v59)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v63 = v55;
          sub_1BB5EA468();
          v55 = v63;
          v62 = v77;
          if (v60)
          {
            goto LABEL_41;
          }

          goto LABEL_43;
        }
      }

      else
      {
        sub_1BB5E6FC8(v59, isUniquelyReferenced_nonNull_native);
        v55 = sub_1BB6A36B4(v40);
        if ((v60 & 1) != (v61 & 1))
        {
          goto LABEL_59;
        }
      }

      v62 = v77;
      if (v60)
      {
LABEL_41:
        *(v62[7] + 8 * v55) = v47;

LABEL_45:
        v48[2] = v62;

        v32 = v76;
        goto LABEL_46;
      }

LABEL_43:
      v62[(v55 >> 6) + 8] |= 1 << v55;
      *(v62[6] + v55) = v40;
      *(v62[7] + 8 * v55) = v47;
      v64 = v62[2];
      v26 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v26)
      {
        goto LABEL_56;
      }

      v62[2] = v65;
      goto LABEL_45;
    }

    break;
  }

  while (1)
  {
    v38 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v38 >= v74)
    {
    }

    v37 = v73[v38];
    ++v33;
    if (v37)
    {
      v33 = v38;
      goto LABEL_33;
    }
  }

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
  result = sub_1BB6BB874();
  __break(1u);
  return result;
}

uint64_t DKHandTracker.__allocating_init(time:configuration:uuid:trackerId:anstId:camera:)(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v70 = a6;
  v71 = a3;
  v62 = a5;
  v65 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = &v56 - v9;
  v10 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v56 - v13;
  v14 = sub_1BB6BA844();
  v68 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BB6BA7F4();
  v61 = *(v18 - 8);
  v19 = v61;
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - v22;
  v24 = swift_allocObject();
  v25 = *(a2 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C480);
  swift_allocObject();
  *(v24 + qword_1EBC5F440) = sub_1BB6B47F8(&unk_1F3A488B8, v25, v25);
  v26 = *(v19 + 16);
  v64 = v23;
  v67 = a1;
  v57 = v26;
  v58 = v19 + 16;
  v26(v23, a1, v18);
  v66 = v15;
  v27 = *(v15 + 16);
  v27(v17, v71, v14);
  v28 = v69;
  sub_1BB64B8F0(v70, v69, type metadata accessor for DKCamera);
  v29 = (v24 + qword_1EBC5EE08);
  *v29 = -1;
  v29[1] = 0;
  sub_1BB6BAA24();
  v30 = qword_1EBC5EE20;
  type metadata accessor for DKBoundingBoxFilter();
  swift_allocObject();
  *(v24 + v30) = DKBoundingBoxFilter.init(alpha:)(0.9);
  sub_1BB6BA724();
  *(v24 + qword_1EBC5EE38) = 0;
  v31 = MEMORY[0x1E69E7CC0];
  *(v24 + qword_1EBC5EE40) = MEMORY[0x1E69E7CC0];
  *(v24 + *(*v24 + 200)) = 0;
  *(v24 + *(*v24 + 216)) = 0;
  v32 = *(*v24 + 232);
  v33 = type metadata accessor for DKPersonGroupFilter.Track(0);
  (*(*(v33 - 8) + 56))(v24 + v32, 1, 1, v33);
  *(v24 + *(*v24 + 240)) = 0;
  *(v24 + *(*v24 + 256)) = 0;
  *(v24 + qword_1EBC5EE28) = a2;
  *(v24 + qword_1EBC5EE00) = v65;
  v65 = v17;
  v27((v24 + qword_1EBC5EDF8), v17, v68);
  *(v24 + qword_1EBC5EE10) = v62;
  sub_1BB64B8F0(v28, v24 + *(*v24 + 224), type metadata accessor for DKCamera);
  v34 = *(a2 + 16);
  v35 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C488);
  swift_allocObject();

  *(v24 + *(*v24 + 208)) = sub_1BB6B44C8(v31, v34, v35);
  v36 = *(a2 + 176);
  v37 = *(a2 + 184);
  v38 = v61;
  v39 = *(v61 + 56);
  v40 = v63;
  v39(v63, 1, 1, v18);
  type metadata accessor for DKSmoothingFilter();
  v41 = swift_allocObject();
  *(v41 + 33) = 0;
  *(v41 + 40) = 0;
  *(v41 + 48) = 0;
  *(v41 + 56) = 0x3FF0000000000000;
  v42 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v39((v41 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v18);
  v43 = v41 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  v44 = v41 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *(v41 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v41 + 16) = v36;
  *(v41 + 24) = v37;
  *(v41 + 32) = 0;
  sub_1BB5BA0DC(v40, v41 + v42, &qword_1EBC5C050);
  *v43 = 0;
  *(v43 + 8) = 1;
  *v44 = 0;
  *(v44 + 8) = 1;
  *(v24 + *(*v24 + 248)) = v41;
  if (*(a2 + 136) == 1)
  {
    v45 = v59;
    v46 = v64;
    v57(v59, v64, v18);
    v47 = v69;
    v48 = v60;
    sub_1BB64B8F0(v69, v60, type metadata accessor for DKCamera);
    type metadata accessor for DKSphericalMotionFilter(0);
    swift_allocObject();
    v63 = sub_1BB66327C(v45, a2, v48);

    sub_1BB5D818C(v70, type metadata accessor for DKCamera);
    v49 = *(v66 + 8);
    v50 = v68;
    v49(v71, v68);
    v51 = *(v38 + 8);
    v51(v67, v18);
    sub_1BB5D818C(v47, type metadata accessor for DKCamera);
    v49(v65, v50);
    v51(v46, v18);
    *(v24 + *(*v24 + 216)) = v63;
  }

  else
  {

    sub_1BB5D818C(v70, type metadata accessor for DKCamera);
    v52 = *(v66 + 8);
    v53 = v68;
    v52(v71, v68);
    v54 = *(v38 + 8);
    v54(v67, v18);
    sub_1BB5D818C(v69, type metadata accessor for DKCamera);
    v52(v65, v53);
    v54(v64, v18);
  }

  return v24;
}

uint64_t DKHandTrackerConfiguration.deinit()
{

  return v0;
}

uint64_t DKHandTrackerConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DKHandTracker.init(time:configuration:uuid:trackerId:anstId:camera:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v69 = a6;
  v70 = a3;
  v62 = a5;
  v66 = a4;
  v71 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v63 = &v56 - v10;
  v11 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v16 = sub_1BB6BA844();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BB6BA7F4();
  v61 = v20;
  v68 = *(v20 - 8);
  v21 = v68;
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v56 - v24;
  v26 = *(a2 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C480);
  swift_allocObject();
  *(v6 + qword_1EBC5F440) = sub_1BB6B47F8(&unk_1F3A488B8, v26, v26);
  v27 = *(v21 + 16);
  v67 = v25;
  v57 = v27;
  v58 = v21 + 16;
  v27(v25, v71, v20);
  v65 = v17;
  v28 = *(v17 + 16);
  v28(v19, v70, v16);
  sub_1BB64B8F0(v69, v15, type metadata accessor for DKCamera);
  v29 = (v6 + qword_1EBC5EE08);
  *v29 = -1;
  v29[1] = 0;
  *(v6 + qword_1EBC5EE10) = -1;
  sub_1BB6BAA24();
  v30 = qword_1EBC5EE20;
  type metadata accessor for DKBoundingBoxFilter();
  swift_allocObject();
  *(v6 + v30) = DKBoundingBoxFilter.init(alpha:)(0.9);
  sub_1BB6BA724();
  *(v6 + qword_1EBC5EE38) = 0;
  *(v6 + qword_1EBC5EE40) = MEMORY[0x1E69E7CC0];
  *(v6 + *(*v6 + 200)) = 0;
  *(v6 + *(*v6 + 216)) = 0;
  v31 = *(*v6 + 232);
  v32 = type metadata accessor for DKPersonGroupFilter.Track(0);
  (*(*(v32 - 8) + 56))(v7 + v31, 1, 1, v32);
  *(v7 + *(*v7 + 240)) = 0;
  *(v7 + *(*v7 + 256)) = 0;
  *(v7 + qword_1EBC5EE28) = a2;
  *(v7 + qword_1EBC5EE00) = v66;
  v64 = v19;
  v33 = v19;
  v34 = v61;
  v66 = v16;
  v28((v7 + qword_1EBC5EDF8), v33, v16);
  *(v7 + qword_1EBC5EE10) = v62;
  v35 = v15;
  sub_1BB64B8F0(v15, v7 + *(*v7 + 224), type metadata accessor for DKCamera);
  v36 = *(a2 + 16);
  v37 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C488);
  swift_allocObject();

  *(v7 + *(*v7 + 208)) = sub_1BB6B44C8(MEMORY[0x1E69E7CC0], v36, v37);
  v38 = *(a2 + 176);
  v39 = *(a2 + 184);
  v40 = *(v68 + 56);
  v41 = v63;
  v40(v63, 1, 1, v34);
  type metadata accessor for DKSmoothingFilter();
  v42 = swift_allocObject();
  *(v42 + 33) = 0;
  *(v42 + 40) = 0;
  *(v42 + 48) = 0;
  *(v42 + 56) = 0x3FF0000000000000;
  v43 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v40((v42 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v34);
  v44 = v42 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v44 = 0;
  *(v44 + 8) = 1;
  v45 = v42 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v45 = 0;
  *(v45 + 8) = 1;
  *(v42 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v42 + 16) = v38;
  *(v42 + 24) = v39;
  *(v42 + 32) = 0;
  sub_1BB5BA0DC(v41, v42 + v43, &qword_1EBC5C050);
  *v44 = 0;
  *(v44 + 8) = 1;
  *v45 = 0;
  *(v45 + 8) = 1;
  *(v7 + *(*v7 + 248)) = v42;
  if (*(a2 + 136) == 1)
  {
    v46 = v59;
    v57(v59, v67, v34);
    v47 = v60;
    sub_1BB64B8F0(v35, v60, type metadata accessor for DKCamera);
    type metadata accessor for DKSphericalMotionFilter(0);
    swift_allocObject();
    v48 = sub_1BB66327C(v46, a2, v47);

    sub_1BB5D818C(v69, type metadata accessor for DKCamera);
    v49 = v66;
    v50 = *(v65 + 8);
    v50(v70, v66);
    v51 = *(v68 + 8);
    v51(v71, v34);
    sub_1BB5D818C(v35, type metadata accessor for DKCamera);
    v50(v64, v49);
    v51(v67, v34);
    *(v7 + *(*v7 + 216)) = v48;
  }

  else
  {

    sub_1BB5D818C(v69, type metadata accessor for DKCamera);
    v52 = v66;
    v53 = *(v65 + 8);
    v53(v70, v66);
    v54 = *(v68 + 8);
    v54(v71, v34);
    sub_1BB5D818C(v35, type metadata accessor for DKCamera);
    v53(v64, v52);
    v54(v67, v34);
  }

  return v7;
}

uint64_t sub_1BB657060(uint64_t a1)
{
  v2 = v1;
  v68 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C478);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v56 - v4;
  v6 = sub_1BB6BA844();
  v65 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BB6BA7F4();
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v63 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  v20 = type metadata accessor for DKMotion3();
  v21 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB6AAD04(v70);
  v24 = 0;
  if (v71)
  {
    return v24;
  }

  v72 = v70[0];
  v73 = v70[1];

  sub_1BB5F72A0(&v69, 0, 1);

  if (v69 == 3)
  {
    return 0;
  }

  v59 = v69;
  v60 = v6;
  v25 = *(v2 + *(*v2 + 216));
  v61 = v21;
  if (v25 && (, , v26 = v68, sub_1BB59911C(v68), , , sub_1BB59911C(v26), , , sub_1BB59911C(v26), , v27 = v26, v21 = v61, sub_1BB6626AC(v27), v28 = *(v25 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_lastState), , , v28))
  {
    sub_1BB64B8F0(v28 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_motion, v19, type metadata accessor for DKMotion3);

    v29 = *(v21 + 56);
    v29(v19, 0, 1, v20);
    sub_1BB5DD278(v19, v23);
    v30 = *(v67 + 16);
    v31 = v60;
  }

  else
  {
    v56 = v5;
    v58 = *(v21 + 56);
    v58(v19, 1, 1, v20);
    v32 = v67;
    v33 = v8;
    v34 = *(v67 + 16);
    v34(v14, v68, v33);
    v57 = v34;
    v34(v23, v14, v33);
    v8 = v33;
    *&v23[v20[5]] = &unk_1F3A48810;
    *&v23[v20[6]] = &unk_1F3A48848;
    (*(v32 + 8))(v14, v33);
    *&v23[v20[7]] = &unk_1F3A48880;
    if ((*(v61 + 48))(v19, 1, v20) != 1)
    {
      sub_1BB598308(v19, &qword_1EBC5BCB8);
    }

    v31 = v60;
    v29 = v58;
    v30 = v57;
    v5 = v56;
  }

  v35 = v30;
  v30(v62, v68, v8);
  (*(v65 + 16))(v64, v2 + qword_1EBC5EDF8, v31);
  v68 = *(v2 + qword_1EBC5EE08);
  v36 = *(v2 + qword_1EBC5EE08 + 8);
  v57 = *(v2 + qword_1EBC5EE10);
  v58 = *(v2 + qword_1EBC5EE00);
  sub_1BB5F5764(v2 + *(*v2 + 232), v5);
  v37 = type metadata accessor for DKPersonGroupFilter.Track(0);
  if ((*(*(v37 - 8) + 48))(v5, 1, v37))
  {
    sub_1BB598308(v5, &qword_1EBC5C478);
  }

  else
  {
    v38 = *v5;
    v39 = v29;
    v40 = v5[8];
    sub_1BB598308(v5, &qword_1EBC5C478);
    v41 = v40 == 1;
    v29 = v39;
    if (!v41)
    {
      goto LABEL_15;
    }
  }

  v38 = -1;
LABEL_15:
  v42 = v63;
  sub_1BB64B8F0(v23, v63, type metadata accessor for DKMotion3);
  v29(v42, 0, 1, v20);
  v35(v66, v2 + qword_1EBC5EE30, v8);
  v43 = *(v2 + qword_1EBC5EE40);
  v44 = *(v43 + 16);
  if (v44)
  {
    v45 = *(v43 + 8 * v44 + 24);
  }

  else
  {
    v45 = 0;
  }

  v46 = *(v2 + *(*v2 + 248));
  v47 = 0.0;
  if (*(v46 + 33) == 1)
  {
    if (*(v46 + 32) == 1)
    {
      v47 = atan2(*(v46 + 48), *(v46 + 56));
    }

    else
    {
      v47 = *(v46 + 40);
    }
  }

  sub_1BB5D818C(v23, type metadata accessor for DKMotion3);
  type metadata accessor for DKHandTrackerState(0);
  v24 = swift_allocObject();
  v48 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_motion;
  v29((v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_motion), 1, 1, v20);
  v49 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_chirality;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_chirality) = 0;
  v50 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastObservation;
  v51 = *(v67 + 32);
  v51(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_time, v62, v8);
  (*(v65 + 32))(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_uuid, v64, v60);
  v52 = (v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_rect);
  v53 = v73;
  *v52 = v72;
  v52[1] = v53;
  v54 = (v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity);
  *v54 = v68;
  v54[1] = v36;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_anstId) = v57;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_trackerId) = v58;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_groupId) = v38;
  sub_1BB5BA0DC(v63, v24 + v48, &qword_1EBC5BCB8);
  v51(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastUpdated, v66, v8);
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_framesSinceLastUpdate) = 0;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_trackerConfidence) = v47;
  *(v24 + v50) = v45;
  *(v24 + v49) = v59;
  return v24;
}

uint64_t DKHandTracker.deinit()
{
  v0 = _s23IntelligentTrackingCore13DKBodyTrackerCfd_0();

  return v0;
}

uint64_t DKHandTracker.__deallocating_deinit()
{
  _s23IntelligentTrackingCore13DKBodyTrackerCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1BB657AB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BB657060(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BB657AE0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  result = sub_1BB649574(a1, *a2);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C490);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BB6BD520;
    *(inited + 32) = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_chirality);
    *(inited + 40) = 0x3FF0000000000000;
    v5 = sub_1BB5B09CC(inited);
    swift_setDeallocating();

    sub_1BB654BC4(v5, 1, 0);
  }

  return result;
}

uint64_t type metadata accessor for DKHandTracker()
{
  result = qword_1EBC5DB48;
  if (!qword_1EBC5DB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DKLogVideoPlayer.__allocating_init(url:)(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BB657E60;

  return DKLogVideoPlayer.init(url:)(a1);
}

uint64_t sub_1BB657E60(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t DKLogVideoPlayer.init(url:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  v2[5] = swift_task_alloc();
  v3 = sub_1BB6BA7F4();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_1BB6BA654();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB6580B4, 0, 0);
}

uint64_t sub_1BB6580B4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[3];
  v5 = v0[4];
  v0[12] = OBJC_IVAR____TtC23IntelligentTrackingCore16DKLogVideoPlayer_logger;
  sub_1BB6BAA24();
  (*(v2 + 16))(v1, v4, v3);
  v6 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v7 = sub_1BB6BA5F4();
  v8 = [v6 initWithURL:v7 options:0];
  v0[13] = v8;

  v9 = *(v2 + 8);
  v0[14] = v9;
  v0[15] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);
  *(v5 + 16) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DB58);
  v8;
  v10 = sub_1BB6BA8A4();
  v0[16] = v10;
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_1BB658264;

  return MEMORY[0x1EEE68140](v0 + 27, v10, 0, 0);
}

uint64_t sub_1BB658264()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 104);

  if (v0)
  {
    v4 = sub_1BB658F4C;
  }

  else
  {
    v4 = sub_1BB6583B0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BB6583B0()
{
  v1 = *(v0 + 32);
  sub_1BB6BB154();
  *(v1 + 32) = v2;
  v3 = [objc_allocWithZone(MEMORY[0x1E6987E68]) initWithAsset_];
  *(v1 + 24) = v3;
  [v3 setAppliesPreferredTrackTransform_];
  v4 = *(v1 + 24);
  *(v0 + 240) = sub_1BB6BB134();
  *(v0 + 248) = v5;
  *(v0 + 252) = v6;
  *(v0 + 256) = v7;
  [v4 setRequestedTimeToleranceBefore_];

  v8 = *(v1 + 24);
  *(v0 + 264) = sub_1BB6BB134();
  *(v0 + 272) = v9;
  *(v0 + 276) = v10;
  *(v0 + 280) = v11;
  [v8 setRequestedTimeToleranceAfter_];

  [*(v1 + 24) setMaximumSize_];
  v12 = *(v1 + 16);
  *(v0 + 152) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DB60);
  v12;
  v13 = sub_1BB6BA894();
  *(v0 + 160) = v13;
  v14 = swift_task_alloc();
  *(v0 + 168) = v14;
  *v14 = v0;
  v14[1] = sub_1BB658588;

  return MEMORY[0x1EEE68140](v0 + 16, v13, 0, 0);
}

uint64_t sub_1BB658588()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);

  if (v0)
  {
    v4 = sub_1BB658CF4;
  }

  else
  {
    v4 = sub_1BB6586D4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BB6586D4()
{
  v1 = v0[2];
  v0[23] = v1;
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DB68);
    v2 = sub_1BB6BA884();
    v0[24] = v2;
    v3 = swift_task_alloc();
    v0[25] = v3;
    *v3 = v0;
    v3[1] = sub_1BB65894C;
    v4 = v0[5];

    return MEMORY[0x1EEE68140](v4, v2, 0, 0);
  }

  else
  {
    (*(v0[7] + 56))(v0[5], 1, 1, v0[6]);
    v5 = v0[14];
    v6 = v0[9];
    v7 = v0[3];
    sub_1BB598308(v0[5], &qword_1EBC5C050);
    sub_1BB5A8D60();
    swift_allocError();
    *v8 = 0xD00000000000001FLL;
    *(v8 + 8) = 0x80000001BB6CDF80;
    *(v8 + 16) = 0;
    swift_willThrow();
    v5(v7, v6);

    v9 = v0[12];
    v10 = v0[4];

    v11 = sub_1BB6BAA34();
    (*(*(v11 - 8) + 8))(v10 + v9, v11);
    type metadata accessor for DKLogVideoPlayer(0);
    swift_deallocPartialClassInstance();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1BB65894C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);

    v4 = sub_1BB658E20;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_1BB658A78;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BB658A78()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[14];
  if (v4 == 1)
  {
    v6 = v0[9];
    v7 = v0[3];
    sub_1BB598308(v3, &qword_1EBC5C050);
    sub_1BB5A8D60();
    swift_allocError();
    *v8 = 0xD00000000000001FLL;
    *(v8 + 8) = 0x80000001BB6CDF80;
    *(v8 + 16) = 0;
    swift_willThrow();
    v5(v7, v6);

    v9 = v0[12];
    v10 = v0[4];

    v11 = sub_1BB6BAA34();
    (*(*(v11 - 8) + 8))(v10 + v9, v11);
    type metadata accessor for DKLogVideoPlayer(0);
    swift_deallocPartialClassInstance();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[8];
    v15 = v0[4];
    v5(v0[3], v0[9]);
    v16 = *(v2 + 32);
    v16(v14, v3, v1);
    v16(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKLogVideoPlayer_startTime, v14, v1);

    v17 = v0[1];
    v18 = v0[4];

    return v17(v18);
  }
}

uint64_t sub_1BB658CF4()
{
  (*(v0 + 112))(*(v0 + 24), *(v0 + 72));

  v1 = *(v0 + 96);
  v2 = *(v0 + 32);

  v3 = sub_1BB6BAA34();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);
  type metadata accessor for DKLogVideoPlayer(0);
  swift_deallocPartialClassInstance();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BB658E20()
{
  (*(v0 + 112))(*(v0 + 24), *(v0 + 72));

  v1 = *(v0 + 96);
  v2 = *(v0 + 32);

  v3 = sub_1BB6BAA34();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);
  type metadata accessor for DKLogVideoPlayer(0);
  swift_deallocPartialClassInstance();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BB658F4C()
{
  (*(v0 + 112))(*(v0 + 24), *(v0 + 72));
  v1 = *(v0 + 96);
  v2 = *(v0 + 32);

  v3 = sub_1BB6BAA34();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);
  type metadata accessor for DKLogVideoPlayer(0);
  swift_deallocPartialClassInstance();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BB65908C(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  v3 = sub_1BB6BA7F4();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB659168, 0, 0);
}

uint64_t sub_1BB659168()
{
  v1 = v0[3];
  sub_1BB6BA7E4();
  v2 = *(v1 + 24);
  v0[9] = v2;
  v2;
  v3 = sub_1BB6BB144();
  v5 = v4;
  v7 = v6;
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_1BB65924C;

  return MEMORY[0x1EEE68118](v3, v5, v7);
}

uint64_t sub_1BB65924C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_1BB659544;
  }

  else
  {
    v5 = sub_1BB65937C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BB65937C()
{
  (*(v0[5] + 16))(v0[7], v0[8], v0[4]);
  v1 = sub_1BB6BAA14();
  v2 = sub_1BB6BB084();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[7];
  if (v3)
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    sub_1BB6BA7E4();
    sub_1BB6BA744();
    v10 = v9;
    v11 = *(v6 + 8);
    v11(v5, v7);
    v11(v4, v7);
    *(v8 + 4) = v10;
    _os_log_impl(&dword_1BB58A000, v1, v2, "%f", v8, 0xCu);
    MEMORY[0x1BFB122F0](v8, -1, -1);
  }

  else
  {
    v12 = v0[4];
    v13 = v0[5];

    v11 = *(v13 + 8);
    v11(v4, v12);
  }

  v14 = v0[11];
  v11(v0[8], v0[4]);

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_1BB659544()
{
  v15 = v0;
  v1 = v0[12];
  (*(v0[5] + 8))(v0[8], v0[4]);
  v2 = v1;
  v3 = sub_1BB6BAA14();
  v4 = sub_1BB6BB074();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1BB6A0A5C(0xD00000000000001CLL, 0x80000001BB6CDFA0, &v14);
    *(v7 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_1BB58A000, v3, v4, "Error in %s : %@", v7, 0x16u);
    sub_1BB598308(v8, &qword_1EBC5C378);
    MEMORY[0x1BFB122F0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFB122F0](v9, -1, -1);
    MEMORY[0x1BFB122F0](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12(0);
}

uint64_t DKLogVideoPlayer.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKLogVideoPlayer_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKLogVideoPlayer_startTime;
  v4 = sub_1BB6BA7F4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t DKLogVideoPlayer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKLogVideoPlayer_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKLogVideoPlayer_startTime;
  v4 = sub_1BB6BA7F4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t DKLogKeyframePlayer.__allocating_init(logFolder:keyframesURL:videoURL:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BB6600B0;

  return DKLogKeyframePlayer.init(logFolder:keyframesURL:videoURL:startTime:)(a1, a2, a3, a4);
}

uint64_t DKLogKeyframePlayer.init(logFolder:keyframesURL:videoURL:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_1BB6BAA04();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C030);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v7 = sub_1BB6BA654();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB659B84, 0, 0);
}

uint64_t sub_1BB659B84()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 17);
  v3 = *(v0 + 18);
  v4 = *(v0 + 16);
  v5 = *(v0 + 9);
  v6 = *(v0 + 10);
  v7 = *(v0 + 8);
  *(v0 + 24) = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_logger;
  sub_1BB6BAA24();
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_currentKeyframeIndex) = 0;
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_currentKeyframe) = 0;
  v8 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_videoPlayer;
  *(v0 + 25) = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_videoPlayer;
  *(v6 + v8) = 0;
  v9 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_startTime;
  v10 = sub_1BB6BA7F4();
  *(v0 + 26) = v10;
  v11 = *(v10 - 8);
  *(v0 + 27) = v11;
  (*(v11 + 16))(v6 + v9, v5, v10);
  v12 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_logFolder;
  *(v0 + 28) = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_logFolder;
  v13 = *(v3 + 16);
  *(v0 + 29) = v13;
  *(v0 + 30) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v6 + v12, v1, v2);
  sub_1BB5982A0(v7, v4, &qword_1EBC5C030);
  v14 = *(v3 + 48);
  *(v0 + 31) = v14;
  *(v0 + 32) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v14(v4, 1, v2) == 1)
  {
    sub_1BB598308(*(v0 + 16), &qword_1EBC5C030);
    v15 = *(v0 + 31);
    v16 = *(v0 + 17);
    v17 = *(v0 + 15);
    sub_1BB5982A0(*(v0 + 7), v17, &qword_1EBC5C030);
    if (v15(v17, 1, v16) != 1)
    {
      (*(*(v0 + 18) + 32))(*(v0 + 21), *(v0 + 15), *(v0 + 17));
      v57 = sub_1BB65E6C8();
      v58 = *(v0 + 10);
      v34 = *(*(v0 + 18) + 8);
      v34(*(v0 + 21), *(v0 + 17));
      *(v58 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes) = v57;
      goto LABEL_14;
    }

    v18 = *(v0 + 25);
    v19 = *(v0 + 10);
    sub_1BB598308(*(v0 + 15), &qword_1EBC5C030);
    v20 = *(v19 + v18);
    if (v20)
    {
      v22 = *(v0 + 12);
      v21 = *(v0 + 13);
      v23 = *(v0 + 10);
      v24 = *(v0 + 11);
      v25 = *(v0 + 9);
      v26 = *(v0 + 6);
      v27 = *(v20 + 32);

      *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes) = _s23IntelligentTrackingCore19DKLogKeyframePlayerC22generateEmptyKeyframes9logFolder9startTime8duration8intervalSayAA17DKKeyframeStorageCG10Foundation3URLV_AL4DateVS2dtFZ_0(v27, 0.033, v26, v25);
      sub_1BB6BA9F4();
      sub_1BB6BA604();
      (*(v22 + 8))(v21, v24);
      v28 = [objc_opt_self() defaultManager];
      v29 = sub_1BB6BA5F4();
      v0[4] = 0.0;
      LOBYTE(v24) = [v28 createDirectoryAtURL:v29 withIntermediateDirectories:0 attributes:0 error:v0 + 4];

      v30 = *(v0 + 4);
      v31 = *(v0 + 20);
      v32 = *(v0 + 17);
      v33 = *(v0 + 18);
      if (v24)
      {
        v34 = *(v33 + 8);
        v35 = v30;
        v34(v31, v32);
      }

      else
      {
        v59 = v30;
        v60 = sub_1BB6BA5B4();

        swift_willThrow();

        v34 = *(v33 + 8);
        v34(v31, v32);
      }

LABEL_14:
      *(v0 + 36) = v34;
      v61 = *(v0 + 10);
      v62 = *(v61 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_videoPlayer);
      *(v0 + 37) = v62;
      if (v62)
      {
        v63 = *(v61 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes);
        *(v0 + 38) = v63;
        if (v63 >> 62)
        {
          v64 = sub_1BB6BB564();
          *(v0 + 39) = v64;
          if (v64)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
          *(v0 + 39) = v64;
          if (v64)
          {
LABEL_17:
            if (v64 < 1)
            {
              __break(1u);
            }

            v65 = 0;
            while (1)
            {
              *(v0 + 40) = v65;
              v66 = *(v0 + 38);
              if ((v66 & 0xC000000000000001) != 0)
              {
                v67 = MEMORY[0x1BFB111F0]();
              }

              else
              {
                v67 = *(v66 + 8 * v65 + 32);
              }

              *(v0 + 41) = v67;
              v68 = *(v67 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_imageName + 8);
              if (!v68)
              {
                goto LABEL_20;
              }

              v69 = *(v67 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_imageName);
              v70 = *(v0 + 12);
              v71 = *(v0 + 13);
              v72 = *(v0 + 11);
              *(v0 + 2) = 0x2F6567616D69;
              v0[3] = -2.12455197e183;

              v89 = v69;
              MEMORY[0x1BFB10B60](v69, v68);
              MEMORY[0x1BFB10B60](0x6765706A2ELL, 0xE500000000000000);
              sub_1BB6BA9E4();
              sub_1BB6BA604();

              (*(v70 + 8))(v71, v72);
              v73 = [objc_opt_self() defaultManager];
              sub_1BB6BA644();
              v74 = sub_1BB6BAC04();

              LOBYTE(v69) = [v73 fileExistsAtPath_];

              if (v69)
              {
                break;
              }

              v0[5] = 0.0;
              v75 = sub_1BB65E5D0(v89, v68);
              v0[42] = 0.0;

              if (v75)
              {
                v86 = v0[5];
                v87 = swift_task_alloc();
                *(v0 + 43) = v87;
                *v87 = v0;
                v87[1] = sub_1BB65B588;

                return sub_1BB65908C(v86);
              }

              v76 = *(v0 + 36);
              v77 = *(v0 + 19);
              v78 = *(v0 + 17);

              v76(v77, v78);
LABEL_21:
              v65 = *(v0 + 40) + 1;
              if (v65 == *(v0 + 39))
              {

                goto LABEL_30;
              }
            }

            (*(v0 + 36))(*(v0 + 19), *(v0 + 17));

LABEL_20:

            goto LABEL_21;
          }
        }
      }

LABEL_30:
      v79 = *(v0 + 36);
      v80 = *(v0 + 17);
      v81 = *(v0 + 8);
      v82 = *(v0 + 6);
      v83 = *(v0 + 7);
      (*(*(v0 + 27) + 8))(*(v0 + 9), *(v0 + 26));
      sub_1BB598308(v81, &qword_1EBC5C030);
      sub_1BB598308(v83, &qword_1EBC5C030);
      v79(v82, v80);

      v84 = *(v0 + 1);
      v85 = *(v0 + 10);

      return v84(v85);
    }

    v42 = *(v0 + 26);
    v43 = *(v0 + 27);
    v44 = *(v0 + 18);
    v46 = *(v0 + 8);
    v45 = *(v0 + 9);
    v47 = *(v0 + 7);
    sub_1BB5A8D60();
    swift_allocError();
    *v48 = 0xD00000000000001FLL;
    *(v48 + 8) = 0x80000001BB6CDFC0;
    *(v48 + 16) = 0;
    swift_willThrow();
    v88 = *(v43 + 8);
    v88(v45, v42);
    sub_1BB598308(v46, &qword_1EBC5C030);
    sub_1BB598308(v47, &qword_1EBC5C030);
    v49 = *(v44 + 8);
    v50 = *(v0 + 28);
    v51 = *(v0 + 26);
    v52 = *(v0 + 24);
    v53 = *(v0 + 17);
    v54 = *(v0 + 10);
    v49(*(v0 + 6), v53);
    v49(v54 + v50, v53);
    v55 = sub_1BB6BAA34();
    (*(*(v55 - 8) + 8))(v54 + v52, v55);

    v88(v54 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_startTime, v51);
    type metadata accessor for DKLogKeyframePlayer(0);
    swift_deallocPartialClassInstance();

    v56 = *(v0 + 1);

    return v56();
  }

  else
  {
    v36 = *(v0 + 22);
    v37 = *(v0 + 23);
    v38 = *(v0 + 17);
    (*(*(v0 + 18) + 32))(v37, *(v0 + 16), v38);
    v13(v36, v37, v38);
    type metadata accessor for DKLogVideoPlayer(0);
    swift_allocObject();
    v39 = swift_task_alloc();
    *(v0 + 33) = v39;
    *v39 = v0;
    v39[1] = sub_1BB65A7C8;
    v40 = *(v0 + 22);

    return DKLogVideoPlayer.init(url:)(v40);
  }
}

uint64_t sub_1BB65A7C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v5 = sub_1BB65B318;
  }

  else
  {
    *(v4 + 280) = a1;
    v5 = sub_1BB65A918;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BB65A918()
{
  v1 = v0[35];
  v2 = v0[25];
  v3 = v0[10];
  (*(v0[18] + 8))(v0[23], v0[17]);
  *(v3 + v2) = v1;

  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[17];
  v7 = v0[15];
  sub_1BB5982A0(v0[7], v7, &qword_1EBC5C030);
  if (v5(v7, 1, v6) == 1)
  {
    v82 = v4;
    v8 = v0[25];
    v9 = v0[10];
    sub_1BB598308(v0[15], &qword_1EBC5C030);
    v10 = *(v9 + v8);
    if (v10)
    {
      v11 = v0[12];
      v12 = v0[13];
      v14 = v0[10];
      v13 = v0[11];
      v15 = v0[9];
      v16 = v0[6];
      v17 = *(v10 + 32);

      *(v14 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes) = _s23IntelligentTrackingCore19DKLogKeyframePlayerC22generateEmptyKeyframes9logFolder9startTime8duration8intervalSayAA17DKKeyframeStorageCG10Foundation3URLV_AL4DateVS2dtFZ_0(v17, 0.033, v16, v15);
      sub_1BB6BA9F4();
      sub_1BB6BA604();
      (*(v11 + 8))(v12, v13);
      v18 = [objc_opt_self() defaultManager];
      v19 = sub_1BB6BA5F4();
      v0[4] = 0;
      LOBYTE(v13) = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:0 attributes:0 error:v0 + 4];

      v20 = v0[4];
      v21 = v0[20];
      v22 = v0[17];
      v23 = v0[18];
      if (v13)
      {
        v24 = *(v23 + 8);
        v25 = v20;
        v24(v21, v22);
      }

      else
      {
        v52 = v20;
        v53 = sub_1BB6BA5B4();

        swift_willThrow();

        v24 = *(v23 + 8);
        v24(v21, v22);
        v82 = 0;
      }

LABEL_13:
      v0[36] = v24;
      v54 = v0[10];
      v55 = *(v54 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_videoPlayer);
      v0[37] = v55;
      if (v55)
      {
        v56 = *(v54 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes);
        v0[38] = v56;
        if (v56 >> 62)
        {
          v57 = sub_1BB6BB564();
          v0[39] = v57;
          if (v57)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v0[39] = v57;
          if (v57)
          {
LABEL_16:
            if (v57 < 1)
            {
              __break(1u);
            }

            v58 = 0;
            while (1)
            {
              v0[40] = v58;
              v59 = v0[38];
              if ((v59 & 0xC000000000000001) != 0)
              {
                v60 = MEMORY[0x1BFB111F0]();
              }

              else
              {
                v60 = *(v59 + 8 * v58 + 32);
              }

              v0[41] = v60;
              v61 = *(v60 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_imageName + 8);
              if (!v61)
              {
                goto LABEL_19;
              }

              v62 = *(v60 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_imageName);
              v63 = v0[12];
              v64 = v0[13];
              v65 = v0[11];
              v0[2] = 0x2F6567616D69;
              v0[3] = 0xE600000000000000;

              v84 = v62;
              MEMORY[0x1BFB10B60](v62, v61);
              MEMORY[0x1BFB10B60](0x6765706A2ELL, 0xE500000000000000);
              sub_1BB6BA9E4();
              sub_1BB6BA604();

              (*(v63 + 8))(v64, v65);
              v66 = [objc_opt_self() defaultManager];
              sub_1BB6BA644();
              v67 = sub_1BB6BAC04();

              v68 = [v66 fileExistsAtPath_];

              if (v68)
              {
                break;
              }

              v0[5] = 0;
              v69 = sub_1BB65E5D0(v84, v61);
              v0[42] = v82;

              if (v69)
              {
                v80 = *(v0 + 5);
                v81 = swift_task_alloc();
                v0[43] = v81;
                *v81 = v0;
                v81[1] = sub_1BB65B588;

                return sub_1BB65908C(v80);
              }

              v70 = v0[36];
              v71 = v0[19];
              v72 = v0[17];

              v70(v71, v72);
LABEL_20:
              v58 = v0[40] + 1;
              if (v58 == v0[39])
              {

                goto LABEL_29;
              }
            }

            (v0[36])(v0[19], v0[17]);

LABEL_19:

            goto LABEL_20;
          }
        }
      }

LABEL_29:
      v73 = v0[36];
      v74 = v0[17];
      v75 = v0[8];
      v76 = v0[6];
      v77 = v0[7];
      (*(v0[27] + 8))(v0[9], v0[26]);
      sub_1BB598308(v75, &qword_1EBC5C030);
      sub_1BB598308(v77, &qword_1EBC5C030);
      v73(v76, v74);

      v78 = v0[1];
      v79 = v0[10];

      return v78(v79);
    }

    v34 = v0[26];
    v35 = v0[27];
    v36 = v0[18];
    v38 = v0[8];
    v37 = v0[9];
    v39 = v0[7];
    sub_1BB5A8D60();
    swift_allocError();
    *v40 = 0xD00000000000001FLL;
    *(v40 + 8) = 0x80000001BB6CDFC0;
    *(v40 + 16) = 0;
    swift_willThrow();
    v83 = *(v35 + 8);
    v83(v37, v34);
    sub_1BB598308(v38, &qword_1EBC5C030);
    sub_1BB598308(v39, &qword_1EBC5C030);
    v33 = *(v36 + 8);
    v26 = v0 + 6;
  }

  else
  {
    v26 = v0 + 21;
    (*(v0[18] + 32))(v0[21], v0[15], v0[17]);
    v27 = sub_1BB65E6C8();
    if (!v4)
    {
      v50 = v27;
      v51 = v0[10];
      v24 = *(v0[18] + 8);
      v24(v0[21], v0[17]);
      v82 = 0;
      *(v51 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes) = v50;
      goto LABEL_13;
    }

    v28 = v0[17];
    v29 = v0[18];
    v30 = v0[8];
    v32 = v0[6];
    v31 = v0[7];
    v83 = *(v0[27] + 8);
    v83(v0[9], v0[26]);
    sub_1BB598308(v30, &qword_1EBC5C030);
    sub_1BB598308(v31, &qword_1EBC5C030);
    v33 = *(v29 + 8);
    v33(v32, v28);
  }

  v41 = *v26;
  v42 = v0[28];
  v43 = v0[26];
  v44 = v0[24];
  v45 = v0[17];
  v46 = v0[10];
  v33(v41, v45);
  v33(v46 + v42, v45);
  v47 = sub_1BB6BAA34();
  (*(*(v47 - 8) + 8))(v46 + v44, v47);

  v83(v46 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_startTime, v43);
  type metadata accessor for DKLogKeyframePlayer(0);
  swift_deallocPartialClassInstance();

  v48 = v0[1];

  return v48();
}

uint64_t sub_1BB65B318()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[8];
  v5 = v0[6];
  v4 = v0[7];
  v6 = *(v0[27] + 8);
  v6(v0[9], v0[26]);
  sub_1BB598308(v3, &qword_1EBC5C030);
  sub_1BB598308(v4, &qword_1EBC5C030);
  v7 = *(v2 + 8);
  v7(v5, v1);
  v8 = v0[28];
  v15 = v0[26];
  v9 = v0[24];
  v10 = v0[17];
  v11 = v0[10];
  v7(v0[23], v10);
  v7(v11 + v8, v10);
  v12 = sub_1BB6BAA34();
  (*(*(v12 - 8) + 8))(v11 + v9, v12);

  v6(v11 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_startTime, v15);
  type metadata accessor for DKLogKeyframePlayer(0);
  swift_deallocPartialClassInstance();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BB65B588(uint64_t a1)
{
  *(*v1 + 352) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BB65B6B4, 0, 0);
}

uint64_t sub_1BB65B6B4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 288);
  if (v1)
  {
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);
    (*(v0 + 232))(v6, v3, v5);
    (*(v4 + 56))(v6, 0, 1, v5);
    v7 = v1;
    sub_1BB5A0378(v6, 80);

    sub_1BB598308(v6, &qword_1EBC5C030);
    v2(v3, v5);
  }

  else
  {
    v2(*(v0 + 152), *(v0 + 136));
  }

  v8 = *(v0 + 320) + 1;
  if (v8 == *(v0 + 312))
  {
LABEL_5:

    v9 = *(v0 + 288);
    v10 = *(v0 + 136);
    v11 = *(v0 + 64);
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);
    (*(*(v0 + 216) + 8))(*(v0 + 72), *(v0 + 208));
    sub_1BB598308(v11, &qword_1EBC5C030);
    sub_1BB598308(v13, &qword_1EBC5C030);
    v9(v12, v10);

    v14 = *(v0 + 8);
    v15 = *(v0 + 80);

    return v14(v15);
  }

  v32 = *(v0 + 336);
  while (1)
  {
    *(v0 + 320) = v8;
    v17 = *(v0 + 304);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1BFB111F0]();
    }

    else
    {
      v18 = *(v17 + 8 * v8 + 32);
    }

    *(v0 + 328) = v18;
    v19 = *(v18 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_imageName + 8);
    if (!v19)
    {
      goto LABEL_15;
    }

    v20 = *(v18 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_imageName);
    v21 = *(v0 + 96);
    v22 = *(v0 + 104);
    v33 = *(v0 + 88);
    *(v0 + 16) = 0x2F6567616D69;
    *(v0 + 24) = 0xE600000000000000;

    MEMORY[0x1BFB10B60](v20, v19);
    MEMORY[0x1BFB10B60](0x6765706A2ELL, 0xE500000000000000);
    sub_1BB6BA9E4();
    sub_1BB6BA604();

    (*(v21 + 8))(v22, v33);
    v23 = [objc_opt_self() defaultManager];
    sub_1BB6BA644();
    v24 = sub_1BB6BAC04();

    v25 = [v23 fileExistsAtPath_];

    if ((v25 & 1) == 0)
    {
      break;
    }

    (*(v0 + 288))(*(v0 + 152), *(v0 + 136));

LABEL_15:

LABEL_16:
    v8 = *(v0 + 320) + 1;
    if (v8 == *(v0 + 312))
    {
      goto LABEL_5;
    }
  }

  *(v0 + 40) = 0;
  v26 = sub_1BB65E5D0(v20, v19);
  *(v0 + 336) = v32;

  if (!v26)
  {
    v27 = *(v0 + 288);
    v28 = *(v0 + 152);
    v29 = *(v0 + 136);

    v27(v28, v29);
    goto LABEL_16;
  }

  v30 = *(v0 + 40);
  v31 = swift_task_alloc();
  *(v0 + 344) = v31;
  *v31 = v0;
  v31[1] = sub_1BB65B588;

  return sub_1BB65908C(v30);
}

uint64_t sub_1BB65BC08()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_currentKeyframeIndex;
  v3 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_currentKeyframeIndex);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes);
    if (!(v5 >> 62))
    {
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4 < result)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  result = sub_1BB6BB564();
  if (v4 < result)
  {
LABEL_4:
    v7 = *(v1 + v2);
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
    }

    else
    {
      *(v1 + v2) = v8;
      v9 = swift_task_alloc();
      v0[3] = v9;
      *v9 = v0;
      v9[1] = sub_1BB6600AC;

      return sub_1BB65BF88(v8);
    }

    return result;
  }

LABEL_10:
  v10 = v0[1];

  return v10(0);
}

uint64_t sub_1BB65BD68()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_currentKeyframeIndex;
  v3 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_currentKeyframeIndex);
  v4 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes);
  if (v4 >> 62)
  {
    if (v3 < sub_1BB6BB564())
    {
      goto LABEL_3;
    }
  }

  else if (v3 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v5 = *(v1 + v2);
    v6 = swift_task_alloc();
    v0[3] = v6;
    *v6 = v0;
    v6[1] = sub_1BB65BE8C;

    return sub_1BB65BF88(v5);
  }

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_1BB65BE8C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1BB65BF88(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1BB6BA654();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB65C048, 0, 0);
}

uint64_t sub_1BB65C048()
{
  v1 = v0[2];
  if (v1 < 0)
  {
    goto LABEL_10;
  }

  v2 = v0[3];
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes;
  v4 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes);
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > v1)
    {
      goto LABEL_4;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  result = sub_1BB6BB564();
  if (result <= v0[2])
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = v0[3];
  v7 = *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_currentKeyframeIndex);
  v8 = *(v2 + v3);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v14 = *(v2 + v3);

    MEMORY[0x1BFB111F0](v7, v14);

    v6 = v0[3];
    goto LABEL_8;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    return result;
  }

LABEL_8:
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  (*(v10 + 16))(v9, v6 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_logFolder, v11);
  v12 = sub_1BB611CCC(v9);

  (*(v10 + 8))(v9, v11);
LABEL_11:

  v13 = v0[1];

  return v13(v12);
}

uint64_t DKLogKeyframePlayer.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_logFolder;
  v2 = sub_1BB6BA654();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_logger;
  v4 = sub_1BB6BAA34();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_startTime;
  v6 = sub_1BB6BA7F4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t DKLogKeyframePlayer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_logFolder;
  v2 = sub_1BB6BA654();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_logger;
  v4 = sub_1BB6BAA34();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_startTime;
  v6 = sub_1BB6BA7F4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t DKLogPlayer.__allocating_init(rate:)(double a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 0;
  sub_1BB6BAA24();
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_keyframePlayer) = 0;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_rate) = a1;
  return v2;
}

uint64_t DKLogPlayer.init(rate:)(double a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  sub_1BB6BAA24();
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_keyframePlayer) = 0;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_rate) = a1;
  return v1;
}

uint64_t sub_1BB65C560(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  v2[4] = swift_task_alloc();
  v3 = sub_1BB6BA7F4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C030);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for DKLoggerMetafile(0);
  v2[14] = swift_task_alloc();
  v4 = sub_1BB6BAA04();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = sub_1BB6BA654();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB65C7B4, 0, 0);
}

uint64_t sub_1BB65C7B4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[3];
  v5 = OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_keyframePlayer;
  v0[22] = OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_keyframePlayer;
  *(v4 + v5) = 0;

  sub_1BB6BA9E4();
  sub_1BB6BA604();
  (*(v2 + 8))(v1, v3);
  v6 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
  v7 = sub_1BB6BA5F4();
  v8 = [v6 initWithContentsOfURL_];

  if (v8)
  {
    sub_1BB6BA6E4();

    v0[23] = 0xF000000000000000;
  }

  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[19];
  sub_1BB6BB2F4();

  *&v16 = 0xD000000000000018;
  *(&v16 + 1) = 0x80000001BB6CDFE0;
  v12 = sub_1BB6BA5C4();
  MEMORY[0x1BFB10B60](v12);

  sub_1BB5A8D60();
  swift_allocError();
  *v13 = v16;
  *(v13 + 16) = 0;
  swift_willThrow();
  (*(v11 + 8))(v9, v10);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1BB65CE1C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_1BB65D0C8;
  }

  else
  {
    *(v4 + 224) = a1;
    v5 = sub_1BB65CF44;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BB65CF44()
{
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v13 = v0[28];
  v5 = v0[19];
  v12 = v0[18];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[3];

  sub_1BB593714(v1, v2);
  sub_1BB598308(v7, &qword_1EBC5C030);
  sub_1BB598308(v8, &qword_1EBC5C030);
  (*(v5 + 8))(v4, v12);
  *(v9 + v3) = v13;

  sub_1BB613B88(v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1BB65D0C8()
{
  v1 = v0[24];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[14];
  v8 = v0[11];
  v7 = v0[12];

  sub_1BB593714(v1, v2);
  sub_1BB598308(v8, &qword_1EBC5C030);
  sub_1BB598308(v7, &qword_1EBC5C030);
  (*(v5 + 8))(v3, v4);
  sub_1BB613B88(v6);

  v9 = v0[1];

  return v9();
}

void sub_1BB65D24C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    sub_1BB672064();
  }
}

uint64_t sub_1BB65D2C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(v2 + 16);

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v6;
  if ((result & 1) == 0)
  {
    result = sub_1BB59E3C8(0, v6[2] + 1, 1, v6);
    v6 = result;
    *(v2 + 16) = result;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    result = sub_1BB59E3C8((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_1BB65F094;
  v10[5] = v5;
  *(v2 + 16) = v6;
  return result;
}

uint64_t sub_1BB65D3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1BB6BA7F4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB65D46C, 0, 0);
}

uint64_t sub_1BB65D46C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_keyframePlayer);
  v0[7] = v1;
  if (v1)
  {
    v2 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_currentKeyframeIndex;
    v0[8] = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_currentKeyframeIndex;
    v3 = *(v1 + v2);
    v4 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes;
    v0[9] = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes;
    v5 = *(v1 + v4);

    if (v5 >> 62)
    {
      if (v3 < sub_1BB6BB564())
      {
        goto LABEL_4;
      }
    }

    else if (v3 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v6 = *(v1 + v2);
      v7 = swift_task_alloc();
      v0[10] = v7;
      *v7 = v0;
      v7[1] = sub_1BB65D5C4;

      return sub_1BB65BF88(v6);
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BB65D5C4(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BB65D6C4, 0, 0);
}

uint64_t sub_1BB65D6C4()
{
  v18 = v0;
  v1 = v0[11];
  if (!v1)
  {
    goto LABEL_17;
  }

  v2 = *(v0[2] + 16);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = v2 + 40;
    do
    {
      v5 = *(v4 - 8);
      v17 = v1;

      v5(&v17);

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  v6 = v0[7];
  v7 = *(v6 + v0[8]);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
LABEL_15:
    result = sub_1BB6BB564();
    if (v8 < result)
    {
LABEL_9:
      v12 = v0[7];
      v11 = v0[8];
      v13 = *(v12 + v11);
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
      }

      else
      {
        *(v12 + v11) = v14;
        v15 = swift_task_alloc();
        v0[12] = v15;
        *v15 = v0;
        v15[1] = sub_1BB65D894;

        return sub_1BB65BF88(v14);
      }

      return result;
    }

    goto LABEL_16;
  }

  v9 = *(v6 + v0[9]);
  if (v9 >> 62)
  {
    goto LABEL_15;
  }

  result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 < result)
  {
    goto LABEL_9;
  }

LABEL_16:

LABEL_17:

  v16 = v0[1];

  return v16();
}

uint64_t sub_1BB65D894(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BB65D994, 0, 0);
}

uint64_t sub_1BB65D994()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[11];
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[3];
    v6 = v0[4];
    v7 = v0[2];
    v8 = *(v6 + 16);
    v8(v3, v1 + OBJC_IVAR____TtC23IntelligentTrackingCore10DKKeyframe_time, v5);
    v8(v4, v2 + OBJC_IVAR____TtC23IntelligentTrackingCore10DKKeyframe_time, v5);
    sub_1BB6BA744();
    v10 = v9;
    v11 = *(v6 + 8);
    v11(v4, v5);
    v11(v3, v5);
    sub_1BB65DDEC(v10 / *(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_rate));
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1BB65DAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D988);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1BB5982A0(a3, v25 - v10, &qword_1EBC5D988);
  v12 = sub_1BB6BAF84();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BB598308(v11, &qword_1EBC5D988);
  }

  else
  {
    sub_1BB6BAF74();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BB6BAF24();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BB6BACA4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1BB598308(a3, &qword_1EBC5D988);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BB598308(a3, &qword_1EBC5D988);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1BB65DE04(void *a1, double a2)
{
  v26 = a1;
  v4 = sub_1BB6BAA44();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = sub_1BB6BAA94();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  v18 = *(v2 + 24);
  if (v18)
  {
    ObjectType = swift_getObjectType();
    v26 = v18;
    sub_1BB6BAA84();
    sub_1BB6BAAA4();
    v19 = *(v12 + 8);
    v19(v14, v11);
    v20 = *MEMORY[0x1E69E7F40];
    v24 = v11;
    v21 = *(v5 + 104);
    v21(v10, v20, v4);
    *v7 = 0;
    v21(v7, *MEMORY[0x1E69E7F28], v4);
    MEMORY[0x1BFB10F80](v17, v10, v7, ObjectType);
    v22 = *(v5 + 8);
    v22(v7, v4);
    v22(v10, v4);
    v19(v17, v24);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for DKRepeatingTimer());

    *(v2 + 24) = DKRepeatingTimer.init(interval:fireOnce:queue:_:)(1, 0, v26, v2, a2);

    MEMORY[0x1EEE66BB8]();
  }
}

uint64_t sub_1BB65E100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D988);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1BB6BAF84();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1BB65DAEC(0, 0, v4, &unk_1BB6C5C48, v6);
}

uint64_t DKLogPlayer.deinit()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DKLogPlayer.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB65E348@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = sub_1BB6BAA44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1BB65E3C0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB65E4B8;

  return v6(a1);
}

uint64_t sub_1BB65E4B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

BOOL sub_1BB65E5D0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1BB6BB2E4();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_1BB65E6C8()
{
  sub_1BB6BA434();
  swift_allocObject();
  sub_1BB6BA424();
  v0 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
  v1 = sub_1BB6BA5F4();
  v2 = [v0 initWithContentsOfURL_];

  if (v2)
  {
    sub_1BB6BA6E4();
  }

  sub_1BB6BB2F4();

  *&v6 = 0xD000000000000014;
  *(&v6 + 1) = 0x80000001BB6CE130;
  v3 = sub_1BB6BA5C4();
  MEMORY[0x1BFB10B60](v3);

  sub_1BB5A8D60();
  swift_allocError();
  *v4 = v6;
  *(v4 + 16) = 0;
  swift_willThrow();
}

uint64_t _s23IntelligentTrackingCore19DKLogKeyframePlayerC22generateEmptyKeyframes9logFolder9startTime8duration8intervalSayAA17DKKeyframeStorageCG10Foundation3URLV_AL4DateVS2dtFZ_0(double a1, double a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DBC0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v61 - v7;
  v8 = sub_1BB6BA7F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v61 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v61 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v72 = &v61 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DBC8);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DBD0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61 - v23;
  v83 = MEMORY[0x1E69E7CC0];
  v25 = *(v19 + 44);
  result = sub_1BB6BA784();
  if (a2 != 0.0)
  {
    v82 = v25;
    v27 = v9 + 16;
    v28 = *(v9 + 16);
    v28(v21, a4, v8);
    v29 = v22[11];
    v66 = v11;
    v79 = a4;
    v30 = &v24[v29];
    v64 = v6;
    v31 = *(v6 + 48);
    v33 = *(v9 + 32);
    v32 = v9 + 32;
    v33(&v24[v29 + v31], v21, v8);
    v70 = v22[9];
    v75 = v33;
    v33(&v24[v70], &v21[v82], v8);
    v63 = v22[10];
    *&v24[v63] = a2;
    v77 = v31;
    v74 = v24;
    v81 = v28;
    v82 = v27;
    v28(v24, v30 + v31, v8);
    v80 = (v32 - 24);
    v62 = (v32 + 8);
    *v30 = 0;
    v69 = (v32 + 24);
    v78 = v30;
    *(v30 + 8) = 0;
    v34 = v79;
    v35 = v66;
    v71 = v32;
    v68 = (v32 + 16);
    v67 = xmmword_1BB6BD520;
    v36 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v37 = v73;
      v81(v73, v78 + v77, v8);
      sub_1BB660058(&qword_1EBC5DBD8, MEMORY[0x1E6969530]);
      if (a2 <= 0.0)
      {
        if (sub_1BB6BABD4())
        {
LABEL_5:
          v38 = *v80;
          (*v80)(v37, v8);
          v39 = 1;
          v40 = v72;
          goto LABEL_8;
        }
      }

      else if (sub_1BB6BABC4())
      {
        goto LABEL_5;
      }

      v41 = v34;
      v42 = v78;
      v43 = v65;
      sub_1BB5982A0(v78, v65, &qword_1EBC5DBC0);
      v44 = *(v64 + 48);
      sub_1BB660058(&qword_1EBC5DBE0, MEMORY[0x1E6969530]);
      v79 = v36;
      v45 = v76;
      v46 = sub_1BB6BB1D4();
      v48 = v47;
      v38 = *v80;
      (*v80)(v43 + v44, v8);
      *v42 = v46;
      *(v42 + 8) = v48 & 1;
      v34 = v41;
      v35 = v66;
      v49 = v45;
      v36 = v79;
      (*v62)(v42 + v77, v49, v8);
      v40 = v72;
      v75(v72, v37, v8);
      v39 = 0;
LABEL_8:
      (*v69)(v40, v39, 1, v8);
      if ((*v68)(v40, 1, v8) == 1)
      {
        sub_1BB598308(v74, &qword_1EBC5DBD0);
        return v36;
      }

      v79 = v38;
      v50 = v75;
      v75(v35, v40, v8);
      v51 = v76;
      v81(v76, v35, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC5C398);
      v52 = swift_allocObject();
      *(v52 + 16) = v67;
      v53 = v34;
      sub_1BB6BA744();
      *(v52 + 56) = MEMORY[0x1E69E63B0];
      *(v52 + 64) = MEMORY[0x1E69E6438];
      *(v52 + 32) = v54;
      v55 = sub_1BB6BAC64();
      v57 = v56;
      type metadata accessor for DKKeyframeStorage(0);
      v58 = swift_allocObject();
      *(v58 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_logs) = MEMORY[0x1E69E7CC0];
      v59 = (v58 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_imageName);
      v60 = v50(v58 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_time, v51, v8);
      *v59 = v55;
      v59[1] = v57;
      MEMORY[0x1BFB10C80](v60);
      if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BB6BAE64();
      }

      sub_1BB6BAEB4();
      v79(v35, v8);
      v36 = v83;
      v34 = v53;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB65F01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB65F0C8()
{
  result = sub_1BB6BAA34();
  if (v1 <= 0x3F)
  {
    result = sub_1BB6BA7F4();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of DKLogVideoPlayer.__allocating_init(url:)(uint64_t a1)
{
  v6 = (*(v1 + 216) + **(v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB65F2DC;

  return v6(a1);
}

uint64_t sub_1BB65F2DC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of DKLogVideoPlayer.getVideoFrame(timeInterval:)(double a1)
{
  v7 = (*(*v1 + 224) + **(*v1 + 224));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB5B4300;
  v5.n128_f64[0] = a1;

  return v7(v5);
}

uint64_t sub_1BB65F500()
{
  result = sub_1BB6BA654();
  if (v1 <= 0x3F)
  {
    result = sub_1BB6BAA34();
    if (v2 <= 0x3F)
    {
      result = sub_1BB6BA7F4();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of DKLogKeyframePlayer.__allocating_init(logFolder:keyframesURL:videoURL:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(v4 + 280) + **(v4 + 280));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1BB6600A8;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DKLogKeyframePlayer.getNextKeyframe()()
{
  v4 = (*(*v0 + 288) + **(*v0 + 288));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BB5B46E4;

  return v4();
}

uint64_t dispatch thunk of DKLogKeyframePlayer.getCurrentKeyframe()()
{
  v4 = (*(*v0 + 296) + **(*v0 + 296));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BB5B46E4;

  return v4();
}

uint64_t dispatch thunk of DKLogKeyframePlayer.getKeyframe(index:)(uint64_t a1)
{
  v6 = (*(*v1 + 304) + **(*v1 + 304));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB5B46E4;

  return v6(a1);
}

uint64_t sub_1BB65FAF0()
{
  result = sub_1BB6BAA34();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of DKLogPlayer.load(logFolder:)(uint64_t a1)
{
  v6 = (*(*v1 + 224) + **(*v1 + 224));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB5B3D14;

  return v6(a1);
}

uint64_t sub_1BB65FDB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BB5B3D14;

  return sub_1BB65D3A0(a1, v4, v5, v6);
}

uint64_t sub_1BB65FE6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BB5B46DC;

  return sub_1BB65E3C0(a1, v4);
}

unint64_t sub_1BB65FF24()
{
  result = qword_1EBC5DBB0;
  if (!qword_1EBC5DBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5DBA8);
    sub_1BB660058(&qword_1EBC5DBB8, type metadata accessor for DKKeyframeStorage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DBB0);
  }

  return result;
}

_BYTE *sub_1BB65FFD8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1BB660058(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BB6600B4()
{
  v1[2] = v0;
  v2 = sub_1BB6BA7F4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for DKCamera();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB660208, 0, 0);
}

uint64_t sub_1BB660208()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  v5 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  if (*(*(v4 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedFaces))
  {
    v6 = *(*(v4 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedFaces);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1BB5C265C(v6);

  sub_1BB5C8EAC(v7);
  v8 = *(v4 + 48);
  if (*(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedBodies))
  {
    v9 = *(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedBodies);
  }

  else
  {
    v9 = v5;
  }

  v10 = sub_1BB5C26A4(v9);

  sub_1BB5C8EAC(v10);
  v11 = *(v4 + 48);
  if (*(v11 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedHands))
  {
    v12 = *(v11 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedHands);
  }

  else
  {
    v12 = v5;
  }

  v13 = sub_1BB5C28D4(v12);

  sub_1BB5C8EAC(v13);
  sub_1BB5BA008(*(v4 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1BB6604E8(v0[6]);
  }

  else
  {
    v14 = v0[9];
    sub_1BB5981C8(v0[6], v14);

    sub_1BB5C19EC(v14);

    sub_1BB59822C(v14);
  }

  v15 = v0[5];
  v16 = v0[3];
  v17 = v0[4];
  (*(v17 + 16))(v15, *(v4 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v16);

  sub_1BB5C2A78(v15, v20);

  (*(v17 + 8))(v15, v16);

  v18 = v0[1];

  return v18(1);
}

uint64_t type metadata accessor for DKTrackerTask()
{
  result = qword_1EBC5DBE8;
  if (!qword_1EBC5DBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB6604E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DKFPSTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C908);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t DKThreadSafeBuffer.__allocating_init(maxLenght:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DKThreadSafeBuffer.init(maxLenght:)(a1);
  return v2;
}

uint64_t sub_1BB6605F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a3;
  v49 = a4;
  v46 = a1;
  v47 = a2;
  v52 = a5;
  v56 = *MEMORY[0x1E69E9840];
  v5 = sub_1BB6BA874();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BB6BA7F4();
  v10 = *(v9 - 8);
  v50 = v9;
  v51 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB6BA7E4();
  v13 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v14 = sub_1BB6BAC04();
  [v13 setDateFormat_];

  sub_1BB6BA864();
  v15 = sub_1BB6BA854();
  (*(v6 + 8))(v8, v5);
  [v13 setTimeZone_];

  v16 = sub_1BB6BA764();
  v17 = [v13 stringFromDate_];

  v18 = sub_1BB6BAC34();
  v20 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC5C398);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BB6BD520;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1BB66168C();
  *(v21 + 32) = v18;
  *(v21 + 40) = v20;
  v22 = sub_1BB6BAC64();
  v24 = v23;
  v25 = objc_opt_self();
  v26 = [v25 defaultManager];
  v27 = sub_1BB6BAC04();
  v28 = [v26 fileExistsAtPath_];

  v29 = v52;
  if ((v28 & 1) == 0)
  {
    v30 = v51;
    v31 = [v25 defaultManager];
    v32 = sub_1BB6BAC04();
    v53 = 0;
    v33 = [v31 createDirectoryAtPath:v32 withIntermediateDirectories:0 attributes:0 error:&v53];

    if (!v33)
    {
      v38 = v53;

      v39 = sub_1BB6BA5B4();

      swift_willThrow();
      v55[0] = 11;
      v53 = 0;
      v54 = 0xE000000000000000;
      sub_1BB6BB2F4();

      v53 = 0xD000000000000026;
      v54 = 0x80000001BB6CE250;
      swift_getErrorValue();
      v40 = sub_1BB6BB8B4();
      MEMORY[0x1BFB10B60](v40);

      v41 = v53;
      v42 = v54;
      v43 = sub_1BB6BB074();
      _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(v55, v41, v42, v43);

      (*(v30 + 8))(v12, v50);
      v37 = 1;
      v29 = v52;
      goto LABEL_6;
    }

    v34 = v53;
    v29 = v52;
  }

  v53 = 47;
  v54 = 0xE100000000000000;
  MEMORY[0x1BFB10B60](v46, v47);
  MEMORY[0x1BFB10B60](45, 0xE100000000000000);
  MEMORY[0x1BFB10B60](v22, v24);

  MEMORY[0x1BFB10B60](46, 0xE100000000000000);
  MEMORY[0x1BFB10B60](v48, v49);
  v35 = v53;
  v36 = v54;
  v53 = 0xD000000000000026;
  v54 = 0x80000001BB6CE220;
  MEMORY[0x1BFB10B60](v35, v36);

  sub_1BB6BA5D4();

  (*(v51 + 8))(v12, v50);
  v37 = 0;
LABEL_6:
  v44 = sub_1BB6BA654();
  return (*(*(v44 - 8) + 56))(v29, v37, 1, v44);
}

uint64_t DKFPSTracker.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C908);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t sub_1BB660BA0()
{
  v1 = sub_1BB6BA7F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);

  os_unfair_lock_lock(v5 + 4);

  sub_1BB6BA7D4();
  v6 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1BB59D348(0, v6[2] + 1, 1, v6);
    *(v0 + 24) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1BB59D348(v8 > 1, v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  (*(v2 + 32))(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v9, v4, v1);
  *(v0 + 24) = v6;
  v10 = *(v0 + 16);

  os_unfair_lock_unlock(v10 + 4);
}

uint64_t sub_1BB660D30()
{
  v1 = sub_1BB6BA7F4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v27 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - v9;
  v11 = *(v0 + 16);

  os_unfair_lock_lock(v11 + 4);

  v27[0] = v0;
  v12 = *(*(v0 + 24) + 16);

  v34 = v12;
  if (v12)
  {
    v33 = v5;
    v14 = 0;
    v30 = (v2 + 32);
    v31 = v2 + 16;
    v15 = MEMORY[0x1E69E7CC0];
    v28 = v10;
    v29 = v8;
    v32 = result;
    v27[1] = v2 + 8;
    while (v14 < *(result + 16))
    {
      v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v17 = *(v2 + 72);
      (*(v2 + 16))(v10, result + v16 + v17 * v14, v1);
      sub_1BB6BA7D4();
      sub_1BB6BA744();
      v19 = v18;
      v20 = *(v2 + 8);
      v20(v8, v1);
      if (v19 >= 1.0)
      {
        v20(v10, v1);
      }

      else
      {
        v21 = *v30;
        (*v30)(v33, v10, v1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BB5E59E0(0, *(v15 + 16) + 1, 1);
          v15 = v35;
        }

        v24 = *(v15 + 16);
        v23 = *(v15 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1BB5E59E0(v23 > 1, v24 + 1, 1);
          v15 = v35;
        }

        *(v15 + 16) = v24 + 1;
        v21((v15 + v16 + v24 * v17), v33, v1);
        v10 = v28;
        v8 = v29;
      }

      ++v14;
      result = v32;
      if (v34 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_13:

    v25 = v27[0];
    *(v27[0] + 24) = v15;

    v26 = *(v25 + 16);

    os_unfair_lock_unlock(v26 + 4);
  }

  return result;
}

void *DKThreadSafeBuffer.init(maxLenght:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C908);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v1[2] = v3;
  v1[3] = sub_1BB6BAAD4();
  v1[4] = a1;
  return v1;
}

uint64_t sub_1BB6610B0(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - v6;
  v8 = v2[2];

  os_unfair_lock_lock(v8 + 4);

  (*(v5 + 16))(v7, a1, v4);
  sub_1BB6BAF04();
  sub_1BB6BAED4();

  v9 = sub_1BB6BAEC4();

  if (v2[4] < v9)
  {
    swift_getWitnessTable();
    sub_1BB6BB034();
    (*(v5 + 8))(v7, v4);
  }

  v10 = v2[2];

  os_unfair_lock_unlock(v10 + 4);
}

uint64_t sub_1BB661258@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = sub_1BB6BB184();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = *(*(v4 - 8) + 56);
  v17 = a1;
  v10(a1, 1, 1, v4, v7);
  v11 = v2[2];

  os_unfair_lock_lock(v11 + 4);

  v12 = sub_1BB6BAEC4();

  if (v12 >= 1)
  {
    sub_1BB6BAF04();
    swift_getWitnessTable();
    sub_1BB6BB034();
    v13 = v17;
    (*(v6 + 8))(v17, v5);
    (v10)(v9, 0, 1, v4);
    (*(v6 + 32))(v13, v9, v5);
  }

  v14 = v2[2];

  os_unfair_lock_unlock(v14 + 4);
}

uint64_t _s23IntelligentTrackingCore12DKFPSTrackerCfd_0()
{

  return v0;
}

uint64_t sub_1BB661494()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1BB66168C()
{
  result = qword_1EBC5DC78;
  if (!qword_1EBC5DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DC78);
  }

  return result;
}

uint64_t DKSphericalMotionFilter.__allocating_init(currentTime:configuration:camera:)(uint64_t a1, void *a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1BB66327C(a1, a2, a3);

  return v6;
}

__n128 sub_1BB661788@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect + 32);
  result = *(v1 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect);
  v4 = *(v1 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_1BB6617A8(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect;
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_1BB661808(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_distance;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t DKSphericalMotionFilter.Measurement.deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DKSphericalMotionFilter.Measurement.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BB661A14(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

uint64_t sub_1BB661A54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for DKMotion3();
  MEMORY[0x1EEE9AC00]();
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB5A90D8(a1, v9, type metadata accessor for DKMotion3);
  return sub_1BB5A8610(v9, *a2 + *a5);
}

uint64_t DKSphericalMotionFilter.State.deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_lastUpdated;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BB5A9140(v0 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_motion, type metadata accessor for DKMotion3);
  sub_1BB5A9140(v0 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_camera, type metadata accessor for DKMotion3);
  return v0;
}

uint64_t DKSphericalMotionFilter.State.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_lastUpdated;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BB5A9140(v0 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_motion, type metadata accessor for DKMotion3);
  sub_1BB5A9140(v0 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_camera, type metadata accessor for DKMotion3);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB661CE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1BB6BA7F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00]();
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  return (*(v9 + 40))(*a2 + *a5, v11, v8);
}

uint64_t DKSphericalMotionFilter.init(currentTime:configuration:camera:)(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = sub_1BB66327C(a1, a2, a3);

  return v3;
}

BOOL sub_1BB661E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_lastState);
  if (!v9)
  {
    return 1;
  }

  v10 = *(v9 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_rect);
  v11 = *(v9 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_rect + 8);
  v12 = *(v9 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_rect + 16);
  v13 = *(v9 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_rect + 24);
  (*(v5 + 16))(v8, v9 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_lastUpdated, v4, v6);

  sub_1BB6BA744();
  v15 = v14;
  (*(v5 + 8))(v8, v4);
  v16 = sub_1BB59FCF8(v15 * *(*(v2 + 16) + 96), v10, v11, v12, v13);
  if (*(a2 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect + 32))
  {

    return 1;
  }

  v20 = CGRectIntersectsRect(*&v16, *(a2 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect));

  return v20;
}

uint64_t sub_1BB662018(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v42 - v5;
  v7 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BB6BA7F4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v11 + 16;
  v50 = *(v11 + 16);
  v51 = OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_time;
  v50(v14, a1 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_time, v10, v12);

  sub_1BB59911C(v14);

  v44 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_elevationFilter;

  sub_1BB59911C(v14);

  v45 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_distanceFilter;

  sub_1BB59911C(v14);

  sub_1BB6626AC(v14);
  v46 = v11;
  v17 = *(v11 + 8);
  v16 = v11 + 8;
  v48 = v17;
  v17(v14, v10);
  v18 = (a1 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect);
  if ((*(a1 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect + 32) & 1) == 0)
  {
    v20 = v18[2];
    v19 = v18[3];
    v22 = *v18;
    v21 = v18[1];
    v43 = v6;
    sub_1BB5A90D8(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_camera, v9, type metadata accessor for DKCamera);
    v23 = *(a1 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_distance);
    v53.origin.x = v22;
    v53.origin.y = v21;
    v53.size.width = v20;
    v53.size.height = v19;
    DKCamera.cameraToWorld(rect:distance:)(&v52, v53, *(&v23 - 1));
    x = v52.worldRect.origin.x;
    y = v52.worldRect.origin.y;
    width = v52.worldRect.size.width;
    height = v52.worldRect.size.height;
    distance = v52.distance;
    sub_1BB5A9140(v9, type metadata accessor for DKCamera);
    v29 = v50;
    v49 = a1;
    (v50)(v14, a1 + v51, v10);
    v47 = v15;
    type metadata accessor for DKConstantAccelerationFilter.Measurement(0);
    swift_allocObject();

    v30 = DKConstantAccelerationFilter.Measurement.init(time:)(v14);
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    MidX = CGRectGetMidX(v54);
    sub_1BB69DF38(0, MidX, 0.01);
    sub_1BB69EF7C(v30);

    v32 = v51;
    v29(v14, v49 + v51, v10);
    swift_allocObject();

    v33 = DKConstantAccelerationFilter.Measurement.init(time:)(v14);
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = height;
    MidY = CGRectGetMidY(v55);
    sub_1BB69DF38(0, MidY, 0.01);
    sub_1BB69EF7C(v33);

    v29(v14, v49 + v32, v10);
    a1 = v49;
    swift_allocObject();

    v35 = DKConstantAccelerationFilter.Measurement.init(time:)(v14);
    sub_1BB69DF38(0, distance, 0.1);
    sub_1BB69EF7C(v35);

    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    v36 = CGRectGetWidth(v56);
    v37 = v46;
    v38 = *(v46 + 56);
    v45 = v16;
    v39 = v43;
    v38(v43, 1, 1, v10);
    sub_1BB6ABB40(0, 1, v39, v36);

    sub_1BB5A1908(v39);

    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    v40 = CGRectGetHeight(v57);
    v38(v39, 1, 1, v10);
    sub_1BB6ABB40(0, 1, v39, v40);

    sub_1BB5A1908(v39);
    (*(v37 + 24))(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_lastUpdated, a1 + v51, v10);
  }

  (v50)(v14, a1 + v51, v10);
  sub_1BB6626AC(v14);
  return v48(v14, v10);
}

uint64_t sub_1BB662600(uint64_t a1)
{

  sub_1BB59911C(a1);

  sub_1BB59911C(a1);

  sub_1BB59911C(a1);

  return sub_1BB6626AC(a1);
}

uint64_t sub_1BB6626AC(uint64_t a1)
{
  v86 = a1;
  v96 = type metadata accessor for DKMotion3();
  MEMORY[0x1EEE9AC00](v96);
  v90 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v82 - v4;
  v95 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v95);
  v87 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v82 - v7;
  v8 = sub_1BB6BA7F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v82 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v82 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v82 - v18;
  *&v94 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_azimuthFilter;
  v97 = v1;
  v20 = *(v9 + 16);
  v20(&v82 - v18, *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_azimuthFilter) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastUpdateTime, v8, v17);

  sub_1BB6BA724();
  sub_1BB61D44C();
  v21 = sub_1BB6BABE4();

  v88 = v9;
  v22 = *(v9 + 8);
  v22(v15, v8);
  v22(v19, v8);
  if (v21 & 1) != 0 || (v85 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_elevationFilter, (v20)(v19, *(v97 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_elevationFilter) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastUpdateTime, v8), , sub_1BB6BA724(), v23 = sub_1BB6BABE4(), , v22(v15, v8), v22(v19, v8), (v23) || (v83 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_distanceFilter, v24 = *(v97 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_distanceFilter) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastUpdateTime, v84 = v20, (v20)(v19, v24, v8), , sub_1BB6BA724(), v25 = sub_1BB6BABE4(), , v22(v15, v8), v22(v19, v8), (v25))
  {
    v26 = 0;
LABEL_5:
    v27 = v97;
LABEL_6:
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_lastState) = v26;
  }

  v27 = v97;
  v29 = *(v97 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_rectWidthFilter);
  if (*(v29 + 33) != 1 || (*(v29 + 32) != 1 ? (v30 = *(v29 + 40)) : (v30 = atan2(*(v29 + 48), *(v29 + 56))), v31 = v84, v32 = *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_rectHeightFilter), *(v32 + 33) != 1))
  {
    v26 = 0;
    goto LABEL_6;
  }

  if (*(v32 + 32) == 1)
  {
    v33 = atan2(*(v32 + 48), *(v32 + 56));
  }

  else
  {
    v33 = *(v32 + 40);
  }

  v34 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x;
  v35 = *(*(v27 + v94) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
  if (*(v35 + 16) >= 1 && *(v35 + 24) >= 1)
  {
    v36 = v27 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_camera;
    v37 = *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_camera + *(v95 + 32) + *(v96 + 20));
    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = **(v35 + 32);
        ;
      }

        ;
      }

      v42 = *(*(v27 + v85) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
      if (*(v42 + 16) < 1 || *(v42 + 24) < 1)
      {
        goto LABEL_49;
      }

      if (v38 != 1)
      {
        v43 = **(v42 + 32);
          ;
        }

          ;
        }

        v45 = *(v27 + v83);
        v46 = *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
        if (*(v46 + 16) >= 1 && *(v46 + 24) >= 1)
        {
          sub_1BB5A90D8(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_camera, v91, type metadata accessor for DKCamera);
          v47 = *(v45 + v34);
          if (*(v47 + 16) > 0 && *(v47 + 24) >= 1)
          {
            v98.origin.x = v39 - v30 * 0.5;
            v98.origin.y = v43 - v33 * 0.5;
            v98.size.width = v30;
            v98.size.height = v33;
            v48 = v91;
            v99 = DKCamera.worldToCamera(rect:distance:clampToBorders:)(v98, **(v47 + 32), 1);
            x = v99.origin.x;
            y = v99.origin.y;
            width = v99.size.width;
            height = v99.size.height;
            sub_1BB5A9140(v48, type metadata accessor for DKCamera);
            v31(v93, v27 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_lastUpdated, v8);
            v31(v92, v86, v8);
            v53 = *(*(v27 + v94) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
            v54 = v53[2];
            if (v54 > 0 && v53[3] >= 1)
            {
              v55 = *(*(v27 + v85) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
              v56 = v55[2];
              if (v56 > 0 && v55[3] >= 1)
              {
                v91 = v36;
                v57 = *(*(v27 + v83) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
                v58 = v57[2];
                if (v58 > 0 && v57[3] >= 1)
                {
                  v59 = v53[4];
                  v60 = *v59;
                  v61 = v55[4];
                  v62 = *v61;
                  v63 = v57[4];
                  v64 = *v63;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCC0);
                  v65 = swift_allocObject();
                  v94 = xmmword_1BB6BC7F0;
                  *(v65 + 16) = xmmword_1BB6BC7F0;
                  *(v65 + 32) = v60;
                  *(v65 + 40) = v62;
                  *(v65 + 48) = v64;
                  if (v54 != 1 && v56 != 1 && v58 != 1)
                  {
                    v66 = v65;
                    v67 = v59[1];
                    v68 = v61[1];
                    v69 = v63[1];
                    v70 = swift_allocObject();
                    *(v70 + 16) = v94;
                    *(v70 + 32) = v67;
                    *(v70 + 40) = v68;
                    *(v70 + 48) = v69;
                    if (v54 > 2 && v56 > 2 && v58 > 2)
                    {
                      v71 = v70;
                      v72 = v59[2];
                      v73 = v61[2];
                      v74 = v63[2];
                      v75 = swift_allocObject();
                      *(v75 + 16) = v94;
                      *(v75 + 32) = v72;
                      *(v75 + 40) = v73;
                      *(v75 + 48) = v74;
                      v76 = v89;
                      v77 = *(v88 + 32);
                      v77(v89, v92, v8);
                      v78 = v96;
                      *(v76 + *(v96 + 20)) = v66;
                      *(v76 + *(v78 + 24)) = v71;
                      *(v76 + *(v78 + 28)) = v75;
                      v79 = v87;
                      sub_1BB5A90D8(v91, v87, type metadata accessor for DKCamera);
                      v80 = v90;
                      sub_1BB5DD278(v79 + *(v95 + 32), v90);
                      type metadata accessor for DKSphericalMotionFilter.State(0);
                      v26 = swift_allocObject();
                      v77((v26 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_lastUpdated), v93, v8);
                      sub_1BB5DD278(v76, v26 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_motion);
                      v81 = (v26 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_rect);
                      *v81 = x;
                      v81[1] = y;
                      v81[2] = width;
                      v81[3] = height;
                      sub_1BB5DD278(v80, v26 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_camera);
                      goto LABEL_5;
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

LABEL_49:
  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

uint64_t sub_1BB663038(uint64_t a1)
{

  sub_1BB59911C(a1);

  sub_1BB59911C(a1);

  sub_1BB59911C(a1);

  sub_1BB6626AC(a1);
}

uint64_t DKSphericalMotionFilter.deinit()
{

  sub_1BB5A9140(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_camera, type metadata accessor for DKCamera);

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_lastUpdated;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_logger;
  v4 = sub_1BB6BAA34();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t DKSphericalMotionFilter.__deallocating_deinit()
{
  DKSphericalMotionFilter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BB66327C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v57 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v54 - v8;
  v60 = &v54 - v8;
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_lastState) = 0;
  sub_1BB6BA724();
  sub_1BB6BAA24();
  *(v4 + 16) = a2;
  v56 = a3;
  sub_1BB5A90D8(a3, v4 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_camera, type metadata accessor for DKCamera);
  v10 = a2[14];
  type metadata accessor for DKConstantAccelerationFilter(0);
  *(swift_allocObject() + OBJC_IVAR____TtC23IntelligentTrackingCore28DKConstantAccelerationFilter_caConfiguration) = v10;
  swift_retain_n();

  DKKalmanFilter.init(configuration:stateSize:)(v10, 3);
  v61 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_azimuthFilter;
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_azimuthFilter) = v11;
  v12 = a2[15];
  *(swift_allocObject() + OBJC_IVAR____TtC23IntelligentTrackingCore28DKConstantAccelerationFilter_caConfiguration) = v12;
  v13 = swift_retain_n();
  DKKalmanFilter.init(configuration:stateSize:)(v13, 3);
  v59 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_elevationFilter;
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_elevationFilter) = v14;
  v15 = a2[16];
  *(swift_allocObject() + OBJC_IVAR____TtC23IntelligentTrackingCore28DKConstantAccelerationFilter_caConfiguration) = v15;
  v16 = swift_retain_n();
  DKKalmanFilter.init(configuration:stateSize:)(v16, 3);
  v58 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_distanceFilter;
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_distanceFilter) = v17;
  v18 = a2[11];
  v19 = sub_1BB6BA7F4();
  v55 = *(v19 - 8);
  v20 = *(v55 + 56);
  v20(v9, 1, 1, v19);
  type metadata accessor for DKSmoothingFilter();
  v21 = swift_allocObject();
  *(v21 + 33) = 0;
  *(v21 + 40) = 0;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0x3FF0000000000000;
  v22 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v20((v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v19);
  v23 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v24 = 0;
  *(v24 + 8) = 1;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v21 + 16) = v18;
  *(v21 + 24) = v18;
  *(v21 + 32) = 0;
  v25 = v21 + v22;
  v26 = v60;
  sub_1BB5BF3C4(v60, v25);
  *v23 = 0;
  *(v23 + 8) = 1;
  *v24 = 0;
  *(v24 + 8) = 1;
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_rectWidthFilter) = v21;
  v27 = a2[11];
  v28 = v26;
  v20(v26, 1, 1, v19);
  v29 = swift_allocObject();
  *(v29 + 33) = 0;
  *(v29 + 40) = 0;
  *(v29 + 48) = 0;
  *(v29 + 56) = 0x3FF0000000000000;
  v30 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v20((v29 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v19);
  v31 = v29 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = v29 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v32 = 0;
  *(v32 + 8) = 1;
  *(v29 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v29 + 16) = v27;
  *(v29 + 24) = v27;
  *(v29 + 32) = 0;
  sub_1BB5BF3C4(v28, v29 + v30);
  *v31 = 0;
  *(v31 + 8) = 1;
  *v32 = 0;
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_rectHeightFilter) = v29;
  v33 = *(v4 + v61);
  *(v32 + 8) = 1;
  v34 = *(v33 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_Q);
  if (*(v34 + 16) < 1)
  {
    goto LABEL_38;
  }

  if (*(v34 + 24) < 1)
  {
    goto LABEL_38;
  }

  **(v34 + 32) = 0x3FF0000000000000;
  v35 = *(v34 + 16);
  if (v35 <= 1 || *(v34 + 24) <= 1)
  {
    goto LABEL_38;
  }

  if (__OFADD__(v35, 1))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(*(v34 + 32) + 8 * (v35 + 1)) = 0x3FB999999999999ALL;
  v36 = *(v34 + 16);
  if (v36 < 3 || *(v34 + 24) <= 2)
  {
    goto LABEL_38;
  }

  if (v36 + 0x4000000000000000 < 0)
  {
    goto LABEL_30;
  }

  v37 = 2 * v36;
  v38 = __OFADD__(v37, 2);
  v39 = v37 + 2;
  if (v38)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(*(v34 + 32) + 8 * v39) = 0x3FF0000000000000;
  v40 = *(*(v4 + v59) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_Q);
  if (*(v40 + 16) < 1)
  {
    goto LABEL_38;
  }

  if (*(v40 + 24) < 1)
  {
    goto LABEL_38;
  }

  **(v40 + 32) = 0x3FF0000000000000;
  v41 = *(v40 + 16);
  if (v41 <= 1 || *(v40 + 24) <= 1)
  {
    goto LABEL_38;
  }

  v38 = __OFADD__(v41, 1);
  v42 = v41 + 1;
  if (v38)
  {
    goto LABEL_32;
  }

  *(*(v40 + 32) + 8 * v42) = 0x3FB999999999999ALL;
  v43 = *(v40 + 16);
  if (v43 < 3 || *(v40 + 24) <= 2)
  {
    goto LABEL_38;
  }

  if (v43 + 0x4000000000000000 < 0)
  {
    goto LABEL_33;
  }

  v44 = 2 * v43;
  v38 = __OFADD__(v44, 2);
  v45 = v44 + 2;
  if (v38)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(*(v40 + 32) + 8 * v45) = 0x3FF0000000000000;
  v46 = *(*(v4 + v58) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_Q);
  if (*(v46 + 16) < 1)
  {
    goto LABEL_38;
  }

  if (*(v46 + 24) < 1)
  {
    goto LABEL_38;
  }

  **(v46 + 32) = 0x3FB999999999999ALL;
  v47 = *(v46 + 16);
  if (v47 <= 1 || *(v46 + 24) <= 1)
  {
    goto LABEL_38;
  }

  v38 = __OFADD__(v47, 1);
  v48 = v47 + 1;
  if (v38)
  {
    goto LABEL_35;
  }

  *(*(v46 + 32) + 8 * v48) = 0x3FF0000000000000;
  v49 = *(v46 + 16);
  if (v49 < 3 || *(v46 + 24) <= 2)
  {
    goto LABEL_38;
  }

  if (v49 + 0x4000000000000000 >= 0)
  {
    v50 = 2 * v49;
    v38 = __OFADD__(v50, 2);
    v51 = v50 + 2;
    if (!v38)
    {
      *(*(v46 + 32) + 8 * v51) = 0x3FF0000000000000;
      v52 = v57;
      sub_1BB6626AC(v57);
      sub_1BB5A9140(v56, type metadata accessor for DKCamera);
      (*(v55 + 8))(v52, v19);
      return v4;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

uint64_t sub_1BB663990()
{
  result = type metadata accessor for DKCamera();
  if (v1 <= 0x3F)
  {
    result = sub_1BB6BA7F4();
    if (v2 <= 0x3F)
    {
      result = sub_1BB6BAA34();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1BB663C98()
{
  result = sub_1BB6BA7F4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of DKSphericalMotionFilter.Measurement.rect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 136);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t sub_1BB663EF4()
{
  result = sub_1BB6BA7F4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DKMotion3();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t DKAckermannMotionFilter.Measurement.deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DKAckermannMotionFilter.Measurement.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

IntelligentTrackingCore::DKAckermannMotionFilter::Index_optional __swiftcall DKAckermannMotionFilter.Index.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DKAckermannMotionFilter.Configuration.deinit()
{

  return v0;
}

uint64_t DKAckermannMotionFilter.Configuration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DKAckermannMotionFilter.__allocating_init(configuration:)(uint64_t a1)
{
  swift_allocObject();
  sub_1BB6648B0(a1);
  v3 = v2;

  return v3;
}

uint64_t DKAckermannMotionFilter.init(configuration:)(uint64_t a1)
{
  sub_1BB6648B0(a1);
  v2 = v1;

  return v2;
}

uint64_t sub_1BB664438(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v1 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastPredictionTime, v4, v6);
  sub_1BB6BA744();
  v10 = v9;
  (*(v5 + 8))(v8, v4);
  v11 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
  v12 = v11[2];
  if (v12 < 3)
  {
    goto LABEL_28;
  }

  if (v11[3] <= 0)
  {
    goto LABEL_28;
  }

  v13 = v11[4];
  v14 = __sincos_stret(*(v13 + 16));
  if (v12 <= 4)
  {
    goto LABEL_28;
  }

  v15 = *(v13 + 32);
  v16 = tan(v15);
  v17 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_F);
  v18 = v17[2];
  if (v18 < 1 || v17[3] <= 3)
  {
    goto LABEL_28;
  }

  v19 = 3 * v18;
  if ((v18 * 3) >> 64 != (3 * v18) >> 63)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = *(v13 + 24);
  v21 = v17[4];
  *(v21 + 24 * v18) = v10 * v14.__cosval;
  if (v18 == 1)
  {
    goto LABEL_28;
  }

  if (__OFADD__(v19, 1))
  {
    goto LABEL_22;
  }

  *(v21 + 8 * (v19 + 1)) = v10 * v14.__sinval;
  if (v18 <= 2)
  {
    goto LABEL_28;
  }

  if (__OFADD__(v19, 2))
  {
    goto LABEL_23;
  }

  v22 = v10 * v16;
  v23 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKAckermannMotionFilter_ackermannConfiguration);
  *(v21 + 8 * (v19 + 2)) = v10 * v16 / *(v23 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BE30);
  swift_allocObject();

  v25 = sub_1BB59F300(v24);

  v26 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_J;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_J) = v25;

  v27 = *(v2 + v26);
  v28 = v27[2];
  if (v28 < 1)
  {
    goto LABEL_28;
  }

  v29 = v27[3];
  if (v29 <= 3)
  {
    goto LABEL_28;
  }

  v30 = 3 * v28;
  if ((v28 * 3) >> 64 != (3 * v28) >> 63)
  {
    goto LABEL_24;
  }

  v31 = v27[4];
  *(v31 + 24 * v28) = v10 * v14.__cosval;
  *(v31 + 16 * v28) = v10 * -(v14.__sinval * v20);
  if (v28 == 1)
  {
    goto LABEL_28;
  }

  if (__OFADD__(v30, 1))
  {
    goto LABEL_25;
  }

  *(v31 + 8 * (v30 + 1)) = v10 * v14.__sinval;
  *(v31 + 16 * v28 + 8) = v10 * (v14.__cosval * v20);
  if (v28 <= 2)
  {
    goto LABEL_28;
  }

  v32 = __OFADD__(v30, 2);
  v33 = v30 + 2;
  if (v32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v31 + 8 * v33) = v22 / *(v23 + 72);
  if (v29 != 4)
  {
    if (!(v28 >> 61))
    {
      v34 = cos(v15);
      *(v31 + 32 * v28 + 16) = v10 * v20 / (v34 * v34);
      return sub_1BB69E74C(a1);
    }

    goto LABEL_27;
  }

LABEL_28:
  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

uint64_t DKAckermannMotionFilter.deinit()
{
  v0 = DKKalmanFilter.deinit();

  return v0;
}

uint64_t DKAckermannMotionFilter.__deallocating_deinit()
{
  DKKalmanFilter.deinit();

  return swift_deallocClassInstance();
}

void sub_1BB6648B0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKAckermannMotionFilter_ackermannConfiguration) = a1;
  v2 = swift_retain_n();
  DKKalmanFilter.init(configuration:stateSize:)(v2, 5);
  v4 = *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_Q);
  v5 = v4[2];
  if (v5 < 1)
  {
    goto LABEL_37;
  }

  v6 = v4[3];
  if (v6 <= 0)
  {
    goto LABEL_37;
  }

  v7 = v4[4];
  *v7 = 0x3F747AE147AE147BLL;
  if (v5 == 1 || v6 == 1)
  {
    goto LABEL_37;
  }

  if (__OFADD__(v5, 1))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7[v5 + 1] = 0x3F747AE147AE147BLL;
  if (v5 < 3 || v6 <= 2)
  {
    goto LABEL_37;
  }

  if ((v5 + 0x4000000000000000) < 0)
  {
    goto LABEL_31;
  }

  if (__OFADD__(2 * v5, 2))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v7[2 * v5 + 2] = 0x3F789374BC6A7EFALL;
  if (v5 < 4 || v6 <= 3)
  {
    goto LABEL_37;
  }

  v11 = 3 * v5;
  if ((v5 * 3) >> 64 != (3 * v5) >> 63)
  {
    goto LABEL_33;
  }

  v12 = __OFADD__(v11, 3);
  v13 = v11 + 3;
  if (v12)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v7[v13] = 0x3F647AE147AE147BLL;
  if (v5 < 5 || v6 <= 4)
  {
    goto LABEL_37;
  }

  if (!(v5 >> 61))
  {
    v15 = 4 * v5;
    v12 = __OFADD__(v15, 4);
    v16 = v15 + 4;
    if (!v12)
    {
      v7[v16] = 0x3F847AE147AE147BLL;
      return;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_1BB6BB524();
  __break(1u);
}

unint64_t sub_1BB664A44()
{
  result = qword_1EBC5DCB0;
  if (!qword_1EBC5DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DCB0);
  }

  return result;
}

unint64_t sub_1BB664A9C()
{
  result = qword_1EBC5DCB8;
  if (!qword_1EBC5DCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5DCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DCB8);
  }

  return result;
}

uint64_t DKIdentityFilter.IdentityProbability.probability.setter(double a1)
{
  result = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t DKIdentityFilter.IdentityProbability.confidence.setter(double a1)
{
  result = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t DKIdentityFilter.IdentityProbability.init(identity:probability:confidence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_1BB6BA844();
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  result = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  *(a2 + *(result + 20)) = a3;
  *(a2 + *(result + 24)) = a4;
  return result;
}

BOOL static DKIdentityFilter.IdentityProbability.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1BB6BA814() & 1) != 0 && (v4 = type metadata accessor for DKIdentityFilter.IdentityProbability(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BB664EF0()
{
  v1 = 0x6C696261626F7270;
  if (*v0 != 1)
  {
    v1 = 0x6E656469666E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x797469746E656469;
  }
}

uint64_t sub_1BB664F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB66F174(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB664F80(uint64_t a1)
{
  v2 = sub_1BB6651E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB664FBC(uint64_t a1)
{
  v2 = sub_1BB6651E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKIdentityFilter.IdentityProbability.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DCE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB6651E0();
  sub_1BB6BB984();
  v8[15] = 0;
  sub_1BB6BA844();
  sub_1BB6652FC(&qword_1EBC5CE38, MEMORY[0x1E69695A8]);
  sub_1BB6BB744();
  if (!v1)
  {
    type metadata accessor for DKIdentityFilter.IdentityProbability(0);
    v8[14] = 1;
    sub_1BB6BB724();
    v8[13] = 2;
    sub_1BB6BB724();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BB6651E0()
{
  result = qword_1EBC5DCF0;
  if (!qword_1EBC5DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DCF0);
  }

  return result;
}

uint64_t DKIdentityFilter.IdentityProbability.hash(into:)()
{
  sub_1BB6BA844();
  sub_1BB6652FC(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
  sub_1BB6BAB84();
  v1 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  v2 = *(v0 + *(v1 + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1BFB117D0](*&v2);
  v3 = *(v0 + *(v1 + 24));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x1BFB117D0](*&v3);
}

uint64_t sub_1BB6652FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DKIdentityFilter.IdentityProbability.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_1BB6BA844();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DCF8);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB6651E0();
  sub_1BB6BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v22;
  v28 = 0;
  sub_1BB6652FC(&qword_1EBC5CE68, MEMORY[0x1E69695A8]);
  v14 = v24;
  sub_1BB6BB684();
  v15 = *(v13 + 32);
  v16 = v25;
  v25 = v4;
  v15(v12, v16, v4);
  v27 = 1;
  sub_1BB6BB664();
  *(v12 + *(v9 + 20)) = v17;
  v26 = 2;
  sub_1BB6BB664();
  v19 = v18;
  (*(v23 + 8))(v8, v14);
  *(v12 + *(v9 + 24)) = v19;
  sub_1BB66EEF0(v12, v21, type metadata accessor for DKIdentityFilter.IdentityProbability);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BB66EF58(v12, type metadata accessor for DKIdentityFilter.IdentityProbability);
}

uint64_t DKIdentityFilter.IdentityProbabilities.enrolledFaceProbabilities.getter()
{
  type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
}

uint64_t DKIdentityFilter.IdentityProbabilities.enrolledFaceProbabilities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DKIdentityFilter.IdentityProbabilities(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DKIdentityFilter.IdentityProbabilities.dynamicFaceProbabilities.getter()
{
  type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
}

uint64_t DKIdentityFilter.IdentityProbabilities.dynamicFaceProbabilities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DKIdentityFilter.IdentityProbabilities(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DKIdentityFilter.IdentityProbabilities.dynamicBodyProbabilities.getter()
{
  type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
}

uint64_t DKIdentityFilter.IdentityProbabilities.dynamicBodyProbabilities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DKIdentityFilter.IdentityProbabilities(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DKIdentityFilter.IdentityProbabilities.init(time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  v6 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  v7 = MEMORY[0x1E69E7CC0];
  *(a2 + v6[5]) = MEMORY[0x1E69E7CC0];
  *(a2 + v6[6]) = v7;
  result = (*(v5 + 8))(a1, v4);
  *(a2 + v6[7]) = v7;
  return result;
}

int *DKIdentityFilter.IdentityProbabilities.init(time:enrolledFaceProbabilities:dynamicFaceProbabilities:dynamicBodyProbabilities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1BB6BA7F4();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

unint64_t sub_1BB665BB8()
{
  v1 = 1701669236;
  if (*v0)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1BB665C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB66F298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB665C5C(uint64_t a1)
{
  v2 = sub_1BB66EE00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB665C98(uint64_t a1)
{
  v2 = sub_1BB66EE00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKIdentityFilter.IdentityProbabilities.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB66EE00();
  sub_1BB6BB984();
  LOBYTE(v13) = 0;
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C548, MEMORY[0x1E6969530]);
  sub_1BB6BB744();
  if (!v2)
  {
    v9 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
    v13 = *(v3 + v9[5]);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD10);
    sub_1BB66EE54(&qword_1EBC5DD18, &qword_1EBC5DD20);
    sub_1BB6BB744();
    v13 = *(v3 + v9[6]);
    v12 = 2;
    sub_1BB6BB744();
    v13 = *(v3 + v9[7]);
    v12 = 3;
    sub_1BB6BB744();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DKIdentityFilter.IdentityProbabilities.hash(into:)(uint64_t a1)
{
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530]);
  sub_1BB6BAB84();
  v3 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  sub_1BB66E784(a1, *(v1 + v3[5]));
  sub_1BB66E784(a1, *(v1 + v3[6]));
  v4 = *(v1 + v3[7]);

  return sub_1BB66E784(a1, v4);
}

uint64_t DKIdentityFilter.IdentityProbabilities.hashValue.getter()
{
  sub_1BB6BB924();
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530]);
  sub_1BB6BAB84();
  v1 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  sub_1BB66E784(v3, *(v0 + v1[5]));
  sub_1BB66E784(v3, *(v0 + v1[6]));
  sub_1BB66E784(v3, *(v0 + v1[7]));
  return sub_1BB6BB964();
}

uint64_t DKIdentityFilter.IdentityProbabilities.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_1BB6BA7F4();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD28);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB66EE00();
  v21 = v8;
  sub_1BB6BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v17;
  LOBYTE(v23) = 0;
  sub_1BB6652FC(&qword_1EBC5C658, MEMORY[0x1E6969530]);
  v13 = v18;
  sub_1BB6BB684();
  (*(v12 + 32))(v11, v13, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD10);
  v22 = 1;
  v18 = sub_1BB66EE54(&qword_1EBC5DD30, &qword_1EBC5DD38);
  sub_1BB6BB684();
  *&v11[v9[5]] = v23;
  v22 = 2;
  v15 = 0;
  sub_1BB6BB684();
  *&v11[v9[6]] = v23;
  v22 = 3;
  sub_1BB6BB684();
  (*(v19 + 8))(v21, v20);
  *&v11[v9[7]] = v23;
  sub_1BB66EEF0(v11, v16, type metadata accessor for DKIdentityFilter.IdentityProbabilities);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BB66EF58(v11, type metadata accessor for DKIdentityFilter.IdentityProbabilities);
}

uint64_t sub_1BB6665D4(int *a1)
{
  sub_1BB6BB924();
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530]);
  sub_1BB6BAB84();
  sub_1BB66E784(v4, *(v1 + a1[5]));
  sub_1BB66E784(v4, *(v1 + a1[6]));
  sub_1BB66E784(v4, *(v1 + a1[7]));
  return sub_1BB6BB964();
}

uint64_t sub_1BB666698(uint64_t a1, int *a2)
{
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530]);
  sub_1BB6BAB84();
  sub_1BB66E784(a1, *(v2 + a2[5]));
  sub_1BB66E784(a1, *(v2 + a2[6]));
  v5 = *(v2 + a2[7]);

  return sub_1BB66E784(a1, v5);
}

uint64_t sub_1BB666750(uint64_t a1, int *a2)
{
  sub_1BB6BB924();
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530]);
  sub_1BB6BAB84();
  sub_1BB66E784(v5, *(v2 + a2[5]));
  sub_1BB66E784(v5, *(v2 + a2[6]));
  sub_1BB66E784(v5, *(v2 + a2[7]));
  return sub_1BB6BB964();
}

uint64_t sub_1BB66682C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_1BB6668B4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t DKIdentityFilter.TrackerConfidence.confidence.setter(double a1)
{
  result = type metadata accessor for DKIdentityFilter.TrackerConfidence(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t DKIdentityFilter.TrackerConfidence.init(time:trackConfidence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1BB6BA7F4();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for DKIdentityFilter.TrackerConfidence(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

BOOL static DKIdentityFilter.TrackerConfidence.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1BB6BA7C4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DKIdentityFilter.TrackerConfidence(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_1BB666AA8()
{
  if (*v0)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 1701669236;
  }
}

uint64_t sub_1BB666AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v5 || (sub_1BB6BB7E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BB6BB7E4();

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

uint64_t sub_1BB666BC4(uint64_t a1)
{
  v2 = sub_1BB66EFD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB666C00(uint64_t a1)
{
  v2 = sub_1BB66EFD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKIdentityFilter.TrackerConfidence.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD40);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB66EFD8();
  sub_1BB6BB984();
  v8[15] = 0;
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C548, MEMORY[0x1E6969530]);
  sub_1BB6BB744();
  if (!v1)
  {
    type metadata accessor for DKIdentityFilter.TrackerConfidence(0);
    v8[14] = 1;
    sub_1BB6BB724();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DKIdentityFilter.TrackerConfidence.hash(into:)()
{
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530]);
  sub_1BB6BAB84();
  v1 = *(v0 + *(type metadata accessor for DKIdentityFilter.TrackerConfidence(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1BFB117D0](*&v1);
}

uint64_t DKIdentityFilter.TrackerConfidence.hashValue.getter()
{
  sub_1BB6BB924();
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530]);
  sub_1BB6BAB84();
  v1 = *(v0 + *(type metadata accessor for DKIdentityFilter.TrackerConfidence(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1BFB117D0](*&v1);
  return sub_1BB6BB964();
}

uint64_t DKIdentityFilter.TrackerConfidence.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1BB6BA7F4();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD50);
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v20 - v7;
  v9 = type metadata accessor for DKIdentityFilter.TrackerConfidence(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB66EFD8();
  sub_1BB6BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v11;
  v12 = v23;
  v13 = v24;
  v28 = 0;
  sub_1BB6652FC(&qword_1EBC5C658, MEMORY[0x1E6969530]);
  v14 = v25;
  sub_1BB6BB684();
  (*(v13 + 32))(v21, v6, v14);
  v27 = 1;
  sub_1BB6BB664();
  v16 = v15;
  (*(v12 + 8))(v8, v26);
  v18 = v21;
  v17 = v22;
  *&v21[*(v9 + 20)] = v16;
  sub_1BB66EEF0(v18, v17, type metadata accessor for DKIdentityFilter.TrackerConfidence);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BB66EF58(v18, type metadata accessor for DKIdentityFilter.TrackerConfidence);
}

uint64_t sub_1BB6672C4(uint64_t a1, uint64_t a2)
{
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530]);
  sub_1BB6BAB84();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1BFB117D0](*&v4);
}

uint64_t sub_1BB667360(uint64_t a1, uint64_t a2)
{
  sub_1BB6BB924();
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530]);
  sub_1BB6BAB84();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1BFB117D0](*&v4);
  return sub_1BB6BB964();
}

uint64_t DKIdentityFilter.IdentityState.probabilities.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DKIdentityFilter.IdentityState.identity.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DKIdentityFilter.IdentityState(0) + 20);

  return sub_1BB66F04C(a1, v3);
}

uint64_t DKIdentityFilter.IdentityState.confidence.setter(double a1)
{
  result = type metadata accessor for DKIdentityFilter.IdentityState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t DKIdentityFilter.IdentityState.identityProbabilities.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DKIdentityFilter.IdentityState(0) + 28);

  return sub_1BB66F0BC(a1, v3);
}

uint64_t DKIdentityFilter.IdentityState.lastUpdateTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DKIdentityFilter.IdentityState(0) + 32);
  v4 = sub_1BB6BA7F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DKIdentityFilter.IdentityState.lastUpdateTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DKIdentityFilter.IdentityState(0) + 32);
  v4 = sub_1BB6BA7F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DKIdentityFilter.IdentityState.updateNeeded.setter(char a1)
{
  result = type metadata accessor for DKIdentityFilter.IdentityState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

unint64_t sub_1BB6678E0()
{
  v1 = *v0;
  v2 = 0x6C696261626F7270;
  v3 = 0xD000000000000015;
  v4 = 0x616470557473616CLL;
  if (v1 != 4)
  {
    v4 = 0x654E657461647075;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x797469746E656469;
  if (v1 != 1)
  {
    v5 = 0x6E656469666E6F63;
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

uint64_t sub_1BB6679C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB66F40C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB6679F8(uint64_t a1)
{
  v2 = sub_1BB66F120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB667A34(uint64_t a1)
{
  v2 = sub_1BB66F120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKIdentityFilter.IdentityState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB66F120();
  sub_1BB6BB984();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD10);
  sub_1BB66EE54(&qword_1EBC5DD18, &qword_1EBC5DD20);
  sub_1BB6BB744();
  if (!v2)
  {
    type metadata accessor for DKIdentityFilter.IdentityState(0);
    v10[6] = 1;
    type metadata accessor for DKIdentityFilter.IdentityProbability(0);
    sub_1BB6652FC(&qword_1EBC5DD20, type metadata accessor for DKIdentityFilter.IdentityProbability);
    sub_1BB6BB704();
    v10[5] = 2;
    sub_1BB6BB724();
    v10[4] = 3;
    type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
    sub_1BB6652FC(&qword_1EBC5CE58, type metadata accessor for DKIdentityFilter.IdentityProbabilities);
    sub_1BB6BB744();
    v10[3] = 4;
    sub_1BB6BA7F4();
    sub_1BB6652FC(&qword_1EBC5C548, MEMORY[0x1E6969530]);
    sub_1BB6BB744();
    v10[2] = 5;
    sub_1BB6BB714();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DKIdentityFilter.IdentityState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C428);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  sub_1BB66E784(a1, *v2);
  v11 = type metadata accessor for DKIdentityFilter.IdentityState(0);
  sub_1BB5982A0(v2 + v11[5], v10, &qword_1EBC5C428);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1BB6BB944();
  }

  else
  {
    sub_1BB66F778(v10, v7, type metadata accessor for DKIdentityFilter.IdentityProbability);
    sub_1BB6BB944();
    DKIdentityFilter.IdentityProbability.hash(into:)();
    sub_1BB66EF58(v7, type metadata accessor for DKIdentityFilter.IdentityProbability);
  }

  v12 = *(v2 + v11[6]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x1BFB117D0](*&v12);
  v13 = v2 + v11[7];
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530]);
  sub_1BB6BAB84();
  v14 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  sub_1BB66E784(a1, *&v13[v14[5]]);
  sub_1BB66E784(a1, *&v13[v14[6]]);
  sub_1BB66E784(a1, *&v13[v14[7]]);
  sub_1BB6BAB84();
  return sub_1BB6BB944();
}

uint64_t sub_1BB668094(void (*a1)(_BYTE *))
{
  sub_1BB6BB924();
  a1(v3);
  return sub_1BB6BB964();
}

uint64_t DKIdentityFilter.IdentityState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v39 = a2;
  v2 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C428);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD68);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v36 - v7;
  v8 = sub_1BB6BA7F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for DKIdentityFilter.IdentityState(0);
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E7CC0];
  *v17 = MEMORY[0x1E69E7CC0];
  v19 = v15[7];
  v20 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  v21 = *(*(v20 - 8) + 56);
  v43 = v19;
  v21(&v17[v19], 1, 1, v20);
  v42 = v15[8];
  *&v17[v42] = 0;
  v22 = &v17[v15[9]];
  sub_1BB6BA724();
  (*(v9 + 16))(v22, v13, v8);
  *(v22 + v2[5]) = v18;
  *(v22 + v2[6]) = v18;
  v40 = v9;
  (*(v9 + 8))(v13, v8);
  v46 = v2;
  *(v22 + v2[7]) = v18;
  v23 = v15[10];
  sub_1BB6BA724();
  v24 = v15[11];
  v50 = v17;
  v17[v24] = 1;
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  sub_1BB66F120();
  v25 = v49;
  sub_1BB6BB974();
  if (v25)
  {
    v26 = v50;
  }

  else
  {
    v49 = v22;
    v37 = v24;
    v38 = v23;
    v28 = v44;
    v27 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD10);
    v58 = 0;
    sub_1BB66EE54(&qword_1EBC5DD30, &qword_1EBC5DD38);
    v29 = v51;
    sub_1BB6BB684();
    v26 = v50;
    *v50 = v59;
    v57 = 1;
    sub_1BB6652FC(&qword_1EBC5DD38, type metadata accessor for DKIdentityFilter.IdentityProbability);
    sub_1BB6BB644();
    sub_1BB66F04C(v28, v26 + v43);
    v56 = 2;
    sub_1BB6BB664();
    v30 = v47;
    *(v26 + v42) = v31;
    v55 = 3;
    sub_1BB6652FC(&qword_1EBC5CE80, type metadata accessor for DKIdentityFilter.IdentityProbabilities);
    sub_1BB6BB684();
    sub_1BB66F0BC(v27, v49);
    v54 = 4;
    sub_1BB6652FC(&qword_1EBC5C658, MEMORY[0x1E6969530]);
    v32 = v41;
    sub_1BB6BB684();
    (*(v40 + 40))(v26 + v38, v32, v8);
    v53 = 5;
    v34 = v29;
    v35 = v48;
    LOBYTE(v29) = sub_1BB6BB654();
    (*(v30 + 8))(v34, v35);
    *(v26 + v37) = v29 & 1;
    sub_1BB66EEF0(v26, v39, type metadata accessor for DKIdentityFilter.IdentityState);
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  return sub_1BB66EF58(v26, type metadata accessor for DKIdentityFilter.IdentityState);
}

uint64_t sub_1BB6687F8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1BB6BB924();
  a3(v5);
  return sub_1BB6BB964();
}

uint64_t sub_1BB66885C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1BB6BB924();
  a4(v6);
  return sub_1BB6BB964();
}

uint64_t sub_1BB6688D0(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t DKIdentityFilter.Configuration.__allocating_init()()
{
  v0 = swift_allocObject();
  DKIdentityFilter.Configuration.init()();
  return v0;
}

uint64_t DKIdentityFilter.Configuration.init()()
{
  *(v0 + 16) = xmmword_1BB6C5F80;
  *(v0 + 32) = xmmword_1BB6BF700;
  *(v0 + 48) = xmmword_1BB6BF700;
  *(v0 + 64) = xmmword_1BB6C5F90;
  *(v0 + 80) = xmmword_1BB6C5FA0;
  *(v0 + 96) = xmmword_1BB6C5FB0;
  *(v0 + 136) = xmmword_1BB6C5FC0;
  *(v0 + 152) = xmmword_1BB6C5FD0;
  *(v0 + 168) = xmmword_1BB6C5FE0;
  *(v0 + 184) = 0x3FEF5C28F5C28F5CLL;
  type metadata accessor for DKIdentityEMAFilter.Configuration();
  swift_allocObject();
  DKIdentityEMAFilter.Configuration.init()();
  *(v0 + 112) = v1;
  swift_allocObject();
  DKIdentityEMAFilter.Configuration.init()();
  *(v0 + 120) = v2;
  swift_allocObject();
  DKIdentityEMAFilter.Configuration.init()();
  *(v0 + 128) = v3;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;
  *(v0 + 208) = 2;
  __asm { FMOV            V0.2D, #5.0 }

  *(v0 + 216) = _Q0;
  *(v0 + 232) = xmmword_1BB6C5FF0;
  *(v0 + 248) = xmmword_1BB6BE580;
  *(v0 + 264) = 0x405E000000000000;
  sub_1BB668BB0();
  return v0;
}

uint64_t sub_1BB668BB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D1B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB6C6000;
  v2 = v0[14];
  *(inited + 32) = v2;
  *(inited + 40) = v0[15];
  *(inited + 48) = v0[16];
  v3 = inited & 0xC000000000000001;

  if ((inited & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1BFB111F0](0, inited);
  }

  else
  {
  }

  v2[7] = v0[3];
  v2[8] = v0[4];
  v2[9] = v0[5];
  v2[10] = v0[6];
  v2[3] = v0[10];
  v2[4] = v0[11];
  v2[5] = v0[12];

  if (v3)
  {
    v5 = MEMORY[0x1BFB111F0](1, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  v5[7] = v0[3];
  v5[8] = v0[4];
  v5[9] = v0[5];
  v5[10] = v0[6];
  v5[3] = v0[10];
  v5[4] = v0[11];
  v5[5] = v0[12];

  if (v3)
  {
    v6 = MEMORY[0x1BFB111F0](2, inited);
LABEL_11:

    v6[7] = v0[3];
    v6[8] = v0[4];
    v6[9] = v0[5];
    v6[10] = v0[6];
    v6[3] = v0[10];
    v6[4] = v0[11];
    v6[5] = v0[12];
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v6 = *(inited + 48);

    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t DKIdentityFilter.Configuration.__allocating_init(configuration:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1BB66F62C(a1);

  return v2;
}

uint64_t DKIdentityFilter.Configuration.init(configuration:)(uint64_t a1)
{
  v1 = sub_1BB66F62C(a1);

  return v1;
}

uint64_t DKIdentityFilter.Configuration.deinit()
{

  return v0;
}

uint64_t DKIdentityFilter.Configuration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DKIdentityFilter.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DKIdentityFilter.init(configuration:)(a1);
  return v2;
}

void *DKIdentityFilter.init(configuration:)(uint64_t a1)
{
  v19 = a1;
  v2 = sub_1BB6BA7F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C428);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = MEMORY[0x1E69E7CC0];
  v1[3] = sub_1BB5B0A1C(MEMORY[0x1E69E7CC0]);
  v1[4] = sub_1BB5B0A1C(v13);
  v1[5] = sub_1BB5B0A1C(v13);
  v14 = (v1 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_state);
  v15 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  sub_1BB6BA724();
  (*(v3 + 16))(v9, v5, v2);
  *&v9[v7[7]] = v13;
  *&v9[v7[8]] = v13;
  (*(v3 + 8))(v5, v2);
  *&v9[v7[9]] = v13;
  sub_1BB6BA724();
  *v14 = v13;
  v16 = type metadata accessor for DKIdentityFilter.IdentityState(0);
  sub_1BB60DF90(v12, v14 + v16[5], &qword_1EBC5C428);
  *(v14 + v16[6]) = 0;
  sub_1BB66F778(v9, v14 + v16[7], type metadata accessor for DKIdentityFilter.IdentityProbabilities);
  (*(v3 + 32))(v14 + v16[8], v5, v2);
  *(v14 + v16[9]) = 1;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_isUpdating) = 1;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_currentWindowSize) = 0;
  sub_1BB6BA724();
  v1[2] = v19;
  return v1;
}

void sub_1BB6691B4(uint64_t a1, double a2)
{
  v5 = sub_1BB6BA7F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16);
  v11 = *(v9 + 240);
  v10 = *(v9 + 248);
  v12.n128_u64[0] = *(v9 + 224);
  if (v11 < v10)
  {
    v13 = *(v9 + 256);
    v14 = v11 <= a2;
    v15 = v12.n128_f64[0] + (a2 - v11) / (v10 - v11) * (*(v9 + 232) - v12.n128_f64[0]);
    if (v14)
    {
      v12.n128_f64[0] = v15;
    }

    if (v10 >= a2)
    {
      v16 = v12.n128_f64[0];
    }

    else
    {
      v16 = *(v9 + 264);
    }

    v17 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_lastWindowSizeUpdateTime;
    (*(v6 + 16))(v8, v2 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_lastWindowSizeUpdateTime, v5, v12);
    sub_1BB6BA744();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    (*(v6 + 24))(v2 + v17, a1, v5);
    v20 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_currentWindowSize);
    if (v20 >= v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = v13 * v19 + v20;
    }

    *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_currentWindowSize) = v21;
    v28 = 14;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1BB6BB2F4();
    MEMORY[0x1BFB10B60](0xD000000000000017, 0x80000001BB6CE4D0);
    sub_1BB6BAFB4();
    MEMORY[0x1BFB10B60](0xD000000000000016, 0x80000001BB6CE4F0);
    sub_1BB6BAFB4();
    v22 = v26;
    v23 = v27;
    v24 = sub_1BB6BB064();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v28, v22, v23, v24);
  }
}

uint64_t sub_1BB669438(uint64_t a1)
{
  v2 = v1;
  v192 = sub_1BB6BA7F4();
  v4 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v180 = &v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_1BB6BA844();
  v6 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v185 = &v172 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v172 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v172 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v177 = &v172 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v172 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v187 = (&v172 - v23);
  v24 = type metadata accessor for DKIdentityFilter.TrackerConfidence(0);
  v25 = *(a1 + *(v24 + 20));
  v193 = a1;
  sub_1BB6691B4(a1, v25);
  v27 = v26;
  v28 = v1[2];
  v29 = *(v28 + 216);
  v186 = v6;
  v176 = v10;
  if (v27 != v29)
  {
    v190 = v24;
    v191 = v4;
    *(v28 + 216) = v27;
    v30 = v1[3];
    v31 = v2[4];
    v198[5] = v30;
    v199 = v31;
    v200 = v2[5];
    swift_getKeyPath();
    v195 = MEMORY[0x1E69E7CC0];

    v197 = v30;

    swift_getAtKeyPath();

    sub_1BB5C8C18(v198[0]);
    v197 = v199;

    swift_getAtKeyPath();

    sub_1BB5C8C18(v198[0]);
    v197 = v200;

    swift_getAtKeyPath();

    sub_1BB5C8C18(v198[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD78);
    swift_arrayDestroy();

    v33 = v195;
    if (v195 >> 62)
    {
      result = sub_1BB6BB564();
      v34 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v34 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
LABEL_4:
        if (v34 < 1)
        {
          goto LABEL_118;
        }

        v35 = 0;
        do
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            v36 = MEMORY[0x1BFB111F0](v35, v33);
          }

          else
          {
            v36 = *(v33 + 8 * v35 + 32);
          }

          ++v35;
          v37 = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration);

          *(v37 + 96) = v27;
          *(v37 + 104) = 0;
        }

        while (v34 != v35);
      }
    }

    LOBYTE(v198[0]) = 14;
    v195 = 0;
    v196 = 0xE000000000000000;
    sub_1BB6BB2F4();
    MEMORY[0x1BFB10B60](0xD000000000000017, 0x80000001BB6CE510);
    sub_1BB6BAFB4();
    MEMORY[0x1BFB10B60](0xD000000000000016, 0x80000001BB6CE4F0);
    sub_1BB6BB4B4();
    v38 = v195;
    v39 = v196;
    v40 = sub_1BB6BB064();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(v198, v38, v39, v40);

    v6 = v186;
    v4 = v191;
  }

  v174 = v16;
  v181 = v13;
  v41 = v2[3];
  v42 = *(v41 + 64);
  v175 = (v41 + 64);
  v43 = 1 << *(v41 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v42;
  v191 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_isUpdating;
  v46 = (v43 + 63) >> 6;
  v184 = v6 + 16;
  v183 = v6 + 32;
  v179 = (v4 + 16);
  v178 = (v4 + 8);
  v190 = (v4 + 24);
  v189 = (v6 + 8);
  v173 = v41;

  v47 = 0;
  v188 = v2;
  v48 = v21;
  v182 = v21;
  v49 = v187;
  while (v45)
  {
    v50 = v47;
LABEL_26:
    v53 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    v54 = v53 | (v50 << 6);
    v55 = v173;
    v56 = v186;
    (*(v186 + 16))(v185, *(v173 + 48) + *(v186 + 72) * v54, v194);
    v57 = *(*(v55 + 56) + 8 * v54);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD80);
    v59 = *(v58 + 48);
    v60 = v182;
    (*(v56 + 32))();
    *(v60 + v59) = v57;
    (*(*(v58 - 8) + 56))(v60, 0, 1, v58);

    v61 = v188;
    v49 = v187;
LABEL_27:
    v48 = v60;
    sub_1BB60DF90(v60, v49, &qword_1EBC5DD70);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD80);
    v63 = *(v62 - 8);
    v64 = *(v63 + 48);
    if (v64(v49, 1, v62) == 1)
    {
      v187 = v64;

      v83 = v61[4];
      v84 = (v83 + 64);
      v85 = 1 << *(v83 + 32);
      v86 = -1;
      if (v85 < 64)
      {
        v86 = ~(-1 << v85);
      }

      v87 = v86 & *(v83 + 64);
      v88 = (v85 + 63) >> 6;
      v182 = (v63 + 56);
      v173 = v83;

      v89 = 0;
      v90 = v177;
      v175 = v84;
      while (v87)
      {
        v91 = v89;
LABEL_60:
        v94 = __clz(__rbit64(v87));
        v87 &= v87 - 1;
        v95 = v94 | (v91 << 6);
        v96 = v173;
        v97 = v186;
        v98 = v185;
        v99 = v194;
        (*(v186 + 16))(v185, *(v173 + 48) + *(v186 + 72) * v95, v194);
        v100 = *(*(v96 + 56) + 8 * v95);
        v101 = *(v62 + 48);
        v102 = *(v97 + 32);
        v103 = v174;
        v102(v174, v98, v99);
        *(v103 + v101) = v100;
        v104 = *v182;
        (*v182)(v103, 0, 1, v62);

        v90 = v177;
LABEL_61:
        sub_1BB60DF90(v103, v90, &qword_1EBC5DD70);
        if (v187(v90, 1, v62) == 1)
        {
          v175 = v104;

          v122 = v188[5];
          v123 = *(v122 + 8);
          v177 = v122 + 64;
          v124 = 1 << v122[32];
          v125 = -1;
          if (v124 < 64)
          {
            v125 = ~(-1 << v124);
          }

          v126 = v125 & v123;
          v127 = (v124 + 63) >> 6;
          v174 = v122;

          v128 = 0;
          v129 = v176;
          v130 = v181;
          while (1)
          {
            v131 = v187;
            if (!v126)
            {
              break;
            }

            v132 = v128;
LABEL_94:
            v135 = __clz(__rbit64(v126));
            v126 &= v126 - 1;
            v136 = v135 | (v132 << 6);
            v137 = v174;
            v138 = v186;
            v139 = v185;
            v140 = v194;
            (*(v186 + 16))(v185, *(v174 + 6) + *(v186 + 72) * v136, v194);
            v141 = *(*(v137 + 7) + 8 * v136);
            v142 = *(v62 + 48);
            v143 = *(v138 + 32);
            v129 = v176;
            v143(v176, v139, v140);
            *(v129 + v142) = v141;
            v175(v129, 0, 1, v62);

            v130 = v181;
            v131 = v187;
LABEL_95:
            sub_1BB60DF90(v129, v130, &qword_1EBC5DD70);
            if (v131(v130, 1, v62) == 1)
            {

              v162 = v188;
              v163 = v188[3];
              MEMORY[0x1EEE9AC00](v161);
              v164 = v193;
              *(&v172 - 2) = v193;
              *(&v172 - 1) = v162;

              v165 = sub_1BB6403E8(sub_1BB671590, (&v172 - 4), v163);

              v162[3] = v165;

              v167 = v162[4];
              MEMORY[0x1EEE9AC00](v166);
              *(&v172 - 2) = v164;
              *(&v172 - 1) = v162;

              v168 = sub_1BB6403E8(sub_1BB66F7E0, (&v172 - 4), v167);

              v162[4] = v168;

              v170 = v162[5];
              MEMORY[0x1EEE9AC00](v169);
              *(&v172 - 2) = v164;
              *(&v172 - 1) = v162;

              v171 = sub_1BB6403E8(sub_1BB671590, (&v172 - 4), v170);

              v162[5] = v171;

              return sub_1BB66BB18(v164);
            }

            v144 = *(v130 + *(v62 + 48));
            v145 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence;
            *(v144 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence) = v25;
            if ((*(v188 + v191) & 1) == 0)
            {
              v146 = v180;
              v147 = v192;
              (*v179)(v180, v144 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastPredictTime, v192);
              sub_1BB6BA744();
              v149 = v148;
              v150 = v146;
              v129 = v176;
              (*v178)(v150, v147);
              v151 = 1.79769313e308;
              if (v149 <= 1.79769313e308)
              {
                v151 = v149;
              }

              v152 = *(v144 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration);
              if (v149 < 0.0)
              {
                v153 = 0.0;
              }

              else
              {
                v153 = v151;
              }

              v154 = 1.0 - *(v144 + v145);
              v155 = v152[5] * v154;
              if (v155 <= 1.0)
              {
                v156 = v152[5] * v154;
              }

              else
              {
                v156 = 1.0;
              }

              if (v155 < 0.0)
              {
                v157 = 0.0;
              }

              else
              {
                v157 = v156;
              }

              v158 = v144 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state;
              v159 = *(type metadata accessor for DKIdentityFilter.IdentityProbability(0) + 24);
              v160 = *(v158 + v159) - v153 * v157;
              if (v152[9] > v160)
              {
                v160 = v152[9];
              }

              if (v152[10] < v160)
              {
                v160 = v152[10];
              }

              *(v158 + v159) = v160;
            }

            (*v190)(v144 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastPredictTime, v193, v192);

            v130 = v181;
            result = (*v189)(v181, v194);
          }

          if (v127 <= v128 + 1)
          {
            v133 = v128 + 1;
          }

          else
          {
            v133 = v127;
          }

          v134 = v133 - 1;
          while (1)
          {
            v132 = v128 + 1;
            if (__OFADD__(v128, 1))
            {
              goto LABEL_117;
            }

            if (v132 >= v127)
            {
              v175(v129, 1, 1, v62);
              v126 = 0;
              v128 = v134;
              goto LABEL_95;
            }

            v126 = *&v177[8 * v132];
            ++v128;
            if (v126)
            {
              v128 = v132;
              goto LABEL_94;
            }
          }
        }

        v105 = *(v90 + *(v62 + 48));
        v106 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence;
        *(v105 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence) = v25;
        if ((*(v188 + v191) & 1) == 0)
        {
          v107 = v180;
          v108 = v192;
          (*v179)(v180, v105 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastPredictTime, v192);
          sub_1BB6BA744();
          v110 = v109;
          v111 = v107;
          v90 = v177;
          (*v178)(v111, v108);
          v112 = 1.79769313e308;
          if (v110 <= 1.79769313e308)
          {
            v112 = v110;
          }

          v113 = *(v105 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration);
          if (v110 < 0.0)
          {
            v114 = 0.0;
          }

          else
          {
            v114 = v112;
          }

          v115 = 1.0 - *(v105 + v106);
          v116 = v113[5] * v115;
          if (v116 <= 1.0)
          {
            v117 = v113[5] * v115;
          }

          else
          {
            v117 = 1.0;
          }

          if (v116 < 0.0)
          {
            v118 = 0.0;
          }

          else
          {
            v118 = v117;
          }

          v119 = v105 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state;
          v120 = *(type metadata accessor for DKIdentityFilter.IdentityProbability(0) + 24);
          v121 = *(v119 + v120) - v114 * v118;
          if (v113[9] > v121)
          {
            v121 = v113[9];
          }

          if (v113[10] < v121)
          {
            v121 = v113[10];
          }

          *(v119 + v120) = v121;
        }

        (*v190)(v105 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastPredictTime, v193, v192);

        result = (*v189)(v90, v194);
        v84 = v175;
      }

      if (v88 <= v89 + 1)
      {
        v92 = v89 + 1;
      }

      else
      {
        v92 = v88;
      }

      v93 = v92 - 1;
      while (1)
      {
        v91 = v89 + 1;
        if (__OFADD__(v89, 1))
        {
          goto LABEL_116;
        }

        if (v91 >= v88)
        {
          v104 = *v182;
          v103 = v174;
          (*v182)(v174, 1, 1, v62);
          v87 = 0;
          v89 = v93;
          goto LABEL_61;
        }

        v87 = *(v84 + v91);
        ++v89;
        if (v87)
        {
          v89 = v91;
          goto LABEL_60;
        }
      }
    }

    v65 = *(v49 + *(v62 + 48));
    v66 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence;
    *(v65 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence) = v25;
    v2 = v61;
    if ((*(v61 + v191) & 1) == 0)
    {
      v67 = v180;
      v68 = v192;
      (*v179)(v180, v65 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastPredictTime, v192);
      sub_1BB6BA744();
      v70 = v69;
      v48 = v182;
      v71 = v68;
      v49 = v187;
      (*v178)(v67, v71);
      v72 = 1.79769313e308;
      if (v70 <= 1.79769313e308)
      {
        v72 = v70;
      }

      v73 = *(v65 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration);
      if (v70 < 0.0)
      {
        v74 = 0.0;
      }

      else
      {
        v74 = v72;
      }

      v75 = 1.0 - *(v65 + v66);
      v76 = v73[5] * v75;
      if (v76 <= 1.0)
      {
        v77 = v73[5] * v75;
      }

      else
      {
        v77 = 1.0;
      }

      if (v76 < 0.0)
      {
        v78 = 0.0;
      }

      else
      {
        v78 = v77;
      }

      v79 = v65 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state;
      v80 = *(type metadata accessor for DKIdentityFilter.IdentityProbability(0) + 24);
      v81 = *(v79 + v80) - v74 * v78;
      if (v73[9] > v81)
      {
        v81 = v73[9];
      }

      if (v73[10] < v81)
      {
        v81 = v73[10];
      }

      *(v79 + v80) = v81;
    }

    (*v190)(v65 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastPredictTime, v193, v192);

    result = (*v189)(v49, v194);
  }

  if (v46 <= v47 + 1)
  {
    v51 = v47 + 1;
  }

  else
  {
    v51 = v46;
  }

  v52 = v51 - 1;
  while (1)
  {
    v50 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v50 >= v46)
    {
      v61 = v2;
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD80);
      v60 = v48;
      (*(*(v82 - 8) + 56))(v48, 1, 1, v82);
      v45 = 0;
      v47 = v52;
      goto LABEL_27;
    }

    v45 = *(v175 + v50);
    ++v47;
    if (v45)
    {
      v47 = v50;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
  return result;
}

BOOL sub_1BB66A6F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v22[0] = a1;
  v22[1] = a3;
  v5 = sub_1BB6BA7F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD80);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  v16 = *a2;
  v17 = sub_1BB6BA844();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v15, v22[0], v17);
  *&v15[*(v10 + 56)] = v16;
  sub_1BB5982A0(v15, v12, &qword_1EBC5DD80);
  (*(v6 + 16))(v8, *&v12[*(v10 + 56)] + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastUpdateTime, v5);

  sub_1BB6BA744();
  v20 = v19;
  (*(v6 + 8))(v8, v5);
  sub_1BB598308(v15, &qword_1EBC5DD80);
  (*(v18 + 8))(v12, v17);
  return v20 < *(*(v23 + 16) + 16);
}

uint64_t sub_1BB66A960()
{
  v1 = sub_1BB6BA7F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if ((*(v5 + 200) & 1) == 0)
  {
    v17 = *(v5 + 192);
    v18 = v0 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_state;
    v19 = type metadata accessor for DKIdentityFilter.IdentityState(0);
    (*(v2 + 16))(v4, v18 + *(v19 + 32), v1);
    sub_1BB6BA744();
    v21 = v20;
    (*(v2 + 8))(v4, v1);
    return v17 <= v21;
  }

  v6 = v0 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_state;
  v23 = type metadata accessor for DKIdentityFilter.IdentityState(0);
  v7 = *(v23 + 32);
  v8 = *(v2 + 16);
  v8(v4, v6 + v7, v1);
  sub_1BB6BA744();
  v10 = v9;
  v11 = *(v2 + 8);
  v11(v4, v1);
  if (*(*(v0 + 16) + 144) <= v10)
  {
    return 1;
  }

  v8(v4, v6 + v7, v1);
  sub_1BB6BA744();
  v13 = v12;
  v11(v4, v1);
  v14 = *(v0 + 16);
  if (v13 < v14[17])
  {
    return 0;
  }

  v15 = *(v6 + *(v23 + 24));
  if (v14[9] >= v15)
  {
    if (v15 <= v14[8])
    {
      result = 1;
      *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_isUpdating) = 1;
    }

    else
    {
      return *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_isUpdating);
    }
  }

  else
  {
    result = 0;
    *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_isUpdating) = 0;
  }

  return result;
}

int *sub_1BB66ABB8(uint64_t a1)
{
  v2 = sub_1BB6BA844();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v141 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v143 = &v125 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v144 = (&v125 - v8);
  v142 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  v9 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v127 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v132 = &v125 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v131 = &v125 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v125 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v133 = (&v125 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v125 - v21;
  result = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  v24 = *(a1 + result[5]);
  v25 = *(v24 + 16);
  v26 = &OBJC_IVAR____TtC23IntelligentTrackingCore10DKKeyframe_imageName;
  v145 = v2;
  v139 = v3;
  v140 = v17;
  v134 = v9;
  v138 = a1;
  v125 = result;
  if (!v25)
  {
    v57 = *(a1 + result[6]);
    v58 = *(v57 + 16);
    if (v58)
    {
      goto LABEL_28;
    }

    if (!*(*(a1 + result[7]) + 16))
    {
      return result;
    }

LABEL_52:
    v88 = *(v138 + v125[7]);
    v89 = *(v88 + 16);
    v90 = v132;
    if (!v89)
    {
LABEL_76:
      v120 = v146 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_state;
      v121 = *(type metadata accessor for DKIdentityFilter.IdentityState(0) + 32);
      v122 = sub_1BB6BA7F4();
      v123 = &v120[v121];
      v124 = v138;
      (*(*(v122 - 8) + 24))(v123, v138, v122);
      return sub_1BB66BB18(v124);
    }

    v91 = v88 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v143 = *(v9 + 72);
    v144 = (v139 + 16);
    v137 = (v9 + 56);
    v135 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_isUpdating;
    v136 = (v139 + 8);
    v92 = v141;
    v93 = v142;
    while (1)
    {
      sub_1BB66EEF0(v91, v90, type metadata accessor for DKIdentityFilter.IdentityProbability);
      if (*(v146[5] + 16) && (, sub_1BB6A1288(v90), v95 = v94, , (v95 & 1) != 0))
      {
        if (*(v146[5] + 16))
        {
          goto LABEL_74;
        }
      }

      else
      {
        v140 = *v144;
        v140(v92, v90, v2);
        v96 = v90;
        v97 = v146;
        v98 = v127;
        sub_1BB66EEF0(v96, v127, type metadata accessor for DKIdentityFilter.IdentityProbability);
        v99 = *(v97[2] + 128);
        type metadata accessor for DKIdentityEMAFilter(0);
        v100 = swift_allocObject();

        sub_1BB6BA724();
        sub_1BB6BA724();
        (*v137)(v100 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastValue, 1, 1, v93);
        v101 = v100 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state;
        sub_1BB66EEF0(v98, v100 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state, type metadata accessor for DKIdentityFilter.IdentityProbability);
        *(v101 + *(v93 + 24)) = *(v99 + 88);
        *(v100 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration) = v99;
        *(v100 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence) = *(v99 + 48);
        if (*(v99 + 104))
        {
          v102 = 0.0;
        }

        else
        {
          v102 = *(v99 + 96);
        }

        type metadata accessor for SlidingWindowMaxIdentity();
        v103 = swift_allocObject();
        v104 = MEMORY[0x1E69E7CC0];
        *(v103 + 16) = MEMORY[0x1E69E7CC0];
        sub_1BB66EF58(v98, type metadata accessor for DKIdentityFilter.IdentityProbability);
        *(v103 + 24) = v104;
        *(v103 + 32) = v102;
        *(v100 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_measurementHistory) = v103;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v147 = v97[5];
        v106 = v147;
        v97[5] = 0x8000000000000000;
        v107 = sub_1BB6A1288(v92);
        v109 = v106[2];
        v110 = (v108 & 1) == 0;
        v54 = __OFADD__(v109, v110);
        v111 = v109 + v110;
        if (v54)
        {
          goto LABEL_80;
        }

        v112 = v108;
        if (v106[3] >= v111)
        {
          v90 = v132;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v119 = v107;
            sub_1BB5EA5C8();
            v107 = v119;
          }
        }

        else
        {
          sub_1BB5E7264(v111, isUniquelyReferenced_nonNull_native);
          v107 = sub_1BB6A1288(v141);
          v90 = v132;
          if ((v112 & 1) != (v113 & 1))
          {
            goto LABEL_84;
          }
        }

        v2 = v145;
        v114 = v147;
        if (v112)
        {
          *(v147[7] + 8 * v107) = v100;
        }

        else
        {
          v147[(v107 >> 6) + 8] |= 1 << v107;
          v115 = v107;
          v140(v114[6] + *(v139 + 72) * v107, v141, v2);
          *(v114[7] + 8 * v115) = v100;
          v116 = v114[2];
          v54 = __OFADD__(v116, 1);
          v117 = v116 + 1;
          if (v54)
          {
            goto LABEL_83;
          }

          v114[2] = v117;
        }

        (*v136)(v141, v2);
        v146[5] = v114;
        if (v114[2])
        {
LABEL_74:

          sub_1BB6A1288(v90);
          if (v118)
          {

            sub_1BB5DE1A4(v138, v90, *(v135 + v146));
          }

          else
          {
          }
        }
      }

      sub_1BB66EF58(v90, type metadata accessor for DKIdentityFilter.IdentityProbability);
      v91 += v143;
      if (!--v89)
      {
        goto LABEL_76;
      }
    }
  }

  v126 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_isUpdating;
  v27 = v9;
  v28 = v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v136 = *(v27 + 72);
  v137 = (v3 + 16);
  v130 = (v27 + 56);
  v128 = (v3 + 8);
  v129 = v22;
  while (1)
  {
    sub_1BB66EEF0(v28, v22, type metadata accessor for DKIdentityFilter.IdentityProbability);
    if (!*(v146[3] + 16))
    {
      break;
    }

    sub_1BB6A1288(v22);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      break;
    }

    if (*(v146[3] + 16))
    {
      goto LABEL_23;
    }

LABEL_4:
    sub_1BB66EF58(v22, type metadata accessor for DKIdentityFilter.IdentityProbability);
    v28 += v136;
    if (!--v25)
    {
      v57 = *(v138 + v125[6]);
      v58 = *(v57 + 16);
      v9 = v134;
      if (v58)
      {
        v3 = v139;
        v26 = &OBJC_IVAR____TtC23IntelligentTrackingCore10DKKeyframe_imageName;
LABEL_28:
        v130 = v26[167];
        v59 = v57 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
        v137 = *(v9 + 72);
        v144 = (v3 + 16);
        v135 = (v9 + 56);
        v133 = (v3 + 8);
        v60 = v143;
        while (1)
        {
          sub_1BB66EEF0(v59, v17, type metadata accessor for DKIdentityFilter.IdentityProbability);
          if (*(v146[4] + 16) && (, sub_1BB6A1288(v17), v62 = v61, , (v62 & 1) != 0))
          {
            if (*(v146[4] + 16))
            {
              goto LABEL_49;
            }
          }

          else
          {
            v136 = *v144;
            v136(v60, v17, v2);
            v63 = v17;
            v64 = v131;
            sub_1BB66EEF0(v63, v131, type metadata accessor for DKIdentityFilter.IdentityProbability);
            v65 = v146;
            v66 = *(v146[2] + 120);
            type metadata accessor for DKIdentityEMAFilter(0);
            v67 = swift_allocObject();

            sub_1BB6BA724();
            sub_1BB6BA724();
            v68 = v142;
            (*v135)(v67 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastValue, 1, 1, v142);
            v69 = v67 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state;
            sub_1BB66EEF0(v64, v67 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state, type metadata accessor for DKIdentityFilter.IdentityProbability);
            *(v69 + *(v68 + 24)) = *(v66 + 88);
            *(v67 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration) = v66;
            *(v67 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence) = *(v66 + 48);
            if (*(v66 + 104))
            {
              v70 = 0.0;
            }

            else
            {
              v70 = *(v66 + 96);
            }

            type metadata accessor for SlidingWindowMaxIdentity();
            v71 = swift_allocObject();
            v72 = MEMORY[0x1E69E7CC0];
            *(v71 + 16) = MEMORY[0x1E69E7CC0];
            sub_1BB66EF58(v64, type metadata accessor for DKIdentityFilter.IdentityProbability);
            *(v71 + 24) = v72;
            *(v71 + 32) = v70;
            *(v67 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_measurementHistory) = v71;
            v73 = swift_isUniquelyReferenced_nonNull_native();
            v147 = v65[4];
            v74 = v147;
            v65[4] = 0x8000000000000000;
            v75 = sub_1BB6A1288(v60);
            v77 = v74[2];
            v78 = (v76 & 1) == 0;
            v54 = __OFADD__(v77, v78);
            v79 = v77 + v78;
            if (v54)
            {
              goto LABEL_79;
            }

            v80 = v76;
            if (v74[3] >= v79)
            {
              v9 = v134;
              if ((v73 & 1) == 0)
              {
                v87 = v75;
                sub_1BB5EA5C8();
                v75 = v87;
              }
            }

            else
            {
              sub_1BB5E7264(v79, v73);
              v75 = sub_1BB6A1288(v143);
              v9 = v134;
              if ((v80 & 1) != (v81 & 1))
              {
                goto LABEL_84;
              }
            }

            v17 = v140;
            v82 = v147;
            if (v80)
            {
              *(v147[7] + 8 * v75) = v67;
            }

            else
            {
              v147[(v75 >> 6) + 8] |= 1 << v75;
              v83 = v75;
              v136(v82[6] + *(v139 + 72) * v75, v143, v145);
              *(v82[7] + 8 * v83) = v67;
              v84 = v82[2];
              v54 = __OFADD__(v84, 1);
              v85 = v84 + 1;
              if (v54)
              {
                goto LABEL_82;
              }

              v82[2] = v85;
            }

            v2 = v145;
            (*v133)(v143, v145);
            v146[4] = v82;
            if (v82[2])
            {
LABEL_49:

              sub_1BB6A1288(v17);
              if (v86)
              {

                sub_1BB5DE1A4(v138, v17, *(v130 + v146));
              }

              else
              {
              }
            }
          }

          sub_1BB66EF58(v17, type metadata accessor for DKIdentityFilter.IdentityProbability);
          v59 += v137;
          if (!--v58)
          {
            goto LABEL_52;
          }
        }
      }

      goto LABEL_52;
    }
  }

  v31 = v144;
  v135 = *v137;
  (v135)(v144, v22, v2);
  v32 = v22;
  v33 = v133;
  sub_1BB66EEF0(v32, v133, type metadata accessor for DKIdentityFilter.IdentityProbability);
  v34 = v146;
  v35 = *(v146[2] + 112);
  type metadata accessor for DKIdentityEMAFilter(0);
  v36 = swift_allocObject();

  sub_1BB6BA724();
  sub_1BB6BA724();
  v37 = v142;
  (*v130)(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastValue, 1, 1, v142);
  v38 = v36 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state;
  sub_1BB66EEF0(v33, v36 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state, type metadata accessor for DKIdentityFilter.IdentityProbability);
  *(v38 + *(v37 + 24)) = *(v35 + 88);
  *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration) = v35;
  *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence) = *(v35 + 48);
  if (*(v35 + 104))
  {
    v39 = 0.0;
  }

  else
  {
    v39 = *(v35 + 96);
  }

  type metadata accessor for SlidingWindowMaxIdentity();
  v40 = swift_allocObject();
  v41 = MEMORY[0x1E69E7CC0];
  *(v40 + 16) = MEMORY[0x1E69E7CC0];
  sub_1BB66EF58(v33, type metadata accessor for DKIdentityFilter.IdentityProbability);
  *(v40 + 24) = v41;
  *(v40 + 32) = v39;
  *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_measurementHistory) = v40;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v147 = v34[3];
  v43 = v147;
  v34[3] = 0x8000000000000000;
  v45 = sub_1BB6A1288(v31);
  v46 = v43[2];
  v47 = (v44 & 1) == 0;
  v48 = v46 + v47;
  if (!__OFADD__(v46, v47))
  {
    v49 = v44;
    if (v43[3] >= v48)
    {
      if ((v42 & 1) == 0)
      {
        sub_1BB5EA5C8();
      }
    }

    else
    {
      sub_1BB5E7264(v48, v42);
      v50 = sub_1BB6A1288(v144);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_84;
      }

      v45 = v50;
    }

    v2 = v145;
    v52 = v147;
    if (v49)
    {
      *(v147[7] + 8 * v45) = v36;
    }

    else
    {
      v147[(v45 >> 6) + 8] |= 1 << v45;
      (v135)(v52[6] + *(v139 + 72) * v45, v144, v2);
      *(v52[7] + 8 * v45) = v36;
      v53 = v52[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        goto LABEL_81;
      }

      v52[2] = v55;
    }

    (*v128)(v144, v2);
    v146[3] = v52;
    v17 = v140;
    v22 = v129;
    if (!v52[2])
    {
      goto LABEL_4;
    }

LABEL_23:

    sub_1BB6A1288(v22);
    if (v56)
    {

      sub_1BB5DE1A4(v138, v22, *(v146 + v126));
    }

    else
    {
    }

    goto LABEL_4;
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  result = sub_1BB6BB874();
  __break(1u);
  return result;
}