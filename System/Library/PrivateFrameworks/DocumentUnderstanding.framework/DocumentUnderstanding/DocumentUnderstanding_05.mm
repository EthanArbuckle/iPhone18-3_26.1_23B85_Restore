uint64_t sub_232B6F1F0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v124 = a3;
  v137 = *MEMORY[0x277D85DE8];
  v122 = sub_232CE89D0();
  v9 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v121 = v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a5 + 16);
  if (v12)
  {
    v13 = a5 + 32;
    v120[0] = v10 + 8;

    v14 = 0;
    v123 = 0;
    v126 = a4;
    v127 = v12;
    v125 = a5 + 32;
    v15 = a2;
    while (1)
    {
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = a1;
      }

      v120[1] = (v16 << 16) | 7;
      v17 = v14;
      v130 = v15;
LABEL_6:
      if (v17 >= v12)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v18 = a1;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_115;
      }

      switch(*(v13 + v17))
      {
        case 1:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (a4)
          {
            v128 = v17 + 1;
            v135 = sub_232CE9DD0();
            v136 = v111;
            v133 = sub_232CE9DD0();
            v134 = v112;
            sub_232B48080();
            v113 = sub_232CEA3F0();

            if (v113)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v128 = v17 + 1;
          v20 = v121;
          sub_232CE89A0();
          v135 = sub_232CE9DD0();
          v136 = v21;
          sub_232B48080();
          v22 = sub_232CEA380();

          v135 = v22;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0);
          v23 = sub_232CE9CD0();
          v25 = v24;

          v135 = sub_232CE9DD0();
          v136 = v26;
          v27 = sub_232CEA380();

          v135 = v27;
          v28 = sub_232CE9CD0();
          v30 = v29;

          v135 = v28;
          v136 = v30;
          v133 = v23;
          v134 = v25;
          LOBYTE(v28) = sub_232CEA3F0();
          (*v120[0])(v20, v122);

          if ((v28 & 1) == 0)
          {
            goto LABEL_109;
          }

          v12 = v127;
          v17 = v128;
          v31 = v128 == v127;
          v13 = v125;
          a4 = v126;
          goto LABEL_39;
        case 3:
          v128 = v17 + 1;
          a1 = v18;
          sub_232B714B8();
          if ((v57 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v15)
          {
            goto LABEL_105;
          }

          v96 = v17 + 1;
          v97 = sub_232CE9D20();
          v98 = v15;
          v99 = v97;
          if ((v98 & 0x1000000000000000) != 0)
          {
            v100 = sub_232CE9F10();
          }

          else
          {
            v100 = sub_232CE9F20();
          }

          v101 = v100;
          v102 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v103 = [v102 scanString:v99 range:0 configuration:{v101, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v104 = sub_232CE9FE0();

          if (v104 >> 62)
          {
            v105 = sub_232CEA610();
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          v106 = 0;
          while (1)
          {
            if ((v104 & 0xC000000000000001) != 0)
            {
              v107 = MEMORY[0x2383922C0](v106, v104);
            }

            else
            {
              if (v106 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v107 = *(v104 + 8 * v106 + 32);
            }

            v108 = v107;
            v109 = v106 + 1;
            if (__OFADD__(v106, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v107 category] == 2)
            {
              v110 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v110)
              {
                break;
              }
            }

            ++v106;
            if (v109 == v105)
            {
              goto LABEL_31;
            }
          }

          v114 = v110;

          v115 = [v114 phoneNumber];
          a1 = sub_232CE9D50();
          v117 = v116;

          v15 = v117;
          a4 = v126;
          v12 = v127;
          v14 = v96;
          v13 = v125;
          if (v96 == v127)
          {
            goto LABEL_110;
          }

          continue;
        case 5:
          if (!v15)
          {
LABEL_106:
            a1 = 0;
            goto LABEL_110;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v48 = sub_232B80670();
          v135 = 0;
          if (![v48 scanInteger_])
          {

            goto LABEL_109;
          }

          v49 = [v48 isAtEnd];

          if ((v49 & 1) == 0)
          {
            goto LABEL_109;
          }

          v17 = v19;
          v31 = v19 == v12;
LABEL_39:
          a1 = v18;
LABEL_40:
          v15 = v130;
          if (v31)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 6:
          if (!v15)
          {
            goto LABEL_105;
          }

          v50 = v17 + 1;
          sub_232B48080();
          v51 = 0;
          v52 = 0;
          do
          {
            v55 = (&unk_28480D370 + 16 * v52 + 32);
            v53 = *v55;
            v54 = v55[1];
            v56 = v51;
            v135 = v18;
            v136 = v15;
            v133 = v53;
            v134 = v54;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v51 = 1;
            v52 = 1;
            v15 = v130;
          }

          while ((v56 & 1) == 0);
          v17 = v50;
          a1 = v18;
          if (v50 == v12)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 7:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v129 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v67 = *(v64 - 1);
            v66 = *v64;
            v135 = 25180;
            v136 = 0xE200000000000000;

            v68 = sub_232CE9D20();

            v69 = [v63 escapedPatternForString_];

            v70 = sub_232CE9D50();
            v72 = v71;

            MEMORY[0x238391C30](v70, v72);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v73 = v135;
            v74 = v136;
            v75 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v76 = v74;
            v77 = v123;
            v78 = sub_232BA1978(v73, v76, 0);
            if (v77)
            {

              v123 = 0;
            }

            else
            {
              v79 = v78;
              v123 = 0;
              if (v78)
              {
                v133 = 15;
                v135 = v129;
                v136 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48080();
                v80 = sub_232CEA320();
                v82 = v81;
                v83 = sub_232CE9D20();
                v43 = [v79 firstMatchInString:v83 options:0 range:{v80, v82}];

                if (v43)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 2;
            --v65;
          }

          while (v65);

          v13 = v125;
          a4 = v126;
LABEL_94:
          a1 = v18;
          goto LABEL_97;
        case 8:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v32 = sub_232CE9D20();
          v33 = v15;
          v34 = v32;
          if ((v33 & 0x1000000000000000) != 0)
          {
            v35 = sub_232CE9F10();
          }

          else
          {
            v35 = sub_232CE9F20();
          }

          v36 = v35;
          v37 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v38 = [v37 scanString:v34 range:0 configuration:{v36, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v39 = sub_232CE9FE0();

          if (v39 >> 62)
          {
            v40 = sub_232CEA610();
          }

          else
          {
            v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v18;
          if (!v40)
          {
            goto LABEL_34;
          }

          v41 = 0;
          v129 = v39 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v42 = MEMORY[0x2383922C0](v41, v39);
            }

            else
            {
              if (v41 >= *(v129 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v42 = *(v39 + 8 * v41 + 32);
            }

            v43 = v42;
            v44 = v41 + 1;
            if (!__OFADD__(v41, 1))
            {
              [v42 urlificationRange];
              sub_232CEA110();
              if (v45)
              {
              }

              else
              {
                v46 = sub_232CE9FB0();
                MEMORY[0x238391B80](v46);

                if ([v43 category] == 4)
                {
                  v47 = sub_232B75D18(v43);

                  a1 = v18;
                  if (v47)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v18;
                }
              }

              ++v41;
              if (v44 == v40)
              {
LABEL_34:

                v12 = v127;
                v17 = v128;
                v31 = v128 == v127;
                v13 = v125;
                a4 = v126;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v128 = v17 + 1;
          a1 = v18;
          if (sub_232B72018(v18, v15, v124, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v15)
          {
            goto LABEL_97;
          }

          goto LABEL_110;
        case 0xA:
          if (!v15)
          {
            goto LABEL_105;
          }

          v58 = sub_232B486F4(v18, v15);
          v15 = v59;

          v60 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v14 = v19;
          v31 = v19 == v12;
          a1 = v58;
          if (!v31)
          {
            continue;
          }

          goto LABEL_110;
        default:
          if (!v15)
          {
LABEL_105:
            a1 = v18;
            goto LABEL_110;
          }

          v128 = v17 + 1;
          v135 = v18;
          v136 = v15;
          v84 = v121;
          sub_232CE89B0();
          sub_232B48080();
          v85 = sub_232CEA3A0();
          v87 = v86;
          (*v120[0])(v84, v122);
          v135 = v85;
          v136 = v87;
          v133 = 2847580;
          v134 = 0xE300000000000000;
          v131 = 32;
          v132 = 0xE100000000000000;
          v88 = sub_232CEA3B0();
          v90 = v89;

          v91 = HIBYTE(v90) & 0xF;
          if ((v90 & 0x2000000000000000) == 0)
          {
            v91 = v88 & 0xFFFFFFFFFFFFLL;
          }

          if (!v91)
          {
            goto LABEL_31;
          }

          v92 = sub_232C0D410(&unk_28480F188);
          v93 = sub_232CE9DD0();
          v95 = sub_232BA7F18(v93, v94, v92);
          a1 = v88;

          v130 = v90;
          if (v95)
          {
LABEL_109:

            a1 = 0;
            goto LABEL_110;
          }

LABEL_97:
          v12 = v127;
          v14 = v128;
          v15 = v130;
          if (v128 == v127)
          {
            goto LABEL_110;
          }

          break;
      }
    }
  }

LABEL_110:
  v118 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_232B6FF88()
{
  sub_232B35110();
  sub_232BA6998(v5, v6, v7);
  v96 = *MEMORY[0x277D85DE8];
  v87 = sub_232CE89D0();
  v8 = sub_232BA64E0(v87);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232BA64CC();
  v12 = *(v1 + 16);
  if (!v12)
  {

    goto LABEL_103;
  }

  sub_232BA7334(v11);
  v89 = v4;
  v90 = v12;
  v88 = v3;
  v13 = v0;
  while (2)
  {
    sub_232BA676C();
LABEL_4:
    if (v14 >= v12)
    {
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_29:

      goto LABEL_102;
    }

    v15 = v2;
    v2 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_108;
    }

    switch(*(v3 + v14))
    {
      case 1:
        if (!v13)
        {
          goto LABEL_103;
        }

        if (v4)
        {
          v91 = v14 + 1;
          v78 = sub_232BA73AC();
          sub_232BA6C98(v78, v79);
          sub_232B2080C();
          sub_232CE9DD0();
          sub_232B48080();
          sub_232BA5A3C();
          v80 = sub_232CEA3F0();

          if (v80)
          {
            goto LABEL_86;
          }
        }

        goto LABEL_102;
      case 2:
        if (!v13)
        {
          goto LABEL_103;
        }

        if (!v4)
        {
          goto LABEL_102;
        }

        v91 = v14 + 1;
        sub_232CE89A0();
        sub_232B2080C();
        v16 = sub_232CE9DD0();
        sub_232BA6C98(v16, v17);
        v12 = sub_232B48080();
        sub_232BA678C();
        v18 = sub_232CEA380();

        v94 = v18;
        sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
        sub_232BA5560();
        sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0);
        sub_232BA62D4();

        v19 = sub_232BA73AC();
        v21 = v20;
        v94 = v19;
        v95 = v20;
        v22 = sub_232CEA380();

        v94 = v22;
        sub_232BA62D4();
        sub_232BA6210();

        v94 = &v94;
        v95 = v21;
        sub_232BA5A3C();
        sub_232CEA3F0();
        v23 = sub_232BA6D10();
        v24(v23);

        if ((&v94 & 1) == 0)
        {
          goto LABEL_102;
        }

        sub_232BA6364();
        v3 = v88;
        v4 = v89;
        goto LABEL_37;
      case 3:
        v91 = v14 + 1;
        sub_232BA5BC0();
        sub_232B714B8();
        if ((v41 & 1) == 0)
        {
          goto LABEL_102;
        }

        goto LABEL_88;
      case 4:
        if (!v13)
        {
          goto LABEL_103;
        }

        sub_232B2080C();
        sub_232CE9D20();
        sub_232BA71A4();
        if ((v70 & 0x1000000000000000) != 0)
        {
          sub_232CE9F10();
        }

        else
        {
          sub_232CE9F20();
        }

        v71 = objc_opt_self();
        if (qword_27DDC6368 != -1)
        {
          sub_232BA506C();
          v71 = swift_once();
        }

        v72 = sub_232BA5E44(v71, sel_scanString_range_configuration_);

        sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
        v73 = sub_232BA6E54();

        if (v73 >> 62)
        {
          v74 = sub_232BA6DC4();
          if (!v74)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v74)
          {
            goto LABEL_29;
          }
        }

        v12 = 0;
        while (1)
        {
          if ((v73 & 0xC000000000000001) != 0)
          {
            v75 = sub_232BA71E8();
            v76 = MEMORY[0x2383922C0](v75);
          }

          else
          {
            if (v12 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_111;
            }

            v76 = *(v73 + 8 * v12 + 32);
          }

          v3 = v76;
          v4 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_111:
            __break(1u);
          }

          if ([v76 category] == 2)
          {
            v77 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
            if (v77)
            {
              break;
            }
          }

          ++v12;
          if (v4 == v74)
          {
            goto LABEL_29;
          }
        }

        v85 = v77;

        v13 = [v85 phoneNumber];
        v2 = sub_232CE9D50();

        sub_232BA6C5C();
        if (v25)
        {
          goto LABEL_103;
        }

        continue;
      case 5:
        if (!v13)
        {
          goto LABEL_103;
        }

        sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

        sub_232BA5FEC();
        v38 = sub_232B80670();
        v94 = 0;
        if ([v38 scanInteger_])
        {
          v39 = [v38 isAtEnd];

          if ((v39 & 1) == 0)
          {
            goto LABEL_102;
          }

          v14 = v2;
          v25 = v2 == v12;
LABEL_37:
          v2 = v15;
LABEL_38:
          v13 = v93;
          if (v25)
          {
            goto LABEL_103;
          }

          goto LABEL_4;
        }

LABEL_102:

LABEL_103:
        v86 = *MEMORY[0x277D85DE8];
        sub_232BA67F4();
        sub_232B20A00();
        return;
      case 6:
        if (!v13)
        {
          goto LABEL_103;
        }

        v40 = v14 + 1;
        sub_232B48080();
        sub_232BA6B3C();
        do
        {
          sub_232BA6ADC();
          v94 = v15;
          v95 = v13;
          sub_232BA5A3C();
          if (sub_232BA73F4())
          {
            goto LABEL_102;
          }

          v13 = v93;
        }

        while ((v2 & 1) == 0);
        v14 = v2;
        v2 = v15;
        if (v40 == v12)
        {
          goto LABEL_103;
        }

        goto LABEL_4;
      case 7:
        if (!v13)
        {
          goto LABEL_103;
        }

        v91 = v14 + 1;
        sub_232B2080C();
        v92 = sub_232CE9DD0();
        objc_opt_self();
        v46 = &unk_28480D3D8;
        v47 = 25;
        do
        {
          v49 = *(v46 - 1);
          v48 = *v46;
          sub_232BA63EC();
          sub_232CE9D20();
          sub_232B26D70();

          v50 = sub_232BA69D8();
          v52 = [v50 v51];

          sub_232CE9D50();
          sub_232BA5EAC();

          v53 = sub_232B41C8C();
          MEMORY[0x238391C30](v53);

          sub_232BA73C4();
          v54 = objc_allocWithZone(MEMORY[0x277CCAC68]);
          v55 = sub_232BA6110();
          v58 = sub_232BA1978(v55, v56, v57);
          if (v58)
          {
            sub_232BA6DE0();
            sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
            sub_232BA5548();
            sub_232BA67C8();
            sub_232B48E4C(v59, v60, v61);
            sub_232B48080();
            sub_232BA63A8();
            sub_232CEA320();
            sub_232BA5EAC();
            v62 = sub_232CE9D20();
            v32 = sub_232BA6E6C(v58, sel_firstMatchInString_options_range_, v62);

            if (v32)
            {
              goto LABEL_105;
            }
          }

          v46 += 2;
          --v47;
        }

        while (v47);

        v3 = v88;
        v4 = v89;
LABEL_86:
        v2 = v15;
LABEL_89:
        v12 = v90;
        v13 = v93;
        if (v91 == v90)
        {
          goto LABEL_103;
        }

        continue;
      case 8:
        if (!v13)
        {
          goto LABEL_103;
        }

        v91 = v14 + 1;
        sub_232B2080C();
        sub_232CE9D20();
        sub_232BA71A4();
        if ((v26 & 0x1000000000000000) != 0)
        {
          sub_232CE9F10();
        }

        else
        {
          sub_232CE9F20();
        }

        v27 = objc_opt_self();
        if (qword_27DDC6368 != -1)
        {
          sub_232BA506C();
          v27 = swift_once();
        }

        v28 = sub_232BA5E44(v27, sel_scanString_range_configuration_);

        sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
        v12 = sub_232BA6E54();

        if (v12 >> 62)
        {
          v29 = sub_232CEA610();
        }

        else
        {
          v29 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v2 = v15;
        if (!v29)
        {
          goto LABEL_32;
        }

        sub_232BA706C();
        while (2)
        {
          if (v4)
          {
            v30 = sub_232BA5C94();
            v31 = MEMORY[0x2383922C0](v30);
          }

          else
          {
            if (v3 >= *(v92 + 16))
            {
              __break(1u);
              goto LABEL_107;
            }

            v31 = *(v12 + 8 * v3 + 32);
          }

          v32 = v31;
          v33 = (v3 + 1);
          if (!__OFADD__(v3, 1))
          {
            [v31 urlificationRange];
            sub_232BA7200();
            sub_232CEA110();
            if (v34)
            {
            }

            else
            {
              sub_232BA7200();
              v35 = sub_232CE9FB0();
              MEMORY[0x238391B80](v35);
              sub_232BA6210();

              if ([v32 category] == 4)
              {
                sub_232BA67A4();
                v37 = sub_232B756EC(v36);

                v2 = v15;
                if (v37)
                {
                  goto LABEL_29;
                }
              }

              else
              {

                v2 = v15;
              }
            }

            ++v3;
            if (v33 == v29)
            {
LABEL_32:

              sub_232BA6364();
              v3 = v88;
              v4 = v89;
              goto LABEL_38;
            }

            continue;
          }

          break;
        }

        __break(1u);
LABEL_105:

        goto LABEL_102;
      case 9:
        v91 = v14 + 1;
        v81 = sub_232BA5BC0();
        if (sub_232B72018(v81, v82, v83, v84))
        {
          goto LABEL_102;
        }

LABEL_88:
        if (v13)
        {
          goto LABEL_89;
        }

        goto LABEL_103;
      case 0xA:
        if (!v13)
        {
          goto LABEL_103;
        }

        v42 = sub_232B2080C();
        sub_232B486F4(v42, v43);
        sub_232B26D00();
        v13 = v44;

        sub_232BA5FC4();
        if (!v45)
        {
          goto LABEL_102;
        }

        v25 = v2 == v12;
        v2 = v15;
        if (!v25)
        {
          continue;
        }

        goto LABEL_103;
      default:
        if (!v13)
        {
          goto LABEL_103;
        }

        sub_232BA7314();
        sub_232B48080();
        sub_232BA6BBC();
        sub_232BA6210();
        v63 = sub_232BA7080();
        v64(v63);
        sub_232BA57C8();
        sub_232BA6388();
        sub_232CEA3B0();
        sub_232BA7354();
        sub_232BA5FC4();
        if (!v65)
        {
          goto LABEL_29;
        }

        v66 = sub_232C0D410(&unk_28480F4A0);
        sub_232B2080C();
        v67 = sub_232CE9DD0();
        v69 = sub_232BA7F18(v67, v68, v66);
        v2 = v15;

        v93 = v13;
        if (v69)
        {
          goto LABEL_102;
        }

        goto LABEL_89;
    }
  }
}

void sub_232B70A14()
{
  sub_232B35110();
  sub_232BA6998(v5, v6, v7);
  v96 = *MEMORY[0x277D85DE8];
  v87 = sub_232CE89D0();
  v8 = sub_232BA64E0(v87);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232BA64CC();
  v12 = *(v1 + 16);
  if (!v12)
  {

    goto LABEL_103;
  }

  sub_232BA7334(v11);
  v89 = v4;
  v90 = v12;
  v88 = v3;
  v13 = v0;
  while (2)
  {
    sub_232BA676C();
LABEL_4:
    if (v14 >= v12)
    {
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_29:

      goto LABEL_102;
    }

    v15 = v2;
    v2 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_108;
    }

    switch(*(v3 + v14))
    {
      case 1:
        if (!v13)
        {
          goto LABEL_103;
        }

        if (v4)
        {
          v91 = v14 + 1;
          v78 = sub_232BA73AC();
          sub_232BA6C98(v78, v79);
          sub_232B2080C();
          sub_232CE9DD0();
          sub_232B48080();
          sub_232BA5A3C();
          v80 = sub_232CEA3F0();

          if (v80)
          {
            goto LABEL_86;
          }
        }

        goto LABEL_102;
      case 2:
        if (!v13)
        {
          goto LABEL_103;
        }

        if (!v4)
        {
          goto LABEL_102;
        }

        v91 = v14 + 1;
        sub_232CE89A0();
        sub_232B2080C();
        v16 = sub_232CE9DD0();
        sub_232BA6C98(v16, v17);
        v12 = sub_232B48080();
        sub_232BA678C();
        v18 = sub_232CEA380();

        v94 = v18;
        sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
        sub_232BA5560();
        sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0);
        sub_232BA62D4();

        v19 = sub_232BA73AC();
        v21 = v20;
        v94 = v19;
        v95 = v20;
        v22 = sub_232CEA380();

        v94 = v22;
        sub_232BA62D4();
        sub_232BA6210();

        v94 = &v94;
        v95 = v21;
        sub_232BA5A3C();
        sub_232CEA3F0();
        v23 = sub_232BA6D10();
        v24(v23);

        if ((&v94 & 1) == 0)
        {
          goto LABEL_102;
        }

        sub_232BA6364();
        v3 = v88;
        v4 = v89;
        goto LABEL_37;
      case 3:
        v91 = v14 + 1;
        sub_232BA5BC0();
        sub_232B714B8();
        if ((v41 & 1) == 0)
        {
          goto LABEL_102;
        }

        goto LABEL_88;
      case 4:
        if (!v13)
        {
          goto LABEL_103;
        }

        sub_232B2080C();
        sub_232CE9D20();
        sub_232BA71A4();
        if ((v70 & 0x1000000000000000) != 0)
        {
          sub_232CE9F10();
        }

        else
        {
          sub_232CE9F20();
        }

        v71 = objc_opt_self();
        if (qword_27DDC6368 != -1)
        {
          sub_232BA506C();
          v71 = swift_once();
        }

        v72 = sub_232BA5E44(v71, sel_scanString_range_configuration_);

        sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
        v73 = sub_232BA6E54();

        if (v73 >> 62)
        {
          v74 = sub_232BA6DC4();
          if (!v74)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v74)
          {
            goto LABEL_29;
          }
        }

        v12 = 0;
        while (1)
        {
          if ((v73 & 0xC000000000000001) != 0)
          {
            v75 = sub_232BA71E8();
            v76 = MEMORY[0x2383922C0](v75);
          }

          else
          {
            if (v12 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_111;
            }

            v76 = *(v73 + 8 * v12 + 32);
          }

          v3 = v76;
          v4 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_111:
            __break(1u);
          }

          if ([v76 category] == 2)
          {
            v77 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
            if (v77)
            {
              break;
            }
          }

          ++v12;
          if (v4 == v74)
          {
            goto LABEL_29;
          }
        }

        v85 = v77;

        v13 = [v85 phoneNumber];
        v2 = sub_232CE9D50();

        sub_232BA6C5C();
        if (v25)
        {
          goto LABEL_103;
        }

        continue;
      case 5:
        if (!v13)
        {
          goto LABEL_103;
        }

        sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

        sub_232BA5FEC();
        v38 = sub_232B80670();
        v94 = 0;
        if ([v38 scanInteger_])
        {
          v39 = [v38 isAtEnd];

          if ((v39 & 1) == 0)
          {
            goto LABEL_102;
          }

          v14 = v2;
          v25 = v2 == v12;
LABEL_37:
          v2 = v15;
LABEL_38:
          v13 = v93;
          if (v25)
          {
            goto LABEL_103;
          }

          goto LABEL_4;
        }

LABEL_102:

LABEL_103:
        v86 = *MEMORY[0x277D85DE8];
        sub_232BA67F4();
        sub_232B20A00();
        return;
      case 6:
        if (!v13)
        {
          goto LABEL_103;
        }

        v40 = v14 + 1;
        sub_232B48080();
        sub_232BA6B3C();
        do
        {
          sub_232BA6ADC();
          v94 = v15;
          v95 = v13;
          sub_232BA5A3C();
          if (sub_232BA73F4())
          {
            goto LABEL_102;
          }

          v13 = v93;
        }

        while ((v2 & 1) == 0);
        v14 = v2;
        v2 = v15;
        if (v40 == v12)
        {
          goto LABEL_103;
        }

        goto LABEL_4;
      case 7:
        if (!v13)
        {
          goto LABEL_103;
        }

        v91 = v14 + 1;
        sub_232B2080C();
        v92 = sub_232CE9DD0();
        objc_opt_self();
        v46 = &unk_28480D3D8;
        v47 = 25;
        do
        {
          v49 = *(v46 - 1);
          v48 = *v46;
          sub_232BA63EC();
          sub_232CE9D20();
          sub_232B26D70();

          v50 = sub_232BA69D8();
          v52 = [v50 v51];

          sub_232CE9D50();
          sub_232BA5EAC();

          v53 = sub_232B41C8C();
          MEMORY[0x238391C30](v53);

          sub_232BA73C4();
          v54 = objc_allocWithZone(MEMORY[0x277CCAC68]);
          v55 = sub_232BA6110();
          v58 = sub_232BA1978(v55, v56, v57);
          if (v58)
          {
            sub_232BA6DE0();
            sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
            sub_232BA5548();
            sub_232BA67C8();
            sub_232B48E4C(v59, v60, v61);
            sub_232B48080();
            sub_232BA63A8();
            sub_232CEA320();
            sub_232BA5EAC();
            v62 = sub_232CE9D20();
            v32 = sub_232BA6E6C(v58, sel_firstMatchInString_options_range_, v62);

            if (v32)
            {
              goto LABEL_105;
            }
          }

          v46 += 2;
          --v47;
        }

        while (v47);

        v3 = v88;
        v4 = v89;
LABEL_86:
        v2 = v15;
LABEL_89:
        v12 = v90;
        v13 = v93;
        if (v91 == v90)
        {
          goto LABEL_103;
        }

        continue;
      case 8:
        if (!v13)
        {
          goto LABEL_103;
        }

        v91 = v14 + 1;
        sub_232B2080C();
        sub_232CE9D20();
        sub_232BA71A4();
        if ((v26 & 0x1000000000000000) != 0)
        {
          sub_232CE9F10();
        }

        else
        {
          sub_232CE9F20();
        }

        v27 = objc_opt_self();
        if (qword_27DDC6368 != -1)
        {
          sub_232BA506C();
          v27 = swift_once();
        }

        v28 = sub_232BA5E44(v27, sel_scanString_range_configuration_);

        sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
        v12 = sub_232BA6E54();

        if (v12 >> 62)
        {
          v29 = sub_232CEA610();
        }

        else
        {
          v29 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v2 = v15;
        if (!v29)
        {
          goto LABEL_32;
        }

        sub_232BA706C();
        while (2)
        {
          if (v4)
          {
            v30 = sub_232BA5C94();
            v31 = MEMORY[0x2383922C0](v30);
          }

          else
          {
            if (v3 >= *(v92 + 16))
            {
              __break(1u);
              goto LABEL_107;
            }

            v31 = *(v12 + 8 * v3 + 32);
          }

          v32 = v31;
          v33 = (v3 + 1);
          if (!__OFADD__(v3, 1))
          {
            [v31 urlificationRange];
            sub_232BA7200();
            sub_232CEA110();
            if (v34)
            {
            }

            else
            {
              sub_232BA7200();
              v35 = sub_232CE9FB0();
              MEMORY[0x238391B80](v35);
              sub_232BA6210();

              if ([v32 category] == 4)
              {
                sub_232BA67A4();
                v37 = sub_232B756EC(v36);

                v2 = v15;
                if (v37)
                {
                  goto LABEL_29;
                }
              }

              else
              {

                v2 = v15;
              }
            }

            ++v3;
            if (v33 == v29)
            {
LABEL_32:

              sub_232BA6364();
              v3 = v88;
              v4 = v89;
              goto LABEL_38;
            }

            continue;
          }

          break;
        }

        __break(1u);
LABEL_105:

        goto LABEL_102;
      case 9:
        v91 = v14 + 1;
        v81 = sub_232BA5BC0();
        if (sub_232B72018(v81, v82, v83, v84))
        {
          goto LABEL_102;
        }

LABEL_88:
        if (v13)
        {
          goto LABEL_89;
        }

        goto LABEL_103;
      case 0xA:
        if (!v13)
        {
          goto LABEL_103;
        }

        v42 = sub_232B2080C();
        sub_232B486F4(v42, v43);
        sub_232B26D00();
        v13 = v44;

        sub_232BA5FC4();
        if (!v45)
        {
          goto LABEL_102;
        }

        v25 = v2 == v12;
        v2 = v15;
        if (!v25)
        {
          continue;
        }

        goto LABEL_103;
      default:
        if (!v13)
        {
          goto LABEL_103;
        }

        sub_232BA7314();
        sub_232B48080();
        sub_232BA6BBC();
        sub_232BA6210();
        v63 = sub_232BA7080();
        v64(v63);
        sub_232BA57C8();
        sub_232BA6388();
        sub_232CEA3B0();
        sub_232BA7354();
        sub_232BA5FC4();
        if (!v65)
        {
          goto LABEL_29;
        }

        v66 = sub_232C0D410(&unk_28480F738);
        sub_232B2080C();
        v67 = sub_232CE9DD0();
        v69 = sub_232BA7F18(v67, v68, v66);
        v2 = v15;

        v93 = v13;
        if (v69)
        {
          goto LABEL_102;
        }

        goto LABEL_89;
    }
  }
}

void sub_232B714B8()
{
  sub_232B35110();
  v64 = v0;
  v65 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_232CE89D0();
  v7 = sub_232B48F0C(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B3516C();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v57 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v57 - v19;
  if (v5 && v3)
  {
    sub_232CE89B0();
    sub_232CE89A0();
    v62 = v3;
    sub_232CE89C0();
    v21 = *(v9 + 8);
    v22 = sub_232BA7198();
    v21(v22);
    (v21)(v15, v6);
    sub_232CE8980();
    sub_232CE89C0();
    (v21)(v15, v6);
    v60 = v9 + 8;
    v61 = v6;
    v59 = v21;
    (v21)(v18, v6);
    sub_232B35128();
    v66 = sub_232CE9DD0();
    v67 = v23;
    v24 = sub_232B48080();
    v63 = v20;
    v25 = sub_232CEA380();

    v26 = 0;
    v27 = *(v25 + 16);
    v28 = v25 + 40;
    v29 = MEMORY[0x277D84F90];
LABEL_4:
    v30 = (v28 + 16 * v26);
    while (v27 != v26)
    {
      if (v26 >= *(v25 + 16))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      ++v26;
      sub_232BA6958(v30);
      if (v31)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v29;
        v57 = v28;
        v58 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_232BA72B4(v29[2]);
          v29 = v66;
        }

        v34 = v29[2];
        v33 = v29[3];
        if (v34 >= v33 >> 1)
        {
          sub_232B649F4(v33 > 1, v34 + 1, 1);
          v29 = v66;
        }

        v29[2] = v34 + 1;
        v35 = &v29[2 * v34];
        v35[4] = v6;
        v35[5] = v18;
        v28 = v57;
        v24 = v58;
        goto LABEL_4;
      }
    }

    v36 = sub_232CE9DD0();
    v38 = v37;
    v66 = v36;
    v67 = v37;
    v39 = sub_232CEA380();

    v40 = 0;
    v41 = *(v39 + 16);
    v42 = v39 + 40;
    v43 = MEMORY[0x277D84F90];
LABEL_14:
    v44 = (v42 + 16 * v40);
    while (v41 != v40)
    {
      if (v40 >= *(v39 + 16))
      {
        goto LABEL_31;
      }

      ++v40;
      sub_232BA6958(v44);
      if (v45)
      {

        v46 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v43;
        v64 = v42;
        if ((v46 & 1) == 0)
        {
          sub_232BA72B4(*(v43 + 16));
          v43 = v66;
        }

        v48 = *(v43 + 16);
        v47 = *(v43 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_232B649F4(v47 > 1, v48 + 1, 1);
          v43 = v66;
        }

        *(v43 + 16) = v48 + 1;
        v49 = v43 + 16 * v48;
        *(v49 + 32) = v6;
        *(v49 + 40) = v38;
        v42 = v64;
        goto LABEL_14;
      }
    }

    v51 = v29 + 5;
    v52 = -v29[2];
    v53 = -1;
    while (v52 + v53 != -1)
    {
      if (++v53 >= v29[2])
      {
        goto LABEL_32;
      }

      v54 = v51 + 2;
      v55 = *v51;
      v66 = *(v51 - 1);
      v67 = v55;
      MEMORY[0x28223BE20](v50);
      *(&v57 - 2) = &v66;

      v56 = sub_232C0A5F8(v65, (&v57 - 4), v43);

      v51 = v54;
      if (!v56)
      {
        v59(v63, v61);

        goto LABEL_29;
      }
    }

    v59(v63, v61);
  }

LABEL_29:
  sub_232B20A00();
}

uint64_t sub_232B71944(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = objc_opt_self();
    v5 = sub_232CE9D20();
    v6 = MEMORY[0x238391CC0](a1, v2);
    if (qword_27DDC6368 != -1)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v7 = [v4 scanString:v5 range:0 configuration:{v6, qword_27DDC6F80}];

      sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
      v8 = sub_232CE9FE0();

      v9 = sub_232B26B10(v8);
      if (!v9)
      {
        break;
      }

      v4 = v9;
      v6 = 0;
      v10 = v8 & 0xC000000000000001;
      v17 = v9;
      while (1)
      {
        if (v10)
        {
          v11 = MEMORY[0x2383922C0](v6, v8);
        }

        else
        {
          if (v6 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v11 = *(v8 + 8 * v6 + 32);
        }

        v12 = v11;
        v5 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v11 urlificationRange];
        sub_232CEA110();
        if (v13)
        {
        }

        else
        {
          v14 = sub_232CE9FB0();
          MEMORY[0x238391B80](v14);

          if ([v12 category] == 4)
          {
            v15 = sub_232B756EC(v12);

            v10 = v8 & 0xC000000000000001;
            v4 = v17;
            if (v15)
            {
              v2 = 1;
              goto LABEL_18;
            }
          }

          else
          {

            v10 = v8 & 0xC000000000000001;
            v4 = v17;
          }
        }

        ++v6;
        if (v5 == v4)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      swift_once();
    }

LABEL_17:
    v2 = 0;
LABEL_18:
  }

  return v2;
}

void sub_232B71B98()
{
  sub_232BA68CC();
  v19 = v2;
  if (v1)
  {
    v3 = v1;
    v4 = v0;
    objc_opt_self();
    v5 = sub_232CE9D20();
    v6 = MEMORY[0x238391CC0](v4, v3);
    if (qword_27DDC6368 != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v7 = sub_232BA72F4(v6, sel_scanString_range_configuration_);

      sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
      v8 = sub_232CE9FE0();

      v9 = sub_232B26B10(v8);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      v11 = 0;
      v12 = v8 & 0xC000000000000001;
      v20 = v9;
      while (1)
      {
        if (v12)
        {
          v13 = sub_232BA64A4();
          v14 = MEMORY[0x2383922C0](v13);
        }

        else
        {
          if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v14 = *(v8 + 8 * v11 + 32);
        }

        v15 = v14;
        v5 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          break;
        }

        [v14 urlificationRange];
        sub_232CEA110();
        if (v16)
        {
        }

        else
        {
          v17 = sub_232CE9FB0();
          MEMORY[0x238391B80](v17);

          if ([v15 category] == 4)
          {
            sub_232BA6498();
            v18 = v19();

            v12 = v8 & 0xC000000000000001;
            v10 = v20;
            if (v18)
            {
              goto LABEL_17;
            }
          }

          else
          {

            v12 = v8 & 0xC000000000000001;
            v10 = v20;
          }
        }

        ++v11;
        if (v5 == v10)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_232BA506C();
      v6 = swift_once();
    }

LABEL_17:
  }

  sub_232BA68B0();
}

uint64_t sub_232B71DC4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = objc_opt_self();
    v5 = sub_232CE9D20();
    v6 = MEMORY[0x238391CC0](a1, v2);
    if (qword_27DDC6368 != -1)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v7 = [v4 scanString:v5 range:0 configuration:{v6, qword_27DDC6F80}];

      sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
      v8 = sub_232CE9FE0();

      v9 = sub_232B26B10(v8);
      if (!v9)
      {
        break;
      }

      v4 = v9;
      v6 = 0;
      v10 = v8 & 0xC000000000000001;
      v17 = v9;
      while (1)
      {
        if (v10)
        {
          v11 = MEMORY[0x2383922C0](v6, v8);
        }

        else
        {
          if (v6 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v11 = *(v8 + 8 * v6 + 32);
        }

        v12 = v11;
        v5 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v11 urlificationRange];
        sub_232CEA110();
        if (v13)
        {
        }

        else
        {
          v14 = sub_232CE9FB0();
          MEMORY[0x238391B80](v14);

          if ([v12 category] == 4)
          {
            v15 = sub_232B75D18(v12);

            v10 = v8 & 0xC000000000000001;
            v4 = v17;
            if (v15)
            {
              v2 = 1;
              goto LABEL_18;
            }
          }

          else
          {

            v10 = v8 & 0xC000000000000001;
            v4 = v17;
          }
        }

        ++v6;
        if (v5 == v4)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      swift_once();
    }

LABEL_17:
    v2 = 0;
LABEL_18:
  }

  return v2;
}

uint64_t sub_232B72018(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || !a4)
  {
    return result;
  }

  v8 = objc_opt_self();
  sub_232B5EFF4();
  v9 = sub_232CE9D20();
  v10 = [v8 escapedPatternForString_];

  sub_232CE9D50();
  sub_232BA61C8();

  v11 = sub_232BA5FEC();
  MEMORY[0x238391C30](v11);

  sub_232BA73C4();
  v12 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v13 = sub_232B2080C();
  v15 = sub_232BA1978(v13, v14, 1);
  v16 = v15;
  if (!v15)
  {
    return 0;
  }

  v17 = sub_232BA7230();
  v19 = sub_232B124A8(v17, v18);
  sub_232BA5548();
  sub_232BA67A4();
  sub_232B48E4C(v20, v21, v22);
  sub_232B48080();
  sub_232CEA320();
  sub_232BA5D68();
  sub_232BA5C94();
  v23 = sub_232CE9D20();
  v24 = sub_232BA725C();
  v26 = [v24 v25];

  sub_232BA4DEC(0, &qword_27DDC7530, 0x277CCACC0);
  v27 = sub_232CE9FE0();

  v28 = sub_232B26B10(v27);
  if (!v28)
  {

    return 0;
  }

  v57 = v28;
  v59 = v27;
  v56 = 0;
  v29 = objc_opt_self();
  sub_232BA5C94();
  v30 = sub_232CE9D20();
  if (qword_27DDC6368 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v31 = [v29 scanString:v30 range:v19 configuration:{v4, qword_27DDC6F80, v56}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v32 = sub_232CE9FE0();

    result = sub_232B26B10(v32);
    v58 = v16;
    if (result)
    {
      v33 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v4 = 0;
      v34 = MEMORY[0x277D84F90];
      v35 = &off_2789A8000;
      do
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x2383922C0](v4, v32);
        }

        else
        {
          v36 = *(v32 + 8 * v4 + 32);
        }

        v37 = v36;
        if ([v36 v35[421]] == 1)
        {
          v38 = [v37 urlificationRange];
          v30 = v39;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = v34[2];
            sub_232BA57A8();
            sub_232B36574();
            v34 = v43;
          }

          v40 = v34[2];
          if (v40 >= v34[3] >> 1)
          {
            sub_232BA65D4();
            sub_232B36574();
            v34 = v44;
          }

          v34[2] = v40 + 1;
          v41 = &v34[2 * v40];
          v41[4] = v38;
          v41[5] = v30;
          v35 = &off_2789A8000;
        }

        else
        {
        }

        v4 = (v4 + 1);
      }

      while (v33 != v4);
    }

    else
    {
      v34 = MEMORY[0x277D84F90];
    }

    v45 = v34[2];
    if (!v45)
    {

LABEL_43:

      return 0;
    }

    v46 = 0;
    v47 = v59;
    v16 = (v59 & 0xC000000000000001);
    v29 = -v45;
