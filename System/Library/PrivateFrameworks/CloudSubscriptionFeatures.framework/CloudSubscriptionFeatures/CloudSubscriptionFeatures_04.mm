id sub_1DF4DEADC()
{
  v1 = *(v0 + 74);
  v2 = *(v0 + 976);
  v3 = *(v0 + 928);
  v4 = (*(v0 + 936) + *(v0 + 968));
  __swift_destroy_boxed_opaque_existential_0((v0 + 832));
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  sub_1DF564DF4();

  *(v0 + 912) = v1;
  v5 = sub_1DF5650A4();
  MEMORY[0x1E12D62C0](v5);

  sub_1DF48AD44(0, v2, 0xD000000000000014, 0x80000001DF571FC0);

  sub_1DF4E4A2C();
  v6 = swift_allocError();
  *v7 = v1;

  v8 = v6;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v10 = result;
    v11 = MobileGestalt_copy_regionCode_obj();

    if (v11)
    {
      v12 = sub_1DF564944();
      v14 = v13;

      if (v12 == 18499 && v14 == 0xE200000000000000)
      {

        v15 = 1;
      }

      else
      {
        v15 = sub_1DF5650D4();
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = *(v0 + 74);
    v17 = *(v0 + 976);
    v18 = *(v0 + 960);
    v19 = *(v0 + 952);
    v25 = *(v0 + 944);
    v20 = *(v0 + 928);
    v21 = *(v0 + 920);

    *(v0 + 400) = 0;
    *(v0 + 408) = v21;
    *(v0 + 416) = v20;
    *(v0 + 424) = 0;
    *(v0 + 432) = 0;
    *(v0 + 440) = 1025;
    *(v0 + 448) = v6;
    *(v0 + 456) = v15 & 1;
    v22 = *(v0 + 416);
    *(v0 + 16) = *(v0 + 400);
    *(v0 + 32) = v22;
    *(v0 + 48) = *(v0 + 432);
    *(v0 + 57) = *(v0 + 441);
    swift_allocError();
    *v23 = v16;
    swift_willThrow();
    sub_1DF4E28F8((v0 + 16), sub_1DF47FD50);

    sub_1DF4E4A80(v0 + 400);
    (*(v19 + 8))(v18, v25);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4DEF44(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1DF564944();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1DF4E5744;

  return sub_1DF4DCB98(v5, v7);
}

uint64_t sub_1DF4DF018(uint64_t a1, uint64_t a2)
{
  v3[117] = v2;
  v3[116] = a2;
  v3[115] = a1;
  v4 = sub_1DF564704();
  v3[118] = v4;
  v5 = *(v4 - 8);
  v3[119] = v5;
  v6 = *(v5 + 64) + 15;
  v3[120] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4DF0E0, 0, 0);
}

char *sub_1DF4DF0E0()
{
  v190 = v0;
  v1 = v0[120];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[115];
  v5 = OBJC_IVAR___CSFTicketManager_signposter;
  v0[121] = OBJC_IVAR___CSFTicketManager_signposter;
  v6 = (v2 + v5);
  __swift_project_boxed_opaque_existential_0((v2 + v5), *(v2 + v5 + 24));
  sub_1DF564724();
  sub_1DF5646E4();
  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v7 = sub_1DF487DC4(1u, v1, 0, 0);
  v0[122] = v7;
  v8 = *(v2 + OBJC_IVAR___CSFTicketManager_getTicketMock + 8);
  v9 = (*(v2 + OBJC_IVAR___CSFTicketManager_getTicketMock))(v4, v3);
  if (v9)
  {
    v10 = v9;
    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_1DF48AD44(1u, v7, 0xD000000000000012, 0x80000001DF572070);
    v11 = *&v10[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status];
    v12 = *(*&v10[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] + 16);
    if (v12)
    {
      v182 = *&v10[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status];
      v183 = v10;
      v188 = 0x80000001DF570800;
      v13 = 0;
      v2 = ( + 40);
      while (1)
      {
        v16 = *(v2 - 1);
        v15 = *v2;
        v17 = v16 == 0x6C6C2E64756F6C63 && v15 == 0xE90000000000006DLL;
        if (v17 || (v18 = *(v2 - 1), v19 = *v2, (sub_1DF5650D4() & 1) != 0))
        {
          if (v13 && (v13 & 1) != 0)
          {
            goto LABEL_6;
          }

          v14 = 1;
          goto LABEL_5;
        }

        v20 = v16 == 0xD000000000000018 && 0x80000001DF5707C0 == v15;
        if (v20 || (sub_1DF5650D4() & 1) != 0)
        {
          if (v13 && (v13 & 2) != 0)
          {
            goto LABEL_6;
          }

          v14 = 2;
          goto LABEL_5;
        }

        if (v16 == 0xD00000000000001CLL && 0x80000001DF570800 == v15 || (sub_1DF5650D4() & 1) != 0)
        {
          break;
        }

        if ((v16 != 0xD00000000000001CLL || 0x80000001DF5707E0 != v15) && (sub_1DF5650D4() & 1) == 0)
        {
          v21 = qword_1ED956018;

          if (v21 != -1)
          {
            swift_once();
          }

          v22 = sub_1DF5647B4();
          __swift_project_value_buffer(v22, qword_1ED956020);

          oslog = sub_1DF564794();
          v23 = sub_1DF564C24();

          v178 = v23;
          if (os_log_type_enabled(oslog, v23))
          {
            v24 = swift_slowAlloc();
            v177 = swift_slowAlloc();
            v189 = v177;
            *v24 = 136446210;
            v25 = sub_1DF47EF6C(v16, v15, &v189);

            *(v24 + 4) = v25;
            _os_log_impl(&dword_1DF47C000, oslog, v178, "Unable to determine returned feature: %{public}s", v24, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v177);
            MEMORY[0x1E12D75F0](v177, -1, -1);
            MEMORY[0x1E12D75F0](v24, -1, -1);
          }

          else
          {
          }

          goto LABEL_6;
        }

        if (!v13 || (v13 & 8) == 0)
        {
          v14 = 8;
LABEL_5:
          v13 |= v14;
        }

LABEL_6:
        v2 += 2;
        if (!--v12)
        {

          v11 = v182;
          v10 = v183;
          goto LABEL_48;
        }
      }

      if (v13 && (v13 & 4) != 0)
      {
        goto LABEL_6;
      }

      v14 = 4;
      goto LABEL_5;
    }

    v13 = 0;
LABEL_48:
    v41 = v0[116];

    v42 = v11;
    v43 = MobileGestalt_get_current_device();
    if (v43)
    {
      v44 = v43;
      v45 = v0 + 42;
      v46 = v0 + 90;
      v47 = MobileGestalt_copy_regionCode_obj();

      if (v47)
      {
        v48 = sub_1DF564944();
        v50 = v49;

        if (v48 == 18499 && v50 == 0xE200000000000000)
        {

          LOBYTE(v47) = 1;
        }

        else
        {
          LOBYTE(v47) = sub_1DF5650D4();
        }
      }

      v51 = v0[116];
      v52 = v0[115];
      *(v0 + 360) = 257;
      v0[91] = v52;
      v0[92] = v51;
      v0[93] = v42;
      v0[94] = v13;
      *(v0 + 380) = 0;
      v0[96] = 0;
      *(v0 + 776) = v47 & 1;
LABEL_55:
      v53 = v46[1];
      *v45 = *v46;
      v45[1] = v53;
      v45[2] = v46[2];
      *(v45 + 41) = *(v46 + 41);
LABEL_56:
      sub_1DF4E28F8(v45, sub_1DF47FD50);

      sub_1DF4E4A80(v46);
      (*(v0[119] + 8))(v0[120], v0[118]);

      v54 = v0[1];

      return v54(v10);
    }

    __break(1u);
    goto LABEL_196;
  }

  v26 = v0[117] + OBJC_IVAR___CSFTicketManager_getCachedFeature;
  v27 = *(v26 + 8);
  v28 = (*v26)(v0[115], v0[116]);
  if (v28)
  {
    v2 = v28;
    v29 = OBJC_IVAR___CloudFeature_canUse;
    swift_beginAccess();
    if (*(v2 + v29) == 1)
    {
      if (qword_1ECE377B0 != -1)
      {
        swift_once();
      }

      v30 = v0[116];
      v31 = sub_1DF5647B4();
      __swift_project_value_buffer(v31, qword_1ECE377B8);

      v32 = sub_1DF564794();
      v33 = sub_1DF564C44();

      v183 = v31;
      if (os_log_type_enabled(v32, v33))
      {
        v34 = v0[116];
        v35 = v0;
        v36 = v0[115];
        v37 = swift_slowAlloc();
        v38 = v7;
        v39 = swift_slowAlloc();
        v189 = v39;
        *v37 = 136446210;
        *(v37 + 4) = sub_1DF47EF6C(v36, v34, &v189);
        _os_log_impl(&dword_1DF47C000, v32, v33, "Found active feature for feature ID %{public}s, returning .active ticket.", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        v40 = v39;
        v7 = v38;
        MEMORY[0x1E12D75F0](v40, -1, -1);
        MEMORY[0x1E12D75F0](v37, -1, -1);
      }

      else
      {
        v35 = v0;
      }

      __swift_project_boxed_opaque_existential_0(v6, v6[3]);
      sub_1DF48AD44(1u, v7, 0xD000000000000019, 0x80000001DF572050);
      v188 = type metadata accessor for TicketStatus();
      objc_allocWithZone(v188);
      result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
      if (result)
      {
        v10 = result;
        v121 = v35[116];
        v122 = v35[115];
        v35[102] = v122;
        v13 = v35;
        v35[103] = v121;

        if (v122 == 0x6C6C2E64756F6C63 && v121 == 0xE90000000000006DLL || (sub_1DF5650D4() & 1) != 0)
        {
          v123 = 1;
          v0 = v35;
          goto LABEL_157;
        }

        v0 = v35;
        if (v35[115] == 0xD000000000000018 && 0x80000001DF5707C0 == v121 || (v151 = v35[116], (sub_1DF5650D4() & 1) != 0))
        {
          v123 = 2;
          goto LABEL_157;
        }

        v155 = v35[115];
        if (v155 == 0xD00000000000001CLL && 0x80000001DF570800 == v121 || (v156 = v35[116], v157 = v35[115], (sub_1DF5650D4() & 1) != 0))
        {
          v123 = 4;
          goto LABEL_157;
        }

        if (v155 == 0xD00000000000001CLL && 0x80000001DF5707E0 == v121 || (v158 = v35[116], v159 = v35[115], (sub_1DF5650D4() & 1) != 0))
        {
          v123 = 8;
          goto LABEL_157;
        }

        v160 = v35[116];
        v161 = qword_1ED956018;

        if (v161 == -1)
        {
LABEL_191:
          __swift_project_value_buffer(v183, qword_1ED956020);

          v162 = sub_1DF564794();
          v163 = sub_1DF564C24();

          v164 = os_log_type_enabled(v162, v163);
          v165 = v0[116];
          if (v164)
          {
            v166 = v0[115];
            v167 = swift_slowAlloc();
            v168 = swift_slowAlloc();
            v189 = v168;
            *v167 = 136446210;
            v169 = sub_1DF47EF6C(v166, v165, &v189);

            *(v167 + 4) = v169;
            _os_log_impl(&dword_1DF47C000, v162, v163, "Unable to determine returned feature: %{public}s", v167, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v168);
            MEMORY[0x1E12D75F0](v168, -1, -1);
            v0 = v13;
            MEMORY[0x1E12D75F0](v167, -1, -1);
          }

          else
          {
          }

          v123 = 0;
LABEL_157:
          v124 = v0[116];
          sub_1DF4BF4C8((v0 + 102));

          result = MobileGestalt_get_current_device();
          if (result)
          {
            v125 = result;
            v45 = v0 + 34;
            v46 = v0 + 82;
            v126 = MobileGestalt_copy_regionCode_obj();

            if (v126)
            {
              v127 = sub_1DF564944();
              v129 = v128;

              if (v127 == 18499 && v129 == 0xE200000000000000)
              {

                LOBYTE(v126) = 1;
              }

              else
              {
                LOBYTE(v126) = sub_1DF5650D4();
              }

              v0 = v13;
            }

            v137 = v0[116];
            v138 = v0[115];
            *(v0 + 328) = 257;
            v0[83] = v138;
            v0[84] = v137;
            v0[85] = v10;
            v0[86] = v123;
            *(v0 + 696) = 0;
            *(v0 + 697) = 2;
            v0[88] = 0;
            *(v0 + 712) = v126 & 1;
            v139 = v46[1];
            *v45 = *v46;
            v45[1] = v139;
            v45[2] = v46[2];
            *(v45 + 41) = *(v46 + 41);
            objc_allocWithZone(v188);
            result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
            if (result)
            {
              v140 = result;
              v141 = v0[116];
              v142 = v0[115];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AC0, &qword_1DF567A60);
              v143 = swift_allocObject();
              *(v143 + 16) = xmmword_1DF567CF0;
              *(v143 + 32) = v142;
              *(v143 + 40) = v141;
              v144 = type metadata accessor for WaitlistResult();
              v145 = objc_allocWithZone(v144);
              v146 = &v145[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket];
              *v146 = 0;
              *(v146 + 1) = 0;
              *&v145[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status] = v140;
              *&v145[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] = v143;
              v0[112] = v145;
              v0[113] = v144;

              v147 = v140;
              v10 = objc_msgSendSuper2(v0 + 56, sel_init);

              goto LABEL_56;
            }

            goto LABEL_200;
          }

LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
          goto LABEL_202;
        }

LABEL_196:
        swift_once();
        v170 = v0[116];
        goto LABEL_191;
      }

LABEL_198:
      __break(1u);
      goto LABEL_199;
    }
  }

  v56 = v0[117] + OBJC_IVAR___CSFTicketManager_getCachedTicket;
  v57 = *(v56 + 8);
  v58 = (*v56)(v0[115], v0[116]);
  v0[123] = v58;
  if (v58)
  {
    v10 = v58;
    v59 = OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status;
    v60 = *(v58 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status);
    v61 = type metadata accessor for TicketStatus();
    objc_allocWithZone(v61);
    v62 = v60;
    result = TicketStatus.init(rawValue:)(0x6465756575716E65, 0xE800000000000000);
    if (!result)
    {
      __break(1u);
      goto LABEL_198;
    }

    v63 = result;
    v64 = sub_1DF564CD4();

    if (v64)
    {
      if (qword_1ECE377B0 != -1)
      {
        swift_once();
      }

      v65 = v0[116];
      osloga = sub_1DF5647B4();
      __swift_project_value_buffer(osloga, qword_1ECE377B8);

      v66 = sub_1DF564794();
      v67 = sub_1DF564C44();

      v186 = v0;
      if (os_log_type_enabled(v66, v67))
      {
        v68 = v0[116];
        v69 = v10;
        v70 = v0[115];
        v71 = v7;
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v189 = v73;
        *v72 = 136446210;
        v74 = v70;
        v10 = v69;
        *(v72 + 4) = sub_1DF47EF6C(v74, v68, &v189);
        _os_log_impl(&dword_1DF47C000, v66, v67, "Found enqueued ticket for feature ID %{public}s, returning .enqueued ticket.", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x1E12D75F0](v73, -1, -1);
        v75 = v72;
        v7 = v71;
        MEMORY[0x1E12D75F0](v75, -1, -1);
      }

      __swift_project_boxed_opaque_existential_0(v6, v6[3]);
      sub_1DF48AD44(1u, v7, 0xD00000000000001FLL, 0x80000001DF572030);
      objc_allocWithZone(v61);
      result = TicketStatus.init(rawValue:)(0x6465756575716E65, 0xE800000000000000);
      if (!result)
      {
        goto LABEL_201;
      }

      v76 = result;
      v0 = v186;
      v45 = v186 + 26;
      v46 = v186 + 74;
      v77 = *(*&v10[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] + 16);
      if (!v77)
      {
        v78 = 0;
LABEL_174:
        v148 = v0[116];
        v149 = v0[115];

        v150 = sub_1DF4A57C0();
        *(v0 + 296) = 257;
        v0[75] = v149;
        v0[76] = v148;
        v0[77] = v76;
        v0[78] = v78;
        *(v0 + 632) = 0;
        *(v0 + 633) = 1;
        v0[80] = 0;
        *(v0 + 648) = v150 & 1;
        goto LABEL_55;
      }

      v184 = v10;
      v78 = 0;
      v79 = ( + 40);
      while (1)
      {
        v82 = *(v79 - 1);
        v81 = *v79;
        v83 = v82 == 0x6C6C2E64756F6C63 && v81 == 0xE90000000000006DLL;
        if (v83 || (v84 = *(v79 - 1), v85 = *v79, (sub_1DF5650D4() & 1) != 0))
        {
          if (v78 && (v78 & 1) != 0)
          {
            goto LABEL_72;
          }

          v80 = 1;
          goto LABEL_71;
        }

        v86 = v82 == 0xD000000000000018 && 0x80000001DF5707C0 == v81;
        if (v86 || (sub_1DF5650D4() & 1) != 0)
        {
          if (v78 && (v78 & 2) != 0)
          {
            goto LABEL_72;
          }

          v80 = 2;
          goto LABEL_71;
        }

        if (v82 == 0xD00000000000001CLL && 0x80000001DF570800 == v81 || (sub_1DF5650D4() & 1) != 0)
        {
          break;
        }

        if ((v82 != 0xD00000000000001CLL || 0x80000001DF5707E0 != v81) && (sub_1DF5650D4() & 1) == 0)
        {
          v87 = qword_1ED956018;

          if (v87 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(osloga, qword_1ED956020);

          log = sub_1DF564794();
          v88 = sub_1DF564C24();

          v173 = v88;
          if (os_log_type_enabled(log, v88))
          {
            v89 = swift_slowAlloc();
            v171 = swift_slowAlloc();
            v189 = v171;
            *v89 = 136446210;
            v90 = sub_1DF47EF6C(v82, v81, &v189);

            *(v89 + 4) = v90;
            _os_log_impl(&dword_1DF47C000, log, v173, "Unable to determine returned feature: %{public}s", v89, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v171);
            MEMORY[0x1E12D75F0](v171, -1, -1);
            MEMORY[0x1E12D75F0](v89, -1, -1);
          }

          else
          {
          }

          goto LABEL_72;
        }

        if (!v78 || (v78 & 8) == 0)
        {
          v80 = 8;
LABEL_71:
          v78 |= v80;
        }

LABEL_72:
        v79 += 2;
        if (!--v77)
        {

          v0 = v186;
          v10 = v184;
          goto LABEL_174;
        }
      }

      if (v78 && (v78 & 4) != 0)
      {
        goto LABEL_72;
      }

      v80 = 4;
      goto LABEL_71;
    }

    v91 = *&v10[v59];
    objc_allocWithZone(v61);
    v92 = v91;
    result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
    if (!result)
    {
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
      return result;
    }

    v93 = result;
    v94 = sub_1DF564CD4();

    if (v94)
    {
      if (qword_1ECE377B0 != -1)
      {
        swift_once();
      }

      v95 = v0[116];
      oslogb = sub_1DF5647B4();
      __swift_project_value_buffer(oslogb, qword_1ECE377B8);

      v96 = sub_1DF564794();
      v97 = sub_1DF564C24();

      v187 = v0;
      if (os_log_type_enabled(v96, v97))
      {
        v98 = v0[116];
        v99 = v10;
        v100 = v0[115];
        v101 = v7;
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v189 = v103;
        *v102 = 136446210;
        v104 = v100;
        v10 = v99;
        *(v102 + 4) = sub_1DF47EF6C(v104, v98, &v189);
        _os_log_impl(&dword_1DF47C000, v96, v97, "Found active ticket for feature ID %{public}s, returning .active ticket. There was no cached feature so this is unexpected.", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v103);
        MEMORY[0x1E12D75F0](v103, -1, -1);
        v105 = v102;
        v7 = v101;
        MEMORY[0x1E12D75F0](v105, -1, -1);
      }

      __swift_project_boxed_opaque_existential_0(v6, v6[3]);
      sub_1DF48AD44(1u, v7, 0xD00000000000001DLL, 0x80000001DF572010);
      objc_allocWithZone(v61);
      result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
      if (!result)
      {
        goto LABEL_203;
      }

      v106 = result;
      v0 = v187;
      v45 = v187 + 18;
      v46 = v187 + 66;
      v107 = *(*&v10[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] + 16);
      if (!v107)
      {
        v108 = 0;
LABEL_181:
        v152 = v0[116];
        v153 = v0[115];

        v154 = sub_1DF4A57C0();
        *(v0 + 264) = 257;
        v0[67] = v153;
        v0[68] = v152;
        v0[69] = v106;
        v0[70] = v108;
        *(v0 + 568) = 0;
        *(v0 + 569) = 1;
        v0[72] = 0;
        *(v0 + 584) = v154 & 1;
        goto LABEL_55;
      }

      v185 = v10;
      v108 = 0;
      v109 = ( + 40);
      while (1)
      {
        v112 = *(v109 - 1);
        v111 = *v109;
        v113 = v112 == 0x6C6C2E64756F6C63 && v111 == 0xE90000000000006DLL;
        if (v113 || (v114 = *(v109 - 1), v115 = *v109, (sub_1DF5650D4() & 1) != 0))
        {
          if (v108 && (v108 & 1) != 0)
          {
            goto LABEL_117;
          }

          v110 = 1;
          goto LABEL_116;
        }

        v116 = v112 == 0xD000000000000018 && 0x80000001DF5707C0 == v111;
        if (v116 || (sub_1DF5650D4() & 1) != 0)
        {
          if (v108 && (v108 & 2) != 0)
          {
            goto LABEL_117;
          }

          v110 = 2;
          goto LABEL_116;
        }

        if (v112 == 0xD00000000000001CLL && 0x80000001DF570800 == v111 || (sub_1DF5650D4() & 1) != 0)
        {
          break;
        }

        if ((v112 != 0xD00000000000001CLL || 0x80000001DF5707E0 != v111) && (sub_1DF5650D4() & 1) == 0)
        {
          v117 = qword_1ED956018;

          if (v117 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(oslogb, qword_1ED956020);

          loga = sub_1DF564794();
          v118 = sub_1DF564C24();

          v174 = v118;
          if (os_log_type_enabled(loga, v118))
          {
            v119 = swift_slowAlloc();
            v172 = swift_slowAlloc();
            v189 = v172;
            *v119 = 136446210;
            v120 = sub_1DF47EF6C(v112, v111, &v189);

            *(v119 + 4) = v120;
            _os_log_impl(&dword_1DF47C000, loga, v174, "Unable to determine returned feature: %{public}s", v119, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v172);
            MEMORY[0x1E12D75F0](v172, -1, -1);
            MEMORY[0x1E12D75F0](v119, -1, -1);
          }

          else
          {
          }

          goto LABEL_117;
        }

        if (!v108 || (v108 & 8) == 0)
        {
          v110 = 8;
LABEL_116:
          v108 |= v110;
        }

LABEL_117:
        v109 += 2;
        if (!--v107)
        {

          v0 = v187;
          v10 = v185;
          goto LABEL_181;
        }
      }

      if (v108 && (v108 & 4) != 0)
      {
        goto LABEL_117;
      }

      v110 = 4;
      goto LABEL_116;
    }
  }

  v130 = __swift_project_boxed_opaque_existential_0((v0[117] + OBJC_IVAR___CSFTicketManager_provider), *(v0[117] + OBJC_IVAR___CSFTicketManager_provider + 24));
  if (qword_1ED954AC8 != -1)
  {
    swift_once();
  }

  v131 = qword_1ED954AD0;
  v0[107] = &type metadata for Device;
  v0[108] = &off_1F5A89060;
  v132 = swift_allocObject();
  v0[104] = v132;
  v132[5] = type metadata accessor for HardwareChecker();
  v132[6] = &off_1F5A89048;
  v132[2] = v131;
  v133 = *v130;

  v134 = swift_task_alloc();
  v0[124] = v134;
  *v134 = v0;
  v134[1] = sub_1DF4E0970;
  v135 = v0[116];
  v136 = v0[115];

  return sub_1DF50AB1C(v136, v135, (v0 + 104), v0 + 73);
}

uint64_t sub_1DF4E0970(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 992);
  v7 = *v2;
  *(*v2 + 1000) = a1;

  if (v1)
  {
    *(v3 + 74) = *(v3 + 73);
    v5 = sub_1DF4E0F5C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 832));
    v5 = sub_1DF4E0A94;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF4E0A94()
{
  v37 = v0;
  v1 = *(v0 + 984);
  v2 = (*(v0 + 936) + *(v0 + 968));
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  v3 = *(v0 + 976);
  v4 = *(v0 + 1000);
  if (v1)
  {
    v5 = 0xD000000000000023;
    v6 = 0x80000001DF571FE0;
  }

  else
  {
    v6 = 0xE900000000000031;
    v5 = 0x3D73736563637573;
  }

  sub_1DF48AD44(1u, v3, v5, v6);
  v7 = *(v0 + 1000);
  v8 = *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs];
  v35 = *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status];

  v9 = *(v8 + 16);
  v10 = 0;
  if (v9)
  {
    v11 = (v8 + 40);
    while (1)
    {
      v13 = *(v11 - 1);
      v14 = *v11;
      v15 = v13 == 0x6C6C2E64756F6C63 && v14 == 0xE90000000000006DLL;
      if (v15 || (v16 = *(v11 - 1), v17 = *v11, (sub_1DF5650D4() & 1) != 0))
      {
        if (v10 && (v10 & 1) != 0)
        {
          goto LABEL_8;
        }

        v12 = 1;
        goto LABEL_7;
      }

      v18 = v13 == 0xD000000000000018 && 0x80000001DF5707C0 == v14;
      if (v18 || (sub_1DF5650D4() & 1) != 0)
      {
        if (v10 && (v10 & 2) != 0)
        {
          goto LABEL_8;
        }

        v12 = 2;
        goto LABEL_7;
      }

      if (v13 == 0xD00000000000001CLL && 0x80000001DF570800 == v14 || (sub_1DF5650D4() & 1) != 0)
      {
        break;
      }

      if ((v13 != 0xD00000000000001CLL || 0x80000001DF5707E0 != v14) && (sub_1DF5650D4() & 1) == 0)
      {
        v19 = qword_1ED956018;

        if (v19 != -1)
        {
          swift_once();
        }

        v20 = sub_1DF5647B4();
        __swift_project_value_buffer(v20, qword_1ED956020);

        oslog = sub_1DF564794();
        v21 = sub_1DF564C24();

        v33 = v21;
        if (os_log_type_enabled(oslog, v21))
        {
          v22 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v36 = v32;
          *v22 = 136446210;
          v23 = sub_1DF47EF6C(v13, v14, &v36);

          *(v22 + 4) = v23;
          _os_log_impl(&dword_1DF47C000, oslog, v33, "Unable to determine returned feature: %{public}s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v32);
          MEMORY[0x1E12D75F0](v32, -1, -1);
          MEMORY[0x1E12D75F0](v22, -1, -1);
        }

        else
        {
        }

        goto LABEL_8;
      }

      if (!v10 || (v10 & 8) == 0)
      {
        v12 = 8;
LABEL_7:
        v10 |= v12;
      }

LABEL_8:
      v11 += 2;
      if (!--v9)
      {
        goto LABEL_42;
      }
    }

    if (v10 && (v10 & 4) != 0)
    {
      goto LABEL_8;
    }

    v12 = 4;
    goto LABEL_7;
  }

LABEL_42:
  v24 = *(v0 + 976);
  v25 = *(v0 + 928);
  v26 = *(v0 + 920);

  v27 = sub_1DF4A57C0();
  *(v0 + 464) = 257;
  *(v0 + 472) = v26;
  *(v0 + 480) = v25;
  *(v0 + 488) = v35;
  *(v0 + 496) = v10;
  *(v0 + 504) = 768;
  *(v0 + 512) = 0;
  *(v0 + 520) = v27 & 1;
  v28 = *(v0 + 480);
  *(v0 + 80) = *(v0 + 464);
  *(v0 + 96) = v28;
  *(v0 + 112) = *(v0 + 496);
  *(v0 + 121) = *(v0 + 505);
  sub_1DF4E28F8((v0 + 80), sub_1DF47FD50);

  sub_1DF4E4A80(v0 + 464);
  v29 = *(v0 + 1000);
  (*(*(v0 + 952) + 8))(*(v0 + 960), *(v0 + 944));

  v30 = *(v0 + 8);

  return v30(v29);
}

id sub_1DF4E0F5C()
{
  v1 = *(v0 + 74);
  v2 = *(v0 + 976);
  v3 = *(v0 + 928);
  v4 = (*(v0 + 936) + *(v0 + 968));
  __swift_destroy_boxed_opaque_existential_0((v0 + 832));
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  sub_1DF564DF4();

  *(v0 + 912) = v1;
  v5 = sub_1DF5650A4();
  MEMORY[0x1E12D62C0](v5);

  sub_1DF48AD44(1u, v2, 0xD000000000000014, 0x80000001DF571FC0);

  sub_1DF4E4A2C();
  v6 = swift_allocError();
  *v7 = v1;

  v8 = v6;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v10 = result;
    v11 = MobileGestalt_copy_regionCode_obj();

    if (v11)
    {
      v12 = sub_1DF564944();
      v14 = v13;

      if (v12 == 18499 && v14 == 0xE200000000000000)
      {

        v15 = 1;
      }

      else
      {
        v15 = sub_1DF5650D4();
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = *(v0 + 74);
    v17 = *(v0 + 976);
    v18 = *(v0 + 960);
    v19 = *(v0 + 952);
    v25 = *(v0 + 944);
    v20 = *(v0 + 928);
    v21 = *(v0 + 920);

    *(v0 + 400) = 1;
    *(v0 + 408) = v21;
    *(v0 + 416) = v20;
    *(v0 + 424) = 0;
    *(v0 + 432) = 0;
    *(v0 + 440) = 1025;
    *(v0 + 448) = v6;
    *(v0 + 456) = v15 & 1;
    v22 = *(v0 + 416);
    *(v0 + 16) = *(v0 + 400);
    *(v0 + 32) = v22;
    *(v0 + 48) = *(v0 + 432);
    *(v0 + 57) = *(v0 + 441);
    swift_allocError();
    *v23 = v16;
    swift_willThrow();
    sub_1DF4E28F8((v0 + 16), sub_1DF47FD50);

    sub_1DF4E4A80(v0 + 400);
    (*(v19 + 8))(v18, v25);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4E13C8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1DF564944();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1DF4E149C;

  return sub_1DF4DF018(v5, v7);
}

uint64_t sub_1DF4E149C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_1DF5642E4();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

id TicketManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TicketManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TicketManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DF4E179C(__int16 a1, id a2, uint64_t (*a3)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v22[3] = &type metadata for CoreTelemetryDeviceCapabilityEvent;
  v22[4] = &off_1F5A8DB78;
  LOWORD(v22[0]) = a1 & 0x101;
  v22[1] = a2;
  v4 = a2;
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v5 = sub_1DF5647B4();
  __swift_project_value_buffer(v5, qword_1ED956020);
  sub_1DF47FCEC(v22, &v20);
  v6 = sub_1DF564794();
  v7 = sub_1DF564C14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1DF47EF6C(0xD000000000000037, 0x80000001DF572440, &v19);
    *(v8 + 12) = 2080;
    v10 = __swift_project_boxed_opaque_existential_0(&v20, v21);
    if (*(v10 + 1))
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    if (sub_1DF55FF58(v11 | *v10, v10[1]))
    {
      sub_1DF480144();
      v12 = sub_1DF564894();
      v14 = v13;
    }

    else
    {
      v14 = 0xE500000000000000;
      v12 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v20);
    v15 = sub_1DF47EF6C(v12, v14, &v19);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1DF47C000, v6, v7, "Sending message %s with body %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v20);
  }

  sub_1DF47FCEC(v22, &v20);
  v16 = swift_allocObject();
  sub_1DF47E390(&v20, v16 + 16);
  v17 = a3(0xD000000000000037, 0x80000001DF572440, sub_1DF48041C, v16);

  __swift_destroy_boxed_opaque_existential_0(v22);
  return v17 & 1;
}

uint64_t sub_1DF4E1A88(int a1, uint64_t (*a2)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v22[3] = &type metadata for GatewayRequestSigningEvent;
  v22[4] = &off_1F5A8DDD0;
  LOWORD(v22[0]) = a1 & 0x101;
  BYTE2(v22[0]) = BYTE2(a1) & 1;
  BYTE3(v22[0]) = HIBYTE(a1) & 1;
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF5647B4();
  __swift_project_value_buffer(v3, qword_1ED956020);
  sub_1DF47FCEC(v22, &v20);
  v4 = sub_1DF564794();
  v5 = sub_1DF564C14();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD00000000000003BLL, 0x80000001DF572240, &v19);
    *(v6 + 12) = 2080;
    v8 = __swift_project_boxed_opaque_existential_0(&v20, v21);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    v8[3];
    if (sub_1DF560974())
    {
      sub_1DF480144();
      v12 = sub_1DF564894();
      v14 = v13;
    }

    else
    {
      v14 = 0xE500000000000000;
      v12 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v20);
    v15 = sub_1DF47EF6C(v12, v14, &v19);

    *(v6 + 14) = v15;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Sending message %s with body %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v20);
  }

  sub_1DF47FCEC(v22, &v20);
  v16 = swift_allocObject();
  sub_1DF47E390(&v20, v16 + 16);
  v17 = a2(0xD00000000000003BLL, 0x80000001DF572240, sub_1DF48041C, v16);

  __swift_destroy_boxed_opaque_existential_0(v22);
  return v17 & 1;
}

