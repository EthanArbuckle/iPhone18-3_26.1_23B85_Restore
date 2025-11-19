uint64_t sub_24A469B78(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v4 = BYTE2(a4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_24A440C2C(a2, a3, v4 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A469BEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A4AB690();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A4AB6E0();
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A4AB630();
  sub_24A378E18(v12, qword_27EF4E260);
  v13 = sub_24A4AB600();
  v14 = sub_24A4ABCE0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24A376000, v13, v14, "👀 FMFSecureLocCtrl: start refreshing", v15, 2u);
    MEMORY[0x24C219130](v15, -1, -1);
  }

  sub_24A463B90();
  sub_24A466B38(a1, 0, 0, 0);
  v16 = *(v2 + 136);
  aBlock[4] = sub_24A474EAC;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8B048;
  v17 = _Block_copy(aBlock);
  v18 = v16;

  sub_24A4AB6B0();
  v23 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v11, v7, v17);
  _Block_release(v17);

  (*(v22 + 8))(v7, v4);
  (*(v8 + 8))(v11, v21);
}

uint64_t sub_24A469F70(void *a1)
{
  v2 = a1[7];

  v4 = sub_24A462638(v3);
  v5 = sub_24A3999E0(v4);

  v6 = a1[8];
  v7 = a1[9];

  sub_24A46C194(v5, 1, 0, 0xE000000000000000);
}

uint64_t sub_24A46A014()
{
  v1 = v0;
  v2 = sub_24A4AB690();
  v20 = *(v2 - 8);
  v3 = *(v20 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A4AB6E0();
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v19);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A4AB630();
  sub_24A378E18(v10, qword_27EF4E260);
  v11 = sub_24A4AB600();
  v12 = sub_24A4ABCE0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24A376000, v11, v12, "👀 FMFSecureLocCtrl: stop refreshing", v13, 2u);
    MEMORY[0x24C219130](v13, -1, -1);
  }

  v14 = *(v1 + 136);
  aBlock[4] = sub_24A474EA4;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8B020;
  v15 = _Block_copy(aBlock);
  v16 = v14;

  sub_24A4AB6B0();
  v21 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v9, v5, v15);
  _Block_release(v15);

  (*(v20 + 8))(v5, v2);
  (*(v6 + 8))(v9, v19);
}

uint64_t sub_24A46A378(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];

  sub_24A46D18C(v5, 0, 0, 0xE000000000000000);

  v6 = a1[7];

  v8 = sub_24A462638(v7);
  v9 = sub_24A3999E0(v8);

  v10 = a1[8];
  v11 = a1[9];

  sub_24A46D18C(v9, 1, 0, 0xE000000000000000);

  v12 = a1[4];
  v13 = MEMORY[0x277D84FA0];
  a1[4] = MEMORY[0x277D84FA0];

  v14 = a1[7];
  a1[7] = v13;
}

uint64_t sub_24A46A47C(unint64_t a1, uint64_t a2, char a3)
{
  v165 = a2;
  v166 = type metadata accessor for FMFLocation();
  v184 = *(v166 - 8);
  v6 = *(v184 + 64);
  v7 = MEMORY[0x28223BE20](v166);
  v179 = (v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v170 = v162 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v171 = v162 - v12;
  MEMORY[0x28223BE20](v11);
  v177 = v162 - v13;
  v168 = a3 & 1;
  sub_24A4664E0(a1, a3 & 1);
  v14 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_125;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A4AC060())
  {
    v16 = MEMORY[0x277D84F90];
    v183 = v3;
    v187 = i;
    v163 = i & ~(i >> 63);
    if (i)
    {
      v192[0] = MEMORY[0x277D84F90];
      result = sub_24A3DBDA8(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
        return result;
      }

      v18 = 0;
      v16 = v192[0];
      v19 = a1;
      v20 = a1 & 0xC000000000000001;
      do
      {
        v21 = v16;
        if (v20)
        {
          v22 = MEMORY[0x24C218380](v18, v19);
        }

        else
        {
          v22 = *(v19 + 8 * v18 + 32);
        }

        v23 = v22;
        v24 = [v22 findMyId];
        v25 = sub_24A4AB850();
        v27 = v26;

        v16 = v21;
        v192[0] = v21;
        v28 = *(v21 + 16);
        v29 = *(v16 + 24);
        if (v28 >= v29 >> 1)
        {
          sub_24A3DBDA8((v29 > 1), v28 + 1, 1);
          v16 = v192[0];
        }

        ++v18;
        *(v16 + 16) = v28 + 1;
        v30 = v16 + 16 * v28;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
      }

      while (v187 != v18);
      a1 = v19;
      i = v187;
    }

    v31 = v16;
    v32 = v168;
    sub_24A465114(v16, v168);
    v164 = v31;
    sub_24A465E4C(v31, v32);
    if (v14)
    {
      break;
    }

    v33 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v177;
    if (!v33)
    {
      goto LABEL_74;
    }

LABEL_15:
    v34 = a1 & 0xC000000000000001;
    swift_beginAccess();
    v3 = 0;
    v176 = a1 & 0xFFFFFFFFFFFFFF8;
    v174 = 0;
    v175 = a1 + 32;
    v35 = &off_278FE1000;
    v182 = a1;
    v172 = a1 & 0xC000000000000001;
    v173 = v33;
    while (1)
    {
      if (v34)
      {
        v36 = MEMORY[0x24C218380](v3, a1);
      }

      else
      {
        if (v3 >= *(v176 + 16))
        {
          goto LABEL_124;
        }

        v36 = *(v175 + 8 * v3);
      }

      v37 = v36;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v39 = [v36 v35[248]];
      v190 = v3;
      if (v39 == 6)
      {
        v40 = a1;
        v41 = [v37 findMyId];
        v42 = v37;
        v43 = sub_24A4AB850();
        v45 = v44;

        v46 = *(v183 + 104);
        if (*(v46 + 16))
        {
          v47 = *(v183 + 104);

          v48 = sub_24A39B2C8(v43, v45);
          v50 = v49;

          if (v50)
          {
            v51 = *(*(v46 + 56) + 8 * v48);

            [v51 invalidate];
          }

          else
          {
          }

          v14 = v177;
        }

        else
        {
        }

        v3 = v190;
        v35 = &off_278FE1000;
        a1 = v40;
      }

      else
      {
        if ([v37 v35[248]] == 7)
        {
          v52 = a1;
          v53 = *(v183 + 56);
          v55 = *(v53 + 56);
          v14 = v53 + 56;
          v54 = v55;
          v56 = 1 << *(*(v183 + 56) + 32);
          if (v56 < 64)
          {
            v57 = ~(-1 << v56);
          }

          else
          {
            v57 = -1;
          }

          v58 = v57 & v54;
          a1 = (v56 + 63) >> 6;
          v188 = *(v183 + 56);

          v59 = 0;
          v60 = 0;
          v185 = v37;
          *&v186 = v14;
LABEL_32:
          v61 = v59;
          v62 = v60;
          if (!v58)
          {
            goto LABEL_34;
          }

          while (1)
          {
            v60 = v62;
LABEL_37:
            if (__OFADD__(v61, 1))
            {
              break;
            }

            v63 = a1;
            v178 = v61;
            v189 = v61 + 1;
            v64 = __clz(__rbit64(v58));
            v58 &= v58 - 1;
            v65 = *(v188 + 48) + 24 * (v64 | (v60 << 6));
            v66 = v37;
            v68 = *v65;
            v67 = *(v65 + 8);
            LODWORD(v181) = *(v65 + 16);
            v69 = *(v65 + 17);
            LODWORD(v180) = *(v65 + 18);
            swift_bridgeObjectRetain_n();
            v70 = [v66 findMyId];
            v71 = sub_24A4AB850();
            v73 = v72;

            if (v68 == v71 && v67 == v73)
            {
              v75 = v68;

              v78 = v182;
LABEL_46:
              v169 = v75;
              v79 = v183;
              if (*(v183 + 208))
              {
                v193 = 0x403E000000000000;
                if (qword_27EF3EC08 != -1)
                {
                  v77 = swift_once();
                }

                MEMORY[0x28223BE20](v77);
                LOBYTE(v162[-2]) = 3;
                v162[-1] = &v193;
                v80 = v174;
                sub_24A4ABD70();
                v174 = v80;
                v81 = *v192;
                v52 = v182;
                v79 = v183;
              }

              else
              {
                v81 = *(v183 + 200);
                v52 = v78;
              }

              a1 = v63;
              v82 = v181;
              if (v69)
              {
                v83 = 256;
              }

              else
              {
                v83 = 0;
              }

              v84 = v167 & 0xFF000000 | v181 | v83;
              if (v180)
              {
                v85 = 0x10000;
              }

              else
              {
                v85 = 0;
              }

              v167 = v84 | v85;
              sub_24A4714E4(v169, v67, v84 | v85, 1, v81);
              if ((v82 | v69))
              {
                v86 = *(v79 + 56);
                v87 = *(v86 + 16);
                v14 = v186;
                if (v87)
                {
                  sub_24A3C9CEC(&qword_27EF3F558, &unk_24A4B5790);
                  v88 = swift_allocObject();
                  v89 = j__malloc_size(v88);
                  v88[2] = v87;
                  v88[3] = 2 * ((v89 - 32) / 24);
                  v90 = sub_24A40C270(v192, (v88 + 4), v87, v86);
                  v180 = v192[2];
                  v181 = v192[1];
                  v162[0] = v192[4];
                  v162[1] = v192[3];

                  result = sub_24A3A13C0();
                  if (v90 != v87)
                  {
                    goto LABEL_129;
                  }

                  v52 = v182;
                }

                else
                {
                  v88 = MEMORY[0x277D84F90];
                }

                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_24A473E50(v88);
                  v88 = result;
                }

                if (v178 >= v88[2])
                {
                  goto LABEL_128;
                }

                v91 = &v88[3 * v178];
                v92 = v91[5];
                v91[4] = v169;
                v91[5] = v67;
                *(v91 + 24) = 0;
                *(v91 + 50) = 1;

                v93 = sub_24A489F6C(v88);

                v94 = *(v183 + 56);
                *(v183 + 56) = v93;
                v35 = &off_278FE1000;
              }

              else
              {
                v35 = &off_278FE1000;
                v14 = v186;
              }

              v59 = v189;
              v3 = v190;
              v37 = v185;
              goto LABEL_32;
            }

            v75 = v68;
            v76 = sub_24A4AC270();

            v78 = v182;
            if (v76)
            {
              goto LABEL_46;
            }

            v61 = v189;
            v3 = v190;
            v62 = v60;
            v35 = &off_278FE1000;
            v37 = v185;
            v14 = v186;
            v52 = v78;
            a1 = v63;
            if (!v58)
            {
LABEL_34:
              while (1)
              {
                v60 = v62 + 1;
                if (__OFADD__(v62, 1))
                {
                  break;
                }

                if (v60 >= a1)
                {

                  v14 = v177;
                  v34 = v172;
                  v33 = v173;
                  a1 = v52;
                  i = v187;
                  goto LABEL_17;
                }

                v58 = *(v14 + 8 * v60);
                ++v62;
                if (v58)
                {
                  goto LABEL_37;
                }
              }

              __break(1u);
              break;
            }
          }

          __break(1u);
          break;
        }
      }

LABEL_17:
      if (v3 == v33)
      {
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    ;
  }

  v33 = sub_24A4AC060();
  v14 = v177;
  if (v33)
  {
    goto LABEL_15;
  }

LABEL_74:
  v174 = 0;
LABEL_75:
  v95 = MEMORY[0x277D84F90];
  if (i)
  {
    v192[0] = MEMORY[0x277D84F90];
    result = sub_24A3B57CC(0, v163, 0);
    if (i < 0)
    {
      goto LABEL_127;
    }

    v96 = 0;
    v95 = v192[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v97 = MEMORY[0x24C218380](v96, a1);
      }

      else
      {
        v97 = *(a1 + 8 * v96 + 32);
      }

      sub_24A3EC26C(v97, v14);
      v192[0] = v95;
      v99 = *(v95 + 16);
      v98 = *(v95 + 24);
      if (v99 >= v98 >> 1)
      {
        sub_24A3B57CC(v98 > 1, v99 + 1, 1);
        v95 = v192[0];
      }

      ++v96;
      *(v95 + 16) = v99 + 1;
      sub_24A410DD8(v14, v95 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v99);
    }

    while (i != v96);
  }

  v100 = swift_allocObject();
  *(v100 + 16) = v95;
  v101 = v165;
  v190 = v100;
  if (v165 && !v168)
  {

    v102 = sub_24A3999E0(v164);

    v192[0] = v101;
    v3 = v192;
    sub_24A47467C(v102);
    v104 = 0;
    v106 = v192[0] + 56;
    v105 = *(v192[0] + 56);
    v189 = v192[0];
    v107 = 1 << *(v192[0] + 32);
    v108 = -1;
    if (v107 < 64)
    {
      v108 = ~(-1 << v107);
    }

    v14 = v108 & v105;
    v109 = (v107 + 63) >> 6;
    *&v103 = 136315394;
    v186 = v103;
    v187 = v109;
    v188 = v192[0] + 56;
    if ((v108 & v105) != 0)
    {
      goto LABEL_93;
    }

    while (1)
    {
      do
      {
        v110 = v104 + 1;
        if (__OFADD__(v104, 1))
        {
          goto LABEL_123;
        }

        if (v110 >= v109)
        {

          goto LABEL_108;
        }

        v14 = *(v106 + 8 * v110);
        ++v104;
      }

      while (!v14);
      v104 = v110;
      do
      {
LABEL_93:
        v111 = (*(v189 + 48) + ((v104 << 10) | (16 * __clz(__rbit64(v14)))));
        v112 = *v111;
        v113 = v111[1];
        v193 = 0x403E000000000000;
        v114 = qword_27EF3EC08;

        if (v114 != -1)
        {
          v115 = swift_once();
        }

        MEMORY[0x28223BE20](v115);
        LOBYTE(v162[-2]) = 4;
        v162[-1] = &v193;
        v116 = v174;
        sub_24A4ABD70();
        v174 = v116;
        sub_24A470124(v112, v113, 0, *v192);
        v117 = v166;
        v118 = *(v166 + 32);
        v119 = sub_24A4AAB20();
        v120 = v171;
        (*(*(v119 - 8) + 56))(v171 + v118, 1, 1, v119);
        *v120 = v112;
        *(v120 + 8) = v113;
        sub_24A3B4ACC(v192);
        memcpy((v120 + v117[11]), v192, 0x161uLL);
        *(v120 + 16) = 0;
        *(v120 + 24) = 0;
        *(v120 + 32) = 1;
        *(v120 + v117[9]) = 0;
        *(v120 + v117[10]) = 0;
        v121 = FMFLocation.debugDescription.getter();
        v123 = v122;
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v124 = sub_24A4AB630();
        sub_24A378E18(v124, qword_27EF4E260);

        v125 = sub_24A4AB600();
        a1 = sub_24A4ABCE0();

        if (os_log_type_enabled(v125, a1))
        {
          v126 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v193 = v127;
          *v126 = v186;
          v128 = sub_24A37BD58(v121, v123, &v193);

          *(v126 + 4) = v128;
          *(v126 + 12) = 2080;
          v191 = 0;
          sub_24A3C9CEC(&qword_27EF3FA88, &qword_24A4B72F8);
          v129 = sub_24A4ABDE0();
          v131 = sub_24A37BD58(v129, v130, &v193);

          *(v126 + 14) = v131;
          _os_log_impl(&dword_24A376000, v125, a1, "👀 FMFLocation: created %s with location: '%s'", v126, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C219130](v127, -1, -1);
          v132 = v126;
          v100 = v190;
          MEMORY[0x24C219130](v132, -1, -1);
        }

        else
        {
        }

        sub_24A475078(v171, v170, type metadata accessor for FMFLocation);
        v3 = *(v100 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v100 + 16) = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v3 = sub_24A3B5C2C(0, *(v3 + 16) + 1, 1, v3);
          *(v100 + 16) = v3;
        }

        v135 = *(v3 + 16);
        v134 = *(v3 + 24);
        if (v135 >= v134 >> 1)
        {
          v3 = sub_24A3B5C2C(v134 > 1, v135 + 1, 1, v3);
          *(v100 + 16) = v3;
        }

        v14 &= v14 - 1;
        sub_24A4750E0(v171, type metadata accessor for FMFLocation);
        *(v3 + 16) = v135 + 1;
        sub_24A410DD8(v170, v3 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v135);
        *(v100 + 16) = v3;
        v109 = v187;
        v106 = v188;
      }

      while (v14);
    }
  }

LABEL_108:
  v136 = *(v100 + 16);
  v137 = *(v136 + 16);
  v138 = MEMORY[0x277D84F90];
  if (v137)
  {
    v192[0] = MEMORY[0x277D84F90];

    sub_24A3DBEE8(0, v137, 0);
    v138 = v192[0];
    v139 = *(v184 + 80);
    v189 = v136;
    v140 = v136 + ((v139 + 32) & ~v139);
    v141 = *(v184 + 72);
    do
    {
      v142 = v179;
      sub_24A475078(v140, v179, type metadata accessor for FMFLocation);
      v144 = *v142;
      v143 = v142[1];

      sub_24A4750E0(v142, type metadata accessor for FMFLocation);
      v192[0] = v138;
      v146 = *(v138 + 16);
      v145 = *(v138 + 24);
      if (v146 >= v145 >> 1)
      {
        sub_24A3DBEE8((v145 > 1), v146 + 1, 1);
        v138 = v192[0];
      }

      *(v138 + 16) = v146 + 1;
      v147 = v138 + 16 * v146;
      *(v147 + 32) = v144;
      *(v147 + 40) = v143;
      v140 += v141;
      --v137;
    }

    while (v137);

    v100 = v190;
  }

  v148 = v183;
  v149 = *(*(v183 + 16) + 56);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v150 = v192[0];
  v192[0] = 91;
  v192[1] = 0xE100000000000000;
  LOBYTE(v191) = 1;

  sub_24A474894(v138, v150, v192, &v191);
  swift_bridgeObjectRelease_n();
  v193 = v192[0];
  v194 = v192[1];

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v152 = v193;
  v151 = v194;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v153 = sub_24A4AB630();
  sub_24A378E18(v153, qword_27EF4E260);

  v154 = sub_24A4AB600();
  v155 = sub_24A4ABCE0();

  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v192[0] = v157;
    *v156 = 136315138;
    v158 = sub_24A37BD58(v152, v151, v192);

    *(v156 + 4) = v158;
    _os_log_impl(&dword_24A376000, v154, v155, "👀 FMFSecureLocCtrl: shifting locations for %s", v156, 0xCu);
    sub_24A37EEE0(v157);
    v148 = v183;
    MEMORY[0x24C219130](v157, -1, -1);
    MEMORY[0x24C219130](v156, -1, -1);
  }

  else
  {
  }

  v159 = *(v148 + 128);
  v160 = *(v100 + 16);
  v161 = swift_allocObject();
  *(v161 + 16) = v148;
  *(v161 + 24) = v100;

  sub_24A3BCD18(v160, sub_24A474D68, v161);
}

uint64_t sub_24A46B5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = sub_24A3C9CEC(&qword_27EF3F8C0, &qword_24A4B9F50);
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v49);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = type metadata accessor for FMFLocation();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A4AB690();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v47 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A4AB6E0();
  v45 = *(v21 - 8);
  v46 = v21;
  v22 = *(v45 + 64);
  MEMORY[0x28223BE20](v21);
  v44 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 16);
  if (v24)
  {
    v41 = v18;
    v42 = a3;
    v43 = v17;
    aBlock[0] = MEMORY[0x277D84F90];
    v25 = v5;
    sub_24A3B57CC(0, v24, 0);
    v26 = aBlock[0];
    v27 = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v28 = *(v25 + 72);
    do
    {
      sub_24A474DA8(v27, v11);
      sub_24A474E18(v11, v9);
      v29 = *(v49 + 48);
      sub_24A410DD8(v9, v16);
      sub_24A37EF2C(&v9[v29], &qword_27EF3F480, &unk_24A4B8C20);
      aBlock[0] = v26;
      v31 = *(v26 + 16);
      v30 = *(v26 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_24A3B57CC(v30 > 1, v31 + 1, 1);
        v26 = aBlock[0];
      }

      *(v26 + 16) = v31 + 1;
      sub_24A410DD8(v16, v26 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v31);
      v27 += v28;
      --v24;
    }

    while (v24);
    a3 = v42;
    v17 = v43;
    v18 = v41;
    v32 = MEMORY[0x277D84F90];
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
    v26 = MEMORY[0x277D84F90];
  }

  v33 = v48;
  v34 = *(v48 + 136);
  v35 = swift_allocObject();
  v35[2] = v33;
  v35[3] = v26;
  v35[4] = a3;
  aBlock[4] = sub_24A474E88;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8AFA8;
  v36 = _Block_copy(aBlock);
  v37 = v34;

  v38 = v44;
  sub_24A4AB6B0();
  v50 = v32;
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v39 = v47;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v38, v39, v36);
  _Block_release(v36);

  (*(v18 + 8))(v39, v17);
  (*(v45 + 8))(v38, v46);
}