LABEL_31:
    v48 = sub_232BA6974();
    sub_232B26B2C(v48);
    v49 = v16 ? MEMORY[0x2383922C0](v46, v47) : *(v59 + 32 + 8 * v46);
    v19 = v49;
    if (!__OFADD__(v46++, 1))
    {
      break;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    sub_232BA506C();
    swift_once();
  }

  v51 = -1;
  v52 = v34 + 5;
  do
  {
    if (v29 + v51 == -1)
    {

      goto LABEL_43;
    }

    if (++v51 >= v34[2])
    {
      __break(1u);
      goto LABEL_45;
    }

    v4 = v52 + 2;
    v30 = *(v52 - 1);
    v53 = *v52;
    [v19 range];
    v60.location = sub_232BA67F4();
    length = NSIntersectionRange(v60, v61).length;
    [v19 range];
    v52 = v4;
  }

  while (length != v55);

  v47 = v59;
  if (v46 != v57)
  {
    goto LABEL_31;
  }

  return 1;
}

uint64_t sub_232B72524(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v67 - v11;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v67 - v15;
  v78 = sub_232CE8D10();
  v17 = *(v78 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v78);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_232CE8E90();
  v21 = *(v77 - 8);
  v22 = v21[8];
  MEMORY[0x28223BE20](v77);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_232B124A8(&qword_27DDC70A8, &unk_232CF81B0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v80 = &v67 - v27;
  v79 = type metadata accessor for CalendarEvent(0);
  v28 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return a1;
  }

  v74 = v16;
  v75 = v30;
  v71 = a3;
  v72 = v12;
  v76 = v24;
  v31 = objc_opt_self();
  v32 = sub_232CE9D20();
  v83 = a1;
  v33 = MEMORY[0x238391CC0](a1, a2);
  v34 = a2;
  if (qword_27DDC6368 != -1)
  {
LABEL_31:
    swift_once();
  }

  v35 = [v31 scanString:v32 range:0 configuration:{v33, qword_27DDC6F80}];

  sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
  v36 = sub_232CE9FE0();

  v37 = sub_232B26B10(v36);
  if (!v37)
  {
LABEL_21:

    return 0;
  }

  v31 = v37;
  v68 = v10;
  v69 = v20;
  v70 = v17;
  v20 = 0;
  v33 = v36 & 0xC000000000000001;
  v81 = v36 & 0xFFFFFFFFFFFFFF8;
  v82 = v36 & 0xC000000000000001;
  v73 = (v21 + 1);
  v21 = &off_2789A8000;
  v17 = v83;
  v10 = v79;
  while (1)
  {
    if (v33)
    {
      v38 = MEMORY[0x2383922C0](v20, v36);
    }

    else
    {
      if (v20 >= *(v81 + 16))
      {
        goto LABEL_30;
      }

      v38 = *(v36 + 8 * v20 + 32);
    }

    v32 = v38;
    v39 = (v20 + 1);
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    [v38 v21[142]];
    sub_232CEA110();
    if ((v40 & 1) == 0)
    {
      break;
    }

LABEL_20:
    ++v20;
    if (v39 == v31)
    {
      goto LABEL_21;
    }
  }

  v41 = sub_232CE9FB0();
  v42 = MEMORY[0x238391B80](v41);
  v44 = v43;

  if ([v32 category] != 4)
  {

    goto LABEL_16;
  }

  v45 = v80;
  sub_232B73344(v32, v42, v44, v80);

  if (sub_232B12480(v45, 1, v10) == 1)
  {

    sub_232BA4D50(v45, &qword_27DDC70A8, &unk_232CF81B0);
LABEL_16:
    v17 = v83;
LABEL_19:
    v33 = v82;
    v21 = &off_2789A8000;
    goto LABEL_20;
  }

  v46 = v36;
  v47 = v31;
  v48 = v34;
  v49 = v45;
  v50 = v75;
  sub_232BA4C2C(v49, v75);
  v51 = v76;
  sub_232CE8E50();
  v52 = *(v10 + 5);
  v53 = v74;
  sub_232CE8E30();
  if (sub_232B12480(v53, 1, v78) == 1)
  {

    (*v73)(v51, v77);
    sub_232BA4C90(v50);
    sub_232BA4D50(v53, &qword_27DDC6A80, &qword_232CF6D30);
    v17 = v83;
    v34 = v48;
    v10 = v79;
    v31 = v47;
    v36 = v46;
    goto LABEL_19;
  }

  v56 = v69;
  v55 = v70;
  (*(v70 + 32))(v69, v53, v78);
  v57 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_232B485EC(v71);
  v58 = sub_232CE9D20();

  [v57 setDateFormat_];

  v59 = v72;
  sub_232CE8AC0();
  v60 = sub_232CE8F00();
  v61 = sub_232B12480(v59, 1, v60);
  sub_232BA4D50(v59, &qword_27DDC70B8, &qword_232CF81D0);
  v62 = v50;
  if (v61 != 1)
  {
    v63 = v68;
    sub_232CE8AC0();
    if (sub_232B12480(v63, 1, v60) == 1)
    {
      v64 = 0;
    }

    else
    {
      v64 = sub_232CE8ED0();
      (*(*(v60 - 8) + 8))(v63, v60);
    }

    [v57 setTimeZone_];
  }

  v65 = sub_232CE8CD0();
  v66 = [v57 stringFromDate_];

  a1 = sub_232CE9D50();
  (*(v55 + 8))(v56, v78);
  (*v73)(v76, v77);
  sub_232BA4C90(v62);
  return a1;
}