uint64_t sub_1DF4E1D9C(uint64_t a1, uint64_t (*a2)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v20[3] = &type metadata for ExcessiveRequestsEvent;
  v20[4] = &off_1F5A8DBB8;
  v20[0] = a1;
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF5647B4();
  __swift_project_value_buffer(v3, qword_1ED956020);
  sub_1DF47FCEC(v20, &v18);
  v4 = sub_1DF564794();
  v5 = sub_1DF564C14();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD00000000000003BLL, 0x80000001DF5721E0, &v17);
    *(v6 + 12) = 2080;
    v8 = *__swift_project_boxed_opaque_existential_0(&v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DF567CF0;
    *(inited + 32) = 0xD000000000000018;
    *(inited + 40) = 0x80000001DF572220;
    *(inited + 48) = sub_1DF564BD4();
    sub_1DF480040(inited);
    swift_setDeallocating();
    sub_1DF483E24(inited + 32);
    sub_1DF480144();
    v10 = sub_1DF564894();
    v12 = v11;

    __swift_destroy_boxed_opaque_existential_0(&v18);
    v13 = sub_1DF47EF6C(v10, v12, &v17);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Sending message %s with body %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v18);
  }

  sub_1DF47FCEC(v20, &v18);
  v14 = swift_allocObject();
  sub_1DF47E390(&v18, v14 + 16);
  v15 = a2(0xD00000000000003BLL, 0x80000001DF5721E0, sub_1DF48041C, v14);

  __swift_destroy_boxed_opaque_existential_0(v20);
  return v15 & 1;
}

uint64_t sub_1DF4E20B4(uint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v20[3] = &type metadata for FeatureNetworkingStartEvent;
  v20[4] = &off_1F5A8DD30;
  v20[0] = a1;
  v20[1] = a2;
  sub_1DF4B9704(a1, a2);
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956020);
  sub_1DF47FCEC(v20, &v18);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_1DF47EF6C(0xD00000000000003CLL, 0x80000001DF572280, &v17);
    *(v7 + 12) = 2080;
    v9 = __swift_project_boxed_opaque_existential_0(&v18, v19);
    if (sub_1DF560774(*v9, v9[1]))
    {
      sub_1DF480144();
      v10 = sub_1DF564894();
      v12 = v11;
    }

    else
    {
      v12 = 0xE500000000000000;
      v10 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v18);
    v13 = sub_1DF47EF6C(v10, v12, &v17);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Sending message %s with body %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v18);
  }

  sub_1DF47FCEC(v20, &v18);
  v14 = swift_allocObject();
  sub_1DF47E390(&v18, v14 + 16);
  v15 = a3(0xD00000000000003CLL, 0x80000001DF572280, sub_1DF48041C, v14);

  __swift_destroy_boxed_opaque_existential_0(v20);
  return v15 & 1;
}

uint64_t sub_1DF4E2378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  *&v32 = a1;
  *(&v32 + 1) = a2;
  v33 = a3;
  v30 = &type metadata for ReceivedFeatureEvent;
  v31 = &off_1F5A8DFB8;
  v28 = v32;
  v29 = a3;
  sub_1DF4E5078(&v32, &v26);
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v5 = sub_1DF5647B4();
  __swift_project_value_buffer(v5, qword_1ED956020);
  sub_1DF47FCEC(&v28, &v26);
  v6 = sub_1DF564794();
  v7 = sub_1DF564C14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1DF47EF6C(0xD000000000000038, 0x80000001DF572120, &v25);
    *(v8 + 12) = 2080;
    v10 = __swift_project_boxed_opaque_existential_0(&v26, v27);
    v11 = *(v10 + 4);
    v12 = *(v10 + 5);
    v13 = *(v10 + 6);
    v14 = v10[1];
    v15 = v10[2];
    v16 = 256;
    if ((*(v10 + 1) & 1) == 0)
    {
      v16 = 0;
    }

    v17 = v16 & 0xFFFFFFFFFFFFFFFELL | *v10 & 1;
    *(v10 + 2);
    *(v10 + 3);
    if (sub_1DF560F4C())
    {
      sub_1DF480144();
      v18 = sub_1DF564894();
      v20 = v19;
    }

    else
    {
      v20 = 0xE500000000000000;
      v18 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v26);
    v21 = sub_1DF47EF6C(v18, v20, &v25);

    *(v8 + 14) = v21;
    _os_log_impl(&dword_1DF47C000, v6, v7, "Sending message %s with body %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v26);
  }

  sub_1DF47FCEC(&v28, &v26);
  v22 = swift_allocObject();
  sub_1DF47E390(&v26, v22 + 16);
  v23 = a4(0xD000000000000038, 0x80000001DF572120, sub_1DF4803C0, v22);

  __swift_destroy_boxed_opaque_existential_0(&v28);
  return v23 & 1;
}

uint64_t sub_1DF4E26CC(uint64_t (*a1)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v11[3] = &type metadata for ExpiredJWTServedEvent;
  v11[4] = &off_1F5A8DBF0;
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956020);
  v3 = sub_1DF564794();
  v4 = sub_1DF564C14();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v10[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_1DF47EF6C(0xD000000000000034, 0x80000001DF572400, v10);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1DF47EF6C(0x3E6C696E3CLL, 0xE500000000000000, v10);
    _os_log_impl(&dword_1DF47C000, v3, v4, "Sending message %s with body %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v6, -1, -1);
    MEMORY[0x1E12D75F0](v5, -1, -1);
  }

  else
  {
  }

  sub_1DF47FCEC(v11, v10);
  v7 = swift_allocObject();
  sub_1DF47E390(v10, v7 + 16);
  v8 = a1(0xD000000000000034, 0x80000001DF572400, sub_1DF48041C, v7);

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v8 & 1;
}

uint64_t sub_1DF4E28F8(_OWORD *a1, uint64_t (*a2)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v22[3] = &type metadata for SignupOrGetWaitlistStatusEvent;
  v22[4] = &off_1F5A8E1B8;
  v4 = swift_allocObject();
  v22[0] = v4;
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v4[3] = a1[2];
  *(v4 + 57) = *(a1 + 41);
  sub_1DF4E56A8(a1, v23);
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  __swift_project_value_buffer(v6, qword_1ED956020);
  sub_1DF47FCEC(v22, &v20);
  v7 = sub_1DF564794();
  v8 = sub_1DF564C14();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1DF47EF6C(0xD000000000000046, 0x80000001DF572550, &v19);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_0(&v20, v21);
    v23[0] = *v11;
    v23[1] = v11[1];
    v24[0] = v11[2];
    *(v24 + 9) = *(v11 + 41);
    if (sub_1DF5614C0())
    {
      sub_1DF480144();
      v12 = sub_1DF564894();
      v14 = v13;
    }

    else
    {
      v14 = 0xE500000000000000;
      v12 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v20);
    v15 = sub_1DF47EF6C(v12, v14, &v19);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_1DF47C000, v7, v8, "Sending message %s with body %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v20);
  }

  sub_1DF47FCEC(v22, &v20);
  v16 = swift_allocObject();
  sub_1DF47E390(&v20, v16 + 16);
  v17 = a2(0xD000000000000046, 0x80000001DF572550, sub_1DF48041C, v16);

  __swift_destroy_boxed_opaque_existential_0(v22);
  return v17 & 1;
}