uint64_t sub_24A46BAE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v43 = a3;
  v4 = type metadata accessor for FMFLocation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24A4AB690();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A4AB6E0();
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = *(v46 + 64);
  MEMORY[0x28223BE20](v14);
  v45 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  v18 = MEMORY[0x277D84F90];
  v44 = a2;
  if (v17)
  {
    v39 = v13;
    v40 = v10;
    v41 = v9;
    aBlock = MEMORY[0x277D84F90];
    sub_24A3DBEE8(0, v17, 0);
    v18 = aBlock;
    v19 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v20 = *(v5 + 72);
    do
    {
      sub_24A475078(v19, v8, type metadata accessor for FMFLocation);
      v21 = *v8;
      v22 = v8[1];

      sub_24A4750E0(v8, type metadata accessor for FMFLocation);
      aBlock = v18;
      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_24A3DBEE8((v23 > 1), v24 + 1, 1);
        v18 = aBlock;
      }

      *(v18 + 16) = v24 + 1;
      v25 = v18 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      v19 += v20;
      --v17;
    }

    while (v17);
    v10 = v40;
    v9 = v41;
    v13 = v39;
  }

  v26 = v42;
  v27 = *(*(v42 + 16) + 56);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v28 = aBlock;
  aBlock = 91;
  v49 = 0xE100000000000000;
  v56[0] = 1;

  sub_24A474894(v18, v28, &aBlock, v56);
  swift_bridgeObjectRelease_n();
  v54 = aBlock;
  v55 = v49;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v29 = v54;
  v30 = v55;
  v31 = *(v26 + 144);
  v32 = swift_allocObject();
  v32[2] = v29;
  v32[3] = v30;
  v34 = v43;
  v33 = v44;
  v32[4] = v26;
  v32[5] = v34;
  v32[6] = v33;
  v52 = sub_24A474E94;
  v53 = v32;
  aBlock = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_24A388564;
  v51 = &unk_285D8AFF8;
  v35 = _Block_copy(&aBlock);
  v36 = v31;

  v37 = v45;
  sub_24A4AB6B0();
  v54 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v37, v13, v35);
  _Block_release(v35);

  (*(v10 + 8))(v13, v9);
  (*(v46 + 8))(v37, v47);
}

uint64_t sub_24A46BFE8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A4AB630();
  sub_24A378E18(v9, qword_27EF4E260);

  v10 = sub_24A4AB600();
  v11 = sub_24A4ABCE0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_24A37BD58(a1, a2, &v17);
    _os_log_impl(&dword_24A376000, v10, v11, "👀 FMFSecureLocCtrl: telling FMFManager we got locations for %s", v12, 0xCu);
    sub_24A37EEE0(v13);
    MEMORY[0x24C219130](v13, -1, -1);
    MEMORY[0x24C219130](v12, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v15 = *(a4 + 16);

    sub_24A43FA4C(v16, a5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A46C194(uint64_t result, char a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v6 = *(result + 16);
  if (!v6)
  {
    return result;
  }

  v8 = result;
  v9 = sub_24A3A11D8(v6, 0);
  v10 = sub_24A3A1268(&aBlock, v9 + 4, v6, v8);
  v11 = v53;
  v49 = v8;

  sub_24A3A13C0();
  if (v10 != v6)
  {
    __break(1u);
    goto LABEL_21;
  }

  v46 = v9;
  v12 = sub_24A464FFC(v9);
  v13 = *(*(v5 + 16) + 56);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v14 = aBlock;
  aBlock = 91;
  v52 = 0xE100000000000000;
  LOBYTE(v50) = 1;

  sub_24A474894(v12, v14, &aBlock, &v50);
  swift_bridgeObjectRelease_n();
  v57 = aBlock;
  v58 = v52;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v11 = v58;
  v48 = v57;
  if (qword_27EF3EBF8 != -1)
  {
LABEL_21:
    swift_once();
  }

  v15 = sub_24A4AB630();
  sub_24A378E18(v15, qword_27EF4E260);

  v16 = sub_24A4AB600();
  v17 = sub_24A4ABCE0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_24A37BD58(a3, a4, &aBlock);
    *(v18 + 12) = 2080;
    v20 = a2;
    LOBYTE(v57) = a2 & 1;
    v21 = sub_24A4AB870();
    v23 = sub_24A37BD58(v21, v22, &aBlock);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_24A37BD58(v48, v11, &aBlock);
    _os_log_impl(&dword_24A376000, v16, v17, "👀 FMFSecureLocCtrl: %sregistering subscription %s for %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v19, -1, -1);
    MEMORY[0x24C219130](v18, -1, -1);
  }

  else
  {

    v20 = a2;
  }

  v24 = [objc_allocWithZone(MEMORY[0x277D496D0]) init];

  v25 = sub_24A4AB820();

  [v24 setClientApp_];

  if (v20)
  {
    [v24 setSubscriptionMode_];
    sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
    v26 = sub_24A4AB760();
    [v24 setPushIdentifiers_];
  }

  else
  {
    [v24 setSubscriptionMode_];
  }

  v57 = MEMORY[0x277D84F90];
  v27 = v20 & 1;

  v28 = v24;
  sub_24A4749DC(v49, v5, &v57, v20 & 1, v28);

  v29 = v28;

  if (*(v57 + 2))
  {
    sub_24A464890(v57, v20 & 1);
  }

  v30 = sub_24A4AB600();
  v31 = sub_24A4ABCE0();

  v32 = v11;
  if (os_log_type_enabled(v30, v31))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock = v34;
    *v33 = 136315394;
    LOBYTE(v50) = v27;
    v35 = sub_24A4AB870();
    v37 = v5;
    v38 = sub_24A37BD58(v35, v36, &aBlock);

    *(v33 + 4) = v38;
    v5 = v37;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_24A37BD58(v48, v32, &aBlock);
    _os_log_impl(&dword_24A376000, v30, v31, "👀 FMFSecureLocCtrl: calling SPSecureLocMgr.subscribe %s for %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v34, -1, -1);
    MEMORY[0x24C219130](v33, -1, -1);
  }

  v39 = *(v5 + 24);
  v40 = sub_24A4ABA50();
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = v27;
  *(v42 + 32) = v48;
  *(v42 + 40) = v32;
  *(v42 + 48) = v46;
  *(v42 + 56) = v49;
  v55 = sub_24A474D24;
  v56 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_24A46D100;
  v54 = &unk_285D8AEB8;
  v43 = _Block_copy(&aBlock);

  [v39 subscribeAndFetchLocationForIds:v40 context:v29 completion:v43];
  _Block_release(v43);

  if ((v27 & 1) == 0)
  {
    v50 = 0x403E000000000000;
    if (qword_27EF3EC08 != -1)
    {
      v44 = swift_once();
    }

    MEMORY[0x28223BE20](v44);
    sub_24A4ABD70();
    sub_24A46F128(v46, 0, *&aBlock);
  }
}

uint64_t sub_24A46C938(void *a1, void *a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a7;
  v37 = a8;
  v35 = a5;
  v12 = sub_24A4AB690();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A4AB6E0();
  v38 = *(v17 - 8);
  v18 = *(v38 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v33 = v13;
    v34 = v17;
    v22 = *(result + 136);
    v23 = result;
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = a4 & 1;
    v25 = v35;
    *(v24 + 32) = a2;
    *(v24 + 40) = v25;
    *(v24 + 48) = a6;
    v26 = v37;
    *(v24 + 56) = v36;
    *(v24 + 64) = v26;
    *(v24 + 72) = a1;
    aBlock[4] = sub_24A474D50;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D8AF08;
    v35 = _Block_copy(aBlock);
    v32 = v22;

    v27 = a2;

    v28 = a1;
    sub_24A4AB6B0();
    v39 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    v29 = v35;
    v30 = v32;
    MEMORY[0x24C218190](0, v20, v16, v35);
    _Block_release(v29);

    (*(v33 + 8))(v16, v12);
    (*(v38 + 8))(v20, v34);
  }

  return result;
}

void sub_24A46CC9C(uint64_t a1, char a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = a2 & 1;
  sub_24A46FFA8();
  if (a3)
  {
    v15 = a3;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v16 = sub_24A4AB630();
    sub_24A378E18(v16, qword_27EF4E260);
    v17 = a3;

    v18 = sub_24A4AB600();
    v19 = sub_24A4ABCE0();

    if (os_log_type_enabled(v18, v19))
    {
      v41 = a6;
      v20 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v20 = 136315650;
      v21 = sub_24A4AB870();
      v42 = a7;
      v23 = sub_24A37BD58(v21, v22, &v44);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_24A37BD58(a4, a5, &v44);
      *(v20 + 22) = 2080;
      swift_getErrorValue();
      v24 = sub_24A4AC310();
      v26 = sub_24A37BD58(v24, v25, &v44);

      *(v20 + 24) = v26;
      a7 = v42;
      _os_log_impl(&dword_24A376000, v18, v19, "👀 FMFSecureLocCtrl: failed SPSecureLocMgr.subscribe %s for %s: %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v40, -1, -1);
      v27 = v20;
      a6 = v41;
      MEMORY[0x24C219130](v27, -1, -1);
    }

    sub_24A46DE28(v14, 15.0);
    sub_24A465114(a6, v14);
    sub_24A46A47C(MEMORY[0x277D84F90], a7, v14);
    if ((v14 & 1) == 0)
    {
      sub_24A4657D4(a6, 0);
    }
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v28 = sub_24A4AB630();
    sub_24A378E18(v28, qword_27EF4E260);

    v29 = sub_24A4AB600();
    v30 = sub_24A4ABCE0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v43 = a7;
      v32 = swift_slowAlloc();
      v44 = v32;
      *v31 = 136315394;
      v33 = sub_24A4AB870();
      v35 = sub_24A37BD58(v33, v34, &v44);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_24A37BD58(a4, a5, &v44);
      _os_log_impl(&dword_24A376000, v29, v30, "👀 FMFSecureLocCtrl: succeeded SPSecureLocMgr.subscribe %s for %s", v31, 0x16u);
      swift_arrayDestroy();
      v36 = v32;
      a7 = v43;
      MEMORY[0x24C219130](v36, -1, -1);
      MEMORY[0x24C219130](v31, -1, -1);
    }

    v37 = [a8 locations];
    sub_24A37B428(0, &qword_27EF3FE48, 0x277D496B8);
    v38 = sub_24A4ABA70();

    [a8 expiresIn];
    sub_24A46DE28(v14, v39);
    sub_24A46A47C(v38, a7, v14);
  }
}

void sub_24A46D100(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

void sub_24A46D18C(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a3;
  v8 = a1;
  v9 = *(a1 + 16);
  if (v9)
  {
    v11 = sub_24A3A11D8(v9, 0);
    v12 = sub_24A3A1268(&aBlock, v11 + 4, v9, v8);

    sub_24A3A13C0();
    if (v12 != v9)
    {
      __break(1u);
      return;
    }

    v8 = a1;
    v7 = a3;
    v6 = a4;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = sub_24A464FFC(v11);
  v14 = *(*(v5 + 16) + 56);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v15 = aBlock;
  aBlock = 91;
  v73 = 0xE100000000000000;
  v80[0] = 1;

  sub_24A474894(v13, v15, &aBlock, v80);
  swift_bridgeObjectRelease_n();
  v78 = aBlock;
  v79 = v73;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v16 = v79;
  v65 = v78;
  if (qword_27EF3EBF8 != -1)
  {
LABEL_38:
    swift_once();
  }

  v17 = sub_24A4AB630();
  sub_24A378E18(v17, qword_27EF4E260);

  v18 = sub_24A4AB600();
  v19 = sub_24A4ABCE0();

  v20 = a2;
  v67 = v5;
  v64 = v16;
  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock = v22;
    *v21 = 136315650;
    *(v21 + 4) = sub_24A37BD58(v7, v6, &aBlock);
    v5 = 2080;
    *(v21 + 12) = 2080;
    LOBYTE(v78) = a2 & 1;
    v23 = sub_24A4AB870();
    v25 = sub_24A37BD58(v23, v24, &aBlock);

    *(v21 + 14) = v25;
    *(v21 + 22) = 2080;
    *(v21 + 24) = sub_24A37BD58(v65, v16, &aBlock);
    _os_log_impl(&dword_24A376000, v18, v19, "👀 FMFSecureLocCtrl: %sunregistering subscription %s for %s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v22, -1, -1);
    MEMORY[0x24C219130](v21, -1, -1);
  }

  v26 = [objc_allocWithZone(MEMORY[0x277D496D0]) init];

  v27 = sub_24A4AB820();

  [v26 setClientApp_];

  v7 = &off_278FE1000;
  if (a2)
  {
    [v26 setSubscriptionMode_];
    sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
    v28 = sub_24A4AB760();
    [v26 setPushIdentifiers_];
  }

  else
  {
    [v26 setSubscriptionMode_];
  }

  v16 = v8 + 56;
  v29 = 1 << *(v8 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v6 = v30 & *(v8 + 56);
  v31 = (v29 + 63) >> 6;

  v32 = 0;
  v71 = v26;
  while (v6)
  {
    v33 = v6;
LABEL_20:
    v6 = (v33 - 1) & v33;
    if (v20)
    {
      v35 = (*(v8 + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v33)))));
      v36 = *v35;
      v37 = v35[1];
      v38 = *(v67 + 16);
      swift_bridgeObjectRetain_n();

      v69 = sub_24A4493A0(v36, v37);

      v39 = [v71 pushIdentifiers];
      sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
      v40 = sub_24A4AB780();

      aBlock = v40;
      v41 = v36;
      v26 = v71;
      sub_24A4A3ADC(v69, v41, v37);
      v5 = aBlock;
      v20 = a2;
      v42 = sub_24A4AB760();

      [v71 setPushIdentifiers_];

      v8 = a1;
    }
  }

  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v34 >= v31)
    {
      break;
    }

    v33 = *(v16 + 8 * v34);
    ++v32;
    if (v33)
    {
      v32 = v34;
      goto LABEL_20;
    }
  }

  v43 = sub_24A4AB600();
  v44 = sub_24A4ABCE0();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock = v46;
    *v45 = 136315394;
    v7 = v20 & 1;
    LOBYTE(v78) = v20 & 1;
    v47 = sub_24A4AB870();
    v49 = sub_24A37BD58(v47, v48, &aBlock);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    v50 = v65;
    *(v45 + 14) = sub_24A37BD58(v65, v64, &aBlock);
    _os_log_impl(&dword_24A376000, v43, v44, "👀 FMFSecureLocCtrl: calling SPSecureLocMgr.unsubscribe %s for %s", v45, 0x16u);
    swift_arrayDestroy();
    v51 = v46;
    v26 = v71;
    MEMORY[0x24C219130](v51, -1, -1);
    MEMORY[0x24C219130](v45, -1, -1);

    v52 = v67;
  }

  else
  {

    v7 = v20 & 1;
    v52 = v67;
    v50 = v65;
  }

  v53 = *(v52 + 24);
  v54 = sub_24A4ABA50();

  v55 = swift_allocObject();
  *(v55 + 16) = v7;
  *(v55 + 24) = v50;
  *(v55 + 32) = v64;
  v76 = sub_24A474D18;
  v77 = v55;
  aBlock = MEMORY[0x277D85DD0];
  v73 = 1107296256;
  v74 = sub_24A3D65E0;
  v75 = &unk_285D8AE68;
  v5 = _Block_copy(&aBlock);

  [v53 unsubscribeForIds:v54 context:v26 completion:v5];
  _Block_release(v5);

  sub_24A46EF5C(v7);
  v56 = 1 << *(v8 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v6 = v57 & *(v8 + 56);
  v58 = (v56 + 63) >> 6;

  v59 = 0;
  if (v6)
  {
    while (1)
    {
      v60 = v59;
LABEL_33:
      v61 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v62 = (*(v8 + 48) + ((v60 << 10) | (16 * v61)));
      v5 = *v62;
      v63 = v62[1];

      sub_24A471148(v5, v63);

      if (!v6)
      {
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
LABEL_29:
    v60 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      goto LABEL_37;
    }

    if (v60 >= v58)
    {
      break;
    }

    v6 = *(v16 + 8 * v60);
    ++v59;
    if (v6)
    {
      v59 = v60;
      goto LABEL_33;
    }
  }

  sub_24A46FFA8();
}

void sub_24A46DA54(NSObject *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v8 = sub_24A4AB630();
    sub_24A378E18(v8, qword_27EF4E260);
    v9 = a1;

    v10 = sub_24A4AB600();
    v11 = sub_24A4ABCE0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v12 = 136315650;
      v14 = sub_24A4AB870();
      v16 = sub_24A37BD58(v14, v15, &v29);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_24A37BD58(a3, a4, &v29);
      *(v12 + 22) = 2080;
      swift_getErrorValue();
      v17 = sub_24A4AC310();
      v19 = sub_24A37BD58(v17, v18, &v29);

      *(v12 + 24) = v19;
      _os_log_impl(&dword_24A376000, v10, v11, "👀 FMFSecureLocCtrl: failed SPSecureLocMgr.unsubscribe %s for %s: %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v13, -1, -1);
      MEMORY[0x24C219130](v12, -1, -1);

      return;
    }

    v27 = a1;
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v20 = sub_24A4AB630();
    sub_24A378E18(v20, qword_27EF4E260);

    oslog = sub_24A4AB600();
    v21 = sub_24A4ABCE0();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 136315394;
      v24 = sub_24A4AB870();
      v26 = sub_24A37BD58(v24, v25, &v29);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_24A37BD58(a3, a4, &v29);
      _os_log_impl(&dword_24A376000, oslog, v21, "👀 FMFSecureLocCtrl: succeeded SPSecureLocMgr.unsubscribe %s for %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v23, -1, -1);
      MEMORY[0x24C219130](v22, -1, -1);

      return;
    }

    v27 = oslog;
  }
}

void sub_24A46DE28(char a1, double a2)
{
  v3 = v2;
  v6 = sub_24A4AB690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v68 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_24A4AB6E0();
  v67 = *(v69 - 8);
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v12 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    goto LABEL_5;
  }

  v13 = v3[4];

  v14 = *(v13 + 16);
  if (v14)
  {
    while (1)
    {
      v15 = sub_24A3A11D8(v14, 0);
      v16 = sub_24A3A1268(&aBlock, v15 + 4, v14, v13);
      sub_24A3A13C0();
      if (v16 == v14)
      {
        break;
      }

      __break(1u);
LABEL_5:
      v17 = v3[7];

      v19 = sub_24A462638(v18);
      v13 = sub_24A3999E0(v19);

      v14 = *(v13 + 16);
      if (!v14)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:

    v15 = MEMORY[0x277D84F90];
  }

  v20 = a1 & 1;
  v21 = sub_24A464FFC(v15);

  v22 = *(v3[2] + 56);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v23 = aBlock;
  aBlock = 91;
  v74 = 0xE100000000000000;
  LOBYTE(v72) = 1;

  sub_24A474894(v21, v23, &aBlock, &v72);
  swift_bridgeObjectRelease_n();
  v79 = aBlock;
  v80 = v74;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v24 = v80;
  v70 = v79;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v25 = sub_24A4AB630();
  v26 = sub_24A378E18(v25, qword_27EF4E260);

  v27 = sub_24A4AB600();
  v28 = sub_24A4ABCE0();

  v29 = os_log_type_enabled(v27, v28);
  v71 = v20;
  if (!v29)
  {

    if (a2 <= 0.0)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v65[1] = v26;
  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  aBlock = v31;
  *v30 = 134218498;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    return;
  }

  *(v30 + 4) = a2;
  *(v30 + 12) = 2080;
  LOBYTE(v79) = v20;
  v66 = v24;
  v32 = v31;
  v33 = sub_24A4AB870();
  v35 = v3;
  v36 = v6;
  v37 = sub_24A37BD58(v33, v34, &aBlock);

  *(v30 + 14) = v37;
  v6 = v36;
  v3 = v35;
  *(v30 + 22) = 2080;
  *(v30 + 24) = sub_24A37BD58(v70, v66, &aBlock);
  _os_log_impl(&dword_24A376000, v27, v28, "👀 FMFSecureLocCtrl: setting up %ld-sec %s re-subscription timer for %s)", v30, 0x20u);
  swift_arrayDestroy();
  v38 = v32;
  v24 = v66;
  MEMORY[0x24C219130](v38, -1, -1);
  MEMORY[0x24C219130](v30, -1, -1);

  if (a2 <= 0.0)
  {
LABEL_14:

    v39 = sub_24A4AB600();
    v40 = sub_24A4ABCE0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock = v42;
      *v41 = 136315394;
      LOBYTE(v79) = v71;
      v43 = sub_24A4AB870();
      v45 = sub_24A37BD58(v43, v44, &aBlock);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      v46 = sub_24A37BD58(v70, v24, &aBlock);

      *(v41 + 14) = v46;
      _os_log_impl(&dword_24A376000, v39, v40, "👀 FMFSecureLocCtrl: discarding (interval too short) %s re-subscription timer for %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v42, -1, -1);
      MEMORY[0x24C219130](v41, -1, -1);
    }

    else
    {
    }

    return;
  }

LABEL_17:

  swift_beginAccess();
  v47 = v3[19];
  v48 = v71;
  if (*(v47 + 16))
  {
    v49 = sub_24A43014C(v71);
    if (v50)
    {
      [*(*(v47 + 56) + 8 * v49) invalidate];
    }
  }

  v51 = swift_allocObject();
  swift_weakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  *(v52 + 24) = v48;
  v77 = sub_24A474D00;
  v78 = v52;
  aBlock = MEMORY[0x277D85DD0];
  v74 = 1107296256;
  v75 = sub_24A46EEF4;
  v76 = &unk_285D8AD78;
  v53 = _Block_copy(&aBlock);
  v54 = objc_opt_self();

  v55 = [v54 timerWithTimeInterval:0 repeats:v53 block:a2];
  _Block_release(v53);

  swift_beginAccess();
  v56 = v55;
  v57 = v3[19];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = v3[19];
  v3[19] = 0x8000000000000000;
  sub_24A430F00(v56, v48, isUniquelyReferenced_nonNull_native);
  v3[19] = v72;
  swift_endAccess();
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  v59 = sub_24A4ABD60();
  v60 = swift_allocObject();
  *(v60 + 16) = v56;
  v77 = sub_24A4752AC;
  v78 = v60;
  aBlock = MEMORY[0x277D85DD0];
  v74 = 1107296256;
  v75 = sub_24A388564;
  v76 = &unk_285D8ADC8;
  v61 = _Block_copy(&aBlock);
  v62 = v56;

  sub_24A4AB6B0();
  aBlock = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
  v63 = v12;
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v64 = v68;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v63, v64, v61);
  _Block_release(v61);

  (*(v7 + 8))(v64, v6);
  (*(v67 + 8))(v63, v69);
}