void sub_232B72C9C()
{
  sub_232B35110();
  v112 = v0;
  v113 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v11 = sub_232B2D120(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_232B3516C();
  sub_232BA6ABC();
  MEMORY[0x28223BE20](v14);
  v16 = &v97 - v15;
  v17 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v17);
  v19 = *(v18 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v20);
  v108 = &v97 - v21;
  sub_232B554F0();
  v109 = sub_232CE8D10();
  v22 = sub_232B48F0C(v109);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  sub_232B20704();
  v29 = v28 - v27;
  v107 = sub_232CE8E90();
  v30 = sub_232B48F0C(v107);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_232B20704();
  sub_232BA6FF8();
  v35 = sub_232B124A8(&qword_27DDC70A8, &unk_232CF81B0);
  sub_232B2D120(v35);
  v37 = *(v36 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v38);
  v111 = &v97 - v39;
  v40 = sub_232B554F0();
  v41 = type metadata accessor for CalendarEvent(v40);
  v42 = sub_232B13F24(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  sub_232B20704();
  v48 = v47 - v46;
  if (!v7)
  {
    goto LABEL_25;
  }

  v110 = v45;
  v99 = v5;
  v100 = v16;
  v101 = v29;
  v104 = v48;
  v105 = v2;
  v98 = v1;
  objc_opt_self();
  sub_232BA62A4();
  v49 = sub_232CE9D20();
  v106 = v7;
  v50 = MEMORY[0x238391CC0](v9, v7);
  v51 = v9;
  if (qword_27DDC6368 != -1)
  {
LABEL_34:
    sub_232BA506C();
    v50 = swift_once();
  }

  v52 = sub_232BA72F4(v50, sel_scanString_range_configuration_);

  sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
  v49 = sub_232CE9FE0();

  v53 = sub_232B26B10(v49);
  if (!v53)
  {
LABEL_24:

    goto LABEL_25;
  }

  v97 = v24;
  v54 = 0;
  v55 = v49 & 0xC000000000000001;
  v114 = v49 & 0xFFFFFFFFFFFFFF8;
  v115 = v49;
  v103 = v32 + 1;
  v32 = &off_2789A8000;
  while (1)
  {
    if (v55)
    {
      v56 = sub_232BA5CAC();
      v57 = MEMORY[0x2383922C0](v56);
    }

    else
    {
      if (v54 >= *(v114 + 16))
      {
        goto LABEL_33;
      }

      v57 = *(v49 + 8 * v54 + 32);
    }

    v58 = v57;
    v24 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    [v57 v32[142]];
    sub_232CEA110();
    if ((v59 & 1) == 0)
    {
      break;
    }

LABEL_21:
    ++v54;
    if (v24 == v53)
    {
      goto LABEL_24;
    }
  }

  v60 = v53;
  v61 = sub_232CE9FB0();
  v62 = MEMORY[0x238391B80](v61);
  v64 = v63;

  if ([v58 category] != 4)
  {

    goto LABEL_20;
  }

  v65 = v111;
  v113(v58, v62, v64);

  v66 = sub_232BA6D28();
  v67 = v110;
  sub_232B351B0(v66, v68, v110);
  if (v73)
  {

    sub_232BA4D50(v65, &qword_27DDC70A8, &unk_232CF81B0);
LABEL_20:
    v53 = v60;
    v49 = v115;
    v32 = &off_2789A8000;
    goto LABEL_21;
  }

  v69 = v104;
  sub_232BA4C2C(v65, v104);
  sub_232CE8E50();
  v102 = *(v67 + 20);
  v70 = v108;
  sub_232CE8E30();
  v71 = sub_232BA6D28();
  sub_232B351B0(v71, v72, v109);
  if (v73)
  {

    v74 = sub_232BA6FE4();
    v75(v74);
    sub_232BA4C90(v69);
    sub_232BA4D50(v70, &qword_27DDC6A80, &qword_232CF6D30);
    goto LABEL_20;
  }

  v76 = *(v97 + 32);
  v77 = v101;
  v78 = sub_232B35090();
  v79(v78);
  v80 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_232B485EC(v99);
  sub_232CE9D20();
  sub_232B26D70();

  [v80 setDateFormat_];

  v81 = v100;
  sub_232CE8AC0();
  v82 = sub_232CE8F00();
  v83 = sub_232B12480(v81, 1, v82);
  sub_232BA4D50(v81, &qword_27DDC70B8, &qword_232CF81D0);
  if (v83 != 1)
  {
    v84 = v98;
    sub_232CE8AC0();
    v85 = sub_232BA6D28();
    sub_232B351B0(v85, v86, v82);
    if (v73)
    {
      v87 = 0;
    }

    else
    {
      v87 = sub_232CE8ED0();
      sub_232BA5C58(v82);
      (*(v88 + 8))(v84, v82);
    }

    v89 = sub_232BA725C();
    [v89 v90];
  }

  v91 = sub_232CE8CD0();
  v92 = sub_232BA725C();
  v94 = [v92 v93];

  sub_232CE9D50();
  (*(v97 + 8))(v77, v109);
  v95 = sub_232BA6FE4();
  v96(v95);
  sub_232BA4C90(v69);
LABEL_25:
  sub_232BA67F4();
  sub_232B20A00();
}

uint64_t sub_232B73344@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v150 = &v140[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v155 = &v140[-v12];
  v13 = type metadata accessor for CalendarEvent(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v154 = &v140[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v146 = &v140[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v151 = &v140[-v20];
  v21 = sub_232CE8AE0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v161 = &v140[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v162 = sub_232CE8F00();
  v149 = *(v162 - 8);
  v25 = *(v149 + 64);
  v26 = MEMORY[0x28223BE20](v162);
  v148 = &v140[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v147 = &v140[-v28];
  v29 = sub_232CE8E90();
  v152 = *(v29 - 8);
  v153 = v29;
  v30 = *(v152 + 64);
  MEMORY[0x28223BE20](v29);
  v163 = &v140[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_232CE8D10();
  v156 = *(v32 - 8);
  v157 = v32;
  v33 = *(v156 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v159 = &v140[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v164 = &v140[-v36];
  v37 = sub_232CE89D0();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v140[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v165 = a2;
  v166 = a3;
  sub_232CE8990();
  sub_232B48080();
  sub_232CEA390();
  LOBYTE(a3) = v42;
  (*(v38 + 8))(v41, v37);
  if (a3)
  {
    v43 = a4;
    v44 = v13;
    return sub_232B12504(v43, 1, 1, v44);
  }

  v145 = a4;
  v160 = [objc_allocWithZone(MEMORY[0x277CC5668]) initWithDDScannerResult_];
  if (!v160)
  {
LABEL_13:
    v43 = v145;
    v44 = v13;
    return sub_232B12504(v43, 1, 1, v44);
  }

  v45 = [v160 startDate];
  if (!v45)
  {

    goto LABEL_13;
  }

  v46 = v45;
  sub_232CE8CF0();

  v47 = [a1 type];
  v48 = sub_232CE9D50();
  v50 = v49;

  sub_232B806E4(a1);
  v52 = v51;
  result = *MEMORY[0x277D04198];
  if (!*MEMORY[0x277D04198])
  {
    __break(1u);
    goto LABEL_86;
  }

  v55 = v48 == sub_232CE9D50() && v50 == v54;
  v56 = MEMORY[0x277D040B0];
  v158 = v22;
  v144 = v13;
  if (v55)
  {
    v59 = 1;
    v58 = v21;
  }

  else
  {
    v57 = sub_232CEA750();

    v58 = v21;
    if (v57)
    {
LABEL_11:
      v59 = 1;
      goto LABEL_30;
    }

    result = *v56;
    if (!*v56)
    {
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    if (v48 == sub_232CE9D50() && v50 == v60)
    {
      goto LABEL_28;
    }

    v62 = sub_232CEA750();

    if (v62)
    {
      goto LABEL_11;
    }

    result = *MEMORY[0x277D04190];
    if (!*MEMORY[0x277D04190])
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (v48 == sub_232CE9D50() && v50 == v63)
    {
LABEL_28:
      v59 = 1;
    }

    else
    {
      v59 = sub_232CEA750();
    }
  }

LABEL_30:
  result = *MEMORY[0x277D040A8];
  if (!*MEMORY[0x277D040A8])
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v66 = v48 == sub_232CE9D50() && v50 == v65;
  v143 = v59;
  if (v66)
  {
    goto LABEL_37;
  }

  v67 = sub_232CEA750();

  if (v67)
  {
LABEL_36:
    LOBYTE(v59) = v143;
LABEL_38:

    goto LABEL_39;
  }

  result = *v56;
  if (!*v56)
  {
    goto LABEL_88;
  }

  if (v48 == sub_232CE9D50() && v50 == v97)
  {
    LOBYTE(v59) = v143;
LABEL_37:

    goto LABEL_38;
  }

  v99 = sub_232CEA750();

  if (v99)
  {
    goto LABEL_36;
  }

  result = *MEMORY[0x277D040A0];
  if (!*MEMORY[0x277D040A0])
  {
LABEL_90:
    __break(1u);
    return result;
  }

  v101 = v48 == sub_232CE9D50() && v50 == v100;
  LOBYTE(v59) = v143;
  if (v101)
  {
    goto LABEL_37;
  }

  v102 = sub_232CEA750();

  if ((v102 & 1) == 0)
  {
    if ((v59 & 1) == 0)
    {
      (*(v156 + 8))(v164, v157);

      v43 = v145;
      v44 = v144;
      return sub_232B12504(v43, 1, 1, v44);
    }

    v141 = 0;
    goto LABEL_40;
  }

LABEL_39:
  v141 = 1;
  if (v59)
  {
LABEL_40:
    sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
    v69 = sub_232CE8E80();
    v70 = *(v69 - 8);
    v71 = *(v70 + 72);
    v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_232CF8180;
    v74 = v73 + v72;
    v75 = *(v70 + 104);
    v75(v74, *MEMORY[0x277CC9980], v69);
    v75(v74 + v71, *MEMORY[0x277CC99A0], v69);
    v75(v74 + 2 * v71, *MEMORY[0x277CC99A8], v69);
    v68 = sub_232C0D110(v73);
    v76 = v68;
    goto LABEL_42;
  }

  v76 = MEMORY[0x277D84FA0];
LABEL_42:
  v165 = 0x65626D754E796144;
  v166 = 0xE900000000000072;
  MEMORY[0x28223BE20](v68);
  *&v140[-16] = &v165;
  v77 = sub_232C0A5F8(sub_232B55340, &v140[-32], v52);
  v142 = v58;
  if (v77)
  {
    goto LABEL_44;
  }

  v165 = 0x6D754E68746E6F4DLL;
  v166 = 0xEB00000000726562;
  MEMORY[0x28223BE20](v77);
  *&v140[-16] = &v165;
  v77 = sub_232C0A5F8(sub_232B55340, &v140[-32], v52);
  if (v77 || (v165 = 0x626D754E72616559, v166 = 0xEA00000000007265, MEMORY[0x28223BE20](v77), *&v140[-16] = &v165, v77 = sub_232C0A5F8(sub_232B55340, &v140[-32], v52)))
  {
LABEL_44:
    v165 = 0x65626D754E796144;
    v166 = 0xE900000000000072;
    MEMORY[0x28223BE20](v77);
    *&v140[-16] = &v165;
    v78 = sub_232C0A5F8(sub_232B55340, &v140[-32], v52);
    if (v78)
    {
      sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
      v79 = sub_232CE8E80();
      v80 = *(v79 - 8);
      v81 = *(v80 + 72);
      v82 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_232CF6460;
      (*(v80 + 104))(v83 + v82, *MEMORY[0x277CC9968], v79);
      v78 = sub_232C0A394(v83, v76);
      v76 = v78;
    }

    v165 = 0x6D754E68746E6F4DLL;
    v166 = 0xEB00000000726562;
    MEMORY[0x28223BE20](v78);
    *&v140[-16] = &v165;
    v84 = sub_232C0A5F8(sub_232B55340, &v140[-32], v52);
    if (v84)
    {
      sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
      v85 = sub_232CE8E80();
      v86 = *(v85 - 8);
      v87 = *(v86 + 72);
      v88 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_232CF6460;
      (*(v86 + 104))(v89 + v88, *MEMORY[0x277CC9998], v85);
      v84 = sub_232C0A394(v89, v76);
      v76 = v84;
    }

    v90 = v154;
    v165 = 0x626D754E72616559;
    v166 = 0xEA00000000007265;
    MEMORY[0x28223BE20](v84);
    *&v140[-16] = &v165;
    v91 = sub_232C0A5F8(sub_232B55340, &v140[-32], v52);

    if (v91)
    {
      sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
      v92 = sub_232CE8E80();
      v93 = *(v92 - 8);
      v94 = *(v93 + 72);
      v95 = (*(v93 + 80) + 32) & ~*(v93 + 80);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_232CF6460;
      (*(v93 + 104))(v96 + v95, *MEMORY[0x277CC9988], v92);
      sub_232C0A394(v96, v76);
    }
  }

  else
  {

    if (v141)
    {
      sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
      v103 = sub_232CE8E80();
      v104 = *(v103 - 8);
      v105 = *(v104 + 72);
      v106 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v107 = swift_allocObject();
      *(v107 + 16) = xmmword_232CF8180;
      v108 = v107 + v106;
      v109 = *(v104 + 104);
      v109(v108, *MEMORY[0x277CC9988], v103);
      v109(v108 + v105, *MEMORY[0x277CC9998], v103);
      v109(v108 + 2 * v105, *MEMORY[0x277CC9968], v103);
      sub_232C0A394(v107, v76);
    }

    v90 = v154;
  }

  v110 = v161;
  sub_232CE8E50();
  v111 = v160;
  v112 = [v160 startTimeZone];
  if (v112)
  {
    v113 = v112;
    v114 = v147;
    sub_232CE8EE0();

    v115 = v149;
    v116 = v162;
    (*(v149 + 16))(v148, v114, v162);
    sub_232CE8E70();
    (*(v115 + 8))(v114, v116);
  }

  sub_232CE8E20();
  v117 = [v111 startTimeZone];
  if (v117)
  {
    v118 = v117;
    v119 = v151;
    sub_232CE8EE0();

    v120 = 0;
    v121 = v159;
  }

  else
  {
    v120 = 1;
    v121 = v159;
    v119 = v151;
  }

  sub_232B12504(v119, v120, 1, v162);
  sub_232CE8AD0();
  v122 = v144;
  v123 = v158;
  v124 = v142;
  (*(v158 + 16))(&v90[*(v144 + 20)], v110, v142);
  v125 = *(v122 + 24);
  sub_232B12504(&v90[v125], 1, 1, v124);
  *v90 = (v143 & 1) == 0;
  v126 = v155;
  sub_232B12504(v155, 1, 1, v124);
  v127 = [v111 endDate];
  if (v127)
  {
    v128 = v127;
    sub_232CE8CF0();

    v129 = v150;
    v130 = v121;
    v131 = v163;
    sub_232CE8E20();

    sub_232B12504(v129, 0, 1, v124);
    sub_232B55134(v129, v126);
    v132 = v126;
    if (!sub_232B12480(v126, 1, v124))
    {
      v133 = [v160 endTimeZone];
      if (v133)
      {
        v134 = v133;
        v135 = v146;
        sub_232CE8EE0();

        v136 = 0;
      }

      else
      {
        v136 = 1;
        v135 = v146;
      }

      sub_232B12504(v135, v136, 1, v162);
      sub_232CE8AD0();
      v131 = v163;
      v130 = v159;
      v124 = v142;
    }

    v137 = v157;
    v138 = *(v156 + 8);
    v138(v130, v157);
    (*(v158 + 8))(v161, v124);
    (*(v152 + 8))(v131, v153);
    v138(v164, v137);
    sub_232B552D0(v126, &v90[v125]);
  }

  else
  {

    (*(v123 + 8))(v110, v124);
    (*(v152 + 8))(v163, v153);
    (*(v156 + 8))(v164, v157);
    v132 = v126;
  }

  v139 = v145;
  sub_232BA4CEC(v90, v145);
  sub_232B12504(v139, 0, 1, v144);
  sub_232BA4D50(v132, &qword_27DDC70B0, &unk_232CF81C0);
  return sub_232BA4C90(v90);
}

void sub_232B746DC()
{
  sub_232B35110();
  v230 = v0;
  v231 = v1;
  v223 = v2;
  v232 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v15 = sub_232B2D120(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_232B3516C();
  v228 = v18 - v19;
  sub_232B20600();
  MEMORY[0x28223BE20](v20);
  sub_232B55558();
  v238 = v21;
  v22 = sub_232B554F0();
  v23 = type metadata accessor for CalendarEvent(v22);
  v24 = sub_232B13F24(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_232B20704();
  v237 = (v28 - v27);
  v29 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v30 = sub_232B2D120(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_232B3516C();
  sub_232B55424();
  MEMORY[0x28223BE20](v33);
  sub_232B55558();
  v233 = v34;
  sub_232B554F0();
  v236 = sub_232CE8AE0();
  v35 = sub_232B48F0C(v236);
  v242 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_232B20704();
  v244 = v40 - v39;
  sub_232B554F0();
  v241 = sub_232CE8F00();
  v41 = sub_232B48F0C(v241);
  v227 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  sub_232B3516C();
  sub_232B55424();
  MEMORY[0x28223BE20](v45);
  sub_232B55558();
  v225 = v46;
  sub_232B554F0();
  v47 = sub_232CE8E90();
  v48 = sub_232B48F0C(v47);
  v234 = v49;
  v235 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  sub_232B20704();
  v243 = v53 - v52;
  sub_232B554F0();
  v54 = sub_232CE8D10();
  v55 = sub_232B48F0C(v54);
  v239 = v56;
  v240 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  sub_232B3516C();
  v229 = v59 - v60;
  sub_232B20600();
  MEMORY[0x28223BE20](v61);
  sub_232B55558();
  v245 = v62;
  sub_232B554F0();
  v63 = sub_232CE89D0();
  v64 = sub_232B48F0C(v63);
  v66 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v64);
  sub_232B20704();
  v71 = v70 - v69;
  v246 = v9;
  v247 = v7;
  sub_232CE8990();
  sub_232B48080();
  sub_232B48304();
  sub_232CEA390();
  LOBYTE(v7) = v72;
  (*(v66 + 8))(v71, v63);
  if (v7)
  {
    goto LABEL_12;
  }

  v221 = v13;
  v73 = [objc_allocWithZone(MEMORY[0x277CC5668]) initWithDDScannerResult_];
  if (!v73)
  {
    goto LABEL_12;
  }

  v74 = v73;
  v75 = [v73 startDate];
  if (!v75)
  {

LABEL_12:
    sub_232B55484();
    v90 = v23;
    goto LABEL_13;
  }

  v76 = v75;
  v219 = v23;
  v220 = v74;
  sub_232CE8CF0();

  v77 = [v11 type];
  v78 = sub_232CE9D50();
  v80 = v79;

  v81 = v5(v11);
  if (!*MEMORY[0x277D04198])
  {
    __break(1u);
    goto LABEL_83;
  }

  sub_232CE9D50();
  sub_232BA6C8C();
  v83 = v83 && v80 == v82;
  v84 = MEMORY[0x277D040B0];
  v85 = v243;
  v86 = v244;
  if (v83)
  {
    goto LABEL_27;
  }

  sub_232BA5AB8();
  sub_232BA6F4C();
  sub_232BA7394();
  if (v77)
  {
LABEL_10:
    v218 = 1;
    goto LABEL_29;
  }

  if (!*v84)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  sub_232CE9D50();
  sub_232BA6C8C();
  if (v83 && v80 == v91)
  {
    goto LABEL_27;
  }

  sub_232BA5AB8();
  sub_232BA6F4C();
  sub_232BA7394();
  if (v77)
  {
    goto LABEL_10;
  }

  if (!*MEMORY[0x277D04190])
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  sub_232CE9D50();
  sub_232BA6C8C();
  if (v83 && v80 == v93)
  {
LABEL_27:
    v218 = 1;
  }

  else
  {
    sub_232BA5AB8();
    v218 = sub_232BA6F4C();
  }

LABEL_29:
  if (!*MEMORY[0x277D040A8])
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  sub_232CE9D50();
  sub_232BA6C8C();
  if (v83 && v80 == v95)
  {
    goto LABEL_49;
  }

  sub_232BA5AB8();
  sub_232BA6F4C();
  sub_232BA7394();
  if (v77)
  {
LABEL_50:

    goto LABEL_51;
  }

  if (!*v84)
  {
    goto LABEL_85;
  }

  sub_232CE9D50();
  sub_232BA6C8C();
  if (v83 && v80 == v97)
  {
LABEL_49:

    goto LABEL_50;
  }

  sub_232BA5AB8();
  sub_232BA6F4C();
  sub_232BA7394();
  if (v77)
  {
    goto LABEL_50;
  }

  if (*MEMORY[0x277D040A0])
  {
    if (v78 != sub_232CE9D50() || v80 != v99)
    {
      sub_232BA5AB8();
      v101 = sub_232CEA750();

      if ((v101 & 1) == 0)
      {
        if (v218)
        {
          v217 = 0;
          goto LABEL_52;
        }

        (*(v239 + 8))(v245, v240);

        v87 = sub_232BA5CE4();
        v90 = v219;
LABEL_13:
        sub_232B12504(v87, v88, v89, v90);
LABEL_14:
        sub_232B20A00();
        return;
      }

LABEL_51:
      v217 = 1;
      if ((v218 & 1) == 0)
      {
        v224 = MEMORY[0x277D84FA0];
LABEL_54:
        v246 = 0x65626D754E796144;
        v247 = 0xE900000000000072;
        MEMORY[0x28223BE20](v102);
        sub_232B55380();
        *(v115 - 16) = &v246;
        v117 = sub_232C0A5F8(v232, v116, v81);
        if (v117)
        {
          goto LABEL_57;
        }

        v246 = 0x6D754E68746E6F4DLL;
        v247 = 0xEB00000000726562;
        MEMORY[0x28223BE20](v117);
        sub_232B55380();
        *(v118 - 16) = &v246;
        v117 = sub_232C0A5F8(v223, v119, v81);
        if (v117 || (sub_232BA62F4(), sub_232BA6CC8(v120), MEMORY[0x28223BE20](v121), sub_232B55380(), *(v122 - 16) = &v246, v117 = sub_232C0A5F8(v123, v124, v81)))
        {
LABEL_57:
          v246 = 0x65626D754E796144;
          v247 = 0xE900000000000072;
          MEMORY[0x28223BE20](v117);
          sub_232B55380();
          *(v125 - 16) = &v246;
          v127 = v219;
          if (sub_232C0A5F8(v230, v126, v81))
          {
            sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
            v128 = sub_232BA6F1C();
            sub_232B48F0C(v128);
            v130 = v129;
            v132 = *(v131 + 72);
            v133 = sub_232BA6B6C();
            *(v133 + 16) = xmmword_232CF6460;
            (*(v130 + 104))(&v217 + v133, *MEMORY[0x277CC9968], v128);
            v134 = sub_232BA6A08();
            sub_232BA69CC(v134);
          }

          sub_232BA6FA8();
          v246 = v135;
          v247 = 0xEB00000000726562;
          MEMORY[0x28223BE20](v136);
          sub_232B55380();
          *(v137 - 16) = &v246;
          if (sub_232C0A5F8(v138, v139, v81))
          {
            sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
            v140 = sub_232BA6F1C();
            sub_232B48F0C(v140);
            v142 = v141;
            v144 = *(v143 + 72);
            v145 = sub_232BA6B6C();
            *(v145 + 16) = xmmword_232CF6460;
            (*(v142 + 104))(&v217 + v145, *MEMORY[0x277CC9998], v140);
            v146 = sub_232BA6A08();
            sub_232BA69CC(v146);
          }

          v147 = v243;
          v86 = v244;
          sub_232BA62F4();
          sub_232BA6CC8(v148);
          MEMORY[0x28223BE20](v149);
          sub_232B55380();
          *(v150 - 16) = &v246;
          v151 = sub_232BA71DC();
          v154 = sub_232C0A5F8(v151, v152, v153);

          if (v154)
          {
            sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
            v155 = sub_232BA6F1C();
            sub_232B48F0C(v155);
            v157 = v156;
            v159 = *(v158 + 72);
            v160 = (*(v156 + 80) + 32) & ~*(v156 + 80);
            v161 = swift_allocObject();
            *(v161 + 16) = xmmword_232CF6460;
            (*(v157 + 104))(v161 + v160, *MEMORY[0x277CC9988], v155);
            v162 = sub_232BA6A08();
            sub_232BA69CC(v162);
          }

          v164 = v237;
          v163 = v238;
          v165 = v236;
          v166 = v241;
        }

        else
        {

          if (v217)
          {
            sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
            v202 = sub_232BA6F1C();
            sub_232B48F0C(v202);
            v204 = v203;
            v206 = *(v205 + 72);
            v207 = (*(v203 + 80) + 32) & ~*(v203 + 80);
            v208 = swift_allocObject();
            *(v208 + 16) = xmmword_232CF8180;
            v209 = v208 + v207;
            v210 = *(v204 + 104);
            v210(v209, *MEMORY[0x277CC9988], v202);
            v210(v209 + v206, *MEMORY[0x277CC9998], v202);
            v210(v209 + 2 * v206, *MEMORY[0x277CC9968], v202);
            v211 = sub_232BA6A08();
            sub_232BA69CC(v211);
          }

          v164 = v237;
          v163 = v238;
          v165 = v236;
          v166 = v241;
          v147 = v85;
          v127 = v219;
        }

        sub_232CE8E50();
        v167 = [v220 startTimeZone];
        if (v167)
        {
          v168 = v167;
          v169 = v86;
          v170 = v225;
          sub_232CE8EE0();

          v171 = v227;
          (*(v227 + 16))(v226, v170, v166);
          sub_232CE8E70();
          v172 = v170;
          v86 = v169;
          v127 = v219;
          (*(v171 + 8))(v172, v166);
        }

        sub_232CE8E20();
        v173 = [v220 startTimeZone];
        if (v173)
        {
          v174 = v173;
          sub_232CE8EE0();
        }

        sub_232BA65D4();
        sub_232B12504(v175, v176, v177, v178);
        sub_232CE8AD0();
        v179 = v242;
        (*(v242 + 16))(&v164[*(v127 + 20)], v86, v165);
        v180 = *(v127 + 24);
        sub_232B55484();
        sub_232B12504(v181, v182, v183, v165);
        *v164 = (v218 & 1) == 0;
        sub_232B55484();
        sub_232B12504(v184, v185, v186, v165);
        v187 = v220;
        v188 = [v220 endDate];
        if (v188)
        {
          v189 = v188;
          v190 = v229;
          sub_232CE8CF0();

          v191 = v228;
          sub_232B35090();
          sub_232CE8E20();

          sub_232B351FC();
          sub_232B12504(v192, v193, v194, v165);
          sub_232B55134(v191, v163);
          if (!sub_232B12480(v163, 1, v165))
          {
            v195 = [v220 endTimeZone];
            if (v195)
            {
              v196 = v195;
              v197 = v222;
              sub_232CE8EE0();

              v198 = 0;
            }

            else
            {
              v198 = 1;
              v197 = v222;
            }

            sub_232B12504(v197, v198, 1, v241);
            sub_232CE8AD0();
            v147 = v243;
            v190 = v229;
          }

          v212 = v240;
          v213 = *(v239 + 8);
          v213(v190, v240);
          (*(v242 + 8))(v244, v165);
          (*(v234 + 8))(v147, v235);
          v213(v245, v212);
          sub_232B552D0(v163, &v164[v180]);
          v127 = v219;
        }

        else
        {

          v199 = *(v179 + 8);
          v200 = sub_232BA678C();
          v201(v200);
          (*(v234 + 8))(v147, v235);
          (*(v239 + 8))(v245, v240);
        }

        sub_232BA4CEC(v164, v221);
        sub_232B351FC();
        sub_232B12504(v214, v215, v216, v127);
        sub_232BA4D50(v163, &qword_27DDC70B0, &unk_232CF81C0);
        sub_232BA4C90(v164);
        goto LABEL_14;
      }

LABEL_52:
      sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
      v103 = sub_232BA6F1C();
      sub_232B48F0C(v103);
      v105 = v104;
      v107 = *(v106 + 72);
      v108 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v109 = swift_allocObject();
      *(v109 + 16) = xmmword_232CF8180;
      v110 = v109 + v108;
      v111 = *MEMORY[0x277CC9980];
      v112 = *(v105 + 104);
      v113 = sub_232BA69D8();
      v112(v113);
      (v112)(v110 + v107, *MEMORY[0x277CC99A0], v103);
      (v112)(v110 + 2 * v107, *MEMORY[0x277CC99A8], v103);
      v114 = sub_232C0D110(v109);
      v102 = sub_232BA69CC(v114);
      goto LABEL_54;
    }

    goto LABEL_49;
  }

LABEL_87:
  __break(1u);
}

uint64_t sub_232B756EC(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CC5668]) initWithDDScannerResult_];
  if (!v2)
  {
    return 0;
  }

  v3 = [a1 type];
  v4 = sub_232CE9D50();
  v6 = v5;

  sub_232B806E4(a1);
  v8 = v7;
  result = *MEMORY[0x277D040A8];
  if (!*MEMORY[0x277D040A8])
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v4 == sub_232CE9D50() && v6 == v10)
  {
    goto LABEL_22;
  }

  v12 = sub_232CEA750();

  if (v12)
  {
LABEL_23:

    goto LABEL_24;
  }

  result = *MEMORY[0x277D040B0];
  if (!*MEMORY[0x277D040B0])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v4 == sub_232CE9D50() && v6 == v13)
  {
LABEL_22:

    goto LABEL_23;
  }

  v15 = sub_232CEA750();

  if (v15)
  {
    goto LABEL_23;
  }

  result = *MEMORY[0x277D040A0];
  if (*MEMORY[0x277D040A0])
  {
    if (v4 != sub_232CE9D50() || v6 != v16)
    {
      v18 = sub_232CEA750();

      if ((v18 & 1) == 0)
      {

        return 0;
      }

LABEL_24:
      v25 = 0x65626D754E796144;
      v26 = 0xE900000000000072;
      MEMORY[0x28223BE20](v19);
      v24 = &v25;
      v21 = sub_232C0A5F8(sub_232B55340, v23, v8);
      if (v21 || (v25 = 0x6D754E68746E6F4DLL, v26 = 0xEB00000000726562, MEMORY[0x28223BE20](v21), v24 = &v25, v22 = sub_232C0A5F8(sub_232B55340, v23, v8)))
      {

        return 1;
      }

      else
      {
        v25 = 0x626D754E72616559;
        v26 = 0xEA00000000007265;
        MEMORY[0x28223BE20](v22);
        v24 = &v25;
        v20 = sub_232C0A5F8(sub_232B55340, v23, v8);
      }

      return v20;
    }

    goto LABEL_22;
  }

LABEL_32:
  __break(1u);
  return result;
}

void sub_232B75A60()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x277CC5668]) initWithDDScannerResult_];
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = [v7 type];
  v10 = sub_232CE9D50();
  v12 = v11;

  v13 = v5(v7);
  if (!*MEMORY[0x277D040A8])
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v10 == sub_232CE9D50() && v12 == v14)
  {
    goto LABEL_22;
  }

  sub_232BA5AB8();
  v16 = sub_232CEA750();

  if (v16)
  {
LABEL_23:

    goto LABEL_24;
  }

  if (!*MEMORY[0x277D040B0])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v10 == sub_232CE9D50() && v12 == v17)
  {
LABEL_22:

    goto LABEL_23;
  }

  sub_232BA5AB8();
  v19 = sub_232CEA750();

  if (v19)
  {
    goto LABEL_23;
  }

  if (*MEMORY[0x277D040A0])
  {
    if (v10 != sub_232CE9D50() || v12 != v20)
    {
      sub_232BA5AB8();
      v22 = sub_232CEA750();

      if ((v22 & 1) == 0)
      {

LABEL_28:
        sub_232B20A00();
        return;
      }

LABEL_24:
      v36 = 0x65626D754E796144;
      v37 = 0xE900000000000072;
      MEMORY[0x28223BE20](v23);
      sub_232B55380();
      *(v24 - 16) = &v36;
      if (sub_232C0A5F8(v3, v25, v13) || (sub_232BA6FA8(), v36 = v26, v37 = 0xEB00000000726562, MEMORY[0x28223BE20](v27), sub_232B55380(), *(v28 - 16) = &v36, sub_232C0A5F8(v1, v29, v13)))
      {
      }

      else
      {
        sub_232BA62F4();
        v36 = v30;
        v37 = 0xEA00000000007265;
        MEMORY[0x28223BE20](v31);
        sub_232B55380();
        *(v32 - 16) = &v36;
        v33 = sub_232BA725C();
        sub_232C0A5F8(v33, v34, v35);
      }

      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_232B75D18(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CC5668]) initWithDDScannerResult_];
  if (!v2)
  {
    return 0;
  }

  v3 = [a1 type];
  v4 = sub_232CE9D50();
  v6 = v5;

  sub_232B806E4(a1);
  v8 = v7;
  result = *MEMORY[0x277D040A8];
  if (!*MEMORY[0x277D040A8])
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v4 == sub_232CE9D50() && v6 == v10)
  {
    goto LABEL_22;
  }

  v12 = sub_232CEA750();

  if (v12)
  {
LABEL_23:

    goto LABEL_24;
  }

  result = *MEMORY[0x277D040B0];
  if (!*MEMORY[0x277D040B0])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v4 == sub_232CE9D50() && v6 == v13)
  {
LABEL_22:

    goto LABEL_23;
  }

  v15 = sub_232CEA750();

  if (v15)
  {
    goto LABEL_23;
  }

  result = *MEMORY[0x277D040A0];
  if (*MEMORY[0x277D040A0])
  {
    if (v4 != sub_232CE9D50() || v6 != v16)
    {
      v18 = sub_232CEA750();

      if ((v18 & 1) == 0)
      {

        return 0;
      }

LABEL_24:
      v25 = 0x65626D754E796144;
      v26 = 0xE900000000000072;
      MEMORY[0x28223BE20](v19);
      v24 = &v25;
      v21 = sub_232C0A5F8(sub_232B551FC, v23, v8);
      if (v21 || (v25 = 0x6D754E68746E6F4DLL, v26 = 0xEB00000000726562, MEMORY[0x28223BE20](v21), v24 = &v25, v22 = sub_232C0A5F8(sub_232B55340, v23, v8)))
      {

        return 1;
      }

      else
      {
        v25 = 0x626D754E72616559;
        v26 = 0xEA00000000007265;
        MEMORY[0x28223BE20](v22);
        v24 = &v25;
        v20 = sub_232C0A5F8(sub_232B55340, v23, v8);
      }

      return v20;
    }

    goto LABEL_22;
  }

LABEL_32:
  __break(1u);
  return result;
}