uint64_t sub_1DF4E2C10(unint64_t a1, uint64_t (*a2)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v24[3] = &type metadata for GetAccessStatusEvent;
  v24[4] = &off_1F5A8DE78;
  LOWORD(v24[0]) = a1 & 0xFF01;
  v3 = vdupq_n_s64(a1);
  *v3.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v3, xmmword_1DF5690C0), vshlq_u64(v3, xmmword_1DF5690B0))), 0x1000100010001);
  *(v24 + 2) = vuzp1_s8(*v3.i8, *v3.i8).u32[0];
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956020);
  sub_1DF47FCEC(v24, &v22);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_1DF47EF6C(0xD000000000000040, 0x80000001DF572500, &v21);
    *(v7 + 12) = 2080;
    v9 = __swift_project_boxed_opaque_existential_0(&v22, v23);
    v10 = v9[3];
    v11 = v9[4];
    v9[5];
    v12 = 0x10000;
    if (!v9[2])
    {
      v12 = 0;
    }

    v13 = v12 | *v9 | (v9[1] << 8);
    if (sub_1DF560BF0())
    {
      sub_1DF480144();
      v14 = sub_1DF564894();
      v16 = v15;
    }

    else
    {
      v16 = 0xE500000000000000;
      v14 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v22);
    v17 = sub_1DF47EF6C(v14, v16, &v21);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Sending message %s with body %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v22);
  }

  sub_1DF47FCEC(v24, &v22);
  v18 = swift_allocObject();
  sub_1DF47E390(&v22, v18 + 16);
  v19 = a2(0xD000000000000040, 0x80000001DF572500, sub_1DF48041C, v18);

  __swift_destroy_boxed_opaque_existential_0(v24);
  return v19 & 1;
}

uint64_t sub_1DF4E2F64(_OWORD *a1, uint64_t (*a2)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v23[3] = &type metadata for DaemonControllerActivityCheckInEvent;
  v23[4] = &off_1F5A8D848;
  v4 = swift_allocObject();
  v23[0] = v4;
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  *(v4 + 42) = *(a1 + 26);
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  __swift_project_value_buffer(v6, qword_1ED956020);
  sub_1DF47FCEC(v23, &v21);
  v7 = sub_1DF564794();
  v8 = sub_1DF564C14();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1DF47EF6C(0xD000000000000044, 0x80000001DF572360, &v20);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_0(&v21, v22);
    v12 = v11[1];
    v24 = *v11;
    v25[0] = v12;
    *(v25 + 10) = *(v11 + 26);
    if (sub_1DF55F158())
    {
      sub_1DF480144();
      v13 = sub_1DF564894();
      v15 = v14;
    }

    else
    {
      v15 = 0xE500000000000000;
      v13 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v21);
    v16 = sub_1DF47EF6C(v13, v15, &v20);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1DF47C000, v7, v8, "Sending message %s with body %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v21);
  }

  sub_1DF47FCEC(v23, &v21);
  v17 = swift_allocObject();
  sub_1DF47E390(&v21, v17 + 16);
  v18 = a2(0xD000000000000044, 0x80000001DF572360, sub_1DF48041C, v17);

  __swift_destroy_boxed_opaque_existential_0(v23);
  return v18 & 1;
}

uint64_t sub_1DF4E3258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v24[0] = a1;
  v24[3] = &type metadata for DaemonControllerScheduleRebuildEvent;
  v24[4] = &off_1F5A8DAD8;
  v24[1] = a2;
  v24[2] = a3;
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v5 = sub_1DF5647B4();
  __swift_project_value_buffer(v5, qword_1ED956020);
  sub_1DF47FCEC(v24, &v22);
  v6 = sub_1DF564794();
  v7 = sub_1DF564C14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1DF47EF6C(0xD000000000000044, 0x80000001DF5722C0, &v21);
    *(v8 + 12) = 2080;
    v10 = __swift_project_boxed_opaque_existential_0(&v22, v23);
    v12 = *v10;
    v11 = v10[1];
    v13 = v10[2];
    if (sub_1DF55FDB0())
    {
      sub_1DF480144();
      v14 = sub_1DF564894();
      v16 = v15;
    }

    else
    {
      v16 = 0xE500000000000000;
      v14 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v22);
    v17 = sub_1DF47EF6C(v14, v16, &v21);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1DF47C000, v6, v7, "Sending message %s with body %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v22);
  }

  sub_1DF47FCEC(v24, &v22);
  v18 = swift_allocObject();
  sub_1DF47E390(&v22, v18 + 16);
  v19 = a4(0xD000000000000044, 0x80000001DF5722C0, sub_1DF48041C, v18);

  __swift_destroy_boxed_opaque_existential_0(v24);
  return v19 & 1;
}

uint64_t sub_1DF4E3520(uint64_t a1, uint64_t (*a2)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v23[3] = &type metadata for DaemonControllerRunActivityLoopEvent;
  v23[4] = &off_1F5A8DA38;
  v4 = swift_allocObject();
  v23[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  __swift_project_value_buffer(v6, qword_1ED956020);
  sub_1DF47FCEC(v23, &v21);
  v7 = sub_1DF564794();
  v8 = sub_1DF564C14();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1DF47EF6C(0xD000000000000044, 0x80000001DF5723B0, &v20);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_0(&v21, v22);
    v12 = *(v11 + 1);
    v24 = *v11;
    v25 = v12;
    v26 = *(v11 + 16);
    if (sub_1DF55FB08())
    {
      sub_1DF480144();
      v13 = sub_1DF564894();
      v15 = v14;
    }

    else
    {
      v15 = 0xE500000000000000;
      v13 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v21);
    v16 = sub_1DF47EF6C(v13, v15, &v20);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1DF47C000, v7, v8, "Sending message %s with body %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v21);
  }

  sub_1DF47FCEC(v23, &v21);
  v17 = swift_allocObject();
  sub_1DF47E390(&v21, v17 + 16);
  v18 = a2(0xD000000000000044, 0x80000001DF5723B0, sub_1DF48041C, v17);

  __swift_destroy_boxed_opaque_existential_0(v23);
  return v18 & 1;
}

uint64_t sub_1DF4E3814(uint64_t a1, uint64_t (*a2)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v23[3] = &type metadata for DaemonControllerActivityRunEvent;
  v23[4] = &off_1F5A8D900;
  v4 = swift_allocObject();
  v23[0] = v4;
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  sub_1DF4E50D4(a1, v24);
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v7 = sub_1DF5647B4();
  __swift_project_value_buffer(v7, qword_1ED956020);
  sub_1DF47FCEC(v23, &v21);
  v8 = sub_1DF564794();
  v9 = sub_1DF564C14();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1DF47EF6C(0xD000000000000040, 0x80000001DF572310, &v20);
    *(v10 + 12) = 2080;
    v12 = __swift_project_boxed_opaque_existential_0(&v21, v22);
    v24[1] = *(v12 + 1);
    v24[2] = *(v12 + 2);
    v24[3] = *(v12 + 3);
    v25 = *(v12 + 32);
    v24[0] = *v12;
    if (sub_1DF55F41C())
    {
      sub_1DF480144();
      v13 = sub_1DF564894();
      v15 = v14;
    }

    else
    {
      v15 = 0xE500000000000000;
      v13 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v21);
    v16 = sub_1DF47EF6C(v13, v15, &v20);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_1DF47C000, v8, v9, "Sending message %s with body %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v11, -1, -1);
    MEMORY[0x1E12D75F0](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v21);
  }

  sub_1DF47FCEC(v23, &v21);
  v17 = swift_allocObject();
  sub_1DF47E390(&v21, v17 + 16);
  v18 = a2(0xD000000000000040, 0x80000001DF572310, sub_1DF48041C, v17);

  __swift_destroy_boxed_opaque_existential_0(v23);
  return v18 & 1;
}

id sub_1DF4E3B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF5647B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DF564734();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = type metadata accessor for XPCCaller();
  v16 = [objc_allocWithZone(v15) init];
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_1ED956020);
  (*(v5 + 16))(v8, v17, v4);
  sub_1DF564714();
  v48 = v15;
  v49 = &off_1F5A89C00;
  v47[0] = v16;
  v45 = v9;
  v46 = &off_1F5A8A820;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v19 = type metadata accessor for TicketManager();
  v20 = objc_allocWithZone(v19);
  v21 = v48;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
  v40[2] = v40;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = v45;
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v40[1] = v40;
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31);
  v33 = *v25;
  v43[3] = v15;
  v43[4] = &off_1F5A89C00;
  v43[0] = v33;
  v42[3] = v9;
  v42[4] = &off_1F5A8A820;
  v34 = __swift_allocate_boxed_opaque_existential_1(v42);
  (*(v10 + 32))(v34, v31, v9);
  sub_1DF47FCEC(v43, &v20[OBJC_IVAR___CSFTicketManager_provider]);
  v35 = &v20[OBJC_IVAR___CSFTicketManager_getCachedFeature];
  *v35 = sub_1DF4DC2BC;
  v35[1] = 0;
  v36 = &v20[OBJC_IVAR___CSFTicketManager_getCachedTicket];
  *v36 = sub_1DF4E5730;
  v36[1] = v14;
  v37 = &v20[OBJC_IVAR___CSFTicketManager_getTicketMock];
  *v37 = sub_1DF4DC2C0;
  *(v37 + 1) = 0;
  sub_1DF47FCEC(v42, &v20[OBJC_IVAR___CSFTicketManager_signposter]);
  v41.receiver = v20;
  v41.super_class = v19;
  v38 = objc_msgSendSuper2(&v41, sel_init);
  (*(v10 + 8))(v13, v9);
  __swift_destroy_boxed_opaque_existential_0(v42);
  __swift_destroy_boxed_opaque_existential_0(v43);
  __swift_destroy_boxed_opaque_existential_0(v44);
  __swift_destroy_boxed_opaque_existential_0(v47);
  return v38;
}

uint64_t sub_1DF4E3FF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4E4010, 0, 0);
}

uint64_t sub_1DF4E4010()
{
  v1 = sub_1DF481988();
  v0[21] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DF4E4134;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D58, &qword_1DF569340);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF4D0E70;
  v0[13] = &block_descriptor_173;
  v0[14] = v2;
  [v1 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF4E4134()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1DF4E574C;
  }

  else
  {
    v3 = sub_1DF4E4244;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF4E4244()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = [*(v0 + 144) aa_altDSID];

    if (v2)
    {
      v1 = sub_1DF564944();
      v4 = v3;

      goto LABEL_6;
    }

    v1 = 0;
  }

  v4 = 0;
LABEL_6:

  *(v0 + 184) = sub_1DF4E3B34(v1, v4);
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = sub_1DF4E434C;
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);

  return sub_1DF4DCB98(v7, v6);
}

uint64_t sub_1DF4E434C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4E5750, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_1DF4E44A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4E44C4, 0, 0);
}

uint64_t sub_1DF4E44C4()
{
  v1 = sub_1DF481988();
  v0[21] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DF4E45E8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D58, &qword_1DF569340);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF4D0E70;
  v0[13] = &block_descriptor_165;
  v0[14] = v2;
  [v1 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF4E45E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1DF4E4958;
  }

  else
  {
    v3 = sub_1DF4E46F8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF4E46F8()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = [*(v0 + 144) aa_altDSID];

    if (v2)
    {
      v1 = sub_1DF564944();
      v4 = v3;

      goto LABEL_6;
    }

    v1 = 0;
  }

  v4 = 0;
LABEL_6:

  *(v0 + 184) = sub_1DF4E3B34(v1, v4);
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = sub_1DF4E4800;
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);

  return sub_1DF4DF018(v7, v6);
}

uint64_t sub_1DF4E4800(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4E49C8, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_1DF4E4958()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[22];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1DF4E49C8()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1DF4E4A2C()
{
  result = qword_1ECE376B0;
  if (!qword_1ECE376B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376B0);
  }

  return result;
}

unint64_t sub_1DF4E4AFC()
{
  result = qword_1ECE37DB8;
  if (!qword_1ECE37DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37DB8);
  }

  return result;
}

uint64_t sub_1DF4E4B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1DF4E5748;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DF4E4CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1DF4E5748;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of TicketManager.signupForWaitlist(featureID:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x80);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DF4E5748;

  return v10(a1, a2);
}

uint64_t dispatch thunk of TicketManager.getWaitlistStatus(featureID:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DF4A3FF4;

  return v10(a1, a2);
}

uint64_t sub_1DF4E5130()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DF48D3C0;

  return sub_1DF4E13C8(v2, v3, v4);
}

uint64_t sub_1DF4E51E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1DF48D3C0;

  return sub_1DF51CA38(v2, v3, v5);
}

uint64_t sub_1DF4E52A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF51CB20(a1, v4, v5, v7);
}

uint64_t objectdestroy_73Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DF4E53B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DF48D3C0;

  return sub_1DF4DEF44(v2, v3, v4);
}

uint64_t sub_1DF4E546C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DF48D4B0;

  return sub_1DF4DC924(v2, v3);
}

uint64_t objectdestroy_101Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DF4E5560()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DF48D3C0;

  return sub_1DF4DC61C(v2, v3);
}

uint64_t objectdestroy_77Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1DF4E5654()
{
  result = qword_1ECE376B8;
  if (!qword_1ECE376B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376B8);
  }

  return result;
}

uint64_t sub_1DF4E5758(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

_BYTE *sub_1DF4E57BC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1DF564D54();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1DF4E9FE8(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1DF4E583C()
{
  v0 = type metadata accessor for SystemProperties();
  v1 = swift_allocObject();
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = 1;
  v11[3] = v0;
  v11[4] = &off_1F5A88E50;
  v11[0] = v1;
  type metadata accessor for AvailabilityManager();
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v11, v0);
  v4 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = *v6;
  v2[13] = v0;
  v2[14] = &off_1F5A88E50;
  v2[9] = 0;
  v2[10] = v8;
  v2[2] = &unk_1DF569BB8;
  v2[3] = 0;
  v2[4] = &unk_1DF569BC0;
  v2[5] = 0;
  v2[6] = sub_1DF4E5EF4;
  v2[7] = 0;
  v2[8] = sub_1DF4E5F08;
  v2[15] = sub_1DF47FD50;
  v2[16] = 0;
  result = __swift_destroy_boxed_opaque_existential_0(v11);
  qword_1ED954D68 = v2;
  return result;
}

uint64_t sub_1DF4E59E4()
{
  v1 = type metadata accessor for XPCCaller();
  v2 = [objc_allocWithZone(v1) init];
  *(v0 + 40) = v1;
  *(v0 + 48) = &off_1F5A8AB90;
  *(v0 + 16) = v2;
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  v7 = off_1F5A8AB98 + *off_1F5A8AB98;
  v3 = *(off_1F5A8AB98 + 1);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1DF4E5B58;
  v5 = *(v0 + 72);

  return (v7)(0x6C6C2E64756F6C63, 0xE90000000000006DLL, v5, 1, v1, &off_1F5A8AB90);
}

uint64_t sub_1DF4E5B58(uint64_t a1)
{
  v4 = *(*v2 + 56);
  v5 = *v2;
  v5[8] = v1;

  __swift_destroy_boxed_opaque_existential_0(v5 + 2);
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4E5CA8, 0, 0);
  }

  else
  {
    v6 = v5[1];

    return v6(a1);
  }
}

uint64_t sub_1DF4E5CDC()
{
  if (qword_1ED955FF0 != -1)
  {
    swift_once();
  }

  v1 = off_1ED955FF8;
  v2 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  *(v0 + 16) = v2;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1DF4E5DE0;

  return (sub_1DF4EB220)(v1, v2);
}

uint64_t sub_1DF4E5DE0(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

id sub_1DF4E5F24()
{
  if ((sub_1DF548FD8() & 1) == 0)
  {
    return 0;
  }

  if (qword_1ED9562B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED9562C0;
  v1 = sub_1DF564914();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t static AvailabilityManager.shared.getter()
{
  if (qword_1ED954D60 != -1)
  {
    swift_once();
  }
}

void sub_1DF4E6024(uint64_t a1@<X8>)
{
  v28 = 0;
  v29 = 256;
  v2 = [objc_opt_self() currentAvailability];
  sub_1DF4A8ACC(v2, &v28, &v30);
  v3 = v30;
  v4 = v31;
  v5 = v32;
  v6 = v33;
  v8 = v34;
  v7 = v35;
  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v9 = sub_1DF5647B4();
  __swift_project_value_buffer(v9, qword_1ED955738);
  v10 = v2;

  v11 = sub_1DF564794();
  v12 = sub_1DF564C44();

  if (os_log_type_enabled(v11, v12))
  {
    v27 = v3;
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v13 = 136315650;
    *(v13 + 4) = sub_1DF47EF6C(0x2928646568636163, 0xE800000000000000, &v28);
    *(v13 + 12) = 2080;
    v30 = v27;
    v31 = v4;
    v32 = v5;
    v33 = v6;
    v34 = v8;
    v35 = v7;

    log = v11;
    v14 = AvailabilityModel.description.getter();
    v23 = v12;
    v15 = v4;
    v16 = v8;
    v17 = v6;
    v18 = v5;
    v20 = v19;

    v21 = sub_1DF47EF6C(v14, v20, &v28);
    v5 = v18;
    v6 = v17;
    v8 = v16;
    v4 = v15;

    *(v13 + 14) = v21;
    *(v13 + 22) = 2112;
    *(v13 + 24) = v10;
    *v25 = v10;
    v11 = v10;
    v10 = log;
    _os_log_impl(&dword_1DF47C000, log, v23, "%s: Returning AvailabilityModel %s, from csfAvailability %@", v13, 0x20u);
    sub_1DF484888(v25);
    MEMORY[0x1E12D75F0](v25, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v26, -1, -1);
    v22 = v13;
    v3 = v27;
    MEMORY[0x1E12D75F0](v22, -1, -1);
  }

  *a1 = v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
}

uint64_t sub_1DF4E62F0(uint64_t a1)
{
  v1[24] = a1;
  v2 = sub_1DF5644C4();
  v1[25] = v2;
  v3 = *(v2 - 8);
  v1[26] = v3;
  v4 = *(v3 + 64) + 15;
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4E63B0, 0, 0);
}

uint64_t sub_1DF4E63B0()
{
  v32 = v0;
  v0[21] = &type metadata for FeatureFlag;
  v1 = sub_1DF481614();
  *(v0 + 144) = 7;
  v0[22] = v1;
  v2 = sub_1DF5645A4();
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  if (v2)
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF5647B4();
    __swift_project_value_buffer(v3, qword_1ED9556D8);
    v4 = sub_1DF564794();
    v5 = sub_1DF564C44();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v31 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1DF47EF6C(0x29286863746566, 0xE700000000000000, &v31);
      _os_log_impl(&dword_1DF47C000, v4, v5, "%{public}s New availability flag enabled, will return empty set for unavailable reasons.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1E12D75F0](v7, -1, -1);
      MEMORY[0x1E12D75F0](v6, -1, -1);
    }

    v9 = v0[26];
    v8 = v0[27];
    v11 = v0[24];
    v10 = v0[25];
    sub_1DF5644B4();
    v12 = sub_1DF5644A4();
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v16 = sub_1DF488298(8, v12, v14, v15);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = MEMORY[0x1E12D6280](v16, v18, v20, v22);
    v25 = v24;

    *(v11 + 24) = v23;
    *(v11 + 32) = v25;
    *(v11 + 8) = 512;
    *(v11 + 16) = 0;
    *v11 = 1;
    v26 = v0[27];

    v27 = v0[1];

    return v27();
  }

  else
  {
    v29 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_1DF4E6700;
    v30 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D50, qword_1DF569370);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1DF4E5758;
    v0[13] = &block_descriptor_2;
    v0[14] = v30;
    [v29 currentAvailabilityWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1DF4E6700()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF4E67E0, 0, 0);
}

uint64_t sub_1DF4E67E0()
{
  v40 = v0;
  v1 = v0[23];
  v32 = 0;
  v33 = 256;
  v2 = v1;
  sub_1DF4A8ACC(v2, &v32, &v34);
  v3 = v34;
  v4 = v35;
  v5 = v36;
  v6 = v37;
  v8 = v38;
  v7 = v39;
  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v9 = sub_1DF5647B4();
  __swift_project_value_buffer(v9, qword_1ED955738);
  v10 = v2;

  v11 = sub_1DF564794();
  v12 = sub_1DF564C44();

  if (os_log_type_enabled(v11, v12))
  {
    v31 = v3;
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v13 = 136315650;
    *(v13 + 4) = sub_1DF47EF6C(0x29286863746566, 0xE700000000000000, &v32);
    *(v13 + 12) = 2080;
    v34 = v31;
    v35 = v4;
    v36 = v5;
    v37 = v6;
    v38 = v8;
    v39 = v7;

    log = v11;
    v14 = AvailabilityModel.description.getter();
    v27 = v12;
    v15 = v4;
    v16 = v8;
    v17 = v6;
    v18 = v5;
    v20 = v19;

    v21 = sub_1DF47EF6C(v14, v20, &v32);
    v5 = v18;
    v6 = v17;
    v8 = v16;
    v4 = v15;

    *(v13 + 14) = v21;
    *(v13 + 22) = 2112;
    *(v13 + 24) = v10;
    *v29 = v10;
    v11 = v10;
    v10 = log;
    _os_log_impl(&dword_1DF47C000, log, v27, "%s: Returning AvailabilityModel %s, from csfAvailability %@", v13, 0x20u);
    sub_1DF484888(v29);
    MEMORY[0x1E12D75F0](v29, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v30, -1, -1);
    v22 = v13;
    v3 = v31;
    MEMORY[0x1E12D75F0](v22, -1, -1);
  }

  v23 = v0[24];
  *v23 = v3;
  *(v23 + 1) = v4;
  *(v23 + 8) = v5;
  *(v23 + 16) = v6;
  *(v23 + 24) = v8;
  *(v23 + 32) = v7;
  v24 = v0[27];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1DF4E6ACC(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4E6AF0, 0, 0);
}

id sub_1DF4E6AF0()
{
  v33 = v0;
  v1 = *(v0 + 40);
  v2 = *(v1 + 56);
  if ((*(v1 + 48))())
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF5647B4();
    __swift_project_value_buffer(v3, qword_1ED9556D8);
    v4 = sub_1DF564794();
    v5 = sub_1DF564C44();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v32 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1DF47EF6C(0xD00000000000001DLL, 0x80000001DF5725C0, &v32);
      _os_log_impl(&dword_1DF47C000, v4, v5, "%s Eligibility bypass is set to YES. Overriding access status to true.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1E12D75F0](v7, -1, -1);
      MEMORY[0x1E12D75F0](v6, -1, -1);
    }

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v9 = result;
      v10 = 0x101000000;
      v11 = MobileGestalt_copy_regionCode_obj();

      if (v11)
      {
        v12 = sub_1DF564944();
        v14 = v13;

        if (v12 == 18499 && v14 == 0xE200000000000000)
        {

          v10 = 0x10101000000;
        }

        else
        {
          v25 = sub_1DF5650D4();

          if (v25)
          {
            v10 = 0x10101000000;
          }
        }
      }

      v26 = *(v0 + 40);
      v27 = *(v26 + 120);
      v28 = *(v26 + 128);
      v29 = 65537;
      if (!*(v0 + 72))
      {
        v29 = 1;
      }

      sub_1DF4E2C10(v29 | v10, v27);
      v30 = *(v0 + 8);

      return v30(1);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  if (*(v0 + 72) == 1)
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v15 = sub_1DF5647B4();
    __swift_project_value_buffer(v15, qword_1ED956398);
    v16 = sub_1DF564794();
    v17 = sub_1DF564C24();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_21;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Requesting feature and deprecated parameter serverValue was passed as true. This will be ignored and will throw an error in the future.";
  }

  else
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v20 = sub_1DF5647B4();
    __swift_project_value_buffer(v20, qword_1ED956398);
    v16 = sub_1DF564794();
    v17 = sub_1DF564C44();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_21;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Requesting feature and deprecated parameter serverValue was passed as false.";
  }

  _os_log_impl(&dword_1DF47C000, v16, v17, v19, v18, 2u);
  MEMORY[0x1E12D75F0](v18, -1, -1);