uint64_t sub_24A46E760(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_24A4AB690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A4AB6E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = v5;
    v15 = *(result + 136);
    v16 = result;
    v17 = swift_allocObject();
    *(v17 + 16) = a3 & 1;
    *(v17 + 24) = v16;
    v21[1] = v16;
    aBlock[4] = sub_24A474D0C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D8AE18;
    v18 = _Block_copy(aBlock);
    v19 = v15;
    v22 = v9;
    v20 = v19;

    sub_24A4AB6B0();
    v24 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v13, v8, v18);
    _Block_release(v18);

    (*(v23 + 8))(v8, v4);
    (*(v10 + 8))(v13, v22);
  }

  return result;
}

uint64_t sub_24A46EA74(char a1, void *a2)
{
  v2 = a2;
  if (a1)
  {
    v4 = a2[7];

    v6 = sub_24A462638(v5);
    v3 = sub_24A3999E0(v6);
  }

  else
  {
    v3 = a2[4];
  }

  v7 = *(v3 + 16);
  v38 = v3;
  if (v7)
  {
    v8 = sub_24A3A11D8(v7, 0);
    v9 = sub_24A3A1268(&v43, v8 + 4, v7, v3);

    result = sub_24A3A13C0();
    if (v9 != v7)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v11 = a1 & 1;
  v12 = sub_24A464FFC(v8);

  v13 = *(v2[2] + 56);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v14 = v43;
  v43 = 91;
  v44 = 0xE100000000000000;
  v42 = 1;

  sub_24A474894(v12, v14, &v43, &v42);
  swift_bridgeObjectRelease_n();
  v40 = v43;
  v41 = v44;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v15 = sub_24A4AB630();
  sub_24A378E18(v15, qword_27EF4E260);

  v16 = sub_24A4AB600();
  v17 = sub_24A4ABCE0();

  if (os_log_type_enabled(v16, v17))
  {
    v37 = v2;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v43 = v19;
    *v18 = 136315394;
    v20 = sub_24A4AB870();
    v22 = sub_24A37BD58(v20, v21, &v43);

    *(v18 + 4) = v22;
    v11 = a1 & 1;
    *(v18 + 12) = 2080;
    v23 = sub_24A37BD58(v40, v41, &v43);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_24A376000, v16, v17, "👀 FMFSecureLocCtrl: 🔥 firing up %s re-subscription timer for %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v19, -1, -1);
    v24 = v18;
    v2 = v37;
    MEMORY[0x24C219130](v24, -1, -1);
  }

  else
  {
  }

  v25 = *(v38 + 16);
  if (!v25)
  {

    if (a1)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v26 = sub_24A3A11D8(*(v38 + 16), 0);
  v27 = sub_24A3A1268(&v43, v26 + 4, v25, v38);
  result = sub_24A3A13C0();
  if (v27 == v25)
  {
    sub_24A465E4C(v26, v11);

    if (a1)
    {
LABEL_16:
      v28 = v2[7];

      v30 = sub_24A462638(v29);
      v31 = sub_24A3999E0(v30);

      v32 = v2[8];
      v33 = v2[9];

      v34 = v31;
      v35 = 1;
LABEL_19:
      sub_24A46C194(v34, v35, 2975090, 0xE300000000000000, v32, v33);
    }

LABEL_18:
    v36 = v2[4];
    v32 = v2[5];
    v33 = v2[6];

    v35 = 0;
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_24A46EEF4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_24A46EF5C(char a1)
{
  v2 = v1;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A4AB630();
  sub_24A378E18(v4, qword_27EF4E260);
  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCE0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = sub_24A4AB870();
    v11 = sub_24A37BD58(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24A376000, v5, v6, "👀 FMFSecureLocCtrl: cancelling %s re-subscription timer for all", v7, 0xCu);
    sub_24A37EEE0(v8);
    MEMORY[0x24C219130](v8, -1, -1);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  swift_beginAccess();
  v12 = *(v2 + 152);
  if (*(v12 + 16))
  {
    v13 = sub_24A43014C(a1 & 1);
    if (v14)
    {
      [*(*(v12 + 56) + 8 * v13) invalidate];
    }
  }

  swift_beginAccess();
  sub_24A4A3A1C(0, a1 & 1);
  return swift_endAccess();
}

void sub_24A46F128(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_24A4AB690();
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v8);
  v57 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A4AB6E0();
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A464FFC(a1);
  v16 = *(*(v3 + 16) + 56);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v17 = aBlock;
  aBlock = 91;
  v60 = 0xE100000000000000;
  v67[0] = 1;

  sub_24A474894(v15, v17, &aBlock, v67);
  swift_bridgeObjectRelease_n();
  v65 = aBlock;
  v66 = v60;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v18 = v66;
  v58 = v65;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v19 = sub_24A4AB630();
  v20 = sub_24A378E18(v19, qword_27EF4E260);

  v54 = v20;
  v21 = sub_24A4AB600();
  v22 = sub_24A4ABCE0();

  if (os_log_type_enabled(v21, v22))
  {
    v52 = a1;
    v53 = v11;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock = v24;
    *v23 = 134218498;
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (a3 > -9.22337204e18)
    {
      if (a3 < 9.22337204e18)
      {
        *(v23 + 4) = a3;
        *(v23 + 12) = 2080;
        LOBYTE(v65) = a2 & 1;
        v51 = v24;
        v25 = sub_24A4AB870();
        v27 = v4;
        v28 = sub_24A37BD58(v25, v26, &aBlock);

        *(v23 + 14) = v28;
        v4 = v27;
        *(v23 + 22) = 2080;
        *(v23 + 24) = sub_24A37BD58(v58, v18, &aBlock);
        _os_log_impl(&dword_24A376000, v21, v22, "👀 FMFSecureLocCtrl: setting up %ld-sec no-result-when-subscribing %s->legacy fallback timer for %s", v23, 0x20u);
        v29 = v51;
        swift_arrayDestroy();
        MEMORY[0x24C219130](v29, -1, -1);
        MEMORY[0x24C219130](v23, -1, -1);

        a1 = v52;
        v11 = v53;
        goto LABEL_9;
      }

LABEL_17:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_9:
  [*(v4 + 120) invalidate];
  if (a3 <= 0.0)
  {

    v42 = sub_24A4AB600();
    v43 = sub_24A4ABCE0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock = v45;
      *v44 = 136315394;
      LOBYTE(v65) = a2 & 1;
      v46 = sub_24A4AB870();
      v48 = sub_24A37BD58(v46, v47, &aBlock);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      v49 = sub_24A37BD58(v58, v18, &aBlock);

      *(v44 + 14) = v49;
      _os_log_impl(&dword_24A376000, v42, v43, "👀 FMFSecureLocCtrl: discarding (interval too short) no-result-when-subscribing %s->legacy fallback timer for %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v45, -1, -1);
      MEMORY[0x24C219130](v44, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = a1;
    *(v31 + 32) = a2 & 1;
    *(v31 + 40) = v58;
    *(v31 + 48) = v18;
    v63 = sub_24A474CD8;
    v64 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_24A46EEF4;
    v62 = &unk_285D8AC88;
    v32 = _Block_copy(&aBlock);
    v33 = objc_opt_self();

    v34 = [v33 timerWithTimeInterval:0 repeats:v32 block:a3];
    _Block_release(v32);

    v35 = *(v4 + 120);
    *(v4 + 120) = v34;
    v36 = v34;

    sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
    v37 = sub_24A4ABD60();
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    v63 = sub_24A4752AC;
    v64 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_24A388564;
    v62 = &unk_285D8ACD8;
    v39 = _Block_copy(&aBlock);
    v40 = v36;

    sub_24A4AB6B0();
    aBlock = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v41 = v57;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v14, v41, v39);
    _Block_release(v39);

    (*(v55 + 8))(v41, v8);
    (*(v56 + 8))(v14, v11);
  }
}

uint64_t sub_24A46F94C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_24A4AB690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A4AB6E0();
  v28 = *(v15 - 8);
  v16 = *(v28 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = v11;
    v20 = *(result + 136);
    v21 = result;
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = a3;
    *(v22 + 32) = a4 & 1;
    *(v22 + 40) = a5;
    *(v22 + 48) = a6;
    aBlock[4] = sub_24A474CE8;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D8AD28;
    v23 = _Block_copy(aBlock);
    v24 = v20;

    sub_24A4AB6B0();
    v29 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
    v26 = v15;
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v18, v14, v23);
    _Block_release(v23);

    (*(v27 + 8))(v14, v10);
    (*(v28 + 8))(v18, v26);
  }

  return result;
}

uint64_t sub_24A46FC7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v10 = *(a1 + 16);

  v11 = sub_24A4495F8(a2);

  v13 = sub_24A464FFC(v12);

  v14 = *(*(a1 + 16) + 56);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v15 = v30;
  v30 = 91;
  v31 = 0xE100000000000000;
  v29 = 1;

  sub_24A474894(v13, v15, &v30, &v29);
  swift_bridgeObjectRelease_n();
  v27 = v30;
  v28 = v31;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A4AB630();
  sub_24A378E18(v16, qword_27EF4E260);

  v17 = sub_24A4AB600();
  v18 = sub_24A4ABCE0();

  v26 = a3;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315650;
    v21 = sub_24A4AB870();
    v23 = sub_24A37BD58(v21, v22, &v30);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = sub_24A37BD58(v27, v28, &v30);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2080;
    *(v19 + 24) = sub_24A37BD58(a4, a5, &v30);
    _os_log_impl(&dword_24A376000, v17, v18, "👀 FMFSecureLocCtrl: 🔥 firing up no-result-when-subscribing (spd crash?) %s->legacy fallback timer for %s from %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v20, -1, -1);
    MEMORY[0x24C219130](v19, -1, -1);
  }

  else
  {
  }

  if (v11[2])
  {
    sub_24A4657D4(v11, v26 & 1);
  }
}

void sub_24A46FFA8()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = sub_24A4AB870();
    v9 = sub_24A37BD58(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24A376000, v3, v4, "👀 FMFSecureLocCtrl: cancelling no-result-when-subscribing %s->legacy fallback timer for all", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  [*(v1 + 120) invalidate];
  v10 = *(v1 + 120);
  *(v1 + 120) = 0;
}

void sub_24A470124(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v5 = v4;
  v69 = a3;
  v9 = sub_24A4AB690();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v65 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_24A4AB6E0();
  v64 = *(v66 - 8);
  v13 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  v15 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A3C9CEC(&qword_27EF3F4B8, &qword_24A4B5730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A4B4E10;
  v67 = a1;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v17 = *(*(v5 + 16) + 56);
  v68 = a2;

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v18 = aBlock;
  aBlock = 91;
  v72 = 0xE100000000000000;
  LOBYTE(v70) = 1;

  sub_24A474894(inited, v18, &aBlock, &v70);
  swift_bridgeObjectRelease_n();
  v77 = aBlock;
  v78 = v72;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  swift_setDeallocating();
  sub_24A37EF2C(inited + 32, &unk_27EF3F4C0, &qword_24A4B7E60);

  v20 = v77;
  v19 = v78;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v21 = sub_24A4AB630();
  v22 = sub_24A378E18(v21, qword_27EF4E260);

  v23 = sub_24A4AB600();
  v24 = sub_24A4ABCE0();

  if (!os_log_type_enabled(v23, v24))
  {

    if (a4 <= 0.0)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v61[1] = v22;
  v62 = v5;
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  aBlock = v26;
  *v25 = 134218498;
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return;
  }

  *(v25 + 4) = a4;
  *(v25 + 12) = 2080;
  LOBYTE(v77) = v69 & 1;
  v63 = v19;
  v27 = v26;
  v28 = sub_24A4AB870();
  v30 = v20;
  v31 = sub_24A37BD58(v28, v29, &aBlock);

  *(v25 + 14) = v31;
  v20 = v30;
  *(v25 + 22) = 2080;
  *(v25 + 24) = sub_24A37BD58(v30, v63, &aBlock);
  _os_log_impl(&dword_24A376000, v23, v24, "👀 FMFSecureLocCtrl: setting up %ld-sec no-location %s->legacy fallback timer for %s", v25, 0x20u);
  swift_arrayDestroy();
  v32 = v27;
  v19 = v63;
  MEMORY[0x24C219130](v32, -1, -1);
  MEMORY[0x24C219130](v25, -1, -1);

  v5 = v62;
  if (a4 <= 0.0)
  {
LABEL_8:

    v33 = sub_24A4AB600();
    v34 = sub_24A4ABCE0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock = v36;
      *v35 = 136315394;
      LOBYTE(v77) = v69 & 1;
      v37 = sub_24A4AB870();
      v39 = sub_24A37BD58(v37, v38, &aBlock);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v40 = sub_24A37BD58(v20, v19, &aBlock);

      *(v35 + 14) = v40;
      _os_log_impl(&dword_24A376000, v33, v34, "👀 FMFSecureLocCtrl: discarding (interval too short) no-location %s->legacy fallback timer for %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v36, -1, -1);
      MEMORY[0x24C219130](v35, -1, -1);
    }

    else
    {
    }

    return;
  }

LABEL_11:

  swift_beginAccess();
  v41 = *(v5 + 104);
  if (*(v41 + 16))
  {
    v42 = *(v5 + 104);

    v43 = sub_24A39B2C8(v67, v68);
    if (v44)
    {
      v45 = *(*(v41 + 56) + 8 * v43);

      [v45 invalidate];
    }

    else
    {
    }
  }

  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  v48 = v67;
  *(v47 + 16) = v46;
  *(v47 + 24) = v48;
  v49 = v68;
  *(v47 + 32) = v68;
  *(v47 + 40) = v69 & 1;
  v75 = sub_24A474CB8;
  v76 = v47;
  aBlock = MEMORY[0x277D85DD0];
  v72 = 1107296256;
  v73 = sub_24A46EEF4;
  v74 = &unk_285D8AB98;
  v50 = _Block_copy(&aBlock);
  v51 = objc_opt_self();

  v52 = [v51 timerWithTimeInterval:0 repeats:v50 block:a4];
  _Block_release(v50);

  swift_beginAccess();

  v53 = v52;
  v54 = *(v5 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = *(v5 + 104);
  *(v5 + 104) = 0x8000000000000000;
  sub_24A430D58(v53, v48, v49, isUniquelyReferenced_nonNull_native);

  *(v5 + 104) = v70;
  swift_endAccess();
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  v56 = sub_24A4ABD60();
  v57 = swift_allocObject();
  *(v57 + 16) = v53;
  v75 = sub_24A4752AC;
  v76 = v57;
  aBlock = MEMORY[0x277D85DD0];
  v72 = 1107296256;
  v73 = sub_24A388564;
  v74 = &unk_285D8ABE8;
  v58 = _Block_copy(&aBlock);
  v59 = v53;

  sub_24A4AB6B0();
  aBlock = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v60 = v65;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v15, v60, v58);
  _Block_release(v58);

  (*(v10 + 8))(v60, v9);
  (*(v64 + 8))(v15, v66);
}

uint64_t sub_24A470AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_24A4AB690();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A4AB6E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = v9;
    v19 = *(result + 136);
    v20 = result;
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = a3;
    v26 = v20;
    *(v21 + 32) = a4;
    *(v21 + 40) = a5 & 1;
    aBlock[4] = sub_24A474CC8;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D8AC38;
    v22 = _Block_copy(aBlock);
    v23 = v19;

    sub_24A4AB6B0();
    v28 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
    v25 = v13;
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v17, v12, v22);
    _Block_release(v22);

    (*(v27 + 8))(v12, v8);
    (*(v14 + 8))(v17, v25);
  }

  return result;
}

uint64_t sub_24A470DDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a1 + 16);
  sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A4B4E10;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  v10 = sub_24A4495F8(inited);

  swift_setDeallocating();
  v11 = *(inited + 16);
  swift_arrayDestroy();

  v13 = sub_24A464FFC(v12);

  v14 = *(*(a1 + 16) + 56);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v15 = v31;
  v31 = 91;
  v32 = 0xE100000000000000;
  v30 = 1;

  sub_24A474894(v13, v15, &v31, &v30);
  swift_bridgeObjectRelease_n();
  v28 = v31;
  v29 = v32;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A4AB630();
  sub_24A378E18(v16, qword_27EF4E260);

  v17 = sub_24A4AB600();
  v18 = sub_24A4ABCE0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v20;
    *v19 = 136315394;
    v21 = a4;
    v22 = sub_24A4AB870();
    v24 = sub_24A37BD58(v22, v23, &v31);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = sub_24A37BD58(v28, v29, &v31);

    *(v19 + 14) = v25;
    _os_log_impl(&dword_24A376000, v17, v18, "👀 FMFSecureLocCtrl: 🔥 firing up no-location %s->legacy fallback timer for %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v20, -1, -1);
    MEMORY[0x24C219130](v19, -1, -1);
  }

  else
  {
    v21 = a4;
  }

  if (v10[2])
  {

    sub_24A4657D4(v26, v21 & 1);

    sub_24A465114(v10, v21 & 1);
  }
}