void sub_232B76038()
{
  sub_232B35110();
  v0 = sub_232CE9A30();
  v1 = sub_232B48F0C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_232B20704();
  sub_232BA6FF8();
  v6 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v7 = sub_232BA1978(0xD000000000000024, 0x8000000232D05910, 0);
  v8 = sub_232BA648C();
  v9 = MEMORY[0x238391CC0](v8);
  if (v7 && (v10 = v9, v11 = v7, sub_232BA648C(), v12 = sub_232CE9D20(), v13 = [v11 firstMatchInString:v12 options:0 range:{0, v10}], v11, v12, v13))
  {
    [v13 rangeAtIndex_];
    sub_232CEA110();
    if (v14)
    {
    }

    else
    {
      v24 = sub_232CE9FB0();
      MEMORY[0x238391B80](v24);

      sub_232B48080();
      sub_232BA63D0();
      sub_232CEA3B0();
    }
  }

  else
  {
    sub_232CE9A20();

    v15 = sub_232CE9A00();
    v16 = sub_232CEA1A0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v17 = 136642819;
      v18 = sub_232BA648C();
      *(v17 + 4) = sub_232BAD2D4(v18, v19, v20);
      _os_log_impl(&dword_232B02000, v15, v16, "DUAdapterPostProcessing: Regex match failed on text: %{sensitive}s", v17, 0xCu);
      sub_232B2040C(v25);
      sub_232BA6A84();
      sub_232BA6A84();
    }

    v21 = *(v3 + 8);
    v22 = sub_232BA5C94();
    v23(v22);
  }

  sub_232BA648C();
  sub_232B20A00();
}