LABEL_21:
  v21 = *(v0 + 40);

  v22 = *(v21 + 24);
  v31 = (*(v21 + 16) + **(v21 + 16));
  v23 = *(*(v21 + 16) + 4);
  v24 = swift_task_alloc();
  *(v0 + 48) = v24;
  *v24 = v0;
  v24[1] = sub_1DF4E6F64;

  return v31(0);
}

uint64_t sub_1DF4E6F64(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_1DF4E71F0;
  }

  else
  {
    v5 = sub_1DF4E7078;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

id sub_1DF4E7078()
{
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR___CloudFeature_canUse;
  swift_beginAccess();
  v3 = *(v1 + v2);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    v6 = MobileGestalt_copy_regionCode_obj();

    if (v6)
    {
      v7 = sub_1DF564944();
      v9 = v8;

      if (v7 == 18499 && v9 == 0xE200000000000000)
      {

        v6 = 0x10000000000;
      }

      else
      {
        v10 = sub_1DF5650D4();

        if (v10)
        {
          v6 = 0x10000000000;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    v11 = *(v0 + 40);
    v12 = *(v0 + 72);
    v13 = *(v1 + v2);

    v14 = *(v11 + 128);
    v15 = 0x100000000;
    if (!v3)
    {
      v15 = 0;
    }

    v16 = 65537;
    if (!v12)
    {
      v16 = 1;
    }

    sub_1DF4E2C10(v6 | v16 | v15, *(v11 + 120));
    v17 = *(v0 + 8);

    return v17(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DF4E71F0()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    v3 = 0x101000000;
    v4 = MobileGestalt_copy_regionCode_obj();

    if (v4)
    {
      v5 = sub_1DF564944();
      v7 = v6;

      if (v5 == 18499 && v7 == 0xE200000000000000)
      {

        v3 = 0x10101000000;
      }

      else
      {
        v8 = sub_1DF5650D4();

        if (v8)
        {
          v3 = 0x10101000000;
        }
      }
    }

    v9 = *(v0 + 64);
    v10 = *(v0 + 40);
    v11 = *(v0 + 72);
    swift_willThrow();
    v12 = *(v10 + 128);
    v13 = 0x10000;
    if (!v11)
    {
      v13 = 0;
    }

    sub_1DF4E2C10(v13 | v3, *(v10 + 120));
    v14 = *(v0 + 8);
    v15 = *(v0 + 64);

    return v14(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4E7334(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  v3 = sub_1DF5644C4();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4E73F8, 0, 0);
}

uint64_t sub_1DF4E73F8()
{
  v91 = v0;
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  sub_1DF5644B4();
  v4 = sub_1DF5644A4();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v8 = sub_1DF488298(8, v4, v6, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x1E12D6280](v8, v10, v12, v14);
  v17 = v16;

  *(v0 + 48) = v15;
  *(v0 + 56) = v17;
  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v18 = sub_1DF5647B4();
  *(v0 + 64) = __swift_project_value_buffer(v18, qword_1ED955738);

  v19 = sub_1DF564794();
  v20 = sub_1DF564C44();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 136446210;
    v88 = v22;
    v89 = 91;
    v90 = 0xE100000000000000;

    MEMORY[0x1E12D62C0](0xD000000000000029, 0x80000001DF5725E0);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v15, v17);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v23 = sub_1DF47EF6C(91, 0xE100000000000000, &v88);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_1DF47C000, v19, v20, "%{public}s Start", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1E12D75F0](v22, -1, -1);
    MEMORY[0x1E12D75F0](v21, -1, -1);
  }

  v24 = *(v0 + 16);
  v25 = *(v24 + 72);
  if ((*(v24 + 64))())
  {
    v86 = v15;
    v89 = MEMORY[0x1E69E7CC0];
    sub_1DF4BCE90(0, 4, 0);
    v26 = v89;
    v28 = qword_1F5A88690;
    v27 = off_1F5A88698;
    v30 = *(v89 + 16);
    v29 = *(v89 + 24);
    v31 = v29 >> 1;
    v32 = v30 + 1;

    if (v29 >> 1 <= v30)
    {
      sub_1DF4BCE90((v29 > 1), v30 + 1, 1);
      v26 = v89;
      v29 = *(v89 + 24);
      v31 = v29 >> 1;
    }

    *(v26 + 16) = v32;
    v33 = v26 + 24 * v30;
    *(v33 + 32) = v28;
    *(v33 + 40) = v27;
    *(v33 + 48) = 1;
    v34 = qword_1F5A886A0;
    v35 = off_1F5A886A8;
    v89 = v26;
    v36 = v30 + 2;

    if (v31 <= v32)
    {
      sub_1DF4BCE90((v29 > 1), v36, 1);
      v26 = v89;
    }

    *(v26 + 16) = v36;
    v37 = v26 + 24 * v32;
    *(v37 + 32) = v34;
    *(v37 + 40) = v35;
    *(v37 + 48) = 1;
    v39 = qword_1F5A886B0;
    v38 = off_1F5A886B8;
    v89 = v26;
    v41 = *(v26 + 16);
    v40 = *(v26 + 24);
    v42 = v40 >> 1;
    v43 = v41 + 1;

    if (v40 >> 1 <= v41)
    {
      sub_1DF4BCE90((v40 > 1), v41 + 1, 1);
      v26 = v89;
      v40 = *(v89 + 24);
      v42 = v40 >> 1;
    }

    *(v26 + 16) = v43;
    v44 = v26 + 24 * v41;
    *(v44 + 32) = v39;
    *(v44 + 40) = v38;
    *(v44 + 48) = 1;
    v45 = aCloudLlm_0[0];
    v46 = aCloudLlm_0[1];
    v89 = v26;

    if (v42 <= v43)
    {
      sub_1DF4BCE90((v40 > 1), v41 + 2, 1);
      v26 = v89;
    }

    *(v26 + 16) = v41 + 2;
    v47 = v26 + 24 * v43;
    *(v47 + 32) = v45;
    *(v47 + 40) = v46;
    *(v47 + 48) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CD0, &unk_1DF56A380);
    v89 = sub_1DF564F34();

    sub_1DF4E9C6C(v48, 1, &v89);

    v60 = v89;

    v61 = sub_1DF564794();
    v62 = sub_1DF564C44();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 136446466;
      v88 = v64;
      v89 = 91;
      v90 = 0xE100000000000000;
      MEMORY[0x1E12D62C0](0xD000000000000029, 0x80000001DF5725E0);
      MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
      MEMORY[0x1E12D62C0](v86, v17);
      MEMORY[0x1E12D62C0](93, 0xE100000000000000);

      v65 = sub_1DF47EF6C(v89, v90, &v88);

      *(v63 + 4) = v65;
      *(v63 + 12) = 2082;
      v66 = sub_1DF564884();
      v68 = sub_1DF47EF6C(v66, v67, &v88);

      *(v63 + 14) = v68;
      _os_log_impl(&dword_1DF47C000, v61, v62, "%{public}s Bypass is enabled, returning %{public}s", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v64, -1, -1);
      MEMORY[0x1E12D75F0](v63, -1, -1);
    }

    else
    {
    }

    v69 = MobileGestalt_get_current_device();
    if (v69)
    {
      v74 = v69;
      v75 = 0x101000000;
      v76 = MobileGestalt_copy_regionCode_obj();

      if (v76)
      {
        v77 = sub_1DF564944();
        v79 = v78;

        if (v77 == 18499 && v79 == 0xE200000000000000)
        {

          v75 = 0x10101000000;
        }

        else
        {
          v80 = sub_1DF5650D4();

          if (v80)
          {
            v75 = 0x10101000000;
          }
        }
      }

      v81 = 257;
      if (*(v0 + 88))
      {
        v81 = 65793;
      }

      v82 = *(v0 + 40);
      v83 = *(v0 + 16);
      v84 = *(v83 + 128);
      sub_1DF4E2C10(v81 | v75, *(v83 + 120));

      v85 = *(v0 + 8);

      return v85(v60);
    }

    else
    {
      __break(1u);
      return MEMORY[0x1EEE6C130](0, v70, v71, v72, v73);
    }
  }

  else
  {

    v49 = sub_1DF564794();
    v50 = sub_1DF564C44();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 136446210;
      v88 = v52;
      v89 = 91;
      v90 = 0xE100000000000000;

      MEMORY[0x1E12D62C0](0xD000000000000029, 0x80000001DF5725E0);
      MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
      MEMORY[0x1E12D62C0](v15, v17);
      MEMORY[0x1E12D62C0](93, 0xE100000000000000);

      v53 = sub_1DF47EF6C(v89, v90, &v88);

      *(v51 + 4) = v53;
      _os_log_impl(&dword_1DF47C000, v49, v50, "%{public}s Fetching feature access...", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x1E12D75F0](v52, -1, -1);
      MEMORY[0x1E12D75F0](v51, -1, -1);
    }

    v54 = *(v0 + 16);
    v55 = *(v54 + 40);
    v87 = (*(v54 + 32) + **(v54 + 32));
    v56 = *(*(v54 + 32) + 4);
    v57 = swift_task_alloc();
    *(v0 + 72) = v57;
    *v57 = v0;
    v57[1] = sub_1DF4E7D90;
    v58 = *(v0 + 88);

    return v87(v58);
  }
}

uint64_t sub_1DF4E7D90(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF4E7E90, 0, 0);
}

id sub_1DF4E7E90()
{
  v34 = v0;
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = sub_1DF4EA06C(*(v0 + 80));

  v4 = sub_1DF4E99A0(v3);

  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 56);
  if (v7)
  {
    v9 = *(v0 + 48);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446466;
    v33[0] = v11;
    v33[1] = 91;
    v33[2] = 0xE100000000000000;
    MEMORY[0x1E12D62C0](0xD000000000000029, 0x80000001DF5725E0);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v9, v8);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v12 = sub_1DF47EF6C(91, 0xE100000000000000, v33);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2082;
    v13 = sub_1DF564884();
    v15 = sub_1DF47EF6C(v13, v14, v33);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_1DF47C000, v5, v6, "%{public}s Returning %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v11, -1, -1);
    MEMORY[0x1E12D75F0](v10, -1, -1);
  }

  else
  {
  }

  sub_1DF4E57BC(v4);
  if (v17)
  {
    v18 = v16;

    v19 = (v18 & 1) << 32;
  }

  else
  {
    v19 = 0;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v21 = result;
    v22 = MobileGestalt_copy_regionCode_obj();

    if (v22)
    {
      v23 = sub_1DF564944();
      v25 = v24;

      if (v23 == 18499 && v25 == 0xE200000000000000)
      {

        v26 = 0x10000000000;
      }

      else
      {
        v27 = sub_1DF5650D4();

        v26 = 0x10000000000;
        if ((v27 & 1) == 0)
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 0;
    }

    v28 = 257;
    if (*(v0 + 88))
    {
      v28 = 65793;
    }

    v29 = *(v0 + 40);
    v30 = *(v0 + 16);
    v31 = *(v30 + 128);
    sub_1DF4E2C10(v26 | v19 | v28, *(v30 + 120));

    v32 = *(v0 + 8);

    return v32(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4E821C()
{
  v9 = v0;
  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED955738);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1DF47EF6C(0xD000000000000010, 0x80000001DF572630, &v8);
    _os_log_impl(&dword_1DF47C000, v2, v3, "%{public}s is deprecated, returning empty set.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1E12D75F0](v5, -1, -1);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  **(v0 + 16) = 0;
  v6 = *(v0 + 8);

  return v6();
}

unint64_t AvailabilityManager.AssetUnavailableReasons.description.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0xD000000000000013;
  }

  if (v1)
  {
    MEMORY[0x1E12D62C0](0xD000000000000011, 0x80000001DF572690);
  }

  if ((v1 & 2) != 0)
  {
    MEMORY[0x1E12D62C0](0xD000000000000010, 0x80000001DF572670);
  }

  MEMORY[0x1E12D62C0](62, 0xE100000000000000);
  return 0xD000000000000016;
}

void *AvailabilityManager.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  v5 = v0[16];

  return v0;
}

uint64_t AvailabilityManager.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  v5 = v0[16];

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

uint64_t static Availability.current.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED954D60 != -1)
  {
    swift_once();
  }

  sub_1DF4E6024(v6);
  v2 = v7;
  v3 = v8;

  v5 = v2;
  if (!v3)
  {
    v5 = v2;
  }

  *a1 = v5;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1DF4E8624()
{
  if (qword_1ED954D60 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1DF4E86E8;

  return sub_1DF4E62F0(v0 + 16);
}

uint64_t sub_1DF4E86E8()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF4E87E4, 0, 0);
}

uint64_t sub_1DF4E87E4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);

  v5 = v1 != 0;
  if (!v2)
  {
    v5 = v1;
  }

  *v4 = v5;
  *(v4 + 8) = v2;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t Availability.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      return 0x646574696D696CLL;
    }

    else
    {
      return 0x6C62616C69617661;
    }
  }

  else
  {
    sub_1DF564DF4();

    v3 = CSFUnavailabilityReasons.description.getter(v1);
    MEMORY[0x1E12D62C0](v3);

    return 0xD000000000000016;
  }
}

uint64_t static Availability.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF4E897C(uint64_t a1)
{
  v2 = sub_1DF4EA3F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4E89B8(uint64_t a1)
{
  v2 = sub_1DF4EA3F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF4E89F4()
{
  v1 = 0x646574696D696CLL;
  if (*v0 != 1)
  {
    v1 = 0x616C696176616E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

uint64_t sub_1DF4E8A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF4EBD7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF4E8A84(uint64_t a1)
{
  v2 = sub_1DF4EA2F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4E8AC0(uint64_t a1)
{
  v2 = sub_1DF4EA2F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF4E8AFC(uint64_t a1)
{
  v2 = sub_1DF4EA39C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4E8B38(uint64_t a1)
{
  v2 = sub_1DF4EA39C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF4E8B74()
{
  sub_1DF565234();
  MEMORY[0x1E12D6B00](0);
  return sub_1DF565264();
}

uint64_t sub_1DF4E8BB8()
{
  sub_1DF565234();
  MEMORY[0x1E12D6B00](0);
  return sub_1DF565264();
}

uint64_t sub_1DF4E8C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F73616572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF5650D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF4E8C98(uint64_t a1)
{
  v2 = sub_1DF4EA348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4E8CD4(uint64_t a1)
{
  v2 = sub_1DF4EA348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Availability.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DD0, &qword_1DF5693A0);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DD8, &qword_1DF5693A8);
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DE0, &qword_1DF5693B0);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DE8, &qword_1DF5693B8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  v17 = *v1;
  v18 = *(v1 + 8);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF4EA2F4();
  sub_1DF5652A4();
  if (v18 == 1)
  {
    v20 = (v13 + 8);
    if (v17)
    {
      v39 = 1;
      sub_1DF4EA39C();
      v21 = v31;
      sub_1DF565014();
      v23 = v32;
      v22 = v33;
    }

    else
    {
      v38 = 0;
      sub_1DF4EA3F0();
      v21 = v28;
      sub_1DF565014();
      v23 = v29;
      v22 = v30;
    }

    (*(v23 + 8))(v21, v22);
    return (*v20)(v16, v12);
  }

  else
  {
    v40 = 2;
    sub_1DF4EA348();
    v24 = v34;
    sub_1DF565014();
    v37 = v17;
    type metadata accessor for UnavailabilityReasons(0);
    sub_1DF4AAB30(&qword_1ECE37E00);
    v25 = v36;
    sub_1DF565074();
    (*(v35 + 8))(v24, v25);
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t Availability.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1E12D6B00](2);
  }

  return MEMORY[0x1E12D6B00](v1);
}

uint64_t Availability.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1DF565234();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1E12D6B00](2);
  }

  MEMORY[0x1E12D6B00](v1);
  return sub_1DF565264();
}

uint64_t Availability.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37E18, &qword_1DF5693C0);
  v44 = *(v42 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v38 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37E20, &qword_1DF5693C8);
  v43 = *(v41 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37E28, &qword_1DF5693D0);
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37E30, &qword_1DF5693D8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v18);
  sub_1DF4EA2F4();
  v19 = v47;
  sub_1DF565284();
  if (!v19)
  {
    v39 = v8;
    v20 = v46;
    v47 = v13;
    v21 = sub_1DF564FF4();
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = *(v21 + 32);
      if (v22 == 1 && v23 != 3)
      {
        if (*(v21 + 32))
        {
          if (v23 != 1)
          {
            v52 = 2;
            sub_1DF4EA348();
            sub_1DF564F64();
            v32 = v12;
            v33 = v45;
            v34 = v47;
            type metadata accessor for UnavailabilityReasons(0);
            sub_1DF4AAB30(&qword_1ECE37E40);
            v36 = v42;
            sub_1DF564FE4();
            (*(v44 + 8))(v20, v36);
            (*(v34 + 8))(v16, v32);
            swift_unknownObjectRelease();
            v37 = 0;
            v31 = v49;
LABEL_16:
            *v33 = v31;
            *(v33 + 8) = v37;
            return __swift_destroy_boxed_opaque_existential_0(v48);
          }

          v51 = 1;
          sub_1DF4EA39C();
          sub_1DF564F64();
          v30 = v47;
          (*(v43 + 8))(v7, v41);
          (*(v30 + 8))(v16, v12);
          swift_unknownObjectRelease();
          v31 = 1;
        }

        else
        {
          v50 = 0;
          sub_1DF4EA3F0();
          sub_1DF564F64();
          (*(v40 + 8))(v11, v39);
          (*(v47 + 8))(v16, v12);
          swift_unknownObjectRelease();
          v31 = 0;
        }

        v37 = 1;
        v33 = v45;
        goto LABEL_16;
      }
    }

    v25 = sub_1DF564E44();
    swift_allocError();
    v26 = v12;
    v28 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37E38, &qword_1DF5693E0) + 48);
    *v28 = &type metadata for Availability;
    sub_1DF564F74();
    sub_1DF564E34();
    (*(*(v25 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v47 + 8))(v16, v26);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v48);
}

uint64_t sub_1DF4E97D8()
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