uint64_t sub_24A471148(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_24A3C9CEC(&qword_27EF3F4B8, &qword_24A4B5730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A4B4E10;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v7 = *(*(v2 + 16) + 56);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v8 = v29;
  v29 = 91;
  v30 = 0xE100000000000000;
  v31[0] = 1;

  sub_24A474894(inited, v8, &v29, v31);
  swift_bridgeObjectRelease_n();
  v27 = v29;
  v28 = v30;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  swift_setDeallocating();
  sub_24A37EF2C(inited + 32, &unk_27EF3F4C0, &qword_24A4B7E60);

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A4AB630();
  sub_24A378E18(v9, qword_27EF4E260);

  v10 = sub_24A4AB600();
  v11 = sub_24A4ABCE0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = a2;
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315394;
    v14 = sub_24A4AB870();
    v16 = a1;
    v17 = sub_24A37BD58(v14, v15, &v29);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = sub_24A37BD58(v27, v28, &v29);

    *(v12 + 14) = v18;
    a1 = v16;
    _os_log_impl(&dword_24A376000, v10, v11, "👀 FMFSecureLocCtrl: cancelling no-location %s->legacy fallback timer for %s", v12, 0x16u);
    swift_arrayDestroy();
    v19 = v13;
    a2 = v26;
    MEMORY[0x24C219130](v19, -1, -1);
    MEMORY[0x24C219130](v12, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v20 = *(v3 + 104);
  if (*(v20 + 16))
  {
    v21 = *(v3 + 104);

    v22 = sub_24A39B2C8(a1, a2);
    if (v23)
    {
      v24 = *(*(v20 + 56) + 8 * v22);

      [v24 invalidate];
    }

    else
    {
    }
  }

  swift_beginAccess();

  sub_24A4A38DC(0, a1, a2);
  return swift_endAccess();
}

void sub_24A4714E4(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v6 = v5;
  v69 = a4;
  v63 = a3;
  v60 = sub_24A4AB690();
  v64 = *(v60 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v60);
  v66 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24A4AB6E0();
  v65 = *(v62 - 8);
  v12 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A3C9CEC(&qword_27EF3F4B8, &qword_24A4B5730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A4B4E10;
  v67 = a1;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v15 = *(*(v6 + 16) + 56);
  v68 = a2;
  swift_bridgeObjectRetain_n();

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v16 = aBlock;
  aBlock = 91;
  v72 = 0xE100000000000000;
  LOBYTE(v70) = 1;

  sub_24A474894(inited, v16, &aBlock, &v70);
  swift_bridgeObjectRelease_n();
  v77 = aBlock;
  v78 = v72;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  swift_setDeallocating();
  sub_24A37EF2C(inited + 32, &unk_27EF3F4C0, &qword_24A4B7E60);

  v18 = v77;
  v17 = v78;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v19 = sub_24A4AB630();
  sub_24A378E18(v19, qword_27EF4E260);

  v20 = sub_24A4AB600();
  v21 = sub_24A4ABCE0();

  if (!os_log_type_enabled(v20, v21))
  {
    goto LABEL_8;
  }

  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  aBlock = v23;
  *v22 = 134218498;
  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a5 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a5 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v24 = v23;
  *(v22 + 4) = a5;
  *(v22 + 12) = 2080;
  LOBYTE(v77) = v69 & 1;
  v25 = sub_24A4AB870();
  v27 = v18;
  v28 = sub_24A37BD58(v25, v26, &aBlock);

  *(v22 + 14) = v28;
  v18 = v27;
  *(v22 + 22) = 2080;
  *(v22 + 24) = sub_24A37BD58(v27, v17, &aBlock);
  _os_log_impl(&dword_24A376000, v20, v21, "👀 FMFSecureLocCtrl: setting up %ld-sec %s pause timer for %s", v22, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x24C219130](v24, -1, -1);
  MEMORY[0x24C219130](v22, -1, -1);
LABEL_8:

  v29 = v68;
  if (a5 <= 0.0)
  {

    v35 = sub_24A4AB600();
    v36 = sub_24A4ABCE0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136315394;
      LOBYTE(v77) = v69 & 1;
      v39 = sub_24A4AB870();
      v41 = sub_24A37BD58(v39, v40, &aBlock);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      v42 = sub_24A37BD58(v18, v17, &aBlock);

      *(v37 + 14) = v42;
      _os_log_impl(&dword_24A376000, v35, v36, "👀 FMFSecureLocCtrl: discarding (interval too short) %s pause timer for %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v38, -1, -1);
      MEMORY[0x24C219130](v37, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    v30 = *(v6 + 96);
    if (*(v30 + 16))
    {
      v31 = *(v6 + 96);

      v32 = sub_24A39B2C8(v67, v29);
      if (v33)
      {
        v34 = *(*(v30 + 56) + 8 * v32);

        [v34 invalidate];
      }

      else
      {
      }
    }

    v43 = swift_allocObject();
    swift_weakInit();
    v44 = swift_allocObject();
    *(v44 + 16) = v69 & 1;
    *(v44 + 24) = v18;
    *(v44 + 32) = v17;
    v45 = v67;
    *(v44 + 40) = v43;
    *(v44 + 48) = v45;
    *(v44 + 56) = v29;
    v46 = v63;
    *(v44 + 64) = v63 & 1;
    *(v44 + 65) = BYTE1(v46) & 1;
    *(v44 + 66) = BYTE2(v46) & 1;
    v75 = sub_24A474940;
    v76 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v72 = 1107296256;
    v73 = sub_24A46EEF4;
    v74 = &unk_285D8AA58;
    v47 = _Block_copy(&aBlock);
    v48 = objc_opt_self();

    v49 = [v48 timerWithTimeInterval:0 repeats:v47 block:a5];
    _Block_release(v47);

    swift_beginAccess();
    v50 = v49;
    v51 = *(v6 + 96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v6 + 96);
    *(v6 + 96) = 0x8000000000000000;
    sub_24A430D58(v50, v45, v29, isUniquelyReferenced_nonNull_native);

    *(v6 + 96) = v70;
    swift_endAccess();
    sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
    v53 = sub_24A4ABD60();
    v54 = swift_allocObject();
    *(v54 + 16) = v50;
    v75 = sub_24A474980;
    v76 = v54;
    aBlock = MEMORY[0x277D85DD0];
    v72 = 1107296256;
    v73 = sub_24A388564;
    v74 = &unk_285D8AAA8;
    v55 = _Block_copy(&aBlock);
    v56 = v50;

    v57 = v61;
    sub_24A4AB6B0();
    aBlock = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v58 = v66;
    v59 = v60;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v57, v58, v55);
    _Block_release(v55);

    (*(v64 + 8))(v58, v59);
    (*(v65 + 8))(v57, v62);
  }
}

uint64_t sub_24A471E80(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v46 = a7;
  v44 = a6;
  v12 = sub_24A4AB690();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v48 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_24A4AB6E0();
  v47 = *(v49 - 8);
  v16 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v19 = sub_24A4AB630();
  sub_24A378E18(v19, qword_27EF4E260);

  v20 = sub_24A4AB600();
  v21 = sub_24A4ABCE0();

  v22 = os_log_type_enabled(v20, v21);
  v45 = a2;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v42 = a8;
    v24 = v23;
    v25 = swift_slowAlloc();
    v43 = v13;
    v41 = v12;
    v26 = v25;
    aBlock[0] = v25;
    *v24 = 136315394;
    v52 = a2 & 1;
    v27 = sub_24A4AB870();
    v29 = a3;
    v30 = sub_24A37BD58(v27, v28, aBlock);

    *(v24 + 4) = v30;
    a3 = v29;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_24A37BD58(v29, a4, aBlock);
    _os_log_impl(&dword_24A376000, v20, v21, "👀 FMFSecureLocCtrl: 🔥 firing up %s pause timer for %s", v24, 0x16u);
    swift_arrayDestroy();
    v31 = v26;
    v12 = v41;
    v13 = v43;
    MEMORY[0x24C219130](v31, -1, -1);
    v32 = v24;
    a8 = v42;
    MEMORY[0x24C219130](v32, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v34 = *(result + 136);
    v35 = result;
    v36 = swift_allocObject();
    v37 = v44;
    *(v36 + 16) = v35;
    *(v36 + 24) = v37;
    *(v36 + 32) = v46;
    *(v36 + 40) = a8 & 1;
    *(v36 + 41) = BYTE1(a8) & 1;
    *(v36 + 42) = BYTE2(a8) & 1;
    *(v36 + 43) = v45 & 1;
    *(v36 + 48) = a3;
    *(v36 + 56) = a4;
    aBlock[4] = sub_24A47499C;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D8AAF8;
    v38 = _Block_copy(aBlock);

    v39 = v34;

    sub_24A4AB6B0();
    v50 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v40 = v48;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v18, v40, v38);
    _Block_release(v38);

    (*(v13 + 8))(v40, v12);
    (*(v47 + 8))(v18, v49);
  }

  return result;
}

uint64_t sub_24A472358(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, unint64_t a7)
{
  v63 = a7;
  v62 = a6;
  v61 = a5;
  v64 = a4;
  v10 = sub_24A4AB690();
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = *(v69 + 64);
  MEMORY[0x28223BE20](v10);
  v68 = &v60[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_24A4AB6E0();
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = *(v66 + 64);
  MEMORY[0x28223BE20](v13);
  v65 = &v60[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(a1 + 7);
  v19 = *(v16 + 56);
  v18 = v16 + 56;
  v17 = v19;
  v20 = 1 << *(*(a1 + 7) + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v77 = *(a1 + 7);

  v24 = 0;
  v25 = 0;
  v75 = a2;
  v76 = a1;
  while (1)
  {
    v26 = v24;
    if (!v22)
    {
      break;
    }

    ++v24;
    if (__OFADD__(v26, 1))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      swift_once();
      goto LABEL_26;
    }

LABEL_6:
    v79 = v26;
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v28 = (*(v77 + 48) + 24 * (v27 | (v25 << 6)));
    v29 = *v28 == a2 && v28[1] == a3;
    if (v29 || (sub_24A4AC270() & 1) != 0)
    {
      v78 = v24;
      a2 = *(a1 + 7);
      v30 = *(a2 + 16);
      if (v30)
      {
        sub_24A3C9CEC(&qword_27EF3F558, &unk_24A4B5790);
        v31 = swift_allocObject();
        v32 = j__malloc_size(v31);
        v31[2] = v30;
        v31[3] = 2 * ((v32 - 32) / 24);
        v33 = sub_24A40C270(&aBlock, (v31 + 4), v30, a2);
        v73 = v82;
        v74 = v33;
        a1 = v83;
        v71 = v85;
        v72 = v84;

        sub_24A3A13C0();
        if (v74 != v30)
        {
          goto LABEL_32;
        }
      }

      else
      {

        v31 = MEMORY[0x277D84F90];
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a2 = v75;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_24A473E50(v31);
      }

      a1 = v76;
      if (v79 >= v31[2])
      {
        goto LABEL_31;
      }

      v36 = &v31[3 * v79];
      v37 = v36[5];
      v36[4] = a2;
      v36[5] = a3;
      *(v36 + 24) = 256;
      *(v36 + 50) = 0;

      v38 = sub_24A489F6C(v31);

      v39 = *(a1 + 7);
      *(a1 + 7) = v38;

      v24 = v78;
    }
  }

  while (1)
  {
    v34 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v34 >= v23)
    {
      break;
    }

    v22 = *(v18 + 8 * v34);
    ++v25;
    if (v22)
    {
      v25 = v34;
      ++v24;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_30;
      }

      goto LABEL_6;
    }
  }

  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_33;
  }

LABEL_26:
  v40 = sub_24A4AB630();
  sub_24A378E18(v40, qword_27EF4E260);
  v41 = v63;

  v42 = sub_24A4AB600();
  v43 = sub_24A4ABCE0();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = a2;
    v46 = swift_slowAlloc();
    aBlock = v46;
    *v44 = 136315394;
    LOBYTE(v80) = v61 & 1;
    v47 = sub_24A4AB870();
    v49 = sub_24A37BD58(v47, v48, &aBlock);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_24A37BD58(v62, v41, &aBlock);
    _os_log_impl(&dword_24A376000, v42, v43, "👀 FMFSecureLocCtrl: telling FMFManager pausing for %s for %s", v44, 0x16u);
    swift_arrayDestroy();
    v50 = v46;
    a2 = v45;
    MEMORY[0x24C219130](v50, -1, -1);
    MEMORY[0x24C219130](v44, -1, -1);
  }

  v51 = *(a1 + 18);
  v52 = swift_allocObject();
  *(v52 + 16) = a1;
  *(v52 + 24) = a2;
  *(v52 + 32) = a3;
  v53 = v64;
  *(v52 + 40) = v64 & 1;
  *(v52 + 41) = BYTE1(v53) & 1;
  *(v52 + 42) = BYTE2(v53) & 1;
  v85 = sub_24A474CA0;
  v86 = v52;
  aBlock = MEMORY[0x277D85DD0];
  v82 = 1107296256;
  v83 = sub_24A388564;
  v84 = &unk_285D8AB48;
  v54 = _Block_copy(&aBlock);

  v55 = v51;

  v56 = v65;
  sub_24A4AB6B0();
  v80 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v57 = v68;
  v58 = v70;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v56, v57, v54);
  _Block_release(v54);

  (*(v69 + 8))(v57, v58);
  (*(v66 + 8))(v56, v67);
}

uint64_t sub_24A472A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A4B4E10;
    *(inited + 32) = a2;
    *(inited + 40) = a3;

    sub_24A440BE4(inited);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    return sub_24A406964(inited + 32);
  }

  return result;
}

void sub_24A472AD8(uint64_t a1)
{
  v2 = [objc_opt_self() currentRunLoop];
  [v2 addTimer:a1 forMode:*MEMORY[0x277CBE738]];
}

uint64_t sub_24A472B54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  v7 = *(v0 + 88);

  v8 = *(v0 + 96);

  v9 = *(v0 + 104);

  v10 = *(v0 + 112);

  v11 = *(v0 + 128);

  v12 = *(v0 + 152);

  sub_24A3C8470(v0 + 168);
  sub_24A3C8470(v0 + 184);

  return v0;
}

uint64_t sub_24A472C04()
{
  sub_24A472B54();

  return swift_deallocClassInstance();
}

__n128 sub_24A472C6C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_24A472C80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_24A472CC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A472D20()
{
  result = qword_27EF40BC0;
  if (!qword_27EF40BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40BC0);
  }

  return result;
}

unint64_t sub_24A472D78()
{
  result = qword_27EF40BC8;
  if (!qword_27EF40BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40BC8);
  }

  return result;
}