void sub_232B76328()
{
  sub_232B35110();
  v1 = v0;
  v266 = v3;
  v267 = v2;
  v262 = v4;
  v265 = v5;
  v6 = sub_232CE8E80();
  v7 = sub_232B48F0C(v6);
  v256 = v8;
  v257 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v253 = v12 - v11;
  sub_232B554F0();
  v13 = sub_232CE8E90();
  v14 = sub_232B48F0C(v13);
  v254 = v15;
  v255 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_232B20704();
  v252 = v19 - v18;
  v20 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v21 = sub_232B2D120(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_232B3516C();
  sub_232B55424();
  MEMORY[0x28223BE20](v24);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v25);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v26);
  sub_232B20628();
  v258 = v27;
  sub_232B20600();
  MEMORY[0x28223BE20](v28);
  sub_232B20628();
  v259 = v29;
  sub_232B20600();
  MEMORY[0x28223BE20](v30);
  sub_232B20628();
  v250 = v31;
  sub_232B20600();
  v33 = MEMORY[0x28223BE20](v32);
  v35 = v246 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = v246 - v37;
  MEMORY[0x28223BE20](v36);
  sub_232B55558();
  v264 = v39;
  sub_232B554F0();
  v40 = sub_232CE8F00();
  v41 = sub_232B48F0C(v40);
  v261 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  sub_232B20704();
  v47 = v46 - v45;
  v48 = sub_232CE8D10();
  v49 = sub_232B48F0C(v48);
  v260 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  sub_232B3516C();
  sub_232B55424();
  MEMORY[0x28223BE20](v53);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v54);
  sub_232B20628();
  v263 = v55;
  sub_232B20600();
  MEMORY[0x28223BE20](v56);
  v57 = sub_232CE9A30();
  v58 = sub_232B48F0C(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  sub_232B3516C();
  v63 = v61 - v62;
  v65 = MEMORY[0x28223BE20](v64);
  v66 = MEMORY[0x28223BE20](v65);
  v67 = MEMORY[0x28223BE20](v66);
  v68 = MEMORY[0x28223BE20](v67);
  v70 = v246 - v69;
  v71 = MEMORY[0x28223BE20](v68);
  v74 = v246 - v73;
  v251 = v1;
  v268 = v71;
  v269 = v75;
  if (v1 > 1u)
  {

    goto LABEL_9;
  }

  sub_232BA626C(v71, v72);
  v76 = sub_232CEA750();

  if (v76)
  {
LABEL_9:
    sub_232CE9A20();
    v98 = sub_232CE9A00();
    v99 = sub_232CEA1A0();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = sub_232BA73DC();
      *v100 = 0;
      _os_log_impl(&dword_232B02000, v98, v99, "DUAdapterPostProcessing (checkReceivedDateExtractedDateRelationship): No enforced relationship between received date and extracted date.", v100, 2u);
      sub_232BA6A84();
    }

    sub_232BA6CF8();
    v101(v74);
    goto LABEL_15;
  }

  v77 = v267;
  if (!v267 || !v266)
  {
    sub_232CE9A20();
    v102 = sub_232CE9A00();
    v103 = sub_232CEA1A0();
    if (sub_232BA6EB8(v103))
    {
      *sub_232BA73DC() = 0;
      sub_232BA6138();
      _os_log_impl(v104, v105, v106, v107, v108, 2u);
      sub_232BA66EC();
    }

    (*(v269 + 8))(v63, v268);
    goto LABEL_15;
  }

  v78 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v79 = sub_232CE9D20();
  v80 = sub_232BA71DC();
  [v80 v81];

  v82 = v77;
  v83 = sub_232CE9D20();
  v246[1] = v78;
  v84 = sub_232BA69D8();
  v86 = [v84 v85];

  if (!v86)
  {
    sub_232CE9A20();

    v109 = sub_232CE9A00();
    v110 = sub_232CEA1A0();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v270 = v112;
      *v111 = 136642819;
      *(v111 + 4) = sub_232BAD2D4(v265, v82, &v270);
      sub_232BA6138();
      _os_log_impl(v113, v114, v115, v116, v117, 0xCu);
      sub_232B2040C(v112);
      sub_232BA6A84();
      sub_232BA66EC();
    }

    sub_232BA6D70();
    (*(v269 + 8))(v70, v268);
    goto LABEL_15;
  }

  sub_232CE8CF0();

  v87 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v88 = sub_232CE9D20();
  v89 = sub_232BA71DC();
  [v89 v90];

  sub_232CE8EF0();
  v91 = sub_232CE8ED0();
  (*(v261 + 8))(v47, v40);
  v92 = sub_232BA71DC();
  [v92 v93];

  v94 = sub_232CE9D20();
  v267 = v87;
  v95 = sub_232BA69D8();
  v97 = [v95 v96];

  if (v97)
  {
    sub_232CE8CF0();
  }

  v118 = v246[5];
  v119 = v264;
  sub_232BA65D4();
  sub_232B12504(v120, v121, v122, v123);
  sub_232BA4BBC(v38, v119);
  sub_232BA62B0();
  sub_232B2036C(v124, v125, v126, &qword_232CF6D30);
  v127 = v118;
  LODWORD(v118) = sub_232B12480(v35, 1, v118);
  v128 = sub_232B2080C();
  sub_232BA4D50(v128, v129, &qword_232CF6D30);
  if (v118 == 1)
  {
    v130 = sub_232BA6194();
    v131 = v267;
    [v267 &off_2789A82E0 + 3];

    sub_232BA678C();
    v132 = sub_232CE9D20();
    v133 = [v131 dateFromString_];

    if (v133)
    {
      sub_232CE8CF0();
    }

    v134 = v127;
    v135 = v259;
    sub_232BA4D50(v119, &qword_27DDC6A80, &qword_232CF6D30);
    sub_232BA65D4();
    sub_232B12504(v137, v138, v139, v140);
    v141 = sub_232B41C8C();
    sub_232BA4BBC(v141, v142);
    v136 = v260;
  }

  else
  {
    v134 = v127;
    v135 = v259;
    v136 = v260;
  }

  v143 = sub_232BA67F4();
  sub_232B2036C(v143, v144, v145, v146);
  sub_232B351B0(v135, 1, v134);
  if (v147)
  {
    sub_232BA4D50(v135, &qword_27DDC6A80, &qword_232CF6D30);
    v148 = v246[4];
    sub_232CE9A20();

    v149 = sub_232CE9A00();
    v150 = sub_232CEA1A0();

    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      v152 = v119;
      v153 = swift_slowAlloc();
      v270 = v153;
      *v151 = 136642819;
      v154 = sub_232BA678C();
      *(v151 + 4) = sub_232BAD2D4(v154, v155, v156);
      sub_232BA6138();
      _os_log_impl(v157, v158, v159, v160, v161, 0xCu);
      sub_232B2040C(v153);
      sub_232BA6A84();
      sub_232BA66EC();

      sub_232BA6D70();
      sub_232BA6CF8();
      v162(v148);
      v163 = v152;
    }

    else
    {

      sub_232BA6D70();
      sub_232BA6CF8();
      v165(v148);
      v163 = v119;
    }

    sub_232BA4D50(v163, &qword_27DDC6A80, &qword_232CF6D30);
    (*(v136 + 8))(v246[6], v134);
    goto LABEL_15;
  }

  v164 = *(v136 + 32);
  v164(v263, v135, v134);
  if (v251)
  {
  }

  else
  {
    v166 = sub_232CEA750();

    if ((v166 & 1) == 0)
    {

      v206 = v252;
      sub_232CE8E50();
      v207 = v256;
      (*(v256 + 104))(v253, *MEMORY[0x277CC9980], v257);
      v208 = v248;
      sub_232CE8E40();
      v209 = *(v207 + 8);
      v210 = sub_232BA678C();
      v211(v210);
      (*(v254 + 8))(v206, v255);
      v212 = v208;
      v213 = v247;
      sub_232B2036C(v212, v247, &qword_27DDC6A80, &qword_232CF6D30);
      sub_232B351B0(v213, 1, v134);
      if (v147)
      {
        sub_232BA4D50(v213, &qword_27DDC6A80, &qword_232CF6D30);
      }

      else
      {
        v214 = sub_232BA7160();
        (v164)(v214);
        sub_232BA61F8();
        sub_232BA4DA4(v215, v216);
        v217 = sub_232CE9CE0();
        v218 = *(v136 + 8);
        v219 = sub_232BA5ED4();
        v218(v219);
        if ((v217 & 1) == 0)
        {
          sub_232BA6D70();

          sub_232BA62B0();
          sub_232BA4D50(v238, v239, v240);
          v241 = sub_232BA716C();
          v218(v241);
          sub_232BA62B0();
          sub_232BA4D50(v242, v243, v244);
          v245 = sub_232BA64F4();
          v218(v245);
          goto LABEL_15;
        }
      }

      v220 = v246[2];
      sub_232CE9A20();
      v221 = sub_232CE9A00();
      v222 = sub_232CEA1A0();
      if (sub_232BA6EB8(v222))
      {
        *sub_232BA73DC() = 0;
        sub_232BA6138();
        _os_log_impl(v223, v224, v225, v226, v227, 2u);
        sub_232BA66EC();
      }

      sub_232BA6D70();
      sub_232BA6CF8();
      v228(v220);
      sub_232BA62B0();
      sub_232BA4D50(v229, v230, v231);
      v232 = *(v136 + 8);
      v233 = sub_232BA716C();
      v232(v233);
      sub_232BA62B0();
      sub_232BA4D50(v234, v235, v236);
      v237 = sub_232BA64F4();
      v232(v237);
      goto LABEL_15;
    }
  }

  v167 = v136;
  v168 = v252;
  sub_232CE8E50();
  v169 = v256;
  v170 = v257;
  v171 = v253;
  (*(v256 + 104))(v253, *MEMORY[0x277CC9980], v257);
  v172 = v258;
  sub_232BA648C();
  sub_232CE8E40();
  (*(v169 + 8))(v171, v170);
  (*(v254 + 8))(v168, v255);
  v173 = v249;
  sub_232B2036C(v172, v249, &qword_27DDC6A80, &qword_232CF6D30);
  sub_232B351B0(v173, 1, v134);
  if (v147)
  {
    sub_232BA4D50(v173, &qword_27DDC6A80, &qword_232CF6D30);
  }

  else
  {
    v174 = sub_232BA7160();
    (v164)(v174);
    sub_232BA61F8();
    sub_232BA4DA4(v175, v176);
    v177 = sub_232CE9CE0();
    v178 = *(v167 + 8);
    v179 = sub_232BA5ED4();
    v178(v179);
    if ((v177 & 1) == 0)
    {
      sub_232BA6D70();

      sub_232BA62B0();
      sub_232BA4D50(v198, v199, v200);
      v201 = sub_232BA716C();
      v178(v201);
      sub_232BA62B0();
      sub_232BA4D50(v202, v203, v204);
      v205 = sub_232BA64F4();
      v178(v205);
      goto LABEL_15;
    }
  }

  v180 = v246[3];
  sub_232CE9A20();
  v181 = sub_232CE9A00();
  v182 = sub_232CEA1A0();
  if (sub_232BA6EB8(v182))
  {
    *sub_232BA73DC() = 0;
    sub_232BA6138();
    _os_log_impl(v183, v184, v185, v186, v187, 2u);
    sub_232BA66EC();
  }

  sub_232BA6D70();
  sub_232BA6CF8();
  v188(v180);
  sub_232BA62B0();
  sub_232BA4D50(v189, v190, v191);
  v192 = *(v167 + 8);
  v193 = sub_232BA716C();
  v192(v193);
  sub_232BA62B0();
  sub_232BA4D50(v194, v195, v196);
  v197 = sub_232BA64F4();
  v192(v197);
LABEL_15:
  sub_232B20A00();
}

uint64_t sub_232B77394(char a1)
{
  if (!a1)
  {
    return 0x65726F666562;
  }

  if (a1 == 1)
  {
    return 0x7265746661;
  }

  return 1701736302;
}

uint64_t sub_232B773DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_232B72524(a1, a2, 0);
  if (!v11)
  {
    v26 = 0;
    return v26 & 1;
  }

  v12 = v10;
  v13 = v11;

  v14 = sub_232B77D44(2uLL, v12, v13);
  MEMORY[0x238391B80](v14);

  result = sub_232B72524(a3, a4, 0);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    result = 48;
    v17 = 0xE100000000000000;
  }

  v18 = HIBYTE(v17) & 0xF;
  v19 = result & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v20 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    v42 = 0;
    goto LABEL_71;
  }

  if ((v17 & 0x1000000000000000) != 0)
  {
    goto LABEL_80;
  }

  if ((v17 & 0x2000000000000000) != 0)
  {
    v52 = result;
    v53 = v17 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v18)
      {
        if (--v18)
        {
          v22 = 0;
          v33 = &v52 + 1;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              break;
            }

            ++v33;
            if (!--v18)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }
    }

    else
    {
      if (result != 45)
      {
        if (v18)
        {
          v22 = 0;
          v38 = &v52;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            v40 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              break;
            }

            v38 = (v38 + 1);
            if (!--v18)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }

      if (v18)
      {
        if (--v18)
        {
          v22 = 0;
          v27 = &v52 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v29 - v28;
            if (__OFSUB__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v18)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }

LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    goto LABEL_82;
  }

  for (result = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32; ; result = sub_232CEA550())
  {
    v21 = *result;
    if (v21 == 43)
    {
      if (v19 < 1)
      {
        goto LABEL_85;
      }

      v18 = v19 - 1;
      if (v19 == 1)
      {
        goto LABEL_66;
      }

      v22 = 0;
      if (result)
      {
        v30 = (result + 1);
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            goto LABEL_66;
          }

          v32 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            goto LABEL_66;
          }

          v22 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            goto LABEL_66;
          }

          ++v30;
          if (!--v18)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v21 == 45)
    {
      if (v19 < 1)
      {
        __break(1u);
        goto LABEL_84;
      }

      v18 = v19 - 1;
      if (v19 == 1)
      {
        goto LABEL_66;
      }

      v22 = 0;
      if (result)
      {
        v23 = (result + 1);
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v18)
          {
            goto LABEL_67;
          }
        }

LABEL_66:
        v22 = 0;
        LOBYTE(v18) = 1;
        goto LABEL_67;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_66;
      }

      v22 = 0;
      if (result)
      {
        do
        {
          v36 = *result - 48;
          if (v36 > 9)
          {
            goto LABEL_66;
          }

          v37 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            goto LABEL_66;
          }

          v22 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            goto LABEL_66;
          }

          ++result;
        }

        while (--v19);
      }
    }

    LOBYTE(v18) = 0;
LABEL_67:
    for (i = v18; ; i = v51)
    {

      v42 = (i & 1) != 0 ? 0 : v22;
LABEL_71:
      v52 = 32;
      v53 = 0xE100000000000000;
      v43 = sub_232CEA720();
      MEMORY[0x238391C30](v43);

      v17 = &v52;
      result = MEMORY[0x238391C30](32, 0xE100000000000000);
      if (!__OFADD__(v42, 1))
      {
        break;
      }

      __break(1u);
LABEL_80:
      v22 = sub_232BA2B04(result, v17, 10);
    }

    v44 = sub_232CEA720();
    MEMORY[0x238391C30](v44);

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (!__OFSUB__(v42, 1))
    {
      break;
    }

    __break(1u);
LABEL_82:
    ;
  }

  v45 = sub_232CEA720();
  MEMORY[0x238391C30](v45);

  v46 = v52;
  v47 = v53;
  v52 = a5;
  v53 = a6;

  MEMORY[0x238391C30](v46, v47);

  sub_232B714B8();
  v49 = v48;

  if (v49)
  {
    v26 = 1;
  }

  else
  {
    sub_232B714B8();
    v26 = v50;
  }

  return v26 & 1;
}

void sub_232B778E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_232B72C9C();
  if (!v9)
  {
    return;
  }

  v10 = v8;
  v11 = v9;
  v48 = a5;

  v12 = sub_232B77D44(2uLL, v10, v11);
  MEMORY[0x238391B80](v12);

  sub_232B72C9C();
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v13 = 48;
    v15 = 0xE100000000000000;
  }

  v16 = HIBYTE(v15) & 0xF;
  v17 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v18 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    v38 = 0;
    goto LABEL_78;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_85;
  }

  if ((v15 & 0x2000000000000000) == 0)
  {
    if ((v13 & 0x1000000000000000) == 0)
    {
      goto LABEL_87;
    }

    for (i = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_232CEA550())
    {
      v20 = *i;
      if (v20 == 43)
      {
        if (v17 < 1)
        {
          goto LABEL_90;
        }

        if (v17 == 1)
        {
          goto LABEL_73;
        }

        v21 = 0;
        if (i)
        {
          while (1)
          {
            sub_232BA6100();
            if (!v23 & v22)
            {
              goto LABEL_73;
            }

            sub_232BA5BE8();
            if (!v23)
            {
              goto LABEL_73;
            }

            v21 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              goto LABEL_73;
            }

            sub_232BA6CA4();
            if (v23)
            {
              goto LABEL_74;
            }
          }
        }
      }

      else if (v20 == 45)
      {
        if (v17 < 1)
        {
          __break(1u);
          goto LABEL_89;
        }

        if (v17 == 1)
        {
          goto LABEL_73;
        }

        v21 = 0;
        if (i)
        {
          while (1)
          {
            sub_232BA6100();
            if (!v23 & v22)
            {
              break;
            }

            sub_232BA5BE8();
            if (!v23)
            {
              break;
            }

            v21 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              break;
            }

            sub_232BA6CA4();
            if (v23)
            {
              goto LABEL_74;
            }
          }

LABEL_73:
          v21 = 0;
          v26 = 1;
          goto LABEL_74;
        }
      }

      else
      {
        if (!v17)
        {
          goto LABEL_73;
        }

        v21 = 0;
        if (i)
        {
          do
          {
            v33 = *i - 48;
            if (v33 > 9)
            {
              goto LABEL_73;
            }

            v34 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_73;
            }

            v21 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_73;
            }

            ++i;
          }

          while (--v17);
        }
      }

      v26 = 0;
LABEL_74:
      for (j = v26; ; j = v47)
      {

        v38 = (j & 1) != 0 ? 0 : v21;
LABEL_78:
        v49 = 32;
        v50 = 0xE100000000000000;
        v39 = sub_232CEA720();
        MEMORY[0x238391C30](v39);

        v15 = &v49;
        v40 = sub_232BA7218();
        v13 = MEMORY[0x238391C30](v40);
        if (!__OFADD__(v38, 1))
        {
          break;
        }

        __break(1u);
LABEL_85:
        v21 = sub_232BA2B04(v13, v15, 10);
      }

      v41 = sub_232CEA720();
      MEMORY[0x238391C30](v41);

      v42 = sub_232BA7218();
      MEMORY[0x238391C30](v42);
      if (!__OFSUB__(v38, 1))
      {
        v43 = sub_232CEA720();
        MEMORY[0x238391C30](v43);

        v44 = v49;
        v45 = v50;
        v49 = v48;
        v50 = a6;

        MEMORY[0x238391C30](v44, v45);

        sub_232B714B8();
        LOBYTE(v44) = v46;

        if ((v44 & 1) == 0)
        {
          sub_232B714B8();
        }

        return;
      }

      __break(1u);