uint64_t sub_1DF4E980C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1DF565234();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1E12D6B00](2);
  }

  MEMORY[0x1E12D6B00](v1);
  return sub_1DF565264();
}

uint64_t sub_1DF4E9878()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1E12D6B00](2);
  }

  return MEMORY[0x1E12D6B00](v1);
}

uint64_t sub_1DF4E98C8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1DF565234();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1E12D6B00](2);
  }

  MEMORY[0x1E12D6B00](v1);
  return sub_1DF565264();
}

uint64_t sub_1DF4E9964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF4E99A0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v34 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);
    if (v15 >> 62)
    {
      result = sub_1DF564F04();
    }

    else
    {
      result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 &= v6 - 1;
    if (result)
    {
      v33 = v2;
      if ((v15 & 0xC000000000000001) != 0)
      {

        v17 = MEMORY[0x1E12D66D0](0, v15);
      }

      else
      {
        if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v16 = *(v15 + 32);

        v17 = v16;
      }

      v18 = v17;
      v31 = OBJC_IVAR___CloudFeature_canUse;
      swift_beginAccess();
      v32 = v18[v31];

      v19 = *(v33 + 16);
      if (*(v33 + 24) <= v19)
      {
        sub_1DF501608(v19 + 1, 1);
      }

      v2 = v34;
      v20 = *(v34 + 40);
      sub_1DF565234();
      sub_1DF5649E4();
      result = sub_1DF565264();
      v21 = v34 + 64;
      v22 = -1 << *(v34 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v34 + 64 + 8 * (v23 >> 6))) == 0)
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
          v29 = *(v21 + 8 * v24);
          if (v29 != -1)
          {
            v25 = __clz(__rbit64(~v29)) + (v24 << 6);
            goto LABEL_28;
          }
        }

        goto LABEL_33;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~*(v34 + 64 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
      *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v30 = (*(v34 + 48) + 16 * v25);
      *v30 = v13;
      v30[1] = v14;
      *(*(v34 + 56) + v25) = v32;
      ++*(v34 + 16);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void sub_1DF4E9C6C(uint64_t a1, char a2, void *a3)
{
  v39 = *(a1 + 16);
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  LOBYTE(v8) = *(a1 + 48);
  v9 = *a3;

  v10 = sub_1DF480420(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1DF501608(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_1DF480420(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1DF565144();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_1DF4C2960();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1DF564DF4();
    MEMORY[0x1E12D62C0](0xD00000000000001BLL, 0x80000001DF572800);
    sub_1DF564EE4();
    MEMORY[0x1E12D62C0](39, 0xE100000000000000);
    sub_1DF564EF4();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 72);
    v8 = 1;
    while (v8 < *(a1 + 16))
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v26 = *v5;
      v27 = *a3;

      v28 = sub_1DF480420(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_1DF501608(v32, 1);
        v33 = *a3;
        v28 = sub_1DF480420(v7, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v35[2] = v38;
      v5 += 24;
      if (v39 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

_BYTE *sub_1DF4E9FE8(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    *result = *(*(a5 + 56) + a2);

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1DF4EA06C(unint64_t a1)
{
  v28 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_1DF564F04();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1E12D66D0](v3, a1);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v7 = *(a1 + 8 * v3 + 32);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v27 = v8;
        v9 = v7;
        v11 = *&v7[OBJC_IVAR___CloudFeature_featureID];
        v10 = *&v7[OBJC_IVAR___CloudFeature_featureID + 8];

        v13 = sub_1DF480420(v11, v10);
        v14 = v4[2];
        v15 = (v12 & 1) == 0;
        v16 = v14 + v15;
        if (__OFADD__(v14, v15))
        {
          goto LABEL_22;
        }

        v17 = v12;
        if (v4[3] < v16)
        {
          sub_1DF5018A8(v16, 1);
          v4 = v28;
          v18 = sub_1DF480420(v11, v10);
          if ((v17 & 1) != (v19 & 1))
          {
            result = sub_1DF565144();
            __break(1u);
            return result;
          }

          v13 = v18;
        }

        if (v17)
        {

          v6 = (v4[7] + 8 * v13);
          MEMORY[0x1E12D6340](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v25 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1DF564AC4();
          }

          sub_1DF564AE4();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37ED0, &qword_1DF569BB0);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1DF569350;
          *(v20 + 32) = v9;
          v4[(v13 >> 6) + 8] |= 1 << v13;
          v21 = (v4[6] + 16 * v13);
          *v21 = v11;
          v21[1] = v10;
          *(v4[7] + 8 * v13) = v20;
          v22 = v4[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_23;
          }

          v4[2] = v24;
        }

        ++v3;
        if (v27 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

unint64_t sub_1DF4EA2F4()
{
  result = qword_1ECE37DF0;
  if (!qword_1ECE37DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37DF0);
  }

  return result;
}

unint64_t sub_1DF4EA348()
{
  result = qword_1ECE37DF8;
  if (!qword_1ECE37DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37DF8);
  }

  return result;
}

unint64_t sub_1DF4EA39C()
{
  result = qword_1ECE37E08;
  if (!qword_1ECE37E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E08);
  }

  return result;
}

unint64_t sub_1DF4EA3F0()
{
  result = qword_1ECE37E10;
  if (!qword_1ECE37E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E10);
  }

  return result;
}

unint64_t sub_1DF4EA448()
{
  result = qword_1ECE37E48;
  if (!qword_1ECE37E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E48);
  }

  return result;
}

unint64_t sub_1DF4EA4A0()
{
  result = qword_1ECE37E50;
  if (!qword_1ECE37E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E50);
  }

  return result;
}

unint64_t sub_1DF4EA4F8()
{
  result = qword_1ECE37E58;
  if (!qword_1ECE37E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37E60, &qword_1DF569420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E58);
  }

  return result;
}

unint64_t sub_1DF4EA560()
{
  result = qword_1ECE37E68;
  if (!qword_1ECE37E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E68);
  }

  return result;
}

unint64_t sub_1DF4EA5B8()
{
  result = qword_1ECE37E70;
  if (!qword_1ECE37E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E70);
  }

  return result;
}

unint64_t sub_1DF4EA610()
{
  result = qword_1ECE37E78;
  if (!qword_1ECE37E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E78);
  }

  return result;
}

uint64_t sub_1DF4EA678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DF48D3C0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AvailabilityManager.fetch()(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF48D4B0;

  return v8(a1);
}

uint64_t dispatch thunk of AvailabilityManager.getAccessStatus(serverValue:)(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF4A3FF4;

  return v8(a1);
}

uint64_t dispatch thunk of AvailabilityManager.getAccessGrantedFeatureKeys(serverValue:)(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF4A3FF4;

  return v8(a1);
}

uint64_t dispatch thunk of AvailabilityManager.getAssetStatus()(uint64_t a1)
{
  v4 = *(*v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF48D4B0;

  return v8(a1);
}

uint64_t getEnumTagSinglePayload for AvailabilityManager.AssetUnavailableReasons(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AvailabilityManager.AssetUnavailableReasons(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AvailabilityStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AvailabilityStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1DF4EAD54(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF4EAD70(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Availability.UnavailableCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Availability.UnavailableCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1DF4EAEB4()
{
  result = qword_1ECE37E80;
  if (!qword_1ECE37E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E80);
  }

  return result;
}

unint64_t sub_1DF4EAF0C()
{
  result = qword_1ECE37E88;
  if (!qword_1ECE37E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E88);
  }

  return result;
}

unint64_t sub_1DF4EAF64()
{
  result = qword_1ECE37E90;
  if (!qword_1ECE37E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E90);
  }

  return result;
}

unint64_t sub_1DF4EAFBC()
{
  result = qword_1ECE37E98;
  if (!qword_1ECE37E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37E98);
  }

  return result;
}

unint64_t sub_1DF4EB014()
{
  result = qword_1ECE37EA0;
  if (!qword_1ECE37EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37EA0);
  }

  return result;
}

unint64_t sub_1DF4EB06C()
{
  result = qword_1ECE37EA8;
  if (!qword_1ECE37EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37EA8);
  }

  return result;
}

unint64_t sub_1DF4EB0C4()
{
  result = qword_1ECE37EB0;
  if (!qword_1ECE37EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37EB0);
  }

  return result;
}

unint64_t sub_1DF4EB11C()
{
  result = qword_1ECE37EB8;
  if (!qword_1ECE37EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37EB8);
  }

  return result;
}

unint64_t sub_1DF4EB174()
{
  result = qword_1ECE37EC0;
  if (!qword_1ECE37EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37EC0);
  }

  return result;
}

unint64_t sub_1DF4EB1CC()
{
  result = qword_1ECE37EC8;
  if (!qword_1ECE37EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37EC8);
  }

  return result;
}

uint64_t sub_1DF4EB220(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v2[10] = a1;
  v2[11] = ObjectType;
  v2[5] = ObjectType;
  v2[6] = &off_1F5A8AB90;
  v2[2] = a2;
  v6 = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DF4EB2AC, 0, 0);
}

id sub_1DF4EB2AC()
{
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result aa_primaryAppleAccount];

  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [v3 aa_altDSID];

  if (!v4)
  {
    v3 = 0;
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v3 = sub_1DF564944();
  v6 = v5;

LABEL_7:
  v0[12] = v3;
  v0[13] = v6;
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[11]);
  v10 = off_1F5A8AB98 + *off_1F5A8AB98;
  v7 = *(off_1F5A8AB98 + 1);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_1DF4EB488;
  v9 = v0[11];

  return (v10)(0xD000000000000018, 0x80000001DF5707C0, 0, 0, v9, &off_1F5A8AB90);
}

uint64_t sub_1DF4EB488(void *a1)
{
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1DF4EB8FC;
  }

  else
  {

    v5 = sub_1DF4EB5A4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

char *sub_1DF4EB5A4()
{
  v34 = v0;
  v1 = v0[10];
  v2 = FeatureCache.allFeatures(forDSID:allowAnySession:ignoreTTL:)(v0[12], v0[13], 1, 1);

  v3 = sub_1DF5490B0(v2);

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);

  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_1DF47EF6C(0xD000000000000038, 0x80000001DF572820, &v32);
    *(v7 + 12) = 2082;
    if (v3 >> 62)
    {
      v9 = sub_1DF564F04();
    }

    else
    {
      v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v33 = MEMORY[0x1E69E7CC0];
      result = sub_1DF4BCB24(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
        __break(1u);
        return result;
      }

      v28 = v8;
      v29 = v6;
      v30 = v7;
      v31 = v5;
      v12 = 0;
      v10 = v33;
      v13 = v3 & 0xC000000000000001;
      v14 = v3;
      do
      {
        if (v13)
        {
          v15 = MEMORY[0x1E12D66D0](v12, v3);
        }

        else
        {
          v15 = *(v3 + 8 * v12 + 32);
        }

        v16 = v15;
        v17 = &v15[OBJC_IVAR___CloudFeature_featureID];
        swift_beginAccess();
        v18 = *v17;
        v19 = *(v17 + 1);

        v33 = v10;
        v21 = *(v10 + 16);
        v20 = *(v10 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1DF4BCB24((v20 > 1), v21 + 1, 1);
          v10 = v33;
        }

        ++v12;
        *(v10 + 16) = v21 + 1;
        v22 = v10 + 16 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v19;
        v3 = v14;
      }

      while (v9 != v12);
      v7 = v30;
      v5 = v31;
      v6 = v29;
      v8 = v28;
    }

    v23 = MEMORY[0x1E12D6370](v10, MEMORY[0x1E69E6158]);
    v25 = v24;

    v26 = sub_1DF47EF6C(v23, v25, &v32);

    *(v7 + 14) = v26;
    _os_log_impl(&dword_1DF47C000, v5, v6, "%{public}s Returning features: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v27 = v0[1];

  return v27(v3);
}

char *sub_1DF4EB8FC()
{
  v44 = v0;
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = v1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Encountered error while trying to refresh AI features, will return cached values anyway: %@", v8, 0xCu);
    sub_1DF484888(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[10];
  v13 = FeatureCache.allFeatures(forDSID:allowAnySession:ignoreTTL:)(v0[12], v0[13], 1, 1);

  v14 = sub_1DF5490B0(v13);

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1ED956398);

  v15 = sub_1DF564794();
  v16 = sub_1DF564C44();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42 = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_1DF47EF6C(0xD000000000000038, 0x80000001DF572820, &v42);
    *(v17 + 12) = 2082;
    if (v14 >> 62)
    {
      v19 = sub_1DF564F04();
    }

    else
    {
      v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      v43 = MEMORY[0x1E69E7CC0];
      result = sub_1DF4BCB24(0, v19 & ~(v19 >> 63), 0);
      if (v19 < 0)
      {
        __break(1u);
        return result;
      }

      v38 = v18;
      v39 = v16;
      v40 = v17;
      v41 = v15;
      v22 = 0;
      v20 = v43;
      v23 = v14 & 0xC000000000000001;
      v24 = v14;
      do
      {
        if (v23)
        {
          v25 = MEMORY[0x1E12D66D0](v22, v14);
        }

        else
        {
          v25 = *(v14 + 8 * v22 + 32);
        }

        v26 = v25;
        v27 = &v25[OBJC_IVAR___CloudFeature_featureID];
        swift_beginAccess();
        v28 = *v27;
        v29 = *(v27 + 1);

        v43 = v20;
        v31 = *(v20 + 16);
        v30 = *(v20 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1DF4BCB24((v30 > 1), v31 + 1, 1);
          v20 = v43;
        }

        ++v22;
        *(v20 + 16) = v31 + 1;
        v32 = v20 + 16 * v31;
        *(v32 + 32) = v28;
        *(v32 + 40) = v29;
        v14 = v24;
      }

      while (v19 != v22);
      v17 = v40;
      v15 = v41;
      v16 = v39;
      v18 = v38;
    }

    v33 = MEMORY[0x1E12D6370](v20, MEMORY[0x1E69E6158]);
    v35 = v34;

    v36 = sub_1DF47EF6C(v33, v35, &v42);

    *(v17 + 14) = v36;
    _os_log_impl(&dword_1DF47C000, v15, v16, "%{public}s Returning features: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v18, -1, -1);
    MEMORY[0x1E12D75F0](v17, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v37 = v0[1];

  return v37(v14);
}

uint64_t sub_1DF4EBD7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646574696D696CLL && a2 == 0xE700000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF5650D4();

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

unint64_t SuiteName.rawValue.getter()
{
  v1 = 0xD000000000000029;
  v2 = *v0;
  if (v2 > 5)
  {
    v7 = 0xD00000000000002DLL;
    v8 = 0xD000000000000023;
    if (v2 != 10)
    {
      v8 = 0xD00000000000002ELL;
    }

    if (v2 != 9)
    {
      v7 = v8;
    }

    if (v2 != 7)
    {
      v1 = 0xD00000000000002CLL;
    }

    if (v2 == 6)
    {
      v1 = 0xD000000000000013;
    }

    if (*v0 <= 8u)
    {
      result = v1;
    }

    else
    {
      result = v7;
    }

    *v0;
  }

  else
  {
    v3 = 0xD000000000000031;
    v4 = 0xD00000000000002BLL;
    if (v2 != 4)
    {
      v4 = 0xD000000000000030;
    }

    if (v2 != 3)
    {
      v3 = v4;
    }

    v5 = 0xD00000000000002CLL;
    if (v2 == 1)
    {
      v5 = 0xD00000000000002ALL;
    }

    if (*v0)
    {
      v1 = v5;
    }

    if (*v0 <= 2u)
    {
      result = v1;
    }

    else
    {
      result = v3;
    }

    *v0;
  }

  return result;
}

void sub_1DF4EC024()
{
  v1 = *v0;
  v2 = sub_1DF564914();
  [v1 removeObjectForKey_];
}

id sub_1DF4EC088()
{
  v1 = *v0;
  v2 = sub_1DF564914();
  v3 = [v1 BOOLForKey_];

  return v3;
}

double sub_1DF4EC0DC@<D0>(SEL *a1@<X4>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  v6 = sub_1DF564914();
  v7 = [v5 *a1];

  if (v7)
  {
    sub_1DF564D24();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_1DF4EC19C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_1DF4EC8F4(a1, v14);
  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x1EEE9AC00](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_1DF5650C4();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1DF564914();
  [v4 *a4];
  swift_unknownObjectRelease();
}

void sub_1DF4EC304()
{
  v1 = *v0;
  v2 = sub_1DF564864();
  v3 = sub_1DF564914();
  [v1 setPersistentDomain:v2 forName:v3];
}

uint64_t sub_1DF4EC3A0()
{
  v1 = *v0;
  v2 = sub_1DF564914();
  v3 = [v1 persistentDomainForName_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1DF564874();

  return v4;
}

CloudSubscriptionFeatures::SuiteName_optional __swiftcall SuiteName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF564F54();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DF4EC484(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = SuiteName.rawValue.getter();
  v4 = v3;
  if (v2 == SuiteName.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DF5650D4();
  }

  return v7 & 1;
}

unint64_t sub_1DF4EC524()
{
  result = qword_1ECE37ED8;
  if (!qword_1ECE37ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37ED8);
  }

  return result;
}

uint64_t sub_1DF4EC578()
{
  v1 = *v0;
  sub_1DF565234();
  SuiteName.rawValue.getter();
  sub_1DF5649E4();

  return sub_1DF565264();
}

uint64_t sub_1DF4EC5E0()
{
  v2 = *v0;
  SuiteName.rawValue.getter();
  sub_1DF5649E4();
}

uint64_t sub_1DF4EC644()
{
  v1 = *v0;
  sub_1DF565234();
  SuiteName.rawValue.getter();
  sub_1DF5649E4();

  return sub_1DF565264();
}

unint64_t sub_1DF4EC6B4@<X0>(unint64_t *a1@<X8>)
{
  result = SuiteName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SuiteName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SuiteName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DF4EC8F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378F0, &qword_1DF5686F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF4EC964(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_1DF564494();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  v17 = *(a1 + OBJC_IVAR___CloudFeature_featureID) == 0x6C6C2E64756F6C63 && *(a1 + OBJC_IVAR___CloudFeature_featureID + 8) == 0xE90000000000006DLL;
  if (v17 || (sub_1DF5650D4() & 1) != 0)
  {
    v18 = OBJC_IVAR___CloudFeature_canUse;
    v19 = swift_beginAccess();
    v20 = *(a1 + v18);
    if (v20 != (a2(v19) & 1))
    {
      a3 = 2;
      v29 = 2;
      sub_1DF4ECCC4();
LABEL_17:
      swift_willThrowTypedImpl();
      return a3;
    }

    if (*(a1 + v18) != 1)
    {
      return a3;
    }

    v21 = OBJC_IVAR___CloudFeature_ttl;
    swift_beginAccess();
    sub_1DF4952D8(a1 + v21, v9);
    v22 = v27;
    if ((*(v27 + 48))(v9, 1, v10) == 1)
    {
      sub_1DF4C46C4(v9);
LABEL_16:
      a3 = 1;
      v28 = 1;
      sub_1DF4ECCC4();
      goto LABEL_17;
    }

    (*(v22 + 32))(v16, v9, v10);
    sub_1DF564474();
    v23 = sub_1DF5643F4();
    v24 = *(v22 + 8);
    v24(v14, v10);
    if ((v23 & 1) == 0)
    {
      v24(v16, v10);
      goto LABEL_16;
    }

    a3 = a1 + OBJC_IVAR___CloudFeature_accessToken;
    swift_beginAccess();
    if (*(a3 + 8))
    {
      v24(v16, v10);
    }

    else
    {
      v30 = 0;
      sub_1DF4ECCC4();
      swift_willThrowTypedImpl();
      v24(v16, v10);
      return 0;
    }
  }

  return a3;
}

unint64_t sub_1DF4ECCC4()
{
  result = qword_1ECE37728;
  if (!qword_1ECE37728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37728);
  }

  return result;
}

unint64_t sub_1DF4ECD2C()
{
  result = qword_1ECE37EE0;
  if (!qword_1ECE37EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37EE0);
  }

  return result;
}

unint64_t sub_1DF4ECD80()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 32);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = 0x745374656B636954;
    }

    else
    {
      if (v3 != 4)
      {
        result = 0xD000000000000012;
        *(v0 + 24);
        *(v0 + 16);
        return result;
      }

      v5 = 0x656B636954746547;
    }

    v8 = v5;
LABEL_13:
    MEMORY[0x1E12D62C0](v1, v2);
    return v8;
  }

  if (!*(v0 + 32))
  {
    v6 = *v0;
    v7 = *(v0 + 8);
    sub_1DF564DF4();

    v8 = 0xD000000000000015;
    MEMORY[0x1E12D62C0](v6, v7);
    v1 = 41;
    v2 = 0xE100000000000000;
    goto LABEL_13;
  }

  if (v3 == 1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1DF4ECF04()
{
  v98 = v0;
  v1 = *(v0 + 152);
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 32);
  if (((1 << v4) & 0x1B) != 0)
  {
    v5 = *(v0 + 120);
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_0(v5, v6);
    v8 = (*(v7 + 32))(v6, v7);
LABEL_3:
    v9 = v8;
    *(v0 + 384) = v8;
    v10 = *(v0 + 248);
    v11 = *(v0 + 224);
    v12 = *(v0 + 152);
    __swift_project_boxed_opaque_existential_0(*(v0 + 136), *(*(v0 + 136) + 24));
    v13 = *(v12 + 32);
    if (v13 == 1)
    {
      v14 = *v12;
    }

    else
    {
      v14 = 0;
    }

    if (v13 == 1)
    {
      v15 = v1[1];
    }

    else
    {
      v15 = 2;
    }

    sub_1DF4D8984(v9, v14, v15, v11);
    v16 = *(v12 + 32) - 3 >= 2;
    sub_1DF564074();
    v17 = 0;
    v18 = *(v12 + 32);
    v19 = 0xF000000000000000;
    if (v18 == 3)
    {
      v20 = v1[3];
      if (v20)
      {
        v21 = *(v0 + 376);
        v23 = *(v0 + 176);
        v22 = *(v0 + 184);
        v24 = *(v0 + 168);
        v25 = v1[2];
        v26 = sub_1DF5641C4();
        v27 = *(v26 + 48);
        v28 = *(v26 + 52);
        swift_allocObject();
        sub_1DF5641B4();
        (*(v23 + 104))(v22, *MEMORY[0x1E6967FC8], v24);
        sub_1DF564194();
        *(v0 + 88) = v25;
        *(v0 + 96) = v20;
        sub_1DF4EFF6C();
        v17 = sub_1DF5641A4();
        v19 = v29;

        if (v21)
        {
          if (qword_1ED9556D0 != -1)
          {
            swift_once();
          }

          v30 = *(v0 + 344);
          v31 = *(v0 + 328);
          __swift_project_value_buffer(*(v0 + 352), qword_1ED9556D8);

          v32 = v21;
          v33 = sub_1DF564794();
          v34 = sub_1DF564C24();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = *(v0 + 344);
            v91 = *(v0 + 336);
            v37 = *(v0 + 320);
            v36 = *(v0 + 328);
            v38 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v95 = v93;
            *v38 = 136446466;
            v96 = 91;
            v97 = 0xE100000000000000;

            MEMORY[0x1E12D62C0](v37, v36);
            MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
            MEMORY[0x1E12D62C0](v91, v35);
            MEMORY[0x1E12D62C0](93, 0xE100000000000000);

            v39 = sub_1DF47EF6C(91, 0xE100000000000000, &v95);

            *(v38 + 4) = v39;
            *(v38 + 12) = 2112;
            v40 = v21;
            v41 = _swift_stdlib_bridgeErrorToNSError();
            *(v38 + 14) = v41;
            *v92 = v41;
            _os_log_impl(&dword_1DF47C000, v33, v34, "%{public}s Unable to encode ticket request object. Request will still be made: %@", v38, 0x16u);
            sub_1DF47E5B4(v92, &unk_1ECE37F10, &qword_1DF567510);
            MEMORY[0x1E12D75F0](v92, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v93);
            MEMORY[0x1E12D75F0](v93, -1, -1);
            MEMORY[0x1E12D75F0](v38, -1, -1);
          }

          else
          {
          }

          v17 = 0;
          v19 = 0xF000000000000000;
        }
      }
    }

    *(v0 + 392) = v17;
    *(v0 + 400) = v19;
    v65 = *(v0 + 224);
    v66 = *(v0 + 120);
    sub_1DF4EF5A8(v17, v19);
    sub_1DF5640E4();
    v67 = v66[3];
    v68 = v66[4];
    __swift_project_boxed_opaque_existential_0(v66, v67);
    if (((*(v68 + 104))(v65, v67, v68) & 1) != 0 && v9)
    {
      v69 = *(v0 + 360);
      v70 = *(v0 + 344);
      v71 = *(v0 + 328);

      v72 = v9;
      v73 = sub_1DF564794();
      v74 = sub_1DF564C44();

      if (os_log_type_enabled(v73, v74))
      {
        v76 = *(v0 + 336);
        v75 = *(v0 + 344);
        v94 = v72;
        v77 = *(v0 + 320);
        v78 = *(v0 + 328);
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v79 = 136446210;
        v95 = v80;
        v96 = 91;
        v97 = 0xE100000000000000;

        MEMORY[0x1E12D62C0](v77, v78);
        MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
        MEMORY[0x1E12D62C0](v76, v75);
        MEMORY[0x1E12D62C0](93, 0xE100000000000000);

        v81 = sub_1DF47EF6C(v96, v97, &v95);

        *(v79 + 4) = v81;
        v72 = v94;
        _os_log_impl(&dword_1DF47C000, v73, v74, "%{public}s Auth header is missing, will attempt to renew credentials", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x1E12D75F0](v80, -1, -1);
        MEMORY[0x1E12D75F0](v79, -1, -1);
      }

      v82 = swift_task_alloc();
      *(v0 + 408) = v82;
      *v82 = v0;
      v82[1] = sub_1DF4ED75C;
      v83 = *(v0 + 224);
      v84 = *(v0 + 120);

      return sub_1DF4EF5BC(v72, v84);
    }

    else
    {
      v85 = swift_task_alloc();
      *(v0 + 424) = v85;
      *v85 = v0;
      v85[1] = sub_1DF4EDB14;
      v86 = *(v0 + 384);
      v87 = *(v0 + 224);
      v88 = *(v0 + 160);
      v89 = *(v0 + 144);
      v90 = *(v0 + 120);

      return sub_1DF4EE9B0(v88, v87, v86, v90, v89);
    }
  }

  if (v4 == 2)
  {
    v42 = *(v0 + 120);
    v43 = v42[3];
    v44 = v42[4];
    __swift_project_boxed_opaque_existential_0(v42, v43);
    v8 = (*(v44 + 96))(v3, v2, v43, v44);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v45 = *(v0 + 120);
    v46 = v45[3];
    v47 = v45[4];
    __swift_project_boxed_opaque_existential_0(v45, v46);
    v8 = (*(v47 + 32))(v46, v47);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v48 = *(v0 + 344);
  v49 = *(v0 + 328);
  v51 = *(v0 + 240);
  v50 = *(v0 + 248);
  v52 = *(v0 + 232);

  sub_1DF4B3AA0(3);
  swift_willThrow();
  (*(v51 + 8))(v50, v52);
  v53 = *(v0 + 312);
  v55 = *(v0 + 280);
  v54 = *(v0 + 288);
  v57 = *(v0 + 248);
  v56 = *(v0 + 256);
  v59 = *(v0 + 216);
  v58 = *(v0 + 224);
  v60 = *(v0 + 208);
  v61 = *(v0 + 184);
  v62 = *(v0 + 160);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_1DF4ED75C()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v8 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v4 = *(v2 + 344);
    v5 = *(v2 + 328);

    v6 = sub_1DF4ED9D0;
  }

  else
  {
    v6 = sub_1DF4ED884;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DF4ED884()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 248);
  v3 = *(v0 + 216);
  v19 = *(v0 + 224);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_0(*(v0 + 136), *(*(v0 + 136) + 24));
  v7 = *(v6 + 8);
  v8 = *(v6 + 32);
  if (v8 == 1)
  {
    v9 = *v6;
  }

  else
  {
    v9 = 0;
  }

  if (v8 == 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = 2;
  }

  v11 = v1;
  sub_1DF4D8984(v1, v9, v10, v3);

  (*(v4 + 40))(v19, v3, v5);
  v12 = swift_task_alloc();
  *(v0 + 424) = v12;
  *v12 = v0;
  v12[1] = sub_1DF4EDB14;
  v13 = *(v0 + 384);
  v14 = *(v0 + 224);
  v15 = *(v0 + 160);
  v16 = *(v0 + 144);
  v17 = *(v0 + 120);

  return sub_1DF4EE9B0(v15, v14, v13, v17, v16);
}

