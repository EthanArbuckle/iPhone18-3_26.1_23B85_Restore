void sub_22B92C008()
{
  v1 = v0;
  v2 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v127 - v5;
  v7 = sub_22BA0FD8C();
  v130 = *(v7 - 8);
  v8 = *(v130 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v129 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BA0FF1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281414B68 != -1)
  {
    swift_once();
  }

  v17 = qword_28141ACF0;
  if (sub_22B92DA70(1u, 0))
  {
    v128 = v6;
    v18 = type metadata accessor for SyncCoordinator();
    if ([objc_opt_self() isMainThread])
    {
      if (off_281416A80)
      {
LABEL_6:
        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v19 = sub_22BA0FEFC();
        sub_22B936CA8(v19, qword_28141AD40);
        v20 = sub_22BA0FEDC();
        v21 = sub_22BA1044C();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_22B92A000, v20, v21, "Tried to resume syncing, but we're already syncing", v22, 2u);
          MEMORY[0x23189ADD0](v22, -1, -1);
        }

        return;
      }
    }

    else
    {
      LOBYTE(v135) = 0;
      sub_22B9E0AFC();
      v23 = sub_22BA1050C();
      v24 = sub_22BA0FF0C();
      v127 = v7;
      MEMORY[0x28223BE20](v24, v25);
      *(&v127 - 2) = &v135;
      *(&v127 - 1) = v18;
      sub_22BA1051C();

      v7 = v127;
      (*(v12 + 8))(v16, v11);
      if (v135)
      {
        goto LABEL_6;
      }
    }

    if (sub_22B9DFC08())
    {
      v26 = *MEMORY[0x277D19AA0];
      if ([v17 valueForKey_])
      {
        sub_22BA107AC();
        swift_unknownObjectRelease();
      }

      else
      {
        v133 = 0u;
        v134 = 0u;
      }

      v30 = v128;
      v135 = v133;
      v136 = v134;
      if (*(&v134 + 1))
      {
        v31 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          v32 = v17;
          v129 = v1;
          v34 = v131;
          v33 = v132;
          sub_22B9B3D30(v131, v132, &v135);
          v35 = MEMORY[0x277D19A98];
          LODWORD(v130) = v135;
          if (v135 == 10)
          {
            [v32 removeObjectForKey_];
            [v32 removeObjectForKey_];
            if (qword_281414D30 != -1)
            {
              swift_once();
            }

            v36 = sub_22BA0FEFC();
            sub_22B936CA8(v36, qword_28141AD40);

            v37 = sub_22BA0FEDC();
            v38 = sub_22BA1044C();

            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              v40 = swift_slowAlloc();
              *&v135 = v40;
              *v39 = 136315138;
              *(v39 + 4) = sub_22B99153C(v34, v33, &v135);
              _os_log_impl(&dword_22B92A000, v37, v38, "Last sync phase %s not recognized, not restarting", v39, 0xCu);
              sub_22B936C4C(v40);
              MEMORY[0x23189ADD0](v40, -1, -1);
              MEMORY[0x23189ADD0](v39, -1, -1);
            }

            *&v135 = 0;
            *(&v135 + 1) = 0xE000000000000000;
            sub_22BA108FC();

            *&v135 = 0xD000000000000021;
            *(&v135 + 1) = 0x800000022BA1E670;
            MEMORY[0x231899730](v34, v33);

            MEMORY[0x231899730](0x63657220746F6E20, 0xEF64657A696E676FLL);
            v41 = *(&v135 + 1);
            v42 = v135;
            v43 = *MEMORY[0x277D19D08];
            sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_22BA13CB0;
            v45 = *MEMORY[0x277CCA450];
            *(inited + 32) = sub_22BA0FFFC();
            *(inited + 72) = v31;
            *(inited + 40) = v46;
            *(inited + 48) = v42;
            *(inited + 56) = v41;
            v47 = v43;

            sub_22B9BBA8C(inited);
            swift_setDeallocating();
            sub_22B936BEC(inited + 32, &unk_27D8D5770, &qword_22BA135E0);
            v48 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
            v49 = sub_22BA0FF5C();

            v50 = [v48 initWithDomain:v47 code:9 userInfo:v49];
LABEL_28:
            v51 = v50;

            v52 = v51;
            sub_22B975FD8(19, v52, v42, v41);

            return;
          }

          v68 = *MEMORY[0x277D19A98];
          if ([v32 valueForKey_])
          {
            sub_22BA107AC();
            swift_unknownObjectRelease();
          }

          else
          {
            v133 = 0u;
            v134 = 0u;
          }

          v135 = v133;
          v136 = v134;
          if (*(&v134 + 1))
          {
            if (swift_dynamicCast())
            {
              v69 = v131 + 1;
              if (__OFADD__(v131, 1))
              {
                __break(1u);
                goto LABEL_113;
              }

              if (v69 >= 4)
              {
                [v32 removeObjectForKey_];
                [v32 removeObjectForKey_];
                if (qword_281414D30 == -1)
                {
LABEL_46:
                  v70 = sub_22BA0FEFC();
                  sub_22B936CA8(v70, qword_28141AD40);

                  v71 = sub_22BA0FEDC();
                  v72 = sub_22BA1044C();

                  v73 = os_log_type_enabled(v71, v72);
                  v74 = v130;
                  if (v73)
                  {
                    v75 = swift_slowAlloc();
                    v76 = swift_slowAlloc();
                    v77 = v69;
                    v78 = v76;
                    *&v135 = v76;
                    *v75 = 134218754;
                    *(v75 + 4) = v77 - 1;
                    *(v75 + 12) = 2080;
                    v79 = sub_22B99153C(115, 0xE100000000000000, &v135);

                    *(v75 + 14) = v79;
                    *(v75 + 22) = 2080;
                    v80 = sub_22B99153C(v34, v33, &v135);

                    *(v75 + 24) = v80;
                    *(v75 + 32) = 2048;
                    *(v75 + 34) = 3;
                    _os_log_impl(&dword_22B92A000, v71, v72, "We've attempted %ld time%s to do %s sync, but didn't complete. Not retrying again, maxAttempts %ld", v75, 0x2Au);
                    swift_arrayDestroy();
                    MEMORY[0x23189ADD0](v78, -1, -1);
                    MEMORY[0x23189ADD0](v75, -1, -1);
                  }

                  else
                  {
                  }

                  *&v135 = 0;
                  *(&v135 + 1) = 0xE000000000000000;
                  sub_22BA108FC();

                  *&v135 = 0xD000000000000020;
                  *(&v135 + 1) = 0x800000022BA1E6C0;
                  if (v74 > 4)
                  {
                    v116 = 0x7274656D656C6554;
                    v117 = 0xE900000000000079;
                    v118 = 0x6172745374736554;
                    v119 = 0xEE007372656C6767;
                    if (v74 != 8)
                    {
                      v118 = 1953719636;
                      v119 = 0xE400000000000000;
                    }

                    if (v74 != 7)
                    {
                      v116 = v118;
                      v117 = v119;
                    }

                    v120 = 0x6C6E4F746E756F43;
                    v121 = 0xE900000000000079;
                    if (v74 != 5)
                    {
                      v120 = 0x74696E4972657355;
                      v121 = 0xED00006465746169;
                    }

                    if (v74 <= 6)
                    {
                      v114 = v120;
                    }

                    else
                    {
                      v114 = v116;
                    }

                    if (v74 <= 6)
                    {
                      v115 = v121;
                    }

                    else
                    {
                      v115 = v117;
                    }
                  }

                  else
                  {
                    v108 = 0x6C616974696E49;
                    v109 = 0xE700000000000000;
                    v110 = 0xE800000000000000;
                    v111 = 0x6369646F69726550;
                    v112 = 0xE600000000000000;
                    v113 = 0x70756B636142;
                    if (v74 != 3)
                    {
                      v113 = 0xD000000000000017;
                      v112 = 0x800000022BA1BD10;
                    }

                    if (v74 != 2)
                    {
                      v111 = v113;
                      v110 = v112;
                    }

                    if (v74)
                    {
                      v108 = 0x6C6C69666B636142;
                      v109 = 0xE800000000000000;
                    }

                    if (v74 <= 1)
                    {
                      v114 = v108;
                    }

                    else
                    {
                      v114 = v111;
                    }

                    if (v74 <= 1)
                    {
                      v115 = v109;
                    }

                    else
                    {
                      v115 = v110;
                    }
                  }

                  MEMORY[0x231899730](v114, v115);

                  v41 = *(&v135 + 1);
                  v42 = v135;
                  v122 = *MEMORY[0x277D19D08];
                  sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
                  v123 = swift_initStackObject();
                  *(v123 + 16) = xmmword_22BA13CB0;
                  v124 = *MEMORY[0x277CCA450];
                  *(v123 + 32) = sub_22BA0FFFC();
                  *(v123 + 72) = v31;
                  *(v123 + 40) = v125;
                  *(v123 + 48) = v42;
                  *(v123 + 56) = v41;
                  v47 = v122;

                  sub_22B9BBA8C(v123);
                  swift_setDeallocating();
                  sub_22B936BEC(v123 + 32, &unk_27D8D5770, &qword_22BA135E0);
                  v126 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
                  v49 = sub_22BA0FF5C();

                  v50 = [v126 initWithDomain:v47 code:10 userInfo:v49];
                  goto LABEL_28;
                }

LABEL_113:
                swift_once();
                goto LABEL_46;
              }

              goto LABEL_50;
            }
          }

          else
          {
            sub_22B936BEC(&v135, &unk_27D8D5A30, qword_22BA13390);
          }

          v69 = 1;
LABEL_50:
          v128 = v68;

          if (qword_281414D30 != -1)
          {
            swift_once();
          }

          v81 = sub_22BA0FEFC();
          v82 = sub_22B936CA8(v81, qword_28141AD40);
          v83 = sub_22BA0FEDC();
          v84 = sub_22BA1046C();
          if (os_log_type_enabled(v83, v84))
          {
            v127 = v82;
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            *&v135 = v86;
            *v85 = 136315394;
            if (v130 > 4)
            {
              v96 = 0x7274656D656C6554;
              v97 = 0xE900000000000079;
              v98 = 0x6172745374736554;
              v99 = 0xEE007372656C6767;
              if (v130 != 8)
              {
                v98 = 1953719636;
                v99 = 0xE400000000000000;
              }

              if (v130 != 7)
              {
                v96 = v98;
                v97 = v99;
              }

              v100 = 0x6C6E4F746E756F43;
              v101 = 0xE900000000000079;
              if (v130 != 5)
              {
                v100 = 0x74696E4972657355;
                v101 = 0xED00006465746169;
              }

              if (v130 <= 6)
              {
                v93 = v100;
              }

              else
              {
                v93 = v96;
              }

              if (v130 <= 6)
              {
                v94 = v101;
              }

              else
              {
                v94 = v97;
              }
            }

            else
            {
              v87 = 0xE700000000000000;
              v88 = 0xE800000000000000;
              v89 = 0x6369646F69726550;
              v90 = 0xE600000000000000;
              v91 = 0x70756B636142;
              if (v130 != 3)
              {
                v91 = 0xD000000000000017;
                v90 = 0x800000022BA1BD10;
              }

              if (v130 != 2)
              {
                v89 = v91;
                v88 = v90;
              }

              v92 = 0x6C616974696E49;
              if (v130)
              {
                v92 = 0x6C6C69666B636142;
                v87 = 0xE800000000000000;
              }

              if (v130 <= 1)
              {
                v93 = v92;
              }

              else
              {
                v93 = v89;
              }

              if (v130 <= 1)
              {
                v94 = v87;
              }

              else
              {
                v94 = v88;
              }
            }

            v102 = sub_22B99153C(v93, v94, &v135);

            *(v85 + 4) = v102;
            *(v85 + 12) = 2048;
            *(v85 + 14) = v69;
            _os_log_impl(&dword_22B92A000, v83, v84, "Looks like we restarted during sync phase %s, trying attempt %ld", v85, 0x16u);
            sub_22B936C4C(v86);
            MEMORY[0x23189ADD0](v86, -1, -1);
            MEMORY[0x23189ADD0](v85, -1, -1);

            v95 = v129;
            v82 = v127;
          }

          else
          {

            v95 = v129;
          }

          [v32 setInteger:v69 forKey:v128];
          v103 = *&v95[OBJC_IVAR___MCSSyncResumer_delegate];
          v104 = v130;
          if (v130)
          {
            v105 = sub_22BA10C6C();
          }

          else
          {
            v105 = 1;
          }

          type metadata accessor for CloudSyncFactory();
          sub_22B968F70(&v135);
          v127 = v82;
          v106 = swift_allocObject();
          *(v106 + 16) = v95;
          *(v106 + 24) = v104;
          LOBYTE(v131) = v104;
          v107 = v95;
          sub_22B96A870(&v131, v105 & 1, &v133);
          sub_22B9BC988(&v133, v103, &v135, &unk_22BA19C08, v106);
LABEL_84:

          sub_22B936C4C(&v133);
          sub_22B936C4C(&v135);
          return;
        }
      }

      else
      {
        sub_22B936BEC(&v135, &unk_27D8D5A30, qword_22BA13390);
      }

      v53 = [*&v1[OBJC_IVAR___MCSSyncResumer_syncStateManager] lastFullSyncDate];
      if (v53)
      {
        v54 = v53;
        sub_22BA0FD5C();

        (*(v130 + 56))(v30, 0, 1, v7);
        sub_22B936BEC(v30, &unk_27D8D4A90, &qword_22BA126A0);
        return;
      }

      (*(v130 + 56))(v30, 1, 1, v7);
      sub_22B936BEC(v30, &unk_27D8D4A90, &qword_22BA126A0);
      if (sub_22B9DFE58(*&v1[OBJC_IVAR___MCSSyncResumer_backfillRestartDateKey], *&v1[OBJC_IVAR___MCSSyncResumer_backfillRestartDateKey + 8], 3600.0))
      {
        v55 = v129;
        sub_22BA0FD7C();
        v56 = sub_22BA0FCFC();
        (*(v130 + 8))(v55, v7);
        v57 = sub_22BA0FFCC();
        [v17 setObject:v56 forKey:v57];

        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v58 = sub_22BA0FEFC();
        sub_22B936CA8(v58, qword_28141AD40);
        v59 = sub_22BA0FEDC();
        v60 = sub_22BA1042C();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_22B92A000, v59, v60, "No last full sync date, starting backfill sync", v61, 2u);
          MEMORY[0x23189ADD0](v61, -1, -1);
        }

        v62 = *&v1[OBJC_IVAR___MCSSyncResumer_delegate];
        type metadata accessor for CloudSyncFactory();
        sub_22B968F70(&v135);
        v63 = swift_allocObject();
        v64 = v1;
        v65 = v63;
        *(v63 + 16) = v64;
        LOBYTE(v131) = 1;
        v66 = v64;
        sub_22B9DBCF0();
        sub_22B96C910(&v131, 2, 3, v67, 0, &v133);
        swift_unknownObjectRelease();
        sub_22B9BC988(&v133, v62, &v135, &unk_22BA19BF8, v65);
        goto LABEL_84;
      }
    }

    else if (sub_22B9DFC08() & 1) == 0 && (sub_22B9DFE58(*&v1[OBJC_IVAR___MCSSyncResumer_initialRestartDateKey], *&v1[OBJC_IVAR___MCSSyncResumer_initialRestartDateKey + 8], 900.0))
    {
      v27 = v129;
      sub_22BA0FD7C();
      v28 = sub_22BA0FCFC();
      (*(v130 + 8))(v27, v7);
      v29 = sub_22BA0FFCC();
      [v17 setObject:v28 forKey:v29];

      sub_22B9DF8BC();
    }
  }
}

uint64_t sub_22B92DA00()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B92DA38()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_22B92DA70(unsigned __int8 a1, char a2)
{
  sub_22B92DB4C(a1);
  v4 = sub_22BA0FFCC();

  v5 = [v2 objectForKey_];

  if (v5)
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      a2 = v7;
    }
  }

  else
  {
    sub_22B949698(v10);
  }

  return a2 & 1;
}

unint64_t sub_22B92DB4C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v3 = 0x49776F5241444141;
    if (a1 != 10)
    {
      v3 = 0xD00000000000001ELL;
    }

    if (a1 == 9)
    {
      v3 = 0xD000000000000016;
    }

    v4 = 0xD00000000000001ALL;
    if (a1 == 7)
    {
      v4 = 0xD000000000000019;
    }

    if (a1 == 6)
    {
      v4 = 0xD00000000000001CLL;
    }

    if (a1 <= 8u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 > 2u)
  {
    v5 = 0xD000000000000015;
    if (a1 != 4)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 == 3)
    {
      return 0xD000000000000022;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (a1 == 1)
    {
      v1 = 0xD000000000000016;
    }

    else
    {
      v1 = 0xD000000000000015;
    }

    if (a1)
    {
      return v1;
    }

    else
    {
      return 0xD000000000000013;
    }
  }
}