LABEL_87:
      ;
    }
  }

  v49 = v13;
  v50 = v15 & 0xFFFFFFFFFFFFFFLL;
  if (v13 == 43)
  {
    if (v16)
    {
      if (v16 != 1)
      {
        sub_232BA7018();
        while (1)
        {
          sub_232BA6100();
          if (!v23 & v22)
          {
            break;
          }

          sub_232BA5BE8();
          if (!v23)
          {
            break;
          }

          v21 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            break;
          }

          sub_232BA6CA4();
          if (v23)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }
  }

  else
  {
    if (v13 != 45)
    {
      if (v16)
      {
        while (1)
        {
          sub_232BA6100();
          if (!v23 & v22)
          {
            break;
          }

          sub_232BA5BE8();
          if (!v23)
          {
            break;
          }

          v21 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            break;
          }

          sub_232BA6CA4();
          if (v23)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    if (v16)
    {
      if (v16 != 1)
      {
        sub_232BA7018();
        while (1)
        {
          sub_232BA6100();
          if (!v23 & v22)
          {
            break;
          }

          sub_232BA5BE8();
          if (!v23)
          {
            break;
          }

          v21 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          sub_232BA6CA4();
          if (v23)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_232B77D44(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v4 = a2 & 0xFFFFFFFFFFFFLL;
    }

    result = sub_232CE9E80();
    if (v5)
    {
      result = 15;
    }

    if (4 * v4 >= result >> 14)
    {
      sub_232CE9FB0();
      sub_232BA69E4();

      return a2;
    }
  }

  __break(1u);
  return result;
}

void sub_232B77E18()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v4 = sub_232CE8D10();
  v5 = sub_232B48F0C(v4);
  v65 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v11 = v10 - v9;
  v12 = sub_232CE8E10();
  v13 = sub_232B48F0C(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_232B20704();
  v18 = sub_232CE9C60();
  v19 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_232BA5CC4();
  sub_232CE8D50();
  v20 = sub_232CE8DA0();
  v21 = *(v15 + 8);
  v22 = sub_232BA7160();
  v23(v22);
  [v19 setLocale_];

  v24 = v1;
  if (!v1 || (sub_232BA7178(), !v25))
  {

LABEL_16:
    sub_232BA6074();
    sub_232B20A00();
    return;
  }

  v26 = v3;
  v67 = v18;
  v68 = v19;
  v63 = v4;
  v64 = v11;
  v27 = 0;
  v28 = v18 + 64;
  v29 = 1 << *(v18 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v18 + 64);
  v32 = (v29 + 63) >> 6;
  if (v31)
  {
    while (1)
    {
      v33 = v27;
LABEL_10:
      v34 = (v33 << 10) | (16 * __clz(__rbit64(v31)));
      v35 = (*(v18 + 48) + v34);
      v36 = *v35;
      v37 = v35[1];
      v38 = (*(v18 + 56) + v34);
      v39 = v38[1];
      v66 = *v38;
      swift_bridgeObjectRetain_n();

      v40 = sub_232CE9D20();

      [v68 setDateFormat_];

      v41 = v26;
      v42 = v24;
      v43 = sub_232CE9D20();
      v44 = sub_232BA6974();
      v46 = [v44 v45];

      if (v46)
      {
        break;
      }

      v31 &= v31 - 1;

      v27 = v33;
      v18 = v67;
      v24 = v42;
      v26 = v41;
      if (!v31)
      {
        goto LABEL_7;
      }
    }

    sub_232CE8CF0();

    v47 = sub_232BA6194();
    v48 = sub_232BA71D0();
    [v48 v49];

    v50 = sub_232CE8CD0();
    v51 = sub_232BA71D0();
    v53 = [v51 v52];

    sub_232CE9D50();
    sub_232BA6798();

    sub_232BA702C();
    v54 = sub_232CE9D20();
    v55 = sub_232BA71D0();
    [v55 v56];

    v57 = sub_232CE8CD0();
    v58 = sub_232BA71D0();
    v60 = [v58 v59];

    sub_232CE9D50();
    v61 = v66 == 0x656D695465746164 && v39 == 0xE800000000000000;
    if (v61 || (sub_232CEA750() & 1) != 0)
    {
      (*(v65 + 8))(v64, v63);
    }

    else
    {
      if (v66 != 1702125924 || v39 != 0xE400000000000000)
      {
        sub_232CEA750();
      }

      (*(v65 + 8))(v64, v63);
    }

    goto LABEL_16;
  }

LABEL_7:
  while (1)
  {
    v33 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v33 >= v32)
    {

      goto LABEL_16;
    }

    v31 = *(v28 + 8 * v33);
    ++v27;
    if (v31)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_232B7836C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v64 = a7;
  v61 = a3;
  v62 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v59 - v15;
  v17 = sub_232CE9A30();
  v65 = *(v17 - 8);
  v66 = v17;
  v18 = *(v65 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v59 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v60 = &v59 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v59 - v23;
  sub_232B76038();
  v63 = v27;
  v29 = v28;
  if (a8)
  {
    v30 = sub_232B71944(v25, v26);

    if ((v30 & 1) == 0)
    {

      sub_232CE9A20();
      v31 = sub_232CE9A00();
      v32 = sub_232CEA1A0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v31, v32, v34, v33, 2u);
        MEMORY[0x238393870](v33, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v35 = sub_232B66C40(a1, a2, a5, a6, &unk_28480D678);
  v37 = v36;
  sub_232B7BB28();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_232BA4D50(v16, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v39 & 1) == 0)
  {

    v41 = sub_232B72524(v35, v37, 1);
    v43 = v44;
  }

  v45 = sub_232B66C40(v61, v62, a5, a6, &unk_28480D6A0);
  v47 = v46;
  sub_232B7BE08();
  v50 = v49;
  if (v51)
  {
    v52 = v48;
  }

  else
  {

    v52 = sub_232B72524(v45, v47, 2);
    v50 = v53;
  }

  v54 = sub_232B7C26C(v41, v43, v52, v50);

  v55 = v63;
  sub_232B76328();
  if ((v56 & 1) == 0)
  {

    v24 = v60;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v57 = sub_232B773DC(v41, v43, v55, v29, a5, a6);

  if ((v57 & 1) == 0)
  {

    v24 = v59;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v65 + 8))(v24, v66);
    return 0;
  }

  return v54;
}

uint64_t sub_232B787F0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v64 = a7;
  v61 = a3;
  v62 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v59 - v15;
  v17 = sub_232CE9A30();
  v65 = *(v17 - 8);
  v66 = v17;
  v18 = *(v65 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v59 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v60 = &v59 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v59 - v23;
  sub_232B76038();
  v63 = v27;
  v29 = v28;
  if (a8)
  {
    v30 = sub_232B71944(v25, v26);

    if ((v30 & 1) == 0)
    {

      sub_232CE9A20();
      v31 = sub_232CE9A00();
      v32 = sub_232CEA1A0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v31, v32, v34, v33, 2u);
        MEMORY[0x238393870](v33, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v35 = sub_232B679D8(a1, a2, a5, a6, &unk_28480D910);
  v37 = v36;
  sub_232B7BB28();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_232BA4D50(v16, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v39 & 1) == 0)
  {

    v41 = sub_232B72524(v35, v37, 1);
    v43 = v44;
  }

  v45 = sub_232B679D8(v61, v62, a5, a6, &unk_28480D938);
  v47 = v46;
  sub_232B7BE08();
  v50 = v49;
  if (v51)
  {
    v52 = v48;
  }

  else
  {

    v52 = sub_232B72524(v45, v47, 2);
    v50 = v53;
  }

  v54 = sub_232B7C26C(v41, v43, v52, v50);

  v55 = v63;
  sub_232B76328();
  if ((v56 & 1) == 0)
  {

    v24 = v60;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v57 = sub_232B773DC(v41, v43, v55, v29, a5, a6);

  if ((v57 & 1) == 0)
  {

    v24 = v59;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v65 + 8))(v24, v66);
    return 0;
  }

  return v54;
}

uint64_t sub_232B78C74(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v64 = a7;
  v61 = a3;
  v62 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v59 - v15;
  v17 = sub_232CE9A30();
  v65 = *(v17 - 8);
  v66 = v17;
  v18 = *(v65 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v59 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v60 = &v59 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v59 - v23;
  sub_232B76038();
  v63 = v27;
  v29 = v28;
  if (a8)
  {
    v30 = sub_232B71944(v25, v26);

    if ((v30 & 1) == 0)
    {

      sub_232CE9A20();
      v31 = sub_232CE9A00();
      v32 = sub_232CEA1A0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v31, v32, v34, v33, 2u);
        MEMORY[0x238393870](v33, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v35 = sub_232B68770(a1, a2, a5, a6, &unk_28480DCE8);
  v37 = v36;
  sub_232B7BB28();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_232BA4D50(v16, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v39 & 1) == 0)
  {

    v41 = sub_232B72524(v35, v37, 1);
    v43 = v44;
  }

  v45 = sub_232B68770(v61, v62, a5, a6, &unk_28480DD10);
  v47 = v46;
  sub_232B7BE08();
  v50 = v49;
  if (v51)
  {
    v52 = v48;
  }

  else
  {

    v52 = sub_232B72524(v45, v47, 2);
    v50 = v53;
  }

  v54 = sub_232B7C26C(v41, v43, v52, v50);

  v55 = v63;
  sub_232B76328();
  if ((v56 & 1) == 0)
  {

    v24 = v60;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v57 = sub_232B773DC(v41, v43, v55, v29, a5, a6);

  if ((v57 & 1) == 0)
  {

    v24 = v59;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v65 + 8))(v24, v66);
    return 0;
  }

  return v54;
}

uint64_t sub_232B790F8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v64 = a7;
  v61 = a3;
  v62 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v59 - v15;
  v17 = sub_232CE9A30();
  v65 = *(v17 - 8);
  v66 = v17;
  v18 = *(v65 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v59 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v60 = &v59 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v59 - v23;
  sub_232B76038();
  v63 = v27;
  v29 = v28;
  if (a8)
  {
    v30 = sub_232B71944(v25, v26);

    if ((v30 & 1) == 0)
    {

      sub_232CE9A20();
      v31 = sub_232CE9A00();
      v32 = sub_232CEA1A0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v31, v32, v34, v33, 2u);
        MEMORY[0x238393870](v33, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v35 = sub_232B69508(a1, a2, a5, a6, &unk_28480DF58);
  v37 = v36;
  sub_232B7BB28();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_232BA4D50(v16, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v39 & 1) == 0)
  {

    v41 = sub_232B72524(v35, v37, 1);
    v43 = v44;
  }

  v45 = sub_232B69508(v61, v62, a5, a6, &unk_28480DF80);
  v47 = v46;
  sub_232B7BE08();
  v50 = v49;
  if (v51)
  {
    v52 = v48;
  }

  else
  {

    v52 = sub_232B72524(v45, v47, 2);
    v50 = v53;
  }

  v54 = sub_232B7C26C(v41, v43, v52, v50);

  v55 = v63;
  sub_232B76328();
  if ((v56 & 1) == 0)
  {

    v24 = v60;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v57 = sub_232B773DC(v41, v43, v55, v29, a5, a6);

  if ((v57 & 1) == 0)
  {

    v24 = v59;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v65 + 8))(v24, v66);
    return 0;
  }

  return v54;
}

uint64_t sub_232B7957C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v58 = a7;
  v55 = a3;
  v56 = a4;
  v11 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v53 - v13;
  v15 = sub_232CE9A30();
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = *(v59 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v53 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v54 = &v53 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - v21;
  sub_232B76038();
  v57 = v23;
  v25 = v24;
  if (a8)
  {
    sub_232B71B98();
    v27 = v26;

    if ((v27 & 1) == 0)
    {

      sub_232CE9A20();
      v28 = sub_232CE9A00();
      v29 = sub_232CEA1A0();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v28, v29, v31, v30, 2u);
        MEMORY[0x238393870](v30, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  sub_232B6A2A0();
  sub_232B7BB28();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_232BA4D50(v14, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v33 & 1) == 0)
  {

    sub_232B72C9C();
    v35 = v38;
    v37 = v39;
  }

  sub_232B6A2A0();
  sub_232B7BE08();
  v42 = v41;
  if (v43)
  {
    v44 = v40;
  }

  else
  {

    sub_232B72C9C();
    v44 = v45;
    v42 = v46;
  }

  v47 = sub_232B7C26C(v35, v37, v44, v42);

  v48 = v57;
  sub_232B76328();
  if ((v49 & 1) == 0)
  {

    v22 = v54;
    sub_232CE9A20();
    v28 = sub_232CE9A00();
    v29 = sub_232CEA1A0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  sub_232B778E0(v35, v37, v48, v25, a5, a6);
  v51 = v50;

  if ((v51 & 1) == 0)
  {

    v22 = v53;
    sub_232CE9A20();
    v28 = sub_232CE9A00();
    v29 = sub_232CEA1A0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v59 + 8))(v22, v60);
    return 0;
  }

  return v47;
}

uint64_t sub_232B79AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v58 = a7;
  v55 = a3;
  v56 = a4;
  v11 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v53 - v13;
  v15 = sub_232CE9A30();
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = *(v59 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v53 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v54 = &v53 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - v21;
  sub_232B76038();
  v57 = v23;
  v25 = v24;
  if (a8)
  {
    sub_232B71B98();
    v27 = v26;

    if ((v27 & 1) == 0)
    {

      sub_232CE9A20();
      v28 = sub_232CE9A00();
      v29 = sub_232CEA1A0();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v28, v29, v31, v30, 2u);
        MEMORY[0x238393870](v30, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  sub_232B6A2A0();
  sub_232B7BB28();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_232BA4D50(v14, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v33 & 1) == 0)
  {

    sub_232B72C9C();
    v35 = v38;
    v37 = v39;
  }

  sub_232B6A2A0();
  sub_232B7BE08();
  v42 = v41;
  if (v43)
  {
    v44 = v40;
  }

  else
  {

    sub_232B72C9C();
    v44 = v45;
    v42 = v46;
  }

  v47 = sub_232B7C26C(v35, v37, v44, v42);

  v48 = v57;
  sub_232B76328();
  if ((v49 & 1) == 0)
  {

    v22 = v54;
    sub_232CE9A20();
    v28 = sub_232CE9A00();
    v29 = sub_232CEA1A0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  sub_232B778E0(v35, v37, v48, v25, a5, a6);
  v51 = v50;

  if ((v51 & 1) == 0)
  {

    v22 = v53;
    sub_232CE9A20();
    v28 = sub_232CE9A00();
    v29 = sub_232CEA1A0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v59 + 8))(v22, v60);
    return 0;
  }

  return v47;
}

uint64_t sub_232B7A00C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v64 = a7;
  v61 = a3;
  v62 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v59 - v15;
  v17 = sub_232CE9A30();
  v65 = *(v17 - 8);
  v66 = v17;
  v18 = *(v65 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v59 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v60 = &v59 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v59 - v23;
  sub_232B76038();
  v63 = v27;
  v29 = v28;
  if (a8)
  {
    v30 = sub_232B71944(v25, v26);

    if ((v30 & 1) == 0)
    {

      sub_232CE9A20();
      v31 = sub_232CE9A00();
      v32 = sub_232CEA1A0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v31, v32, v34, v33, 2u);
        MEMORY[0x238393870](v33, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v35 = sub_232B6ADF8(a1, a2, a5, a6, &unk_28480E630);
  v37 = v36;
  sub_232B7BB28();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_232BA4D50(v16, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v39 & 1) == 0)
  {

    v41 = sub_232B72524(v35, v37, 1);
    v43 = v44;
  }

  v45 = sub_232B6ADF8(v61, v62, a5, a6, &unk_28480E658);
  v47 = v46;
  sub_232B7BE08();
  v50 = v49;
  if (v51)
  {
    v52 = v48;
  }

  else
  {

    v52 = sub_232B72524(v45, v47, 2);
    v50 = v53;
  }

  v54 = sub_232B7C26C(v41, v43, v52, v50);

  v55 = v63;
  sub_232B76328();
  if ((v56 & 1) == 0)
  {

    v24 = v60;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v57 = sub_232B773DC(v41, v43, v55, v29, a5, a6);

  if ((v57 & 1) == 0)
  {

    v24 = v59;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v65 + 8))(v24, v66);
    return 0;
  }

  return v54;
}

uint64_t sub_232B7A490(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v64 = a7;
  v61 = a3;
  v62 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v59 - v15;
  v17 = sub_232CE9A30();
  v65 = *(v17 - 8);
  v66 = v17;
  v18 = *(v65 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v59 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v60 = &v59 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v59 - v23;
  sub_232B76038();
  v63 = v27;
  v29 = v28;
  if (a8)
  {
    v30 = sub_232B71944(v25, v26);

    if ((v30 & 1) == 0)
    {

      sub_232CE9A20();
      v31 = sub_232CE9A00();
      v32 = sub_232CEA1A0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v31, v32, v34, v33, 2u);
        MEMORY[0x238393870](v33, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v35 = sub_232B6BB90(a1, a2, a5, a6, &unk_28480E7B0);
  v37 = v36;
  sub_232B7BB28();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_232BA4D50(v16, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v39 & 1) == 0)
  {

    v41 = sub_232B72524(v35, v37, 1);
    v43 = v44;
  }

  v45 = sub_232B6BB90(v61, v62, a5, a6, &unk_28480E7D8);
  v47 = v46;
  sub_232B7BE08();
  v50 = v49;
  if (v51)
  {
    v52 = v48;
  }

  else
  {

    v52 = sub_232B72524(v45, v47, 2);
    v50 = v53;
  }

  v54 = sub_232B7C26C(v41, v43, v52, v50);

  v55 = v63;
  sub_232B76328();
  if ((v56 & 1) == 0)
  {

    v24 = v60;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v57 = sub_232B773DC(v41, v43, v55, v29, a5, a6);

  if ((v57 & 1) == 0)
  {

    v24 = v59;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v65 + 8))(v24, v66);
    return 0;
  }

  return v54;
}

uint64_t sub_232B7A914(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v64 = a7;
  v61 = a3;
  v62 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v59 - v15;
  v17 = sub_232CE9A30();
  v65 = *(v17 - 8);
  v66 = v17;
  v18 = *(v65 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v59 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v60 = &v59 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v59 - v23;
  sub_232B76038();
  v63 = v27;
  v29 = v28;
  if (a8)
  {
    v30 = sub_232B71944(v25, v26);

    if ((v30 & 1) == 0)
    {

      sub_232CE9A20();
      v31 = sub_232CE9A00();
      v32 = sub_232CEA1A0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v31, v32, v34, v33, 2u);
        MEMORY[0x238393870](v33, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v35 = sub_232B6C928(a1, a2, a5, a6, &unk_28480EA20);
  v37 = v36;
  sub_232B7BB28();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_232BA4D50(v16, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v39 & 1) == 0)
  {

    v41 = sub_232B72524(v35, v37, 1);
    v43 = v44;
  }

  v45 = sub_232B6C928(v61, v62, a5, a6, &unk_28480EA48);
  v47 = v46;
  sub_232B7BE08();
  v50 = v49;
  if (v51)
  {
    v52 = v48;
  }

  else
  {

    v52 = sub_232B72524(v45, v47, 2);
    v50 = v53;
  }

  v54 = sub_232B7C26C(v41, v43, v52, v50);

  v55 = v63;
  sub_232B76328();
  if ((v56 & 1) == 0)
  {

    v24 = v60;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v57 = sub_232B773DC(v41, v43, v55, v29, a5, a6);

  if ((v57 & 1) == 0)
  {

    v24 = v59;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v65 + 8))(v24, v66);
    return 0;
  }

  return v54;
}

uint64_t sub_232B7AD98(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v64 = a7;
  v61 = a3;
  v62 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v59 - v15;
  v17 = sub_232CE9A30();
  v65 = *(v17 - 8);
  v66 = v17;
  v18 = *(v65 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v59 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v60 = &v59 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v59 - v23;
  sub_232B76038();
  v63 = v27;
  v29 = v28;
  if (a8)
  {
    v30 = sub_232B71944(v25, v26);

    if ((v30 & 1) == 0)
    {

      sub_232CE9A20();
      v31 = sub_232CE9A00();
      v32 = sub_232CEA1A0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v31, v32, v34, v33, 2u);
        MEMORY[0x238393870](v33, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v35 = sub_232B6D6C0(a1, a2, a5, a6, &unk_28480ECB8);
  v37 = v36;
  sub_232B7BB28();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_232BA4D50(v16, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v39 & 1) == 0)
  {

    v41 = sub_232B72524(v35, v37, 1);
    v43 = v44;
  }

  v45 = sub_232B6D6C0(v61, v62, a5, a6, &unk_28480ECE0);
  v47 = v46;
  sub_232B7BE08();
  v50 = v49;
  if (v51)
  {
    v52 = v48;
  }

  else
  {

    v52 = sub_232B72524(v45, v47, 2);
    v50 = v53;
  }

  v54 = sub_232B7C26C(v41, v43, v52, v50);

  v55 = v63;
  sub_232B76328();
  if ((v56 & 1) == 0)
  {

    v24 = v60;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v57 = sub_232B773DC(v41, v43, v55, v29, a5, a6);

  if ((v57 & 1) == 0)
  {

    v24 = v59;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v65 + 8))(v24, v66);
    return 0;
  }

  return v54;
}

uint64_t sub_232B7B21C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v64 = a7;
  v61 = a3;
  v62 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v59 - v15;
  v17 = sub_232CE9A30();
  v65 = *(v17 - 8);
  v66 = v17;
  v18 = *(v65 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v59 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v60 = &v59 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v59 - v23;
  sub_232B76038();
  v63 = v27;
  v29 = v28;
  if (a8)
  {
    v30 = sub_232B71944(v25, v26);

    if ((v30 & 1) == 0)
    {

      sub_232CE9A20();
      v31 = sub_232CE9A00();
      v32 = sub_232CEA1A0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v31, v32, v34, v33, 2u);
        MEMORY[0x238393870](v33, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v35 = sub_232B6E458(a1, a2, a5, a6, &unk_28480EE60);
  v37 = v36;
  sub_232B7BB28();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_232BA4D50(v16, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v39 & 1) == 0)
  {

    v41 = sub_232B72524(v35, v37, 1);
    v43 = v44;
  }

  v45 = sub_232B6E458(v61, v62, a5, a6, &unk_28480EE88);
  v47 = v46;
  sub_232B7BE08();
  v50 = v49;
  if (v51)
  {
    v52 = v48;
  }

  else
  {

    v52 = sub_232B72524(v45, v47, 2);
    v50 = v53;
  }

  v54 = sub_232B7C26C(v41, v43, v52, v50);

  v55 = v63;
  sub_232B76328();
  if ((v56 & 1) == 0)
  {

    v24 = v60;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v57 = sub_232B773DC(v41, v43, v55, v29, a5, a6);

  if ((v57 & 1) == 0)
  {

    v24 = v59;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v65 + 8))(v24, v66);
    return 0;
  }

  return v54;
}

uint64_t sub_232B7B6A0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v64 = a7;
  v61 = a3;
  v62 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v59 - v15;
  v17 = sub_232CE9A30();
  v65 = *(v17 - 8);
  v66 = v17;
  v18 = *(v65 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v59 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v60 = &v59 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v59 - v23;
  sub_232B76038();
  v63 = v27;
  v29 = v28;
  if (a8)
  {
    v30 = sub_232B71DC4(v25, v26);

    if ((v30 & 1) == 0)
    {

      sub_232CE9A20();
      v31 = sub_232CE9A00();
      v32 = sub_232CEA1A0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v31, v32, v34, v33, 2u);
        MEMORY[0x238393870](v33, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v35 = sub_232B6F1F0(a1, a2, a5, a6, &unk_28480F290);
  v37 = v36;
  sub_232B7BB28();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_232BA4D50(v16, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v39 & 1) == 0)
  {

    v41 = sub_232B72524(v35, v37, 1);
    v43 = v44;
  }

  v45 = sub_232B6F1F0(v61, v62, a5, a6, &unk_28480F2B8);
  v47 = v46;
  sub_232B7BE08();
  v50 = v49;
  if (v51)
  {
    v52 = v48;
  }

  else
  {

    v52 = sub_232B72524(v45, v47, 2);
    v50 = v53;
  }

  v54 = sub_232B7C26C(v41, v43, v52, v50);

  v55 = v63;
  sub_232B76328();
  if ((v56 & 1) == 0)
  {

    v24 = v60;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v57 = sub_232B773DC(v41, v43, v55, v29, a5, a6);

  if ((v57 & 1) == 0)
  {

    v24 = v59;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v65 + 8))(v24, v66);
    return 0;
  }

  return v54;
}

void sub_232B7BB28()
{
  sub_232B35110();
  v2 = v1;
  v3 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  sub_232B2D120(v3);
  v5 = *(v4 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  sub_232BA6FF8();
  v7 = sub_232CE8E10();
  v8 = sub_232B48F0C(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v15 = v14 - v13;
  if (v2)
  {
    v16 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v17 = sub_232BA6194();
    [v16 setDateFormat_];

    sub_232BA5CC4();
    sub_232CE8D50();
    v18 = sub_232CE8DA0();
    (*(v10 + 8))(v15, v7);
    [v16 setLocale_];

    sub_232CE8EC0();
    v19 = sub_232CE8F00();
    v20 = 0;
    if (sub_232B12480(v0, 1, v19) != 1)
    {
      v20 = sub_232CE8ED0();
      sub_232BA5C58(v19);
      v22 = *(v21 + 8);
      v23 = sub_232BA6074();
      v24(v23);
    }

    [v16 setTimeZone_];

    v25 = sub_232CE9D20();
    v26 = [v16 dateFromString_];

    if (v26)
    {
      sub_232CE8CF0();

      v27 = sub_232CE8CD0();
      v28 = [v16 stringFromDate_];

      sub_232CE9D50();
      sub_232CE8D10();
      sub_232B351FC();
    }

    else
    {

      sub_232CE8D10();
      v29 = sub_232BA5CE4();
    }

    sub_232B12504(v29, v30, v31, v32);
  }

  else
  {
    sub_232CE8D10();
    v33 = sub_232BA5CE4();
    sub_232B12504(v33, v34, v35, v36);
  }

  sub_232B20A00();
}

void sub_232B7BE08()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v4 = sub_232CE8D10();
  v5 = sub_232B48F0C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v12 = v11 - v10;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v13);
  v15 = *(v14 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v16);
  v18 = &v68 - v17;
  v19 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  sub_232B2D120(v19);
  v21 = *(v20 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v22);
  v24 = &v68 - v23;
  v25 = sub_232CE8E10();
  v26 = sub_232B48F0C(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_232B20704();
  v33 = v32 - v31;
  if (v1)
  {
    v68 = v12;
    v69 = v7;
    v34 = objc_allocWithZone(MEMORY[0x277CCA968]);
    sub_232BA5CA0();

    v35 = [v7 init];
    v36 = sub_232CE9D20();
    [v35 setDateFormat_];

    sub_232BA5CC4();
    sub_232CE8D50();
    v37 = sub_232CE8DA0();
    (*(v28 + 8))(v33, v25);
    [v35 setLocale_];

    sub_232CE8EC0();
    v38 = sub_232CE8F00();
    v39 = 0;
    if (sub_232B12480(v24, 1, v38) != 1)
    {
      v39 = sub_232CE8ED0();
      sub_232BA5C58(v38);
      v41 = *(v40 + 8);
      v42 = sub_232B45AB0();
      v43(v42);
    }

    v44 = sub_232BA6974();
    [v44 v45];

    sub_232BA5E64();
    v46 = sub_232CE9D20();
    v47 = [v35 dateFromString_];

    if (v47)
    {
      sub_232CE8CF0();

      sub_232B351FC();
      sub_232B12504(v48, v49, v50, v4);
      sub_232BA4D50(v18, &qword_27DDC6A80, &qword_232CF6D30);
    }

    else
    {
      sub_232B55484();
      sub_232B12504(v51, v52, v53, v4);
      sub_232BA4D50(v18, &qword_27DDC6A80, &qword_232CF6D30);
      v54 = sub_232CE9D20();
      v55 = sub_232BA6974();
      [v55 v56];

      sub_232BA5E64();
      sub_232CE9D20();
      sub_232BA6D04();

      v57 = [v35 dateFromString_];

      if (v57)
      {
        sub_232CE8CF0();

        sub_232BA702C();
        v58 = sub_232CE9D20();
        v59 = sub_232BA6974();
        [v59 v60];

        v61 = sub_232CE8CD0();
        v62 = sub_232BA6974();
        v64 = [v62 v63];

        sub_232CE9D50();
        sub_232BA5F44();

        v65 = v69[1];
        v66 = sub_232B5A008();
        v67(v66);
      }

      else
      {
      }
    }
  }

  sub_232BA720C();
  sub_232B20A00();
}

uint64_t sub_232B7C26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {

      MEMORY[0x238391C30](84, 0xE100000000000000);
      v4 = sub_232B5A008();
      MEMORY[0x238391C30](v4);
    }

    else
    {
    }
  }

  return sub_232BA7230();
}

uint64_t sub_232B7C2EC(uint64_t a1, uint64_t a2)
{
  inited = a2;
  if (!a2)
  {
    return 0;
  }

  objc_opt_self();

  v4 = sub_232CE9D20();

  MEMORY[0x238391CC0](a1, inited);

  if (qword_27DDC6368 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v6 = sub_232BA5E44(v5, sel_scanString_range_configuration_);

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v7 = sub_232CE9FE0();

    v146 = sub_232B26B10(v7);
    if (!v146)
    {
      break;
    }

    v8 = 0;
    v145 = v7 & 0xC000000000000001;
    v142 = v7 & 0xFFFFFFFFFFFFFF8;
    v9 = MEMORY[0x277D84F90];
    v147 = MEMORY[0x277D84F98];
    v141 = v7 + 32;
    v133 = *MEMORY[0x277CCA6E8];
    v132 = *MEMORY[0x277CCA6B0];
    v130 = *MEMORY[0x277CCA6F0];
    v131 = *MEMORY[0x277CCA6E0];
    v129 = *MEMORY[0x277CCA6B8];
    v128 = xmmword_232CF7250;
    v126 = a1;
    v127 = inited;
    v143 = v7;
    while (1)
    {
      if (v145)
      {
        v10 = MEMORY[0x2383922C0](v8, v7);
      }

      else
      {
        if (v8 >= *(v142 + 16))
        {
          goto LABEL_79;
        }

        v10 = *(v141 + 8 * v8);
      }

      v11 = v10;
      if (__OFADD__(v8++, 1))
      {
        break;
      }

      [v10 urlificationRange];
      sub_232CEA110();
      if ((v14 & 1) == 0 && (v15 = v13, [v11 category] == 3) && (v16 = objc_msgSend(objc_allocWithZone(MEMORY[0x277CC5698]), sel_initWithDDScannerResult_, v11)) != 0)
      {
        v17 = v16;
        sub_232B124A8(&qword_27DDC7520, &unk_232CFA0A0);
        inited = swift_initStackObject();
        *(inited + 16) = v128;
        v144 = v17;
        v18 = [v17 street];
        if (v18)
        {
          v19 = v18;
          sub_232CE9D50();
          sub_232BA69E4();
        }

        else
        {
          sub_232BA6C50();
        }

        *(inited + 32) = v4;
        *(inited + 40) = v7;
        *(inited + 48) = v133;
        v134 = v133;
        v20 = [v144 city];
        if (v20)
        {
          v21 = v20;
          sub_232CE9D50();
          sub_232BA69E4();
        }

        else
        {
          sub_232BA6C50();
        }

        *(inited + 56) = v4;
        *(inited + 64) = v7;
        *(inited + 72) = v132;
        v135 = v132;
        v22 = [v144 state];
        if (v22)
        {
          v23 = v22;
          sub_232CE9D50();
          sub_232BA69E4();
        }

        else
        {
          sub_232BA6C50();
        }

        *(inited + 80) = v4;
        *(inited + 88) = v7;
        *(inited + 96) = v131;
        v136 = v131;
        v24 = [v144 postalCode];
        if (v24)
        {
          v25 = v24;
          sub_232CE9D50();
          sub_232BA69E4();
        }

        else
        {
          sub_232BA6C50();
        }

        v139 = v11;
        *(inited + 104) = v4;
        *(inited + 112) = v7;
        *(inited + 120) = v130;
        v137 = v130;
        v26 = [v144 country];
        v140 = v9;
        if (v26)
        {
          v27 = v26;
          sub_232CE9D50();
          sub_232BA69E4();
        }

        else
        {
          sub_232BA6C50();
        }

        *(inited + 128) = v4;
        *(inited + 136) = v7;
        *(inited + 144) = v129;
        v138 = v129;
        v28 = 0;
        a1 = inited + 40;
LABEL_29:
        v29 = (a1 + 24 * v28);
        while (v28 != 5)
        {
          if (v28 > 4)
          {
            __break(1u);
            goto LABEL_78;
          }

          ++v28;
          v30 = v29 + 3;
          v31 = *v29;
          v29 += 3;
          if (v31)
          {
            if (*(v147 + 16))
            {
              v32 = *(v30 - 2);

              sub_232BA694C(v33, v34, v35, v36, v37, v38, v39, v40, v126, v127, v128, *(&v128 + 1), v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);

              v41 = v32;
              sub_232B20540(v41);
              v43 = v42;

              if (v43)
              {

                swift_setDeallocating();
                v4 = inited;
                sub_232C787B0();
                a1 = v126;
                inited = v127;
                v9 = v140;
                v7 = v143;
                goto LABEL_65;
              }
            }

            goto LABEL_29;
          }
        }

        swift_setDeallocating();
        v4 = inited;
        sub_232C787B0();
        sub_232B35090();
        a1 = v126;
        inited = v127;
        v44 = sub_232CE9FB0();
        MEMORY[0x238391B80](v44);
        sub_232BA6210();

        v9 = v140;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = *(v140 + 16);
          sub_232BA57A8();
          sub_232B35ECC();
          v9 = v118;
        }

        v11 = v139;
        v45 = v144;
        v46 = *(v9 + 16);
        if (v46 >= *(v9 + 24) >> 1)
        {
          sub_232B35ECC();
          v9 = v119;
        }

        *(v9 + 16) = v46 + 1;
        v47 = v9 + 16 * v46;
        *(v47 + 32) = v4;
        *(v47 + 40) = v15;
        v48 = [v144 street];
        if (v48)
        {

          v49 = [v144 street];
          if (v49)
          {
            v4 = v49;
            sub_232CE9D50();
            sub_232BA61C8();

            sub_232BA694C(v50, v51, v52, v53, v54, v55, v56, v57, v126, v127, v128, *(&v128 + 1), v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
            swift_isUniquelyReferenced_nonNull_native();
            sub_232BA58D0();
            sub_232B1FAB4();
            sub_232BA6C80();
          }

          else
          {
            v4 = v147;
            sub_232B20540(v134);
            if (v58)
            {
              sub_232BA6E88();
              sub_232BA60D4();
              sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
              sub_232BA5B64();
              sub_232CEA5C0();

              v59 = *(*(v148 + 56) + 16 * v15 + 8);
              type metadata accessor for NSTextCheckingKey();
              v4 = v60;
              sub_232BA53AC();
              sub_232BA4DA4(&qword_27DDC65C8, v61);
              v147 = v148;
              sub_232CEA5E0();
            }
          }
        }

        v7 = v143;
        v62 = [v45 city];
        if (v62)
        {

          v63 = [v45 city];
          if (v63)
          {
            v4 = v63;
            sub_232CE9D50();
            sub_232BA61C8();

            sub_232BA694C(v64, v65, v66, v67, v68, v69, v70, v71, v126, v127, v128, *(&v128 + 1), v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
            swift_isUniquelyReferenced_nonNull_native();
            sub_232BA58D0();
            v7 = v143;
            sub_232B1FAB4();
            sub_232BA6C80();
          }

          else
          {
            v4 = v147;
            sub_232B20540(v135);
            if (v72)
            {
              sub_232BA6E88();
              sub_232BA60D4();
              sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
              sub_232BA5B64();
              v7 = v143;
              sub_232CEA5C0();
              sub_232BA5F68();

              sub_232BA6890();
              v4 = v74;
              sub_232BA53AC();
              sub_232BA4DA4(&qword_27DDC65C8, v75);
              sub_232BA5EB8();
              sub_232CEA5E0();
            }
          }
        }

        v76 = [v45 state];
        if (v76)
        {

          v77 = [v45 state];
          if (v77)
          {
            v4 = v77;
            sub_232CE9D50();
            sub_232BA61C8();

            sub_232BA694C(v78, v79, v80, v81, v82, v83, v84, v85, v126, v127, v128, *(&v128 + 1), v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
            swift_isUniquelyReferenced_nonNull_native();
            sub_232BA58D0();
            v7 = v143;
            sub_232B1FAB4();
            sub_232BA6C80();
          }

          else
          {
            v4 = v147;
            sub_232B20540(v136);
            if (v86)
            {
              sub_232BA6E88();
              sub_232BA60D4();
              sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
              sub_232BA5B64();
              v7 = v143;
              sub_232CEA5C0();
              sub_232BA5F68();

              sub_232BA6890();
              v4 = v88;
              sub_232BA53AC();
              sub_232BA4DA4(&qword_27DDC65C8, v89);
              sub_232BA5EB8();
              sub_232CEA5E0();
            }
          }
        }

        v90 = [v45 postalCode];
        if (v90)
        {

          v91 = [v45 postalCode];
          if (v91)
          {
            v4 = v91;
            sub_232CE9D50();
            sub_232BA61C8();

            sub_232BA694C(v92, v93, v94, v95, v96, v97, v98, v99, v126, v127, v128, *(&v128 + 1), v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
            swift_isUniquelyReferenced_nonNull_native();
            sub_232BA58D0();
            v7 = v143;
            sub_232B1FAB4();
            sub_232BA6C80();
          }

          else
          {
            v4 = v147;
            sub_232B20540(v137);
            if (v100)
            {
              sub_232BA6E88();
              sub_232BA60D4();
              sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
              sub_232BA5B64();
              v7 = v143;
              sub_232CEA5C0();
              sub_232BA5F68();

              sub_232BA6890();
              v4 = v102;
              sub_232BA53AC();
              sub_232BA4DA4(&qword_27DDC65C8, v103);
              sub_232BA5EB8();
              sub_232CEA5E0();
            }
          }
        }

        v104 = [v45 country];
        if (!v104)
        {

          goto LABEL_64;
        }

        v105 = [v45 country];
        if (v105)
        {
          v4 = v105;
          sub_232CE9D50();
          sub_232BA61C8();

          sub_232BA694C(v106, v107, v108, v109, v110, v111, v112, v113, v126, v127, v128, *(&v128 + 1), v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
          swift_isUniquelyReferenced_nonNull_native();
          sub_232BA58D0();
          v7 = v143;
          sub_232B1FAB4();

          sub_232BA6C80();
        }

        else
        {
          v4 = v147;
          sub_232B20540(v138);
          if (v114)
          {
            sub_232BA6E88();
            sub_232BA60D4();
            sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
            sub_232BA5B64();
            v7 = v143;
            sub_232CEA5C0();
            sub_232BA5F68();

            sub_232BA5B8C();
            type metadata accessor for NSTextCheckingKey();
            sub_232BA53AC();
            sub_232BA4DA4(&qword_27DDC65C8, v116);
            v147 = v45;
            sub_232CEA5E0();
          }

          else
          {

            v4 = 0;
          }
        }
      }

      else
      {
LABEL_64:
      }

LABEL_65:
      if (v8 == v146)
      {

        goto LABEL_73;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    sub_232BA506C();
    v5 = swift_once();
  }

  v9 = MEMORY[0x277D84F90];
LABEL_73:
  if (*(v9 + 16))
  {

    v120 = sub_232B2080C();
    sub_232B124A8(v120, v121);
    sub_232BA5560();
    sub_232BA62B0();
    sub_232B48E4C(v122, v123, v124);
    sub_232BA7218();
    a1 = sub_232CE9CD0();
  }

  return a1;
}

uint64_t sub_232B7CE00(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_232CE9A30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_232B66C40(a1, a2, a5, a6, &unk_28480D6C8);
  v19 = v18;
  v20 = sub_232B66C40(a3, a4, a5, a6, &unk_28480D6F0);
  v22 = v20;
  v23 = v21;
  if (v19)
  {
    v62 = v16;
    v63 = v13;
    v64 = v12;
    v65 = v17;
    v68 = v17;
    v69 = v19;
    v67 = v19;

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    if (!v23)
    {
      v23 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v24, v23);

    v26 = v68;
    v25 = v69;
    v27 = objc_opt_self();
    v28 = sub_232CE9D20();

    v61 = v26;
    v29 = MEMORY[0x238391CC0](v26, v25);
    v66 = v25;

    if (qword_27DDC6368 != -1)
    {
LABEL_32:
      swift_once();
    }

    v30 = [v27 scanString:v28 range:0 configuration:{v29, qword_27DDC6F80}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v31 = sub_232CE9FE0();

    v32 = sub_232B26B10(v31);
    if (v32)
    {
      v33 = v32;
      v27 = 0;
      while (1)
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x2383922C0](v27, v31);
        }

        else
        {
          if (v27 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v34 = *(v31 + 8 * v27 + 32);
        }

        v28 = v34;
        v35 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ([v34 category] == 6)
        {
          v36 = [objc_allocWithZone(MEMORY[0x277CC5688]) initWithDDScannerResult_];
          if (v36)
          {
            break;
          }
        }

        ++v27;
        if (v35 == v33)
        {
          goto LABEL_18;
        }
      }

      v44 = v36;

      v45 = MEMORY[0x2383920C0]([v44 amount]);
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v51 = HIDWORD(v45);
      v52 = HIWORD(v45);
      v53 = v47 >> 16;
      v66 = HIDWORD(v47);
      v67 = HIWORD(v47);
      LODWORD(v65) = HIWORD(v49);
      v54 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v54 setMinimumFractionDigits_];
      [v54 setMaximumFractionDigits_];
      [v54 setUsesGroupingSeparator_];
      v55 = sub_232CE9D20();
      [v54 setDecimalSeparator_];

      v56 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v68) = v46;
      WORD2(v68) = v51;
      HIWORD(v68) = v52;
      LOWORD(v69) = v48;
      WORD1(v69) = v53;
      WORD2(v69) = v66;
      HIWORD(v69) = v67;
      v70 = v50;
      v71 = v65;
      v57 = [v56 initWithDecimal_];
      v58 = [v54 stringFromNumber_];

      if (v58)
      {
        v17 = sub_232CE9D50();
      }

      else
      {
        v17 = 0;
      }

      v59 = [v44 currency];
      sub_232CE9D50();
    }

    else
    {
LABEL_18:

      v37 = v62;
      sub_232CE9A20();
      v38 = v66;

      v39 = sub_232CE9A00();
      v40 = sub_232CEA1A0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v68 = v42;
        *v41 = 136642819;
        v43 = sub_232BAD2D4(v61, v38, &v68);

        *(v41 + 4) = v43;
        _os_log_impl(&dword_232B02000, v39, v40, "DUAdapterPostProcessing: No DD money detected in totalCost: %{sensitive}s", v41, 0xCu);
        sub_232B2040C(v42);
        MEMORY[0x238393870](v42, -1, -1);
        MEMORY[0x238393870](v41, -1, -1);
      }

      else
      {
      }

      (*(v63 + 8))(v37, v64);
      return v65;
    }
  }

  else if (v21)
  {
  }

  else
  {
    return v20;
  }

  return v17;
}

uint64_t sub_232B7D3F0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_232CE9A30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_232B679D8(a1, a2, a5, a6, &unk_28480D960);
  v19 = v18;
  v20 = sub_232B679D8(a3, a4, a5, a6, &unk_28480D988);
  v22 = v20;
  v23 = v21;
  if (v19)
  {
    v62 = v16;
    v63 = v13;
    v64 = v12;
    v65 = v17;
    v68 = v17;
    v69 = v19;
    v67 = v19;

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    if (!v23)
    {
      v23 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v24, v23);

    v26 = v68;
    v25 = v69;
    v27 = objc_opt_self();
    v28 = sub_232CE9D20();

    v61 = v26;
    v29 = MEMORY[0x238391CC0](v26, v25);
    v66 = v25;

    if (qword_27DDC6368 != -1)
    {
LABEL_32:
      swift_once();
    }

    v30 = [v27 scanString:v28 range:0 configuration:{v29, qword_27DDC6F80}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v31 = sub_232CE9FE0();

    v32 = sub_232B26B10(v31);
    if (v32)
    {
      v33 = v32;
      v27 = 0;
      while (1)
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x2383922C0](v27, v31);
        }

        else
        {
          if (v27 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v34 = *(v31 + 8 * v27 + 32);
        }

        v28 = v34;
        v35 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ([v34 category] == 6)
        {
          v36 = [objc_allocWithZone(MEMORY[0x277CC5688]) initWithDDScannerResult_];
          if (v36)
          {
            break;
          }
        }

        ++v27;
        if (v35 == v33)
        {
          goto LABEL_18;
        }
      }

      v44 = v36;

      v45 = MEMORY[0x2383920C0]([v44 amount]);
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v51 = HIDWORD(v45);
      v52 = HIWORD(v45);
      v53 = v47 >> 16;
      v66 = HIDWORD(v47);
      v67 = HIWORD(v47);
      LODWORD(v65) = HIWORD(v49);
      v54 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v54 setMinimumFractionDigits_];
      [v54 setMaximumFractionDigits_];
      [v54 setUsesGroupingSeparator_];
      v55 = sub_232CE9D20();
      [v54 setDecimalSeparator_];

      v56 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v68) = v46;
      WORD2(v68) = v51;
      HIWORD(v68) = v52;
      LOWORD(v69) = v48;
      WORD1(v69) = v53;
      WORD2(v69) = v66;
      HIWORD(v69) = v67;
      v70 = v50;
      v71 = v65;
      v57 = [v56 initWithDecimal_];
      v58 = [v54 stringFromNumber_];

      if (v58)
      {
        v17 = sub_232CE9D50();
      }

      else
      {
        v17 = 0;
      }

      v59 = [v44 currency];
      sub_232CE9D50();
    }

    else
    {
LABEL_18:

      v37 = v62;
      sub_232CE9A20();
      v38 = v66;

      v39 = sub_232CE9A00();
      v40 = sub_232CEA1A0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v68 = v42;
        *v41 = 136642819;
        v43 = sub_232BAD2D4(v61, v38, &v68);

        *(v41 + 4) = v43;
        _os_log_impl(&dword_232B02000, v39, v40, "DUAdapterPostProcessing: No DD money detected in totalCost: %{sensitive}s", v41, 0xCu);
        sub_232B2040C(v42);
        MEMORY[0x238393870](v42, -1, -1);
        MEMORY[0x238393870](v41, -1, -1);
      }

      else
      {
      }

      (*(v63 + 8))(v37, v64);
      return v65;
    }
  }

  else if (v21)
  {
  }

  else
  {
    return v20;
  }

  return v17;
}

uint64_t sub_232B7D9E0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_232CE9A30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_232B68770(a1, a2, a5, a6, &unk_28480DD38);
  v19 = v18;
  v20 = sub_232B68770(a3, a4, a5, a6, &unk_28480DD60);
  v22 = v20;
  v23 = v21;
  if (v19)
  {
    v62 = v16;
    v63 = v13;
    v64 = v12;
    v65 = v17;
    v68 = v17;
    v69 = v19;
    v67 = v19;

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    if (!v23)
    {
      v23 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v24, v23);

    v26 = v68;
    v25 = v69;
    v27 = objc_opt_self();
    v28 = sub_232CE9D20();

    v61 = v26;
    v29 = MEMORY[0x238391CC0](v26, v25);
    v66 = v25;

    if (qword_27DDC6368 != -1)
    {
LABEL_32:
      swift_once();
    }

    v30 = [v27 scanString:v28 range:0 configuration:{v29, qword_27DDC6F80}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v31 = sub_232CE9FE0();

    v32 = sub_232B26B10(v31);
    if (v32)
    {
      v33 = v32;
      v27 = 0;
      while (1)
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x2383922C0](v27, v31);
        }

        else
        {
          if (v27 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v34 = *(v31 + 8 * v27 + 32);
        }

        v28 = v34;
        v35 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ([v34 category] == 6)
        {
          v36 = [objc_allocWithZone(MEMORY[0x277CC5688]) initWithDDScannerResult_];
          if (v36)
          {
            break;
          }
        }

        ++v27;
        if (v35 == v33)
        {
          goto LABEL_18;
        }
      }

      v44 = v36;

      v45 = MEMORY[0x2383920C0]([v44 amount]);
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v51 = HIDWORD(v45);
      v52 = HIWORD(v45);
      v53 = v47 >> 16;
      v66 = HIDWORD(v47);
      v67 = HIWORD(v47);
      LODWORD(v65) = HIWORD(v49);
      v54 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v54 setMinimumFractionDigits_];
      [v54 setMaximumFractionDigits_];
      [v54 setUsesGroupingSeparator_];
      v55 = sub_232CE9D20();
      [v54 setDecimalSeparator_];

      v56 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v68) = v46;
      WORD2(v68) = v51;
      HIWORD(v68) = v52;
      LOWORD(v69) = v48;
      WORD1(v69) = v53;
      WORD2(v69) = v66;
      HIWORD(v69) = v67;
      v70 = v50;
      v71 = v65;
      v57 = [v56 initWithDecimal_];
      v58 = [v54 stringFromNumber_];

      if (v58)
      {
        v17 = sub_232CE9D50();
      }

      else
      {
        v17 = 0;
      }

      v59 = [v44 currency];
      sub_232CE9D50();
    }

    else
    {
LABEL_18:

      v37 = v62;
      sub_232CE9A20();
      v38 = v66;

      v39 = sub_232CE9A00();
      v40 = sub_232CEA1A0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v68 = v42;
        *v41 = 136642819;
        v43 = sub_232BAD2D4(v61, v38, &v68);

        *(v41 + 4) = v43;
        _os_log_impl(&dword_232B02000, v39, v40, "DUAdapterPostProcessing: No DD money detected in totalCost: %{sensitive}s", v41, 0xCu);
        sub_232B2040C(v42);
        MEMORY[0x238393870](v42, -1, -1);
        MEMORY[0x238393870](v41, -1, -1);
      }

      else
      {
      }

      (*(v63 + 8))(v37, v64);
      return v65;
    }
  }

  else if (v21)
  {
  }

  else
  {
    return v20;
  }

  return v17;
}

uint64_t sub_232B7DFD0()
{
  v0 = sub_232CE9A30();
  v53 = *(v0 - 8);
  v54 = v0;
  v1 = *(v53 + 64);
  MEMORY[0x28223BE20](v0);
  v52 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232B6A2A0();
  v4 = v3;
  v6 = v5;
  sub_232B6A2A0();
  v9 = v7;
  v10 = v8;
  if (v6)
  {
    v49 = v4;
    v55 = v4;
    v56 = v6;
    v51 = v6;

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (!v10)
    {
      v10 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v11, v10);

    v13 = v55;
    v12 = v56;
    v14 = objc_opt_self();
    v15 = sub_232CE9D20();

    v48 = v13;
    v16 = MEMORY[0x238391CC0](v13, v12);
    v50 = v12;

    if (qword_27DDC6368 != -1)
    {
LABEL_32:
      swift_once();
    }

    v17 = [v14 scanString:v15 range:0 configuration:{v16, qword_27DDC6F80}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v18 = sub_232CE9FE0();

    v19 = sub_232B26B10(v18);
    if (v19)
    {
      v20 = v19;
      v14 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x2383922C0](v14, v18);
        }

        else
        {
          if (v14 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v21 = *(v18 + 8 * v14 + 32);
        }

        v15 = v21;
        v22 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ([v21 category] == 6)
        {
          v23 = [objc_allocWithZone(MEMORY[0x277CC5688]) initWithDDScannerResult_];
          if (v23)
          {
            break;
          }
        }

        ++v14;
        if (v22 == v20)
        {
          goto LABEL_18;
        }
      }

      v31 = v23;

      v32 = MEMORY[0x2383920C0]([v31 amount]);
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v38 = HIDWORD(v32);
      v39 = HIWORD(v32);
      v40 = v34 >> 16;
      v53 = HIDWORD(v34);
      v54 = HIWORD(v34);
      LODWORD(v52) = HIWORD(v36);
      v41 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v41 setMinimumFractionDigits_];
      [v41 setMaximumFractionDigits_];
      [v41 setUsesGroupingSeparator_];
      v42 = sub_232CE9D20();
      [v41 setDecimalSeparator_];

      v43 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v55) = v33;
      WORD2(v55) = v38;
      HIWORD(v55) = v39;
      LOWORD(v56) = v35;
      WORD1(v56) = v40;
      WORD2(v56) = v53;
      HIWORD(v56) = v54;
      v57 = v37;
      v58 = v52;
      v44 = [v43 initWithDecimal_];
      v45 = [v41 stringFromNumber_];

      if (v45)
      {
        v4 = sub_232CE9D50();
      }

      else
      {
        v4 = 0;
      }

      v46 = [v31 currency];
      sub_232CE9D50();
    }

    else
    {
LABEL_18:

      v24 = v52;
      sub_232CE9A20();
      v25 = v50;

      v26 = sub_232CE9A00();
      v27 = sub_232CEA1A0();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v55 = v29;
        *v28 = 136642819;
        v30 = sub_232BAD2D4(v48, v25, &v55);

        *(v28 + 4) = v30;
        _os_log_impl(&dword_232B02000, v26, v27, "DUAdapterPostProcessing: No DD money detected in totalCost: %{sensitive}s", v28, 0xCu);
        sub_232B2040C(v29);
        MEMORY[0x238393870](v29, -1, -1);
        MEMORY[0x238393870](v28, -1, -1);
      }

      else
      {
      }

      (*(v53 + 8))(v24, v54);
      return v49;
    }
  }

  else if (v8)
  {
  }

  else
  {
    return v7;
  }

  return v4;
}