uint64_t sub_1DF4ED9D0()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[48];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[24];
  v9 = v0[25];

  sub_1DF48C2F4(v1, v2);
  (*(v5 + 8))(v4, v6);
  (*(v9 + 8))(v7, v8);
  v22 = v0[52];
  v10 = v0[39];
  v12 = v0[35];
  v11 = v0[36];
  v14 = v0[31];
  v13 = v0[32];
  v16 = v0[27];
  v15 = v0[28];
  v17 = v0[26];
  v18 = v0[23];
  v19 = v0[20];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1DF4EDB14()
{
  v2 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_1DF4EE660;
  }

  else
  {
    v3 = sub_1DF4EDC28;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF4EDC28()
{
  v116 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[20];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[48];
    sub_1DF47E5B4(v3, &qword_1ECE37EE8, &unk_1DF569E60);
    v5 = v0[45];
    v6 = v0[43];
    v7 = v0[41];
    if (!v4)
    {
      v38 = v0[41];

      v39 = sub_1DF564794();
      v40 = sub_1DF564C24();

      v41 = os_log_type_enabled(v39, v40);
      v42 = v0[43];
      if (v41)
      {
        v43 = v0[41];
        v44 = v0[42];
        v45 = v0[40];
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 136446210;
        v113 = v47;
        v114 = 91;
        v115 = 0xE100000000000000;
        MEMORY[0x1E12D62C0](v45, v43);
        MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
        MEMORY[0x1E12D62C0](v44, v42);
        MEMORY[0x1E12D62C0](93, 0xE100000000000000);

        v48 = sub_1DF47EF6C(91, 0xE100000000000000, &v113);

        *(v46 + 4) = v48;
        _os_log_impl(&dword_1DF47C000, v39, v40, "%{public}s Unable to BAA sign request and there is no account. Returning LocalError.userLoggedOut.", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x1E12D75F0](v47, -1, -1);
        MEMORY[0x1E12D75F0](v46, -1, -1);
      }

      else
      {
        v60 = v0[41];
      }

      v62 = v0[49];
      v61 = v0[50];
      v63 = v0[30];
      v64 = v0[31];
      v66 = v0[28];
      v65 = v0[29];
      v67 = v0[24];
      v68 = v0[25];
      sub_1DF4B3AA0(3);
      swift_willThrow();
      sub_1DF4E1A88(0x10000, sub_1DF47FD50);
      sub_1DF48C2F4(v62, v61);
      (*(v63 + 8))(v64, v65);
      (*(v68 + 8))(v66, v67);
      goto LABEL_22;
    }

    v8 = v0[28];
    v9 = v0[15];
    v10 = v9[3];
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_0(v9, v10);
    LOBYTE(v11) = (*(v11 + 104))(v8, v10, v11);

    v12 = sub_1DF564794();
    v13 = sub_1DF564C24();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[43];
    if (v11)
    {
      if (v14)
      {
        v16 = v0[41];
        v17 = v0[42];
        v18 = v0[40];
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 136446210;
        v113 = v20;
        v114 = 91;
        v115 = 0xE100000000000000;
        MEMORY[0x1E12D62C0](v18, v16);
        MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
        MEMORY[0x1E12D62C0](v17, v15);
        MEMORY[0x1E12D62C0](93, 0xE100000000000000);

        v21 = sub_1DF47EF6C(91, 0xE100000000000000, &v113);

        *(v19 + 4) = v21;
        _os_log_impl(&dword_1DF47C000, v12, v13, "%{public}s Unable to BAA sign request and account auth headers are missing. Returning LocalError.missingAuthorizationHeader.", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x1E12D75F0](v20, -1, -1);
        MEMORY[0x1E12D75F0](v19, -1, -1);
      }

      else
      {
        v69 = v0[41];
      }

      v71 = v0[49];
      v70 = v0[50];
      v72 = v0[48];
      v74 = v0[30];
      v73 = v0[31];
      v75 = v0[29];
      v108 = v0[28];
      v77 = v0[24];
      v76 = v0[25];
      sub_1DF4B3AA0(13);
      swift_willThrow();
      sub_1DF4E1A88(65792, sub_1DF47FD50);

      sub_1DF48C2F4(v71, v70);
      (*(v74 + 8))(v73, v75);
      (*(v76 + 8))(v108, v77);
LABEL_22:
      v78 = v0[39];
      v80 = v0[35];
      v79 = v0[36];
      v82 = v0[31];
      v81 = v0[32];
      v84 = v0[27];
      v83 = v0[28];
      v85 = v0[26];
      v86 = v0[23];
      v87 = v0[20];

      v88 = v0[1];
      goto LABEL_26;
    }

    if (v14)
    {
      v49 = v0[41];
      v50 = v0[42];
      v51 = v0[40];
      v52 = v0[28];
      v53 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v113 = v111;
      *v53 = 136446466;
      v114 = 91;
      v115 = 0xE100000000000000;
      MEMORY[0x1E12D62C0](v51, v49);
      MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
      MEMORY[0x1E12D62C0](v50, v15);
      MEMORY[0x1E12D62C0](93, 0xE100000000000000);

      v54 = sub_1DF47EF6C(91, 0xE100000000000000, &v113);

      *(v53 + 4) = v54;
      *(v53 + 12) = 2080;
      swift_beginAccess();
      v55 = sub_1DF564084();
      swift_endAccess();
      if (!v55)
      {
        sub_1DF4C2FC0(MEMORY[0x1E69E7CC0]);
      }

      v56 = sub_1DF564884();
      v58 = v57;

      v59 = sub_1DF47EF6C(v56, v58, &v113);

      *(v53 + 14) = v59;
      _os_log_impl(&dword_1DF47C000, v12, v13, "%{public}s Failed to sign request but it has account auth headers. Will attempt to send it anyway with headers: %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v111, -1, -1);
      MEMORY[0x1E12D75F0](v53, -1, -1);
    }

    else
    {
      v89 = v0[41];
    }

    v36 = v0[48];
    v90 = v0[28];
    v91 = v0[24];
    v92 = v0[25];
    v93 = v0[14];
    swift_beginAccess();
    (*(v92 + 16))(v93, v90, v91);
    v37 = 16777472;
  }

  else
  {
    v22 = v0[45];
    v23 = v0[43];
    v24 = v0[41];
    v25 = *(v2 + 32);
    v25(v0[26], v3, v1);

    v26 = sub_1DF564794();
    v27 = sub_1DF564C44();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[43];
    if (v28)
    {
      v107 = v0[42];
      v110 = v25;
      v31 = v0[40];
      v30 = v0[41];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 136446210;
      v113 = v33;
      v114 = 91;
      v115 = 0xE100000000000000;
      MEMORY[0x1E12D62C0](v31, v30);
      MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
      MEMORY[0x1E12D62C0](v107, v29);
      MEMORY[0x1E12D62C0](93, 0xE100000000000000);
      v25 = v110;

      v34 = sub_1DF47EF6C(91, 0xE100000000000000, &v113);

      *(v32 + 4) = v34;
      _os_log_impl(&dword_1DF47C000, v26, v27, "%{public}s Successfully signed request.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1E12D75F0](v33, -1, -1);
      MEMORY[0x1E12D75F0](v32, -1, -1);
    }

    else
    {
      v35 = v0[41];
    }

    v36 = v0[48];
    v25(v0[14], v0[26], v0[24]);
    if (v36)
    {
      v37 = 16777473;
    }

    else
    {
      v37 = 16777217;
    }
  }

  sub_1DF4E1A88(v37, sub_1DF47FD50);

  v94 = v0[39];
  v96 = v0[35];
  v95 = v0[36];
  v97 = v0[31];
  v98 = v0[29];
  v99 = v0[30];
  v100 = v0[28];
  v104 = v0[32];
  v105 = v0[27];
  v101 = v0[25];
  v102 = v0[24];
  v106 = v0[26];
  v109 = v0[23];
  v112 = v0[20];
  sub_1DF48C2F4(v0[49], v0[50]);
  (*(v99 + 8))(v97, v98);
  (*(v101 + 8))(v100, v102);

  v88 = v0[1];
LABEL_26:

  return v88();
}

uint64_t sub_1DF4EE660()
{
  v48 = v0;
  v1 = v0[54];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[41];

  v5 = v1;
  v6 = sub_1DF564794();
  v7 = sub_1DF564C24();

  if (os_log_type_enabled(v6, v7))
  {
    v44 = v0[54];
    v9 = v0[42];
    v8 = v0[43];
    v10 = v0[40];
    v11 = v0[41];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136446466;
    v47[0] = v13;
    v47[1] = 91;
    v47[2] = 0xE100000000000000;
    MEMORY[0x1E12D62C0](v10, v11);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v9, v8);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v14 = sub_1DF47EF6C(91, 0xE100000000000000, v47);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2082;
    swift_getErrorValue();
    v16 = v0[2];
    v15 = v0[3];
    v17 = v0[4];
    v18 = sub_1DF5651B4();
    v20 = sub_1DF47EF6C(v18, v19, v47);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1DF47C000, v6, v7, "%{public}s Failed to sign request with error: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v13, -1, -1);
    MEMORY[0x1E12D75F0](v12, -1, -1);
  }

  else
  {
    v21 = v0[43];
    v22 = v0[41];
  }

  v23 = v0[54];
  v24 = v0[49];
  v25 = v0[50];
  v26 = v0[48];
  v28 = v0[30];
  v27 = v0[31];
  v29 = v0[29];
  v30 = v0[25];
  v43 = v0[24];
  v45 = v0[28];
  swift_willThrow();
  sub_1DF4E1A88((v26 != 0) << 8, sub_1DF47FD50);

  sub_1DF48C2F4(v24, v25);
  (*(v28 + 8))(v27, v29);
  (*(v30 + 8))(v45, v43);
  v46 = v0[54];
  v31 = v0[39];
  v33 = v0[35];
  v32 = v0[36];
  v35 = v0[31];
  v34 = v0[32];
  v37 = v0[27];
  v36 = v0[28];
  v38 = v0[26];
  v39 = v0[23];
  v40 = v0[20];

  v41 = v0[1];

  return v41();
}

uint64_t sub_1DF4EE9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37EE8, &unk_1DF569E60) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v7 = sub_1DF5640F4();
  v5[13] = v7;
  v8 = *(v7 - 8);
  v5[14] = v8;
  v9 = *(v8 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4EEABC, 0, 0);
}

uint64_t sub_1DF4EEABC()
{
  __swift_project_boxed_opaque_existential_0(*(v0 + 88), *(*(v0 + 88) + 24));
  *(v0 + 40) = &type metadata for BAASigningEnvironment;
  *(v0 + 48) = &off_1F5A8C900;
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_1DF4EEB7C;
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);

  return sub_1DF54A354(v2, v3);
}

uint64_t sub_1DF4EEB7C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  if (v0)
  {

    v5 = sub_1DF4EF0A4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v5 = sub_1DF4EECA8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF4EECA8()
{
  v49 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = *(v3 + 56);
  v5(v4, 0, 1, v2);
  v6 = *(v3 + 32);
  v6(v1, v4, v2);
  if (qword_1ED954C48 != -1)
  {
    swift_once();
  }

  v8 = v0[15];
  v7 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  v11 = sub_1DF5647B4();
  __swift_project_value_buffer(v11, qword_1ED954C50);
  (*(v9 + 16))(v8, v7, v10);
  v12 = sub_1DF564794();
  v13 = sub_1DF564C44();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[15];
  if (v14)
  {
    v16 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v48 = v45;
    *v16 = 136315138;
    v47 = v5;
    v46 = v6;
    if (!sub_1DF564084())
    {
      sub_1DF4C2FC0(MEMORY[0x1E69E7CC0]);
    }

    v18 = v0[14];
    v17 = v0[15];
    v19 = v0[13];
    v20 = sub_1DF564884();
    v22 = v21;

    v23 = *(v18 + 8);
    v23(v17, v19);
    v24 = sub_1DF47EF6C(v20, v22, &v48);

    *(v16 + 4) = v24;
    _os_log_impl(&dword_1DF47C000, v12, v13, "Signed request headers: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x1E12D75F0](v45, -1, -1);
    MEMORY[0x1E12D75F0](v16, -1, -1);

    v5 = v47;
    v6 = v46;
  }

  else
  {
    v25 = v0[13];
    v26 = v0[14];

    v23 = *(v26 + 8);
    v23(v15, v25);
  }

  v27 = v0[16];
  v29 = v0[9];
  v28 = v0[10];
  v30 = v28[3];
  v31 = v28[4];
  __swift_project_boxed_opaque_existential_0(v28, v30);
  if (((*(v31 + 104))(v27, v30, v31) & 1) != 0 && v29)
  {
    v32 = sub_1DF564794();
    v33 = sub_1DF564C44();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1DF47C000, v32, v33, "Missing Authorization header. Unable to proceed with request", v34, 2u);
      MEMORY[0x1E12D75F0](v34, -1, -1);
    }

    v36 = v0[15];
    v35 = v0[16];
    v37 = v0[13];
    v38 = v0[14];
    v39 = v0[12];

    sub_1DF4B3AA0(13);
    swift_willThrow();
    v23(v35, v37);

    v40 = v0[1];
  }

  else
  {
    v6(v0[7], v0[16], v0[13]);
    v41 = v0[15];
    v42 = v0[16];
    v43 = v0[12];
    v5(v0[7], 0, 1, v0[13]);

    v40 = v0[1];
  }

  return v40();
}