uint64_t sub_24A472DCC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_24A473468(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_24A472EF8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_24A4AC360();

    sub_24A4AB8F0();
    v24 = sub_24A4AC3A0();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_24A4AC270() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_24A4737DC(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_24A4AC360();

            sub_24A4AB8F0();
            v43 = sub_24A4AC3A0();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_24A4AC270() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_24A4735A4(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x24C219130](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_24A3A13C0();
    goto LABEL_53;
  }

  result = MEMORY[0x24C219130](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_24A473468(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_24A4AC360();
  sub_24A4AB8F0();
  v7 = sub_24A4AC3A0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_24A4AC270() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24A487BF4();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_24A473A00(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_24A4735A4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_24A4737DC(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_24A4AC360();

        sub_24A4AB8F0();
        v20 = sub_24A4AC3A0();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_24A4AC270() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_24A4737DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_24A3C9CEC(&unk_27EF404B0, &qword_24A4BA6C8);
  result = sub_24A4ABF10();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_24A4AC360();

    sub_24A4AB8F0();
    result = sub_24A4AC3A0();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_24A473A00(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_24A4ABEB0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_24A4AC360();

        sub_24A4AB8F0();
        v15 = sub_24A4AC3A0();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_24A473BC4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_24A4ABEB0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      v31 = v3;
      v32 = v4;
      do
      {
        v11 = 24 * v6;
        v12 = *(v3 + 40);
        v13 = *(v3 + 48) + 24 * v6;
        v14 = v7;
        v15 = *v13;
        v16 = *(v13 + 8);
        v17 = *(v13 + 16);
        v18 = *(v13 + 17);
        v19 = *(v13 + 18);
        v20 = v2;
        v21 = v10;
        sub_24A4AC360();

        sub_24A4AB8F0();
        sub_24A4AC380();
        sub_24A4AC380();
        sub_24A4AC380();
        v22 = sub_24A4AC3A0();
        v7 = v14;

        v10 = v21;
        v2 = v20;
        v23 = v22 & v14;
        if (v20 >= v10)
        {
          if (v23 < v10)
          {
            v3 = v31;
          }

          else
          {
            v3 = v31;
            if (v20 >= v23)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v3 = v31;
          if (v23 >= v10 || v20 >= v23)
          {
LABEL_12:
            v24 = *(v3 + 48);
            v25 = v24 + 24 * v20;
            v26 = (v24 + v11);
            if (24 * v20 < v11 || v25 >= v26 + 24 || v20 != v6)
            {
              v27 = *v26;
              *(v25 + 16) = *(v26 + 2);
              *v25 = v27;
              v2 = v6;
            }
          }
        }

        v6 = (v6 + 1) & v7;
        v4 = v32;
      }

      while (((*(v32 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v28 = *(v3 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v30;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_24A473E64(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_24A4740B8(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_24A474028(v12, v6, a2, a1);

    MEMORY[0x24C219130](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_24A474028(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_24A4740B8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_24A4740B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_24A4AC360();

      sub_24A4AB8F0();
      v27 = sub_24A4AC3A0();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_24A4AC270() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_24A4737DC(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_24A4AC360();

      sub_24A4AB8F0();
      v41 = sub_24A4AC3A0();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_24A4AC270() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A474494(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v8 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v9 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v9 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v9 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = *v3;
  if (!v8)
  {
LABEL_10:
    v17 = isUniquelyReferenced_nonNull_native;
    sub_24A48810C();
    isUniquelyReferenced_nonNull_native = v17;
    v9 = v18;
  }

  v10 = *(v9 + 48) + 24 * isUniquelyReferenced_nonNull_native;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = *(v10 + 17);
  v15 = *(v10 + 18);
  sub_24A473BC4(isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  return v11;
}

uint64_t sub_24A4745A8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v8 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v9 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v9 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v9 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = *v3;
  if (!v8)
  {
LABEL_10:
    v14 = isUniquelyReferenced_nonNull_native;
    sub_24A487BF4();
    isUniquelyReferenced_nonNull_native = v14;
    v9 = v15;
  }

  v10 = (*(v9 + 48) + 16 * isUniquelyReferenced_nonNull_native);
  v11 = *v10;
  v12 = v10[1];
  sub_24A473A00(isUniquelyReferenced_nonNull_native);
  *v3 = v15;
  return v11;
}

uint64_t sub_24A47467C(uint64_t result)
{
  v2 = 0;
  v22 = result;
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
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v22 + 48) + ((v2 << 10) | (16 * v9)));
      v12 = *v10;
      v11 = v10[1];
      v13 = *v1;
      if (*(*v1 + 16))
      {
        break;
      }

LABEL_7:
      v1 = v21;
      sub_24A399A78(&v23, v12, v11);

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v14 = *(v13 + 40);
    sub_24A4AC360();

    sub_24A4AB8F0();
    v15 = sub_24A4AC3A0();
    v16 = -1 << *(v13 + 32);
    v17 = v15 & ~v16;
    if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_7;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = (*(v13 + 48) + 16 * v17);
      v20 = *v19 == v12 && v19[1] == v11;
      if (v20 || (sub_24A4AC270() & 1) != 0)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v1 = v21;
    sub_24A473468(v12, v11);
  }

  while (v6);
  while (1)
  {
LABEL_8:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_12;
    }
  }
}

uint64_t sub_24A474864@<X0>(char a1@<W0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  result = sub_24A463040(a1);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24A474894(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 32); ; ++i)
    {
      v10 = *i;

      sub_24A449F2C(&v10, a2, a3, a4);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_24A474940(uint64_t a1)
{
  if (*(v1 + 65))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 64);
  if (*(v1 + 66))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return sub_24A471E80(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v3 | v4);
}

uint64_t sub_24A47499C()
{
  if (*(v0 + 41))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 40);
  if (*(v0 + 42))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_24A472358(*(v0 + 16), *(v0 + 24), *(v0 + 32), v2 | v3, *(v0 + 43), *(v0 + 48), *(v0 + 56));
}

void sub_24A4749DC(uint64_t a1, uint64_t a2, char **a3, char a4, void *a5)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      while (1)
      {
        v12 = (*(a1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
        v14 = *v12;
        v13 = v12[1];
        v15 = *(a2 + 16);

        v16 = sub_24A44988C(v14, v13);

        if (v16)
        {
          v17 = *a3;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a3 = v17;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v17 = sub_24A3ED900(0, *(v17 + 2) + 1, 1, v17);
            *a3 = v17;
          }

          v20 = *(v17 + 2);
          v19 = *(v17 + 3);
          if (v20 >= v19 >> 1)
          {
            v17 = sub_24A3ED900((v19 > 1), v20 + 1, 1, v17);
            *a3 = v17;
          }

          *(v17 + 2) = v20 + 1;
          v21 = &v17[16 * v20];
          *(v21 + 4) = v14;
          *(v21 + 5) = v13;
        }

        v8 &= v8 - 1;
        if (a4)
        {
          v22 = *(a2 + 16);

          v27 = sub_24A4493A0(v14, v13);

          v23 = [a5 pushIdentifiers];
          sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
          sub_24A4AB780();

          sub_24A4A3ADC(v27, v14, v13);
          v24 = sub_24A4AB760();

          [a5 setPushIdentifiers_];

          v10 = v11;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v10 = v11;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v11 = v10;
      }
    }
  }

  __break(1u);
}

uint64_t sub_24A474D70@<X0>(void *a1@<X8>)
{
  v4 = **(v1 + 24);
  result = sub_24A463040(*(v1 + 16));
  if (!v2)
  {
    *a1 = v6;
  }

  return result;
}

uint64_t sub_24A474DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F8C0, &qword_24A4B9F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A474E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F8C0, &qword_24A4B9F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A474F5C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A475008(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

uint64_t sub_24A475078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A4750E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A475158(uint64_t (*a1)(void, void, void, void))
{
  if (*(v1 + 41))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 40);
  if (*(v1 + 42))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), v3 | v4);
}

uint64_t sub_24A475198(void (*a1)(void), void (*a2)(void))
{
  a1(v2[2]);
  a2(v2[3]);
  v4 = v2[6];

  return MEMORY[0x2821FE8E8](v2, 56, 7);
}

uint64_t FMFGetURLInfoAction.__allocating_init(url:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC7FMFCore19FMFGetURLInfoAction_url;
  v7 = sub_24A4AA9D0();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  *(v5 + 16) = 0;
  return v5;
}

uint64_t FMFGetURLInfoAction.init(url:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7FMFCore19FMFGetURLInfoAction_url;
  v4 = sub_24A4AA9D0();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  *(v1 + 16) = 0;
  return v1;
}

uint64_t sub_24A47542C()
{
  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  sub_24A4AA9D0();
  sub_24A475598();
  v4 = sub_24A4AC240();
  MEMORY[0x24C217D50](v4);

  MEMORY[0x24C217D50](0x203A6C7275, 0xE500000000000000);

  return 60;
}

unint64_t sub_24A475598()
{
  result = qword_27EF40BD0;
  if (!qword_27EF40BD0)
  {
    sub_24A4AA9D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40BD0);
  }

  return result;
}

uint64_t sub_24A475620()
{
  v1 = OBJC_IVAR____TtC7FMFCore19FMFGetURLInfoAction_url;
  v2 = sub_24A4AA9D0();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t FMFGetURLInfoAction.deinit()
{
  v1 = OBJC_IVAR____TtC7FMFCore19FMFGetURLInfoAction_url;
  v2 = sub_24A4AA9D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t FMFGetURLInfoAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7FMFCore19FMFGetURLInfoAction_url;
  v2 = sub_24A4AA9D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFGetURLInfoAction()
{
  result = qword_27EF40BD8;
  if (!qword_27EF40BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A4757D8()
{
  result = sub_24A4AA9D0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FMFRespondToInviteAction.__allocating_init(friendId:accepted:)(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 16) = 0;
  return result;
}

uint64_t FMFRespondToInviteAction.init(friendId:accepted:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  *(v3 + 16) = 0;
  return v3;
}

uint64_t sub_24A475904()
{
  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  MEMORY[0x24C217D50](v0[3], v0[4]);
  MEMORY[0x24C217D50](8236, 0xE200000000000000);

  MEMORY[0x24C217D50](0x6449646E65697266, 0xEA0000000000203ALL);

  if (*(v0 + 40))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + 40))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v4, v5);

  MEMORY[0x24C217D50](0x6465747065636361, 0xEA0000000000203ALL);

  return 60;
}

uint64_t FMFRespondToInviteAction.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t FMFRespondToInviteAction.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_24A475BD8(uint64_t a1)
{
  v35 = sub_24A4AB220();
  v3 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v31 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v29[1] = v1;
    v38 = MEMORY[0x277D84F90];
    v7 = v4;
    sub_24A3C0C34(0, v6, 0);
    v8 = v38;
    v9 = -1 << *(a1 + 32);
    v36 = a1 + 56;
    result = sub_24A4ABEA0();
    v11 = result;
    v12 = 0;
    v37 = *(a1 + 36);
    v33 = v7 + 32;
    v34 = v7;
    v30 = a1 + 64;
    v13 = v31;
    v32 = v6;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v36 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      if (v37 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v16 = (*(a1 + 48) + 16 * v11);
      v17 = *v16;
      v18 = v16[1];

      sub_24A4AB200();
      v38 = v8;
      v19 = v13;
      v21 = *(v8 + 16);
      v20 = *(v8 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24A3C0C34(v20 > 1, v21 + 1, 1);
        v8 = v38;
      }

      *(v8 + 16) = v21 + 1;
      result = (*(v34 + 32))(v8 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v21, v19, v35);
      v14 = 1 << *(a1 + 32);
      if (v11 >= v14)
      {
        goto LABEL_27;
      }

      v22 = *(v36 + 8 * v15);
      if ((v22 & (1 << v11)) == 0)
      {
        goto LABEL_28;
      }

      if (v37 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v23 = v22 & (-2 << (v11 & 0x3F));
      if (v23)
      {
        v13 = v19;
        v14 = __clz(__rbit64(v23)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v15 << 6;
        v25 = v15 + 1;
        v26 = (v30 + 8 * v15);
        while (v25 < (v14 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_24A406830(v11, v37, 0);
            v14 = __clz(__rbit64(v27)) + v24;
            goto LABEL_20;
          }
        }

        result = sub_24A406830(v11, v37, 0);
LABEL_20:
        v13 = v31;
      }

      ++v12;
      v11 = v14;
      if (v12 == v32)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_24A475F30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v23 = a2;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 56);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v4;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(v3 + 48) + ((v10 << 11) | (32 * v11));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    LODWORD(v11) = *(v12 + 24);
    v16 = *(v12 + 25);
    v17 = *(v12 + 26);
    v18 = v2 & 0xFF000000 | v11;
    if (v16)
    {
      v19 = 256;
    }

    else
    {
      v19 = 0;
    }

    v20 = v18 | v19;
    if (v17)
    {
      v21 = 0x10000;
    }

    else
    {
      v21 = 0;
    }

    v2 = v20 | v21;

    sub_24A485D4C(v22, v13, v14, v15, v2);
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v23;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

FMFCore::FMFActionStatus_optional __swiftcall FMFActionStatus.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 200)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  if (rawValue == -1)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t sub_24A4760F0()
{
  v1 = *v0;
  sub_24A4AC360();
  MEMORY[0x24C218780](qword_24A4BC638[v1]);
  return sub_24A4AC3A0();
}

uint64_t sub_24A476178()
{
  v1 = *v0;
  sub_24A4AC360();
  MEMORY[0x24C218780](qword_24A4BC638[v1]);
  return sub_24A4AC3A0();
}

void *sub_24A4761EC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v42 = a4;
  v43 = a1;
  v44 = a3;
  v7 = sub_24A4AAD70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A4AAB20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A4AAB10();
  v17 = sub_24A4AAAF0();
  v19 = v18;
  (*(v13 + 8))(v16, v12);
  v5[2] = v17;
  v5[3] = v19;
  v5[5] = 0;
  swift_unknownObjectWeakInit();
  sub_24A4AB3B0();
  (*(v8 + 104))(v11, *MEMORY[0x277D09048], v7);
  v20 = sub_24A4AB260();
  (*(v8 + 8))(v11, v7);
  v5[18] = v20;
  sub_24A39997C(v43, (v5 + 12));
  v5[6] = a2;
  v5[17] = v42;
  sub_24A39997C(v44, (v5 + 7));
  v21 = qword_27EF3EBF8;
  v41[1] = a2;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_24A4AB630();
  sub_24A378E18(v22, qword_27EF4E260);

  v23 = sub_24A4AB600();
  v24 = sub_24A4ABCE0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v45 = v26;
    *v25 = 136315138;
    v27 = v5[2];
    v28 = v5[3];

    v29 = sub_24A37E99C(0xCuLL, v27, v28);
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v36 = MEMORY[0x24C217CD0](v29, v31, v33, v35);
    v38 = v37;

    v39 = sub_24A37BD58(v36, v38, &v45);

    *(v25 + 4) = v39;
    _os_log_impl(&dword_24A376000, v23, v24, "FMFActionsController<%s>.init", v25, 0xCu);
    sub_24A37EEE0(v26);
    MEMORY[0x24C219130](v26, -1, -1);
    MEMORY[0x24C219130](v25, -1, -1);
  }

  sub_24A37EEE0(v44);
  sub_24A37EEE0(v43);
  return v5;
}

void *sub_24A476598()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136315138;
    v7 = v1[2];
    v8 = v1[3];

    v9 = sub_24A37E99C(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C217CD0](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A37BD58(v16, v18, &v25);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFActionsController<%s>.deinit", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v20 = v1[3];

  sub_24A3C8470((v1 + 4));
  v21 = v1[6];

  sub_24A37EEE0(v1 + 7);
  sub_24A37EEE0(v1 + 12);
  v22 = v1[17];

  v23 = v1[18];

  return v1;
}

uint64_t sub_24A47678C()
{
  sub_24A476598();

  return swift_deallocClassInstance();
}

uint64_t sub_24A4767C0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24A473E28(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = sub_24A4AC220();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 64;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[24 * i + 48];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 2))
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 24;
          v16 = *(v13 + 2);
          *(v13 + 4) = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          *(v13 + 1) = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_24A4ABAC0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_24A488E58(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_24A476924(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v223 = sub_24A4AB220();
  v228 = *(v223 - 8);
  v8 = *(v228 + 64);
  MEMORY[0x28223BE20](v223);
  v10 = &v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v182 - v13;
  v227 = sub_24A4AB690();
  v221 = *(v227 - 8);
  v15 = *(v221 + 64);
  MEMORY[0x28223BE20](v227);
  v226 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_24A4AB6E0();
  v220 = *(v225 - 8);
  v17 = *(v220 + 64);
  MEMORY[0x28223BE20](v225);
  v224 = &v182 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for FMFIntermediateFriend();
  v213 = *(v209 - 8);
  v19 = *(v213 + 64);
  MEMORY[0x28223BE20](v209);
  v206 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v211 = &v182 - v23;
  v24 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v212 = &v182 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v215 = &v182 - v28;
  v29 = sub_24A3C9CEC(&qword_27EF3F2E0, &qword_24A4BACE0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v205 = &v182 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v222 = (&v182 - v33);
  v34 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v204 = &v182 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v210 = &v182 - v38;
  v214 = type metadata accessor for FMFFriend();
  v39 = *(v214 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v214);
  v202 = (&v182 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v42);
  v207 = &v182 - v43;
  MEMORY[0x28223BE20](v44);
  v46 = (&v182 - v45);
  MEMORY[0x28223BE20](v47);
  v203 = &v182 - v48;
  MEMORY[0x28223BE20](v49);
  v230 = &v182 - v50;
  if (qword_27EF3EBF8 != -1)
  {
LABEL_56:
    swift_once();
  }

  v51 = sub_24A4AB630();
  sub_24A378E18(v51, qword_27EF4E260);

  v52 = sub_24A4AB600();
  v53 = sub_24A4ABCE0();

  v54 = os_log_type_enabled(v52, v53);
  v229 = v4;
  v218 = a3;
  v217 = a2;
  v216 = v14;
  v208 = v10;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock = v56;
    *v55 = 136315138;
    v231 = *v4;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v57 = sub_24A4AB870();
    v59 = a1;
    v60 = sub_24A37BD58(v57, v58, &aBlock);

    *(v55 + 4) = v60;
    a1 = v59;
    _os_log_impl(&dword_24A376000, v52, v53, "%s: shareLocation action initiated", v55, 0xCu);
    sub_24A37EEE0(v56);
    MEMORY[0x24C219130](v56, -1, -1);
    MEMORY[0x24C219130](v55, -1, -1);
  }

  v4 = a1[5];
  v219 = a1;
  if (!v4)
  {
    goto LABEL_11;
  }

  a2 = a1[4];
  v61 = v229[6];
  v62 = *(v61 + 56);
  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  v201 = v61;
  sub_24A4ABD70();
  v63 = aBlock;
  v14 = *(aBlock + 16);
  if (!v14)
  {
LABEL_10:

LABEL_11:
    v65 = a1[3];
    v66 = *(v65 + 16);
    v67 = v229;
    if (v66)
    {
      v222 = &v235;
      v221 += 8;
      v220 += 8;
      v68 = (v65 + 40);
      do
      {
        v70 = *(v68 - 1);
        v69 = *v68;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v72 = *(Strong + 88);
          v230 = *(v72 + 56);
          v73 = swift_allocObject();
          v73[2] = v72;
          v73[3] = v70;
          v73[4] = v69;
          v237 = sub_24A489AB0;
          v238 = v73;
          aBlock = MEMORY[0x277D85DD0];
          v234 = 1107296256;
          v235 = sub_24A388564;
          v236 = &unk_285D8B5F0;
          v74 = _Block_copy(&aBlock);
          swift_retain_n();

          v75 = v224;
          sub_24A4AB6B0();
          v231 = MEMORY[0x277D84F90];
          sub_24A38D374(&qword_27EF408E0, MEMORY[0x277D85198]);
          sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
          sub_24A3CFC00();
          v76 = v226;
          v77 = v227;
          sub_24A4ABE90();
          MEMORY[0x24C218190](0, v75, v76, v74);
          v78 = v74;
          v67 = v229;
          _Block_release(v78);
          swift_unknownObjectRelease();
          (*v221)(v76, v77);
          (*v220)(v75, v225);
        }

        v68 += 2;
        --v66;
      }

      while (v66);
    }

    goto LABEL_42;
  }

  v10 = 0;
  a3 = MEMORY[0x277D837D0];
  while (1)
  {
    if (v10 >= *(v63 + 16))
    {
      __break(1u);
      goto LABEL_56;
    }

    sub_24A495474(v63 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v10, v46, type metadata accessor for FMFFriend);
    v64 = v46[1];
    aBlock = *v46;
    v234 = v64;
    v231 = a2;
    v232 = v4;
    sub_24A3A1434();
    if (sub_24A4ABE60())
    {
      break;
    }

    ++v10;
    sub_24A489C74(v46, type metadata accessor for FMFFriend);
    if (v14 == v10)
    {
      goto LABEL_10;
    }
  }

  v79 = v203;
  sub_24A4954DC(v46, v203, type metadata accessor for FMFFriend);
  v80 = v79;
  v81 = v230;
  sub_24A4954DC(v80, v230, type metadata accessor for FMFFriend);
  v82 = v210;
  sub_24A495474(v81, v210, type metadata accessor for FMFFriend);
  v83 = v214;
  (*(v39 + 56))(v82, 0, 1, v214);
  v84 = v209;
  (*(v213 + 56))(v222, 1, 1);
  v85 = type metadata accessor for FMFLocation();
  v197 = *(v85 - 8);
  v87 = v197 + 56;
  v86 = *(v197 + 56);
  v86(v215, 1, 1, v85);
  v88 = v207;
  v199 = v83[21];
  v207[v199] = 7;
  v89 = sub_24A4AAAD0();
  v90 = v211;
  (*(*(v89 - 8) + 56))(v211, 1, 1, v89);
  v91 = v212;
  v198 = v85;
  v185 = v87;
  v184 = v86;
  v86(v212, 1, 1, v85);
  v92 = v204;
  sub_24A37B740(v82, v204, &qword_27EF3F2D0, &qword_24A4B4F50);
  if ((*(v39 + 48))(v92, 1, v83) == 1)
  {
    sub_24A37EF2C(v92, &qword_27EF3F2D0, &qword_24A4B4F50);
    v196 = 0;
    v195 = 0;
    v93 = 0;
    v94 = 0;
    v199 = 0;
    v193 = 0;
    v192 = 0;
    v191 = 0;
    v190 = 0;
    v189 = 0;
    v188 = 0;
    v187 = 0;
    v200 = 0;
    v227 = 0;
    v203 = 0;
    v226 = 0xE000000000000000;
    v225 = MEMORY[0x277D84FA0];
    LODWORD(v224) = 2;
    v194 = 0x7FFFFFFFFFFFFFFFLL;
    v95 = 1;
    LODWORD(v221) = 2;
    LODWORD(v204) = 2;
    v186 = 2;
    v96 = v88;
    v97 = v84;
  }

  else
  {
    sub_24A37EF2C(v91, &qword_27EF3F480, &unk_24A4B8C20);
    sub_24A37EF2C(v90, &qword_27EF3F460, &unk_24A4B53B0);
    v98 = v202;
    sub_24A4954DC(v92, v202, type metadata accessor for FMFFriend);
    v99 = v98[1];
    v203 = *v98;
    v226 = v99;
    v100 = v98[3];
    v200 = v98[2];
    v227 = v100;
    v225 = v98[4];
    sub_24A37B740(v98 + v83[8], v90, &qword_27EF3F460, &unk_24A4B53B0);
    v101 = v83[10];
    v183 = *(v98 + v83[9]);
    v186 = *(v98 + v101);
    v102 = v83[12];
    LODWORD(v204) = *(v98 + v83[11]);
    LODWORD(v221) = *(v98 + v102);
    v195 = *(v98 + v83[18]);
    v103 = v83[14];
    v196 = *(v98 + v83[13]);
    LODWORD(v224) = *(v98 + v103);
    v194 = *(v98 + v83[15]);
    sub_24A37B740(v98 + v83[20], v91, &qword_27EF3F480, &unk_24A4B8C20);
    v104 = (v98 + v83[19]);
    v106 = *v104;
    v105 = v104[1];
    v108 = v104[2];
    v107 = v104[3];
    v109 = v88;
    v110 = v104[4];
    v111 = v104[5];
    v112 = v104[6];
    v113 = *(v98 + v83[16]);
    v220 = *(v98 + v83[17]);
    *(v109 + v199) = *(v98 + v83[21]);
    v114 = v98[5];

    v193 = v106;
    v192 = v105;
    v115 = v105;
    v93 = v114;
    v191 = v108;
    v190 = v107;
    v189 = v110;
    v188 = v111;
    v187 = v112;
    v97 = v209;
    sub_24A39AED0(v106, v115);

    v199 = v113;
    v94 = v220;

    sub_24A489C74(v98, type metadata accessor for FMFFriend);
    v95 = v183 | 1;
    v96 = v207;
  }

  v116 = v222;
  v117 = v205;
  sub_24A37B740(v222, v205, &qword_27EF3F2E0, &qword_24A4BACE0);
  v118 = (*(v213 + 48))(v117, 1, v97);
  v119 = v215;
  v120 = v206;
  v220 = v94;
  v202 = v95;
  if (v118 == 1)
  {
    v121 = v93;
    sub_24A37EF2C(v116, &qword_27EF3F2E0, &qword_24A4BACE0);
    sub_24A37EF2C(v210, &qword_27EF3F2D0, &qword_24A4B4F50);
    sub_24A489C74(v230, type metadata accessor for FMFFriend);
    sub_24A37EF2C(v117, &qword_27EF3F2E0, &qword_24A4BACE0);
    v122 = v211;
    v123 = v194;
  }

  else
  {

    sub_24A4954DC(v117, v120, type metadata accessor for FMFIntermediateFriend);
    if (v204 == 2 || (v204 & 1) == 0)
    {
      v124 = *(v120 + v97[14]);
    }

    else
    {
      v124 = 1;
    }

    if (v221 == 2 || (v221 & 1) == 0)
    {
      v125 = *(v120 + v97[15]);
    }

    else
    {
      v125 = 1;
    }

    v126 = v120[1];
    v127 = v120[3];
    if (v224 == 2 || (v224 & 1) == 0)
    {
      v128 = *(v120 + v97[16]);
    }

    else
    {
      v128 = 1;
    }

    v129 = *v120;
    v130 = v120[2];
    v131 = *(v120 + v97[17]);
    v132 = v120[9];
    LODWORD(v224) = v128 & 1;
    v227 = v127;
    v226 = v126;
    LODWORD(v221) = v125 & 1;
    v203 = v129;
    v200 = v130;
    LODWORD(v204) = v124 & 1;
    if (v132)
    {
      v133 = v120[8];
      sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
      inited = swift_initStackObject();
      v135 = v131;
      v136 = inited;
      *(inited + 16) = xmmword_24A4B4E10;
      *(inited + 32) = v133;
      v137 = inited + 32;
      v97 = v209;
      *(inited + 40) = v132;
      v121 = v135;

      v225 = sub_24A48A0F4(v136, v225);
      swift_setDeallocating();
      v138 = v137;
      v116 = v222;
      sub_24A406964(v138);
    }

    else
    {
      v139 = v120[4];
      v121 = v131;

      if (v139)
      {

        v140 = sub_24A3999E0(v139);

        v225 = sub_24A399BC8(v140, v225);
      }
    }

    v122 = v211;
    v123 = v194;
    sub_24A37EF2C(v211, &qword_27EF3F460, &unk_24A4B53B0);
    sub_24A37EF2C(v116, &qword_27EF3F2E0, &qword_24A4BACE0);
    sub_24A37EF2C(v210, &qword_27EF3F2D0, &qword_24A4B4F50);
    sub_24A489C74(v230, type metadata accessor for FMFFriend);
    sub_24A37B740(v120 + v97[12], v122, &qword_27EF3F460, &unk_24A4B53B0);
    sub_24A489C74(v120, type metadata accessor for FMFIntermediateFriend);
  }

  v141 = v214;
  v142 = *(v214 + 56);
  v143 = v226;
  *v96 = v203;
  v96[1] = v143;
  v144 = v227;
  v96[2] = v200;
  v96[3] = v144;
  v96[4] = v225;
  sub_24A37BE24(v122, v96 + v141[8], &qword_27EF3F460, &unk_24A4B53B0);
  *(v96 + v141[9]) = v202;
  *(v96 + v141[10]) = v186;
  *(v96 + v141[11]) = v204;
  *(v96 + v141[12]) = v221;
  v145 = (v96 + v141[19]);
  v146 = v192;
  *v145 = v193;
  v145[1] = v146;
  v147 = v190;
  v145[2] = v191;
  v145[3] = v147;
  v148 = v188;
  v145[4] = v189;
  v145[5] = v148;
  v145[6] = v187;
  *(v96 + v142) = v224;
  *(v96 + v141[18]) = v195;
  *(v96 + v141[13]) = v196;
  v96[5] = v121;
  *(v96 + v141[15]) = v123;
  v149 = v198;
  v150 = (*(v197 + 48))(v119, 1, v198);
  v67 = v229;
  if (v150 == 1)
  {
    sub_24A37EF2C(v119, &qword_27EF3F480, &unk_24A4B8C20);
    sub_24A37BE24(v212, v96 + v141[20], &qword_27EF3F480, &unk_24A4B8C20);
  }

  else
  {
    sub_24A37EF2C(v212, &qword_27EF3F480, &unk_24A4B8C20);
    v151 = v141[20];
    sub_24A4954DC(v119, v96 + v151, type metadata accessor for FMFLocation);
    v184(v96 + v151, 0, 1, v149);
  }

  *(v96 + v141[16]) = v199;
  *(v96 + v141[17]) = v220;
  v152 = v230;
  sub_24A4954DC(v96, v230, type metadata accessor for FMFFriend);
  LOBYTE(aBlock) = 2;
  sub_24A4507E0(v152, &aBlock);
  sub_24A489C74(v152, type metadata accessor for FMFFriend);
LABEL_42:
  v153 = sub_24A4AA700();
  v236 = v153;
  v154 = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28]);
  v237 = v154;
  v155 = sub_24A38D3BC(&aBlock);
  v156 = *(*(v153 - 8) + 104);
  v156(v155, *MEMORY[0x277D08A20], v153);
  v157 = sub_24A4AA6C0();
  sub_24A37EEE0(&aBlock);
  v158 = v219;
  v159 = v219[3];
  if (v157)
  {
    v160 = *(v159 + 16);
    if (v160)
    {
      aBlock = MEMORY[0x277D84F90];
      sub_24A3C0C34(0, v160, 0);
      v161 = aBlock;
      v162 = (v159 + 40);
      v163 = v208;
      do
      {
        v164 = *(v162 - 1);
        v165 = *v162;

        sub_24A4AB200();
        aBlock = v161;
        v167 = *(v161 + 16);
        v166 = *(v161 + 24);
        if (v167 >= v166 >> 1)
        {
          sub_24A3C0C34(v166 > 1, v167 + 1, 1);
          v161 = aBlock;
        }

        *(v161 + 16) = v167 + 1;
        (*(v228 + 32))(v161 + ((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v167, v163, v223);
        v162 += 2;
        --v160;
      }

      while (v160);
      v67 = v229;
      v158 = v219;
    }

    else
    {
      v161 = MEMORY[0x277D84F90];
    }

    v178 = sub_24A4ABB70();
    v179 = v216;
    (*(*(v178 - 8) + 56))(v216, 1, 1, v178);
    v180 = swift_allocObject();
    v180[2] = 0;
    v180[3] = 0;
    v180[4] = v161;
    v180[5] = v158;
    v181 = v217;
    v180[6] = v67;
    v180[7] = v181;
    v180[8] = v218;

    v175 = &unk_24A4BC540;
    v176 = v179;
    v177 = v180;
  }

  else
  {
    v236 = v153;
    v237 = v154;
    v168 = sub_24A38D3BC(&aBlock);
    v156(v168, *MEMORY[0x277D089F8], v153);
    v169 = sub_24A4AA6C0();
    result = sub_24A37EEE0(&aBlock);
    if ((v169 & 1) == 0)
    {
      return result;
    }

    v171 = sub_24A4ABB70();
    v172 = v216;
    (*(*(v171 - 8) + 56))(v216, 1, 1, v171);
    v173 = swift_allocObject();
    v173[2] = 0;
    v173[3] = 0;
    v173[4] = v159;
    v173[5] = v67;
    v174 = v217;
    v173[6] = v158;
    v173[7] = v174;
    v173[8] = v218;

    v175 = &unk_24A4BC530;
    v176 = v172;
    v177 = v173;
  }

  sub_24A432370(0, 0, v176, v175, v177);
}

uint64_t sub_24A4782E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = *(*(sub_24A3C9CEC(&qword_27EF40C28, &qword_24A4BC550) - 8) + 64) + 15;
  v8[7] = swift_task_alloc();
  v10 = sub_24A4AAD70();
  v8[8] = v10;
  v11 = *(v10 - 8);
  v8[9] = v11;
  v12 = *(v11 + 64) + 15;
  v8[10] = swift_task_alloc();
  v13 = *(*(sub_24A4AADE0() - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v14 = sub_24A4AAEA0();
  v8[12] = v14;
  v15 = *(v14 - 8);
  v8[13] = v15;
  v16 = *(v15 + 64) + 15;
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A47846C, 0, 0);
}

uint64_t sub_24A47846C()
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  v0[15] = sub_24A378E18(v1, qword_27EF4E260);
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFActionsController: perform offer location", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];
  v10 = v0[3];

  (*(v8 + 104))(v6, *MEMORY[0x277D09048], v7);
  sub_24A4AADF0();
  v11 = sub_24A4AB3B0();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[16] = sub_24A4AB3D0();
  v14 = sub_24A4AB220();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = OBJC_IVAR____TtC7FMFCore22FMFShareLocationAction_duration;
  v16 = *(MEMORY[0x277D093B0] + 4);
  v17 = swift_task_alloc();
  v0[17] = v17;
  *v17 = v0;
  v17[1] = sub_24A478698;
  v18 = v0[14];
  v19 = v0[7];
  v20 = v0[2];

  return MEMORY[0x28215FAD0](v18, v20, v19, v10 + v15, 0);
}

uint64_t sub_24A478698()
{
  v2 = *v1;
  v3 = (*v1)[17];
  v4 = *v1;
  v2[18] = v0;

  v5 = v2[16];
  if (v0)
  {
    sub_24A37EF2C(v2[7], &qword_27EF40C28, &qword_24A4BC550);

    v6 = sub_24A478990;
  }

  else
  {
    v8 = v2[13];
    v7 = v2[14];
    v9 = v2[12];
    v10 = v2[7];

    sub_24A37EF2C(v10, &qword_27EF40C28, &qword_24A4BC550);
    (*(v8 + 8))(v7, v9);
    v6 = sub_24A478834;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24A478834()
{
  v18 = v0;
  v1 = v0[3];
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v0[4] + 48);
    sub_24A4510AC(*(v1 + 32), v2, 0);
  }

  v4 = v0[4];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A4363BC();
    swift_unknownObjectRelease();
  }

  v5 = v0[15];
  v6 = sub_24A4AB600();
  v7 = sub_24A4ABCE0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24A376000, v6, v7, "FMFActionsController: share location operation completed.", v8, 2u);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  v9 = v0[5];
  v10 = v0[6];

  v17 = 2;
  v9(&v17, 0);
  v11 = v0[14];
  v12 = v0[10];
  v13 = v0[11];
  v14 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24A478990()
{
  v25 = v0;
  v1 = v0[3];
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v0[4] + 48);
    sub_24A4510AC(*(v1 + 32), v2, 1);
  }

  v4 = v0[18];
  v5 = v0[15];
  v6 = v4;
  v7 = sub_24A4AB600();
  v8 = sub_24A4ABCE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[18];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24A376000, v7, v8, "FMFActionsController: error offering location: %@", v10, 0xCu);
    sub_24A37EF2C(v11, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v11, -1, -1);
    MEMORY[0x24C219130](v10, -1, -1);
  }

  v14 = v0[18];
  v16 = v0[5];
  v15 = v0[6];

  v24 = 0;
  v17 = v14;
  v16(&v24, v14);

  v18 = v0[14];
  v19 = v0[10];
  v20 = v0[11];
  v21 = v0[7];

  v22 = v0[1];

  return v22();
}

uint64_t sub_24A478B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = sub_24A4AB220();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();
  v12 = *(*(sub_24A3C9CEC(&qword_27EF40C28, &qword_24A4BC550) - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v13 = sub_24A4AAEA0();
  v8[13] = v13;
  v14 = *(v13 - 8);
  v8[14] = v14;
  v15 = *(v14 + 64) + 15;
  v8[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A478CB8, 0, 0);
}

uint64_t sub_24A478CB8()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v21 = MEMORY[0x277D84F90];
    sub_24A3C0C34(0, v2, 0);
    v4 = v21;
    v5 = (v1 + 40);
    do
    {
      v6 = v0[11];
      v7 = *(v5 - 1);
      v8 = *v5;

      sub_24A4AB200();
      v10 = *(v21 + 16);
      v9 = *(v21 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_24A3C0C34(v9 > 1, v10 + 1, 1);
      }

      v11 = v0[11];
      v12 = v0[9];
      *(v21 + 16) = v10 + 1;
      (*(v3 + 32))(v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v0[16] = v4;
  v13 = v0[6];
  v14 = *(v0[5] + 144);
  (*(v0[10] + 56))(v0[12], 1, 1, v0[9]);
  v15 = OBJC_IVAR____TtC7FMFCore22FMFShareLocationAction_duration;
  v16 = *(MEMORY[0x277D093B0] + 4);
  v17 = swift_task_alloc();
  v0[17] = v17;
  *v17 = v0;
  v17[1] = sub_24A478EB0;
  v18 = v0[15];
  v19 = v0[12];

  return MEMORY[0x28215FAD0](v18, v4, v19, v13 + v15, 0);
}

uint64_t sub_24A478EB0()
{
  v2 = *v1;
  v3 = (*v1)[17];
  v4 = *v1;
  v2[18] = v0;

  v5 = v2[16];
  if (v0)
  {
    sub_24A37EF2C(v2[12], &qword_27EF40C28, &qword_24A4BC550);

    v6 = sub_24A479294;
  }

  else
  {
    v8 = v2[14];
    v7 = v2[15];
    v11 = v2 + 12;
    v9 = v2[12];
    v10 = v11[1];

    sub_24A37EF2C(v9, &qword_27EF40C28, &qword_24A4BC550);
    (*(v8 + 8))(v7, v10);
    v6 = sub_24A479048;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24A479048()
{
  v24 = v0;
  v1 = v0[6];
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v0[5] + 48);
    sub_24A4510AC(*(v1 + 32), v2, 0);
  }

  v4 = v0[5];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A4363BC();
    swift_unknownObjectRelease();
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v5 = v0[5];
  v6 = sub_24A4AB630();
  sub_24A378E18(v6, qword_27EF4E260);

  v7 = sub_24A4AB600();
  v8 = sub_24A4ABCE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    v0[3] = *v9;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v12 = sub_24A4AB870();
    v14 = sub_24A37BD58(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A376000, v7, v8, "%s: share location operation completed.", v10, 0xCu);
    sub_24A37EEE0(v11);
    MEMORY[0x24C219130](v11, -1, -1);
    MEMORY[0x24C219130](v10, -1, -1);
  }

  v15 = v0[7];
  v16 = v0[8];
  v22 = 2;
  v15(&v22, 0);
  v17 = v0[15];
  v18 = v0[11];
  v19 = v0[12];

  v20 = v0[1];

  return v20();
}

uint64_t sub_24A479294()
{
  v31 = v0;
  v1 = v0[6];
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v0[5] + 48);
    sub_24A4510AC(*(v1 + 32), v2, 1);
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v4 = v0[18];
  v5 = v0[5];
  v6 = sub_24A4AB630();
  sub_24A378E18(v6, qword_27EF4E260);

  v7 = v4;
  v8 = sub_24A4AB600();
  v9 = sub_24A4ABCE0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[18];
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v12 = 136315394;
    v0[2] = *v11;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v15 = sub_24A4AB870();
    v17 = sub_24A37BD58(v15, v16, &v30);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v10;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_24A376000, v8, v9, "%s: error when sharing location: %@", v12, 0x16u);
    sub_24A37EF2C(v13, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v13, -1, -1);
    sub_24A37EEE0(v14);
    MEMORY[0x24C219130](v14, -1, -1);
    MEMORY[0x24C219130](v12, -1, -1);
  }

  v20 = v0[18];
  v22 = v0[7];
  v21 = v0[8];
  v29 = 0;
  v23 = v20;
  v22(&v29, v20);

  v24 = v0[15];
  v25 = v0[11];
  v26 = v0[12];

  v27 = v0[1];

  return v27();
}

uint64_t sub_24A479550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = *(*(sub_24A3C9CEC(&qword_27EF40C28, &qword_24A4BC550) - 8) + 64) + 15;
  v8[7] = swift_task_alloc();
  v10 = sub_24A4AAD70();
  v8[8] = v10;
  v11 = *(v10 - 8);
  v8[9] = v11;
  v12 = *(v11 + 64) + 15;
  v8[10] = swift_task_alloc();
  v13 = *(*(sub_24A4AADE0() - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v14 = sub_24A4AAEA0();
  v8[12] = v14;
  v15 = *(v14 - 8);
  v8[13] = v15;
  v16 = *(v15 + 64) + 15;
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A4796D8, 0, 0);
}

uint64_t sub_24A4796D8()
{
  v29 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  v0[15] = sub_24A378E18(v1, qword_27EF4E260);
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFActionsController: perform stop sharing my location", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[2];

  (*(v8 + 104))(v6, *MEMORY[0x277D09048], v7);
  sub_24A4AADF0();
  v10 = sub_24A4AB3B0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v0[16] = sub_24A4AB3D0();
  v13 = *(v9 + 16);
  if (v13)
  {
    v14 = v0[2];
    v15 = sub_24A40B3D0(v13, 0);
    v16 = *(sub_24A4AB220() - 8);
    sub_24A40C53C(&v28, (v15 + ((*(v16 + 80) + 32) & ~*(v16 + 80))), v13, v14);
    v18 = v17;

    v19 = sub_24A3A13C0();
    if (v18 != v13)
    {
      __break(1u);
      return MEMORY[0x28215FA38](v19, v20, v21, v22);
    }
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v0[17] = v15;
  v23 = v0[7];
  v24 = sub_24A4AB220();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  v25 = *(MEMORY[0x277D09328] + 4);
  v26 = swift_task_alloc();
  v0[18] = v26;
  *v26 = v0;
  v26[1] = sub_24A4799BC;
  v19 = v0[14];
  v21 = v0[7];
  v20 = v15;
  v22 = 0;

  return MEMORY[0x28215FA38](v19, v20, v21, v22);
}

uint64_t sub_24A4799BC()
{
  v2 = *v1;
  v3 = (*v1)[18];
  v4 = *v1;
  v2[19] = v0;

  v5 = v2[17];
  v6 = v2[16];
  if (v0)
  {
    sub_24A37EF2C(v2[7], &qword_27EF40C28, &qword_24A4BC550);

    v7 = sub_24A479CD8;
  }

  else
  {
    v9 = v2[13];
    v8 = v2[14];
    v10 = v2[12];
    v11 = v2[7];

    sub_24A37EF2C(v11, &qword_27EF40C28, &qword_24A4BC550);
    (*(v9 + 8))(v8, v10);
    v7 = sub_24A479B7C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24A479B7C()
{
  v15 = v0;
  v1 = *(v0[3] + 48);
  sub_24A4510AC(*(v0[4] + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend), *(v0[4] + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend + 8), 0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A4363BC();
    swift_unknownObjectRelease();
  }

  v2 = v0[15];
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFActionsController: Stop share completed successfully.", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v6 = v0[5];
  v7 = v0[6];

  v14 = 2;
  v6(&v14, 0);
  v8 = v0[14];
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_24A479CD8()
{
  v23 = v0;
  v1 = v0[19];
  v2 = v0[15];
  v3 = *(v0[3] + 48);
  sub_24A4510AC(*(v0[4] + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend), *(v0[4] + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend + 8), 1);
  v4 = v1;
  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[19];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24A376000, v5, v6, "FMFActionsController: Stop share completed with error: %@", v8, 0xCu);
    sub_24A37EF2C(v9, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v9, -1, -1);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  v12 = v0[19];
  v14 = v0[5];
  v13 = v0[6];

  v22 = 0;
  v15 = v12;
  v14(&v22, v12);

  v16 = v0[14];
  v17 = v0[10];
  v18 = v0[11];
  v19 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t sub_24A479EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = *(*(sub_24A3C9CEC(&qword_27EF40C28, &qword_24A4BC550) - 8) + 64) + 15;
  v7[8] = swift_task_alloc();
  v9 = sub_24A4AAEA0();
  v7[9] = v9;
  v10 = *(v9 - 8);
  v7[10] = v10;
  v11 = *(v10 + 64) + 15;
  v7[11] = swift_task_alloc();
  v12 = sub_24A4AB220();
  v7[12] = v12;
  v13 = *(v12 - 8);
  v7[13] = v13;
  v14 = *(v13 + 64) + 15;
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A47A004, 0, 0);
}

uint64_t sub_24A47A004()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend;
  v0[15] = OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend;
  v3 = *(v1 + v2 + 32);
  if (*(v3 + 16))
  {
    v4 = v0[13];
    v5 = v3 + 56;
    v6 = -1;
    v7 = -1 << *(v3 + 32);
    if (-v7 < 64)
    {
      v6 = ~(-1 << -v7);
    }

    v8 = v6 & *(v3 + 56);
    v9 = (63 - v7) >> 6;

    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v29 = v10;
    if (v8)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v9)
      {

        goto LABEL_17;
      }

      v8 = *(v5 + 8 * v16);
      ++v14;
      if (v8)
      {
        v14 = v16;
        do
        {
LABEL_9:
          v17 = v0[14];
          v18 = (*(v10 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v8)))));
          v19 = *v18;
          v20 = v18[1];

          sub_24A4AB200();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_24A3C0C78(0, v15[2] + 1, 1, v15);
          }

          v22 = v15[2];
          v21 = v15[3];
          if (v22 >= v21 >> 1)
          {
            v15 = sub_24A3C0C78(v21 > 1, v22 + 1, 1, v15);
          }

          v8 &= v8 - 1;
          v23 = v0[14];
          v24 = v0[12];
          v15[2] = v22 + 1;
          (*(v4 + 32))(v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22, v23, v24);
          v10 = v29;
        }

        while (v8);
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_17:
    v0[16] = v15;
    v25 = *(v0[5] + 144);
    (*(v0[13] + 56))(v0[8], 1, 1, v0[12]);
    v26 = *(MEMORY[0x277D09328] + 4);
    v27 = swift_task_alloc();
    v0[17] = v27;
    *v27 = v0;
    v27[1] = sub_24A47A2A8;
    v10 = v0[11];
    v12 = v0[8];
    v11 = v15;
    v13 = 0;
  }

  return MEMORY[0x28215FA38](v10, v11, v12, v13);
}