uint64_t sub_232B7E604()
{
  v0 = sub_232CE9A30();
  v53 = *(v0 - 8);
  v54 = v0;
  v1 = *(v53 + 64);
  MEMORY[0x28223BE20](v0);
  v52 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232B6A2A0();
  v4 = v3;
  v6 = v5;
  sub_232B6A2A0();
  v9 = v7;
  v10 = v8;
  if (v6)
  {
    v49 = v4;
    v55 = v4;
    v56 = v6;
    v51 = v6;

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (!v10)
    {
      v10 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v11, v10);

    v13 = v55;
    v12 = v56;
    v14 = objc_opt_self();
    v15 = sub_232CE9D20();

    v48 = v13;
    v16 = MEMORY[0x238391CC0](v13, v12);
    v50 = v12;

    if (qword_27DDC6368 != -1)
    {
LABEL_32:
      swift_once();
    }

    v17 = [v14 scanString:v15 range:0 configuration:{v16, qword_27DDC6F80}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v18 = sub_232CE9FE0();

    v19 = sub_232B26B10(v18);
    if (v19)
    {
      v20 = v19;
      v14 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x2383922C0](v14, v18);
        }

        else
        {
          if (v14 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v21 = *(v18 + 8 * v14 + 32);
        }

        v15 = v21;
        v22 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ([v21 category] == 6)
        {
          v23 = [objc_allocWithZone(MEMORY[0x277CC5688]) initWithDDScannerResult_];
          if (v23)
          {
            break;
          }
        }

        ++v14;
        if (v22 == v20)
        {
          goto LABEL_18;
        }
      }

      v31 = v23;

      v32 = MEMORY[0x2383920C0]([v31 amount]);
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v38 = HIDWORD(v32);
      v39 = HIWORD(v32);
      v40 = v34 >> 16;
      v53 = HIDWORD(v34);
      v54 = HIWORD(v34);
      LODWORD(v52) = HIWORD(v36);
      v41 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v41 setMinimumFractionDigits_];
      [v41 setMaximumFractionDigits_];
      [v41 setUsesGroupingSeparator_];
      v42 = sub_232CE9D20();
      [v41 setDecimalSeparator_];

      v43 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v55) = v33;
      WORD2(v55) = v38;
      HIWORD(v55) = v39;
      LOWORD(v56) = v35;
      WORD1(v56) = v40;
      WORD2(v56) = v53;
      HIWORD(v56) = v54;
      v57 = v37;
      v58 = v52;
      v44 = [v43 initWithDecimal_];
      v45 = [v41 stringFromNumber_];

      if (v45)
      {
        v4 = sub_232CE9D50();
      }

      else
      {
        v4 = 0;
      }

      v46 = [v31 currency];
      sub_232CE9D50();
    }

    else
    {
LABEL_18:

      v24 = v52;
      sub_232CE9A20();
      v25 = v50;

      v26 = sub_232CE9A00();
      v27 = sub_232CEA1A0();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v55 = v29;
        *v28 = 136642819;
        v30 = sub_232BAD2D4(v48, v25, &v55);

        *(v28 + 4) = v30;
        _os_log_impl(&dword_232B02000, v26, v27, "DUAdapterPostProcessing: No DD money detected in totalCost: %{sensitive}s", v28, 0xCu);
        sub_232B2040C(v29);
        MEMORY[0x238393870](v29, -1, -1);
        MEMORY[0x238393870](v28, -1, -1);
      }

      else
      {
      }

      (*(v53 + 8))(v24, v54);
      return v49;
    }
  }

  else if (v8)
  {
  }

  else
  {
    return v7;
  }

  return v4;
}