uint64_t sub_1DF4EF0A4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = *(v2 + 56);
  v4(v3, 1, 1, v1);
  sub_1DF47E5B4(v3, &qword_1ECE37EE8, &unk_1DF569E60);
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[12];
  v4(v0[7], 1, 1, v0[13]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DF4EF1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74656B636974 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF5650D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF4EF22C(uint64_t a1)
{
  v2 = sub_1DF4F01BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4EF268(uint64_t a1)
{
  v2 = sub_1DF4F01BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF4EF2A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F00, &qword_1DF56A050);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF4F01BC();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = sub_1DF564FC4();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1DF4EF420(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37EF8, &qword_1DF56A048);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF4F01BC();
  sub_1DF5652A4();
  sub_1DF565054();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF4EF55C()
{
  result = qword_1ED954D38;
  if (!qword_1ED954D38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED954D38);
  }

  return result;
}

uint64_t sub_1DF4EF5A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DF4AD474(a1, a2);
  }

  return a1;
}

uint64_t sub_1DF4EF5BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4EF5DC, 0, 0);
}

uint64_t sub_1DF4EF5DC()
{
  v1 = sub_1DF5159E8();
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v8 = v0[24];
    v9 = v8[3];
    v10 = v8[4];
    __swift_project_boxed_opaque_existential_0(v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E0, &unk_1DF56B300);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DF566E40;
    v12 = *MEMORY[0x1E6959A98];
    *(inited + 32) = sub_1DF564944();
    *(inited + 40) = v13;
    v14 = MEMORY[0x1E69E6370];
    *(inited + 72) = MEMORY[0x1E69E6370];
    *(inited + 48) = 1;
    v15 = *MEMORY[0x1E6959AB0];
    *(inited + 80) = sub_1DF564944();
    *(inited + 88) = v16;
    *(inited + 120) = v14;
    *(inited + 96) = 0;
    v17 = sub_1DF49A758(inited);
    v0[25] = v17;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E8, &unk_1DF5673D0);
    swift_arrayDestroy();
    v18 = *(v10 + 72);
    v22 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    v0[26] = v20;
    *v20 = v0;
    v20[1] = sub_1DF4EF8D8;
    v21 = v0[23];

    return v22(v21, v17, v9, v10);
  }

  else
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v2 = sub_1DF5647B4();
    __swift_project_value_buffer(v2, qword_1ED956260);
    v3 = sub_1DF564794();
    v4 = sub_1DF564C44();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DF47C000, v3, v4, "User has mocked auth issue via CSFCTL, skipping renewCredentials.", v5, 2u);
      MEMORY[0x1E12D75F0](v5, -1, -1);
    }

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1DF4EF8D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v8 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v5 = sub_1DF4EFDA4;
  }

  else
  {
    v6 = v3[25];

    v5 = sub_1DF4EF9F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF4EF9F4()
{
  v29 = v0;
  if (v0[27])
  {
    if (qword_1ED954C48 != -1)
    {
      swift_once();
    }

    v1 = sub_1DF5647B4();
    __swift_project_value_buffer(v1, qword_1ED954C50);
    v2 = sub_1DF564794();
    v3 = sub_1DF564C24();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[27];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v28[0] = v6;
      *v5 = 136315138;
      v0[22] = v4;
      type metadata accessor for ACAccountCredentialRenewResult(0);
      v7 = sub_1DF564994();
      v9 = sub_1DF47EF6C(v7, v8, v28);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1DF47C000, v2, v3, "Renew credentials failed with result %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1E12D75F0](v6, -1, -1);
      MEMORY[0x1E12D75F0](v5, -1, -1);
    }

    v10 = sub_1DF4B3AA0(13);
    swift_willThrow();
    if (qword_1ED954C48 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_1ED954C50);
    v11 = v10;
    v12 = sub_1DF564794();
    v13 = sub_1DF564C24();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28[0] = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v17 = v0[18];
      v16 = v0[19];
      v18 = v0[20];
      v19 = sub_1DF5651B4();
      v21 = sub_1DF47EF6C(v19, v20, v28);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_1DF47C000, v12, v13, "Renew credentials failed with error %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1E12D75F0](v15, -1, -1);
      MEMORY[0x1E12D75F0](v14, -1, -1);
    }

    sub_1DF4B3AA0(13);
    swift_willThrow();

    v22 = v0[1];
  }

  else
  {
    if (qword_1ED954C48 != -1)
    {
      swift_once();
    }

    v23 = sub_1DF5647B4();
    __swift_project_value_buffer(v23, qword_1ED954C50);
    v24 = sub_1DF564794();
    v25 = sub_1DF564C44();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DF47C000, v24, v25, "Renew credentials succeeded!", v26, 2u);
      MEMORY[0x1E12D75F0](v26, -1, -1);
    }

    v22 = v0[1];
  }

  return v22();
}