uint64_t sub_24A47A2A8()
{
  v2 = *v1;
  v3 = (*v1)[17];
  v4 = *v1;
  v2[18] = v0;

  v5 = v2[16];
  if (v0)
  {
    sub_24A37EF2C(v2[8], &qword_27EF40C28, &qword_24A4BC550);

    v6 = sub_24A47A688;
  }

  else
  {
    v8 = v2[10];
    v7 = v2[11];
    v11 = v2 + 8;
    v9 = v2[8];
    v10 = v11[1];

    sub_24A37EF2C(v9, &qword_27EF40C28, &qword_24A4BC550);
    (*(v8 + 8))(v7, v10);
    v6 = sub_24A47A440;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24A47A440()
{
  v22 = v0;
  v1 = (v0[4] + v0[15]);
  v2 = *(v0[5] + 48);
  sub_24A4510AC(*v1, v1[1], 0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A4363BC();
    swift_unknownObjectRelease();
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v3 = v0[5];
  v4 = sub_24A4AB630();
  sub_24A378E18(v4, qword_27EF4E260);

  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v0[3] = *v7;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v10 = sub_24A4AB870();
    v12 = sub_24A37BD58(v10, v11, &v21);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24A376000, v5, v6, "%s: Stop share completed successfully.", v8, 0xCu);
    sub_24A37EEE0(v9);
    MEMORY[0x24C219130](v9, -1, -1);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  v13 = v0[6];
  v14 = v0[7];
  v20 = 2;
  v13(&v20, 0);
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[8];

  v18 = v0[1];

  return v18();
}

uint64_t sub_24A47A688()
{
  v26 = v0;
  v1 = (v0[4] + v0[15]);
  v2 = *(v0[5] + 48);
  sub_24A4510AC(*v1, v1[1], 1);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v3 = v0[18];
  v4 = sub_24A4AB630();
  sub_24A378E18(v4, qword_27EF4E260);
  v5 = v3;
  v6 = sub_24A4AB600();
  v7 = sub_24A4ABCE0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    v0[2] = v8;
    v11 = v8;
    sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
    v12 = sub_24A4AB870();
    v14 = sub_24A37BD58(v12, v13, &v25);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_24A376000, v6, v7, "Stop share completed with error - %s", v9, 0xCu);
    sub_24A37EEE0(v10);
    MEMORY[0x24C219130](v10, -1, -1);
    MEMORY[0x24C219130](v9, -1, -1);
  }

  v15 = v0[18];
  v17 = v0[6];
  v16 = v0[7];
  v24 = 0;
  v18 = v15;
  v17(&v24, v15);

  v19 = v0[14];
  v20 = v0[11];
  v21 = v0[8];

  v22 = v0[1];

  return v22();
}

void sub_24A47A8B0(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  *(a3 + 16) = a2;
  v8 = a2;

  dispatch_group_leave(a4);
}