uint64_t sub_232B7EC38(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_232CE9A30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_232B6BB90(a1, a2, a5, a6, &unk_28480E800);
  v19 = v18;
  v20 = sub_232B6BB90(a3, a4, a5, a6, &unk_28480E828);
  v22 = v20;
  v23 = v21;
  if (v19)
  {
    v62 = v16;
    v63 = v13;
    v64 = v12;
    v65 = v17;
    v68 = v17;
    v69 = v19;
    v67 = v19;

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    if (!v23)
    {
      v23 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v24, v23);

    v26 = v68;
    v25 = v69;
    v27 = objc_opt_self();
    v28 = sub_232CE9D20();

    v61 = v26;
    v29 = MEMORY[0x238391CC0](v26, v25);
    v66 = v25;

    if (qword_27DDC6368 != -1)
    {
LABEL_32:
      swift_once();
    }

    v30 = [v27 scanString:v28 range:0 configuration:{v29, qword_27DDC6F80}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v31 = sub_232CE9FE0();

    v32 = sub_232B26B10(v31);
    if (v32)
    {
      v33 = v32;
      v27 = 0;
      while (1)
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x2383922C0](v27, v31);
        }

        else
        {
          if (v27 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v34 = *(v31 + 8 * v27 + 32);
        }

        v28 = v34;
        v35 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ([v34 category] == 6)
        {
          v36 = [objc_allocWithZone(MEMORY[0x277CC5688]) initWithDDScannerResult_];
          if (v36)
          {
            break;
          }
        }

        ++v27;
        if (v35 == v33)
        {
          goto LABEL_18;
        }
      }

      v44 = v36;

      v45 = MEMORY[0x2383920C0]([v44 amount]);
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v51 = HIDWORD(v45);
      v52 = HIWORD(v45);
      v53 = v47 >> 16;
      v66 = HIDWORD(v47);
      v67 = HIWORD(v47);
      LODWORD(v65) = HIWORD(v49);
      v54 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v54 setMinimumFractionDigits_];
      [v54 setMaximumFractionDigits_];
      [v54 setUsesGroupingSeparator_];
      v55 = sub_232CE9D20();
      [v54 setDecimalSeparator_];

      v56 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v68) = v46;
      WORD2(v68) = v51;
      HIWORD(v68) = v52;
      LOWORD(v69) = v48;
      WORD1(v69) = v53;
      WORD2(v69) = v66;
      HIWORD(v69) = v67;
      v70 = v50;
      v71 = v65;
      v57 = [v56 initWithDecimal_];
      v58 = [v54 stringFromNumber_];

      if (v58)
      {
        v17 = sub_232CE9D50();
      }

      else
      {
        v17 = 0;
      }

      v59 = [v44 currency];
      sub_232CE9D50();
    }

    else
    {
LABEL_18:

      v37 = v62;
      sub_232CE9A20();
      v38 = v66;

      v39 = sub_232CE9A00();
      v40 = sub_232CEA1A0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v68 = v42;
        *v41 = 136642819;
        v43 = sub_232BAD2D4(v61, v38, &v68);

        *(v41 + 4) = v43;
        _os_log_impl(&dword_232B02000, v39, v40, "DUAdapterPostProcessing: No DD money detected in totalCost: %{sensitive}s", v41, 0xCu);
        sub_232B2040C(v42);
        MEMORY[0x238393870](v42, -1, -1);
        MEMORY[0x238393870](v41, -1, -1);
      }

      else
      {
      }

      (*(v63 + 8))(v37, v64);
      return v65;
    }
  }

  else if (v21)
  {
  }

  else
  {
    return v20;
  }

  return v17;
}

uint64_t sub_232B7F228(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_232CE9A30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_232B6C928(a1, a2, a5, a6, &unk_28480EA70);
  v19 = v18;
  v20 = sub_232B6C928(a3, a4, a5, a6, &unk_28480EA98);
  v22 = v20;
  v23 = v21;
  if (v19)
  {
    v62 = v16;
    v63 = v13;
    v64 = v12;
    v65 = v17;
    v68 = v17;
    v69 = v19;
    v67 = v19;

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    if (!v23)
    {
      v23 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v24, v23);

    v26 = v68;
    v25 = v69;
    v27 = objc_opt_self();
    v28 = sub_232CE9D20();

    v61 = v26;
    v29 = MEMORY[0x238391CC0](v26, v25);
    v66 = v25;

    if (qword_27DDC6368 != -1)
    {
LABEL_32:
      swift_once();
    }

    v30 = [v27 scanString:v28 range:0 configuration:{v29, qword_27DDC6F80}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v31 = sub_232CE9FE0();

    v32 = sub_232B26B10(v31);
    if (v32)
    {
      v33 = v32;
      v27 = 0;
      while (1)
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x2383922C0](v27, v31);
        }

        else
        {
          if (v27 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v34 = *(v31 + 8 * v27 + 32);
        }

        v28 = v34;
        v35 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ([v34 category] == 6)
        {
          v36 = [objc_allocWithZone(MEMORY[0x277CC5688]) initWithDDScannerResult_];
          if (v36)
          {
            break;
          }
        }

        ++v27;
        if (v35 == v33)
        {
          goto LABEL_18;
        }
      }

      v44 = v36;

      v45 = MEMORY[0x2383920C0]([v44 amount]);
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v51 = HIDWORD(v45);
      v52 = HIWORD(v45);
      v53 = v47 >> 16;
      v66 = HIDWORD(v47);
      v67 = HIWORD(v47);
      LODWORD(v65) = HIWORD(v49);
      v54 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v54 setMinimumFractionDigits_];
      [v54 setMaximumFractionDigits_];
      [v54 setUsesGroupingSeparator_];
      v55 = sub_232CE9D20();
      [v54 setDecimalSeparator_];

      v56 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v68) = v46;
      WORD2(v68) = v51;
      HIWORD(v68) = v52;
      LOWORD(v69) = v48;
      WORD1(v69) = v53;
      WORD2(v69) = v66;
      HIWORD(v69) = v67;
      v70 = v50;
      v71 = v65;
      v57 = [v56 initWithDecimal_];
      v58 = [v54 stringFromNumber_];

      if (v58)
      {
        v17 = sub_232CE9D50();
      }

      else
      {
        v17 = 0;
      }

      v59 = [v44 currency];
      sub_232CE9D50();
    }

    else
    {
LABEL_18:

      v37 = v62;
      sub_232CE9A20();
      v38 = v66;

      v39 = sub_232CE9A00();
      v40 = sub_232CEA1A0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v68 = v42;
        *v41 = 136642819;
        v43 = sub_232BAD2D4(v61, v38, &v68);

        *(v41 + 4) = v43;
        _os_log_impl(&dword_232B02000, v39, v40, "DUAdapterPostProcessing: No DD money detected in totalCost: %{sensitive}s", v41, 0xCu);
        sub_232B2040C(v42);
        MEMORY[0x238393870](v42, -1, -1);
        MEMORY[0x238393870](v41, -1, -1);
      }

      else
      {
      }

      (*(v63 + 8))(v37, v64);
      return v65;
    }
  }

  else if (v21)
  {
  }

  else
  {
    return v20;
  }

  return v17;
}

uint64_t sub_232B7F818(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_232CE9A30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_232B6E458(a1, a2, a5, a6, &unk_28480EED8);
  v19 = v18;
  v20 = sub_232B6E458(a3, a4, a5, a6, &unk_28480EF00);
  v22 = v20;
  v23 = v21;
  if (v19)
  {
    v62 = v16;
    v63 = v13;
    v64 = v12;
    v65 = v17;
    v68 = v17;
    v69 = v19;
    v67 = v19;

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    if (!v23)
    {
      v23 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v24, v23);

    v26 = v68;
    v25 = v69;
    v27 = objc_opt_self();
    v28 = sub_232CE9D20();

    v61 = v26;
    v29 = MEMORY[0x238391CC0](v26, v25);
    v66 = v25;

    if (qword_27DDC6368 != -1)
    {
LABEL_32:
      swift_once();
    }

    v30 = [v27 scanString:v28 range:0 configuration:{v29, qword_27DDC6F80}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v31 = sub_232CE9FE0();

    v32 = sub_232B26B10(v31);
    if (v32)
    {
      v33 = v32;
      v27 = 0;
      while (1)
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x2383922C0](v27, v31);
        }

        else
        {
          if (v27 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v34 = *(v31 + 8 * v27 + 32);
        }

        v28 = v34;
        v35 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ([v34 category] == 6)
        {
          v36 = [objc_allocWithZone(MEMORY[0x277CC5688]) initWithDDScannerResult_];
          if (v36)
          {
            break;
          }
        }

        ++v27;
        if (v35 == v33)
        {
          goto LABEL_18;
        }
      }

      v44 = v36;

      v45 = MEMORY[0x2383920C0]([v44 amount]);
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v51 = HIDWORD(v45);
      v52 = HIWORD(v45);
      v53 = v47 >> 16;
      v66 = HIDWORD(v47);
      v67 = HIWORD(v47);
      LODWORD(v65) = HIWORD(v49);
      v54 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v54 setMinimumFractionDigits_];
      [v54 setMaximumFractionDigits_];
      [v54 setUsesGroupingSeparator_];
      v55 = sub_232CE9D20();
      [v54 setDecimalSeparator_];

      v56 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v68) = v46;
      WORD2(v68) = v51;
      HIWORD(v68) = v52;
      LOWORD(v69) = v48;
      WORD1(v69) = v53;
      WORD2(v69) = v66;
      HIWORD(v69) = v67;
      v70 = v50;
      v71 = v65;
      v57 = [v56 initWithDecimal_];
      v58 = [v54 stringFromNumber_];

      if (v58)
      {
        v17 = sub_232CE9D50();
      }

      else
      {
        v17 = 0;
      }

      v59 = [v44 currency];
      sub_232CE9D50();
    }

    else
    {
LABEL_18:

      v37 = v62;
      sub_232CE9A20();
      v38 = v66;

      v39 = sub_232CE9A00();
      v40 = sub_232CEA1A0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v68 = v42;
        *v41 = 136642819;
        v43 = sub_232BAD2D4(v61, v38, &v68);

        *(v41 + 4) = v43;
        _os_log_impl(&dword_232B02000, v39, v40, "DUAdapterPostProcessing: No DD money detected in totalCost: %{sensitive}s", v41, 0xCu);
        sub_232B2040C(v42);
        MEMORY[0x238393870](v42, -1, -1);
        MEMORY[0x238393870](v41, -1, -1);
      }

      else
      {
      }

      (*(v63 + 8))(v37, v64);
      return v65;
    }
  }

  else if (v21)
  {
  }

  else
  {
    return v20;
  }

  return v17;
}

uint64_t sub_232B7FE08(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_232CE9A30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_232B6F1F0(a1, a2, a5, a6, &unk_28480F240);
  v19 = v18;
  v20 = sub_232B6F1F0(a3, a4, a5, a6, &unk_28480F268);
  v22 = v20;
  v23 = v21;
  if (v19)
  {
    v62 = v16;
    v63 = v13;
    v64 = v12;
    v65 = v17;
    v68 = v17;
    v69 = v19;
    v67 = v19;

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    if (!v23)
    {
      v23 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v24, v23);

    v26 = v68;
    v25 = v69;
    v27 = objc_opt_self();
    v28 = sub_232CE9D20();

    v61 = v26;
    v29 = MEMORY[0x238391CC0](v26, v25);
    v66 = v25;

    if (qword_27DDC6368 != -1)
    {
LABEL_32:
      swift_once();
    }

    v30 = [v27 scanString:v28 range:0 configuration:{v29, qword_27DDC6F80}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v31 = sub_232CE9FE0();

    v32 = sub_232B26B10(v31);
    if (v32)
    {
      v33 = v32;
      v27 = 0;
      while (1)
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x2383922C0](v27, v31);
        }

        else
        {
          if (v27 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v34 = *(v31 + 8 * v27 + 32);
        }

        v28 = v34;
        v35 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ([v34 category] == 6)
        {
          v36 = [objc_allocWithZone(MEMORY[0x277CC5688]) initWithDDScannerResult_];
          if (v36)
          {
            break;
          }
        }

        ++v27;
        if (v35 == v33)
        {
          goto LABEL_18;
        }
      }

      v44 = v36;

      v45 = MEMORY[0x2383920C0]([v44 amount]);
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v51 = HIDWORD(v45);
      v52 = HIWORD(v45);
      v53 = v47 >> 16;
      v66 = HIDWORD(v47);
      v67 = HIWORD(v47);
      LODWORD(v65) = HIWORD(v49);
      v54 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v54 setMinimumFractionDigits_];
      [v54 setMaximumFractionDigits_];
      [v54 setUsesGroupingSeparator_];
      v55 = sub_232CE9D20();
      [v54 setDecimalSeparator_];

      v56 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v68) = v46;
      WORD2(v68) = v51;
      HIWORD(v68) = v52;
      LOWORD(v69) = v48;
      WORD1(v69) = v53;
      WORD2(v69) = v66;
      HIWORD(v69) = v67;
      v70 = v50;
      v71 = v65;
      v57 = [v56 initWithDecimal_];
      v58 = [v54 stringFromNumber_];

      if (v58)
      {
        v17 = sub_232CE9D50();
      }

      else
      {
        v17 = 0;
      }

      v59 = [v44 currency];
      sub_232CE9D50();
    }

    else
    {
LABEL_18:

      v37 = v62;
      sub_232CE9A20();
      v38 = v66;

      v39 = sub_232CE9A00();
      v40 = sub_232CEA1A0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v68 = v42;
        *v41 = 136642819;
        v43 = sub_232BAD2D4(v61, v38, &v68);

        *(v41 + 4) = v43;
        _os_log_impl(&dword_232B02000, v39, v40, "DUAdapterPostProcessing: No DD money detected in totalCost: %{sensitive}s", v41, 0xCu);
        sub_232B2040C(v42);
        MEMORY[0x238393870](v42, -1, -1);
        MEMORY[0x238393870](v41, -1, -1);
      }

      else
      {
      }

      (*(v63 + 8))(v37, v64);
      return v65;
    }
  }

  else if (v21)
  {
  }

  else
  {
    return v20;
  }

  return v17;
}