uint64_t sub_1DF4EFDA4()
{
  v18 = v0;
  v1 = v0[25];

  v2 = v0[28];
  if (qword_1ED954C48 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF5647B4();
  __swift_project_value_buffer(v3, qword_1ED954C50);
  v4 = v2;
  v5 = sub_1DF564794();
  v6 = sub_1DF564C24();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[20];
    v12 = sub_1DF5651B4();
    v14 = sub_1DF47EF6C(v12, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Renew credentials failed with error %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  sub_1DF4B3AA0(13);
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

unint64_t sub_1DF4EFF6C()
{
  result = qword_1ECE37738;
  if (!qword_1ECE37738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37738);
  }

  return result;
}

unint64_t sub_1DF4EFFC0()
{
  result = qword_1ECE37EF0;
  if (!qword_1ECE37EF0)
  {
    type metadata accessor for BlockedNetworkRequestError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37EF0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DF4F0024(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DF4F006C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_25CloudSubscriptionFeatures20NetworkRequestReasonO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_25CloudSubscriptionFeatures14GatewayRequestO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DF4F0100(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DF4F0148(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DF4F0190(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1DF4F01BC()
{
  result = qword_1ECE37750;
  if (!qword_1ECE37750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37750);
  }

  return result;
}

unint64_t sub_1DF4F0224()
{
  result = qword_1ECE37F08;
  if (!qword_1ECE37F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37F08);
  }

  return result;
}

unint64_t sub_1DF4F027C()
{
  result = qword_1ECE37740;
  if (!qword_1ECE37740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37740);
  }

  return result;
}

unint64_t sub_1DF4F02D4()
{
  result = qword_1ECE37748;
  if (!qword_1ECE37748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37748);
  }

  return result;
}

BOOL sub_1DF4F036C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1DF4F3000();
  sub_1DF5647F4();
  if (v5 != 1)
  {
    return v4 == 3;
  }

  sub_1DF4F6D38(&v4, v1, v2);

  return 0;
}

id EligibilityFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EligibilityFetcher.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EligibilityFetcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EligibilityFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EligibilityFetcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DF4F04FC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v60[2] = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v2 = MEMORY[0x1E69E7CD0];
    goto LABEL_43;
  }

  v60[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v51 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v56 = v4;
  v57 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v54 = v5 + 1;
    v11 = *(v2 + 40);
    sub_1DF565234();

    sub_1DF5649E4();
    v12 = sub_1DF565264();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v7[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v54;
    if (v54 == v3)
    {
      goto LABEL_42;
    }
  }

  v17 = (*(v2 + 48) + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((sub_1DF5650D4() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v7[v14 >> 6]) == 0)
      {
        v6 = v57;
        goto LABEL_6;
      }

      v20 = (*(v2 + 48) + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v60[1] = v54;

  v22 = *(v2 + 32);
  v52 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v52;
  v24 = v57;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v45 = v23;

  v46 = v45;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v53 = &v50;
    MEMORY[0x1EEE9AC00](v21);
    v14 = &v50 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    v59 = v7;
    memcpy(v14, v7, v25);
    v58 = v2;
    v26 = *(v2 + 16);
    v27 = *(v14 + 8 * v15) & ~v16;
    v55 = v14;
    *(v14 + 8 * v15) = v27;
    v28 = v26 - 1;
    v29 = v56;
    v7 = *(v56 + 16);
    v30 = v54;
    while (1)
    {
      v54 = v28;
      if (v30 == v7)
      {
LABEL_41:
        v2 = sub_1DF4F0B8C(v55, v52, v54, v58);
LABEL_42:

LABEL_43:
        v43 = *MEMORY[0x1E69E9840];
        return v2;
      }

      v15 = v30;
      while (1)
      {
        if (v30 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v15 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v32 = (v24 + 16 * v15);
        v33 = *v32;
        v16 = v32[1];
        ++v15;
        v2 = v58;
        v34 = *(v58 + 40);
        sub_1DF565234();

        sub_1DF5649E4();
        v35 = sub_1DF565264();
        v36 = -1 << *(v2 + 32);
        v37 = v35 & ~v36;
        v14 = v37 >> 6;
        v38 = 1 << v37;
        if (((1 << v37) & v59[v37 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v24 = v57;
        if (v15 == v7)
        {
          goto LABEL_41;
        }
      }

      v39 = (*(v2 + 48) + 16 * v37);
      if (*v39 != v33 || v39[1] != v16)
      {
        v41 = ~v36;
        v2 = 1;
        while ((sub_1DF5650D4() & 1) == 0)
        {
          v37 = (v37 + 1) & v41;
          v14 = v37 >> 6;
          v38 = 1 << v37;
          if (((1 << v37) & v59[v37 >> 6]) == 0)
          {
            v29 = v56;
            goto LABEL_37;
          }

          v42 = (*(v58 + 48) + 16 * v37);
          if (*v42 == v33 && v42[1] == v16)
          {
            break;
          }
        }
      }

      v29 = v56;
      v31 = v55[v14];
      v55[v14] = v31 & ~v38;
      if ((v31 & v38) == 0)
      {
        goto LABEL_22;
      }

      v28 = v54 - 1;
      v24 = v57;
      if (__OFSUB__(v54, 1))
      {
        __break(1u);
      }

      v30 = v15;
      if (v54 == 1)
      {

        v2 = MEMORY[0x1E69E7CD0];
        goto LABEL_42;
      }
    }
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v7, v46);
  v48 = v51;
  v49 = sub_1DF4F09A8(v47, v52, v2, v14, v60);

  if (!v48)
  {

    MEMORY[0x1E12D75F0](v47, -1, -1);

    v2 = v49;
    goto LABEL_43;
  }

  result = MEMORY[0x1E12D75F0](v47, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1DF4F09A8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_1DF4F0B8C(v28, a2, v27, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        v16 = *(a3 + 40);
        sub_1DF565234();

        sub_1DF5649E4();
        v17 = sub_1DF565264();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((sub_1DF5650D4() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1DF4F0B8C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37F30, &unk_1DF56A3A0);
  result = sub_1DF564DC4();
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
    sub_1DF565234();

    sub_1DF5649E4();
    result = sub_1DF565264();
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

uint64_t sub_1DF4F0DB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v32 = MEMORY[0x1E69E7CC0];
  v30 = *(a1 + 16);
  sub_1DF4BCB24(0, v1, 0);
  v2 = v32;
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_1DF564D54();
  v7 = v30;
  v6 = a1;
  v8 = result;
  v9 = 0;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v6 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v3 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_36;
    }

    v12 = *(v6 + 36);
    v13 = (*(v6 + 48) + 16 * v8);
    v14 = *v13;
    v15 = v13[1];
    if (*v13 == 0xD000000000000024 && 0x80000001DF570B00 == v15)
    {
      v15 = 0xE800000000000000;
      v14 = 0x65676175676E614CLL;
    }

    else
    {
      v17 = *(v6 + 36);
      result = sub_1DF5650D4();
      if (result)
      {
        v15 = 0xE800000000000000;
        v14 = 0x65676175676E614CLL;
      }

      else
      {
        v18 = v14 == 0xD000000000000027 && 0x80000001DF570B30 == v15;
        if (v18 || (result = sub_1DF5650D4(), (result & 1) != 0))
        {
          v15 = 0xE600000000000000;
          v14 = 0x6E6F69676552;
        }

        else
        {
        }
      }

      v7 = v30;
      v6 = a1;
      v12 = v17;
    }

    v20 = *(v32 + 16);
    v19 = *(v32 + 24);
    if (v20 >= v19 >> 1)
    {
      v29 = v12;
      result = sub_1DF4BCB24((v19 > 1), v20 + 1, 1);
      v12 = v29;
      v7 = v30;
      v6 = a1;
    }

    *(v32 + 16) = v20 + 1;
    v21 = v32 + 16 * v20;
    *(v21 + 32) = v14;
    *(v21 + 40) = v15;
    v10 = 1 << *(v6 + 32);
    if (v8 >= v10)
    {
      goto LABEL_37;
    }

    v3 = a1 + 56;
    v22 = *(a1 + 56 + 8 * v11);
    if ((v22 & (1 << v8)) == 0)
    {
      goto LABEL_38;
    }

    if (v12 != *(v6 + 36))
    {
      goto LABEL_39;
    }

    v23 = v22 & (-2 << (v8 & 0x3F));
    if (v23)
    {
      v10 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v11 << 6;
      v25 = v11 + 1;
      v26 = (a1 + 64 + 8 * v11);
      while (v25 < (v10 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_1DF4AD520(v8, v12, 0);
          v7 = v30;
          v6 = a1;
          v10 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_1DF4AD520(v8, v12, 0);
      v7 = v30;
      v6 = a1;
    }

LABEL_4:
    ++v9;
    v8 = v10;
    if (v9 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1DF4F10CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E12D6480](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1DF4F6D38(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1DF4F1164(uint64_t a1)
{
  v2 = sub_1DF5647E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DF4F10CC(&unk_1F5A88A00);
  swift_arrayDestroy();
  v8 = sub_1DF5647D4();
  v9 = sub_1DF4F04FC(v8, v7);

  v10 = *(v9 + 16);

  v11 = &unk_1ED955000;
  if (v10)
  {
    if (qword_1ED955720 != -1)
    {
      swift_once();
    }

    v12 = sub_1DF5647B4();
    __swift_project_value_buffer(v12, qword_1ED9558C0);
    v13 = sub_1DF564794();
    v14 = sub_1DF564C24();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Missing language and region keys from os_eligibility response. Will assume false for both.";
LABEL_10:
      _os_log_impl(&dword_1DF47C000, v13, v14, v16, v15, 2u);
      MEMORY[0x1E12D75F0](v15, -1, -1);
    }
  }

  else
  {
    if (qword_1ED955720 != -1)
    {
      swift_once();
    }

    v17 = sub_1DF5647B4();
    __swift_project_value_buffer(v17, qword_1ED9558C0);
    v13 = sub_1DF564794();
    v14 = sub_1DF564C44();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Eligibility statuses appear valid.";
      goto LABEL_10;
    }
  }

  v81 = MEMORY[0x1E69E7CD0];
  v18 = sub_1DF5647D4();
  MEMORY[0x1EEE9AC00](v18);
  *(&v66 - 2) = a1;
  *(&v66 - 1) = &v81;
  v19 = 0;
  v21 = sub_1DF557328(sub_1DF4F2FE0, (&v66 - 4), v20);
  v22 = sub_1DF4F10CC(v21);

  v23 = *(v81 + 16);
  v74 = v81;
  v75 = v6;
  if (v23)
  {
    v24 = sub_1DF4F0DB0(v81);
    if (qword_1ED955720 != -1)
    {
      swift_once();
    }

    v25 = sub_1DF5647B4();
    __swift_project_value_buffer(v25, qword_1ED9558C0);

    v26 = sub_1DF564794();
    v27 = sub_1DF564C24();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v77 = a1;
      v78[0] = v29;
      v30 = v29;
      *v28 = 136315138;
      v31 = MEMORY[0x1E12D6370](v24, MEMORY[0x1E69E6158]);
      v67 = 0;
      v32 = v3;
      v34 = v33;

      v35 = sub_1DF47EF6C(v31, v34, v78);
      v3 = v32;
      v19 = v67;

      *(v28 + 4) = v35;
      _os_log_impl(&dword_1DF47C000, v26, v27, "Failed to get value for the following eligibility keys: %s. May erroneously report language/region/device ineligibility.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      v36 = v30;
      a1 = v77;
      MEMORY[0x1E12D75F0](v36, -1, -1);
      v37 = v28;
      v11 = &unk_1ED955000;
      MEMORY[0x1E12D75F0](v37, -1, -1);
    }

    else
    {
    }

    v6 = v75;
  }

  if (v11[228] != -1)
  {
LABEL_45:
    swift_once();
  }

  v38 = sub_1DF5647B4();
  __swift_project_value_buffer(v38, qword_1ED9558C0);
  (*(v3 + 16))(v6, a1, v2);

  v39 = sub_1DF564794();
  v40 = sub_1DF564C44();

  if (os_log_type_enabled(v39, v40))
  {
    v69 = v40;
    v71 = v39;
    v72 = v3;
    v73 = v2;
    a1 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v80[0] = v68;
    *a1 = 136315394;
    v41 = sub_1DF564BB4();
    v43 = sub_1DF47EF6C(v41, v42, v80);

    *(a1 + 4) = v43;
    v70 = a1;
    *(a1 + 12) = 2080;
    v44 = sub_1DF5647D4();
    v6 = v44;
    v77 = *(v44 + 16);
    if (v77)
    {
      v67 = v19;
      v45 = 0;
      v76 = v44 + 32;
      v3 = v22 + 56;
      v19 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v45 >= *(v6 + 2))
        {
          __break(1u);
          goto LABEL_45;
        }

        v46 = (v76 + 16 * v45);
        v47 = *v46;
        v2 = v46[1];
        ++v45;
        if (!*(v22 + 16))
        {
          break;
        }

        v48 = *(v22 + 40);
        sub_1DF565234();

        sub_1DF5649E4();
        v49 = sub_1DF565264();
        v50 = -1 << *(v22 + 32);
        v51 = v49 & ~v50;
        if ((*(v3 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
        {
          a1 = ~v50;
          while (1)
          {
            v52 = (*(v22 + 48) + 16 * v51);
            v53 = *v52 == v47 && v52[1] == v2;
            if (v53 || (sub_1DF5650D4() & 1) != 0)
            {
              break;
            }

            v51 = (v51 + 1) & a1;
            if (((*(v3 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          if (v45 == v77)
          {
            goto LABEL_42;
          }
        }

        else
        {
LABEL_33:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v79 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DF4BCB24(0, *(v19 + 16) + 1, 1);
            v19 = v79;
          }

          v56 = *(v19 + 16);
          v55 = *(v19 + 24);
          a1 = v56 + 1;
          if (v56 >= v55 >> 1)
          {
            sub_1DF4BCB24((v55 > 1), v56 + 1, 1);
            v19 = v79;
          }

          *(v19 + 16) = a1;
          v57 = v19 + 16 * v56;
          *(v57 + 32) = v47;
          *(v57 + 40) = v2;
          if (v45 == v77)
          {
            goto LABEL_42;
          }
        }
      }

      goto LABEL_33;
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_42:

    v58 = MEMORY[0x1E12D6370](v19, MEMORY[0x1E69E6158]);
    v60 = v59;

    (*(v72 + 8))(v75, v73);
    v61 = sub_1DF47EF6C(v58, v60, v80);

    v62 = v70;
    *(v70 + 14) = v61;
    v63 = v71;
    _os_log_impl(&dword_1DF47C000, v71, v69, "Retrieved eligibleKeys: %s, ineligibleKeys: %s", v62, 0x16u);
    v64 = v68;
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v64, -1, -1);
    MEMORY[0x1E12D75F0](v62, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return v22;
}

void *sub_1DF4F1970()
{
  v107[9] = *MEMORY[0x1E69E9840];
  v1 = sub_1DF5647E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = 0;
  v106 = 0;
  v6 = swift_slowAlloc();
  domain_answer = os_eligibility_get_domain_answer();
  if (sub_1DF548FD8())
  {
    if (qword_1ED955308 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED955310;
    v0 = sub_1DF564914();
    LODWORD(v8) = [v8 BOOLForKey_];

    if (v8)
    {
      v106 = 1;
    }
  }

  if (domain_answer)
  {
    sub_1DF4F2F8C();
    swift_allocError();
    *v9 = domain_answer;
    *(v9 + 8) = 0;
LABEL_23:
    swift_willThrow();
    goto LABEL_24;
  }

  v10 = v106;
  if (v105 == 2)
  {
    sub_1DF4F2F8C();
    swift_allocError();
    *v11 = v10;
    v12 = 1;
LABEL_22:
    *(v11 + 8) = v12;
    goto LABEL_23;
  }

  if (v106 != 4)
  {
    if (v106 == 1)
    {
      sub_1DF4F2F8C();
      swift_allocError();
      *v11 = 0;
LABEL_21:
      v12 = 3;
      goto LABEL_22;
    }

    v20 = *v6;
    if (!*v6)
    {
      sub_1DF4F2F8C();
      swift_allocError();
      *v11 = 1;
      goto LABEL_21;
    }

    v21 = *v6;
    v22 = swift_unknownObjectRetain();
    v23 = MEMORY[0x1E12D77C0](v22);
    if (v23 != sub_1DF5647C4())
    {
      v24 = MEMORY[0x1E12D77C0](v20);
      sub_1DF4F2F8C();
      swift_allocError();
      *v25 = v24;
      *(v25 + 8) = 2;
      swift_willThrow();
      swift_unknownObjectRelease();
      goto LABEL_24;
    }

    v97 = v2;
    swift_unknownObjectRetain();
    sub_1DF564804();
    v28 = sub_1DF4F1164(v5);
    v102 = 0x80000001DF570B00;
    v95 = sub_1DF4BEB48(0xD000000000000024, 0x80000001DF570B00, v28);
    v99 = 0x80000001DF570B30;
    v101 = v28;
    v94 = sub_1DF4BEB48(0xD000000000000027, 0x80000001DF570B30, v28);
    v29 = sub_1DF5647D4();
    v30 = v29;
    v31 = v29[2];
    v96 = v20;
    if (v31)
    {
      v32 = 0;
      v33 = v29 + 5;
      v92 = v31 - 1;
      v34 = MEMORY[0x1E69E7CC0];
      v35 = v102;
      v100 = v29;
      v93 = v29 + 5;
      do
      {
        v98 = v34;
        v36 = &v33[2 * v32];
        v37 = v32;
        while (1)
        {
          if (v37 >= v30[2])
          {
            __break(1u);
            goto LABEL_79;
          }

          v39 = *(v36 - 1);
          v40 = *v36;
          if (v39 != 0xD000000000000024 || v35 != v40)
          {
            v42 = *(v36 - 1);
            v43 = *v36;
            v44 = v31;
            v45 = sub_1DF5650D4();
            v31 = v44;
            v35 = v102;
            v30 = v100;
            if ((v45 & 1) == 0 && (v39 != 0xD000000000000027 || v99 != v40))
            {
              v38 = sub_1DF5650D4();
              v31 = v44;
              v35 = v102;
              v30 = v100;
              if ((v38 & 1) == 0)
              {
                break;
              }
            }
          }

          ++v37;
          v36 += 2;
          if (v31 == v37)
          {
            v34 = v98;
            goto LABEL_47;
          }
        }

        v34 = v98;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v107[0] = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DF4BCB24(0, *(v34 + 16) + 1, 1);
          v34 = v107[0];
        }

        v48 = *(v34 + 16);
        v47 = *(v34 + 24);
        v49 = (v48 + 1);
        v35 = v102;
        v31 = v44;
        v33 = v93;
        if (v48 >= v47 >> 1)
        {
          v98 = (v48 + 1);
          v91 = v48;
          sub_1DF4BCB24((v47 > 1), v48 + 1, 1);
          v49 = v98;
          v48 = v91;
          v33 = v93;
          v31 = v44;
          v35 = v102;
          v34 = v107[0];
        }

        v32 = v37 + 1;
        *(v34 + 16) = v49;
        v50 = v34 + 16 * v48;
        *(v50 + 32) = v39;
        *(v50 + 40) = v40;
        v30 = v100;
      }

      while (v92 != v37);
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
    }

LABEL_47:

    v51 = &unk_1ED955000;
    v99 = *(v34 + 16);
    if (v99)
    {
      v98 = v34;
      if (qword_1ED955720 != -1)
      {
        swift_once();
      }

      v52 = sub_1DF5647B4();
      __swift_project_value_buffer(v52, qword_1ED9558C0);
      v53 = v98;

      v54 = sub_1DF564794();
      v55 = sub_1DF564C44();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        LODWORD(v102) = v55;
        v57 = v56;
        v100 = swift_slowAlloc();
        v107[0] = v100;
        *v57 = 136315138;
        v58 = MEMORY[0x1E12D6370](v53, MEMORY[0x1E69E6158]);
        v60 = sub_1DF47EF6C(v58, v59, v107);

        *(v57 + 4) = v60;
        _os_log_impl(&dword_1DF47C000, v54, v102, "Checking remaining keys for device eligibility: %s", v57, 0xCu);
        v61 = v100;
        __swift_destroy_boxed_opaque_existential_0(v100);
        MEMORY[0x1E12D75F0](v61, -1, -1);
        MEMORY[0x1E12D75F0](v57, -1, -1);
      }

      v62 = 0;
      v100 = v53 + 4;
      v63 = v101;
      v64 = v101 + 56;
      v65 = v53;
      while (v62 < v65[2])
      {
        v66 = &v100[2 * v62];
        v67 = v66[1];
        if (!*(v63 + 16))
        {
          v90 = v66[1];

          goto LABEL_65;
        }

        v102 = v62;
        v68 = *v66;
        v69 = *(v63 + 40);
        sub_1DF565234();

        sub_1DF5649E4();
        v70 = sub_1DF565264();
        v71 = v101;
        v72 = -1 << *(v101 + 32);
        v73 = v70 & ~v72;
        if (((*(v64 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
        {
LABEL_64:

LABEL_65:

          v77 = 0;
          v51 = &unk_1ED955000;
          goto LABEL_71;
        }

        ++v102;
        v74 = ~v72;
        while (1)
        {
          v75 = (*(v71 + 48) + 16 * v73);
          v76 = *v75 == v68 && v75[1] == v67;
          if (v76 || (sub_1DF5650D4() & 1) != 0)
          {
            break;
          }

          v73 = (v73 + 1) & v74;
          v71 = v101;
          if (((*(v64 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        v65 = v98;
        v63 = v101;
        v62 = v102;
        if (v102 == v99)
        {

          v77 = 1;
          v51 = &unk_1ED955000;
          goto LABEL_71;
        }
      }

      __break(1u);
    }

    else
    {

      if (qword_1ED955720 != -1)
      {
        swift_once();
      }

      v78 = sub_1DF5647B4();
      __swift_project_value_buffer(v78, qword_1ED9558C0);
      v79 = sub_1DF564794();
      v80 = sub_1DF564C44();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_1DF47C000, v79, v80, "No remaining keys in os_eligibility check. Will assume device is eligible.", v81, 2u);
        MEMORY[0x1E12D75F0](v81, -1, -1);
      }

      v77 = 1;
LABEL_71:
      v82 = type metadata accessor for Eligibility();
      v83 = objc_allocWithZone(v82);
      v83[OBJC_IVAR___CSFEligibility_regionEligible] = v94 & 1;
      v83[OBJC_IVAR___CSFEligibility_languageEligible] = v95 & 1;
      v83[OBJC_IVAR___CSFEligibility_siriLanguageEligible] = 0;
      v83[OBJC_IVAR___CSFEligibility_locationEligible] = 0;
      v83[OBJC_IVAR___CSFEligibility_deviceEligibile] = v77;
      v104.receiver = v83;
      v104.super_class = v82;
      v65 = objc_msgSendSuper2(&v104, sel_init);
      if (v51[228] == -1)
      {
        goto LABEL_72;
      }
    }

    swift_once();
LABEL_72:
    v84 = sub_1DF5647B4();
    __swift_project_value_buffer(v84, qword_1ED9558C0);
    v0 = v65;
    v85 = sub_1DF564794();
    v86 = sub_1DF564C44();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v87 = 138412290;
      *(v87 + 4) = v0;
      *v88 = v0;
      v89 = v0;
      _os_log_impl(&dword_1DF47C000, v85, v86, "Calculated eligibility from os_eligibility: %@", v87, 0xCu);
      sub_1DF47E5B4(v88, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v88, -1, -1);
      MEMORY[0x1E12D75F0](v87, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v97 + 8))(v5, v1);
    goto LABEL_24;
  }

  if (qword_1ED955720 != -1)
  {
LABEL_79:
    swift_once();
  }

  v13 = sub_1DF5647B4();
  __swift_project_value_buffer(v13, qword_1ED9558C0);
  v14 = sub_1DF564794();
  v15 = sub_1DF564C44();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v107[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1DF47EF6C(0xD000000000000014, 0x80000001DF572940, v107);
    _os_log_impl(&dword_1DF47C000, v14, v15, "%s Answer is eligible, returning eligible.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1E12D75F0](v17, -1, -1);
    MEMORY[0x1E12D75F0](v16, -1, -1);
  }

  v18 = type metadata accessor for Eligibility();
  v19 = objc_allocWithZone(v18);
  v19[OBJC_IVAR___CSFEligibility_regionEligible] = 1;
  v19[OBJC_IVAR___CSFEligibility_languageEligible] = 1;
  v19[OBJC_IVAR___CSFEligibility_siriLanguageEligible] = 1;
  v19[OBJC_IVAR___CSFEligibility_locationEligible] = 1;
  v19[OBJC_IVAR___CSFEligibility_deviceEligibile] = 1;
  v103.receiver = v19;
  v103.super_class = v18;
  v0 = objc_msgSendSuper2(&v103, sel_init);
LABEL_24:
  sub_1DF47E5B4(v6, &unk_1ECE37F20, &unk_1DF56A1D0);
  MEMORY[0x1E12D75F0](v6, -1, -1);
  v26 = *MEMORY[0x1E69E9840];
  return v0;
}

unint64_t sub_1DF4F2F8C()
{
  result = qword_1ED954EC8;
  if (!qword_1ED954EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954EC8);
  }

  return result;
}

BOOL sub_1DF4F2FE0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1DF4F036C(a1);
}

unint64_t sub_1DF4F3000()
{
  result = qword_1ED9551A8;
  if (!qword_1ED9551A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9551A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EligibilityError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for EligibilityError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DF4F30E0(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1DF4F30F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

void *sub_1DF4F3120()
{
  v0 = sub_1DF5646D4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_1DF5646C4();
  type metadata accessor for AvailabilityClient();
  result = swift_allocObject();
  result[2] = v3;
  result[3] = sub_1DF4E5EF4;
  result[4] = 0;
  result[5] = sub_1DF4E5F08;
  result[6] = 0;
  qword_1ED958B80 = result;
  return result;
}

uint64_t sub_1DF4F31A0(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4F31C0, 0, 0);
}

uint64_t sub_1DF4F31C0()
{
  v19 = v0;
  v0[5] = &type metadata for FeatureFlag;
  v1 = sub_1DF481614();
  *(v0 + 16) = 7;
  v0[6] = v1;
  v2 = sub_1DF5645A4();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v2)
  {
    if (qword_1ED955730 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF5647B4();
    __swift_project_value_buffer(v3, qword_1ED955738);
    v4 = sub_1DF564794();
    v5 = sub_1DF564C44();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v18 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1DF47EF6C(0xD000000000000015, 0x80000001DF572AB0, &v18);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1E12D75F0](v7, -1, -1);
      MEMORY[0x1E12D75F0](v6, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[11];
    v11 = *(v0[12] + 16);
    v12 = sub_1DF564654();
    v0[13] = v12;
    v13 = *(v12 - 8);
    v0[14] = v13;
    v14 = *(v13 + 64) + 15;
    v15 = swift_task_alloc();
    v0[15] = v15;
    sub_1DF4F396C();
    v16 = *(MEMORY[0x1E69A1458] + 4);
    v17 = swift_task_alloc();
    v0[16] = v17;
    *v17 = v0;
    v17[1] = sub_1DF4F3454;

    return MEMORY[0x1EEE0B5B8](v15);
  }
}

uint64_t sub_1DF4F3454()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v10 = *v1;
  *(*v1 + 136) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_1DF4F3740;
  }

  else
  {
    v8 = *(v2 + 120);

    v7 = sub_1DF4F35D4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DF4F35D4()
{
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED9556D8);
  v3 = v1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Successfully notified AvailabilityFoundationClient about new availability status %{public}@!", v7, 0xCu);
    sub_1DF484888(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DF4F3740()
{
  v26 = v0;
  v1 = v0[15];

  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v3 = v0[11];
  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED9556D8);
  v5 = v3;
  v6 = v2;
  v7 = sub_1DF564794();
  v8 = sub_1DF564C24();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  if (v9)
  {
    v11 = v0[11];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v12 = 138543618;
    *(v12 + 4) = v11;
    *v13 = v11;
    *(v12 + 12) = 2082;
    swift_getErrorValue();
    v24 = v10;
    v15 = v0[7];
    v16 = v0[8];
    v17 = v0[9];
    v18 = v11;
    v19 = sub_1DF5651B4();
    v21 = sub_1DF47EF6C(v19, v20, &v25);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_1DF47C000, v7, v8, "Failed to notify AvailabilityFoundationClient about new availability status %{public}@. Error: %{public}s", v12, 0x16u);
    sub_1DF484888(v13);
    MEMORY[0x1E12D75F0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1E12D75F0](v14, -1, -1);
    MEMORY[0x1E12D75F0](v12, -1, -1);
  }

  else
  {
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1DF4F396C()
{
  v1 = [v0 status];
  v2 = sub_1DF564634();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1 == 1)
  {
    v7 = MEMORY[0x1E69A1448];
  }

  else if (v1)
  {
    sub_1DF4F6798();
    sub_1DF564624();
    v7 = MEMORY[0x1E69A13F0];
  }

  else
  {
    v7 = MEMORY[0x1E69A1450];
  }

  (*(v3 + 104))(v6, *v7, v2);
  return sub_1DF564644();
}

uint64_t sub_1DF4F3A8C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1DF5644C4();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4F3B4C, 0, 0);
}

uint64_t sub_1DF4F3B4C()
{
  v76 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1DF5644B4();
  v4 = sub_1DF5644A4();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v8 = sub_1DF488298(8, v4, v6, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x1E12D6280](v8, v10, v12, v14);
  v17 = v16;

  v0[11] = v15;
  v0[12] = v17;
  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v18 = sub_1DF5647B4();
  v0[13] = __swift_project_value_buffer(v18, qword_1ED955738);

  v19 = sub_1DF564794();
  v20 = sub_1DF564C44();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 136446210;
    v73 = v22;
    v74 = 91;
    v75 = 0xE100000000000000;

    MEMORY[0x1E12D62C0](0xD000000000000022, 0x80000001DF572A80);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v15, v17);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v23 = sub_1DF47EF6C(91, 0xE100000000000000, &v73);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_1DF47C000, v19, v20, "%{public}s Start", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1E12D75F0](v22, -1, -1);
    MEMORY[0x1E12D75F0](v21, -1, -1);
  }

  v24 = v0[7];
  v25 = *(v24 + 48);
  if ((*(v24 + 40))())
  {
    v72 = v15;
    v74 = MEMORY[0x1E69E7CC0];
    sub_1DF4BCE90(0, 4, 0);
    v26 = v74;
    v28 = qword_1F5A88690;
    v27 = off_1F5A88698;
    v30 = *(v74 + 16);
    v29 = *(v74 + 24);
    v31 = v29 >> 1;
    v32 = v30 + 1;

    if (v29 >> 1 <= v30)
    {
      sub_1DF4BCE90((v29 > 1), v30 + 1, 1);
      v26 = v74;
      v29 = *(v74 + 24);
      v31 = v29 >> 1;
    }

    *(v26 + 16) = v32;
    v33 = v26 + 24 * v30;
    *(v33 + 32) = v28;
    *(v33 + 40) = v27;
    *(v33 + 48) = 1;
    v34 = qword_1F5A886A0;
    v35 = off_1F5A886A8;
    v74 = v26;
    v36 = v30 + 2;

    if (v31 <= v32)
    {
      sub_1DF4BCE90((v29 > 1), v36, 1);
      v26 = v74;
    }

    *(v26 + 16) = v36;
    v37 = v26 + 24 * v32;
    *(v37 + 32) = v34;
    *(v37 + 40) = v35;
    *(v37 + 48) = 1;
    v39 = qword_1F5A886B0;
    v38 = off_1F5A886B8;
    v74 = v26;
    v41 = *(v26 + 16);
    v40 = *(v26 + 24);
    v42 = v40 >> 1;
    v43 = v41 + 1;

    if (v40 >> 1 <= v41)
    {
      sub_1DF4BCE90((v40 > 1), v41 + 1, 1);
      v26 = v74;
      v40 = *(v74 + 24);
      v42 = v40 >> 1;
    }

    *(v26 + 16) = v43;
    v44 = v26 + 24 * v41;
    *(v44 + 32) = v39;
    *(v44 + 40) = v38;
    *(v44 + 48) = 1;
    v45 = aCloudLlm_0[0];
    v46 = aCloudLlm_0[1];
    v74 = v26;

    if (v42 <= v43)
    {
      sub_1DF4BCE90((v40 > 1), v41 + 2, 1);
      v26 = v74;
    }

    *(v26 + 16) = v41 + 2;
    v47 = v26 + 24 * v43;
    *(v47 + 32) = v45;
    *(v47 + 40) = v46;
    *(v47 + 48) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CD0, &unk_1DF56A380);
    v74 = sub_1DF564F34();

    sub_1DF4E9C6C(v48, 1, &v74);

    v59 = v74;

    v60 = sub_1DF564794();
    v61 = sub_1DF564C44();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 136446466;
      v73 = v63;
      v74 = 91;
      v75 = 0xE100000000000000;

      MEMORY[0x1E12D62C0](0xD000000000000022, 0x80000001DF572A80);
      MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
      MEMORY[0x1E12D62C0](v72, v17);
      MEMORY[0x1E12D62C0](93, 0xE100000000000000);

      v64 = sub_1DF47EF6C(v74, v75, &v73);

      *(v62 + 4) = v64;
      *(v62 + 12) = 2080;
      v65 = sub_1DF564884();
      v67 = sub_1DF47EF6C(v65, v66, &v73);

      *(v62 + 14) = v67;
      _os_log_impl(&dword_1DF47C000, v60, v61, "%{public}s ADM Availability bypass is set to YES. Overriding access status to: %s", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v63, -1, -1);
      MEMORY[0x1E12D75F0](v62, -1, -1);
    }
  }

  else
  {
    v49 = v0[6];

    v50 = sub_1DF564794();
    v51 = sub_1DF564C44();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = v0[6];
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 136446466;
      v73 = v54;
      v74 = 91;
      v75 = 0xE100000000000000;

      MEMORY[0x1E12D62C0](0xD000000000000022, 0x80000001DF572A80);
      MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
      MEMORY[0x1E12D62C0](v15, v17);
      MEMORY[0x1E12D62C0](93, 0xE100000000000000);

      v55 = sub_1DF47EF6C(v74, v75, &v73);

      *(v53 + 4) = v55;
      *(v53 + 12) = 2082;
      v56 = sub_1DF564884();
      v58 = sub_1DF47EF6C(v56, v57, &v73);

      *(v53 + 14) = v58;
      _os_log_impl(&dword_1DF47C000, v50, v51, "%{public}s Attempting to update availability to %{public}s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v54, -1, -1);
      MEMORY[0x1E12D75F0](v53, -1, -1);
    }

    v59 = v0[6];
  }

  v0[14] = v59;
  v68 = *(v0[7] + 16);
  v69 = *(MEMORY[0x1E69A1478] + 4);

  v70 = swift_task_alloc();
  v0[15] = v70;
  *v70 = v0;
  v70[1] = sub_1DF4F43E4;

  return MEMORY[0x1EEE0B5D8](v59);
}

uint64_t sub_1DF4F43E4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 112);

  if (v0)
  {

    v6 = sub_1DF4F4780;
  }

  else
  {
    v6 = sub_1DF4F4524;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DF4F4524()
{
  v21 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];

  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  v8 = v0[12];
  if (v6)
  {
    v9 = v0[11];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446466;
    v20[0] = v11;
    v20[1] = 91;
    v20[2] = 0xE100000000000000;
    MEMORY[0x1E12D62C0](0xD000000000000022, 0x80000001DF572A80);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v9, v8);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v12 = sub_1DF47EF6C(91, 0xE100000000000000, v20);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2082;
    v13 = sub_1DF564884();
    v15 = v14;

    v16 = sub_1DF47EF6C(v13, v15, v20);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_1DF47C000, v4, v5, "%{public}s Successfully notified AvailabilityFoundationClient about feature access status: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v11, -1, -1);
    MEMORY[0x1E12D75F0](v10, -1, -1);
  }

  else
  {
  }

  v17 = v0[10];

  v18 = v0[1];

  return v18();
}