void *sub_22B92DD94@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22B92DDAC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22BA0FFFC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_22B92DDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22B92DEA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B92DFEC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22B92E004()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_22B936C4C((v0 + 40));
  v2 = *(v0 + 80);

  if (*(v0 + 88))
  {
    v3 = *(v0 + 96);
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22B92E064(uint64_t a1, uint64_t a2)
{
  v15 = type metadata accessor for CloudState();
  v16 = &off_283F589F0;
  v14[0] = a1;
  v12 = type metadata accessor for SyncJob();
  v13 = &off_283F54680;
  v11[0] = a2;
  v4 = sub_22B9358B4(v14, v15);
  v5 = sub_22B9358B4(v11, v12);
  v6 = *(*v4 + 56);
  if (v6)
  {
    v7 = qword_22BA13678[*(*v5 + 17)];

    [v6 setSyncPhaseType_];
  }

  else
  {
  }

  v8 = *(*sub_22B9358B4(v14, v15) + 56);
  if (v8)
  {
    [v8 setSyncJobStateWithState_];
  }

  v9 = *sub_22B9358B4(v14, v15);
  sub_22BA08EA4(0);
  sub_22B936C4C(v14);
  return sub_22B936C4C(v11);
}

uint64_t sub_22B92E194()
{
  MEMORY[0x23189AEA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B92E1CC()
{
  sub_22B936C4C(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[8];

  sub_22B936C4C(v0 + 9);
  sub_22B936C4C(v0 + 14);
  v3 = v0[19];
  swift_unknownObjectRelease();
  v4 = v0[20];

  sub_22B936C4C(v0 + 22);
  if (v0[27])
  {
    v5 = v0[28];
  }

  return MEMORY[0x2821FE8E8](v0, 232, 7);
}

uint64_t sub_22B92E24C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_22B936C4C((v0 + 48));
  if (*(v0 + 88))
  {
    v3 = *(v0 + 96);
  }

  v4 = *(v0 + 104);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22B92E2B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D4CC8, &qword_22BA13580);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B92E32C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22B9349C8(&qword_27D8D4CC8, &qword_22BA13580);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22B92E3C0()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[12];

  v6 = v0[14];

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_22B92E420()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_22B92E460(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

id sub_22B92E4AC(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v5 = a1;
    a1 = a2;
  }

  return a1;
}

uint64_t sub_22B92E4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22B92E5C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B92E670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22B92E738(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B92E814()
{
  v1 = v0[3];

  if (v0[5])
  {
    v2 = v0[6];
  }

  v3 = v0[7];

  v4 = v0[8];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22B92E86C()
{
  sub_22B936C4C(v0 + 3);
  sub_22B936C4C(v0 + 8);
  if (v0[15])
  {
    v1 = v0[16];
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_22B92E8BC()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[12];

  v6 = v0[14];

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_22B92E91C()
{
  if (v0[3])
  {
    v1 = v0[4];
  }

  sub_22B936C4C(v0 + 5);
  v2 = v0[10];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22B92E96C()
{
  if (v0[5])
  {
    v1 = v0[6];
  }

  v2 = v0[7];

  v3 = v0[8];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22B92E9E8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B92EA20()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_22B92EA68()
{
  sub_22B936C4C(v0 + 2);
  sub_22B936C4C(v0 + 7);
  if (v0[15])
  {
    v1 = v0[16];
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_22B92EAB8()
{
  sub_22B936C4C(v0 + 5);
  sub_22B936C4C(v0 + 10);
  if (v0[15])
  {
    v1 = v0[16];
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_22B92EB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BA0FC4C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22B92EBA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BA0FC4C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22B92ECD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22B92ED98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B92EE48()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[15];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_22B92EEB0()
{
  v1 = sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B92EF44()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[12];

  v6 = v0[14];

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_22B92EFA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B92F02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22B9349C8(&qword_27D8D5470, &qword_22BA16C80);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22B92F0F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22B9349C8(&qword_27D8D5470, &qword_22BA16C80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B92F1A4()
{
  v1 = sub_22BA0FEBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_22B92F29C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B92F2E8()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[12];

  v6 = v0[14];

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_22B92F348()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[12];

  v6 = v0[14];

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_22B92F3B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_22B92F3F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B92F428()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B92F470()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B92F4B0()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[15];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_22B92F518()
{
  v1 = sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 111) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = (v0 + v5);
  v8 = v7[1];

  v9 = v7[4];

  v10 = v7[5];

  v11 = v7[6];

  v12 = v7[10];

  v13 = v7[12];

  v14 = *(v0 + v6);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_22B92F5FC()
{
  v1 = sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 3);

  v7 = *(v0 + 6);

  v8 = *(v0 + 7);

  v9 = *(v0 + 8);

  v10 = *(v0 + 12);

  v11 = *(v0 + 14);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_22B92F6FC@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 statusValue];
  *a2 = result;
  return result;
}

uint64_t sub_22B92F774()
{
  v1 = sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B92F808()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B92F840()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22B92F87C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B92F8B4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B92F8F0()
{
  MEMORY[0x23189AEA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B92F928()
{
  sub_22B936C4C(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[8];

  sub_22B936C4C(v0 + 9);
  sub_22B936C4C(v0 + 14);
  v3 = v0[19];
  swift_unknownObjectRelease();
  v4 = v0[20];

  sub_22B936C4C(v0 + 22);
  if (v0[27])
  {
    v5 = v0[28];
  }

  return MEMORY[0x2821FE8E8](v0, 232, 7);
}

uint64_t sub_22B92FA1C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_22B9C4C7C(a1);
}

uint64_t sub_22B92FA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22B92FB08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B92FC10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B92FC48()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B92FCD8()
{
  v1 = sub_22B9349C8(&qword_27D8D59A0, &unk_22BA19938);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22B92FD80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  sub_22B97721C(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_22B92FDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22B92FEA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B92FF9C()
{
  MEMORY[0x23189AEA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B92FFD4()
{
  v1 = sub_22B9349C8(&qword_27D8D5B20, &qword_22BA1A348);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B93006C()
{
  MEMORY[0x23189AEA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B9300A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B9300E4()
{
  v1 = sub_22B9349C8(&qword_27D8D5B48, &qword_22BA1AAA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_22B93036C()
{
  MEMORY[0x23189AEA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B9303A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B9303DC()
{
  v1 = sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B930474()
{
  v1 = sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B930548()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B930590()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B9305C8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22B930698()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22B9306E0()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22B930728()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B930768()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B9307A8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B9307E8()
{
  v1 = sub_22B9349C8(&qword_27D8D5B90, &unk_22BA1AA50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22B9308A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B9308F0()
{
  v1 = *(v0 + 24);

  sub_22B936C4C((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22B930998()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B9309DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B930A1C()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[12];

  v6 = v0[14];

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_22B930A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22B930B54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B930C20(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B9313F0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (objc_opt_respondsToSelector())
  {
    v13 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v9, v10, v11, v12);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v14, &unk_283F5B520, @"FeatureCode", v15);
    v38[0] = v7;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v38, 1, v17);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v19, v18, @"TaskName", v20);

    v25 = objc_msgSend_allObjects(v8, v21, v22, v23, v24);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v26, v25, @"InvolvedProcesses", v27);

    v32 = objc_msgSend_sharedScheduler(MEMORY[0x277CF0810], v28, v29, v30, v31);
    v35 = objc_msgSend_taskStartedWithParameters_error_(v32, v33, v13, a5, v34);
  }

  else
  {
    v35 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

uint64_t sub_22B931548(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (objc_opt_respondsToSelector())
  {
    v13 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v9, v10, v11, v12);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v14, &unk_283F5B520, @"FeatureCode", v15);
    v39[0] = v7;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v39, 1, v17);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v19, v18, @"TaskName", v20);

    v25 = objc_msgSend_allObjects(v8, v21, v22, v23, v24);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v26, v25, @"InvolvedProcesses", v27);

    v32 = objc_msgSend_sharedScheduler(MEMORY[0x277CF0810], v28, v29, v30, v31);
    v35 = objc_msgSend_taskStoppedWithParameters_error_(v32, v33, v13, a5, v34);

    objc_msgSend_reportFeatureCheckpoint_forFeature_error_(MEMORY[0x277CF07F0], v36, 30, 500, a5);
  }

  else
  {
    v35 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v35;
}

__n128 initializeBufferWithCopyOfBuffer for LocalCounts(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LocalCounts(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LocalCounts(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_22B9317B0()
{
  sub_22BA10D3C();
  MEMORY[0x23189A3B0](0);
  return sub_22BA10D6C();
}

uint64_t sub_22B93181C()
{
  sub_22BA10D3C();
  MEMORY[0x23189A3B0](0);
  return sub_22BA10D6C();
}

uint64_t sub_22B931880()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA10D5C();
  return sub_22BA10D6C();
}

uint64_t sub_22B931908()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA10D5C();
  return sub_22BA10D6C();
}

unint64_t sub_22B931954(char a1)
{
  result = 1701669236;
  switch(a1)
  {
    case 1:
      result = 0x6461655274;
      break;
    case 2:
      result = 0x726576696C654474;
      break;
    case 3:
      result = 0x646579616C5074;
      break;
    case 4:
      result = 0x7367616C66;
      break;
    case 5:
      result = 0x65646F4365;
      break;
    case 6:
      result = 0x7463656A627573;
      break;
    case 7:
      result = 0x7265646E6573;
      break;
    case 8:
      result = 0x6469754772;
      break;
    case 9:
      result = 0x7453657269707865;
      break;
    case 10:
      result = 1682531172;
      break;
    case 11:
      result = 4475202;
      break;
    case 12:
      result = 0x6174616470;
      break;
    case 13:
      result = 1684632421;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0x444974616863;
      break;
    default:
      return result;
  }

  return result;
}

unsigned __int8 *sub_22B931AC4@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_22B931AE4(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t sub_22B931AFC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22B931954(*a1);
  v5 = v4;
  if (v3 == sub_22B931954(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BA10C6C();
  }

  return v8 & 1;
}

uint64_t sub_22B931B84()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22B931954(v1);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B931BE8()
{
  sub_22B931954(*v0);
  sub_22BA1008C();
}

uint64_t sub_22B931C3C()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22B931954(v1);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B931C9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22B93637C();
  *a2 = result;
  return result;
}

unint64_t sub_22B931CCC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22B931954(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22B931D14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22B93637C();
  *a1 = result;
  return result;
}

uint64_t sub_22B931D54(uint64_t a1)
{
  v2 = sub_22B935AE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B931D90(uint64_t a1)
{
  v2 = sub_22B935AE4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22B931DCC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v216 = a2;
  v219 = sub_22B9349C8(&qword_27D8D4B80, &qword_22BA12C30);
  v218 = *(v219 - 8);
  v3 = *(v218 + 64);
  MEMORY[0x28223BE20](v219, v4);
  v217 = &v208 - v5;
  v228 = sub_22BA0FD8C();
  v223 = *(v228 - 8);
  v6 = v223[8];
  v8 = MEMORY[0x28223BE20](v228, v7);
  v214 = &v208 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v215 = &v208 - v11;
  v213 = sub_22BA0F9DC();
  v212 = *(v213 - 1);
  v12 = *(v212 + 64);
  MEMORY[0x28223BE20](v213, v13);
  v211 = &v208 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22B9349C8(&qword_27D8D4B88, &qword_22BA12C38);
  v225 = *(v15 - 8);
  v226 = v15;
  v16 = *(v225 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v227 = &v208 - v18;
  v19 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v220 = &v208 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v221 = &v208 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v222 = &v208 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v224 = &v208 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v208 - v35;
  MEMORY[0x28223BE20](v34, v37);
  v39 = &v208 - v38;
  v40 = sub_22B9349C8(&qword_27D8D4B90, &qword_22BA12C40);
  v229 = *(v40 - 8);
  v41 = *(v229 + 64);
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v208 - v43;
  v45 = type metadata accessor for MessageRecord();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45, v47);
  v49 = (&v208 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = a1[3];
  v50 = a1[4];
  v231 = a1;
  sub_22B9358B4(a1, v51);
  sub_22B9358F8();
  v52 = v230;
  sub_22BA10D8C();
  if (v52)
  {
    sub_22B936C4C(v231);
    return;
  }

  v230 = v45;
  v53 = v49;
  LOBYTE(v232[0]) = 0;
  v54 = v49;
  *v49 = sub_22BA10ACC();
  v49[1] = v55;
  LOBYTE(v232[0]) = 1;
  v49[2] = sub_22BA10ACC();
  v49[3] = v56;
  LOBYTE(v232[0]) = 2;
  v57 = sub_22BA10ACC();
  v58 = v230;
  v53[4] = v57;
  v53[5] = v59;
  LOBYTE(v232[0]) = 3;
  v53[6] = sub_22BA10ACC();
  v53[7] = v60;
  LOBYTE(v232[0]) = 4;
  v53[8] = sub_22BA10ACC();
  v53[9] = v61;
  LOBYTE(v232[0]) = 5;
  v62 = sub_22BA10ACC();
  v210 = 0;
  v53[10] = v62;
  v53[11] = v63;
  LOBYTE(v232[0]) = 6;
  sub_22B934EFC(&unk_281416C00, MEMORY[0x277CC9578]);
  v64 = v210;
  sub_22BA10AFC();
  v210 = v64;
  if (v64)
  {
    (*(v229 + 8))(v44, v40);
    v65 = 63;
LABEL_11:
    v70 = 1;
    goto LABEL_12;
  }

  sub_22B935A74(v39, v53 + v58[10]);
  LOBYTE(v232[0]) = 7;
  v66 = v210;
  sub_22BA10AFC();
  v210 = v66;
  if (v66)
  {
    (*(v229 + 8))(v44, v40);
    v65 = 127;
    goto LABEL_11;
  }

  sub_22B935A74(v36, v53 + v58[11]);
  LOBYTE(v232[0]) = 8;
  v67 = v210;
  v68 = sub_22BA10ACC();
  v210 = v67;
  if (v67)
  {
    (*(v229 + 8))(v44, v40);
    v65 = 255;
    goto LABEL_11;
  }

  v86 = v44;
  v209 = v40;
  v87 = (v53 + v58[12]);
  *v87 = v68;
  v87[1] = v69;
  v88 = v231[4];
  sub_22B9358B4(v231, v231[3]);
  sub_22B935AE4();
  v89 = v210;
  sub_22BA10D8C();
  v210 = v89;
  if (!v89)
  {
    LOBYTE(v232[0]) = 0;
    v90 = sub_22BA10B0C();
    v210 = 0;
    v92 = v91;
    v93 = 1;
    if ((v92 & 1) == 0)
    {
      v94 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
      if (!v94)
      {
        __break(1u);
LABEL_118:
        if (v95)
        {
          v181 = v53 + v230[31];
          sub_22BA0FD6C();
        }

        else
        {
          v182 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
          if (!v182)
          {
            __break(1u);
            return;
          }

          v183 = v182;
          v184 = v214;
          sub_22BA0FD5C();

          v185 = v223[4];
          v186 = v215;
          v187 = v184;
          v188 = v228;
          v185(v215, v187, v228);
          v181 = v53 + v230[31];
          v185(v181, v186, v188);
        }

        v88(v181, 0, 1, v228);
        v189 = v231[4];
        sub_22B9358B4(v231, v231[3]);
        sub_22B93641C();
        v190 = v210;
        sub_22BA10D8C();
        v210 = v190;
        if (v190)
        {
          v65 = 263486975;
          goto LABEL_108;
        }

LABEL_125:
        LOBYTE(v232[0]) = 0;
        v191 = v210;
        v109 = sub_22BA10ACC();
        v210 = v191;
        if (v191)
        {
          v65 = 263486975;
LABEL_138:
          (*(v218 + 8))(v217, v219);
          goto LABEL_108;
        }

        goto LABEL_128;
      }

      v96 = v94;
      sub_22BA0FD5C();

      v93 = 0;
    }

    v97 = v224;
    v88 = v223[7];
    v88(v224, v93, 1, v228);
    sub_22B935A74(v97, v53 + v230[14]);
    LOBYTE(v232[0]) = 1;
    v98 = v210;
    v99 = sub_22BA10B0C();
    v210 = v98;
    if (v98)
    {
      (*(v225 + 8))(v227, v226);
      (*(v229 + 8))(v44, v209);
      v65 = 1535;
      goto LABEL_54;
    }

    if (v100)
    {
      v101 = 1;
    }

    else
    {
      v102 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
      if (!v102)
      {
        __break(1u);
        goto LABEL_125;
      }

      v103 = v102;
      sub_22BA0FD5C();

      v101 = 0;
    }

    v104 = v222;
    v88(v222, v101, 1, v228);
    sub_22B935A74(v104, v53 + v230[15]);
    LOBYTE(v232[0]) = 2;
    v105 = v210;
    v106 = sub_22BA10B0C();
    v210 = v105;
    if (v105)
    {
      (*(v225 + 8))(v227, v226);
      (*(v229 + 8))(v44, v209);
      v65 = 3583;
      goto LABEL_54;
    }

    if (v107)
    {
      v108 = 1;
    }

    else
    {
      v109 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
      if (!v109)
      {
        __break(1u);
LABEL_128:
        v192 = (v53 + v230[32]);
        *v192 = v109;
        v192[1] = v110;
        if (v110 && (v109 == 0x4D65707954627553 && v110 == 0xEA00000000006773 || (sub_22BA10C6C() & 1) != 0))
        {
          LOBYTE(v193) = 0;
          *(v53 + v230[33]) = 0;
LABEL_133:
          v194 = v231;
          *(v53 + v230[13]) = v193;
          sub_22B935B38(v194, v232);
          v195 = v210;
          sub_22B9B2FD4(v232);
          v210 = v195;
          if (!v195)
          {
            v200 = (v53 + v230[34]);
            *v200 = v196;
            v200[1] = v197;
            v200[2] = v198;
            v200[3] = v199;
            LOBYTE(v232[0]) = 15;
            v201 = v210;
            v202 = sub_22BA10ACC();
            v210 = v201;
            if (!v201)
            {
              v205 = v202;
              v206 = v203;
              (*(v218 + 8))(v217, v219);
              (*(v225 + 8))(v227, v226);
              (*(v229 + 8))(v86, v209);
              v207 = (v53 + v230[35]);
              *v207 = v205;
              v207[1] = v206;
              sub_22B936918(v53, v216);
              sub_22B936C4C(v231);
              sub_22B93697C(v53);
              return;
            }

            (*(v218 + 8))(v217, v219);
            (*(v225 + 8))(v227, v226);
            (*(v229 + 8))(v86, v209);
            v70 = 0;
            v65 = 1605664255;
            v54 = v53;
            goto LABEL_4;
          }

          goto LABEL_137;
        }

        v235 = 1;
        sub_22B936470();
        v204 = v210;
        sub_22BA10B3C();
        v210 = v204;
        if (v204)
        {
LABEL_137:
          v65 = 531922431;
          goto LABEL_138;
        }

LABEL_140:
        v193 = LOBYTE(v232[0]);
        *(v53 + v230[33]) = v232[0];
        if (v193 >= 2)
        {
          v65 = 531922431;
          sub_22B9364C4();
          v210 = swift_allocError();
          swift_willThrow();
          goto LABEL_138;
        }

        goto LABEL_133;
      }

      v111 = v109;
      sub_22BA0FD5C();

      v108 = 0;
    }

    v112 = v221;
    v88(v221, v108, 1, v228);
    sub_22B935A74(v112, v53 + v230[16]);
    LOBYTE(v232[0]) = 3;
    v113 = v210;
    v114 = sub_22BA10B0C();
    v210 = v113;
    if (v113)
    {
      (*(v225 + 8))(v227, v226);
      (*(v229 + 8))(v44, v209);
      v65 = 7679;
      goto LABEL_54;
    }

    if (v115)
    {
      v116 = 1;
    }

    else
    {
      v117 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
      if (!v117)
      {
        __break(1u);
        goto LABEL_140;
      }

      v118 = v117;
      sub_22BA0FD5C();

      v116 = 0;
    }

    v119 = v220;
    v88(v220, v116, 1, v228);
    sub_22B935A74(v119, v53 + v230[17]);
    sub_22B935B38(v231, v232);
    v120 = v210;
    sub_22B99F1C0(v232, v233);
    v210 = v120;
    if (v120)
    {
      (*(v225 + 8))(v227, v226);
      (*(v229 + 8))(v44, v209);
      v65 = 15871;
      goto LABEL_54;
    }

    v121 = v234;
    v122 = v53 + v230[18];
    v123 = v233[1];
    *v122 = v233[0];
    *(v122 + 1) = v123;
    *(v122 + 4) = v121;
    LOBYTE(v232[0]) = 4;
    v124 = v210;
    v125 = sub_22BA10AEC();
    v210 = v124;
    if (v124)
    {
      goto LABEL_81;
    }

    v127 = v53 + v230[19];
    *v127 = v125;
    v127[8] = v126 & 1;
    LOBYTE(v232[0]) = 5;
    v128 = v210;
    v129 = sub_22BA10AEC();
    v210 = v128;
    if (v128)
    {
      goto LABEL_81;
    }

    v131 = v230;
    v132 = v53 + v230[20];
    *v132 = v129;
    v132[8] = v130 & 1;
    v133 = v53 + v131[21];
    *v133 = 0;
    v133[8] = 1;
    LOBYTE(v232[0]) = 6;
    v134 = v210;
    v224 = sub_22BA10ACC();
    v210 = v134;
    if (v134)
    {
LABEL_81:
      (*(v225 + 8))(v227, v226);
      (*(v229 + 8))(v44, v209);
      v65 = 32255;
      goto LABEL_54;
    }

    v136 = v135;
    if (v135)
    {
      v232[0] = v224;
      v232[1] = v135;
      v137 = v211;
      sub_22BA0F9CC();
      sub_22B936ACC();
      v222 = sub_22BA1077C();
      v139 = v138;
      (*(v212 + 8))(v137, v213);

      v140 = HIBYTE(v139) & 0xF;
      if ((v139 & 0x2000000000000000) == 0)
      {
        v140 = v222 & 0xFFFFFFFFFFFFLL;
      }

      if (v140)
      {
        v141 = (v53 + v230[22]);
        *v141 = v224;
        v141[1] = v136;
LABEL_89:
        v143 = *(v122 + 1);
        v144 = *(v122 + 4);
        v145 = v143 == 1 || v144 == 0;
        v146 = v145;
        if (v145)
        {
          v152 = 0;
        }

        else
        {
          v147 = *(v122 + 2);
          v224 = *(v122 + 3);
          v222 = v147;
          v221 = *v122;
          v220 = "deletedFromiCloud";
          sub_22B9369D8(v221, v143, v147, v224, v144);
          v213 = v144;
          v148 = [v213 attributesAtIndex:0 effectiveRange:0];
          type metadata accessor for Key(0);
          sub_22B934EFC(&unk_27D8D4BA0, type metadata accessor for Key);
          v149 = sub_22BA0FF6C();

          v150 = v210;
          v151 = sub_22B93674C(v149, 0xD00000000000001ALL, v220 | 0x8000000000000000);
          v210 = v150;

          sub_22B935A10(v221, v143, v222, v224, v144);

          v152 = v151[2];
        }

        v153 = v53 + v230[23];
        *v153 = v152;
        v153[8] = v146;
        LOBYTE(v232[0]) = 7;
        v154 = v210;
        v155 = sub_22BA10ACC();
        v210 = v154;
        if (v154)
        {
          (*(v225 + 8))(v227, v226);
          (*(v229 + 8))(v86, v209);
          v65 = 294399;
          goto LABEL_54;
        }

        v157 = (v53 + v230[24]);
        *v157 = v155;
        v157[1] = v156;
        LOBYTE(v232[0]) = 8;
        v158 = v210;
        v159 = sub_22BA10ACC();
        v210 = v158;
        if (v158)
        {
          (*(v225 + 8))(v227, v226);
          (*(v229 + 8))(v86, v209);
          v65 = 1342975;
          goto LABEL_54;
        }

        v161 = (v53 + v230[25]);
        *v161 = v159;
        v161[1] = v160;
        LOBYTE(v232[0]) = 9;
        v162 = v210;
        v163 = sub_22BA10AEC();
        v210 = v162;
        if (v162)
        {
          goto LABEL_107;
        }

        v165 = v53 + v230[26];
        v166 = (v164 & 1) != 0 ? 0 : v163;
        *v165 = v166;
        v165[8] = 0;
        LOBYTE(v232[0]) = 10;
        v167 = v210;
        v168 = sub_22BA10ACC();
        v210 = v167;
        if (v167)
        {
LABEL_107:
          v65 = 3440127;
LABEL_108:
          (*(v225 + 8))(v227, v226);
          (*(v229 + 8))(v86, v209);
          goto LABEL_54;
        }

        v170 = (v53 + v230[27]);
        *v170 = v168;
        v170[1] = v169;
        LOBYTE(v232[0]) = 11;
        v171 = v210;
        v172 = sub_22BA10ACC();
        v210 = v171;
        if (v171)
        {
          (*(v225 + 8))(v227, v226);
          (*(v229 + 8))(v86, v209);
          v65 = 11828735;
          goto LABEL_54;
        }

        v174 = (v53 + v230[28]);
        *v174 = v172;
        v174[1] = v173;
        v235 = 12;
        sub_22B9363C8();
        v175 = v210;
        sub_22BA10AFC();
        v210 = v175;
        if (v175)
        {
          (*(v225 + 8))(v227, v226);
          (*(v229 + 8))(v86, v209);
          v65 = 28605951;
          goto LABEL_54;
        }

        *(v53 + v230[29]) = *v232;
        LOBYTE(v232[0]) = 13;
        v176 = v210;
        v177 = sub_22BA10ACC();
        v210 = v176;
        if (v176)
        {
          (*(v225 + 8))(v227, v226);
          (*(v229 + 8))(v86, v209);
          v65 = 62160383;
          goto LABEL_54;
        }

        v179 = (v53 + v230[30]);
        *v179 = v177;
        v179[1] = v178;
        LOBYTE(v232[0]) = 14;
        v180 = v210;
        v94 = sub_22BA10AEC();
        v210 = v180;
        if (v180)
        {
          (*(v225 + 8))(v227, v226);
          (*(v229 + 8))(v86, v209);
          v65 = 129269247;
          goto LABEL_54;
        }

        goto LABEL_118;
      }
    }

    v142 = (v53 + v230[22]);
    *v142 = 0;
    v142[1] = 0;
    goto LABEL_89;
  }

  (*(v229 + 8))(v44, v209);
  v65 = 511;
LABEL_54:
  v70 = 1;
  v54 = v53;
LABEL_4:
  v58 = v230;
LABEL_12:
  sub_22B936C4C(v231);
  v71 = v54[1];

  v72 = v54[3];

  v73 = v54[5];

  v74 = v54[7];

  v75 = v54[9];

  v76 = v54[11];

  if ((v65 & 0x40) == 0)
  {
    if ((v65 & 0x80) != 0)
    {
      goto LABEL_33;
    }

LABEL_14:
    if ((v65 & 0x100) != 0)
    {
      goto LABEL_34;
    }

LABEL_15:
    if ((v65 & 0x400) != 0)
    {
      goto LABEL_35;
    }

LABEL_16:
    if ((v65 & 0x800) != 0)
    {
      goto LABEL_36;
    }

LABEL_17:
    if ((v65 & 0x1000) != 0)
    {
      goto LABEL_37;
    }

LABEL_18:
    if ((v65 & 0x2000) != 0)
    {
      goto LABEL_38;
    }

LABEL_19:
    if ((v65 & 0x4000) != 0)
    {
      goto LABEL_39;
    }

LABEL_20:
    if ((v65 & 0x40000) != 0)
    {
      goto LABEL_40;
    }

LABEL_21:
    if ((v65 & 0x100000) != 0)
    {
      goto LABEL_41;
    }

LABEL_22:
    if ((v65 & 0x200000) != 0)
    {
      goto LABEL_42;
    }

LABEL_23:
    if ((v65 & 0x800000) != 0)
    {
      goto LABEL_43;
    }

LABEL_24:
    if ((v65 & 0x1000000) != 0)
    {
      goto LABEL_44;
    }

LABEL_25:
    if ((v65 & 0x2000000) != 0)
    {
      goto LABEL_45;
    }

LABEL_26:
    if ((v65 & 0x4000000) != 0)
    {
      goto LABEL_46;
    }

LABEL_27:
    if ((v65 & 0x8000000) != 0)
    {
      goto LABEL_47;
    }

LABEL_28:
    if ((v65 & 0x10000000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_29;
  }

  sub_22B936BEC(v54 + v58[10], &unk_27D8D4A90, &qword_22BA126A0);
  if ((v65 & 0x80) == 0)
  {
    goto LABEL_14;
  }

LABEL_33:
  sub_22B936BEC(v54 + v58[11], &unk_27D8D4A90, &qword_22BA126A0);
  if ((v65 & 0x100) == 0)
  {
    goto LABEL_15;
  }

LABEL_34:
  v77 = *(v54 + v58[12] + 8);

  if ((v65 & 0x400) == 0)
  {
    goto LABEL_16;
  }

LABEL_35:
  sub_22B936BEC(v54 + v58[14], &unk_27D8D4A90, &qword_22BA126A0);
  if ((v65 & 0x800) == 0)
  {
    goto LABEL_17;
  }

LABEL_36:
  sub_22B936BEC(v54 + v58[15], &unk_27D8D4A90, &qword_22BA126A0);
  if ((v65 & 0x1000) == 0)
  {
    goto LABEL_18;
  }

LABEL_37:
  sub_22B936BEC(v54 + v58[16], &unk_27D8D4A90, &qword_22BA126A0);
  if ((v65 & 0x2000) == 0)
  {
    goto LABEL_19;
  }

LABEL_38:
  sub_22B936BEC(v54 + v58[17], &unk_27D8D4A90, &qword_22BA126A0);
  if ((v65 & 0x4000) == 0)
  {
    goto LABEL_20;
  }

LABEL_39:
  v78 = v54 + v58[18];
  sub_22B935A10(*v78, *(v78 + 1), *(v78 + 2), *(v78 + 3), *(v78 + 4));
  if ((v65 & 0x40000) == 0)
  {
    goto LABEL_21;
  }

LABEL_40:
  v79 = *(v54 + v58[22] + 8);

  if ((v65 & 0x100000) == 0)
  {
    goto LABEL_22;
  }

LABEL_41:
  v80 = *(v54 + v58[24] + 8);

  if ((v65 & 0x200000) == 0)
  {
    goto LABEL_23;
  }

LABEL_42:
  v81 = *(v54 + v58[25] + 8);

  if ((v65 & 0x800000) == 0)
  {
    goto LABEL_24;
  }

LABEL_43:
  v82 = *(v54 + v58[27] + 8);

  if ((v65 & 0x1000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_44:
  v83 = *(v54 + v58[28] + 8);

  if ((v65 & 0x2000000) == 0)
  {
    goto LABEL_26;
  }

LABEL_45:
  sub_22B9359A8(*(v54 + v58[29]), *(v54 + v58[29] + 8));
  if ((v65 & 0x4000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_46:
  v84 = *(v54 + v58[30] + 8);

  if ((v65 & 0x8000000) == 0)
  {
    goto LABEL_28;
  }

LABEL_47:
  sub_22B936BEC(v54 + v58[31], &unk_27D8D4A90, &qword_22BA126A0);
  if ((v65 & 0x10000000) != 0)
  {
LABEL_48:
    v85 = *(v54 + v58[32] + 8);

    if (v70)
    {
      return;
    }

    goto LABEL_49;
  }

LABEL_29:
  if (v70)
  {
    return;
  }

LABEL_49:
  sub_22B93594C(*(v54 + v58[34]), *(v54 + v58[34] + 8), *(v54 + v58[34] + 16), *(v54 + v58[34] + 24));
}

void *sub_22B9337B8()
{
  v1 = v0;
  v2 = type metadata accessor for MessageRecord();
  v3 = *(*(v2 - 1) + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v93 - v10;
  if (*(v0 + *(v9 + 52)))
  {
    sub_22B9E199C(v0);
  }

  else
  {
    v12 = sub_22B967888(v0);
  }

  v13 = v12;
  v14 = *(v0 + 24);
  if (v14)
  {
    v15 = v1[2];
    v16 = v12;
    v14 = sub_22BA0FFCC();
  }

  else
  {
    v17 = v12;
  }

  [v13 setService_];

  v18 = (v1 + v2[34]);
  v19 = v18[3];
  v20 = *v18 == 1 || v19 == 0;
  v21 = v20;
  if (v20)
  {
    goto LABEL_44;
  }

  v22 = v19;
  if (![v22 hasActualService])
  {
    goto LABEL_43;
  }

  LODWORD(v96) = v21;
  v23 = [v13 service];
  if (v23)
  {
    v24 = v23;
    v25 = sub_22BA0FFFC();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v97 = v7;
  v28 = [v22 actualService];
  if (v28)
  {
    v29 = v28;
    v95 = v25;
    v30 = sub_22BA0FFFC();
    v32 = v31;

    if (v27)
    {
      if (v32)
      {
        if (v95 == v30 && v27 == v32)
        {

LABEL_36:
          v7 = v97;
          LOBYTE(v21) = v96;
          goto LABEL_44;
        }

        v43 = sub_22BA10C6C();

        if (v43)
        {
LABEL_35:

          goto LABEL_36;
        }

        goto LABEL_28;
      }
    }

    else if (!v32)
    {
      goto LABEL_35;
    }
  }

  else if (!v27)
  {
    goto LABEL_35;
  }

LABEL_28:
  v7 = v97;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v33 = sub_22BA0FEFC();
  sub_22B936CA8(v33, qword_28141AD40);
  sub_22B936918(v1, v11);
  v34 = v22;
  v35 = sub_22BA0FEDC();
  v36 = sub_22BA1046C();

  if (os_log_type_enabled(v35, v36))
  {
    v94 = v36;
    v95 = v35;
    v37 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v98 = v93;
    *v37 = 136315394;
    v38 = [v34 actualService];
    if (v38)
    {
      v39 = v38;
      v40 = sub_22BA0FFFC();
      v42 = v41;
    }

    else
    {
      v42 = 0xE300000000000000;
      v40 = 7104878;
    }

    v44 = sub_22B99153C(v40, v42, &v98);

    *(v37 + 4) = v44;
    *(v37 + 12) = 2080;
    if (*(v11 + 3))
    {
      v45 = *(v11 + 2);
      v46 = *(v11 + 3);
    }

    else
    {
      v46 = 0xE300000000000000;
      v45 = 7104878;
    }

    sub_22B93697C(v11);
    v47 = sub_22B99153C(v45, v46, &v98);

    *(v37 + 14) = v47;
    v48 = v95;
    _os_log_impl(&dword_22B92A000, v95, v94, "using proto4 service %s over %s", v37, 0x16u);
    v49 = v93;
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v49, -1, -1);
    MEMORY[0x23189ADD0](v37, -1, -1);

    v7 = v97;
  }

  else
  {

    sub_22B93697C(v11);
  }

  LOBYTE(v21) = v96;
  v22 = [v34 actualService];
  [v13 setService_];

LABEL_43:
LABEL_44:
  v50 = (v1 + v2[27]);
  if (v50[1])
  {
    v51 = *v50;
    v52 = sub_22BA0FFCC();
  }

  else
  {
    v52 = 0;
  }

  [v13 setDestinationCallerID_];

  v53 = (v1 + v2[25]);
  if (v53[1])
  {
    v54 = *v53;
    v55 = sub_22BA0FFCC();
  }

  else
  {
    v55 = 0;
  }

  [v13 setReplyToGUID_];

  v56 = (v1 + v2[35]);
  if (v56[1])
  {
    v57 = *v56;
    v58 = sub_22BA0FFCC();
  }

  else
  {
    v58 = 0;
  }

  [v13 setCloudKitChatID_];

  if ((v21 & 1) == 0)
  {
    v59 = v19;
    if ([v59 hasActualParentChatId])
    {
      v60 = [v13 cloudKitChatID];
      if (v60)
      {
        v61 = v60;
        v62 = sub_22BA0FFFC();
        v64 = v63;
      }

      else
      {
        v62 = 0;
        v64 = 0;
      }

      v65 = [v59 actualParentChatId];
      if (v65)
      {
        v66 = v65;
        v67 = sub_22BA0FFFC();
        v69 = v68;

        if (v64)
        {
          if (v69)
          {
            if (v62 == v67 && v64 == v69)
            {

              goto LABEL_83;
            }

            v80 = sub_22BA10C6C();

            if (v80)
            {
              goto LABEL_82;
            }

            goto LABEL_68;
          }

LABEL_67:

LABEL_68:
          if (qword_281414D30 != -1)
          {
            swift_once();
          }

          v70 = sub_22BA0FEFC();
          sub_22B936CA8(v70, qword_28141AD40);
          sub_22B936918(v1, v7);
          v71 = v59;
          v72 = sub_22BA0FEDC();
          v73 = sub_22BA1046C();

          if (os_log_type_enabled(v72, v73))
          {
            v97 = v7;
            v74 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            v98 = v96;
            *v74 = 136315394;
            v75 = [v71 actualParentChatId];
            if (v75)
            {
              v76 = v75;
              v77 = sub_22BA0FFFC();
              v79 = v78;
            }

            else
            {
              v79 = 0xE300000000000000;
              v77 = 7104878;
            }

            v81 = sub_22B99153C(v77, v79, &v98);

            *(v74 + 4) = v81;
            *(v74 + 12) = 2080;
            v82 = v97;
            v83 = &v97[v2[35]];
            if (v83[1])
            {
              v84 = *v83;
              v85 = v83[1];
            }

            else
            {
              v85 = 0xE300000000000000;
              v84 = 7104878;
            }

            sub_22B93697C(v82);
            v86 = sub_22B99153C(v84, v85, &v98);

            *(v74 + 14) = v86;
            _os_log_impl(&dword_22B92A000, v72, v73, "using proto4 parentChatID %s over %s", v74, 0x16u);
            v87 = v96;
            swift_arrayDestroy();
            MEMORY[0x23189ADD0](v87, -1, -1);
            MEMORY[0x23189ADD0](v74, -1, -1);
          }

          else
          {

            sub_22B93697C(v7);
          }

          v59 = [v71 actualParentChatId];
          [v13 setCloudKitChatID_];

          goto LABEL_82;
        }

        if (v69)
        {
          goto LABEL_67;
        }
      }

      else if (v64)
      {
        goto LABEL_67;
      }
    }

LABEL_82:
  }

LABEL_83:
  if (v1[7])
  {
    v88 = v1[6];
    v89 = sub_22BA0FFCC();
  }

  else
  {
    v89 = 0;
  }

  [v13 setCloudKitRecordID_];

  if (v1[5])
  {
    v90 = v1[4];
    v91 = sub_22BA0FFCC();
  }

  else
  {
    v91 = 0;
  }

  [v13 setCloudKitRecordChangeTag_];

  [v13 setCloudKitSyncState_];
  [v13 setCloudKitServerChangeTokenBlob_];
  return v13;
}

uint64_t sub_22B9340B0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_22B9340E0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_22B934110()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_22B934158(void *a1)
{
  v2 = sub_22B9349C8(&qword_27D8D4BC8, qword_22BA12C60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B935AE4();
  sub_22BA10D9C();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_22B93426C()
{
  v1 = *v0;
  sub_22BA10D3C();
  MEMORY[0x23189A3B0](v1);
  return sub_22BA10D6C();
}

uint64_t sub_22B9342E0()
{
  v1 = *v0;
  sub_22BA10D3C();
  MEMORY[0x23189A3B0](v1);
  return sub_22BA10D6C();
}

uint64_t sub_22B934324(uint64_t a1, id *a2)
{
  result = sub_22BA0FFDC();
  *a2 = 0;
  return result;
}

uint64_t sub_22B93439C(uint64_t a1, id *a2)
{
  v3 = sub_22BA0FFEC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22B93441C@<X0>(uint64_t *a1@<X8>)
{
  sub_22BA0FFFC();
  v2 = sub_22BA0FFCC();

  *a1 = v2;
  return result;
}

uint64_t sub_22B934470(uint64_t a1)
{
  v2 = sub_22B934EFC(&unk_281414CE8, type metadata accessor for CKError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_22B9344DC(uint64_t a1)
{
  v2 = sub_22B934EFC(&unk_281414CE8, type metadata accessor for CKError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_22B934548(void *a1, uint64_t a2)
{
  v4 = sub_22B934EFC(&unk_281414CE8, type metadata accessor for CKError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_22B9345D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B934EFC(&unk_281414CE8, type metadata accessor for CKError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_22B934664(uint64_t a1)
{
  v2 = sub_22B934EFC(&qword_281414CA0, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_22B9346D0(uint64_t a1)
{
  v2 = sub_22B934EFC(&qword_281414CA0, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_22B93473C(void *a1, uint64_t a2)
{
  v4 = sub_22B934EFC(&qword_281414CA0, type metadata accessor for CKUnderlyingError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_22B9347CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B934EFC(&qword_281414CA0, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_22B934848()
{
  v2 = *v0;
  sub_22BA10D3C();
  sub_22BA0FF8C();
  return sub_22BA10D6C();
}

uint64_t sub_22B9348A8(uint64_t a1)
{
  v2 = sub_22B934EFC(&qword_27D8D4C38, type metadata accessor for FileProtectionType);
  v3 = sub_22B934EFC(&unk_27D8D4C40, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22B9349C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for MessageRecord()
{
  result = qword_281415D30;
  if (!qword_281415D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B934A70()
{
  sub_22B936F90(319, &qword_281414C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22B934C68();
    if (v1 <= 0x3F)
    {
      sub_22B936F90(319, &qword_281416000, &type metadata for MessageBody, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22B936F90(319, &qword_281414BF8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22B936F90(319, &unk_281416C20, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_22B936F90(319, &qword_281415E38, &type metadata for MessageProto, MEMORY[0x277D83D88]);
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

void sub_22B934C68()
{
  if (!qword_281416BE8)
  {
    sub_22BA0FD8C();
    v0 = sub_22BA1074C();
    if (!v1)
    {
      atomic_store(v0, &qword_281416BE8);
    }
  }
}

uint64_t getEnumTagSinglePayload for MessageRecord.MessageType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MessageRecord.MessageType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22B934E24()
{
  result = qword_27D8D4B60;
  if (!qword_27D8D4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4B60);
  }

  return result;
}

uint64_t sub_22B934E78(uint64_t a1)
{
  *(a1 + 8) = sub_22B934EFC(&qword_281415D48, type metadata accessor for MessageRecord);
  result = sub_22B934EFC(&qword_281415D50, type metadata accessor for MessageRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22B934EFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B934F44(uint64_t a1)
{
  v2 = sub_22B934EFC(&unk_27D8D4BA0, type metadata accessor for Key);
  v3 = sub_22B934EFC(&qword_27D8D4C58, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22B935000(uint64_t a1)
{
  v2 = sub_22B934EFC(&qword_281414CF8, type metadata accessor for CKError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22B93506C(uint64_t a1)
{
  v2 = sub_22B934EFC(&qword_281414CF8, type metadata accessor for CKError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22B9350D8(uint64_t a1)
{
  v2 = sub_22B934EFC(&unk_281414CE8, type metadata accessor for CKError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_22B935144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B934EFC(&unk_281414CE8, type metadata accessor for CKError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_22B935210(uint64_t a1)
{
  v2 = sub_22B934EFC(&qword_281414CA8, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22B93527C(uint64_t a1)
{
  v2 = sub_22B934EFC(&qword_281414CA8, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22B9352E8(uint64_t a1)
{
  v2 = sub_22B934EFC(&qword_281414CA0, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_22B935354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B934EFC(&qword_281414CA0, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

unint64_t sub_22B9355B0()
{
  result = qword_281414D00;
  if (!qword_281414D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414D00);
  }

  return result;
}

void *sub_22B9358B4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_22B9358F8()
{
  result = qword_281415AC8[0];
  if (!qword_281415AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281415AC8);
  }

  return result;
}

void sub_22B93594C(void *a1, void *a2, void *a3, void *a4)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_22B9359A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22B9359BC(a1, a2);
  }

  return a1;
}

uint64_t sub_22B9359BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_22B935A10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a2 != 1)
  {

    sub_22B9359A8(a3, a4);
  }
}

uint64_t sub_22B935A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22B935AE4()
{
  result = qword_281415D68;
  if (!qword_281415D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415D68);
  }

  return result;
}

uint64_t sub_22B935B38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22B935B9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22BA0FFCC();

  *a2 = v5;
  return result;
}

uint64_t sub_22B935BE4(uint64_t a1)
{
  v2 = sub_22B934EFC(&qword_281414B28, type metadata accessor for FileAttributeKey);
  v3 = sub_22B934EFC(&qword_27D8D4C50, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22B935CA0()
{
  v1 = *v0;
  v2 = sub_22BA0FFFC();
  v3 = MEMORY[0x231899790](v2);

  return v3;
}

uint64_t sub_22B935CDC()
{
  v1 = *v0;
  sub_22BA0FFFC();
  sub_22BA1008C();
}

uint64_t sub_22B935D30()
{
  v1 = *v0;
  sub_22BA0FFFC();
  sub_22BA10D3C();
  sub_22BA1008C();
  v2 = sub_22BA10D6C();

  return v2;
}

uint64_t sub_22B935DA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22BA0FFFC();
  v6 = v5;
  if (v4 == sub_22BA0FFFC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22BA10C6C();
  }

  return v9 & 1;
}

unint64_t *sub_22B935E2C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22B936518(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

uint64_t sub_22B935ED0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_22B9349C8(&qword_27D8D4BB8, &unk_22BA12C50);
  result = sub_22BA10A8C();
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
  v12 = result + 64;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    sub_22B936B20(*(v4 + 56) + 32 * v16, v33);
    sub_22B936C98(v33, v32);
    v18 = *(v9 + 40);
    sub_22BA0FFFC();
    sub_22BA10D3C();
    v19 = v17;
    sub_22BA1008C();
    v20 = sub_22BA10D6C();

    v21 = -1 << *(v9 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v19;
    result = sub_22B936C98(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    v10 = v31;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v31 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22B936140(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_22B9349C8(&qword_27D8D4BC0, &qword_22BA18560);
  result = sub_22BA10A8C();
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
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v33 = *(v17 + 8 * v16);
    v21 = *(v9 + 40);
    sub_22BA10D3C();

    sub_22BA1008C();
    result = sub_22BA10D6C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22B93637C()
{
  v0 = sub_22BA10AAC();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_22B9363C8()
{
  result = qword_281416C30;
  if (!qword_281416C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416C30);
  }

  return result;
}

unint64_t sub_22B93641C()
{
  result = qword_2814161D8[0];
  if (!qword_2814161D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814161D8);
  }

  return result;
}

unint64_t sub_22B936470()
{
  result = qword_281414DE0;
  if (!qword_281414DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414DE0);
  }

  return result;
}

unint64_t sub_22B9364C4()
{
  result = qword_27D8D4B98;
  if (!qword_27D8D4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4B98);
  }

  return result;
}

void sub_22B936518(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v26 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = v13 | (v6 << 6);
    v17 = *(*(a3 + 48) + 8 * v16);
    v27 = v16;
    sub_22B936B20(*(a3 + 56) + 32 * v16, v33);
    v31 = v17;
    sub_22B936B20(v33, &v32);
    sub_22B936B7C(&v31, &v29);
    v18 = v29;
    v19 = sub_22BA0FFFC();
    v21 = v20;
    v22 = v17;

    if (v19 == a4 && v21 == v34)
    {

      sub_22B936BEC(&v31, &qword_27D8D4BB0, &qword_22BA12C48);
      sub_22B936C4C(v30);
      sub_22B936C4C(v33);

      goto LABEL_15;
    }

    v12 = sub_22BA10C6C();

    sub_22B936BEC(&v31, &qword_27D8D4BB0, &qword_22BA12C48);
    sub_22B936C4C(v30);
    sub_22B936C4C(v33);

    if (v12)
    {
LABEL_15:
      *(a1 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_18:
        sub_22B935ED0(a1, a2, v26, a3);
        return;
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_18;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t *sub_22B93674C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v17 = swift_slowAlloc();

      v14 = sub_22B935E2C(v17, v9, a1, a2, a3);
      MEMORY[0x23189ADD0](v17, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v11, v12);
  bzero(v18 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  sub_22B936518((v18 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);
  v14 = v13;

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t sub_22B936918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B93697C(uint64_t a1)
{
  v2 = type metadata accessor for MessageRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22B9369D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a2 != 1)
  {

    sub_22B936A3C(a3, a4);

    v8 = a5;
  }
}

uint64_t sub_22B936A3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22B936A50(a1, a2);
  }

  return a1;
}

uint64_t sub_22B936A50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_22B936ACC()
{
  result = qword_281414D08;
  if (!qword_281414D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414D08);
  }

  return result;
}

uint64_t sub_22B936B20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22B936B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D4BB0, &qword_22BA12C48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B936BEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22B9349C8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22B936C4C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

_OWORD *sub_22B936C98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22B936CA8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for MessageRecordError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MessageRecordError(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MessageRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_22B936F90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_22B936FE4()
{
  result = qword_27D8D4BE0;
  if (!qword_27D8D4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4BE0);
  }

  return result;
}

unint64_t sub_22B93703C()
{
  result = qword_27D8D4BE8;
  if (!qword_27D8D4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4BE8);
  }

  return result;
}

unint64_t sub_22B93731C()
{
  result = qword_281415D58;
  if (!qword_281415D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415D58);
  }

  return result;
}

unint64_t sub_22B937374()
{
  result = qword_281415D60;
  if (!qword_281415D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415D60);
  }

  return result;
}

uint64_t sub_22B937418()
{
  if (qword_281414B68 != -1)
  {
    swift_once();
  }

  result = sub_22B9374C0(9u, 0);
  if (v1)
  {
    v2 = sub_22BA0FFCC();
    v3 = IMBagIntValueWithDefault();

    result = v3;
  }

  qword_28141ADE0 = result;
  return result;
}

uint64_t sub_22B9374C0(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  sub_22B92DB4C(a1);
  v5 = sub_22BA0FFCC();

  v6 = [v3 objectForKey_];

  if (v6)
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
    sub_22B936C98(&v10, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_22B9349C8(&unk_27D8D5A30, qword_22BA13390);
  v7 = swift_dynamicCast();
  v8 = v10;
  if (!v7)
  {
    return a2;
  }

  return v8;
}

void *sub_22B9375B4(unsigned __int8 a1, void *a2)
{
  sub_22B92DB4C(a1);
  v4 = sub_22BA0FFCC();

  v5 = [v2 objectForKey_];

  if (v5)
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
    sub_22B936C98(&v8, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  sub_22B9349C8(&unk_27D8D5A30, qword_22BA13390);
  sub_22B937ED8();
  if (swift_dynamicCast())
  {
    return v8;
  }

  v6 = a2;
  return a2;
}

uint64_t sub_22B93769C(uint64_t a1)
{
  v3 = a1;
  v65 = *(a1 + 16);
  if (v65)
  {
    v4 = 0;
    v5 = 0;
    v67 = a1 + 32;
    v6 = MEMORY[0x277D84F98];
    v69 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_67;
      }

      v68 = v5;
      v7 = v67 + 32 * v5;
      v2 = *v7;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      if (*(v7 + 24) == 1)
      {
        v1 = v6;
        v10 = *(v7 + 8);
        v11 = *(v7 + 16);
        sub_22B937DFC(*v7);
        v12 = v9;

        v13 = [v2 recordName];
        sub_22BA0FFFC();

        v14 = sub_22BA1009C();

        v15 = v14 + 2;
        if (__OFADD__(v14, 2))
        {
          goto LABEL_70;
        }

        if (v14 >= 128)
        {
          while (1)
          {
            v16 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            v17 = v14 >> 14;
            v14 = v14 >> 7;
            ++v15;
            if (!v17)
            {
              v15 = v16;
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          swift_once();
LABEL_59:
          v62 = sub_22BA0FEFC();
          sub_22B936CA8(v62, qword_28141AD40);
          v57 = sub_22BA0FEDC();
          v58 = sub_22BA1044C();
          if (!os_log_type_enabled(v57, v58))
          {
            goto LABEL_62;
          }

          v59 = swift_slowAlloc();
          *v59 = 0;
          v60 = "Next record will exceed max bytes per batch";
LABEL_61:
          _os_log_impl(&dword_22B92A000, v57, v58, v60, v59, 2u);
          MEMORY[0x23189ADD0](v59, -1, -1);

          v63 = v2;
          goto LABEL_63;
        }

LABEL_10:
        v18 = [v2 zoneID];
        v19 = [v18 zoneName];

        sub_22BA0FFFC();
        v20 = sub_22BA1009C();

        v21 = v20 + 2;
        if (__OFADD__(v20, 2))
        {
          goto LABEL_71;
        }

        if (v20 >= 128)
        {
          v3 = a1;
          while (1)
          {
            v22 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_66;
            }

            v23 = v20 >> 14;
            v20 = v20 >> 7;
            ++v21;
            if (!v23)
            {
              v21 = v22;
              goto LABEL_25;
            }
          }
        }

        v3 = a1;
LABEL_25:
        v26 = __OFADD__(v15, v21);
        v42 = v15 + v21;
        if (v26)
        {
          goto LABEL_72;
        }

        v26 = __OFADD__(v42, 34);
        v43 = v42 + 34;
        if (v26)
        {
          goto LABEL_73;
        }

        v26 = __OFADD__(v43, 3);
        v44 = v43 + 3;
        if (v26)
        {
          goto LABEL_74;
        }

        v26 = __OFADD__(v4, v44);
        v4 += v44;
        if (v26)
        {
          goto LABEL_75;
        }

        if (v4 > 1572864)
        {

          v6 = v1;
          goto LABEL_58;
        }

        v45 = v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_22B9BAD14(v10, v12, v45, isUniquelyReferenced_nonNull_native);

        v6 = v1;
      }

      else
      {
        v24 = v2;

        v25 = [v24 size];
        v26 = __OFADD__(v4, v25);
        v4 += v25;
        if (v26)
        {
          goto LABEL_69;
        }

        v27 = v25;
        if (v4 > 1572864 && (v6[2] || *(v69 + 16)))
        {
          goto LABEL_57;
        }

        v28 = v2;
        v29 = v24;
        v30 = swift_isUniquelyReferenced_nonNull_native();
        v31 = v8;
        v32 = v30;
        v2 = v31;
        v1 = v9;
        v34 = sub_22B990A58(v31, v9);
        v35 = v6[2];
        v36 = (v33 & 1) == 0;
        v37 = v35 + v36;
        if (__OFADD__(v35, v36))
        {
          goto LABEL_76;
        }

        v38 = v33;
        if (v6[3] >= v37)
        {
          if ((v32 & 1) == 0)
          {
            sub_22B9EBC5C();
          }

          v39 = v2;
        }

        else
        {
          sub_22B9D823C(v37, v32);
          v39 = v2;
          v40 = sub_22B990A58(v2, v1);
          if ((v38 & 1) != (v41 & 1))
          {
            result = sub_22BA10CBC();
            __break(1u);
            return result;
          }

          v34 = v40;
        }

        v2 = v28;
        v3 = a1;
        if (v38)
        {
          v47 = v6[7] + 16 * v34;
          v48 = *v47;
          *v47 = v29;
          *(v47 + 8) = v27;

          if (v4 > 1572864)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v6[(v34 >> 6) + 8] |= 1 << v34;
          v49 = (v6[6] + 16 * v34);
          *v49 = v39;
          v49[1] = v1;
          v50 = (v6[7] + 16 * v34);
          *v50 = v29;
          v50[1] = v27;
          v51 = v6[2];
          v26 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v26)
          {
            goto LABEL_77;
          }

          v6[2] = v52;

          if (v4 > 1572864)
          {
LABEL_57:

LABEL_58:
            v1 = v6;
            if (qword_281414D30 == -1)
            {
              goto LABEL_59;
            }

            goto LABEL_78;
          }
        }
      }

      v53 = v6[2];
      v54 = *(v69 + 16);
      v55 = v53 + v54;
      if (__OFADD__(v53, v54))
      {
        goto LABEL_68;
      }

      if (qword_2814159E0 != -1)
      {
        swift_once();
      }

      if (v55 >= qword_28141ADE0)
      {
        v1 = v6;

        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v56 = sub_22BA0FEFC();
        sub_22B936CA8(v56, qword_28141AD40);
        v57 = sub_22BA0FEDC();
        v58 = sub_22BA1046C();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          v60 = "Reached max record count per batch";
          goto LABEL_61;
        }

LABEL_62:

        v63 = v2;
LABEL_63:
        sub_22B937DC4(v63);
        return v1;
      }

      if (v4 >= 1572864)
      {
        v1 = v6;

        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v61 = sub_22BA0FEFC();
        sub_22B936CA8(v61, qword_28141AD40);
        v57 = sub_22BA0FEDC();
        v58 = sub_22BA1044C();
        if (!os_log_type_enabled(v57, v58))
        {
          goto LABEL_62;
        }

        v59 = swift_slowAlloc();
        *v59 = 0;
        v60 = "Current batch is over the max bytes per batch";
        goto LABEL_61;
      }

      v5 = v68 + 1;
      sub_22B937DC4(v2);
      if (v68 + 1 == v65)
      {

        return v6;
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t sub_22B937DC4(void *a1)
{
}

uint64_t sub_22B937DFC(void *a1)
{
  v1 = a1;
}

uint64_t sub_22B937E44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22B937E8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22B937ED8()
{
  result = qword_281414A20;
  if (!qword_281414A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414A20);
  }

  return result;
}

MessagesCloudSync::SyncJobSchedulingStrategy_optional __swiftcall SyncJobSchedulingStrategy.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_22B937F54()
{
  result = qword_27D8D4CC0;
  if (!qword_27D8D4CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4CC0);
  }

  return result;
}

uint64_t sub_22B937FA8()
{
  v1 = *v0;
  sub_22BA10D3C();
  MEMORY[0x23189A3B0](v1);
  return sub_22BA10D6C();
}

uint64_t sub_22B93801C()
{
  v1 = *v0;
  sub_22BA10D3C();
  MEMORY[0x23189A3B0](v1);
  return sub_22BA10D6C();
}

void *sub_22B938060@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_22B93809C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v139 = a7;
  v140 = a8;
  v134 = a6;
  v141 = a5;
  v12 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v138 = &v121 - v15;
  v16 = sub_22BA0FD8C();
  v147 = *(v16 - 8);
  v148 = v16;
  v17 = *(v147 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_22BA0FDCC();
  v146 = *(v181 - 8);
  v21 = *(v146 + 64);
  MEMORY[0x28223BE20](v181, v22);
  v24 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v145 = xmmword_28141AEB0;
  v137 = a1;
  sub_22B935B38(a1, &v179);
  v131 = type metadata accessor for XPCActivity();
  v130 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_22B935B38(a2, &v177);
  sub_22B935B38(a3, v176);
  v122 = a4;
  sub_22B935B38(a4, v173);
  sub_22B943D3C(v173, v174);
  v171 = &type metadata for DatabaseRecordPersistence;
  v172 = &off_283F55858;
  v143 = type metadata accessor for CountStore();
  v25 = swift_allocObject();
  sub_22B943D3C(v170, &type metadata for DatabaseRecordPersistence);
  v168 = &type metadata for DatabaseRecordPersistence;
  v169 = &off_283F55858;
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  sub_22B92DFEC(&v167, v25 + 112);
  sub_22B936C4C(v170);
  sub_22B936C4C(v173);
  v135 = sub_22B9E43A0(1, 1, 0);
  sub_22BA0FDBC();
  sub_22BA0FD7C();
  v26 = [objc_opt_self() defaultManager];
  v125 = v26;
  v27 = type metadata accessor for SyncTelemetryReporter();
  v123 = v27;
  v28 = [objc_allocWithZone(v27) init];
  v142 = v24;
  v29 = v28;
  v126 = v28;
  v30 = v180;
  v31 = sub_22B943D3C(&v179, v180);
  v133 = &v121;
  v32 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v31, v31);
  v34 = (&v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = v178;
  v37 = sub_22B943D3C(&v177, v178);
  v132 = &v121;
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v37, v37);
  v144 = v20;
  v40 = (&v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = *v34;
  v43 = *v40;
  v44 = type metadata accessor for SyncJob();
  v174 = v44;
  v175 = &off_283F54680;
  v173[0] = v42;
  v172 = &off_283F52B80;
  v171 = v131;
  v170[0] = v130;
  v124 = type metadata accessor for CloudState();
  v169 = &off_283F589F0;
  v168 = v124;
  *&v167 = v43;
  v166 = &off_283F53B48;
  v165 = &type metadata for FileManagerProvider;
  v164[0] = v26;
  v163 = &off_283F57D70;
  v162 = v27;
  v161[0] = v29;
  v159 = v143;
  v160 = &off_283F57A60;
  v158[0] = v25;
  v45 = type metadata accessor for SyncContext();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  v48 = swift_allocObject();
  v49 = sub_22B943D3C(v173, v44);
  v131 = &v121;
  v50 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v49, v49);
  v52 = (&v121 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52);
  v54 = v168;
  v55 = sub_22B943D3C(&v167, v168);
  v130 = &v121;
  v56 = *(v54[-1].Description + 8);
  MEMORY[0x28223BE20](v55, v55);
  v58 = (&v121 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v59 + 16))(v58);
  v60 = v165;
  v61 = sub_22B943D3C(v164, v165);
  v129 = &v121;
  v62 = *(v60[-1].Description + 8);
  MEMORY[0x28223BE20](v61, v61);
  v64 = (&v121 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v65 + 16))(v64);
  v66 = v162;
  v67 = sub_22B943D3C(v161, v162);
  v128 = &v121;
  v68 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v67, v67);
  v70 = (&v121 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70);
  v72 = v159;
  v73 = sub_22B943D3C(v158, v159);
  v127 = &v121;
  v74 = *(*(v72 - 1) + 64);
  MEMORY[0x28223BE20](v73, v73);
  v76 = (&v121 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v77 + 16))(v76);
  v78 = *v52;
  v79 = *v58;
  v80 = *v64;
  v81 = *v70;
  v82 = *v76;
  v156 = v44;
  v157 = &off_283F54680;
  v155[0] = v78;
  v154[4] = &off_283F589F0;
  v154[3] = v124;
  v154[0] = v79;
  v153[4] = &off_283F53B48;
  v153[3] = &type metadata for FileManagerProvider;
  v153[0] = v80;
  v152[3] = v123;
  v152[4] = &off_283F57D70;
  v152[0] = v81;
  v150 = v143;
  v151 = &off_283F57A60;
  *&v149 = v82;
  sub_22B935B38(v155, v48 + 16);
  (*(v146 + 16))(v48 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_identifier, v142, v181);
  (*(v147 + 16))(v48 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_startDate, v144, v148);
  sub_22B935B38(v170, v48 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
  sub_22B935B38(v154, v48 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
  sub_22B935B38(v176, v48 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase);
  *(v48 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase) = v145;
  *(v48 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_delegate) = v141;
  *(v48 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_notifiers) = v134;
  *(v48 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_attemptCount) = 0;
  type metadata accessor for OSActivity();
  v83 = swift_allocObject();
  *(v83 + 24) = 0;
  *(v83 + 32) = 0;
  v84 = qword_2814160E0;
  v143 = v125;
  v126 = v126;
  swift_unknownObjectRetain();

  if (v84 != -1)
  {
    swift_once();
  }

  v85 = v135;
  *&v145 = v135 >> 24;
  *(v83 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v86 = swift_unknownObjectRetain();
  os_activity_scope_enter(v86, (v83 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  *(v48 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_osActivity) = v83;
  sub_22B935B38(v153, v48 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_fileProvider);
  sub_22B935B38(v152, v48 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService);
  LODWORD(v134) = *(*sub_22B9358B4(v155, v156) + 17);
  type metadata accessor for SyncStatsCollector();
  v87 = swift_allocObject();
  swift_defaultActor_initialize();
  v88 = sub_22B9BB998(&unk_283F509E8);
  v89 = sub_22B9BB998(&unk_283F50A68);
  v90 = sub_22B9BB998(&unk_283F50AE8);
  v91 = sub_22B9BB998(&unk_283F50B68);
  v92 = sub_22B9BB998(&unk_283F50BE8);

  (*(v147 + 8))(v144, v148);
  (*(v146 + 8))(v142, v181);
  sub_22B936C4C(v176);
  sub_22B936C4C(v170);
  sub_22B936C4C(v152);
  sub_22B936C4C(v153);
  sub_22B936C4C(v154);
  *(v87 + 112) = v134;
  *(v87 + 120) = 0;
  *(v87 + 128) = 0;
  *(v87 + 136) = 0;
  *(v87 + 144) = v88;
  *(v87 + 152) = v89;
  v93 = MEMORY[0x277D84F90];
  *(v87 + 160) = v90;
  *(v87 + 168) = v91;
  *(v87 + 176) = v92;
  *(v87 + 184) = v93;
  *(v87 + 192) = v93;
  *(v48 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector) = v87;
  sub_22B92DFEC(&v149, v48 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore);
  v94 = (v48 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_devicePolicy);
  *v94 = v85 & 1;
  v94[1] = BYTE1(v85) & 1;
  v94[2] = BYTE2(v85) & 1;
  v94[3] = v145;
  v94[4] = BYTE4(v85) & 1;
  sub_22B936C4C(v155);
  sub_22B936C4C(v158);
  sub_22B936C4C(v161);
  sub_22B936C4C(v164);
  sub_22B936C4C(&v167);
  sub_22B936C4C(v173);
  sub_22B936C4C(&v177);
  sub_22B936C4C(&v179);
  sub_22B939184(0x6974617669746341, 0xED00002E2E2E676ELL);
  type metadata accessor for SyncCoordinator();

  v96 = v136;
  sub_22B9B51D4(v95, &off_283F56AF0);
  if (!v96)
  {

    sub_22B93EBA0("Reporting start to BackgroundSystemTasks for %s", &selRef_reportStartWithTaskName_processesInvolved_error_, 26);
    v102 = sub_22B9358B4((v48 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v48 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
    v103 = *(*v102 + 56);
    v104 = v137;
    if (v103)
    {
      [*(*v102 + 56) startChanges];
      v105 = *sub_22B9358B4(v104, v104[3]);

      sub_22B92E064(v106, v105);

      [v103 commitChanges];
      v107 = v141;
      if (!v141)
      {
LABEL_10:
        sub_22B939184(0x69756E69746E6F43, 0xEF636E795320676ELL);
        v113 = sub_22BA1030C();
        v114 = v138;
        (*(*(v113 - 8) + 56))(v138, 1, 1, v113);
        sub_22B935B38(v104, &v179);
        sub_22B935B38(v122, &v177);
        v115 = swift_allocObject();
        v115[2] = 0;
        v115[3] = 0;
        v115[4] = v48;
        sub_22B92DFEC(&v179, (v115 + 5));
        sub_22B92DFEC(&v177, (v115 + 10));
        v117 = v139;
        v116 = v140;
        v115[15] = v139;
        v115[16] = v116;

        sub_22B930C20(v117);
        sub_22B9B5500(0, 0, v114, &unk_22BA13578, v115);
        goto LABEL_11;
      }
    }

    else
    {
      v119 = *sub_22B9358B4(v137, v137[3]);

      sub_22B92E064(v120, v119);

      v107 = v141;
      if (!v141)
      {
        goto LABEL_10;
      }
    }

    *&v179 = 0x2E636E7973;
    *(&v179 + 1) = 0xE500000000000000;
    v108 = *sub_22B9358B4((v48 + 16), *(v48 + 40));
    v109 = sub_22B9B580C();
    MEMORY[0x231899730](v109);

    MEMORY[0x231899730](46, 0xE100000000000000);
    sub_22B944034();
    v110 = sub_22BA10C1C();
    MEMORY[0x231899730](v110);

    v111 = sub_22BA0FFCC();

    v112 = sub_22BA0FDAC();
    [v107 syncCoordinatorStartedSyncWithName:v111 identifier:v112];

    goto LABEL_10;
  }

  sub_22B9BBA8C(MEMORY[0x277D84F90]);
  sub_22B939308();

  v97 = sub_22BA1030C();
  v98 = v138;
  (*(*(v97 - 8) + 56))(v138, 1, 1, v97);
  sub_22B935B38(v137, &v179);
  v99 = swift_allocObject();
  v99[2] = 0;
  v99[3] = 0;
  v99[4] = v96;
  sub_22B92DFEC(&v179, (v99 + 5));
  v101 = v139;
  v100 = v140;
  v99[10] = v48;
  v99[11] = v101;
  v99[12] = v100;

  sub_22B930C20(v101);
  sub_22B989028(0, 0, v98, &unk_22BA13568, v99);
LABEL_11:
}

uint64_t sub_22B939184(uint64_t a1, uint64_t a2)
{
  sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
  inited = swift_initStackObject();
  *(inited + 32) = 0x73736572676F7270;
  *(inited + 16) = xmmword_22BA13410;
  *(inited + 40) = 0xE800000000000000;
  sub_22BA108FC();

  v6 = *sub_22B9358B4((v2 + 16), *(v2 + 40));
  v7 = sub_22B9B580C();
  MEMORY[0x231899730](v7);

  v8 = MEMORY[0x277D837D0];
  *(inited + 48) = 0xD000000000000010;
  *(inited + 56) = 0x800000022BA1C450;
  *(inited + 72) = v8;
  strcpy((inited + 80), "subtextLabel");
  *(inited + 120) = v8;
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = a1;
  *(inited + 104) = a2;

  sub_22B9BBA8C(inited);
  swift_setDeallocating();
  sub_22B9349C8(&unk_27D8D5770, &qword_22BA135E0);
  swift_arrayDestroy();
  sub_22B939308();
}

void sub_22B939308()
{
  v1 = *(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_notifiers);
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22BA1080C())
  {
    v3 = 0;
    while ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x231899FA0](v3, v1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v6 = sub_22BA0FF5C();
      [v4 notifyClientsOfProgress_];
      swift_unknownObjectRelease();

      ++v3;
      if (v5 == i)
      {
        return;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v4 = *(v1 + 8 * v3 + 32);
    swift_unknownObjectRetain();
    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_22B939430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x2822009F8](sub_22B939458, 0, 0);
}

uint64_t sub_22B939458()
{
  v45 = v0;
  v1 = v0[10];
  v0[9] = v1;
  v2 = v1;
  sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
  if (swift_dynamicCast())
  {
    v4 = v0[7];
    v3 = v0[8];
    if (v4 >= 5)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v12 = v0[11];
      v13 = v0[12];
      v14 = sub_22BA0FEFC();
      sub_22B936CA8(v14, qword_28141AD40);
      sub_22B935B38(v12, (v0 + 2));
      sub_22B944AC0(v4);

      v15 = sub_22BA0FEDC();
      v16 = sub_22BA1044C();
      sub_22B944AB0(v4);

      if (!os_log_type_enabled(v15, v16))
      {
        sub_22B944AB0(v4);

        sub_22B936C4C(v0 + 2);
        v11 = v0[13];
        if (v11)
        {
          goto LABEL_15;
        }

        goto LABEL_19;
      }

      v17 = v0[12];
      v18 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42 = v40;
      *v18 = 136315650;
      v39 = v16;
      v19 = *sub_22B9358B4(v0 + 2, v0[5]);
      v20 = sub_22B9B580C();
      v22 = v21;
      sub_22B936C4C(v0 + 2);
      v23 = sub_22B99153C(v20, v22, &v42);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      v43 = 0x2E636E7973;
      v44 = 0xE500000000000000;
      v24 = *sub_22B9358B4((v4 + 16), *(v4 + 40));
      v25 = sub_22B9B580C();
      MEMORY[0x231899730](v25);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v26 = sub_22BA10C1C();
      MEMORY[0x231899730](v26);

      v27 = sub_22B99153C(v43, v44, &v42);

      *(v18 + 14) = v27;
      *(v18 + 22) = 2080;
      v43 = 0x2E636E7973;
      v44 = 0xE500000000000000;
      v28 = *sub_22B9358B4((v17 + 16), *(v17 + 40));
      v29 = sub_22B9B580C();
      MEMORY[0x231899730](v29);

      MEMORY[0x231899730](46, 0xE100000000000000);
      v30 = sub_22BA10C1C();
      MEMORY[0x231899730](v30);

      v31 = sub_22B99153C(v43, v44, &v42);

      *(v18 + 24) = v31;
      _os_log_impl(&dword_22B92A000, v15, v39, "Tried to kick %s but another sync was already going %s %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v40, -1, -1);
      MEMORY[0x23189ADD0](v18, -1, -1);
      sub_22B944AB0(v4);

LABEL_14:
      v11 = v0[13];
      if (v11)
      {
        goto LABEL_15;
      }

LABEL_19:
      v38 = v0[1];

      return v38();
    }

    v5 = v0[8];
    sub_22B944AB0(v0[7]);
  }

  v6 = sub_22B9358B4((v0[12] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v0[12] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v7 = *v6;
  v8 = *(*v6 + 56);
  if (v8)
  {
    [v8 startChanges];
  }

  sub_22BA08EA4(1);
  v9 = *(v7 + 56);
  if (!v9)
  {
    goto LABEL_14;
  }

  [v9 setSyncJobStateWithState_];
  v10 = *(v7 + 56);
  if (!v10)
  {
    goto LABEL_14;
  }

  [v10 commitChanges];
  v11 = v0[13];
  if (!v11)
  {
    goto LABEL_19;
  }

LABEL_15:
  v32 = v0[14];
  v33 = v0[12];
  v34 = v0[10];
  v41 = (v11 + *v11);
  v35 = v11[1];
  v36 = swift_task_alloc();
  v0[15] = v36;
  *v36 = v0;
  v36[1] = sub_22B9399AC;

  return (v41)(v33, &off_283F56AF0, 1, v34);
}

uint64_t sub_22B9399AC()
{
  v1 = *(*v0 + 120);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B939AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  v9 = *(*(type metadata accessor for HandleErrorOutcome() - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B939B50, 0, 0);
}

uint64_t sub_22B939B50()
{
  v35 = v0;
  v1 = v0[10];
  sub_22B939184(0x2E676E696E6E7552, 0xEA00000000002E2ELL);
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v3 = v0[10];
  v2 = v0[11];
  v4 = sub_22BA0FEFC();
  v0[18] = sub_22B936CA8(v4, qword_28141AD40);
  sub_22B935B38(v2, (v0 + 2));

  v5 = sub_22BA0FEDC();
  v6 = sub_22BA1046C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[10];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34[0] = v9;
    *v8 = 136315394;
    v10 = *sub_22B9358B4(v0 + 2, v0[5]);
    v11 = sub_22B9B580C();
    v13 = v12;
    sub_22B936C4C(v0 + 2);
    v14 = sub_22B99153C(v11, v13, v34);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    sub_22BA0FDCC();
    sub_22B944034();
    v15 = sub_22BA10C1C();
    v17 = sub_22B99153C(v15, v16, v34);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_22B92A000, v5, v6, "Running handler for %s %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  else
  {

    sub_22B936C4C(v0 + 2);
  }

  v18 = v0[17];
  v19 = sub_22B9349C8(&qword_27D8D4CC8, &qword_22BA13580);
  v0[19] = v19;
  v20 = *(v19 - 8);
  v0[20] = v20;
  (*(v20 + 56))(v18, 2, 2, v19);
  v21 = [objc_opt_self() sharedInstance];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 isInternalInstall];

    if (v23)
    {
      sub_22B9441FC((v0[10] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), 0xD000000000000012, 0x800000022BA1C320);
    }
  }

  v24 = v0[11];
  v25 = v24[3];
  v26 = v24[4];
  sub_22B9358B4(v24, v25);
  v27 = *(*(v26 + 8) + 8);
  v28 = *(v27 + 40);
  v33 = (v28 + *v28);
  v29 = v28[1];
  v30 = swift_task_alloc();
  v0[21] = v30;
  *v30 = v0;
  v30[1] = sub_22B93A08C;
  v31 = v0[10];

  return (v33)(v31, &off_283F56AF0, v25, v27);
}

uint64_t sub_22B93A08C()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B93A188, 0, 0);
}

uint64_t sub_22B93A188()
{
  v1 = *sub_22B9358B4(*(v0 + 88), *(*(v0 + 88) + 24));
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_22B93A248;
  v3 = *(v0 + 80);

  return sub_22B93BD74(v3, &off_283F56AF0);
}

uint64_t sub_22B93A248(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *(*v3 + 176);
  v7 = *v3;
  *(*v3 + 184) = v2;

  if (v2)
  {
    v8 = sub_22B93B664;
  }

  else
  {
    *(v5 + 280) = a2;
    v8 = sub_22B93A370;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22B93A370()
{
  v1 = v0[11];
  v2 = v1[3];
  v3 = v1[4];
  sub_22B9358B4(v1, v2);
  v4 = *(*(v3 + 8) + 8);
  v5 = *(v4 + 56);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_22B93A4AC;
  v8 = v0[10];

  return (v10)(v8, &off_283F56AF0, v2, v4);
}

uint64_t sub_22B93A4AC()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B93A5A8, 0, 0);
}

uint64_t sub_22B93A5A8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);
  *(v0 + 200) = 0;
  *(v0 + 281) = v1 & 1;
  v3 = *(*(v0 + 80) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_osActivity);
  swift_beginAccess();
  os_activity_scope_leave((v3 + 24));
  swift_endAccess();
  sub_22B9BBA8C(MEMORY[0x277D84F90]);
  sub_22B939308();

  type metadata accessor for SyncCoordinator();
  sub_22B9B5378();
  *(v0 + 208) = v2;
  if (v2)
  {
    v4 = swift_task_alloc();
    *(v0 + 272) = v4;
    *v4 = v0;
    v4[1] = sub_22B93B854;
    v5 = *(v0 + 80);

    return sub_22B97D504(v2);
  }

  v7 = *(v0 + 152);
  v8 = *(v0 + 160);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 104);
  v12 = *(v0 + 80);
  sub_22B93EBA0("Reporting stopped to BackgroundSystemTasks for %s", &selRef_reportStoppedWithTaskName_processesInvolved_error_, 27);
  sub_22B944198(v9, v10);
  v13 = (*(v8 + 48))(v10, 2, v7);
  if (v13)
  {
    if (v13 == 1)
    {
      if (v11)
      {
        v14 = *(v0 + 112);
        v15 = *(v0 + 80);
        v38 = (*(v0 + 104) + **(v0 + 104));
        v16 = *(*(v0 + 104) + 4);
        v17 = swift_task_alloc();
        *(v0 + 224) = v17;
        *v17 = v0;
        v17[1] = sub_22B93AC28;
        v18 = *(v0 + 200);
        v19 = v15;
        v20 = 64;
LABEL_13:

        return v38(v19, &off_283F56AF0, v20, v18);
      }
    }

    else if (v11)
    {
      v25 = *(v0 + 281);
      v26 = *(v0 + 112);
      v27 = *(v0 + 80);
      v38 = (*(v0 + 104) + **(v0 + 104));
      v28 = *(*(v0 + 104) + 4);
      v29 = swift_task_alloc();
      *(v0 + 232) = v29;
      *v29 = v0;
      v29[1] = sub_22B93ADB0;
      v18 = *(v0 + 200);
      v19 = v27;
      v20 = v25;
      goto LABEL_13;
    }

    v30 = *(v0 + 200);
    sub_22B9440D8(*(v0 + 136));
  }

  else
  {
    if (v11)
    {
      v21 = *(v0 + 112);
      v22 = *(v0 + 80);
      v38 = (*(v0 + 104) + **(v0 + 104));
      v23 = *(*(v0 + 104) + 4);
      v24 = swift_task_alloc();
      *(v0 + 216) = v24;
      *v24 = v0;
      v24[1] = sub_22B93AA64;
      v18 = *(v0 + 200);
      v19 = v22;
      v20 = 128;
      goto LABEL_13;
    }

    v31 = *(v0 + 200);
    sub_22B9440D8(*(v0 + 136));

    v32 = *(v0 + 128);
    v33 = sub_22BA0FD8C();
    (*(*(v33 - 8) + 8))(v32, v33);
  }

  v35 = *(v0 + 128);
  v34 = *(v0 + 136);
  v36 = *(v0 + 120);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_22B93AA64()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B93AB60, 0, 0);
}

uint64_t sub_22B93AB60()
{
  v1 = *(v0 + 136);

  sub_22B9440D8(v1);
  v2 = *(v0 + 128);
  v3 = sub_22BA0FD8C();
  (*(*(v3 - 8) + 8))(v2, v3);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22B93AC28()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B93AD24, 0, 0);
}

uint64_t sub_22B93AD24()
{
  v1 = *(v0 + 136);

  sub_22B9440D8(v1);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22B93ADB0()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B945ACC, 0, 0);
}

uint64_t sub_22B93AEAC()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[32] = v4;
  *v4 = v3;
  v4[1] = sub_22B93B05C;
  v5 = v1[30];
  v6 = v1[15];
  v7 = v1[14];
  v8 = v1[13];
  v9 = v1[12];
  v10 = v1[10];

  return sub_22B93C914(v6, v10, &off_283F56AF0, v9, v8, v7, v5);
}

uint64_t sub_22B93B05C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v5 = sub_22B93B7C0;
  }

  else
  {
    v5 = sub_22B93B190;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B93B190()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  sub_22B9440D8(v1);
  sub_22B944134(v2, v1);
  v3 = *(v0 + 264);
  *(v0 + 200) = *(v0 + 240);
  *(v0 + 281) = 0;
  v4 = *(*(v0 + 80) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_osActivity);
  swift_beginAccess();
  os_activity_scope_leave((v4 + 24));
  swift_endAccess();
  sub_22B9BBA8C(MEMORY[0x277D84F90]);
  sub_22B939308();

  type metadata accessor for SyncCoordinator();
  sub_22B9B5378();
  *(v0 + 208) = v3;
  if (v3)
  {
    v5 = swift_task_alloc();
    *(v0 + 272) = v5;
    *v5 = v0;
    v5[1] = sub_22B93B854;
    v6 = *(v0 + 80);

    return sub_22B97D504(v3);
  }

  v8 = *(v0 + 152);
  v9 = *(v0 + 160);
  v11 = *(v0 + 128);
  v10 = *(v0 + 136);
  v12 = *(v0 + 104);
  v13 = *(v0 + 80);
  sub_22B93EBA0("Reporting stopped to BackgroundSystemTasks for %s", &selRef_reportStoppedWithTaskName_processesInvolved_error_, 27);
  sub_22B944198(v10, v11);
  v14 = (*(v9 + 48))(v11, 2, v8);
  if (v14)
  {
    if (v14 == 1)
    {
      if (v12)
      {
        v15 = *(v0 + 112);
        v16 = *(v0 + 80);
        v39 = (*(v0 + 104) + **(v0 + 104));
        v17 = *(*(v0 + 104) + 4);
        v18 = swift_task_alloc();
        *(v0 + 224) = v18;
        *v18 = v0;
        v18[1] = sub_22B93AC28;
        v19 = *(v0 + 200);
        v20 = v16;
        v21 = 64;
LABEL_13:

        return v39(v20, &off_283F56AF0, v21, v19);
      }
    }

    else if (v12)
    {
      v26 = *(v0 + 281);
      v27 = *(v0 + 112);
      v28 = *(v0 + 80);
      v39 = (*(v0 + 104) + **(v0 + 104));
      v29 = *(*(v0 + 104) + 4);
      v30 = swift_task_alloc();
      *(v0 + 232) = v30;
      *v30 = v0;
      v30[1] = sub_22B93ADB0;
      v19 = *(v0 + 200);
      v20 = v28;
      v21 = v26;
      goto LABEL_13;
    }

    v31 = *(v0 + 200);
    sub_22B9440D8(*(v0 + 136));
  }

  else
  {
    if (v12)
    {
      v22 = *(v0 + 112);
      v23 = *(v0 + 80);
      v39 = (*(v0 + 104) + **(v0 + 104));
      v24 = *(*(v0 + 104) + 4);
      v25 = swift_task_alloc();
      *(v0 + 216) = v25;
      *v25 = v0;
      v25[1] = sub_22B93AA64;
      v19 = *(v0 + 200);
      v20 = v23;
      v21 = 128;
      goto LABEL_13;
    }

    v32 = *(v0 + 200);
    sub_22B9440D8(*(v0 + 136));

    v33 = *(v0 + 128);
    v34 = sub_22BA0FD8C();
    (*(*(v34 - 8) + 8))(v33, v34);
  }

  v36 = *(v0 + 128);
  v35 = *(v0 + 136);
  v37 = *(v0 + 120);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_22B93B664()
{
  v1 = v0[23];
  v0[30] = v1;
  v2 = v0[11];
  v3 = v2[3];
  v4 = v2[4];
  sub_22B9358B4(v2, v3);
  v5 = *(*(v4 + 8) + 8);
  v6 = *(v5 + 56);
  v7 = v1;
  v12 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v0[31] = v9;
  *v9 = v0;
  v9[1] = sub_22B93AEAC;
  v10 = v0[10];

  return (v12)(v10, &off_283F56AF0, v3, v5);
}

uint64_t sub_22B93B7C0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);

  sub_22B9440D8(v2);

  v4 = *(v0 + 8);
  v5 = *(v0 + 264);

  return v4();
}

uint64_t sub_22B93B854()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B93B950, 0, 0);
}

uint64_t sub_22B93B950()
{
  v1 = *(v0 + 144);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1045C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B92A000, v2, v3, "Failed to clear active sync state!", v4, 2u);
    MEMORY[0x23189ADD0](v4, -1, -1);
  }

  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v9 = *(v0 + 104);
  v10 = *(v0 + 80);
  sub_22B93EBA0("Reporting stopped to BackgroundSystemTasks for %s", &selRef_reportStoppedWithTaskName_processesInvolved_error_, 27);
  sub_22B944198(v7, v8);
  v11 = (*(v6 + 48))(v8, 2, v5);
  if (v11)
  {
    if (v11 == 1)
    {
      if (v9)
      {
        v12 = *(v0 + 112);
        v13 = *(v0 + 80);
        v37 = (*(v0 + 104) + **(v0 + 104));
        v14 = *(*(v0 + 104) + 4);
        v15 = swift_task_alloc();
        *(v0 + 224) = v15;
        *v15 = v0;
        v15[1] = sub_22B93AC28;
        v16 = *(v0 + 200);
        v17 = v13;
        v18 = 64;
LABEL_11:

        return v37(v17, &off_283F56AF0, v18, v16);
      }
    }

    else if (v9)
    {
      v23 = *(v0 + 281);
      v24 = *(v0 + 112);
      v25 = *(v0 + 80);
      v37 = (*(v0 + 104) + **(v0 + 104));
      v26 = *(*(v0 + 104) + 4);
      v27 = swift_task_alloc();
      *(v0 + 232) = v27;
      *v27 = v0;
      v27[1] = sub_22B93ADB0;
      v16 = *(v0 + 200);
      v17 = v25;
      v18 = v23;
      goto LABEL_11;
    }

    v29 = *(v0 + 200);
    sub_22B9440D8(*(v0 + 136));
  }

  else
  {
    if (v9)
    {
      v19 = *(v0 + 112);
      v20 = *(v0 + 80);
      v37 = (*(v0 + 104) + **(v0 + 104));
      v21 = *(*(v0 + 104) + 4);
      v22 = swift_task_alloc();
      *(v0 + 216) = v22;
      *v22 = v0;
      v22[1] = sub_22B93AA64;
      v16 = *(v0 + 200);
      v17 = v20;
      v18 = 128;
      goto LABEL_11;
    }

    v30 = *(v0 + 200);
    sub_22B9440D8(*(v0 + 136));

    v31 = *(v0 + 128);
    v32 = sub_22BA0FD8C();
    (*(*(v32 - 8) + 8))(v31, v32);
  }

  v34 = *(v0 + 128);
  v33 = *(v0 + 136);
  v35 = *(v0 + 120);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_22B93BD74(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22B93BD98, 0, 0);
}

uint64_t sub_22B93BD98()
{
  v41 = v0;
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v0[5] = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v3 = *sub_22B9358B4((v1 + v2), *(v1 + v2 + 24));
  if ((sub_22BA08808() & 1) != 0 || (v4 = *(v3 + 24), (sub_22B92DA70(1u, 0) & 1) == 0))
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v26 = v0[4];
    v27 = sub_22BA0FEFC();
    sub_22B936CA8(v27, qword_28141AD40);

    v28 = sub_22BA0FEDC();
    v29 = sub_22BA1046C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v0[4];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136315138;
      v33 = sub_22B9B580C();
      v35 = sub_22B99153C(v33, v34, &v39);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_22B92A000, v28, v29, "%s Early Exit from task, Messages in iCloud not enabled.", v31, 0xCu);
      sub_22B936C4C(v32);
      MEMORY[0x23189ADD0](v32, -1, -1);
      MEMORY[0x23189ADD0](v31, -1, -1);
    }

    sub_22B944A5C();
    swift_allocError();
    *v36 = 0;
    v36[1] = 0;
    swift_willThrow();
    v37 = v0[1];

    return v37();
  }

  else
  {
    sub_22BA01E9C(0, 0xE000000000000000, 0, *(v0[4] + 98));
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v5 = v0[4];
    v6 = v0[2];
    v7 = sub_22BA0FEFC();
    v0[6] = sub_22B936CA8(v7, qword_28141AD40);

    swift_unknownObjectRetain();
    v8 = sub_22BA0FEDC();
    v9 = sub_22BA1046C();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[4];
      v11 = v0[2];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v38 = v13;
      *v12 = 136315394;
      v14 = sub_22B9B580C();
      v16 = sub_22B99153C(v14, v15, &v38);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v39 = 0x2E636E7973;
      v40 = 0xE500000000000000;
      v17 = *sub_22B9358B4((v11 + 16), *(v11 + 40));
      v18 = sub_22B9B580C();
      MEMORY[0x231899730](v18);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v19 = sub_22BA10C1C();
      MEMORY[0x231899730](v19);

      v20 = sub_22B99153C(v39, v40, &v38);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_22B92A000, v8, v9, "%s starting %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v13, -1, -1);
      MEMORY[0x23189ADD0](v12, -1, -1);
    }

    v21 = swift_task_alloc();
    v0[7] = v21;
    *v21 = v0;
    v21[1] = sub_22B93C23C;
    v22 = v0[3];
    v23 = v0[4];
    v24 = v0[2];

    return sub_22B942FD8(v24, v22);
  }
}

uint64_t sub_22B93C23C(uint64_t a1, char a2)
{
  v4 = *(*v3 + 56);
  v5 = *v3;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;

  if (v2)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B93C374, 0, 0);
  }
}

uint64_t sub_22B93C374()
{
  v47 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  swift_unknownObjectRetain();
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1046C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v43 = *(v0 + 64);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);
    v9 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44 = v42;
    *v9 = 136315906;
    v10 = sub_22B9B580C();
    v12 = sub_22B99153C(v10, v11, &v44);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    if (v6)
    {
      v13 = 0x7972746572;
    }

    else
    {
      v13 = 1701736292;
    }

    if (v6)
    {
      v14 = 0xE500000000000000;
    }

    else
    {
      v14 = 0xE400000000000000;
    }

    v15 = sub_22B99153C(v13, v14, &v44);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    v45 = 0x2E636E7973;
    v46 = 0xE500000000000000;
    v16 = *sub_22B9358B4((v8 + 16), *(v8 + 40));
    v17 = sub_22B9B580C();
    MEMORY[0x231899730](v17);

    MEMORY[0x231899730](46, 0xE100000000000000);
    sub_22BA0FDCC();
    sub_22B944034();
    v18 = sub_22BA10C1C();
    MEMORY[0x231899730](v18);

    v19 = sub_22B99153C(v45, v46, &v44);

    *(v9 + 24) = v19;
    *(v9 + 32) = 2048;
    *(v9 + 34) = v43;
    _os_log_impl(&dword_22B92A000, v4, v5, "%s finished %s %s, result %lld", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v42, -1, -1);
    MEMORY[0x23189ADD0](v9, -1, -1);
  }

  if (*(v0 + 72))
  {
    v20 = sub_22BA10C6C();

    if ((v20 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v22 = *(v0 + 48);
  v23 = *(v0 + 16);
  swift_unknownObjectRetain();
  v24 = sub_22BA0FEDC();
  v25 = sub_22BA1046C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 16);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v45 = v28;
    *v27 = 136315138;
    v29 = *(*sub_22B9358B4((v26 + 16), *(v26 + 40)) + 17);
    if (v29 <= 4)
    {
      if (v29 <= 1)
      {
        if (v29)
        {
          v30 = 0xE800000000000000;
          v31 = 0x6C6C69666B636142;
        }

        else
        {
          v30 = 0xE700000000000000;
          v31 = 0x6C616974696E49;
        }
      }

      else if (v29 == 2)
      {
        v30 = 0xE800000000000000;
        v31 = 0x6369646F69726550;
      }

      else if (v29 == 3)
      {
        v30 = 0xE600000000000000;
        v31 = 0x70756B636142;
      }

      else
      {
        v30 = 0x800000022BA1BD10;
        v31 = 0xD000000000000017;
      }

      goto LABEL_34;
    }

    if (v29 <= 6)
    {
      if (v29 != 5)
      {
        v30 = 0xED00006465746169;
        v31 = 0x74696E4972657355;
        goto LABEL_34;
      }

      v31 = 0x6C6E4F746E756F43;
    }

    else
    {
      if (v29 != 7)
      {
        if (v29 == 8)
        {
          v30 = 0xEE007372656C6767;
          v31 = 0x6172745374736554;
        }

        else
        {
          v30 = 0xE400000000000000;
          v31 = 1953719636;
        }

        goto LABEL_34;
      }

      v31 = 0x7274656D656C6554;
    }

    v30 = 0xE900000000000079;
LABEL_34:
    v32 = sub_22B99153C(v31, v30, &v45);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_22B92A000, v24, v25, "Reporting phase completed: %s", v27, 0xCu);
    sub_22B936C4C(v28);
    MEMORY[0x23189ADD0](v28, -1, -1);
    MEMORY[0x23189ADD0](v27, -1, -1);
  }

  v33 = *(v0 + 16);
  v34 = sub_22B9358B4((v33 + *(v0 + 40)), *(v33 + *(v0 + 40) + 24));
  v21 = sub_22B9358B4((v33 + 16), *(v33 + 40));
  if (!*(*v21 + 17))
  {
    v21 = [*(*v34 + 16) setBool:1 forKey:*MEMORY[0x277D19A58]];
  }

LABEL_37:
  v35 = *(v0 + 32);
  v36 = *(v35 + 104);
  if (v36)
  {
    v37 = *(v35 + 112);
    v36(v21);
    v35 = *(v0 + 32);
  }

  v38 = *(v0 + 72);
  sub_22BA01E9C(0, 0xE000000000000000, 0, *(v35 + 99));
  v39 = *(v0 + 8);
  v40 = *(v0 + 64);

  return v39(v40, v38 & 1);
}

uint64_t sub_22B93C914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = *MEMORY[0x277D85DE8];
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v7[50] = a2;
  v7[51] = a3;
  v7[49] = a1;
  v9 = sub_22BA0FD8C();
  v7[56] = v9;
  v10 = *(v9 - 8);
  v7[57] = v10;
  v11 = *(v10 + 64) + 15;
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v12 = *(*(sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0) - 8) + 64) + 15;
  v7[65] = swift_task_alloc();
  v7[66] = swift_task_alloc();
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();
  v7[69] = swift_task_alloc();
  v7[70] = swift_task_alloc();
  v7[71] = swift_task_alloc();
  v7[72] = swift_task_alloc();
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  v7[75] = swift_task_alloc();
  v13 = *(*(type metadata accessor for HandleErrorOutcome() - 8) + 64) + 15;
  v7[76] = swift_task_alloc();
  v14 = swift_task_alloc();
  v7[77] = v14;
  *v14 = v7;
  v14[1] = sub_22B93CB88;
  v15 = *MEMORY[0x277D85DE8];

  return sub_22B97D504(a7);
}

uint64_t sub_22B93CB88()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 616);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B93CCB0, 0, 0);
}

uint64_t sub_22B93CCB0()
{
  v276 = v0;
  v275 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 448);
  v4 = *(v0 + 456);
  v5 = *(v0 + 440);
  v6 = *(v0 + 400);
  v7 = sub_22B9349C8(&qword_27D8D4CC8, &qword_22BA13580);
  *(v0 + 624) = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  *(v0 + 632) = v9;
  *(v0 + 640) = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v269 = v9;
  v9(v1, 2, 2, v7);
  v10 = *(v4 + 56);
  *(v0 + 648) = v10;
  *(v0 + 656) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v263 = v10;
  v10(v2, 1, 1, v3);
  sub_22B937ED8();
  v11 = sub_22BA106FC();
  v12 = *(*sub_22B9358B4((v6 + 16), *(v6 + 40)) + 24);
  swift_unknownObjectRetain();
  v13 = sub_22BA0FB5C();
  *(v0 + 664) = *(v6 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_attemptCount);
  *(v0 + 384) = v11;
  v14 = [v12 responseForError:v13 attempt:? retryInterval:?];

  swift_unknownObjectRelease();
  v15 = *(v0 + 384);
  *(v0 + 672) = v15;
  v258 = v15;

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 440);
  v17 = *(v0 + 400);
  v18 = sub_22BA0FEFC();
  *(v0 + 680) = sub_22B936CA8(v18, qword_28141AD40);
  swift_unknownObjectRetain();
  v19 = v16;
  v20 = sub_22BA0FEDC();
  v21 = sub_22BA1044C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 440);
    v245 = *(v0 + 400);
    aBlocka = v7;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v249 = swift_slowAlloc();
    v273 = v249;
    *v23 = 136315906;
    v25 = *sub_22B9358B4((v6 + 16), *(v6 + 40));
    v26 = sub_22B9B580C();
    v28 = v14;
    v29 = v6;
    v30 = sub_22B99153C(v26, v27, &v273);

    *(v23 + 4) = v30;
    v6 = v29;
    v14 = v28;
    *(v23 + 12) = 2112;
    v31 = v22;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v32;
    *v24 = v32;
    *(v23 + 22) = 2048;
    *(v23 + 24) = v28;
    *(v23 + 32) = 2080;
    sub_22BA0FDCC();
    sub_22B944034();
    v33 = sub_22BA10C1C();
    v35 = sub_22B99153C(v33, v34, &v273);

    *(v23 + 34) = v35;
    _os_log_impl(&dword_22B92A000, v20, v21, "syncJob %s failed with %@, response %ld %s", v23, 0x2Au);
    sub_22B936BEC(v24, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v24, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v249, -1, -1);
    v36 = v23;
    v7 = aBlocka;
    MEMORY[0x23189ADD0](v36, -1, -1);
  }

  if (v14 > 3)
  {
    if (v14 <= 257)
    {
      switch(v14)
      {
        case 4:
          v80 = *(v0 + 400);
          v81 = *(v80 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 24);
          v82 = *(v80 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 32);
          sub_22B9358B4((v80 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity), v81);
          (*(v82 + 40))(v81, v82);
          v83 = sub_22B9358B4((v80 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v80 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
          LOBYTE(v273) = *(*sub_22B9358B4((v6 + 16), *(v6 + 40)) + 17);
          v84 = *v83;
          sub_22BA099B0(&v273);
          break;
        case 5:
          v85 = *(v0 + 400);
          v86 = *(v85 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 24);
          v87 = *(v85 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 32);
          sub_22B9358B4((v85 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity), v86);
          (*(v87 + 40))(v86, v87);
          v88 = sub_22B9358B4((v85 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v85 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
          LOBYTE(v273) = *(*sub_22B9358B4((v6 + 16), *(v6 + 40)) + 17);
          v89 = *v88;
          sub_22BA099C4(&v273);
          break;
        case 6:
          v37 = *(v0 + 400);
          v38 = *(v37 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 24);
          v39 = *(v37 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 32);
          sub_22B9358B4((v37 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity), v38);
          (*(v39 + 40))(v38, v39);
          v40 = *(*sub_22B9358B4((v37 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v37 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24)) + 56);
          if (v40)
          {
            [v40 deleteAllCloudKitData];
          }

          break;
        default:
          goto LABEL_34;
      }

LABEL_38:
      v78 = 0;
      goto LABEL_47;
    }

    if ((v14 - 258) <= 1)
    {
      goto LABEL_23;
    }

LABEL_34:
    v90 = v6;
    v91 = *(v0 + 400);
    swift_unknownObjectRetain();
    v92 = sub_22BA0FEDC();
    v93 = sub_22BA1044C();
    swift_unknownObjectRelease();
    v241 = v90;
    if (os_log_type_enabled(v92, v93))
    {
      v94 = *(v0 + 400);
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v95 = 134218242;
      *(v95 + 4) = v14;
      *(v95 + 12) = 2080;
      v272 = v96;
      v273 = 0x2E636E7973;
      v274 = 0xE500000000000000;
      v97 = *sub_22B9358B4((v90 + 16), *(v90 + 40));
      v98 = sub_22B9B580C();
      MEMORY[0x231899730](v98);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v99 = sub_22BA10C1C();
      MEMORY[0x231899730](v99);

      v100 = sub_22B99153C(v273, v274, &v272);

      *(v95 + 14) = v100;
      _os_log_impl(&dword_22B92A000, v92, v93, "Scheduler got unexpected error response %ld for %s", v95, 0x16u);
      sub_22B936C4C(v96);
      MEMORY[0x23189ADD0](v96, -1, -1);
      MEMORY[0x23189ADD0](v95, -1, -1);
    }

    v101 = *(v0 + 568);
    v102 = *(v0 + 560);
    v103 = *(v0 + 448);
    v104 = *(v0 + 456);
    v105 = *(v0 + 440);
    v106 = (*(v0 + 400) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
    v107 = v106[3];
    v108 = v106[4];
    sub_22B9358B4(v106, v107);
    (*(v108 + 40))(v107, v108);
    v109 = sub_22B9358B4((v241 + 16), *(v241 + 40));
    sub_22B9358B4((*v109 + 32), *(*v109 + 56));
    sub_22B975314(v101);
    sub_22B935A74(v101, v102);
    if ((*(v104 + 48))(v102, 1, v103) == 1)
    {
      sub_22B936BEC(*(v0 + 560), &unk_27D8D4A90, &qword_22BA126A0);
      goto LABEL_38;
    }

    v116 = *(v0 + 600);
    v117 = *(v0 + 560);
    v118 = *(v0 + 504);
    v119 = *(v0 + 448);
    v120 = *(v0 + 456);
    sub_22B936BEC(v116, &unk_27D8D4A90, &qword_22BA126A0);
    v121 = *(v120 + 32);
    v121(v118, v117, v119);
    v121(v116, v118, v119);
    v78 = 1;
    v114 = v116;
    v115 = v119;
    goto LABEL_41;
  }

  if (v14 >= 2)
  {
    if (v14 == 2)
    {
      v64 = *(v0 + 592);
      v65 = *(v0 + 584);
      v66 = *(v0 + 456);
      v270 = *(v0 + 448);
      v67 = *(v0 + 440);
      v68 = (*(v0 + 400) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
      v69 = v68[3];
      v70 = v68[4];
      sub_22B9358B4(v68, v69);
      (*(v70 + 40))(v69, v70);
      v71 = sub_22B9358B4((v6 + 16), *(v6 + 40));
      sub_22B9358B4((*v71 + 32), *(*v71 + 56));
      sub_22B975314(v64);
      sub_22B94498C(v64, v65);
      v72 = (*(v66 + 48))(v65, 1, v270);
      v73 = *(v0 + 600);
      v74 = *(v0 + 592);
      v75 = *(v0 + 584);
      if (v72 != 1)
      {
        v110 = *(v0 + 512);
        v111 = *(v0 + 448);
        v112 = *(v0 + 456);
        sub_22B936BEC(*(v0 + 592), &unk_27D8D4A90, &qword_22BA126A0);
        sub_22B936BEC(v73, &unk_27D8D4A90, &qword_22BA126A0);
        v113 = *(v112 + 32);
        v113(v110, v75, v111);
        v113(v73, v110, v111);
        v78 = 1;
        v114 = v73;
        v115 = v111;
LABEL_41:
        v263(v114, 0, 1, v115);
        goto LABEL_47;
      }

      v76 = *(v0 + 576);
      v77 = *(v0 + 448);
      sub_22B936BEC(*(v0 + 584), &unk_27D8D4A90, &qword_22BA126A0);
      [v258 doubleValue];
      sub_22BA0FD2C();
      sub_22B936BEC(v74, &unk_27D8D4A90, &qword_22BA126A0);
      sub_22B936BEC(v73, &unk_27D8D4A90, &qword_22BA126A0);
      v78 = 1;
      v263(v76, 0, 1, v77);
      v79 = v76;
    }

    else
    {
      if (v14 != 3)
      {
        goto LABEL_34;
      }

      v41 = (*(v0 + 400) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
      v42 = v41[3];
      v43 = v41[4];
      sub_22B9358B4(v41, v42);
      if ((*(v43 + 8))(v42, v43))
      {
        swift_unknownObjectRelease();
        v44 = v41[3];
        v45 = v41[4];
        sub_22B9358B4(v41, v44);
        if ((*(v45 + 32))(v44, v45))
        {
          v46 = *(v0 + 608);
          sub_22B9440D8(v46);
          v269(v46, 1, 2, v7);
          v47 = *(*sub_22B9358B4((v6 + 16), *(v6 + 40)) + 17) - 1;
          if (v47 > 5 || ((0x2Fu >> v47) & 1) == 0)
          {
            goto LABEL_38;
          }

          v48 = swift_task_alloc();
          *(v0 + 696) = v48;
          *v48 = v0;
          v48[1] = sub_22B93EA78;
          v50 = *(v0 + 400);
          v49 = *(v0 + 408);
          v51 = *MEMORY[0x277D85DE8];
          v282 = 0x575356555453uLL >> (8 * (v47 & 0x1F));
          v281 = 454;
          v280 = 2;
          v279 = 53;
          v278 = "handleJobError(context:persistence:completion:error:)";

          return sub_22B9E81AC(v50, v49, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/Protocols/SyncJobScheduler.swift", 108, 2);
        }
      }

      else
      {
        v122 = sub_22BA0FEDC();
        v123 = sub_22BA1044C();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          *v124 = 0;
          _os_log_impl(&dword_22B92A000, v122, v123, "No activity to defer for sync, rescheduling", v124, 2u);
          MEMORY[0x23189ADD0](v124, -1, -1);
        }
      }

      v73 = *(v0 + 600);
      v125 = *(v0 + 576);
      v126 = *(v0 + 448);
      [v258 doubleValue];
      sub_22BA0FD2C();
      sub_22B936BEC(v73, &unk_27D8D4A90, &qword_22BA126A0);
      v78 = 1;
      v263(v125, 0, 1, v126);
      v79 = v125;
    }

    sub_22B935A74(v79, v73);
LABEL_47:
    v127 = (*(v0 + 400) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
    v128 = *sub_22B9358B4(v127, v127[3]);
    v129 = sub_22BA09CBC();
    if (v129)
    {
      [v129 setSyncCancelled_];
    }

    v130 = *(v0 + 600);
    if (!v78)
    {
      sub_22B936BEC(v130, &unk_27D8D4A90, &qword_22BA126A0);
LABEL_72:
      v221 = *(v0 + 672);
      v222 = *(v0 + 600);
      v223 = *(v0 + 592);
      v224 = *(v0 + 584);
      v225 = *(v0 + 576);
      v226 = *(v0 + 568);
      v227 = *(v0 + 560);
      v228 = *(v0 + 552);
      bufb = *(v0 + 544);
      v244 = *(v0 + 536);
      v248 = *(v0 + 528);
      v252 = *(v0 + 520);
      aBlockb = *(v0 + 512);
      v257 = *(v0 + 504);
      v260 = *(v0 + 496);
      v262 = *(v0 + 488);
      v265 = *(v0 + 480);
      v268 = *(v0 + 472);
      v271 = *(v0 + 464);
      sub_22B944134(*(v0 + 608), *(v0 + 392));

      v229 = *(v0 + 8);
      v230 = *MEMORY[0x277D85DE8];

      return v229();
    }

    v131 = *(v0 + 552);
    v132 = *(v0 + 448);
    v133 = *(v0 + 456);
    sub_22B94498C(v130, v131);
    v134 = *(v133 + 48);
    v135 = v134(v131, 1, v132);
    v136 = *(v0 + 552);
    if (v135 == 1)
    {
      v137 = *(v0 + 680);
      v138 = *(v0 + 440);
      sub_22B936BEC(*(v0 + 552), &unk_27D8D4A90, &qword_22BA126A0);
      v139 = v138;
      v140 = sub_22BA0FEDC();
      v141 = sub_22BA1044C();

      if (os_log_type_enabled(v140, v141))
      {
        v142 = *(v0 + 440);
        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        *v143 = 138412290;
        v145 = v142;
        v146 = _swift_stdlib_bridgeErrorToNSError();
        *(v143 + 4) = v146;
        *v144 = v146;
        _os_log_impl(&dword_22B92A000, v140, v141, "No retryAfter date for reschedule from %@, marking done and waiting for next sync", v143, 0xCu);
        sub_22B936BEC(v144, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v144, -1, -1);
        MEMORY[0x23189ADD0](v143, -1, -1);
      }

      v147 = *(v0 + 640);
      v148 = *(v0 + 632);
      v149 = *(v0 + 624);
      v150 = *(v0 + 608);
      v151 = *(v0 + 600);
      v152 = *(v0 + 400);

      v153 = (v152 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
      v154 = *(v152 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 24);
      v155 = v153[4];
      sub_22B9358B4(v153, v154);
      (*(v155 + 40))(v154, v155);
      sub_22B936BEC(v151, &unk_27D8D4A90, &qword_22BA126A0);
      sub_22B9440D8(v150);
      v148(v150, 2, 2, v149);
      goto LABEL_72;
    }

    v156 = *(v0 + 664);
    v157 = *(v0 + 400);
    v267 = *(*(v0 + 456) + 32);
    v267(*(v0 + 496), *(v0 + 552), *(v0 + 448));
    sub_22B935B38(v157 + 16, v0 + 64);
    sub_22B935B38(v127, v0 + 104);
    sub_22B935B38(v157 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase, v0 + 144);
    v261 = v156 + 1;
    if (__OFADD__(v156, 1))
    {
      __break(1u);
    }

    else
    {
      v259 = *(v157 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_delegate);
      v158 = *(v157 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_notifiers);
      v159 = *(v0 + 656);
      v160 = *(v0 + 648);
      v161 = *(v0 + 544);
      v162 = *(v0 + 536);
      v163 = *(v0 + 448);
      aBlock = *(*(v0 + 456) + 16);
      aBlock(v161, *(v0 + 496), v163);
      v160(v161, 0, 1, v163);
      v164 = *(*sub_22B9358B4((v0 + 64), *(v0 + 88)) + 80);
      sub_22B94498C(v161, v162);
      v165 = v134(v162, 1, v163);
      v166 = *(v0 + 536);
      v264 = v164;
      v256 = v158;
      if (v165 == 1)
      {

        swift_unknownObjectRetain();
        sub_22B936BEC(v166, &unk_27D8D4A90, &qword_22BA126A0);
LABEL_68:
        v199 = *(v0 + 680);
        sub_22B935B38(v0 + 64, v0 + 184);
        v200 = sub_22BA0FEDC();
        v201 = sub_22BA1046C();
        if (os_log_type_enabled(v200, v201))
        {
          v202 = swift_slowAlloc();
          v203 = swift_slowAlloc();
          v273 = v203;
          *v202 = 136315138;
          v204 = *sub_22B9358B4((v0 + 184), *(v0 + 208));
          v205 = sub_22B9B580C();
          v207 = v206;
          sub_22B936C4C((v0 + 184));
          v208 = sub_22B99153C(v205, v207, &v273);

          *(v202 + 4) = v208;
          _os_log_impl(&dword_22B92A000, v200, v201, "Registering xpc_activity: %s", v202, 0xCu);
          sub_22B936C4C(v203);
          MEMORY[0x23189ADD0](v203, -1, -1);
          MEMORY[0x23189ADD0](v202, -1, -1);
        }

        else
        {

          sub_22B936C4C((v0 + 184));
        }

        v247 = *(v0 + 632);
        v251 = *(v0 + 640);
        v233 = *(v0 + 600);
        v235 = *(v0 + 608);
        v231 = *(v0 + 544);
        bufa = *(v0 + 496);
        v243 = *(v0 + 624);
        v237 = *(v0 + 448);
        v210 = *(v0 + 424);
        v209 = *(v0 + 432);
        v212 = *(v0 + 408);
        v211 = *(v0 + 416);
        v213 = *(v0 + 400);
        v214 = *sub_22B9358B4((v0 + 64), *(v0 + 88));
        v273 = 0;
        v274 = 0xE000000000000000;
        sub_22BA108FC();

        v273 = 0xD000000000000018;
        v274 = 0x800000022BA1C340;
        v215 = sub_22B9B580C();
        MEMORY[0x231899730](v215);

        v216 = *MEMORY[0x277D86238];
        v217 = swift_allocObject();
        *(v217 + 24) = v212;
        swift_unknownObjectWeakInit();
        sub_22B935B38(v0 + 64, v0 + 224);
        sub_22B935B38(v0 + 104, v0 + 264);
        sub_22B935B38(v0 + 144, v0 + 304);
        sub_22B935B38(v211, v0 + 344);
        v218 = swift_allocObject();
        sub_22B92DFEC((v0 + 224), (v218 + 2));
        v218[7] = v264;
        v218[8] = v217;
        sub_22B92DFEC((v0 + 264), (v218 + 9));
        sub_22B92DFEC((v0 + 304), (v218 + 14));
        v218[19] = v259;
        v218[20] = v256;
        v218[21] = v261;
        sub_22B92DFEC((v0 + 344), (v218 + 22));
        v218[27] = v210;
        v218[28] = v209;
        *(v0 + 48) = sub_22B9449FC;
        *(v0 + 56) = v218;
        *(v0 + 16) = MEMORY[0x277D85DD0];
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_22B9B57AC;
        *(v0 + 40) = &unk_283F52AD0;
        v219 = _Block_copy((v0 + 16));
        v220 = *(v0 + 56);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_22B930C20(v210);

        sub_22BA1006C();

        IMRegisterSADAwareXPCActivity();
        _Block_release(v219);
        swift_unknownObjectRelease();
        sub_22B936BEC(v231, &unk_27D8D4A90, &qword_22BA126A0);
        sub_22B936C4C((v0 + 144));
        sub_22B936C4C((v0 + 104));
        sub_22B936BEC(v233, &unk_27D8D4A90, &qword_22BA126A0);
        sub_22B9440D8(v235);

        sub_22B936C4C((v0 + 64));
        v267(v235, bufa, v237);
        v247(v235, 0, 2, v243);
        goto LABEL_72;
      }

      v267(*(v0 + 488), v166, *(v0 + 448));

      swift_unknownObjectRetain();
      sub_22BA0FD3C();
      v168 = ceil(v167);
      if ((*&v168 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v168 > -9.22337204e18)
        {
          if (v168 < 9.22337204e18)
          {
            v169 = *(v0 + 680);
            v170 = v168;
            aBlock(*(v0 + 480), *(v0 + 488), *(v0 + 448));
            v171 = sub_22BA0FEDC();
            v172 = sub_22BA1046C();
            if (os_log_type_enabled(v171, v172))
            {
              v242 = v172;
              v246 = v171;
              v250 = v170;
              v232 = *(v0 + 648);
              v234 = *(v0 + 656);
              v173 = *(v0 + 528);
              v174 = *(v0 + 520);
              v175 = *(v0 + 480);
              v176 = *(v0 + 448);
              v177 = swift_slowAlloc();
              v236 = swift_slowAlloc();
              v273 = v236;
              buf = v177;
              *v177 = 136315394;
              aBlock(v173, v175, v176);
              v232(v173, 0, 1, v176);
              sub_22B94498C(v173, v174);
              v178 = v134(v174, 1, v176);
              v179 = *(v0 + 528);
              v180 = *(v0 + 480);
              if (v178 == 1)
              {
                v182 = *(v0 + 448);
                v181 = *(v0 + 456);
                sub_22B936BEC(*(v0 + 520), &unk_27D8D4A90, &qword_22BA126A0);
                sub_22B936BEC(v179, &unk_27D8D4A90, &qword_22BA126A0);
                v183 = *(v181 + 8);
                v183(v180, v182);
                v184 = 0xE300000000000000;
                v185 = 7104878;
              }

              else
              {
                v189 = *(v0 + 464);
                v190 = *(v0 + 472);
                v191 = *(v0 + 448);
                v192 = *(v0 + 456);
                v267(v190, *(v0 + 520), v191);
                aBlock(v189, v190, v191);
                v193 = sub_22BA1005C();
                v184 = v194;
                v183 = *(v192 + 8);
                v183(v190, v191);
                sub_22B936BEC(v179, &unk_27D8D4A90, &qword_22BA126A0);
                v183(v180, v191);
                v185 = v193;
              }

              v195 = sub_22B99153C(v185, v184, &v273);

              *(buf + 4) = v195;
              *(buf + 6) = 2048;
              v170 = v250;
              *(buf + 14) = v250;
              _os_log_impl(&dword_22B92A000, v246, v242, "Overriding xpc_activity XPC_ACTIVITY_EARLIEST_START_DATE with %s, delay: %lld", buf, 0x16u);
              sub_22B936C4C(v236);
              MEMORY[0x23189ADD0](v236, -1, -1);
              MEMORY[0x23189ADD0](buf, -1, -1);

              v164 = v264;
            }

            else
            {
              v186 = *(v0 + 480);
              v188 = *(v0 + 448);
              v187 = *(v0 + 456);

              v183 = *(v187 + 8);
              v183(v186, v188);
            }

            v196 = *(v0 + 488);
            v197 = *(v0 + 448);
            v198 = *(v0 + 456);
            xpc_dictionary_set_int64(v164, *MEMORY[0x277D86250], v170);
            v183(v196, v197);
            goto LABEL_68;
          }

LABEL_78:
          __break(1u);
        }

LABEL_77:
        __break(1u);
        goto LABEL_78;
      }
    }

    __break(1u);
    goto LABEL_77;
  }

LABEL_23:
  v53 = *(v0 + 608);
  v54 = *(v0 + 400);
  v55 = *(v54 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 24);
  v56 = *(v54 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 32);
  sub_22B9358B4((v54 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity), v55);
  (*(v56 + 40))(v55, v56);
  sub_22B9440D8(v53);
  v269(v53, 2, 2, v7);
  v57 = *sub_22B9358B4((v54 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v54 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  if ((sub_22BA08808() & 1) == 0)
  {
    v58 = *(v57 + 24);
    if (sub_22B92DA70(1u, 0))
    {
      goto LABEL_38;
    }
  }

  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v59 = *(&xmmword_28141AEB0 + 1);
  ObjectType = swift_getObjectType();
  v266 = (*(v59 + 32) + **(v59 + 32));
  v61 = *(*(v59 + 32) + 4);
  v62 = swift_task_alloc();
  *(v0 + 688) = v62;
  *v62 = v0;
  v62[1] = sub_22B93E754;
  v63 = *MEMORY[0x277D85DE8];

  return v266(ObjectType, v59);
}

uint64_t sub_22B93E754()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 688);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B93E87C, 0, 0);
}

uint64_t sub_22B93E87C()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *sub_22B9358B4((v0[50] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v0[50] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v2 = sub_22BA09CBC();
  if (v2)
  {
    [v2 setSyncCancelled_];
  }

  sub_22B936BEC(v0[75], &unk_27D8D4A90, &qword_22BA126A0);
  v3 = v0[84];
  v4 = v0[75];
  v5 = v0[74];
  v6 = v0[73];
  v7 = v0[72];
  v8 = v0[71];
  v9 = v0[70];
  v10 = v0[69];
  v14 = v0[68];
  v15 = v0[67];
  v16 = v0[66];
  v17 = v0[65];
  v18 = v0[64];
  v19 = v0[63];
  v20 = v0[62];
  v21 = v0[61];
  v22 = v0[60];
  v23 = v0[59];
  v24 = v0[58];
  sub_22B944134(v0[76], v0[49]);

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_22B93EA78()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 696);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B945AD4, 0, 0);
}

void sub_22B93EBA0(const char *a1, SEL *a2, char a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!*(*sub_22B9358B4((v3 + 16), *(v3 + 40)) + 17))
  {
    v7 = *sub_22B9358B4((v3 + 16), *(v3 + 40));
    sub_22BA108FC();

    v27 = 0xD000000000000018;
    v28 = 0x800000022BA1C340;
    v8 = sub_22B9B580C();
    MEMORY[0x231899730](v8);

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v9 = sub_22BA0FEFC();
    sub_22B936CA8(v9, qword_28141AD40);

    v10 = sub_22BA0FEDC();
    v11 = sub_22BA1046C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_22B99153C(0xD000000000000018, 0x800000022BA1C340, &v27);
      _os_log_impl(&dword_22B92A000, v10, v11, a1, v12, 0xCu);
      sub_22B936C4C(v13);
      MEMORY[0x23189ADD0](v13, -1, -1);
      MEMORY[0x23189ADD0](v12, -1, -1);
    }

    v14 = [objc_opt_self() sharedScheduler];
    v15 = sub_22BA0FFCC();

    sub_22B9349C8(&qword_27D8D4CD8, qword_22BA135A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13420;
    v27 = 0x746E6567616D69;
    v28 = 0xE700000000000000;
    sub_22BA1086C();
    v27 = 0xD000000000000013;
    v28 = 0x800000022BA1C360;
    sub_22BA1086C();
    v27 = 0x4D53656C69626F4DLL;
    v28 = 0xE900000000000053;
    sub_22BA1086C();
    sub_22B957874(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v17 = sub_22BA1037C();

    v27 = 0;
    [v14 *a2];

    v18 = v27;
    if (v27)
    {
      swift_willThrow();
      v19 = v18;
      v20 = sub_22BA0FEDC();
      v21 = sub_22BA1044C();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = v19;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v25;
        *v23 = v25;
        _os_log_impl(&dword_22B92A000, v20, v21, "Failed to report start to BackgroundSystemTasks: %@", v22, 0xCu);
        sub_22B936BEC(v23, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v23, -1, -1);
        MEMORY[0x23189ADD0](v22, -1, -1);
      }

      sub_22B975FD8(a3, v19, 0, 0);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_22B93F014(_xpc_activity_s *a1, NSObject *a2, void *a3, uint64_t a4, unint64_t a5, void *a6, void *a7, void (*a8)(char *, uint64_t), unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v208 = a4;
  v209 = a8;
  v213 = a7;
  v205 = a5;
  v206 = a6;
  v211 = a3;
  v219 = a2;
  v204 = a12;
  v203 = a11;
  v212 = a10;
  v207 = a9;
  v13 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = v184 - v16;
  v18 = sub_22BA0FD8C();
  v218 = *(v18 - 8);
  v19 = *(v218 + 64);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = v184 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = v184 - v25;
  v27 = sub_22BA0FDCC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = v184 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v34);
  v36 = v184 - v35;
  v217 = a1;
  state = xpc_activity_get_state(a1);
  if (state != 2)
  {
    if (state)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v64 = sub_22BA0FEFC();
      sub_22B936CA8(v64, qword_28141AD40);
      v219 = sub_22BA0FEDC();
      v65 = sub_22BA1045C();
      if (os_log_type_enabled(v219, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_22B92A000, v219, v65, "Incorrect state for xpc_activity_register", v66, 2u);
        MEMORY[0x23189ADD0](v66, -1, -1);
      }

      v67 = v219;
    }

    else
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v38 = sub_22BA0FEFC();
      sub_22B936CA8(v38, qword_28141AD40);
      sub_22B935B38(v219, &v250);
      v39 = sub_22BA0FEDC();
      v40 = sub_22BA1046C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *&v248 = v42;
        *v41 = 136315138;
        v43 = *sub_22B9358B4(&v250, v251);
        v44 = sub_22B9B580C();
        v46 = v45;
        sub_22B936C4C(&v250);
        v47 = sub_22B99153C(v44, v46, &v248);

        *(v41 + 4) = v47;
        _os_log_impl(&dword_22B92A000, v39, v40, "xpc_activity state check-in for %s", v41, 0xCu);
        sub_22B936C4C(v42);
        MEMORY[0x23189ADD0](v42, -1, -1);
        MEMORY[0x23189ADD0](v41, -1, -1);
      }

      else
      {

        sub_22B936C4C(&v250);
      }

      xpc_activity_set_criteria(v217, v211);
    }

    return;
  }

  v216 = v28;
  v210 = v33;
  v211 = v23;
  v199 = v17;
  v202 = v36;
  v214 = v18;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v48 = sub_22BA0FEFC();
  v49 = sub_22B936CA8(v48, qword_28141AD40);
  sub_22B935B38(v219, &v250);
  v184[1] = v49;
  v50 = sub_22BA0FEDC();
  v51 = sub_22BA1046C();
  v52 = os_log_type_enabled(v50, v51);
  v215 = v27;
  v200 = v26;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v248 = v54;
    *v53 = 136315138;
    v55 = *sub_22B9358B4(&v250, v251);
    v56 = sub_22B9B580C();
    v58 = v57;
    sub_22B936C4C(&v250);
    v59 = sub_22B99153C(v56, v58, &v248);

    *(v53 + 4) = v59;
    _os_log_impl(&dword_22B92A000, v50, v51, "xpc_activity state run for %s", v53, 0xCu);
    sub_22B936C4C(v54);
    MEMORY[0x23189ADD0](v54, -1, -1);
    v60 = v53;
    v61 = v218;
    v27 = v215;
    v62 = v216;
    v63 = v200;
    MEMORY[0x23189ADD0](v60, -1, -1);
  }

  else
  {
    v63 = v26;

    sub_22B936C4C(&v250);
    v62 = v216;
    v61 = v218;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v69 = v214;
  v70 = v202;
  if (Strong)
  {
    v71 = Strong;
    (*(v62 + 16))(v202, Strong + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_identifier, v27);
    v72 = v61;
    v73 = *(v61 + 16);
    v74 = v69;
    v73(v63, v71 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_startDate, v69);
    swift_unknownObjectRelease();
  }

  else
  {
    v72 = v61;
    v74 = v214;
    sub_22BA0FDBC();
    sub_22BA0FD7C();
  }

  v75 = v212;
  v196 = type metadata accessor for XPCActivity();
  v76 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v201 = xmmword_28141AEB0;
  sub_22B935B38(v219, &v250);
  v77 = *(v62 + 16);
  v193 = v62 + 16;
  v194 = v77;
  v77(v210, v70, v27);
  v78 = *(v72 + 16);
  v191 = v72 + 16;
  v192 = v78;
  v78(v211, v63, v74);
  sub_22B935B38(v205, &v248);
  sub_22B935B38(v206, v247);
  sub_22B935B38(v75, v244);
  sub_22B943D3C(v244, v245);
  v242 = &type metadata for DatabaseRecordPersistence;
  v243 = &off_283F55858;
  v206 = type metadata accessor for CountStore();
  v79 = swift_allocObject();
  sub_22B943D3C(v241, &type metadata for DatabaseRecordPersistence);
  v239 = &type metadata for DatabaseRecordPersistence;
  v240 = &off_283F55858;

  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  sub_22B92DFEC(&v238, v79 + 112);
  sub_22B936C4C(v241);
  sub_22B936C4C(v244);
  v205 = sub_22B9E43A0(1, 1, 0);
  v80 = [objc_opt_self() defaultManager];
  v186 = v80;
  v81 = type metadata accessor for SyncTelemetryReporter();
  v208 = v76;
  v82 = v81;
  v185 = v81;
  v83 = [objc_allocWithZone(v81) init];
  v187 = v83;
  v84 = v251;
  v85 = sub_22B943D3C(&v250, v251);
  v198 = v184;
  v86 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v85, v85);
  v88 = (v184 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v89 + 16))(v88);
  v90 = v249;
  v91 = sub_22B943D3C(&v248, v249);
  v197 = v184;
  v92 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v91, v91);
  v94 = (v184 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v95 + 16))(v94);
  v96 = *v88;
  v97 = *v94;
  v98 = type metadata accessor for SyncJob();
  v246 = &off_283F54680;
  v245 = v98;
  v244[0] = v96;
  v243 = &off_283F52B80;
  v242 = v196;
  v241[0] = v76;
  v99 = type metadata accessor for CloudState();
  v240 = &off_283F589F0;
  v239 = v99;
  *&v238 = v97;
  v237 = &off_283F53B48;
  v236 = &type metadata for FileManagerProvider;
  v235[0] = v80;
  v234 = &off_283F57D70;
  v233 = v82;
  v232[0] = v83;
  v231 = &off_283F57A60;
  v230 = v206;
  v229[0] = v79;
  v100 = type metadata accessor for SyncContext();
  v101 = *(v100 + 48);
  v102 = *(v100 + 52);
  v103 = swift_allocObject();
  v104 = sub_22B943D3C(v244, v98);
  v196 = v184;
  v105 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v104, v104);
  v107 = (v184 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v108 + 16))(v107);
  v109 = v239;
  v110 = sub_22B943D3C(&v238, v239);
  v195 = v184;
  v111 = *(v109[-1].Description + 8);
  MEMORY[0x28223BE20](v110, v110);
  v113 = (v184 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v114 + 16))(v113);
  v115 = v236;
  v116 = sub_22B943D3C(v235, v236);
  v190 = v184;
  v117 = *(v115[-1].Description + 8);
  MEMORY[0x28223BE20](v116, v116);
  v119 = (v184 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v120 + 16))(v119);
  v121 = v233;
  v122 = sub_22B943D3C(v232, v233);
  v189 = v184;
  v123 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v122, v122);
  v125 = (v184 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v126 + 16))(v125);
  v127 = v230;
  v128 = sub_22B943D3C(v229, v230);
  v188 = v184;
  v129 = *(*(v127 - 1) + 64);
  MEMORY[0x28223BE20](v128, v128);
  v131 = (v184 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v132 + 16))(v131);
  v133 = *v107;
  v134 = *v113;
  v135 = *v119;
  v136 = *v125;
  v137 = *v131;
  v228 = &off_283F54680;
  v227 = v98;
  v226[0] = v133;
  v225[3] = v99;
  v225[4] = &off_283F589F0;
  v225[0] = v134;
  v224[4] = &off_283F53B48;
  v224[3] = &type metadata for FileManagerProvider;
  v224[0] = v135;
  v223[3] = v185;
  v223[4] = &off_283F57D70;
  v223[0] = v136;
  v221 = v206;
  v222 = &off_283F57A60;
  *&v220 = v137;
  sub_22B935B38(v226, v103 + 16);
  v194(v103 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_identifier, v210, v215);
  v192(v103 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_startDate, v211, v214);
  sub_22B935B38(v241, v103 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
  sub_22B935B38(v225, v103 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
  sub_22B935B38(v247, v103 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase);
  *(v103 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase) = v201;
  *(v103 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_delegate) = v213;
  *(v103 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_notifiers) = v209;
  *(v103 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_attemptCount) = v207;
  type metadata accessor for OSActivity();
  v138 = swift_allocObject();
  *(v138 + 24) = 0;
  *(v138 + 32) = 0;
  v139 = qword_2814160E0;

  v206 = v186;
  *&v201 = v187;
  swift_unknownObjectRetain();

  if (v139 != -1)
  {
    swift_once();
  }

  v140 = v205;
  v207 = v205 >> 24;
  *(v138 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v141 = swift_unknownObjectRetain();
  os_activity_scope_enter(v141, (v138 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  *(v103 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_osActivity) = v138;
  sub_22B935B38(v224, v103 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_fileProvider);
  sub_22B935B38(v223, v103 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService);
  LODWORD(v194) = *(*sub_22B9358B4(v226, v227) + 17);
  type metadata accessor for SyncStatsCollector();
  v142 = swift_allocObject();
  swift_defaultActor_initialize();
  v143 = sub_22B9BB998(&unk_283F509E8);
  v144 = sub_22B9BB998(&unk_283F50A68);
  v145 = sub_22B9BB998(&unk_283F50AE8);
  v146 = sub_22B9BB998(&unk_283F50B68);
  v147 = sub_22B9BB998(&unk_283F50BE8);

  sub_22B936C4C(v247);
  v148 = *(v218 + 8);
  v149 = v214;
  v218 += 8;
  v209 = v148;
  v148(v211, v214);
  v150 = *(v216 + 8);
  v216 += 8;
  v211 = v150;
  (v150)(v210, v215);
  sub_22B936C4C(v241);
  sub_22B936C4C(v223);
  sub_22B936C4C(v224);
  sub_22B936C4C(v225);
  *(v142 + 112) = v194;
  *(v142 + 120) = 0;
  *(v142 + 128) = 0;
  *(v142 + 136) = 0;
  *(v142 + 144) = v143;
  *(v142 + 152) = v144;
  v151 = MEMORY[0x277D84F90];
  *(v142 + 160) = v145;
  *(v142 + 168) = v146;
  *(v142 + 176) = v147;
  *(v142 + 184) = v151;
  *(v142 + 192) = v151;
  *(v103 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector) = v142;
  sub_22B92DFEC(&v220, v103 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore);
  v152 = (v103 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_devicePolicy);
  *v152 = v140 & 1;
  v152[1] = BYTE1(v140) & 1;
  v152[2] = BYTE2(v140) & 1;
  v152[3] = v207;
  v152[4] = BYTE4(v140) & 1;
  sub_22B936C4C(v226);
  sub_22B936C4C(v229);
  sub_22B936C4C(v232);
  sub_22B936C4C(v235);
  sub_22B936C4C(&v238);
  sub_22B936C4C(v244);
  sub_22B936C4C(&v248);
  sub_22B936C4C(&v250);
  sub_22B939184(0x6974617669746341, 0xED00002E2E2E676ELL);
  type metadata accessor for SyncCoordinator();

  sub_22B9B51D4(v153, &off_283F56AF0);
  v154 = v149;
  v155 = v215;

  v156 = (v103 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
  v157 = sub_22B9358B4((v103 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v103 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v158 = *(*v157 + 56);
  v159 = v199;
  if (v158)
  {
    [*(*v157 + 56) startChanges];
    v160 = *sub_22B9358B4(v219, v219[3].isa);

    v154 = v214;
    sub_22B92E064(v161, v160);

    [v158 commitChanges];
    v162 = v213;
    if (!v213)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v182 = *sub_22B9358B4(v219, v219[3].isa);

  sub_22B92E064(v183, v182);

  v162 = v213;
  if (v213)
  {
LABEL_30:
    *&v250 = 0x2E636E7973;
    *(&v250 + 1) = 0xE500000000000000;
    v163 = *sub_22B9358B4((v103 + 16), *(v103 + 40));
    v164 = sub_22B9B580C();
    MEMORY[0x231899730](v164);

    MEMORY[0x231899730](46, 0xE100000000000000);
    sub_22B944034();
    v165 = sub_22BA10C1C();
    MEMORY[0x231899730](v165);

    v166 = sub_22BA0FFCC();

    v154 = v214;
    v167 = sub_22BA0FDAC();
    [v162 syncCoordinatorStartedSyncWithName:v166 identifier:v167];
  }

LABEL_31:
  sub_22B939184(0x69756E69746E6F43, 0xEF636E795320676ELL);
  if (xpc_activity_set_state(v217, 4))
  {
    v168 = sub_22BA1030C();
    (*(*(v168 - 8) + 56))(v159, 1, 1, v168);
    sub_22B935B38(v219, &v250);
    sub_22B935B38(v212, &v248);
    v169 = swift_allocObject();
    v169[2] = 0;
    v169[3] = 0;
    v169[4] = v103;
    sub_22B92DFEC(&v250, (v169 + 5));
    sub_22B92DFEC(&v248, (v169 + 10));
    v171 = v203;
    v170 = v204;
    v169[15] = v203;
    v169[16] = v170;

    sub_22B930C20(v171);
    sub_22B9B5500(0, 0, v159, &unk_22BA13600, v169);

    v209(v200, v154);
    (v211)(v202, v155);
  }

  else
  {
    sub_22B9BBA8C(MEMORY[0x277D84F90]);
    sub_22B939308();

    v172 = sub_22B9358B4(v156, v156[3]);
    v173 = *v172;
    v174 = *(*v172 + 56);
    if (v174)
    {
      [v174 startChanges];
    }

    sub_22BA08EA4(1);
    v175 = *(v173 + 56);
    v176 = v211;
    v177 = v209;
    if (v175)
    {
      [v175 setSyncJobStateWithState_];
      v178 = *(v173 + 56);
      if (v178)
      {
        [v178 commitChanges];
      }
    }

    v179 = sub_22BA0FEDC();
    v180 = sub_22BA1045C();
    if (os_log_type_enabled(v179, v180))
    {
      v181 = swift_slowAlloc();
      *v181 = 0;
      _os_log_impl(&dword_22B92A000, v179, v180, "We did not set the state of activity to CONTINUE successfully", v181, 2u);
      MEMORY[0x23189ADD0](v181, -1, -1);
    }

    v177(v200, v154);
    v176(v202, v155);
  }
}

uint64_t sub_22B9407BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v10;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  return MEMORY[0x2822009F8](sub_22B9407EC, 0, 0);
}

uint64_t sub_22B9407EC()
{
  v57 = v0;
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  sub_22B9BBA8C(MEMORY[0x277D84F90]);
  sub_22B939308();

  *(v0 + 72) = v1;
  v3 = v1;
  sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    if (v5 >= 5)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 96);
      v14 = *(v0 + 80);
      v15 = sub_22BA0FEFC();
      sub_22B936CA8(v15, qword_28141AD40);
      sub_22B935B38(v13, v0 + 16);
      sub_22B944AC0(v5);

      v16 = sub_22BA0FEDC();
      v17 = sub_22BA1044C();
      sub_22B944AB0(v5);

      if (!os_log_type_enabled(v16, v17))
      {
        sub_22B944AB0(v5);

        sub_22B936C4C((v0 + 16));
        v12 = *(v0 + 104);
        if (v12)
        {
          goto LABEL_15;
        }

        goto LABEL_19;
      }

      v18 = *(v0 + 80);
      v19 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v54 = v52;
      *v19 = 136315650;
      v51 = v17;
      v20 = *sub_22B9358B4((v0 + 16), *(v0 + 40));
      v21 = sub_22B9B580C();
      v23 = v22;
      sub_22B936C4C((v0 + 16));
      v24 = sub_22B99153C(v21, v23, &v54);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      v55 = 0x2E636E7973;
      v56 = 0xE500000000000000;
      v25 = *sub_22B9358B4((v5 + 16), *(v5 + 40));
      v26 = sub_22B9B580C();
      MEMORY[0x231899730](v26);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v27 = sub_22BA10C1C();
      MEMORY[0x231899730](v27);

      v28 = sub_22B99153C(v55, v56, &v54);

      *(v19 + 14) = v28;
      *(v19 + 22) = 2080;
      v55 = 0x2E636E7973;
      v56 = 0xE500000000000000;
      v29 = *sub_22B9358B4((v18 + 16), *(v18 + 40));
      v30 = sub_22B9B580C();
      MEMORY[0x231899730](v30);

      MEMORY[0x231899730](46, 0xE100000000000000);
      v31 = sub_22BA10C1C();
      MEMORY[0x231899730](v31);

      v32 = sub_22B99153C(v55, v56, &v54);

      *(v19 + 24) = v32;
      _os_log_impl(&dword_22B92A000, v16, v51, "Tried to kick %s but another sync was already going %s %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v52, -1, -1);
      MEMORY[0x23189ADD0](v19, -1, -1);
      sub_22B944AB0(v5);

LABEL_14:
      v12 = *(v0 + 104);
      if (v12)
      {
        goto LABEL_15;
      }

LABEL_19:
      if (!xpc_activity_set_state(*(v0 + 120), 5))
      {
        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v39 = *(v0 + 80);
        v40 = sub_22BA0FEFC();
        sub_22B936CA8(v40, qword_28141AD40);

        v41 = sub_22BA0FEDC();
        v42 = sub_22BA1044C();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = *(v0 + 80);
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *v44 = 136315138;
          v54 = v45;
          v55 = 0x2E636E7973;
          v56 = 0xE500000000000000;
          v46 = *sub_22B9358B4((v43 + 16), *(v43 + 40));
          v47 = sub_22B9B580C();
          MEMORY[0x231899730](v47);

          MEMORY[0x231899730](46, 0xE100000000000000);
          sub_22BA0FDCC();
          sub_22B944034();
          v48 = sub_22BA10C1C();
          MEMORY[0x231899730](v48);

          v49 = sub_22B99153C(v55, v56, &v54);

          *(v44 + 4) = v49;
          _os_log_impl(&dword_22B92A000, v41, v42, "Failed to set activity state to done %s", v44, 0xCu);
          sub_22B936C4C(v45);
          MEMORY[0x23189ADD0](v45, -1, -1);
          MEMORY[0x23189ADD0](v44, -1, -1);
        }
      }

      v50 = *(v0 + 8);

      return v50();
    }

    v6 = *(v0 + 64);
    sub_22B944AB0(*(v0 + 56));
  }

  v7 = sub_22B9358B4((*(v0 + 80) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 80) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v8 = *v7;
  v9 = *(*v7 + 56);
  if (v9)
  {
    [v9 startChanges];
  }

  sub_22BA08EA4(1);
  v10 = *(v8 + 56);
  if (!v10)
  {
    goto LABEL_14;
  }

  [v10 setSyncJobStateWithState_];
  v11 = *(v8 + 56);
  if (!v11)
  {
    goto LABEL_14;
  }

  [v11 commitChanges];
  v12 = *(v0 + 104);
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_15:
  v33 = *(v0 + 112);
  v35 = *(v0 + 80);
  v34 = *(v0 + 88);
  v53 = (v12 + *v12);
  v36 = v12[1];
  v37 = swift_task_alloc();
  *(v0 + 128) = v37;
  *v37 = v0;
  v37[1] = sub_22B940F1C;

  return (v53)(v35, &off_283F56AF0, 1, v34);
}

uint64_t sub_22B940F1C()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B941018, 0, 0);
}

uint64_t sub_22B941018()
{
  v15 = v0;
  if (!xpc_activity_set_state(*(v0 + 120), 5))
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 80);
    v2 = sub_22BA0FEFC();
    sub_22B936CA8(v2, qword_28141AD40);

    v3 = sub_22BA0FEDC();
    v4 = sub_22BA1044C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 80);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 136315138;
      v14[0] = v7;
      v14[1] = 0x2E636E7973;
      v14[2] = 0xE500000000000000;
      v8 = *sub_22B9358B4((v5 + 16), *(v5 + 40));
      v9 = sub_22B9B580C();
      MEMORY[0x231899730](v9);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v10 = sub_22BA10C1C();
      MEMORY[0x231899730](v10);

      v11 = sub_22B99153C(0x2E636E7973, 0xE500000000000000, v14);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_22B92A000, v3, v4, "Failed to set activity state to done %s", v6, 0xCu);
      sub_22B936C4C(v7);
      MEMORY[0x23189ADD0](v7, -1, -1);
      MEMORY[0x23189ADD0](v6, -1, -1);
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22B941244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  v9 = *(*(type metadata accessor for HandleErrorOutcome() - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9412F4, 0, 0);
}

uint64_t sub_22B9412F4()
{
  v32 = v0;
  v1 = v0[10];
  sub_22B939184(0x676E696E6E7552, 0xE700000000000000);
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v3 = v0[10];
  v2 = v0[11];
  v4 = sub_22BA0FEFC();
  v0[18] = sub_22B936CA8(v4, qword_28141AD40);
  sub_22B935B38(v2, (v0 + 2));

  v5 = sub_22BA0FEDC();
  v6 = sub_22BA1046C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[10];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31[0] = v9;
    *v8 = 136315394;
    v10 = *sub_22B9358B4(v0 + 2, v0[5]);
    v11 = sub_22B9B580C();
    v13 = v12;
    sub_22B936C4C(v0 + 2);
    v14 = sub_22B99153C(v11, v13, v31);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    sub_22BA0FDCC();
    sub_22B944034();
    v15 = sub_22BA10C1C();
    v17 = sub_22B99153C(v15, v16, v31);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_22B92A000, v5, v6, "Running handler for %s %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  else
  {

    sub_22B936C4C(v0 + 2);
  }

  v18 = [objc_opt_self() sharedInstance];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 isInternalInstall];

    if (v20)
    {
      sub_22B9441FC((v0[10] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), 0xD000000000000012, 0x800000022BA1C320);
    }
  }

  v21 = v0[11];
  v22 = v21[3];
  v23 = v21[4];
  sub_22B9358B4(v21, v22);
  v24 = *(*(v23 + 8) + 8);
  v25 = *(v24 + 40);
  v30 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  v0[19] = v27;
  *v27 = v0;
  v27[1] = sub_22B9417C4;
  v28 = v0[10];

  return (v30)(v28, &off_283F56AF0, v22, v24);
}

uint64_t sub_22B9417C4()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B9418C0, 0, 0);
}

uint64_t sub_22B9418C0()
{
  v1 = *sub_22B9358B4(*(v0 + 88), *(*(v0 + 88) + 24));
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_22B941980;
  v3 = *(v0 + 80);

  return sub_22B93BD74(v3, &off_283F56AF0);
}

uint64_t sub_22B941980(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *(*v3 + 160);
  v7 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {
    v8 = sub_22B942DF0;
  }

  else
  {
    *(v5 + 248) = a2;
    v8 = sub_22B941AA8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22B941AA8()
{
  v1 = v0[11];
  v2 = v1[3];
  v3 = v1[4];
  sub_22B9358B4(v1, v2);
  v4 = *(*(v3 + 8) + 8);
  v5 = *(v4 + 56);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_22B941BE4;
  v8 = v0[10];

  return (v10)(v8, &off_283F56AF0, v2, v4);
}

uint64_t sub_22B941BE4()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B941CE0, 0, 0);
}

uint64_t sub_22B941CE0()
{
  v1 = *(v0 + 136);
  v2 = sub_22B9349C8(&qword_27D8D4CC8, &qword_22BA13580);
  (*(*(v2 - 8) + 56))(v1, 2, 2, v2);
  v3 = *(v0 + 248);
  v4 = *(v0 + 168);
  *(v0 + 184) = 0;
  v5 = *(*(v0 + 80) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_osActivity);
  swift_beginAccess();
  os_activity_scope_leave((v5 + 24));
  swift_endAccess();
  sub_22B9BBA8C(MEMORY[0x277D84F90]);
  sub_22B939308();

  type metadata accessor for SyncCoordinator();
  sub_22B9B5378();
  if (v4)
  {
    v6 = *(v0 + 144);
    v7 = sub_22BA0FEDC();
    v8 = sub_22BA1045C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B92A000, v7, v8, "Failed to clear active sync state!", v9, 2u);
      MEMORY[0x23189ADD0](v9, -1, -1);
    }
  }

  v10 = *(v0 + 128);
  sub_22B944198(*(v0 + 136), v10);
  v11 = sub_22B9349C8(&qword_27D8D4CC8, &qword_22BA13580);
  v12 = (*(*(v11 - 8) + 48))(v10, 2, v11);
  v13 = *(v0 + 104);
  if (v12)
  {
    if (v12 == 1)
    {
      if (v13)
      {
        v14 = *(v0 + 112);
        v15 = *(v0 + 80);
        v16 = *(v0 + 104);
        v40 = (v13 + *v13);
        v17 = v13[1];
        v18 = swift_task_alloc();
        *(v0 + 200) = v18;
        *v18 = v0;
        v18[1] = sub_22B9423B8;
        v19 = v15;
        v20 = 64;
LABEL_13:

        return (v40)(v19, &off_283F56AF0, v20, 0);
      }
    }

    else
    {
      v26 = (*(v0 + 80) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
      v27 = v26[3];
      v28 = v26[4];
      sub_22B9358B4(v26, v27);
      (*(v28 + 40))(v27, v28);
      if (v13)
      {
        v29 = *(v0 + 112);
        v30 = *(v0 + 80);
        v40 = (*(v0 + 104) + **(v0 + 104));
        v31 = *(*(v0 + 104) + 4);
        v32 = swift_task_alloc();
        *(v0 + 208) = v32;
        *v32 = v0;
        v32[1] = sub_22B942540;
        v20 = v3 & 1;
        v19 = v30;
        goto LABEL_13;
      }
    }

    sub_22B9440D8(*(v0 + 136));
  }

  else
  {
    if (v13)
    {
      v21 = *(v0 + 112);
      v22 = *(v0 + 80);
      v23 = *(v0 + 104);
      v40 = (v13 + *v13);
      v24 = v13[1];
      v25 = swift_task_alloc();
      *(v0 + 192) = v25;
      *v25 = v0;
      v25[1] = sub_22B9421F4;
      v19 = v22;
      v20 = 128;
      goto LABEL_13;
    }

    sub_22B9440D8(*(v0 + 136));

    v34 = *(v0 + 128);
    v35 = sub_22BA0FD8C();
    (*(*(v35 - 8) + 8))(v34, v35);
  }

  v37 = *(v0 + 128);
  v36 = *(v0 + 136);
  v38 = *(v0 + 120);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_22B9421F4()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B9422F0, 0, 0);
}

uint64_t sub_22B9422F0()
{
  v1 = *(v0 + 136);

  sub_22B9440D8(v1);
  v2 = *(v0 + 128);
  v3 = sub_22BA0FD8C();
  (*(*(v3 - 8) + 8))(v2, v3);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22B9423B8()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B9424B4, 0, 0);
}

uint64_t sub_22B9424B4()
{
  v1 = *(v0 + 136);

  sub_22B9440D8(v1);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22B942540()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B945AD0, 0, 0);
}

uint64_t sub_22B94263C()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[29] = v4;
  *v4 = v3;
  v4[1] = sub_22B9427EC;
  v5 = v1[27];
  v6 = v1[15];
  v7 = v1[14];
  v8 = v1[13];
  v9 = v1[12];
  v10 = v1[10];

  return sub_22B93C914(v6, v10, &off_283F56AF0, v9, v8, v7, v5);
}

uint64_t sub_22B9427EC()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v5 = sub_22B942F4C;
  }

  else
  {
    v5 = sub_22B942920;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B942920()
{
  sub_22B944134(v0[15], v0[17]);
  v1 = v0[30];
  v2 = v0[27];
  v0[23] = v2;
  v3 = *(v0[10] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_osActivity);
  swift_beginAccess();
  os_activity_scope_leave((v3 + 24));
  swift_endAccess();
  sub_22B9BBA8C(MEMORY[0x277D84F90]);
  sub_22B939308();

  type metadata accessor for SyncCoordinator();
  sub_22B9B5378();
  if (v1)
  {
    v4 = v0[18];
    v5 = sub_22BA0FEDC();
    v6 = sub_22BA1045C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B92A000, v5, v6, "Failed to clear active sync state!", v7, 2u);
      MEMORY[0x23189ADD0](v7, -1, -1);
    }
  }

  v8 = v0[16];
  sub_22B944198(v0[17], v8);
  v9 = sub_22B9349C8(&qword_27D8D4CC8, &qword_22BA13580);
  v10 = (*(*(v9 - 8) + 48))(v8, 2, v9);
  v11 = v0[13];
  if (v10)
  {
    if (v10 == 1)
    {
      if (v11)
      {
        v12 = v0[14];
        v13 = v0[10];
        v14 = v0[13];
        v38 = (v11 + *v11);
        v15 = v11[1];
        v16 = swift_task_alloc();
        v0[25] = v16;
        *v16 = v0;
        v16[1] = sub_22B9423B8;
        v17 = v13;
        v18 = 64;
LABEL_13:

        return (v38)(v17, &off_283F56AF0, v18, v2);
      }
    }

    else
    {
      v24 = (v0[10] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
      v25 = v24[3];
      v26 = v24[4];
      sub_22B9358B4(v24, v25);
      (*(v26 + 40))(v25, v26);
      if (v11)
      {
        v27 = v0[14];
        v28 = v0[10];
        v38 = (v0[13] + *v0[13]);
        v29 = *(v0[13] + 4);
        v30 = swift_task_alloc();
        v0[26] = v30;
        *v30 = v0;
        v30[1] = sub_22B942540;
        v17 = v28;
        v18 = 1;
        goto LABEL_13;
      }
    }

    sub_22B9440D8(v0[17]);
  }

  else
  {
    if (v11)
    {
      v19 = v0[14];
      v20 = v0[10];
      v21 = v0[13];
      v38 = (v11 + *v11);
      v22 = v11[1];
      v23 = swift_task_alloc();
      v0[24] = v23;
      *v23 = v0;
      v23[1] = sub_22B9421F4;
      v17 = v20;
      v18 = 128;
      goto LABEL_13;
    }

    sub_22B9440D8(v0[17]);

    v32 = v0[16];
    v33 = sub_22BA0FD8C();
    (*(*(v33 - 8) + 8))(v32, v33);
  }

  v35 = v0[16];
  v34 = v0[17];
  v36 = v0[15];

  v37 = v0[1];

  return v37();
}

uint64_t sub_22B942DF0()
{
  v1 = v0[21];
  v0[27] = v1;
  v2 = v0[11];
  v3 = v2[3];
  v4 = v2[4];
  sub_22B9358B4(v2, v3);
  v5 = *(*(v4 + 8) + 8);
  v6 = *(v5 + 56);
  v7 = v1;
  v12 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v0[28] = v9;
  *v9 = v0;
  v9[1] = sub_22B94263C;
  v10 = v0[10];

  return (v12)(v10, &off_283F56AF0, v3, v5);
}

uint64_t sub_22B942F4C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);

  v4 = *(v0 + 8);
  v5 = *(v0 + 240);

  return v4();
}

uint64_t sub_22B942FD8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_22B942FFC, 0, 0);
}

uint64_t sub_22B942FFC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 96);
  v5 = *(v4 + 97);
  *(v3 + 232) = v5;
  v6 = *(v4 + 88);
  *(v3 + 104) = v6;
  v7 = *(v6 + 16);
  *(v3 + 112) = v7;
  if (v7)
  {
    v8 = MEMORY[0x277D84F90];
    *(v3 + 192) = 0;
    *(v3 + 200) = v8;
    *(v3 + 176) = 0;
    *(v3 + 184) = 0;
    *(v3 + 233) = v5 == 2;
    if (*(v6 + 16))
    {
      sub_22B935B38(v6 + 32, v3 + 16);
      v10 = *(v3 + 40);
      v9 = *(v3 + 48);
      sub_22B9358B4((v3 + 16), v10);
      v11 = swift_task_alloc();
      *(v3 + 208) = v11;
      *v11 = v3;
      v11[1] = sub_22B943600;
      v13 = *(v3 + 80);
      v12 = *(v3 + 88);

      return sub_22B97EDC0(v13, v12, v10, v9);
    }

    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v15 = MEMORY[0x277D84F90];
  v16 = *(MEMORY[0x277D84F90] + 16);
  *(v3 + 120) = MEMORY[0x277D84F90];
  *(v3 + 128) = v16;
  if (v16)
  {
    v17 = *(v15 + 32);
    *(v3 + 136) = v17;
    if (v16 != 1)
    {
      v25 = *(v3 + 80);
      v26 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector;
      *(v3 + 144) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      *(v3 + 152) = *(v25 + v26);
      v27 = v17;
      *(v3 + 160) = 1;
      v28 = *(v3 + 152);
      v29 = *(*(v3 + 120) + 40);
      *(v3 + 168) = v29;

      v30 = v29;
      a1 = sub_22B943268;
      a2 = v28;
      a3 = 0;

      return MEMORY[0x2822009F8](a1, a2, a3);
    }

    v18 = v17;
    v19 = *(v3 + 136);
    v20 = *(v3 + 120);
    swift_willThrow();

    v21 = *(v3 + 136);
    v22 = *(v3 + 8);

    return v22();
  }

  else
  {
    v23 = v5 == 2;

    v24 = *(v3 + 8);

    return v24(0, v23);
  }
}

uint64_t sub_22B943268()
{
  v1 = *(v0 + 152);
  swift_beginAccess();
  v2 = *(v1 + 184);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 184) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v0 + 152);
    v2 = sub_22B97FA40(0, v2[2] + 1, 1, v2);
    *(v9 + 184) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_22B97FA40((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  v2[2] = v5 + 1;
  v2[v5 + 4] = v6;
  *(v7 + 184) = v2;
  swift_endAccess();
  v8 = v6;

  return MEMORY[0x2822009F8](sub_22B94337C, 0, 0);
}

uint64_t sub_22B94337C()
{
  v30 = v0;
  v1 = (*(v0 + 80) + *(v0 + 144));
  v2 = sub_22B9358B4(v1, v1[3]);
  v3 = *(*v2 + 56);
  if (v3)
  {
    v4 = *(v0 + 168);
    v5 = *(v0 + 128);
    v6 = *(v0 + 160) + 1;
    v7 = *(*v2 + 56);
    swift_unknownObjectRetain();
    v8 = sub_22BA0FB5C();
    [v3 appendError_];
    swift_unknownObjectRelease();

    if (v6 == v5)
    {
LABEL_3:
      v9 = *(v0 + 120);

      v10 = *(v0 + 136);
      v11 = *(v0 + 120);
      swift_willThrow();

      v12 = *(v0 + 136);
      v13 = *(v0 + 8);

      return v13();
    }
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v15 = sub_22BA0FEFC();
    sub_22B936CA8(v15, qword_28141AD40);
    v16 = sub_22BA0FEDC();
    v17 = sub_22BA1044C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315138;
      v20 = sub_22B97D720();
      v22 = sub_22B99153C(v20, v21, &v29);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_22B92A000, v16, v17, "Encountered error setting sync date: %s", v18, 0xCu);
      sub_22B936C4C(v19);
      MEMORY[0x23189ADD0](v19, -1, -1);
      MEMORY[0x23189ADD0](v18, -1, -1);
    }

    v23 = *(v0 + 128);
    v24 = *(v0 + 160) + 1;

    if (v24 == v23)
    {
      goto LABEL_3;
    }
  }

  v25 = *(v0 + 152);
  v26 = *(v0 + 160) + 1;
  *(v0 + 160) = v26;
  v27 = *(*(v0 + 120) + 8 * v26 + 32);
  *(v0 + 168) = v27;
  v28 = v27;

  return MEMORY[0x2822009F8](sub_22B943268, v25, 0);
}