void sub_24A47A91C(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(id *, void *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v15 = a2[6];
    sub_24A451C68(*(a3 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend), *(a3 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend + 8), 1);
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v16 = sub_24A4AB630();
    sub_24A378E18(v16, qword_27EF4E260);

    v17 = sub_24A4AB600();
    v18 = sub_24A4ABCE0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v80[0] = v20;
      *v19 = 136315394;
      v79[0] = *a2;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v21 = sub_24A4AB870();
      v23 = sub_24A37BD58(v21, v22, v80);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      swift_beginAccess();
      v78[0] = *(a1 + 16);
      v24 = v78[0];
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v25 = sub_24A4AB870();
      v27 = sub_24A37BD58(v25, v26, v80);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_24A376000, v17, v18, "%s: removeFollower error: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v20, -1, -1);
      MEMORY[0x24C219130](v19, -1, -1);
    }

    LOBYTE(v78[0]) = 0;
    swift_beginAccess();
    v28 = *(a1 + 16);
    v29 = v28;
    v30 = v78;
LABEL_25:
    a4(v30, v28);

    return;
  }

  swift_beginAccess();
  if (*(a6 + 16))
  {
    v31 = a2[6];
    sub_24A451C68(*(a3 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend), *(a3 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend + 8), 1);
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v32 = sub_24A4AB630();
    sub_24A378E18(v32, qword_27EF4E260);

    v33 = sub_24A4AB600();
    v34 = sub_24A4ABCE0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v79[0] = v36;
      *v35 = 136315394;
      v78[0] = *a2;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v37 = sub_24A4AB870();
      v39 = sub_24A37BD58(v37, v38, v79);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      swift_beginAccess();
      v77[0] = *(a6 + 16);
      v40 = v77[0];
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v41 = sub_24A4AB870();
      v43 = sub_24A37BD58(v41, v42, v79);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_24A376000, v33, v34, "%s: removeFollowingError error: %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v36, -1, -1);
      MEMORY[0x24C219130](v35, -1, -1);
    }

    LOBYTE(v77[0]) = 0;
    swift_beginAccess();
    v28 = *(a6 + 16);
    v44 = v28;
    v30 = v77;
    goto LABEL_25;
  }

  swift_beginAccess();
  if (*(a7 + 16))
  {
    v45 = a2[6];
    sub_24A451C68(*(a3 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend), *(a3 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend + 8), 1);
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v46 = sub_24A4AB630();
    sub_24A378E18(v46, qword_27EF4E260);

    v47 = sub_24A4AB600();
    v48 = sub_24A4ABCE0();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v78[0] = v50;
      *v49 = 136315394;
      v77[0] = *a2;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v51 = sub_24A4AB870();
      v53 = sub_24A37BD58(v51, v52, v78);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      swift_beginAccess();
      v76 = *(a7 + 16);
      v54 = v76;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v55 = sub_24A4AB870();
      v57 = sub_24A37BD58(v55, v56, v78);

      *(v49 + 14) = v57;
      _os_log_impl(&dword_24A376000, v47, v48, "%s: removeFutureFollowingError error: %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v50, -1, -1);
      MEMORY[0x24C219130](v49, -1, -1);
    }

    LOBYTE(v76) = 0;
    swift_beginAccess();
    v28 = *(a7 + 16);
    v58 = v28;
    v30 = &v76;
    goto LABEL_25;
  }

  swift_beginAccess();
  v59 = a2[6];
  v60 = *(a3 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend);
  v61 = *(a3 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend + 8);
  if (*(a8 + 16))
  {
    sub_24A451C68(v60, v61, 1);
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v62 = sub_24A4AB630();
    sub_24A378E18(v62, qword_27EF4E260);

    v63 = sub_24A4AB600();
    v64 = sub_24A4ABCE0();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v77[0] = v66;
      *v65 = 136315394;
      v76 = *a2;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v67 = sub_24A4AB870();
      v69 = sub_24A37BD58(v67, v68, v77);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      swift_beginAccess();
      v75 = *(a8 + 16);
      v70 = v75;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v71 = sub_24A4AB870();
      v73 = sub_24A37BD58(v71, v72, v77);

      *(v65 + 14) = v73;
      _os_log_impl(&dword_24A376000, v63, v64, "%s: removeFutureFollowerError error: %s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v66, -1, -1);
      MEMORY[0x24C219130](v65, -1, -1);
    }

    LOBYTE(v75) = 0;
    swift_beginAccess();
    v28 = *(a7 + 16);
    v74 = v28;
    v30 = &v75;
    goto LABEL_25;
  }

  sub_24A451C68(v60, v61, 0);
  LOBYTE(v77[0]) = 2;
  a4(v77, 0);
}

uint64_t sub_24A47B2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v19;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = *(*(sub_24A3C9CEC(&qword_27EF40C28, &qword_24A4BC550) - 8) + 64) + 15;
  v8[8] = swift_task_alloc();
  v8[9] = swift_task_alloc();
  v10 = sub_24A4AAD70();
  v8[10] = v10;
  v11 = *(v10 - 8);
  v8[11] = v11;
  v12 = *(v11 + 64) + 15;
  v8[12] = swift_task_alloc();
  v13 = *(*(sub_24A4AADE0() - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v14 = sub_24A4AAEA0();
  v8[14] = v14;
  v15 = *(v14 - 8);
  v8[15] = v15;
  v16 = *(v15 + 64) + 15;
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A47B484, 0, 0);
}

uint64_t sub_24A47B484()
{
  v41 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  v0[18] = sub_24A378E18(v1, qword_27EF4E260);
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFActionsController: performing respond to friendship invite", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  v10 = v0[2];
  v9 = v0[3];

  LODWORD(v10) = *(v10 + 40);
  (*(v8 + 104))(v6, *MEMORY[0x277D09048], v7);
  sub_24A4AADF0();
  v11 = sub_24A4AB3B0();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[19] = sub_24A4AB3D0();
  v14 = *(v9 + 16);
  if (v10 == 1)
  {
    if (!v14)
    {
      v16 = MEMORY[0x277D84F90];
      goto LABEL_13;
    }

    v15 = v0[3];
    v16 = sub_24A40B3D0(v14, 0);
    v17 = *(sub_24A4AB220() - 8);
    sub_24A40C53C(&v40, (v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80))), v14, v15);
    v19 = v18;

    v20 = sub_24A3A13C0();
    if (v19 == v14)
    {
LABEL_13:
      v0[20] = v16;
      v29 = v0[9];
      v30 = sub_24A4AB220();
      (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
      v31 = *(MEMORY[0x277D09390] + 4);
      v32 = swift_task_alloc();
      v0[21] = v32;
      *v32 = v0;
      v32[1] = sub_24A47B900;
      v20 = v0[17];
      v22 = v0[9];
      v21 = v16;
      v23 = 0;

      return MEMORY[0x28215FAB0](v20, v21, v22, v23);
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return MEMORY[0x28215FAB0](v20, v21, v22, v23);
  }

  if (v14)
  {
    v24 = v0[3];
    v25 = sub_24A40B3D0(v14, 0);
    v26 = *(sub_24A4AB220() - 8);
    sub_24A40C53C(&v40, (v25 + ((*(v26 + 80) + 32) & ~*(v26 + 80))), v14, v24);
    v28 = v27;

    v20 = sub_24A3A13C0();
    if (v28 != v14)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v0[23] = v25;
  v33 = v0[8];
  v34 = sub_24A4AB220();
  (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  v35 = *(MEMORY[0x277D09398] + 4);
  v36 = swift_task_alloc();
  v0[24] = v36;
  *v36 = v0;
  v36[1] = sub_24A47BB74;
  v37 = v0[16];
  v38 = v0[8];

  return MEMORY[0x28215FAB8](v37, v25, v38, 0);
}

uint64_t sub_24A47B900()
{
  v2 = *v1;
  v3 = (*v1)[21];
  v4 = *v1;
  v2[22] = v0;

  v5 = v2[20];
  v6 = v2[19];
  if (v0)
  {
    sub_24A37EF2C(v2[9], &qword_27EF40C28, &qword_24A4BC550);

    v7 = sub_24A47BD34;
  }

  else
  {
    v8 = v2[17];
    v9 = v2[14];
    v10 = v2[15];
    v11 = v2[9];

    sub_24A37EF2C(v11, &qword_27EF40C28, &qword_24A4BC550);
    (*(v10 + 8))(v8, v9);
    v7 = sub_24A47BAC0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24A47BAC0()
{
  v1 = *(*(v0 + 32) + 48);
  sub_24A4510AC(**(v0 + 40), *(*(v0 + 40) + 8), 0);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24A47BB74()
{
  v2 = *v1;
  v3 = (*v1)[24];
  v4 = *v1;
  v2[25] = v0;

  v5 = v2[23];
  v6 = v2[19];
  if (v0)
  {
    sub_24A37EF2C(v2[8], &qword_27EF40C28, &qword_24A4BC550);

    v7 = sub_24A47BF00;
  }

  else
  {
    v9 = v2[15];
    v8 = v2[16];
    v10 = v2[14];
    v11 = v2[8];

    sub_24A37EF2C(v11, &qword_27EF40C28, &qword_24A4BC550);
    (*(v9 + 8))(v8, v10);
    v7 = sub_24A495840;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24A47BD34()
{
  v23 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(*(v0 + 32) + 48);
  sub_24A4510AC(**(v0 + 40), *(*(v0 + 40) + 8), 1);
  v4 = v1;
  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24A376000, v5, v6, "FMFActionsController: error when performing respond to friendship invite action: %@", v7, 0xCu);
    sub_24A37EF2C(v8, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v8, -1, -1);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  v12 = *(v0 + 48);
  v11 = *(v0 + 56);

  v22 = 0;
  v13 = v1;
  v12(&v22, v1);

  v15 = *(v0 + 128);
  v14 = *(v0 + 136);
  v17 = *(v0 + 96);
  v16 = *(v0 + 104);
  v19 = *(v0 + 64);
  v18 = *(v0 + 72);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_24A47BF00()
{
  v23 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  v3 = *(*(v0 + 32) + 48);
  sub_24A4510AC(**(v0 + 40), *(*(v0 + 40) + 8), 1);
  v4 = v1;
  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24A376000, v5, v6, "FMFActionsController: error when performing respond to friendship invite action: %@", v7, 0xCu);
    sub_24A37EF2C(v8, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v8, -1, -1);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  v12 = *(v0 + 48);
  v11 = *(v0 + 56);

  v22 = 0;
  v13 = v1;
  v12(&v22, v1);

  v15 = *(v0 + 128);
  v14 = *(v0 + 136);
  v17 = *(v0 + 96);
  v16 = *(v0 + 104);
  v19 = *(v0 + 64);
  v18 = *(v0 + 72);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_24A47C0CC(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t *, void *))
{
  v8 = a3[6];
  sub_24A4510AC(*a4, a4[1], a2 != 0);
  if (a2)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v9 = sub_24A4AB630();
    sub_24A378E18(v9, qword_27EF4E260);

    v10 = a2;
    v11 = sub_24A4AB600();
    v12 = sub_24A4ABCE0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 136315394;
      v15 = *a3;
      v33 = v14;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v16 = sub_24A4AB870();
      v18 = sub_24A37BD58(v16, v17, &v33);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2080;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v19 = sub_24A4ABDE0();
      v21 = sub_24A37BD58(v19, v20, &v33);

      *(v13 + 14) = v21;
      _os_log_impl(&dword_24A376000, v11, v12, "%s: error when respoding to invite: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v14, -1, -1);
      MEMORY[0x24C219130](v13, -1, -1);
    }

    LOBYTE(v33) = 0;
    v22 = a2;
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v23 = sub_24A4AB630();
    sub_24A378E18(v23, qword_27EF4E260);

    v24 = sub_24A4AB600();
    v25 = sub_24A4ABCE0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 136315138;
      v32 = *a3;
      v33 = v27;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v28 = sub_24A4AB870();
      v30 = sub_24A37BD58(v28, v29, &v33);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_24A376000, v24, v25, "%s: invite respond completed successfully.", v26, 0xCu);
      sub_24A37EEE0(v27);
      MEMORY[0x24C219130](v27, -1, -1);
      MEMORY[0x24C219130](v26, -1, -1);
    }

    LOBYTE(v33) = 2;
    v22 = 0;
  }

  return a5(&v33, v22);
}

uint64_t sub_24A47C46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(sub_24A3C9CEC(&qword_27EF40C28, &qword_24A4BC550) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v8 = sub_24A4AAD70();
  v6[6] = v8;
  v9 = *(v8 - 8);
  v6[7] = v9;
  v10 = *(v9 + 64) + 15;
  v6[8] = swift_task_alloc();
  v11 = *(*(sub_24A4AADE0() - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v12 = sub_24A4AAEA0();
  v6[10] = v12;
  v13 = *(v12 - 8);
  v6[11] = v13;
  v14 = *(v13 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A47C5F0, 0, 0);
}

uint64_t sub_24A47C5F0()
{
  v28 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  v0[13] = sub_24A378E18(v1, qword_27EF4E260);
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFActionsController: performing now now action", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[2];

  v10 = sub_24A475BD8(*(v9 + OBJC_IVAR____TtC7FMFCore15FMFNotNowAction_friend + 32));
  v11 = sub_24A489DD0(v10);

  (*(v8 + 104))(v6, *MEMORY[0x277D09048], v7);
  sub_24A4AADF0();
  v12 = sub_24A4AB3B0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[14] = sub_24A4AB3D0();
  v15 = *(v11 + 16);
  if (v15)
  {
    v16 = sub_24A40B3D0(*(v11 + 16), 0);
    v17 = *(sub_24A4AB220() - 8);
    sub_24A40C53C(&v27, (v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80))), v15, v11);
    v19 = v18;
    sub_24A3A13C0();
    if (v19 == v15)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v16 = MEMORY[0x277D84F90];
LABEL_9:
  v0[15] = v16;
  v20 = v0[5];
  v21 = sub_24A4AB220();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = *(MEMORY[0x277D09360] + 4);
  v23 = swift_task_alloc();
  v0[16] = v23;
  *v23 = v0;
  v23[1] = sub_24A47C8D8;
  v24 = v0[12];
  v25 = v0[5];

  return MEMORY[0x28215FA78](v24, v16, v25, 0);
}

uint64_t sub_24A47C8D8()
{
  v2 = *v1;
  v3 = (*v1)[16];
  v4 = *v1;
  v2[17] = v0;

  v5 = v2[15];
  v6 = v2[14];
  if (v0)
  {
    sub_24A37EF2C(v2[5], &qword_27EF40C28, &qword_24A4BC550);

    v7 = sub_24A47CBB4;
  }

  else
  {
    v9 = v2[11];
    v8 = v2[12];
    v10 = v2[10];
    v11 = v2[5];

    sub_24A37EF2C(v11, &qword_27EF40C28, &qword_24A4BC550);
    (*(v9 + 8))(v8, v10);
    v7 = sub_24A47CA98;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24A47CA98()
{
  v14 = v0;
  v1 = v0[13];
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFActionsController: finished not now action", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v5 = v0[3];
  v6 = v0[4];

  v13 = 2;
  v5(&v13, 0);
  v7 = v0[12];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24A47CBB4()
{
  v22 = v0;
  v1 = v0[17];
  v2 = v0[13];
  v3 = v1;
  v4 = sub_24A4AB600();
  v5 = sub_24A4ABCE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24A376000, v4, v5, "FMFActionsController: error when performing not now action: %@", v7, 0xCu);
    sub_24A37EF2C(v8, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v8, -1, -1);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  v11 = v0[17];
  v13 = v0[3];
  v12 = v0[4];

  v21 = 0;
  v14 = v11;
  v13(&v21, v11);

  v15 = v0[12];
  v16 = v0[8];
  v17 = v0[9];
  v18 = v0[5];

  v19 = v0[1];

  return v19();
}

uint64_t sub_24A47CD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v22;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = *(*(sub_24A3C9CEC(&qword_27EF40C28, &qword_24A4BC550) - 8) + 64) + 15;
  v8[8] = swift_task_alloc();
  v10 = sub_24A4AB220();
  v8[9] = v10;
  v11 = *(v10 - 8);
  v8[10] = v11;
  v12 = *(v11 + 64) + 15;
  v8[11] = swift_task_alloc();
  v13 = sub_24A4AAD70();
  v8[12] = v13;
  v14 = *(v13 - 8);
  v8[13] = v14;
  v15 = *(v14 + 64) + 15;
  v8[14] = swift_task_alloc();
  v16 = *(*(sub_24A4AADE0() - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v17 = sub_24A4AAEA0();
  v8[16] = v17;
  v18 = *(v17 - 8);
  v8[17] = v18;
  v19 = *(v18 + 64) + 15;
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A47CF4C, 0, 0);
}

uint64_t sub_24A47CF4C()
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  v0[19] = sub_24A378E18(v1, qword_27EF4E260);
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFActionsController: performing ask to follow friendship invite", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v22 = v0[8];
  v23 = v0[9];
  v12 = v0[2];
  v11 = v0[3];

  (*(v7 + 104))(v6, *MEMORY[0x277D09048], v8);
  sub_24A4AADF0();
  v13 = sub_24A4AB3B0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[20] = sub_24A4AB3D0();

  sub_24A406434(MEMORY[0x277D84F90]);
  sub_24A4AB200();
  (*(v9 + 56))(v22, 1, 1, v23);
  v16 = *(MEMORY[0x277D093C0] + 4);
  v17 = swift_task_alloc();
  v0[21] = v17;
  *v17 = v0;
  v17[1] = sub_24A47D198;
  v18 = v0[18];
  v19 = v0[11];
  v20 = v0[8];

  return MEMORY[0x28215FAE8](v18, v19, v20, 0);
}

uint64_t sub_24A47D198()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);
  v8 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 176) = v0;

  sub_24A37EF2C(v8, &qword_27EF40C28, &qword_24A4BC550);
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v10 = sub_24A47D4CC;
  }

  else
  {
    (*(v2[17] + 8))(v2[18], v2[16]);
    v10 = sub_24A47D37C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_24A47D37C()
{
  v18 = v0;
  v1 = v0[19];
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFActionsController: finished performing ask to follow friendship invite", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  v9 = *(v8 + 48);
  sub_24A4510AC(*(v7 + OBJC_IVAR____TtC7FMFCore20FMFAskToFollowAction_friend), *(v7 + OBJC_IVAR____TtC7FMFCore20FMFAskToFollowAction_friend + 8), 0);
  v17 = 2;
  v6(&v17, 0);
  v10 = v0[18];
  v11 = v0[14];
  v12 = v0[15];
  v13 = v0[11];
  v14 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24A47D4CC()
{
  v24 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = *(v0[4] + 48);
  sub_24A4510AC(*(v0[5] + OBJC_IVAR____TtC7FMFCore20FMFAskToFollowAction_friend), *(v0[5] + OBJC_IVAR____TtC7FMFCore20FMFAskToFollowAction_friend + 8), 1);
  v4 = v1;
  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[22];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24A376000, v5, v6, "FMFActionsController: error when performing ask to follow action: %@", v8, 0xCu);
    sub_24A37EF2C(v9, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v9, -1, -1);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  v12 = v0[22];
  v14 = v0[6];
  v13 = v0[7];

  v23 = 0;
  v15 = v12;
  v14(&v23, v12);

  v16 = v0[18];
  v17 = v0[14];
  v18 = v0[15];
  v19 = v0[11];
  v20 = v0[8];

  v21 = v0[1];

  return v21();
}

uint64_t sub_24A47D6AC(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t *, void *), uint64_t a6, void *a7, const char *a8, const char *a9)
{
  v13 = a3[6];
  sub_24A4510AC(*(a4 + *a7), *(a4 + *a7 + 8), a2 != 0);
  if (a2)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v14 = sub_24A4AB630();
    sub_24A378E18(v14, qword_27EF4E260);

    v15 = a2;
    v16 = sub_24A4AB600();
    v17 = sub_24A4ABCE0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 136315394;
      v20 = *a3;
      v38 = v19;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v21 = sub_24A4AB870();
      v23 = sub_24A37BD58(v21, v22, &v38);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v24 = sub_24A4ABDE0();
      v26 = sub_24A37BD58(v24, v25, &v38);

      *(v18 + 14) = v26;
      _os_log_impl(&dword_24A376000, v16, v17, a9, v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v19, -1, -1);
      MEMORY[0x24C219130](v18, -1, -1);
    }

    LOBYTE(v38) = 0;
    v27 = a2;
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v28 = sub_24A4AB630();
    sub_24A378E18(v28, qword_27EF4E260);

    v29 = sub_24A4AB600();
    v30 = sub_24A4ABCE0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 136315138;
      v37 = *a3;
      v38 = v32;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v33 = sub_24A4AB870();
      v35 = sub_24A37BD58(v33, v34, &v38);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_24A376000, v29, v30, a8, v31, 0xCu);
      sub_24A37EEE0(v32);
      MEMORY[0x24C219130](v32, -1, -1);
      MEMORY[0x24C219130](v31, -1, -1);
    }

    LOBYTE(v38) = 2;
    v27 = 0;
  }

  return a5(&v38, v27);
}

uint64_t sub_24A47DA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  return MEMORY[0x2822009F8](sub_24A47DA78, 0, 0);
}

uint64_t sub_24A47DA78()
{
  v18 = v0;
  v1 = *(v0[7] + 48);
  v0[11] = v1;
  v2 = *(v1 + 56);
  sub_24A3C9CEC(&qword_27EF3F7E8, &qword_24A4BC5A0);
  sub_24A4ABD70();
  v3 = v0[4];
  if (v3)
  {
    v4 = v0[5];
    v6 = v0[2];
    v5 = v0[3];
    v7 = *(v0[8] + 17);

    sub_24A37F110(v6, v5, v3);
    v8 = 256;
    if (!v7)
    {
      v8 = 0;
    }

    v14 = v8 | v6 & 0xFF010001;
    v15 = v5;
    v16 = v3;
    v17 = v4;
    sub_24A452308(&v14, 0);
    sub_24A37F110(v14, v15, v16);
  }

  v9 = *(v0[7] + 144);
  v10 = *(v0[8] + 17);
  v11 = *(MEMORY[0x277D09348] + 4);
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_24A47DBF8;

  return MEMORY[0x28215FA58](v10);
}

uint64_t sub_24A47DBF8()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_24A47DF14;
  }

  else
  {
    v3 = sub_24A47DD0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A47DD0C()
{
  v17 = v0;
  v1 = v0[11];
  memset(v16, 0, sizeof(v16));
  sub_24A452308(v16, 0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = sub_24A4AB630();
  sub_24A378E18(v3, qword_27EF4E260);

  v4 = sub_24A4AB600();
  v5 = sub_24A4ABCE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v16[0] = v8;
    *v7 = 136315138;
    v0[6] = *v6;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v9 = sub_24A4AB870();
    v11 = sub_24A37BD58(v9, v10, v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24A376000, v4, v5, "%s: show/hide location operation completed.", v7, 0xCu);
    sub_24A37EEE0(v8);
    MEMORY[0x24C219130](v8, -1, -1);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  v12 = v0[9];
  v13 = v0[10];
  LOBYTE(v16[0]) = 2;
  v12(v16, 0);
  v14 = v0[1];

  return v14();
}

uint64_t sub_24A47DF14()
{
  v19 = v0;
  v1 = v0[11];
  memset(v18, 0, sizeof(v18));
  sub_24A452308(v18, 0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v3 = sub_24A4AB630();
  sub_24A378E18(v3, qword_27EF4E260);
  v4 = v2;
  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24A376000, v5, v6, "FMFActionsController: error when show/hide location: %@", v8, 0xCu);
    sub_24A37EF2C(v9, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v9, -1, -1);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  v12 = v0[13];
  v14 = v0[9];
  v13 = v0[10];

  LOBYTE(v18[0]) = 0;
  v15 = v12;
  v14(v18, v12);

  v16 = v0[1];

  return v16();
}

uint64_t sub_24A47E0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_24A4AAD70();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = *(*(sub_24A4AADE0() - 8) + 64) + 15;
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A47E1E4, 0, 0);
}

uint64_t sub_24A47E1E4()
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  v0[10] = sub_24A378E18(v1, qword_27EF4E260);
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFActionsController: performing update me device", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[2];

  (*(v8 + 104))(v6, *MEMORY[0x277D09048], v7);
  sub_24A4AADF0();
  v10 = sub_24A4AB3B0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v0[11] = sub_24A4AB3D0();
  v13 = *(v9 + 24);
  v14 = *(v9 + 32);
  v15 = *(MEMORY[0x277D09440] + 4);
  v16 = swift_task_alloc();
  v0[12] = v16;
  *v16 = v0;
  v16[1] = sub_24A47E3AC;

  return MEMORY[0x28215FB70](v13, v14);
}

uint64_t sub_24A47E3AC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_24A47E5F4;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_24A47E4C8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24A47E4C8()
{
  v14 = v0;
  v1 = v0[10];
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFActionsController: finsihed performing update me device", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  v8 = *(v7 + 48);
  memset(v13, 0, 57);
  sub_24A452B2C(v13, 0);
  LOBYTE(v13[0]) = 2;
  v6(v13, 0);
  v10 = v0[8];
  v9 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24A47E5F4()
{
  v21 = v0;
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];

  v4 = v1;
  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24A376000, v5, v6, "FMFActionsController: error when setting active location sharing device: %@", v8, 0xCu);
    sub_24A37EF2C(v9, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v9, -1, -1);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  v12 = v0[13];
  v14 = v0[4];
  v13 = v0[5];

  v20 = 0;
  v15 = v12;
  v14(&v20, v12);

  v17 = v0[8];
  v16 = v0[9];

  v18 = v0[1];

  return v18();
}

uint64_t sub_24A47E78C(uint64_t a1, void *a2, uint64_t *a3, uint64_t (*a4)(_OWORD *, void *))
{
  v7 = a3[6];
  memset(v32, 0, 57);
  sub_24A452B2C(v32, 0);
  if (a2)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v8 = sub_24A4AB630();
    sub_24A378E18(v8, qword_27EF4E260);

    v9 = a2;
    v10 = sub_24A4AB600();
    v11 = sub_24A4ABCE0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 136315394;
      v14 = *a3;
      *&v32[0] = v13;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v15 = sub_24A4AB870();
      v17 = sub_24A37BD58(v15, v16, v32);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2080;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v18 = sub_24A4ABDE0();
      v20 = sub_24A37BD58(v18, v19, v32);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_24A376000, v10, v11, "%s: error when show/hide location: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v13, -1, -1);
      MEMORY[0x24C219130](v12, -1, -1);
    }

    LOBYTE(v32[0]) = 0;
    v21 = a2;
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v22 = sub_24A4AB630();
    sub_24A378E18(v22, qword_27EF4E260);

    v23 = sub_24A4AB600();
    v24 = sub_24A4ABCE0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 136315138;
      v31 = *a3;
      *&v32[0] = v26;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v27 = sub_24A4AB870();
      v29 = sub_24A37BD58(v27, v28, v32);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_24A376000, v23, v24, "%s: show/hide location operation completed.", v25, 0xCu);
      sub_24A37EEE0(v26);
      MEMORY[0x24C219130](v26, -1, -1);
      MEMORY[0x24C219130](v25, -1, -1);
    }

    LOBYTE(v32[0]) = 2;
    v21 = 0;
  }

  return a4(v32, v21);
}

uint64_t sub_24A47EB38(uint64_t a1, void *a2, uint64_t *a3, uint64_t (*a4)(_OWORD *, void *), uint64_t a5, const char *a6, const char *a7)
{
  v12 = a3[6];
  memset(v37, 0, sizeof(v37));
  sub_24A452308(v37, 0);
  if (a2)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v13 = sub_24A4AB630();
    sub_24A378E18(v13, qword_27EF4E260);

    v14 = a2;
    v15 = sub_24A4AB600();
    v16 = sub_24A4ABCE0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 136315394;
      v19 = *a3;
      *&v37[0] = v18;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v20 = sub_24A4AB870();
      v22 = sub_24A37BD58(v20, v21, v37);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v23 = sub_24A4ABDE0();
      v25 = sub_24A37BD58(v23, v24, v37);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_24A376000, v15, v16, a7, v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v18, -1, -1);
      MEMORY[0x24C219130](v17, -1, -1);
    }

    LOBYTE(v37[0]) = 0;
    v26 = a2;
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v27 = sub_24A4AB630();
    sub_24A378E18(v27, qword_27EF4E260);

    v28 = sub_24A4AB600();
    v29 = sub_24A4ABCE0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 136315138;
      v36 = *a3;
      *&v37[0] = v31;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v32 = sub_24A4AB870();
      v34 = sub_24A37BD58(v32, v33, v37);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_24A376000, v28, v29, a6, v30, 0xCu);
      sub_24A37EEE0(v31);
      MEMORY[0x24C219130](v31, -1, -1);
      MEMORY[0x24C219130](v30, -1, -1);
    }

    LOBYTE(v37[0]) = 2;
    v26 = 0;
  }

  return a4(v37, v26);
}

uint64_t sub_24A47EEDC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v106 = a3;
  v107 = a1;
  v6 = type metadata accessor for FMFLabelledLocation();
  v7 = *(v6 - 8);
  v112 = v6;
  v113 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v97 = (&v96 - v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v96 - v14;
  MEMORY[0x28223BE20](v16);
  v111 = &v96 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v96 - v19;
  v21 = sub_24A3C9CEC(&qword_27EF3FEA0, &qword_24A4B8C68);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v99 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v98 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v96 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v102 = &v96 - v29;
  MEMORY[0x28223BE20](v30);
  v110 = &v96 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v96 - v33;
  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v35 = sub_24A4AB630();
    sub_24A378E18(v35, qword_27EF4E260);

    v36 = sub_24A4AB600();
    v37 = sub_24A4ABCE0();

    v38 = os_log_type_enabled(v36, v37);
    v109 = v34;
    v105 = v4;
    v103 = v10;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = a2;
      v41 = swift_slowAlloc();
      v116[0] = v41;
      *v39 = 136315138;
      v115[0] = *v4;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v42 = sub_24A4AB870();
      v44 = sub_24A37BD58(v42, v43, v116);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_24A376000, v36, v37, "%s: adding or updating label action initiated", v39, 0xCu);
      sub_24A37EEE0(v41);
      v45 = v41;
      a2 = v40;
      v34 = v109;
      MEMORY[0x24C219130](v45, -1, -1);
      MEMORY[0x24C219130](v39, -1, -1);
    }

    v4 = v107;
    v10 = (v107 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_locationToLabel);
    v108 = *(type metadata accessor for FMFLocation() + 44);
    memcpy(v116, v10 + v108, 0x161uLL);
    v46 = sub_24A3B9C24(v116);
    v104 = a2;
    if (v46 == 1 || (v47 = v116[43]) == 0)
    {
      (*(v113 + 7))(v34, 1, 1, v112);
      goto LABEL_23;
    }

    v48 = *(v116[43] + 16);
    if (!v48)
    {
      break;
    }

    v34 = (v116[43] + ((*(v113 + 80) + 32) & ~*(v113 + 80)));

    a2 = 0;
    while (a2 < *(v47 + 16))
    {
      sub_24A495474(&v34[*(v113 + 9) * a2], v20, type metadata accessor for FMFLabelledLocation);
      if (*(v20 + 3))
      {
        v49 = v20[32];
        if (v49 > 1)
        {
          if (v49 != 2)
          {
            goto LABEL_21;
          }
        }

        else if (v49 != 1)
        {

LABEL_21:

          v34 = v109;
          sub_24A4954DC(v20, v109, type metadata accessor for FMFLabelledLocation);
          (*(v113 + 7))(v34, 0, 1, v112);
          goto LABEL_22;
        }

        v4 = sub_24A4AC270();

        if (v4)
        {
          goto LABEL_21;
        }
      }

      ++a2;
      sub_24A489C74(v20, type metadata accessor for FMFLabelledLocation);
      if (v48 == a2)
      {

        v34 = v109;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_47:
    swift_once();
  }

LABEL_20:
  (*(v113 + 7))(v34, 1, 1, v112);
LABEL_22:
  v4 = v107;
LABEL_23:
  v50 = v34;
  v51 = v110;
  sub_24A37B740(v50, v110, &qword_27EF3FEA0, &qword_24A4B8C68);
  v52 = v4 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_label;
  v53 = *(v4 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_label);
  v54 = *(v52 + 8);
  v100 = *(v52 + 16);
  v55 = v10[1];
  v107 = *v10;
  v56 = v108;
  memcpy(v115, v10 + v108, 0x161uLL);
  v57 = sub_24A3B9C24(v115);
  v101 = v53;
  if (v57 == 1)
  {

    v58 = 0;
  }

  else
  {
    v59 = v115[38];

    v60 = v59;
    v56 = v108;
    [v60 coordinate];
    v58 = v61;
  }

  memcpy(v114, v10 + v56, 0x161uLL);
  v62 = sub_24A3B9C24(v114);
  v63 = 0;
  if (v62 != 1)
  {
    [v114[38] coordinate];
    v63 = v64;
  }

  v65 = v102;
  sub_24A37B740(v51, v102, &qword_27EF3FEA0, &qword_24A4B8C68);
  v66 = *(v113 + 6);
  v113 = (v113 + 48);
  if (v66(v65, 1, v112) == 1)
  {
    sub_24A37EF2C(v65, &qword_27EF3FEA0, &qword_24A4B8C68);
    v67 = 0;
    v68 = 0;
  }

  else
  {
    v69 = v97;
    sub_24A4954DC(v65, v97, type metadata accessor for FMFLabelledLocation);
    v67 = *v69;
    v68 = v69[1];

    sub_24A489C74(v69, type metadata accessor for FMFLabelledLocation);
  }

  v70 = v107;
  *v15 = v67;
  *(v15 + 1) = v68;
  *(v15 + 2) = v101;
  *(v15 + 3) = v54;
  *(v15 + 16) = v100;
  v71 = v110;
  if (!v55)
  {
    v72 = v96;
    sub_24A37B740(v110, v96, &qword_27EF3FEA0, &qword_24A4B8C68);
    if (v66(v72, 1, v112) == 1)
    {
      sub_24A37EF2C(v72, &qword_27EF3FEA0, &qword_24A4B8C68);
      v70 = 0;
      v55 = 0;
    }

    else
    {
      v70 = *(v72 + 40);
      v55 = *(v72 + 48);

      sub_24A489C74(v72, type metadata accessor for FMFLabelledLocation);
    }
  }

  *(v15 + 5) = v70;
  *(v15 + 6) = v55;
  if (v57 == 1)
  {
    v73 = v98;
    sub_24A37B740(v71, v98, &qword_27EF3FEA0, &qword_24A4B8C68);
    if (v66(v73, 1, v112) == 1)
    {
      sub_24A37EF2C(v73, &qword_27EF3FEA0, &qword_24A4B8C68);
      v74 = 1;
      v58 = 0;
    }

    else
    {
      v58 = *(v73 + 56);
      v74 = *(v73 + 64);
      sub_24A489C74(v73, type metadata accessor for FMFLabelledLocation);
    }
  }

  else
  {
    v74 = 0;
  }

  *(v15 + 7) = v58;
  v15[64] = v74;
  if (v62 == 1)
  {
    v75 = v99;
    sub_24A37BE24(v71, v99, &qword_27EF3FEA0, &qword_24A4B8C68);
    v76 = v66(v75, 1, v112);
    v77 = v103;
    if (v76 == 1)
    {
      sub_24A37EF2C(v75, &qword_27EF3FEA0, &qword_24A4B8C68);
      v78 = 1;
      v63 = 0;
    }

    else
    {
      v63 = *(v75 + 72);
      v79 = v75;
      v78 = *(v75 + 80);
      sub_24A489C74(v79, type metadata accessor for FMFLabelledLocation);
    }
  }

  else
  {
    sub_24A37EF2C(v71, &qword_27EF3FEA0, &qword_24A4B8C68);
    v78 = 0;
    v77 = v103;
  }

  v80 = v104;
  *(v15 + 9) = v63;
  v15[80] = v78;
  v81 = *(v112 + 9);
  v82 = sub_24A4AAAD0();
  (*(*(v82 - 8) + 56))(&v15[v81], 1, 1, v82);
  v83 = v111;
  sub_24A4954DC(v15, v111, type metadata accessor for FMFLabelledLocation);
  sub_24A495474(v83, v77, type metadata accessor for FMFLabelledLocation);
  updated = type metadata accessor for FMFAddUpdateLabelRequest();
  v85 = *(updated + 48);
  v86 = *(updated + 52);
  v87 = swift_allocObject();
  sub_24A495474(v77, v87 + qword_27EF4E1D0, type metadata accessor for FMFLabelledLocation);
  v88 = sub_24A3A45B8(0xD000000000000016, 0x800000024A4B3350);
  v113 = type metadata accessor for FMFLabelledLocation;
  sub_24A489C74(v77, type metadata accessor for FMFLabelledLocation);
  v89 = v105;
  v90 = v105[15];
  v91 = v105[16];
  v112 = sub_24A37EACC(v105 + 12, v90);
  v92 = swift_allocObject();
  v92[2] = v89;
  v92[3] = v80;
  v92[4] = v106;
  v93 = *(v91 + 64);
  refreshed = type metadata accessor for FMFInitRefreshClientResponse();

  v93(v88, sub_24A489AA4, v92, refreshed, v90, v91);

  sub_24A489C74(v111, v113);
  return sub_24A37EF2C(v109, &qword_27EF3FEA0, &qword_24A4B8C68);
}

void sub_24A47FA48(uint64_t a1, void *a2, void **a3, void (*a4)(void, void))
{
  v8 = sub_24A3C9CEC(&qword_27EF3F1C8, &unk_24A4B7C70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v49 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = (&v49 - v16);
  if (!a2)
  {
    if (!a1)
    {
LABEL_19:
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v41 = sub_24A4AB630();
      sub_24A378E18(v41, qword_27EF4E260);

      v42 = sub_24A4AB600();
      v43 = sub_24A4ABCE0();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 136315138;
        v51 = *a3;
        v52 = v45;
        sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
        v46 = sub_24A4AB870();
        v48 = sub_24A37BD58(v46, v47, &v52);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_24A376000, v42, v43, "%s: Updated labels.", v44, 0xCu);
        sub_24A37EEE0(v45);
        MEMORY[0x24C219130](v45, -1, -1);
        MEMORY[0x24C219130](v44, -1, -1);
      }

      LOBYTE(v52) = 2;
      v30 = 0;
      goto LABEL_24;
    }

    sub_24A37B740(a1 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse, &v49 - v16, &qword_27EF3F1C8, &unk_24A4B7C70);
    v31 = type metadata accessor for FMFCommandResponseFragment();
    v50 = *(*(v31 - 8) + 48);
    if (v50(v17, 1, v31) == 1)
    {
      sub_24A37EF2C(v17, &qword_27EF3F1C8, &unk_24A4B7C70);
    }

    else
    {
      v32 = a4;
      v33 = *v17;
      sub_24A489C74(v17, type metadata accessor for FMFCommandResponseFragment);
      v34 = v33 == 529;
      a4 = v32;
      if (v34)
      {
        goto LABEL_18;
      }
    }

    sub_24A37B740(a1 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse, v14, &qword_27EF3F1C8, &unk_24A4B7C70);
    if (v50(v14, 1, v31) == 1)
    {
      sub_24A37EF2C(v14, &qword_27EF3F1C8, &unk_24A4B7C70);
    }

    else
    {
      v35 = a4;
      v36 = *v14;
      sub_24A489C74(v14, type metadata accessor for FMFCommandResponseFragment);
      v34 = v36 == 530;
      a4 = v35;
      if (v34)
      {
        goto LABEL_18;
      }
    }

    sub_24A37B740(a1 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse, v11, &qword_27EF3F1C8, &unk_24A4B7C70);
    if (v50(v11, 1, v31) == 1)
    {
      sub_24A37EF2C(v11, &qword_27EF3F1C8, &unk_24A4B7C70);
      goto LABEL_19;
    }

    v37 = a4;
    v38 = *v11;
    sub_24A489C74(v11, type metadata accessor for FMFCommandResponseFragment);
    v34 = v38 == 531;
    a4 = v37;
    if (!v34)
    {
      goto LABEL_19;
    }

LABEL_18:
    LOBYTE(v52) = 0;
    sub_24A489940();
    v39 = swift_allocError();
    *v40 = 3;
    *(v40 + 8) = 256;
    a4(&v52, v39);

    return;
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v18 = sub_24A4AB630();
  sub_24A378E18(v18, qword_27EF4E260);

  v19 = a2;
  v20 = sub_24A4AB600();
  v21 = sub_24A4ABCE0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 136315394;
    v51 = *a3;
    v52 = v23;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v24 = sub_24A4AB870();
    v26 = sub_24A37BD58(v24, v25, &v52);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v51 = a2;
    sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
    v27 = sub_24A4ABDE0();
    v29 = sub_24A37BD58(v27, v28, &v52);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_24A376000, v20, v21, "%s: error when updating labels: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v23, -1, -1);
    MEMORY[0x24C219130](v22, -1, -1);
  }

  LOBYTE(v52) = 0;
  v30 = a2;
LABEL_24:
  a4(&v52, v30);
}

uint64_t sub_24A4800CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E260);

  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315138;
    v27 = *v4;
    v28 = v12;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v13 = sub_24A4AB870();
    v15 = sub_24A37BD58(v13, v14, &v28);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24A376000, v9, v10, "%s: removing labels action initiated", v11, 0xCu);
    sub_24A37EEE0(v12);
    MEMORY[0x24C219130](v12, -1, -1);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  v16 = *(a1 + 24);
  v17 = type metadata accessor for FMFRemoveLabelsRequest();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  *(swift_allocObject() + qword_27EF4E330) = v16;

  v20 = sub_24A3A45B8(0x614C6574656C6564, 0xEC000000736C6562);
  v21 = v4[15];
  v22 = v4[16];
  sub_24A37EACC(v4 + 12, v21);
  v23 = swift_allocObject();
  v23[2] = v4;
  v23[3] = a2;
  v23[4] = a3;
  v24 = *(v22 + 64);
  refreshed = type metadata accessor for FMFInitRefreshClientResponse();

  v24(v20, sub_24A489A74, v23, refreshed, v21, v22);
}

uint64_t sub_24A480370(uint64_t a1, void *a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, void *), uint64_t a5, const char *a6, const char *a7)
{
  if (a2)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v11 = sub_24A4AB630();
    sub_24A378E18(v11, qword_27EF4E260);

    v12 = a2;
    v13 = sub_24A4AB600();
    v14 = sub_24A4ABCE0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136315394;
      v17 = *a3;
      v36 = v16;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v18 = sub_24A4AB870();
      v20 = sub_24A37BD58(v18, v19, &v36);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v21 = sub_24A4ABDE0();
      v23 = sub_24A37BD58(v21, v22, &v36);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_24A376000, v13, v14, a7, v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v16, -1, -1);
      MEMORY[0x24C219130](v15, -1, -1);
    }

    LOBYTE(v36) = 0;
    v24 = a2;
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v26 = sub_24A4AB630();
    sub_24A378E18(v26, qword_27EF4E260);

    v27 = sub_24A4AB600();
    v28 = sub_24A4ABCE0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 136315138;
      v35 = *a3;
      v36 = v30;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v31 = sub_24A4AB870();
      v33 = sub_24A37BD58(v31, v32, &v36);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_24A376000, v27, v28, a6, v29, 0xCu);
      sub_24A37EEE0(v30);
      MEMORY[0x24C219130](v30, -1, -1);
      MEMORY[0x24C219130](v29, -1, -1);
    }

    LOBYTE(v36) = 2;
    v24 = 0;
  }

  return a4(&v36, v24);
}