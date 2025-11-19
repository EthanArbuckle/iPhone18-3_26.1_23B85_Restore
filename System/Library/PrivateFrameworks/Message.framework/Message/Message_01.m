uint64_t sub_1B03A0454(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = 0;
  if (!v5)
  {
LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        goto LABEL_19;
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_96:

LABEL_19:
    appended = Capability.mailboxSpecificAppendLimit.unsafeMutableAddressor();
    v22 = *appended;
    v23 = appended[1];
    v24 = appended[2];
    v25 = *(appended + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LODWORD(v22) = sub_1B039F8EC(v22, v23, v24, v25, v1);

    return ~v22 & 1;
  }

  while (1)
  {
    v8 = v7;
LABEL_8:
    v9 = v1;
    v10 = *(v1 + 48) + ((v8 << 11) | (32 * __clz(__rbit64(v5))));
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v50 = v13;
    v51 = v12;
    if (v14)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    else
    {
      v15 = sub_1B0E44EE8();
      MEMORY[0x1B2726D00](v15);
    }

    v16 = sub_1B0E44BB8();
    v18 = v17;

    if (v16 == 0x494C444E45505041 && v18 == 0xEB0000000054494DLL)
    {
      v1 = v9;

      goto LABEL_22;
    }

    v20 = sub_1B0E46A78();

    v1 = v9;
    if (v20)
    {
      break;
    }

    v5 &= v5 - 1;

    v7 = v8;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

LABEL_22:
  v27 = Capability.value.getter(v51, v11, v50, v14);
  v29 = v28;

  if (!v29)
  {
    goto LABEL_19;
  }

  v30 = HIBYTE(v29) & 0xF;
  v31 = v27 & 0xFFFFFFFFFFFFLL;
  if ((v29 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(v29) & 0xF;
  }

  else
  {
    v32 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
    goto LABEL_96;
  }

  if ((v29 & 0x1000000000000000) != 0)
  {
    v34 = sub_1B0B6D434(v27, v29, 10);
    v47 = v49;
    goto LABEL_87;
  }

  if ((v29 & 0x2000000000000000) != 0)
  {
    v52[0] = v27;
    v52[1] = v29 & 0xFFFFFFFFFFFFFFLL;
    if (v27 == 43)
    {
      if (v30)
      {
        if (--v30)
        {
          v34 = 0;
          v42 = v52 + 1;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            if (!is_mul_ok(v34, 0xAuLL))
            {
              break;
            }

            v37 = __CFADD__(10 * v34, v43);
            v34 = 10 * v34 + v43;
            if (v37)
            {
              break;
            }

            ++v42;
            if (!--v30)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_85;
      }

LABEL_102:
      __break(1u);
      return result;
    }

    if (v27 != 45)
    {
      if (v30)
      {
        v34 = 0;
        v45 = v52;
        while (1)
        {
          v46 = *v45 - 48;
          if (v46 > 9)
          {
            break;
          }

          if (!is_mul_ok(v34, 0xAuLL))
          {
            break;
          }

          v37 = __CFADD__(10 * v34, v46);
          v34 = 10 * v34 + v46;
          if (v37)
          {
            break;
          }

          ++v45;
          if (!--v30)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_85;
    }

    if (v30)
    {
      if (--v30)
      {
        v34 = 0;
        v38 = v52 + 1;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          if (!is_mul_ok(v34, 0xAuLL))
          {
            break;
          }

          v37 = 10 * v34 >= v39;
          v34 = 10 * v34 - v39;
          if (!v37)
          {
            break;
          }

          ++v38;
          if (!--v30)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_85;
    }

    goto LABEL_100;
  }

  if ((v27 & 0x1000000000000000) != 0)
  {
    result = (v29 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1B0E46368();
  }

  v33 = *result;
  if (v33 == 43)
  {
    if (v31 < 1)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v30 = v31 - 1;
    if (v31 != 1)
    {
      v34 = 0;
      if (result)
      {
        v40 = (result + 1);
        while (1)
        {
          v41 = *v40 - 48;
          if (v41 > 9)
          {
            goto LABEL_85;
          }

          if (!is_mul_ok(v34, 0xAuLL))
          {
            goto LABEL_85;
          }

          v37 = __CFADD__(10 * v34, v41);
          v34 = 10 * v34 + v41;
          if (v37)
          {
            goto LABEL_85;
          }

          ++v40;
          if (!--v30)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_77;
    }

LABEL_85:
    v34 = 0;
    LOBYTE(v30) = 1;
    goto LABEL_86;
  }

  if (v33 != 45)
  {
    if (v31)
    {
      v34 = 0;
      if (result)
      {
        while (1)
        {
          v44 = *result - 48;
          if (v44 > 9)
          {
            goto LABEL_85;
          }

          if (!is_mul_ok(v34, 0xAuLL))
          {
            goto LABEL_85;
          }

          v37 = __CFADD__(10 * v34, v44);
          v34 = 10 * v34 + v44;
          if (v37)
          {
            goto LABEL_85;
          }

          ++result;
          if (!--v31)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_77;
    }

    goto LABEL_85;
  }

  if (v31 < 1)
  {
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v30 = v31 - 1;
  if (v31 == 1)
  {
    goto LABEL_85;
  }

  v34 = 0;
  if (result)
  {
    v35 = (result + 1);
    while (1)
    {
      v36 = *v35 - 48;
      if (v36 > 9)
      {
        goto LABEL_85;
      }

      if (!is_mul_ok(v34, 0xAuLL))
      {
        goto LABEL_85;
      }

      v37 = 10 * v34 >= v36;
      v34 = 10 * v34 - v36;
      if (!v37)
      {
        goto LABEL_85;
      }

      ++v35;
      if (!--v30)
      {
        goto LABEL_86;
      }
    }
  }

LABEL_77:
  LOBYTE(v30) = 0;
LABEL_86:
  v53 = v30;
  v47 = v30;
LABEL_87:

  if ((v47 & 1) != 0 || v34 >> 5 < 0xC35)
  {
    goto LABEL_19;
  }

  if (v34 >= 2000000000)
  {
    v48 = 2000000000;
  }

  else
  {
    v48 = v34;
  }

  if (v34 >= 0)
  {
    return v48;
  }

  else
  {
    return 2000000000;
  }
}

uint64_t *Capability.mailboxSpecificAppendLimit.unsafeMutableAddressor()
{
  if (qword_1EB6DEA38 != -1)
  {
    swift_once();
  }

  return &static Capability.mailboxSpecificAppendLimit;
}

uint64_t *Capability.idle.unsafeMutableAddressor()
{
  if (qword_1EB6DEA20 != -1)
  {
    swift_once();
  }

  return &static Capability.idle;
}

uint64_t sub_1B03A0A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *), uint64_t a6)
{
  v44 = a6;
  v45 = a5;
  v42 = a2;
  v43 = a1;
  v8 = type metadata accessor for StateWithTasks();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38[-v13];
  sub_1B0390720(a4, &v38[-v13], type metadata accessor for StateWithTasks);
  v15 = sub_1B0398D1C();
  v40 = v16;
  v41 = v15;
  v39 = v17;
  sub_1B0390574(v14, type metadata accessor for StateWithTasks);
  sub_1B0390720(a4, v12, type metadata accessor for StateWithTasks);
  memcpy(v51, v12, sizeof(v51));
  v18 = sub_1B03A7A88();
  v19 = LOBYTE(v51[3]);
  v20 = BYTE1(v51[3]);
  v21 = v51[4];
  v22 = v51[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = sub_1B0397D14();
  v24 = v23;
  if (v21 == 3 || v21 == 2)
  {

    v25 = 1;
    goto LABEL_4;
  }

  v36 = sub_1B0BAE1A4(v23);
  if (v20)
  {
    goto LABEL_12;
  }

  if (v21 == 1)
  {
    if (v19)
    {
      v25 = v19 == 1;
      goto LABEL_13;
    }

LABEL_12:
    v25 = v36 ^ 1;
    goto LABEL_13;
  }

  if (v21 || (v19 - 1) >= 2)
  {
    goto LABEL_12;
  }

  v25 = 0;
LABEL_13:
  sub_1B0397E04(&unk_1F2710548, v22);
  sub_1B0BAE1A4(v24);
  v37 = sub_1B039109C(v22);

  if (v37 & 1) == 0 && (v20)
  {
    sub_1B0BAE1A4(v24);
  }

LABEL_4:

  sub_1B03A8380(v51[21], v51[22], v51[23], v51[24] & 1, v51[15], v18, v25 & 1, v51[26]);
  v27 = v26;
  v29 = v28;

  rawValue = sub_1B03AC81C(v27, v29).elements._rawValue;

  v31 = *(v12 + 70);
  v32 = sub_1B03C8B98(*(v12 + 264), v12[34]);
  sub_1B0390574(v12, type metadata accessor for StateWithTasks);
  v46[0] = v42;
  v46[1] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5198, "$]\t");
  sub_1B039E3F8(&qword_1EB6DC958, &qword_1EB6E5198, "$]\t");
  v33 = MailboxesSelectionUsage.removing<A>(notContainedIn:)(v46, rawValue);

  v47[0] = v41;
  v47[1] = v40;
  v48 = v39 & 1;
  v49 = v33;
  v50 = v32;
  v34 = v45(v43, v47);

  sub_1B03C81E4(v32);
  return v34;
}

Swift::Void __swiftcall StateWithTasks.logSyncRequests()()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = type metadata accessor for StateWithTasks();
  sub_1B03A0E2C(v3, v1, v2, v0 + *(v4 + 28));
}

void sub_1B03A0E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v182 = a2;
  v207 = type metadata accessor for TaskHistory.Running(0);
  v180 = *(v207 - 8);
  v6 = *(v180 + 64);
  v7 = MEMORY[0x1EEE9AC00](v207);
  v9 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v166 - v11);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v203 = &v166 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v206 = &v166 - v15;
  v188 = type metadata accessor for RunningTask();
  v177 = *(v188 - 8);
  v16 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v18 = &v166 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for State.Logger();
  v19 = *(*(v178 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v178);
  v22 = &v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v169 = &v166 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v195 = *(v4 + 64);
  if (*(v195 + 16))
  {
    v168 = &v166 - v26;
    v181 = v27;
    v171 = v4;
    v28 = static SyncRequest.Kind.allCases.getter();
    v174 = *(v28 + 2);
    if (v174)
    {
      v30 = 0;
      v170 = 0;
      v186 = v195 + 64;
      v173 = v28 + 32;
      *&v29 = 68159234;
      v167 = v29;
      *&v29 = 68159747;
      v175 = v29;
      *&v29 = 68158722;
      v166 = v29;
      v202 = v12;
      v189 = v18;
      v187 = a4;
      v205 = v9;
      v172 = v28;
LABEL_6:
      if (v30 >= *(v28 + 2))
      {
        goto LABEL_112;
      }

      v31 = v173[v30];
      v179 = v30 + 1;
      v224 = MEMORY[0x1E69E7CD0];
      v32 = 1 << *(v195 + 32);
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v34 = v33 & *(v195 + 64);
      swift_beginAccess();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v35 = 0;
LABEL_12:
      if (v34)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v36 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v36 >= ((v32 + 63) >> 6))
        {
          swift_endAccess();

          if (!*(v224 + 16))
          {
            goto LABEL_4;
          }

          v176 = v224;
          if (*(v171 + 192))
          {
            v41 = *(v171 + 168);
            v42 = v170;
            v204 = sub_1B0B86000(0, v41, &v224);
            v170 = v42;
            v43 = *(v41 + 16);
            v44 = v169;
            sub_1B03906B8(a4, v169, type metadata accessor for State.Logger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v45 = sub_1B0E43988();
            v46 = sub_1B0E45908();
            v47 = os_log_type_enabled(v45, v46);
            v184 = v43;
            if (v47)
            {
              v48 = swift_slowAlloc();
              v201 = v41;
              v49 = v44;
              v50 = v48;
              v200 = swift_slowAlloc();
              *&v213 = v200;
              *v50 = v167;
              *(v50 + 4) = 2;
              *(v50 + 8) = 256;
              v51 = *(v49 + *(v178 + 20));
              sub_1B0390514(v49, type metadata accessor for State.Logger);
              *(v50 + 10) = v51;
              v12 = v202;
              *(v50 + 11) = 2082;
              v52 = sub_1B0E462C8();
              v54 = sub_1B0399D64(v52, v53, &v213);

              *(v50 + 13) = v54;
              *(v50 + 21) = 2048;
              *(v50 + 23) = *(v176 + 16);
              *(v50 + 31) = 2082;
              v55 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v56 = sub_1B0B88A40(v55);
              v58 = v57;

              v59 = sub_1B0399D64(v56, v58, &v213);
              v41 = v201;

              *(v50 + 33) = v59;
              *(v50 + 41) = 2048;
              *(v50 + 43) = v204;
              *(v50 + 51) = 2048;
              v43 = v184;
              *(v50 + 53) = v184;
              _os_log_impl(&dword_1B0389000, v45, v46, "[%.*hhx] Sync kind '%{public}s': %ld running sync request(s) {%{public}s} with total of %ld of %ld mailbox(es).", v50, 0x3Du);
              v60 = v200;
              swift_arrayDestroy();
              v18 = v189;
              MEMORY[0x1B272C230](v60, -1, -1);
              MEMORY[0x1B272C230](v50, -1, -1);
            }

            else
            {
              sub_1B0390514(v44, type metadata accessor for State.Logger);
            }

            v76 = v205;
            if (v43)
            {
              v77 = v43;
              v78 = 0;
              v79 = v41 + 32;
              v183 = v41 + 32;
              do
              {
                v80 = (v79 + 176 * v78);
                v81 = *v80;
                v82 = v80[2];
                v214 = v80[1];
                v215 = v82;
                v213 = v81;
                v83 = v80[3];
                v84 = v80[4];
                v85 = v80[6];
                v218 = v80[5];
                v219 = v85;
                v216 = v83;
                v217 = v84;
                v86 = v80[7];
                v87 = v80[8];
                v88 = v80[10];
                v222 = v80[9];
                v223 = v88;
                v220 = v86;
                v221 = v87;
                if (*(*(&v87 + 1) + 16))
                {
                  v89 = v219;
                  if (v219)
                  {
                    v192 = v78;
                    v90 = v214;
                    v91 = DWORD2(v214);
                    v92 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
                    swift_beginAccess();
                    v190 = *(v89 + v92);
                    v93 = *(v182 + 16);
                    v196 = v90;
                    if (v93)
                    {
                      v94 = v177;
                      v95 = v182 + ((*(v177 + 80) + 32) & ~*(v177 + 80));
                      sub_1B03A35B8(&v213, v211);
                      v96 = 0;
                      v204 = *(v94 + 72);
                      v97 = v95;
                      v185 = (v90 + 32);
                      v197 = MEMORY[0x1E69E7CC0];
                      v198 = v91 | (v91 << 32);
                      v98 = v91;
                      v200 = v93;
                      v201 = v91;
                      v199 = v95;
                      while (1)
                      {
                        sub_1B03906B8(v97 + v204 * v96, v18, type metadata accessor for RunningTask);
                        sub_1B0450DB0(v18, v211);
                        if (v212)
                        {
                          if (v212 == 1)
                          {
                            sub_1B0450C74(v211, v208);
                            v99 = v209;
                            v100 = v210;
                            __swift_project_boxed_opaque_existential_0(v208, v209);
                            (*(v100 + 32))(&v225, v99, v100);
                            v229 = v226;
                            v230 = v227;
                            v228 = v225;
                            sub_1B039E440(&v228);
                            __swift_destroy_boxed_opaque_existential_0Tm(v208);
                            if ((v230 | (v230 << 32)) != v198)
                            {
                              sub_1B039E440(&v229);
                              v93 = v200;
                              v98 = v201;
LABEL_67:
                              v97 = v199;
                              goto LABEL_68;
                            }

                            v101 = *(v229 + 16);
                            v93 = v200;
                            if (v101 != *(v196 + 16))
                            {
                              sub_1B039E440(&v229);
                              v98 = v201;
                              goto LABEL_67;
                            }

                            v98 = v201;
                            v97 = v199;
                            if (!v101 || v229 == v196)
                            {
LABEL_54:
                              sub_1B039E440(&v229);
                              v104 = &v18[*(v188 + 28)];
                              v105 = &v104[*(type metadata accessor for Task.Logger(0) + 20)];
                              v106 = *(v105 + 1);
                              v193 = *(v105 + 2);
                              v194 = v106;
                              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                              v107 = *(v18 + 6);
                              v108 = *(v107 + 16);
                              if (v108)
                              {
                                v109 = *(v180 + 80);
                                v191 = *(v18 + 6);
                                v110 = v107 + ((v109 + 32) & ~v109);
                                v111 = *(v180 + 72);
                                v112 = v110;
                                v113 = MEMORY[0x1E69E7CC0];
                                do
                                {
                                  v114 = v206;
                                  sub_1B03906B8(v112, v206, type metadata accessor for TaskHistory.Running);
                                  sub_1B0B950AC(v114, v12, type metadata accessor for TaskHistory.Running);
                                  if (swift_getEnumCaseMultiPayload() == 1)
                                  {
                                    sub_1B0390514(v12, type metadata accessor for TaskHistory.Running);
                                  }

                                  else
                                  {
                                    v115 = *v12;
                                    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
                                    sub_1B0390514(v12 + *(v116 + 64), type metadata accessor for ClientCommand);
                                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                    {
                                      v113 = sub_1B0B01220(0, *(v113 + 2) + 1, 1, v113);
                                    }

                                    v118 = *(v113 + 2);
                                    v117 = *(v113 + 3);
                                    if (v118 >= v117 >> 1)
                                    {
                                      v113 = sub_1B0B01220((v117 > 1), v118 + 1, 1, v113);
                                    }

                                    *(v113 + 2) = v118 + 1;
                                    *&v113[8 * v118 + 32] = v115;
                                    v76 = v205;
                                    v12 = v202;
                                  }

                                  v112 += v111;
                                  --v108;
                                }

                                while (v108);
                                v119 = *(v191 + 16);
                                if (v119)
                                {
                                  v120 = MEMORY[0x1E69E7CC0];
                                  do
                                  {
                                    v121 = v203;
                                    sub_1B03906B8(v110, v203, type metadata accessor for TaskHistory.Running);
                                    sub_1B0B950AC(v121, v76, type metadata accessor for TaskHistory.Running);
                                    if (swift_getEnumCaseMultiPayload() == 1)
                                    {
                                      v122 = *v76;
                                      sub_1B03E1BE8(*(v76 + 8));
                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                      {
                                        v120 = sub_1B0B0120C(0, *(v120 + 2) + 1, 1, v120);
                                      }

                                      v124 = *(v120 + 2);
                                      v123 = *(v120 + 3);
                                      if (v124 >= v123 >> 1)
                                      {
                                        v120 = sub_1B0B0120C((v123 > 1), v124 + 1, 1, v120);
                                      }

                                      *(v120 + 2) = v124 + 1;
                                      *&v120[4 * v124 + 32] = v122;
                                      v76 = v205;
                                    }

                                    else
                                    {
                                      sub_1B0390514(v76, type metadata accessor for TaskHistory.Running);
                                    }

                                    v110 += v111;
                                    --v119;
                                  }

                                  while (v119);
                                }

                                else
                                {
                                  v120 = MEMORY[0x1E69E7CC0];
                                }

                                v18 = v189;
                              }

                              else
                              {
                                v120 = MEMORY[0x1E69E7CC0];
                                v113 = MEMORY[0x1E69E7CC0];
                              }

                              sub_1B0390514(v18, type metadata accessor for RunningTask);
                              if (swift_isUniquelyReferenced_nonNull_native())
                              {
                                v125 = v197;
                              }

                              else
                              {
                                v125 = sub_1B0B01100(0, *(v197 + 2) + 1, 1, v197);
                              }

                              v127 = *(v125 + 2);
                              v126 = *(v125 + 3);
                              if (v127 >= v126 >> 1)
                              {
                                v125 = sub_1B0B01100((v126 > 1), v127 + 1, 1, v125);
                              }

                              *(v125 + 2) = v127 + 1;
                              v197 = v125;
                              v128 = &v125[32 * v127];
                              v129 = v193;
                              *(v128 + 4) = v194;
                              *(v128 + 5) = v129;
                              *(v128 + 6) = v113;
                              *(v128 + 7) = v120;
                              v98 = v201;
                              v12 = v202;
                              v97 = v199;
                              v93 = v200;
                              goto LABEL_69;
                            }

                            v102 = (v229 + 32);
                            v103 = v185;
                            while (*v102 == *v103)
                            {
                              ++v102;
                              ++v103;
                              if (!--v101)
                              {
                                goto LABEL_54;
                              }
                            }

                            sub_1B039E440(&v229);
                          }
                        }

                        else
                        {
                          sub_1B0B7ABB4(v211);
                        }

LABEL_68:
                        sub_1B0390514(v18, type metadata accessor for RunningTask);
LABEL_69:
                        if (++v96 == v93)
                        {
                          goto LABEL_92;
                        }
                      }
                    }

                    sub_1B03A35B8(&v213, v211);
                    v197 = MEMORY[0x1E69E7CC0];
                    v98 = v91;
LABEL_92:
                    a4 = v187;
                    v130 = v181;
                    sub_1B03906B8(v187, v181, type metadata accessor for State.Logger);
                    sub_1B0394868();
                    sub_1B0394868();
                    sub_1B0394868();
                    sub_1B03A35B8(&v213, v211);
                    sub_1B03A35B8(&v213, v211);
                    sub_1B0394868();
                    sub_1B0394868();
                    sub_1B0394868();
                    v131 = v197;
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    sub_1B03A35B8(&v213, v211);
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    v132 = sub_1B0E43988();
                    v133 = sub_1B0E45908();
                    sub_1B03A3614(&v213);
                    if (os_log_type_enabled(v132, v133))
                    {
                      LODWORD(v200) = v133;
                      v134 = swift_slowAlloc();
                      v199 = swift_slowAlloc();
                      v208[0] = v199;
                      *v134 = v175;
                      *(v134 + 4) = 2;
                      *(v134 + 8) = 256;
                      v135 = *(v130 + *(v178 + 20));
                      sub_1B0390514(v130, type metadata accessor for State.Logger);
                      *(v134 + 10) = v135;
                      *(v134 + 11) = 1040;
                      *(v134 + 13) = 2;
                      *(v134 + 17) = 512;
                      sub_1B03A3614(&v213);
                      *(v134 + 19) = WORD6(v223);
                      sub_1B03A3614(&v213);
                      *(v134 + 21) = 2160;
                      *(v134 + 23) = 0x786F626C69616DLL;
                      *(v134 + 31) = 2085;
                      *&v211[0] = v196;
                      DWORD2(v211[0]) = v98;
                      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                      v136 = sub_1B0E44BA8();
                      v138 = sub_1B0399D64(v136, v137, v208);

                      *(v134 + 33) = v138;
                      *(v134 + 41) = 2048;
                      v139 = *(v131 + 2);

                      *(v134 + 43) = v139;

                      *(v134 + 51) = 2082;
                      v140 = ConnectionID.debugDescription.getter(v190);
                      v142 = sub_1B0399D64(v140, v141, v208);

                      *(v134 + 53) = v142;
                      v204 = v134;
                      *(v134 + 61) = 2082;
                      v143 = *(v131 + 2);
                      if (v143)
                      {
                        v201 = v132;
                        *&v211[0] = MEMORY[0x1E69E7CC0];
                        sub_1B041D32C(0, v143, 0);
                        v144 = *&v211[0];
                        v145 = (v131 + 56);
                        do
                        {
                          v146 = *(v145 - 3);
                          v147 = *(v145 - 2);
                          v148 = *(v145 - 1);
                          v149 = *v145;
                          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                          v150 = sub_1B0B88598(v146, v147, v148, v149);
                          v152 = v151;

                          *&v211[0] = v144;
                          v154 = *(v144 + 16);
                          v153 = *(v144 + 24);
                          if (v154 >= v153 >> 1)
                          {
                            sub_1B041D32C((v153 > 1), v154 + 1, 1);
                            v144 = *&v211[0];
                          }

                          *(v144 + 16) = v154 + 1;
                          v155 = v144 + 16 * v154;
                          *(v155 + 32) = v150;
                          *(v155 + 40) = v152;
                          v145 += 4;
                          --v143;
                        }

                        while (v143);

                        a4 = v187;
                        v132 = v201;
                        v12 = v202;
                      }

                      else
                      {

                        v144 = MEMORY[0x1E69E7CC0];
                      }

                      *&v211[0] = v144;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
                      sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
                      v156 = sub_1B0E448E8();
                      v158 = v157;

                      v159 = sub_1B0399D64(v156, v158, v208);

                      v160 = v204;
                      *(v204 + 63) = v159;
                      _os_log_impl(&dword_1B0389000, v132, v200, "[%.*hhx] [{%.*hx}-%{sensitive,mask.mailbox}s] Is running %ld task(s) on %{public}s: %{public}s", v160, 0x47u);
                      v161 = v199;
                      swift_arrayDestroy();
                      MEMORY[0x1B272C230](v161, -1, -1);
                      MEMORY[0x1B272C230](v160, -1, -1);

                      sub_1B03A3614(&v213);
                      v76 = v205;
                      v18 = v189;
                    }

                    else
                    {

                      sub_1B03A3614(&v213);
                      sub_1B0390514(v130, type metadata accessor for State.Logger);

                      sub_1B03A3614(&v213);

                      sub_1B03A3614(&v213);
                    }

                    v79 = v183;
                    v77 = v184;
                    v78 = v192;
                  }
                }

                ++v78;
              }

              while (v78 != v77);
            }

LABEL_4:
          }

          else
          {
            v61 = v168;
            sub_1B03906B8(a4, v168, type metadata accessor for State.Logger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v62 = sub_1B0E43988();
            v63 = sub_1B0E45908();
            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              *&v213 = v65;
              *v64 = v166;
              *(v64 + 4) = 2;
              *(v64 + 8) = 256;
              v66 = *(v61 + *(v178 + 20));
              sub_1B0390514(v61, type metadata accessor for State.Logger);
              *(v64 + 10) = v66;
              v12 = v202;
              *(v64 + 11) = 2082;
              v67 = sub_1B0E462C8();
              v69 = sub_1B0399D64(v67, v68, &v213);

              *(v64 + 13) = v69;
              *(v64 + 21) = 2048;
              *(v64 + 23) = *(v176 + 16);
              *(v64 + 31) = 2082;
              v70 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v71 = sub_1B0B88A40(v70);
              v73 = v72;

              v74 = sub_1B0399D64(v71, v73, &v213);

              *(v64 + 33) = v74;
              _os_log_impl(&dword_1B0389000, v62, v63, "[%.*hhx] Sync kind '%{public}s': %ld running sync request(s) {%{public}s}. Mailbox(es) are unknown.", v64, 0x29u);
              swift_arrayDestroy();
              v75 = v65;
              v18 = v189;
              MEMORY[0x1B272C230](v75, -1, -1);
              MEMORY[0x1B272C230](v64, -1, -1);
            }

            else
            {
              sub_1B0390514(v61, type metadata accessor for State.Logger);
            }
          }

          v30 = v179;
          v28 = v172;
          if (v179 == v174)
          {
            goto LABEL_107;
          }

          goto LABEL_6;
        }

        v34 = *(v186 + 8 * v36);
        ++v35;
        if (v34)
        {
          v35 = v36;
LABEL_17:
          v37 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          v38 = v37 | (v35 << 6);
          v39 = *(*(v195 + 48) + 4 * v38);
          v40 = *(*(v195 + 56) + 32 * v38);
          switch(v40)
          {
            case 2:
              if (v31 != 2)
              {
                goto LABEL_12;
              }

              break;
            case 3:
              if (v31 != 3)
              {
                goto LABEL_12;
              }

              break;
            case 4:
              if (v31 == 4)
              {
                break;
              }

              goto LABEL_12;
            default:
              if (v31 - 2) < 3 || ((v40 ^ v31))
              {
                goto LABEL_12;
              }

              break;
          }

          sub_1B03FF318(v211, v39);
          goto LABEL_12;
        }
      }

      __break(1u);
      __break(1u);
LABEL_112:
      __break(1u);
    }

    else
    {

LABEL_107:
    }
  }

  else
  {
    sub_1B03906B8(a4, v22, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v162 = sub_1B0E43988();
    v163 = sub_1B0E45908();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      *v164 = 68157952;
      *(v164 + 4) = 2;
      *(v164 + 8) = 256;
      v165 = v22[*(v178 + 20)];
      sub_1B0390514(v22, type metadata accessor for State.Logger);
      *(v164 + 10) = v165;
      _os_log_impl(&dword_1B0389000, v162, v163, "[%.*hhx] No running sync requests.", v164, 0xBu);
      MEMORY[0x1B272C230](v164, -1, -1);
    }

    else
    {
      sub_1B0390514(v22, type metadata accessor for State.Logger);
    }
  }
}

uint64_t sub_1B03A22C4(uint64_t a1)
{
  v2 = v1;
  v29 = type metadata accessor for Engine.Logger(0);
  v4 = *(*(v29 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  swift_beginAccess();
  v10 = sub_1B03A2728(a1);
  v12 = v11;
  swift_endAccess();
  v13 = &unk_1EB737000;
  if (v12)
  {
    v14 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
    sub_1B03903A8(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v9, type metadata accessor for Engine.Logger);
    swift_retain_n();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0C497D8(v10, v12);

    v15 = sub_1B0E43988();
    v16 = sub_1B0E439A8();
    (*(*(v16 - 8) + 8))(v9, v16);
    v17 = sub_1B0E458E8();
    if (os_log_type_enabled(v15, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 68158208;
      *(v18 + 4) = 2;
      *(v18 + 8) = 256;
      v19 = *(v14 + *(v29 + 20));

      *(v18 + 10) = v19;

      *(v18 + 11) = 1024;
      sub_1B0C497E8(v10, v12);
      *(v18 + 13) = v10;
      sub_1B0C497E8(v10, v12);
      _os_log_impl(&dword_1B0389000, v15, v17, "[%.*hhx] Did not receive any credentials %u.", v18, 0x11u);
      v20 = v18;
      v13 = &unk_1EB737000;
      MEMORY[0x1B272C230](v20, -1, -1);
    }

    else
    {
      sub_1B0C497E8(v10, v12);

      sub_1B0C497E8(v10, v12);
    }

    v12(MEMORY[0x1E69E7CC0]);
    sub_1B0C497E8(v10, v12);
    sub_1B0C497E8(v10, v12);
  }

  swift_beginAccess();
  v21 = sub_1B03A28A8(a1);
  result = swift_endAccess();
  if (v21)
  {
    v23 = v2 + v13[348];
    sub_1B03903A8(v23, v7, type metadata accessor for Engine.Logger);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v24 = sub_1B0E43988();
    v25 = sub_1B0E439A8();
    (*(*(v25 - 8) + 8))(v7, v25);
    v26 = sub_1B0E458E8();
    if (os_log_type_enabled(v24, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 68157952;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      *(v27 + 10) = *(v23 + *(v29 + 20));

      _os_log_impl(&dword_1B0389000, v24, v26, "[%.*hhx] Did not receive any push registration info.", v27, 0xBu);
      MEMORY[0x1B272C230](v27, -1, -1);
    }

    else
    {
    }

    memset(v30, 0, sizeof(v30));
    v21(v30);
    return sub_1B03B1AF0(v21);
  }

  return result;
}

uint64_t sub_1B03A2728(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1B03A2724(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B0C4B380();
    v9 = v16;
  }

  v10 = v6;
  v11 = (*(v9 + 56) + 24 * v6);
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = *(v11 + 2);
  sub_1B0C48168(v10, v9);
  *v2 = v9;
  return v12;
}

unint64_t sub_1B03A27D4(int a1)
{
  v3 = *(v1 + 40);
  sub_1B0E46C28();
  sub_1B0E46C88();
  v4 = sub_1B0E46CB8();
  return sub_1B03A283C(a1, v4);
}

unint64_t sub_1B03A283C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1B03A28A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1B03A2724(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v15 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B0C4B21C();
    v9 = v15;
  }

  v10 = v6;
  v11 = (*(v9 + 56) + 16 * v6);
  v12 = *v11;
  v13 = v11[1];
  sub_1B0C47FD4(v10, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_1B03A293C()
{
  v1 = _s19UserInitiatedSearchVMa(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v0[3])
  {
    v6 = *v0;
    result = MEMORY[0x1E69E7CD0];
    v37 = MEMORY[0x1E69E7CD0];
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = 0;
      v32 = v6 + 32;
      do
      {
        v10 = (v32 + 176 * v9);
        v11 = *v10;
        v12 = v10[2];
        v34[1] = v10[1];
        v34[2] = v12;
        v34[0] = v11;
        v13 = v10[3];
        v14 = v10[4];
        v15 = v10[6];
        v34[5] = v10[5];
        v34[6] = v15;
        v34[3] = v13;
        v34[4] = v14;
        v16 = v10[7];
        v17 = v10[8];
        v18 = v10[10];
        v35 = v10[9];
        v36 = v18;
        v34[7] = v16;
        v34[8] = v17;
        v19 = *(*(&v35 + 1) + 16);
        if (v19)
        {
          v20 = *(&v35 + 1) + ((*(v2 + 80) + 32) & ~*(v2 + 80));
          sub_1B03A35B8(v34, v33);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v21 = *(v2 + 72);
          do
          {
            sub_1B03B1BD0(v20, v5, _s19UserInitiatedSearchVMa);
            sub_1B0B01B88(v33, *v5);
            sub_1B03B1DC0(v5, _s19UserInitiatedSearchVMa);
            v20 += v21;
            --v19;
          }

          while (v19);
          sub_1B03A3614(v34);
        }

        ++v9;
      }

      while (v9 != v8);
      return v37;
    }
  }

  else
  {
    v22 = v0[1];
    v23 = *(v22 + 16);
    v24 = MEMORY[0x1E69E7CC0];
    if (v23)
    {
      *&v34[0] = MEMORY[0x1E69E7CC0];
      sub_1B0B0A3A4(0, v23, 0);
      v24 = *&v34[0];
      v25 = (v22 + 32);
      v26 = *(*&v34[0] + 16);
      do
      {
        v28 = *v25;
        v25 += 6;
        v27 = v28;
        *&v34[0] = v24;
        v29 = *(v24 + 24);
        if (v26 >= v29 >> 1)
        {
          sub_1B0B0A3A4((v29 > 1), v26 + 1, 1);
          v24 = *&v34[0];
        }

        *(v24 + 16) = v26 + 1;
        *(v24 + 4 * v26++ + 32) = v27;
        --v23;
      }

      while (v23);
    }

    v30 = sub_1B0B38738(v24);

    return v30;
  }

  return result;
}

uint64_t sub_1B03A2BB8()
{
  result = MEMORY[0x1E69E7CD0];
  if (v0[3])
  {
    v2 = *v0;
    v23 = MEMORY[0x1E69E7CD0];
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = v2 + 32;
      do
      {
        v6 = (v5 + 176 * v4);
        v7 = *v6;
        v8 = v6[2];
        v20[1] = v6[1];
        v20[2] = v8;
        v20[0] = v7;
        v9 = v6[3];
        v10 = v6[4];
        v11 = v6[6];
        v20[5] = v6[5];
        v20[6] = v11;
        v20[3] = v9;
        v20[4] = v10;
        v12 = v6[7];
        v13 = v6[8];
        v14 = v6[10];
        v21 = v6[9];
        v22 = v14;
        v20[7] = v12;
        v20[8] = v13;
        v15 = v21;
        v16 = *(v21 + 16);
        sub_1B03A35B8(v20, v19);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v16)
        {
          v17 = (v15 + 32);
          do
          {
            v18 = *v17;
            v17 += 10;
            sub_1B0B02C80(v19, v18);
            --v16;
          }

          while (v16);
        }

        ++v4;
        sub_1B03A3614(v20);
      }

      while (v4 != v3);
      return v23;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16IMAP2Persistence17MailboxOfInterestV17LocalModificationO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t StateWithTasks.update(updates:send:persist:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, void (*a4)(unint64_t), void (*a5)(void, void, void, void, void))
{
  v6 = v5;
  v90 = a2;
  v91 = a3;
  v77 = type metadata accessor for State.Logger();
  v10 = *(*(v77 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v77);
  v83 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v79 = &v76 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v81 = &v76 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v76 - v17;
  v18 = *(v5 + 184);
  v19 = *(v5 + 216);
  v100[4] = *(v5 + 200);
  v101[0] = v19;
  *(v101 + 12) = *(v5 + 228);
  v100[2] = *(v5 + 168);
  v100[3] = v18;
  v80 = sub_1B03A293C();
  v20 = *(v5 + 200);
  v99[3] = *(v5 + 184);
  v99[4] = v20;
  v100[0] = *(v5 + 216);
  *(v100 + 12) = *(v5 + 228);
  v99[2] = *(v5 + 168);
  v21 = sub_1B03A2BB8();
  v22 = *(v5 + 184);
  v23 = *(v5 + 216);
  v94[2] = *(v5 + 200);
  v95[0] = v23;
  *(v95 + 12) = *(v5 + 228);
  v94[0] = *(v5 + 168);
  v94[1] = v22;
  v93 = MEMORY[0x1E69E7CD0];
  v24 = *(a1 + 16);
  v84 = a1;
  v85 = v5;
  v89 = v24;
  v82 = v21;
  if (v24)
  {
    v88 = a1 + 32;
    sub_1B03A3668(v94, v98);
    v25 = 0;
    v86 = a4;
    v87 = a5;
    do
    {
      v26 = *(v88 + 8 * v25);
      v27 = *(v6 + 264);
      v92 = v26 & 0x3FFFFFFFFFFFFFFFLL;

      v28 = *tracingLog.unsafeMutableAddressor();
      v29 = sub_1B0E45D38();

      v30 = v26 >> 62;
      if (v29)
      {
        if (v30)
        {
          if (v30 == 1)
          {
            v31 = *(v92 + 16);
            v32 = *(v92 + 24);
            sub_1B0390664(v31, *(v92 + 24));
            sub_1B0394E2C(v27, v31, v32);
            sub_1B0390678(v31, v32);
          }
        }

        else
        {
          v33 = *(v26 + 16);
          v34 = *(v26 + 24);
          v36 = *(v26 + 40);
          v35 = *(v26 + 48);
          sub_1B044CD04(v34);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0BB6170(v27, v33, v34);
          sub_1B044CEF8(v34);
          a4 = v86;

          a5 = v87;
        }
      }

      sub_1B03A36C4(v26, v90, v91, a4, a5);
      if (v30 == 1 && (*(v92 + 24) & 1) != 0)
      {
        v37 = *(v92 + 16);
        if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0x13)
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v39 = *(v38 + 16);
          if (v39)
          {
            *&v98[0] = MEMORY[0x1E69E7CC0];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0B0A3A4(0, v39, 0);
            v40 = *&v98[0];
            v41 = *(*&v98[0] + 16);
            v42 = 32;
            do
            {
              v43 = *(v38 + v42);
              *&v98[0] = v40;
              v44 = *(v40 + 24);
              if (v41 >= v44 >> 1)
              {
                sub_1B0B0A3A4((v44 > 1), v41 + 1, 1);
                v40 = *&v98[0];
              }

              *(v40 + 16) = v41 + 1;
              *(v40 + 4 * v41 + 32) = v43;
              v42 += 24;
              ++v41;
              --v39;
            }

            while (v39);

            v6 = v85;
            a4 = v86;
          }

          else
          {
            v40 = MEMORY[0x1E69E7CC0];
          }

          v45 = *(v40 + 16);
          a5 = v87;
          if (v45)
          {
            v46 = 32;
            do
            {
              sub_1B0B01B88(v98, *(v40 + v46));
              v46 += 4;
              --v45;
            }

            while (v45);
          }
        }
      }

      ++v25;
    }

    while (v25 != v89);
  }

  else
  {
    sub_1B03A3668(v94, v98);
  }

  v47 = sub_1B03A5BE4(v90, v91, a4, a5);
  sub_1B03CA990(v84);
  v48 = v81;
  if ((v47 & 1) == 0 && !*(*(v6 + 272) + 16) && *(v6 + 192) == 1)
  {
    *&v98[0] = *(v6 + 168);
    sub_1B0B2AA88(v98);
    v49 = *&v98[0];
    *(v6 + 176) = 0;
    *(v6 + 184) = 0;
    *(v6 + 168) = v49;
    *(v6 + 192) = 1;
  }

  v50 = *(v6 + 184);
  v51 = *(v6 + 216);
  v98[2] = *(v6 + 200);
  v99[0] = v51;
  *(v99 + 12) = *(v6 + 228);
  v98[0] = *(v6 + 168);
  v98[1] = v50;
  v52 = sub_1B03B0204(v93, v80, sub_1B0B01B88);
  v53 = sub_1B03CA88C(v52);

  v54 = v6;
  if ((~v53 & 0xF000000000000007) != 0)
  {
    v55 = v6 + *(type metadata accessor for StateWithTasks() + 28);
    v56 = v78;
    sub_1B0390720(v55, v78, type metadata accessor for State.Logger);
    sub_1B0390720(v56, v48, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v57 = sub_1B0E43988();
    v58 = sub_1B0E458C8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = v48;
      v61 = v59;
      *v59 = 68157952;
      *(v59 + 4) = 2;
      *(v59 + 8) = 256;
      v62 = *(v60 + *(v77 + 20));
      sub_1B0390574(v60, type metadata accessor for State.Logger);
      v61[10] = v62;
      v56 = v78;
      _os_log_impl(&dword_1B0389000, v57, v58, "[%.*hhx] Updating running search requests.", v61, 0xBu);
      MEMORY[0x1B272C230](v61, -1, -1);
    }

    else
    {
      sub_1B0390574(v48, type metadata accessor for State.Logger);
    }

    a4(v53);
    sub_1B0B7C1A0(v53);
    sub_1B0390574(v56, type metadata accessor for State.Logger);
    v54 = v85;
  }

  v63 = *(v54 + 184);
  v64 = *(v54 + 216);
  v96[4] = *(v54 + 200);
  v97[0] = v64;
  *(v97 + 12) = *(v54 + 228);
  v96[2] = *(v54 + 168);
  v96[3] = v63;
  v65 = sub_1B0BA75E8(v84, sub_1B03CAE90, 0, v82);

  v66 = v54;
  v67 = v83;
  if ((~v65 & 0xF000000000000007) != 0)
  {
    v68 = v54 + *(type metadata accessor for StateWithTasks() + 28);
    v69 = v79;
    sub_1B0390720(v68, v79, type metadata accessor for State.Logger);
    sub_1B0390720(v69, v67, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v70 = sub_1B0E43988();
    v71 = sub_1B0E458C8();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 68157952;
      *(v72 + 4) = 2;
      *(v72 + 8) = 256;
      v73 = *(v67 + *(v77 + 20));
      sub_1B0390574(v67, type metadata accessor for State.Logger);
      *(v72 + 10) = v73;
      v69 = v79;
      _os_log_impl(&dword_1B0389000, v70, v71, "[%.*hhx] Updating running download requests.", v72, 0xBu);
      MEMORY[0x1B272C230](v72, -1, -1);
    }

    else
    {
      sub_1B0390574(v67, type metadata accessor for State.Logger);
    }

    a4(v65);
    sub_1B0B7C1A0(v65);
    sub_1B0390574(v69, type metadata accessor for State.Logger);
  }

  v74 = *(v66 + 200);
  v95[3] = *(v66 + 184);
  v95[4] = v74;
  v96[0] = *(v66 + 216);
  *(v96 + 12) = *(v66 + 228);
  v95[2] = *(v66 + 168);
  sub_1B03CAFC4(*(v66 + 264), v94);
  return sub_1B03AD10C(v94);
}

void sub_1B03A36C4(unint64_t a1, uint64_t (*a2)(uint64_t, void *), uint64_t a3, void (*a4)(unint64_t), uint64_t a5)
{
  v6 = v5;
  v134 = a5;
  v135 = a4;
  v138 = type metadata accessor for State.Logger();
  v10 = *(*(v138 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v138);
  v140 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v139 = &v134 - v13;
  v14 = type metadata accessor for TaskHistory.Running(0);
  v141 = *(v14 - 8);
  v15 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for RunningTask();
  v147 = *(v144 - 8);
  v18 = *(v147 + 64);
  v19 = MEMORY[0x1EEE9AC00](v144);
  v149 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v150 = &v134 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v142 = &v134 - v23;
  v145 = v5;
  v148 = a1;
  v137 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v24 = *(a1 + 24);
    if (v24 >> 60 != 1)
    {
      goto LABEL_20;
    }

    v25 = *(a1 + 16);
    v26 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v27 = *(v26 + 24);
    v28 = *(v26 + 32);
    v29 = *(v26 + 40);
    if (*(v6 + 192) == 1)
    {
      v30 = *(v6 + 168);
      v31 = *(v30 + 16);
      if (v31)
      {
        LODWORD(v153) = v27;
        v154 = v28;
        v32 = (v30 + 128);
        v33 = v32;
        do
        {
          v35 = *v33;
          v33 += 22;
          v34 = v35;
          if (v35)
          {
            v36 = *(v32 - 18);
            v37 = *(v32 - 10);
            v38 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
            swift_beginAccess();
            if (*(v34 + v38) == v25)
            {
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              goto LABEL_16;
            }
          }

          v32 = v33;
          --v31;
        }

        while (v31);
        v37 = 0;
        v36 = 0;
LABEL_16:
        v6 = v145;
        a1 = v148;
        v28 = v154;
        v27 = v153;
      }

      else
      {
        v37 = 0;
        v36 = 0;
        v6 = v145;
      }
    }

    else
    {
      v37 = 0;
      v36 = 0;
    }

    v162 = v25;
    v163 = v37;
    v164 = v36;
    v165 = v27;
    v166 = v28;
    v167 = v29;
    v47 = *(type metadata accessor for StateWithTasks() + 28);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B7D354(&v162, v6, v6 + v47);

    goto LABEL_19;
  }

  if (a1 >> 62 == 1 && *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == 1)
  {
    v39 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (((v39 >> 59) & 0x1E | (v39 >> 2) & 1) == 4)
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v41 = *(type metadata accessor for StateWithTasks() + 28);
      v42 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v43 = sub_1B0B877CC(v42, v6 + v41);

      v44 = sub_1B0398D1C();
      sub_1B0BAD608(v43, v145, a2, a3, v44, v46, v45 & 1);
      v6 = v145;
LABEL_19:
    }
  }

LABEL_20:
  v136 = *(type metadata accessor for StateWithTasks() + 28);
  sub_1B03907EC(a1, v6 + v136);
  v48 = *(v6 + 272);
  v146 = v48[2];
  if (!v146)
  {
LABEL_45:
    if (v137 != 1)
    {
      return;
    }

    if (*((v148 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != 1)
    {
      return;
    }

    v80 = *((v148 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (((v80 >> 59) & 0x1E | (v80 >> 2) & 1) != 2)
    {
      return;
    }

    v81 = v80 & 0xFFFFFFFFFFFFFFBLL;
    v82 = *(v81 + 24);
    v83 = *(v81 + 32);
    v84 = *(v81 + 40);
    if (*(v6 + 192) == 1)
    {
      v85 = *(v6 + 168);
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3DD8, &qword_1B0EC0F10);
      v87 = sub_1B039E3F8(&qword_1EB6DA400, &qword_1EB6E3DD8, &qword_1B0EC0F10);
      v88 = swift_allocObject();
      v88[2] = v85;
      v88[3] = sub_1B03FFDF0;
      v88[4] = 0;
      v88[5] = sub_1B0A8F5AC;
      v88[6] = 0;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    else
    {
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3DD0, &qword_1B0EC0F08);
      v87 = sub_1B039E3F8(&qword_1EB6DB4A8, &qword_1EB6E3DD0, &qword_1B0EC0F08);
      v88 = MEMORY[0x1E69E7CC0];
    }

    v159 = v86;
    v160 = v87;
    *&v158 = v88;
    v89 = __swift_project_boxed_opaque_existential_0(&v158, v86);
    v90 = *(*(v86 - 8) + 64);
    MEMORY[0x1EEE9AC00](v89);
    v93 = (*(v92 + 16))(&v134 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
    MEMORY[0x1EEE9AC00](v93);
    *(&v134 - 32) = v82;
    *(&v134 - 3) = v83;
    LOBYTE(v133) = v84;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v94 = sub_1B0E44FC8();

    __swift_destroy_boxed_opaque_existential_0Tm(&v158);
    v95 = *(v94 + 16);
    if (!v95)
    {

      return;
    }

    sub_1B0390720(v145 + v136, v139, type metadata accessor for State.Logger);
    v154 = v94;
    v96 = (v94 + 48);
    *&v97 = 68158467;
    v152 = v97;
    v153 = v95;
    v98 = v140;
    do
    {
      v105 = *(v96 - 2);
      v106 = *(v96 - 2);
      v107 = *v96;
      sub_1B0390720(v139, v98, type metadata accessor for State.Logger);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v108 = sub_1B0E43988();
      v109 = sub_1B0E458C8();

      if (os_log_type_enabled(v108, v109))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v155[0] = v100;
        *v99 = v152;
        *(v99 + 4) = 2;
        *(v99 + 8) = 256;
        v101 = *(v140 + *(v138 + 20));
        sub_1B0390574(v140, type metadata accessor for State.Logger);
        *(v99 + 10) = v101;
        *(v99 + 11) = 2160;
        *(v99 + 13) = 0x786F626C69616DLL;
        *(v99 + 21) = 2085;

        *&v158 = v105;
        DWORD2(v158) = v106;
        v102 = sub_1B0E44BA8();
        v104 = sub_1B0399D64(v102, v103, v155);

        *(v99 + 23) = v104;
        _os_log_impl(&dword_1B0389000, v108, v109, "[%.*hhx] Notifying persistence that %{sensitive,mask.mailbox}s is already synced.", v99, 0x1Fu);
        __swift_destroy_boxed_opaque_existential_0Tm(v100);
        v98 = v140;
        MEMORY[0x1B272C230](v100, -1, -1);
        MEMORY[0x1B272C230](v99, -1, -1);
      }

      else
      {
        sub_1B0390574(v98, type metadata accessor for State.Logger);
      }

      v96 += 6;
      v95 = (v95 - 1);
    }

    while (v95);
    v110 = sub_1B03C8E00(MEMORY[0x1E69E7CC0]);
    v111 = 0;
    v112 = v154;
    for (i = (v154 + 56); ; i += 6)
    {
      if (v111 >= *(v112 + 16))
      {
        goto LABEL_77;
      }

      v115 = *(i - 3);
      v116 = *(i - 1);
      v117 = *i;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v158 = v110;
      v119 = sub_1B03B8A9C(v116, v117);
      v121 = v110[2];
      v122 = (v120 & 1) == 0;
      v123 = __OFADD__(v121, v122);
      v124 = v121 + v122;
      if (v123)
      {
        goto LABEL_78;
      }

      v125 = v120;
      if (v110[3] < v124)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_66;
      }

      v131 = v119;
      sub_1B0B8D4FC();
      v119 = v131;
      v110 = v158;
      if ((v125 & 1) == 0)
      {
LABEL_67:
        v110[(v119 >> 6) + 8] |= 1 << v119;
        v127 = (v110[6] + 16 * v119);
        *v127 = v116;
        v127[1] = v117;
        v128 = v110[7] + 24 * v119;
        *v128 = 0;
        *(v128 + 4) = 1;
        *(v128 + 8) = 0;
        *(v128 + 16) = 1;

        v129 = v110[2];
        v123 = __OFADD__(v129, 1);
        v130 = v129 + 1;
        if (v123)
        {
          goto LABEL_79;
        }

        v110[2] = v130;
        goto LABEL_59;
      }

LABEL_58:
      v114 = v110[7] + 24 * v119;
      *v114 = 0;
      *(v114 + 4) = 1;
      *(v114 + 8) = 0;
      *(v114 + 16) = 1;

LABEL_59:
      v111 = (v111 + 1);
      v112 = v154;
      if (v153 == v111)
      {

        v132 = swift_allocObject();
        *(v132 + 16) = v110;
        v135(v132 | 0x9000000000000004);

        sub_1B0390574(v139, type metadata accessor for State.Logger);
        return;
      }
    }

    sub_1B0B2F9F0(v124, isUniquelyReferenced_nonNull_native);
    v119 = sub_1B03B8A9C(v116, v117);
    if ((v125 & 1) != (v126 & 1))
    {
      goto LABEL_80;
    }

LABEL_66:
    v110 = v158;
    if ((v125 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

  v49 = 0;
  v50 = 0;
  v51 = *(v6 + 264);
  v52 = v142;
  while (v49 < v48[2])
  {
    v151 = (*(v147 + 80) + 32) & ~*(v147 + 80);
    v53 = v48 + v151;
    v154 = *(v147 + 72) * v49;
    sub_1B0390720(v48 + v151 + v154, v52, type metadata accessor for RunningTask);
    sub_1B045070C(v148, v6);
    v54 = v50;
    v153 = v48;
    if (v50)
    {
      *&v152 = 0;
      sub_1B0450DB0(v52, &v158);
      v55 = v150;
      if (v161)
      {
        if (v161 == 1)
        {
          sub_1B0450C74(&v158, v155);
          v56 = v156;
          v57 = v157;
          __swift_project_boxed_opaque_existential_0(v155, v156);
          v58 = *(v57 + 136);
          v59 = v56;
          v48 = v153;
          v60 = v57;
          v6 = v145;
          v58(v145, v52 + *(v144 + 28), v59, v60);

          sub_1B0B7ABB4(v52);
          *v52 = 1;
          *(v52 + 8) = 0u;
          *(v52 + 24) = 0u;
          *(v52 + 37) = 0;
          *(v52 + 45) = 2;
          __swift_destroy_boxed_opaque_existential_0Tm(v155);
        }

        else
        {
        }
      }

      else
      {

        sub_1B0B7ABB4(v52);
        *v52 = 1;
        *(v52 + 8) = 0u;
        *(v52 + 24) = 0u;
        *(v52 + 37) = 0;
        *(v52 + 45) = 2;
        sub_1B0B7ABB4(&v158);
      }
    }

    else
    {
      *&v152 = 0;
      v55 = v150;
    }

    sub_1B0390720(v52, v55, type metadata accessor for RunningTask);
    v61 = v149;
    if (v49 >= v48[2])
    {
      goto LABEL_75;
    }

    sub_1B0390720(&v53[v154], v149, type metadata accessor for RunningTask);
    v62 = *tracingLog.unsafeMutableAddressor();
    v63 = sub_1B0E45D38();

    if (v63)
    {
      v64 = v55;
      v65 = *(v55 + 48);
      v66 = *(v61 + 48);
      *&v158 = MEMORY[0x1E69E7CC0];
      *(&v158 + 1) = MEMORY[0x1E69E7CC0];
      KeyPath = swift_getKeyPath();
      v68 = MEMORY[0x1EEE9AC00](KeyPath);
      MEMORY[0x1EEE9AC00](v68);
      v69 = sub_1B0450C8C();
      Array.findAppendOnlyDiff<A>(from:id:added:removed:update:)(v66, KeyPath, sub_1B0B7C1EC, (&v134 - 4), sub_1B0B7C1F4, (&v134 - 4), __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1, 0, v65, v69);

      v70 = *(&v158 + 1);
      v71 = *(v158 + 16);
      if (v71)
      {
        v143 = *(&v158 + 1);
        v72 = *(v64 + *(v144 + 32));
        v73 = v158 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
        v74 = *(v141 + 72);
        do
        {
          sub_1B0390720(v73, v17, type metadata accessor for TaskHistory.Running);
          sub_1B0B793EC(v51, v72);
          sub_1B0390574(v17, type metadata accessor for TaskHistory.Running);
          v73 += v74;
          --v71;
        }

        while (v71);

        v52 = v142;
        v70 = v143;
      }

      else
      {

        v52 = v142;
      }

      v75 = *(v70 + 16);
      v6 = v145;
      v61 = v149;
      if (v75)
      {
        v76 = *&v150[*(v144 + 32)];
        v77 = (v70 + 40);
        do
        {
          v78 = *(v77 - 1);
          v79 = *v77;
          v77 += 12;
          sub_1B0B7A1F4(v51, v76, v78, v79);
          --v75;
        }

        while (v75);
      }

      v55 = v150;
    }

    sub_1B0390574(v61, type metadata accessor for RunningTask);
    v48 = v153;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_1B0B8CA2C(v48);
    }

    if (v49 >= v48[2])
    {
      goto LABEL_76;
    }

    ++v49;
    sub_1B0450CE0(v55, v48 + v151 + v154, type metadata accessor for RunningTask);
    *(v6 + 272) = v48;
    sub_1B0390574(v52, type metadata accessor for RunningTask);
    v50 = v152;
    if (v49 == v146)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  sub_1B0E46BA8();
  __break(1u);
}

uint64_t sub_1B03A476C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B03A47A4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1B03A47F4()
{
  v1 = *v0;
  if ((v0[3] & 1) == 0)
  {
    return *(v1 + 16) != 0;
  }

  if (*(v0[4] + 16))
  {
    return 1;
  }

  v3 = (v1 + 168);
  v4 = *(v1 + 16) + 1;
  do
  {
    result = --v4 != 0;
    if (!v4)
    {
      break;
    }

    v5 = *v3;
    v3 += 22;
  }

  while (!*(v5 + 16));
  return result;
}

uint64_t block_destroy_helper_8(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

uint64_t sub_1B03A48FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4330, &qword_1B0EDC420);
  v3 = sub_1B0E46228();
  v4 = 0;
  v5 = v3 + 56;
  v6 = a1 + 32;
  while (1)
  {
    v7 = (v6 + 16 * v4);
    v8 = *v7;
    v9 = *(v7 + 2);
    v10 = *(v3 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v9 | (v9 << 32));
    result = sub_1B0E46CB8();
    v12 = -1 << *(v3 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    v15 = *(v5 + 8 * (v13 >> 6));
    v16 = 1 << v13;
    v17 = *(v3 + 48);
    if (((1 << v13) & v15) != 0)
    {
      break;
    }

LABEL_18:
    *(v5 + 8 * v14) = v15 | v16;
    v25 = v17 + 16 * v13;
    *v25 = v8;
    *(v25 + 8) = v9;
    v26 = *(v3 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_23;
    }

    *(v3 + 16) = v28;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_3:
    if (++v4 == v1)
    {
      return v3;
    }
  }

  v18 = ~v12;
  while (1)
  {
    v19 = (v17 + 16 * v13);
    if ((v19[2] | (v19[2] << 32)) == (v9 | (v9 << 32)))
    {
      v20 = *v19;
      v21 = *(*v19 + 16);
      if (v21 == *(v8 + 16))
      {
        break;
      }
    }

LABEL_6:
    v13 = (v13 + 1) & v18;
    v14 = v13 >> 6;
    v15 = *(v5 + 8 * (v13 >> 6));
    v16 = 1 << v13;
    if ((v15 & (1 << v13)) == 0)
    {
      goto LABEL_18;
    }
  }

  if (v21)
  {
    v22 = v20 == v8;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    goto LABEL_3;
  }

  v23 = (v20 + 32);
  v24 = (v8 + 32);
  while (v21)
  {
    if (*v23 != *v24)
    {
      goto LABEL_6;
    }

    ++v23;
    ++v24;
    if (!--v21)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

char *sub_1B03A4AB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B03A4BAC(char *a1, int64_t a2, char a3)
{
  result = sub_1B03A4AB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B03A4BCC(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_1B03A8208(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x1B27256A0](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x1B27256A0](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v17 = *(v7 + 16);
  if (v13 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v13;
  }

  result = MEMORY[0x1B27256A0](*(v7 + 16));
  if (result <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = result;
  }

  if (v19 < v11)
  {
    if (v13 <= v19)
    {
      v15 = v19;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v20 = sub_1B0BCA150(v7, v15, 0, v13);

    *v3 = v20;
    return result;
  }

  if (!v10 || (v21 = *v3, result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v22 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v23 = *v3;
  v22 = sub_1B0E43578();

  *v3 = v22;
  if (!v22)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v22 + 24) & 0x3FLL) != v13)
  {
    *(v22 + 24) = *(v22 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

char *sub_1B03A4DAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CB0, &unk_1B0ED5D30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B03A4EB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CA8, &qword_1B0EC9BA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1B03A4FB4(char *a1, int64_t a2, char a3)
{
  result = sub_1B03A4EB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t *MailboxName.inbox.unsafeMutableAddressor()
{
  if (qword_1EB6DE998 != -1)
  {
    swift_once();
  }

  return &static MailboxName.inbox;
}

uint64_t _s16IMAP2Persistence17MailboxOfInterestV17LocalModificationO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, int a2, unint64_t a3, int a4)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a3 == 1)
      {
        return 1;
      }
    }

    else if (a1 == 2)
    {
      if (a3 == 2)
      {
        return 1;
      }
    }

    else if (a3 >= 3 && a2 == a4 && (sub_1B04520BC(a1, a3) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!a3)
  {
    return 1;
  }

  return 0;
}

char *sub_1B03A50A4(char *a1, int64_t a2, char a3)
{
  result = sub_1B03A50C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B03A50D8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = v3[1];
  v8 = *(v7 + 16);
  v9 = v7 + 32;
  if (*v3)
  {
    v10 = sub_1B0BA7CA4(a2, a3, v9, v8, (*v3 + 16));
    v12 = v11;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = sub_1B03A912C(a2, a3, v9, v8);
    v12 = 0;
    if (v20)
    {
LABEL_3:
      if ((a1 & 0x100000000) != 0)
      {
      }

      else
      {
        sub_1B03A5284(a2, a3);

        v16 = v3[2];
        v14 = v3 + 2;
        v15 = v16;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v14 = v16;
        if ((result & 1) == 0)
        {
          result = sub_1B03A50A4(0, *(v15 + 16) + 1, 1);
          v15 = *v14;
        }

        v19 = *(v15 + 16);
        v18 = *(v15 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_1B03A50A4((v18 > 1), v19 + 1, 1);
          v15 = *v14;
        }

        *(v15 + 16) = v19 + 1;
        *(v15 + 4 * v19 + 32) = a1;
        *v14 = v15;
      }

      return result;
    }
  }

  v21 = v10;

  if ((a1 & 0x100000000) != 0)
  {
    sub_1B0BCAE88(v21, v12);

    return sub_1B0BCB25C(v21, sub_1B03A91CC);
  }

  else
  {
    v22 = v3[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B03A91CC(v22);
      v22 = result;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v21 < *(v22 + 16))
    {
      *(v22 + 4 * v21 + 32) = a1;
      v3[2] = v22;
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B03A5284(uint64_t a1, int a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_1B03A8208(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_1B03A8208((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    if (MEMORY[0x1B2725670](*(v13 + 16) & 0x3FLL) > v11)
    {
      v14 = *v3;
      result = swift_isUniquelyReferenced_native();
      v15 = *v3;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = *v3;
        v17 = sub_1B0E43578();

        *v3 = v17;
        v15 = v17;
      }

      if (v15)
      {
        v18 = *(v15 + 16);
        v19 = *(*v6 + 16) + ~(*(v15 + 24) >> 6);
        return sub_1B0E43518();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_1B0BCA00C();
}

uint64_t sub_1B03A53FC(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UntaggedResponse(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v76 - v10;
  v12 = type metadata accessor for State.Logger();
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    return result;
  }

  v17 = *(a1 + 24);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = v17 >> 60;
  if ((v17 >> 60) > 8)
  {
    goto LABEL_15;
  }

  if (((1 << v20) & 0x1D6) != 0)
  {
    return result;
  }

  if (v20 != 3)
  {
    if (v20 == 5)
    {
      if (!*(v2 + 48))
      {
        return result;
      }

      v29 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v28 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v30 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v31 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v32 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1B044CD04(v17);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B6DCB0(v30, v29, v28);
      sub_1B0B8FD1C(v32, v31, &v95);

      sub_1B0B6DCF0(v30, v29, v28);

      sub_1B0398EFC(&v95, &qword_1EB6E4568, &qword_1B0EC55C0);
      return sub_1B044CEF8(v17);
    }

LABEL_15:
    v80 = result;
    v84 = v2;
    v33 = *(v17 + 16);
    v34 = *(v17 + 40);
    v35 = *(v17 + 24);
    v36 = *(v17 + 56);
    v37 = *(v17 + 88);
    v38 = *(v17 + 72);
    v39 = *(v17 + 104);
    v40 = *(v17 + 120);
    v41 = *(v17 + 152);
    v42 = *(v17 + 136);
    v43 = *(v17 + 184);
    v104 = *(v17 + 168);
    v105 = v43;
    v101 = v40;
    v102 = v42;
    v103 = v41;
    v97 = v36;
    v98 = v38;
    v99 = v37;
    v100 = v39;
    v95 = v35;
    v96 = v34;
    sub_1B044CD04(v17);
    sub_1B044CD04(v17);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B039F420(&v95, v85);
    sub_1B039F4CC(v33, &v95, v88);
    v44 = v88[0];
    v45 = v88[1];
    v46 = v88[2];
    v82 = v88[4];
    v83 = v88[3];
    v81 = v89 | (v90 << 16);
    sub_1B0B6DD30(a2, v16, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v47 = sub_1B0E43988();
    v48 = sub_1B0E45908();
    if (os_log_type_enabled(v47, v48))
    {
      v78 = v44 >> 56;
      v76 = (v44 & 0x100) == 0;
      v77 = (v44 & 0x1000000) == 0;
      v49 = swift_slowAlloc();
      v79 = v46;
      v50 = v49;
      *v49 = 68159744;
      *(v49 + 4) = 2;
      *(v49 + 8) = 256;
      v51 = *(v80 + 20);
      LODWORD(v80) = v48;
      v52 = v44;
      v53 = v45;
      v54 = v16[v51];
      sub_1B03B88DC(v16);
      *(v50 + 10) = v54;
      v45 = v53;
      v44 = v52;
      *(v50 + 11) = 1024;
      *(v50 + 13) = (v52 & 1) == 0;
      *(v50 + 17) = 1024;
      *(v50 + 19) = v76;
      *(v50 + 23) = 1024;
      *(v50 + 25) = (v52 & 0xFF0000) == 0;
      *(v50 + 29) = 1024;
      *(v50 + 31) = v77;
      *(v50 + 35) = 1024;
      *(v50 + 37) = (v45 & 1) == 0;
      *(v50 + 41) = 1024;
      v55 = v78;
      *(v50 + 43) = v78 == 1;
      *(v50 + 47) = 1024;
      *(v50 + 49) = v55 == 2;
      _os_log_impl(&dword_1B0389000, v47, v80, "[%.*hhx] Server support: move: %{BOOL}d, Gmail labels: %{BOOL}d, cond-store: %{BOOL}d, message-seq-numbers: %{BOOL}d special-use: %{BOOL}d list-status: %{BOOL}d status-mod-seq: %{BOOL}d", v50, 0x35u);
      v56 = v50;
      v46 = v79;
      MEMORY[0x1B272C230](v56, -1, -1);
    }

    else
    {
      sub_1B03B88DC(v16);
    }

    v57 = v84;
    sub_1B044CEF8(v17);

    if (*v57 == 2)
    {
      result = sub_1B044CEF8(v17);
      if (v44 == 2)
      {
        return result;
      }
    }

    else if (v44 == 2)
    {
      result = sub_1B044CEF8(v17);
    }

    else
    {
      v64 = *(v57 + 16);
      v65 = *(v57 + 32);
      v66 = *(v57 + 40) | (*(v57 + 42) << 16);
      v91[0] = *v57;
      v91[1] = v64;
      v92 = v65;
      v93 = v66;
      v94 = BYTE2(v66);
      v85[0] = v44;
      v85[1] = v45;
      v85[2] = v46;
      v85[3] = v83;
      v85[4] = v82;
      v86 = v81;
      v87 = BYTE2(v81);
      v67 = sub_1B0B6D9B8(v91, v85);
      result = sub_1B044CEF8(v17);
      if (v67)
      {
        return result;
      }
    }

    *v57 = v44;
    *(v57 + 8) = v45;
    v68 = v82;
    v69 = v83;
    *(v57 + 16) = v46;
    *(v57 + 24) = v69;
    *(v57 + 32) = v68;
    BYTE2(v68) = BYTE2(v81);
    *(v57 + 40) = v81;
    *(v57 + 42) = BYTE2(v68);
    return result;
  }

  v21 = swift_projectBox();
  result = swift_getEnumCaseMultiPayload();
  if (result == 7)
  {
    sub_1B0B6DD30(v21, v11, type metadata accessor for UntaggedResponse);
    v58 = *v11;
    v59 = *(v11 + 1);
    v60 = *(v11 + 4);
    v61 = v11[20];
    v62 = *(v11 + 3);
    v83 = *(v11 + 4);
    v84 = v62;
    v63 = *(v11 + 5);
    sub_1B044CD04(v17);
    sub_1B044CD04(v17);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    RemoteMailbox.init(attributes:path:)(v58, v59, v60 | (v61 << 32), &v95);
    sub_1B0B6C4B0(&v95);
    sub_1B044CEF8(v17);

    sub_1B039E440(&v95);

    return sub_1B044CEF8(v17);
  }

  if (result == 9)
  {
    sub_1B0B6DD30(v21, v9, type metadata accessor for UntaggedResponse);
    v22 = *v9;
    v23 = *(v9 + 2);
    v24 = *(v9 + 6);
    v99 = *(v9 + 5);
    v100 = v24;
    v25 = *(v9 + 8);
    v101 = *(v9 + 7);
    v102 = v25;
    v26 = *(v9 + 2);
    v95 = *(v9 + 1);
    v96 = v26;
    v27 = *(v9 + 4);
    v97 = *(v9 + 3);
    v98 = v27;
    if (BYTE8(v95) & 1) != 0 || (v97 & 1) != 0 || (BYTE8(v97))
    {

      sub_1B0B11B9C(&v95);
    }

    else
    {
      v70 = v95;
      v71 = HIDWORD(v96);
      v72 = DWORD1(v97);
      sub_1B044CD04(v17);
      sub_1B044CD04(v17);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B11B9C(&v95);
      if (*(v2 + 48))
      {
        v83 = v98;
        v84 = BYTE8(v98);
        v82 = v100;
        v81 = BYTE8(v100);
        v74 = sub_1B0B6C038(v85, v22, v23);
        if (*v73)
        {
          *(v73 + 24) = v70;
          *(v73 + 32) = v71 | (v72 << 32);
          v75 = v84;
          *(v73 + 40) = v83;
          *(v73 + 48) = v75;
          *(v73 + 56) = v82;
          *(v73 + 64) = v81;
        }

        (v74)(v85, 0);
        sub_1B044CEF8(v17);
      }

      else
      {

        sub_1B044CEF8(v17);
      }
    }

    return sub_1B044CEF8(v17);
  }

  return result;
}

uint64_t sub_1B03A5BE4(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t (*a3)(void), void (*a4)(void, void, void, void, void))
{
  v5 = v4;
  v290 = a3;
  v291 = a4;
  v8 = type metadata accessor for Task.Logger(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v275 = (v262 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for StateWithTasks();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v289 = v262 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = type metadata accessor for RunningTask();
  v304 = *(v298 - 8);
  v14 = *(v304 + 64);
  v15 = MEMORY[0x1EEE9AC00](v298);
  v279 = v262 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v293 = v262 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v311 = v262 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v292 = v262 - v21;
  v266 = type metadata accessor for State.Logger();
  v22 = *(*(v266 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v266);
  v294 = v262 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v265 = v262 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v267 = v262 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v269 = v262 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = v262 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = v262 - v34;
  v36 = type metadata accessor for Command();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = v262 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v5 + 72);
  v276 = a1;
  v277 = a2;
  if (v40 == 2)
  {
    v310 = v11;
    swift_storeEnumTagMultiPayload();
    v41 = sub_1B03A8228(MEMORY[0x1E69E7CC0]);
    sub_1B03A0A2C(v39, v41, v42, v5, a1, a2);
    v288 = 0;
    sub_1B0390574(v39, type metadata accessor for Command);

    v11 = v310;
    sub_1B0390720(v5 + *(v310 + 28), v35, type metadata accessor for State.Logger);
    sub_1B0390720(v35, v33, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v43 = sub_1B0E43988();
    v44 = sub_1B0E458D8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 68157952;
      *(v45 + 4) = 2;
      *(v45 + 8) = 256;
      v46 = v33[*(v266 + 20)];
      sub_1B0390574(v33, type metadata accessor for State.Logger);
      *(v45 + 10) = v46;
      _os_log_impl(&dword_1B0389000, v43, v44, "[%.*hhx] Creating initial connection to get capabilities.", v45, 0xBu);
      MEMORY[0x1B272C230](v45, -1, -1);
    }

    else
    {
      sub_1B0390574(v33, type metadata accessor for State.Logger);
    }

    sub_1B0390574(v35, type metadata accessor for State.Logger);
  }

  else
  {
    v288 = 0;
  }

  v47 = *(v5 + 280);
  v331 = sub_1B03AC0B0(*(v5 + 264), *(v5 + 272));
  v48 = *(v11 + 28);
  v49 = *(v11 + 32);
  *&v50 = 68157952;
  v263 = v50;
  *(&v50 + 1) = 2;
  v270 = xmmword_1B0EC1E70;
  *&v50 = 68158723;
  v264 = v50;
  v305 = v5;
  v295 = v48;
  v278 = v49;
LABEL_9:
  v51 = sub_1B0398D1C();
  v54 = sub_1B0BC9560(v51, v53, v52 & 1);
  v56 = v55;
  v58 = v57;
  v59 = *(v5 + v49);
  v60 = *(v5 + 200);
  v346[1] = *(v5 + 184);
  v346[2] = v60;
  v347[0] = *(v5 + 216);
  *(v347 + 12) = *(v5 + 228);
  v346[0] = *(v5 + 168);
  sub_1B03A3668(v346, &v319);
  sub_1B0BCC328(v54, v56, v58, v5 + v48, v59, v346);
  sub_1B03AD10C(v346);
  v268 = *(v56 + 16);
  v296 = v56;
  v297 = v54;
  v282 = v58;
  sub_1B03AD160(v54, v56, v58, v5 + v48);
  v280 = 0;
LABEL_13:
  memcpy(v345, v5, sizeof(v345));
  v66 = *(v5 + 272);
  v67 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v68 = sub_1B03ADA68(v67);
  v70 = v69;
  v72 = v71;

  v73 = *(v5 + 264);
  v74 = *(v5 + 280);
  swift_bridgeObjectRetain_n();
  sub_1B03AE4B8(v68, v70, v72, v297, v296, v282, v345, v315, v66);

  sub_1B03B5C80(v315, &v329, &qword_1EB6E4CF0, &qword_1B0EC9BD0);
  if (BYTE8(v330[1]) == 255)
  {
    sub_1B0398EFC(&v329, &qword_1EB6E4CF0, &qword_1B0EC9BD0);
    v81 = v311;
    v76 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v319 = v329;
    v320[0] = v330[0];
    *(v320 + 9) = *(v330 + 9);
    sub_1B0B7ABE4(&v319, &v329);
    v75 = v292;
    sub_1B0B75280(&v329, v73, v292);
    sub_1B0BAF6BC(v75 + *(v298 + 28));
    sub_1B0B7D174(v75);
    sub_1B0390574(v75, type metadata accessor for RunningTask);
    sub_1B0B7ABE4(&v319, &v329);
    v76 = MEMORY[0x1E69E7CD0];
    if (BYTE8(v330[1]))
    {
      sub_1B0450C74(&v329, v312);
      v77 = v313;
      v78 = v314;
      __swift_project_boxed_opaque_existential_0(v312, v313);
      (*(v78 + 32))(&v332, v77, v78);
      v79 = v333;
      LODWORD(v78) = v334;
      v339 = v332;
      sub_1B039E440(&v339);
      __swift_destroy_boxed_opaque_existential_0Tm(v312);
      sub_1B03AB2E0(&v329, v79, v78);

      v80 = &v319;
    }

    else
    {
      sub_1B0B7AC40(&v319);
      v80 = &v329;
    }

    sub_1B0B7AC40(v80);
    v280 = 1;
    v81 = v311;
  }

  v299 = sub_1B03C8E00(MEMORY[0x1E69E7CC0]);
  v82 = (v318 + 56);
  v83 = 1 << *(v318 + 32);
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  else
  {
    v84 = -1;
  }

  v85 = v84 & *(v318 + 56);
  v86 = v345[21];
  v302 = v345[23];
  v303 = v345[22];
  LODWORD(v306) = LOBYTE(v345[24]);
  v87 = (v83 + 63) >> 6;
  v309 = v318;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v88 = 0;
  v307 = v87;
  v308 = v82;
  while (2)
  {
    v300 = v86 + 32;
    v301 = v86;
    if (v85)
    {
      goto LABEL_29;
    }

    do
    {
LABEL_25:
      v89 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        __break(1u);
        goto LABEL_171;
      }

      if (v89 >= v87)
      {

        v61 = v299;
        if (v299[2])
        {
          v62 = swift_allocObject();
          *(v62 + 16) = v61;
          (v290)(v62 | 0x9000000000000004);
        }

        else
        {
        }

        v64 = v294;
        v63 = v295;
        sub_1B03B5C80(v315, &v319, &qword_1EB6E4CF0, &qword_1B0EC9BD0);
        sub_1B03C8F58(v315);
        v65 = BYTE8(v320[1]);
        sub_1B0398EFC(&v319, &qword_1EB6E4CF0, &qword_1B0EC9BD0);
        if (v65 != 255)
        {
          goto LABEL_13;
        }

        v166 = v297;

        v167 = v296;

        v168 = static MonotonicTime.now()();
        v169 = *(v5 + 272);
        v170 = sub_1B03C8FC0(v168, v169, sub_1B0452308, 0, v166, v167);

        v274 = *(v170 + 16);
        if (v274)
        {
          v171 = 0;
          v262[1] = v170;
          v273 = v170 + 32;
          v272 = *(v5 + 264);
          v172 = v293;
          while (1)
          {
            v173 = *(v273 + 8 * v171);
            if ((v173 & 0x8000000000000000) != 0)
            {
              goto LABEL_174;
            }

            if (v173 >= v169[2])
            {
              goto LABEL_175;
            }

            v174 = (*(v304 + 80) + 32) & ~*(v304 + 80);
            v308 = v169;
            v175 = v169 + v174;
            v310 = *(v304 + 72) * v173;
            sub_1B0390720(v169 + v174 + v310, v172, type metadata accessor for RunningTask);
            v176 = v172 + *(v298 + 36);
            v177 = *v176;
            LODWORD(v303) = *(v176 + 8);
            *v176 = 0;
            v306 = v176;
            *(v176 + 8) = 1;
            v178 = sub_1B0398D1C();
            v301 = v179;
            v302 = v178;
            LODWORD(v300) = v180;
            v181 = v289;
            sub_1B0390720(v5, v289, type metadata accessor for StateWithTasks);
            memcpy(v344, v181, sizeof(v344));
            v182 = v344[26];
            v183 = v344[15];
            v307 = v171;
            v309 = v173;
            v283 = v174;
            v284 = v175;
            v281 = v177;
            v299 = v344[22];
            v286 = v344[21];
            v287 = v344[23];
            LODWORD(v285) = LOBYTE(v344[24]);
            if ((v344[24] & 1) == 0)
            {
              goto LABEL_121;
            }

            if (!v344[15] || !*(v344[15] + 16))
            {
              v207 = *(v344[21] + 16);
              if (v207)
              {
                v208 = (v344[21] + 32);
                do
                {
                  v209 = *v208;
                  v210 = v208[2];
                  v320[0] = v208[1];
                  v320[1] = v210;
                  v319 = v209;
                  v211 = v208[3];
                  v212 = v208[4];
                  v213 = v208[6];
                  v323 = v208[5];
                  v324 = v213;
                  v321 = v211;
                  v322 = v212;
                  v214 = v208[7];
                  v215 = v208[8];
                  v216 = v208[10];
                  v327 = v208[9];
                  v328 = v216;
                  v325 = v214;
                  v326 = v215;
                  v217 = DWORD2(v320[0]);
                  sub_1B03A35B8(&v319, v315);
                  v218 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  LOBYTE(v217) = MailboxName.isInbox.getter(v218, v217);

                  sub_1B03A3614(&v319);
                  if (v217)
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CB0, &unk_1B0ED5D30);
                    v219 = swift_allocObject();
                    *(v219 + 16) = v270;
                    v220 = MailboxName.inbox.unsafeMutableAddressor();
                    v221 = *(v220 + 2);
                    *(v219 + 32) = *v220;
                    *(v219 + 40) = v221;
                    v184 = sub_1B03A48FC(v219);
                    swift_setDeallocating();
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    sub_1B039E440((v219 + 32));
                    swift_deallocClassInstance();
                    goto LABEL_125;
                  }

                  v208 += 11;
                  --v207;
                }

                while (v207);
              }

LABEL_121:
              v184 = MEMORY[0x1E69E7CD0];
              goto LABEL_125;
            }

            v271 = v344[26];
            v184 = MEMORY[0x1E69E7CD0];
            *&v329 = MEMORY[0x1E69E7CD0];
            v185 = *(v344[21] + 16);
            if (!v185)
            {
              goto LABEL_123;
            }

            v186 = (v344[21] + 32);
            do
            {
              v187 = *v186;
              v188 = v186[2];
              v320[0] = v186[1];
              v320[1] = v188;
              v319 = v187;
              v189 = v186[3];
              v190 = v186[4];
              v191 = v186[6];
              v323 = v186[5];
              v324 = v191;
              v321 = v189;
              v322 = v190;
              v192 = v186[7];
              v193 = v186[8];
              v194 = v186[10];
              v327 = v186[9];
              v328 = v194;
              v325 = v192;
              v326 = v193;
              v195 = *&v320[0];
              v196 = DWORD2(v320[0]);
              v197 = v323;
              v198 = *(&v322 + 1);
              sub_1B03A35B8(&v319, v315);
              if ((static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v198, v197, 0, 0) & 1) == 0)
              {
                sub_1B03A3614(&v319);
                goto LABEL_104;
              }

              v199 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              if (MailboxName.isInbox.getter(v199, v196))
              {
LABEL_107:
                sub_1B03AB2E0(v315, v195, v196);
                sub_1B03A3614(&v319);

                goto LABEL_104;
              }

              if (*(v183 + 16))
              {
                v200 = sub_1B03AB888(v195, v196);
                if (v201)
                {
                  v202 = *(v183 + 56) + 72 * v200;
                  v203 = *v202;
                  v204 = *(v202 + 14);
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  v205 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
                  v206 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();

                  if (v205)
                  {
                    if ((v206 & ~v205) == 0)
                    {
LABEL_115:
                      if ((v205 & v204) == 0)
                      {
                        goto LABEL_107;
                      }

                      goto LABEL_116;
                    }
                  }

                  else if (!v206)
                  {
                    goto LABEL_107;
                  }

                  v205 |= v206;
                  goto LABEL_115;
                }
              }

LABEL_116:

              sub_1B03A3614(&v319);
LABEL_104:
              v186 += 11;
              --v185;
            }

            while (v185);
            v184 = v329;
LABEL_123:
            v182 = v271;
LABEL_125:
            v222 = LOBYTE(v344[3]);
            v223 = BYTE1(v344[3]);
            v224 = v344[4];
            v225 = v344[7];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v226 = sub_1B0397D14();
            v227 = v226;
            if (v224 == 3 || v224 == 2)
            {

              v228 = 1;
              goto LABEL_128;
            }

            v247 = sub_1B0BAE1A4(v226);
            if (v223)
            {
              goto LABEL_154;
            }

            if (v224 == 1)
            {
              if (v222)
              {
                v228 = v222 == 1;
                goto LABEL_155;
              }

LABEL_154:
              v228 = v247 ^ 1;
              goto LABEL_155;
            }

            if (v224 || (v222 - 1) >= 2)
            {
              goto LABEL_154;
            }

            v228 = 0;
LABEL_155:
            sub_1B0397E04(&unk_1F2710548, v225);
            sub_1B0BAE1A4(v227);
            v253 = sub_1B039109C(v225);

            if (v253 & 1) == 0 && (v223)
            {
              sub_1B0BAE1A4(v227);
            }

LABEL_128:

            sub_1B03A8380(v286, v299, v287, v285 & 1, v183, v184, v228 & 1, v182);
            v230 = v229;
            v232 = v231;

            v233 = v289;
            rawValue = sub_1B03AC81C(v230, v232).elements._rawValue;

            v235 = *(v233 + 280);
            v236 = sub_1B03C8B98(*(v233 + 264), *(v233 + 272));
            sub_1B0390574(v233, type metadata accessor for StateWithTasks);
            *&v319 = v297;
            *(&v319 + 1) = v296;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5198, "$]\t");
            sub_1B039E3F8(&qword_1EB6DC958, &qword_1EB6E5198, "$]\t");
            v237 = MailboxesSelectionUsage.removing<A>(notContainedIn:)(&v319, rawValue);

            v238 = *(v298 + 28);
            v239 = v293;
            v240 = v275;
            sub_1B0390720(v293 + v238, v275, type metadata accessor for Task.Logger);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0452640(v236);
            *(&v261 + 1) = v301;
            *&v261 = v302;
            v5 = v305;
            v241 = v288;
            sub_1B0452650(v240, v305, v290, v291, v239, v305, v276, v277, v261, v300 & 1, v237, v236);
            if (!v241)
            {
              sub_1B0390574(v240, type metadata accessor for Task.Logger);

              sub_1B03C81E4(v236);
              v242 = v279;
              v243 = v239;
LABEL_140:
              v49 = v278;
              v248 = v309;
              goto LABEL_142;
            }

            sub_1B0390574(v240, type metadata accessor for Task.Logger);
            sub_1B0450DB0(v239, &v319);
            v242 = v279;
            v243 = v239;
            if (!BYTE13(v320[1]))
            {

              sub_1B0B7ABB4(v239);
              *v239 = 1;
              *(v239 + 8) = 0u;
              *(v239 + 24) = 0u;
              *(v239 + 37) = 0;
              *(v239 + 45) = 2;
              sub_1B0B7ABB4(&v319);
LABEL_139:

              sub_1B03C81E4(v236);
              goto LABEL_140;
            }

            if (BYTE13(v320[1]) == 1)
            {
              sub_1B0450C74(&v319, v315);
              v244 = v316;
              v245 = v317;
              __swift_project_boxed_opaque_existential_0(v315, v316);
              v246 = v244;
              v242 = v279;
              (*(v245 + 136))(v5, v293 + v238, v246, v245);
              v243 = v293;

              sub_1B0B7ABB4(v243);
              *v243 = 1;
              *(v243 + 8) = 0u;
              *(v243 + 24) = 0u;
              *(v243 + 37) = 0;
              *(v243 + 45) = 2;
              __swift_destroy_boxed_opaque_existential_0Tm(v315);
              goto LABEL_139;
            }

            v49 = v278;
            v248 = v309;

            sub_1B03C81E4(v236);
LABEL_142:

            sub_1B03C81E4(v236);
            v249 = v306;
            if (((*(v306 + 8) | v303) & 1) == 0)
            {
              v250 = *v306;
              if (v281 < *v306)
              {
                v250 = v281;
              }

              *v306 = v250;
              *(v249 + 8) = 0;
            }

            sub_1B0390720(v243, v242, type metadata accessor for RunningTask);
            v251 = v307;
            v169 = v308;
            if (v248 >= v308[2])
            {
              goto LABEL_176;
            }

            v288 = 0;
            v252 = v292;
            sub_1B0390720(&v284[v310], v292, type metadata accessor for RunningTask);
            sub_1B0454F70(v272, v252);
            sub_1B0390574(v252, type metadata accessor for RunningTask);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v169 = sub_1B0B8CA2C(v169);
            }

            v172 = v293;
            v63 = v295;
            sub_1B0390574(v293, type metadata accessor for RunningTask);
            if (v248 >= v169[2])
            {
              goto LABEL_177;
            }

            v171 = v251 + 1;
            sub_1B0450CE0(v242, v169 + v283 + v310, type metadata accessor for RunningTask);
            *(v5 + 272) = v169;
            v64 = v294;
            if (v171 == v274)
            {

              goto LABEL_159;
            }
          }
        }

        v49 = v278;
LABEL_159:
        if (sub_1B03C9BC0())
        {
          if (v280)
          {
          }

          else
          {
            if (*(*(v5 + 272) + 16) || !*(*(v5 + 248) + 16))
            {
              goto LABEL_172;
            }

            v254 = v265;
            sub_1B0390720(v5 + v295, v265, type metadata accessor for State.Logger);
            sub_1B0390720(v254, v64, type metadata accessor for State.Logger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v255 = sub_1B0E43988();
            v256 = sub_1B0E458D8();
            if (os_log_type_enabled(v255, v256))
            {
              v257 = swift_slowAlloc();
              *v257 = v263;
              *(v257 + 4) = 2;
              *(v257 + 8) = 256;
              v258 = *(v294 + *(v266 + 20));
              sub_1B0390574(v294, type metadata accessor for State.Logger);
              *(v257 + 10) = v258;
              _os_log_impl(&dword_1B0389000, v255, v256, "[%.*hhx] Re-starting blocked non-mailbox tasks.", v257, 0xBu);
              MEMORY[0x1B272C230](v257, -1, -1);
            }

            else
            {
              sub_1B0390574(v64, type metadata accessor for State.Logger);
            }

            sub_1B0390574(v265, type metadata accessor for State.Logger);

            *(v5 + 248) = MEMORY[0x1E69E7CC0];
          }

          v48 = v295;
        }

        else
        {

          v48 = v63;
        }

        goto LABEL_9;
      }

      v85 = v82[v89];
      ++v88;
    }

    while (!v85);
    v88 = v89;
    while (1)
    {
LABEL_29:
      v90 = *(v309 + 48) + ((v88 << 10) | (16 * __clz(__rbit64(v85))));
      v91 = *v90;
      v310 = *(v90 + 8);
      v92 = *(v5 + 272);
      v312[0] = v76;
      v93 = v76;
      v94 = *(v92 + 16);
      if (v94)
      {
        v95 = v304;
        v96 = v92 + ((*(v304 + 80) + 32) & ~*(v304 + 80));
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v97 = *(v95 + 72);
        do
        {
          sub_1B0390720(v96, v81, type metadata accessor for RunningTask);
          sub_1B0450DB0(v81, &v319);
          if (BYTE13(v320[1]))
          {
            if (BYTE13(v320[1]) == 1)
            {
              sub_1B0450C74(&v319, &v329);
              v98 = *(&v330[0] + 1);
              v99 = *&v330[1];
              __swift_project_boxed_opaque_existential_0(&v329, *(&v330[0] + 1));
              (*(v99 + 32))(&v335, v98, v99);
              v100 = v336;
              LODWORD(v98) = v337;
              v338 = v335;
              sub_1B039E440(&v338);
              __swift_destroy_boxed_opaque_existential_0Tm(&v329);
              v101 = v100;
              v81 = v311;
              sub_1B03AB2E0(&v319, v101, v98);
            }

            sub_1B0390574(v81, type metadata accessor for RunningTask);
          }

          else
          {
            sub_1B0390574(v81, type metadata accessor for RunningTask);
            sub_1B0B7ABB4(&v319);
          }

          v96 += v97;
          --v94;
        }

        while (v94);
        v102 = v312[0];
        v5 = v305;
        v76 = MEMORY[0x1E69E7CD0];
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v102 = v93;
        v76 = v93;
      }

      v85 &= v85 - 1;
      if (*(v102 + 16))
      {
        v103 = *(v102 + 40);
        sub_1B0E46C28();
        v104 = v310 | (v310 << 32);
        MEMORY[0x1B2728D70](v104);
        v105 = sub_1B0E46CB8();
        v106 = -1 << *(v102 + 32);
        v107 = v105 & ~v106;
        if ((*(v102 + 56 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107))
        {
          v108 = ~v106;
          do
          {
            v109 = *(v102 + 48) + 16 * v107;
            if ((*(v109 + 8) | (*(v109 + 8) << 32)) == v104)
            {
              v110 = *v109;
              v111 = *(v110 + 16);
              if (v111 == *(v91 + 16))
              {
                if (!v111 || v110 == v91)
                {
LABEL_50:

                  goto LABEL_67;
                }

                v112 = 32;
                while (*(v110 + v112) == *(v91 + v112))
                {
                  ++v112;
                  if (!--v111)
                  {
                    goto LABEL_50;
                  }
                }
              }
            }

            v107 = (v107 + 1) & v108;
          }

          while (((*(v102 + 56 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) != 0);
        }
      }

      if (v306)
      {
        v113 = v301;
        v114 = *(v301 + 16);
        if (v114)
        {
          break;
        }
      }

LABEL_66:

      v81 = v311;
LABEL_67:
      v87 = v307;
      v82 = v308;
      if (!v85)
      {
        goto LABEL_25;
      }
    }

    v115 = 0;
    while (1)
    {
      v116 = v300 + 176 * v115;
      if ((*(v116 + 24) | (*(v116 + 24) << 32)) == (v310 | (v310 << 32)))
      {
        v117 = *(v116 + 16);
        v118 = *(v117 + 16);
        if (v118 == *(v91 + 16))
        {
          break;
        }
      }

LABEL_54:
      if (++v115 == v114)
      {
        goto LABEL_66;
      }
    }

    if (v118)
    {
      v119 = v117 == v91;
    }

    else
    {
      v119 = 1;
    }

    if (v119)
    {
LABEL_69:
      sub_1B03B9A2C(v301, v303, v302, 1);
      v122 = v113;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v122 = sub_1B03D0E54(v113);
      }

      if (v115 >= *(v122 + 2))
      {
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }

      v123 = &v122[176 * v115];
      if (*(*(v123 + 21) + 16))
      {
        *(v123 + 21) = v76;

        v124 = *(v123 + 4);
        v300 = *(v123 + 5);
        LODWORD(v286) = *(v123 + 34);
        v125 = v123[140];
        *(v5 + 176) = 0;
        *(v5 + 184) = 0;
        *(v5 + 168) = v122;
        *(v5 + 192) = 1;
        v306 = v124;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03BB638(v113, v303, v302, 1);
        v126 = *(v5 + 200);
        v341 = *(v5 + 184);
        v342 = v126;
        v343[0] = *(v5 + 216);
        *(v343 + 12) = *(v5 + 228);
        v340 = *(v5 + 168);
        v127 = sub_1B0B2639C(v91, v310, &v340);
        LODWORD(v302) = v128;
        LODWORD(v301) = v128 & 0x100;
        if ((v128 & 0x100) != 0)
        {
          v129 = 0;
        }

        else
        {
          v129 = v127;
        }

        v303 = v129;
        v130 = v269;
        sub_1B0390720(v5 + v295, v269, type metadata accessor for State.Logger);
        v131 = v267;
        sub_1B0390720(v130, v267, type metadata accessor for State.Logger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v132 = sub_1B0E43988();
        v133 = sub_1B0E45908();

        v134 = os_log_type_enabled(v132, v133);
        LODWORD(v287) = v125;
        if (v134)
        {
          v135 = swift_slowAlloc();
          v285 = swift_slowAlloc();
          *&v329 = v285;
          *v135 = v264;
          *(v135 + 4) = 2;
          *(v135 + 8) = 256;
          v136 = v131;
          v137 = *(v131 + *(v266 + 20));
          sub_1B0390574(v136, type metadata accessor for State.Logger);
          *(v135 + 10) = v137;
          *(v135 + 11) = 2160;
          *(v135 + 13) = 0x786F626C69616DLL;
          *(v135 + 21) = 2085;
          *&v319 = v91;
          DWORD2(v319) = v310;
          v138 = sub_1B0E44BA8();
          v140 = sub_1B0399D64(v138, v139, &v329);

          *(v135 + 23) = v140;
          *(v135 + 31) = 2082;
          if (v287)
          {
            v141 = 0xE300000000000000;
            v142 = 7104878;
          }

          else
          {
            LODWORD(v319) = v286;
            v142 = sub_1B0E44B88();
            v141 = v143;
          }

          v144 = sub_1B0399D64(v142, v141, &v329);

          *(v135 + 33) = v144;
          _os_log_impl(&dword_1B0389000, v132, v133, "[%.*hhx] No new and no running tasks for '%{sensitive,mask.mailbox}s' with change ID %{public}s. Marking as done.", v135, 0x29u);
          v145 = v285;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v145, -1, -1);
          MEMORY[0x1B272C230](v135, -1, -1);
        }

        else
        {
          sub_1B0390574(v131, type metadata accessor for State.Logger);
        }

        v146 = v299;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v319 = v146;
        v148 = sub_1B03B8A9C(v306, v300);
        v150 = v146[2];
        v151 = (v149 & 1) == 0;
        v152 = __OFADD__(v150, v151);
        v153 = v150 + v151;
        v87 = v307;
        v82 = v308;
        if (v152)
        {
          goto LABEL_178;
        }

        v154 = v149;
        if (v146[3] >= v153)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v165 = v148;
            sub_1B0B8D4FC();
            v148 = v165;
          }
        }

        else
        {
          sub_1B0B2F9F0(v153, isUniquelyReferenced_nonNull_native);
          v148 = sub_1B03B8A9C(v306, v300);
          if ((v154 & 1) != (v155 & 1))
          {
            goto LABEL_180;
          }
        }

        v156 = v302 | (v301 >> 8);
        if (v154)
        {
          v157 = v148;

          v299 = v319;
          v158 = *(v319 + 56) + 24 * v157;
          *v158 = v286;
          *(v158 + 4) = v287;
          *(v158 + 8) = v303;
          *(v158 + 16) = v156 & 1;
          sub_1B0390574(v269, type metadata accessor for State.Logger);
        }

        else
        {
          v159 = v319;
          *(v319 + 8 * (v148 >> 6) + 64) |= 1 << v148;
          v160 = (v159[6] + 16 * v148);
          v161 = v300;
          *v160 = v306;
          v160[1] = v161;
          v162 = v159[7] + 24 * v148;
          *v162 = v286;
          *(v162 + 4) = v287;
          *(v162 + 8) = v303;
          *(v162 + 16) = v156 & 1;
          sub_1B0390574(v269, type metadata accessor for State.Logger);
          v163 = v159[2];
          v152 = __OFADD__(v163, 1);
          v164 = v163 + 1;
          if (v152)
          {
            goto LABEL_179;
          }

          v299 = v159;
          v159[2] = v164;
        }

        v81 = v311;
        v86 = v340;
        v302 = v341;
        v303 = *(&v340 + 1);
        v280 = 1;
        LODWORD(v306) = BYTE8(v341);
      }

      else
      {
        sub_1B03BB638(v113, v303, v302, 1);

        v302 = 0;
        v303 = 0;
        *(v5 + 176) = 0;
        *(v5 + 184) = 0;
        *(v5 + 168) = v122;
        v86 = v122;
        *(v5 + 192) = 1;
        v81 = v311;
        v87 = v307;
        v82 = v308;
      }

      continue;
    }

    break;
  }

  v120 = (v117 + 32);
  v121 = (v91 + 32);
  while (v118)
  {
    if (*v120 != *v121)
    {
      goto LABEL_54;
    }

    ++v120;
    ++v121;
    if (!--v118)
    {
      goto LABEL_69;
    }
  }

LABEL_171:
  __break(1u);
LABEL_172:

  v259 = v268 != 0;
  sub_1B03CA2AC(v331, v5 + v295, v5, v5);

  return v259;
}

uint64_t type metadata accessor for Command()
{
  result = qword_1EB6DD1C8;
  if (!qword_1EB6DD1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

{
  result = qword_1EB6DE108;
  if (!qword_1EB6DE108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B03A7A88()
{
  result = MEMORY[0x1E69E7CD0];
  if (*(v0 + 192))
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 120);
    if (v3 && *(v3 + 16))
    {
      v43 = MEMORY[0x1E69E7CD0];
      v4 = *(v2 + 16);
      if (!v4)
      {
        return result;
      }

      for (i = (v2 + 32); ; i += 11)
      {
        v6 = *i;
        v7 = i[2];
        v46 = i[1];
        v47 = v7;
        v45 = v6;
        v8 = i[3];
        v9 = i[4];
        v10 = i[6];
        v50 = i[5];
        v51 = v10;
        v48 = v8;
        v49 = v9;
        v11 = i[7];
        v12 = i[8];
        v13 = i[10];
        v54 = i[9];
        v55 = v13;
        v52 = v11;
        v53 = v12;
        v14 = v46;
        v15 = DWORD2(v46);
        v16 = v50;
        v17 = *(&v49 + 1);
        sub_1B03A35B8(&v45, v44);
        if ((static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v17, v16, 0, 0) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (MailboxName.isInbox.getter(v18, v15))
        {
          goto LABEL_11;
        }

        if (*(v3 + 16))
        {
          v19 = sub_1B03AB888(v14, v15);
          if (v20)
          {
            v21 = *(v3 + 56) + 72 * v19;
            v22 = *v21;
            v23 = *(v21 + 14);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v24 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
            v25 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();

            if (!v24)
            {
              if (!v25)
              {
                goto LABEL_11;
              }

LABEL_19:
              if (((v25 | v24) & v23) == 0)
              {
LABEL_11:
                sub_1B03AB2E0(v44, v14, v15);
                sub_1B03A3614(&v45);

                goto LABEL_8;
              }

              goto LABEL_6;
            }

            if ((v25 & ~v24) != 0)
            {
              goto LABEL_19;
            }

            if ((v24 & v23) == 0)
            {
              goto LABEL_11;
            }
          }
        }

LABEL_6:

LABEL_7:
        sub_1B03A3614(&v45);
LABEL_8:
        if (!--v4)
        {
          return v43;
        }
      }
    }

    v26 = *(v2 + 16);
    if (!v26)
    {
      return result;
    }

    v27 = (v2 + 32);
    v28 = MEMORY[0x1E69E7CD0];
    while (1)
    {
      v29 = *v27;
      v30 = v27[2];
      v46 = v27[1];
      v47 = v30;
      v45 = v29;
      v31 = v27[3];
      v32 = v27[4];
      v33 = v27[6];
      v50 = v27[5];
      v51 = v33;
      v48 = v31;
      v49 = v32;
      v34 = v27[7];
      v35 = v27[8];
      v36 = v27[10];
      v54 = v27[9];
      v55 = v36;
      v52 = v34;
      v53 = v35;
      v37 = DWORD2(v46);
      sub_1B03A35B8(&v45, v44);
      v38 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      LOBYTE(v37) = MailboxName.isInbox.getter(v38, v37);

      sub_1B03A3614(&v45);
      if (v37)
      {
        break;
      }

      v27 += 11;
      if (!--v26)
      {
        return v28;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CB0, &unk_1B0ED5D30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B0EC1E70;
    v40 = MailboxName.inbox.unsafeMutableAddressor();
    v41 = *(v40 + 2);
    *(inited + 32) = *v40;
    *(inited + 40) = v41;
    v42 = sub_1B03A48FC(inited);
    swift_setDeallocating();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B039E440((inited + 32));
    return v42;
  }

  return result;
}

uint64_t MailboxName.isInbox.getter(uint64_t a1, unsigned int a2)
{
  v2 = a2 | (a2 << 32);
  if (qword_1EB6DE9B8 != -1)
  {
    v20 = a1;
    swift_once();
    a1 = v20;
  }

  if (v2 != qword_1EB6DE9C0 || *(a1 + 16) != 5)
  {
    return 0;
  }

  v24 = MEMORY[0x1E69E7CC0];
  v3 = a1;
  sub_1B03A4BAC(0, 5, 0);
  v4 = v24;
  v5 = v3[32];
  v7 = *(v24 + 16);
  v6 = *(v24 + 24);
  v8 = v6 >> 1;
  v9 = v7 + 1;
  if (v6 >> 1 <= v7)
  {
    sub_1B03A4BAC((v6 > 1), v7 + 1, 1);
    v10 = v3;
    v4 = v24;
    v6 = *(v24 + 24);
    v8 = v6 >> 1;
  }

  else
  {
    v10 = v3;
  }

  *(v4 + 16) = v9;
  *(v4 + v7 + 32) = v5 & 0xDF;
  v11 = v10[33];
  v25 = v4;
  v12 = v7 + 2;
  if (v8 <= v9)
  {
    v21 = v10[33];
    sub_1B03A4BAC((v6 > 1), v7 + 2, 1);
    v11 = v21;
    v10 = v3;
    v4 = v25;
    v6 = *(v25 + 24);
    v8 = v6 >> 1;
  }

  *(v4 + 16) = v12;
  *(v4 + v9 + 32) = v11 & 0xDF;
  v13 = v10[34];
  v26 = v4;
  v14 = v7 + 3;
  if (v8 <= v12)
  {
    v22 = v10[34];
    sub_1B03A4BAC((v6 > 1), v7 + 3, 1);
    v13 = v22;
    v10 = v3;
    v4 = v26;
    v6 = *(v26 + 24);
    v8 = v6 >> 1;
  }

  *(v4 + 16) = v14;
  *(v4 + v12 + 32) = v13 & 0xDF;
  v15 = v10[35];
  v27 = v4;
  v16 = v7 + 4;
  if (v8 <= v14)
  {
    v23 = v10[35];
    sub_1B03A4BAC((v6 > 1), v7 + 4, 1);
    v15 = v23;
    v10 = v3;
    v4 = v27;
    v6 = *(v27 + 24);
    v8 = v6 >> 1;
  }

  *(v4 + 16) = v16;
  *(v4 + v14 + 32) = v15 & 0xDF;
  v17 = v10[36];
  if (v8 <= v16)
  {
    sub_1B03A4BAC((v6 > 1), v7 + 5, 1);
  }

  *(v4 + 16) = v7 + 5;
  *(v4 + v16 + 32) = v17 & 0xDF;
  v18 = sub_1B03A7FD8(0x584F424E49uLL, 0xE500000000000000, v4);

  return v18 & 1;
}

unint64_t sub_1B03A7FD8(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v30 = a3 + 32;
  v32 = v7;
  v8 = 4 * v7;
  v9 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v27 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v28 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  v29 = 4 << v9;
  while (1)
  {
    if (v5 == v6)
    {
      v12 = 0;
      v13 = v6;
      goto LABEL_11;
    }

    if (v5 >= v6)
    {
      break;
    }

    v13 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_35;
    }

    v12 = *(v30 + v5);
LABEL_11:
    v14 = result >> 14;
    v15 = result >> 14 == v8;
    if (result >> 14 == v8)
    {
      v16 = 0;
      if (v5 == v6)
      {
        return v15;
      }

      goto LABEL_30;
    }

    v17 = result & 0xC;
    v18 = result;
    if (v17 == v10)
    {
      v22 = result;
      v23 = sub_1B0A6D6C4(result, a1, a2);
      v10 = v29;
      v4 = a1;
      v18 = v23;
      result = v22;
    }

    v19 = v18 >> 16;
    if (v18 >> 16 >= v32)
    {
      goto LABEL_34;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v26 = result;
      v24 = sub_1B0E44E08();
      v10 = v29;
      v4 = a1;
      v16 = v24;
      result = v26;
      if (v17 == v29)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v33[0] = v4;
        v33[1] = v28;
        v20 = v33;
      }

      else
      {
        v20 = v27;
        if ((v4 & 0x1000000000000000) == 0)
        {
          v25 = result;
          v21 = sub_1B0E46368();
          v10 = v29;
          v4 = a1;
          v20 = v21;
          result = v25;
        }
      }

      v16 = *(v20 + v19);
      if (v17 == v10)
      {
LABEL_27:
        result = sub_1B0A6D6C4(result, a1, a2);
        v10 = v29;
        v4 = a1;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_24:
          result = (result & 0xFFFFFFFFFFFF0000) + 65540;
          if (v5 == v6)
          {
            return v15;
          }

          goto LABEL_30;
        }

        goto LABEL_28;
      }
    }

    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_28:
    if (v32 <= result >> 16)
    {
      goto LABEL_36;
    }

    result = sub_1B0E44DD8();
    v10 = v29;
    v4 = a1;
    if (v5 == v6)
    {
      return v15;
    }

LABEL_30:
    v15 = 0;
    if (v14 != v8)
    {
      v5 = v13;
      if (v12 == v16)
      {
        continue;
      }
    }

    return v15;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

char *sub_1B03A8208(char *a1, int64_t a2, char a3)
{
  result = sub_1B03A4DAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B03A8228(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1B03A4BCC(v3, 0);
  sub_1B03A4FB4(0, v3, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = (a1 + 44);
  while (1)
  {
    v5 = *v4;
    v6 = *(v4 - 1);
    result = sub_1B03A912C(*(v4 - 6), v6, v12 + 32, *(v12 + 16));
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03A5284(v9, v6);
    v11 = *(v2 + 16);
    v10 = *(v2 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1B03A4FB4((v10 > 1), v11 + 1, 1);
    }

    v4 += 8;
    *(v2 + 16) = v11 + 1;
    *(v2 + 2 * v11 + 32) = v5;
    if (!--v3)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03A8380(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if ((a4 & 1) == 0)
  {
    if (a7)
    {
      return sub_1B03A8FD8(MEMORY[0x1E69E7CC0]);
    }

    v72 = MailboxName.inbox.unsafeMutableAddressor();
    if ((sub_1B03B5DDC(*v72, *(v72 + 2), a6) & 1) == 0)
    {
      return sub_1B03A8FD8(MEMORY[0x1E69E7CC0]);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4470, &qword_1B0EC51E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B0EC1E70;
    v74 = *(v72 + 2);
    *(inited + 32) = *v72;
    *(inited + 40) = v74;
    *(inited + 44) = 1879048191;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v75 = sub_1B03A8FD8(inited);
    swift_setDeallocating();
    sub_1B0B38EE8(inited + 32);
    return v75;
  }

  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_1B03A8FD8(MEMORY[0x1E69E7CC0]);
  v14 = v13;
  v16 = v15;
  v17 = v12;
  v173 = v12;
  v174 = v13;
  v175 = v15;
  v171 = v11;
  v172 = v11;
  v170 = v11;
  v167 = sub_1B03A8FD8(v11);
  v168 = v18;
  v169 = v19;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = a1 + 32;
    v145 = a1 + 32;
    v147 = a6;
    v143 = *(a1 + 16);
    v144 = a8;
    while (1)
    {
      v23 = (v22 + 176 * v21);
      v24 = *v23;
      v25 = v23[2];
      v156[1] = v23[1];
      v156[2] = v25;
      v156[0] = v24;
      v26 = v23[3];
      v27 = v23[4];
      v28 = v23[6];
      v157 = v23[5];
      v158 = v28;
      v156[3] = v26;
      v156[4] = v27;
      v29 = v23[7];
      v30 = v23[8];
      v31 = v23[10];
      v161 = v23[9];
      v162 = v31;
      v159 = v29;
      v160 = v30;
      memmove(&__dst, v23, 0xB0uLL);
      v32 = v164;
      v152 = __dst;
      v33 = v165;
      v34 = v166;
      if (sub_1B03B5DDC(v165, v166, a6))
      {
        break;
      }

      sub_1B03A35B8(v156, v155);
      sub_1B03A3614(&__dst);
LABEL_5:
      if (++v21 == v20)
      {
        v77 = v173;
        v14 = v174;
        v16 = v175;
        v11 = v172;
        goto LABEL_76;
      }
    }

    sub_1B03A35B8(v156, v155);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v35 = MailboxName.inbox.unsafeMutableAddressor();
    if ((v34 | (v34 << 32)) == (v35[2] | (v35[2] << 32)))
    {
      v36 = *v35;
      v37 = *(v33 + 16);
      if (v37 != *(*v35 + 16))
      {

        if (v21 < 0x10000)
        {
          v39 = 0;
          if (v21 >= 0x4000)
          {
            goto LABEL_22;
          }

          goto LABEL_25;
        }

        goto LABEL_68;
      }

      if (!v37 || v33 == v36)
      {
LABEL_14:

        if (v21 >> 16)
        {
          v39 = 1;
          goto LABEL_22;
        }

        v39 = 1;
        if (v21 >> 14)
        {
          goto LABEL_22;
        }

LABEL_25:
        v40 = v21;
        if (*(a8 + 16))
        {
          goto LABEL_23;
        }

        goto LABEL_26;
      }

      v38 = 32;
      while (*(v33 + v38) == *(v36 + v38))
      {
        ++v38;
        if (!--v37)
        {
          goto LABEL_14;
        }
      }
    }

    if (!(v21 >> 16))
    {
      v39 = 0;
      if (v21 >> 14)
      {
LABEL_22:
        v40 = 0x3FFF;
        if (*(a8 + 16))
        {
LABEL_23:
          v41 = a8;
          v42 = v40;
          v43 = v39;
          v44 = sub_1B03B8A9C(v152, v32);
          if (v45)
          {
            v46 = *(*(v41 + 56) + 2 * v44);
            v47 = v46 < 0;
            v48 = v46 & 0x3FFF;
          }

          else
          {
            v47 = 1;
            v48 = 0x3FFF;
          }

          v49 = a5;
          v39 = v43;
          v40 = v42;
LABEL_29:
          v50 = v159;
          v51 = *(&v159 + 1);
          v52 = v160;
          if ((BYTE8(v157) & 1) == 0 && ((BYTE12(v158) & 1) != 0 || DWORD2(v158) < DWORD1(v157)))
          {
            if (!v39)
            {
              goto LABEL_60;
            }
          }

          else
          {
            if (!v49)
            {
              goto LABEL_42;
            }

            if (!*(v49 + 16))
            {
              goto LABEL_42;
            }

            v53 = v33;
            v54 = v34;
            v55 = v34;
            v56 = v39;
            v57 = v40;
            v58 = v33;
            v59 = v47;
            v60 = sub_1B03AB888(v53, v54);
            v47 = v59;
            v33 = v58;
            v40 = v57;
            v39 = v56;
            LODWORD(v34) = v55;
            if ((v61 & 1) == 0)
            {
              goto LABEL_42;
            }

            v62 = *(a5 + 56) + 72 * v60;
            if (*(v62 + 65) & 1) != 0 || (*(v62 + 64))
            {
              goto LABEL_42;
            }

            v63 = v50 == HIDWORD(*(v62 + 32)) ? v52 : 1;
            if ((v63 & 1) == 0 && v51 >= *(v62 + 56))
            {
LABEL_42:
              if (v39)
              {
                if (v47)
                {
                  v64 = 1610612736;
                }

                else
                {
                  v64 = 0x20000000;
                }

LABEL_56:
                v20 = v143;
                a8 = v144;
                v68 = v64 | (v48 << 14) | v40;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v155[0] = 0;
                v67 = v68;
                goto LABEL_57;
              }

              if (v47)
              {
                v65 = -536870912;
              }

              else
              {
                v65 = -1610612736;
              }

              v66 = v65 | (v48 << 14) | v40;
              v20 = v143;
              a8 = v144;
              if (!v47)
              {
                goto LABEL_67;
              }

              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              if (v48 == 0x3FFF)
              {
                v155[0] = 0;
                v67 = v66;
LABEL_57:
                sub_1B03A50D8(v67, v33, v34);
                sub_1B03A3614(&__dst);
LABEL_66:
                v22 = v145;
                a6 = v147;
                goto LABEL_5;
              }

              v69 = v33;
LABEL_65:
              sub_1B041E020(v69, v34, v66);
              sub_1B03A3614(&__dst);

              goto LABEL_66;
            }

            if ((v39 & 1) == 0)
            {
LABEL_60:
              if (v47)
              {
                v70 = -1073741824;
              }

              else
              {
                v70 = 0x80000000;
              }

              v66 = v70 | (v48 << 14) | v40;
              v20 = v143;
              a8 = v144;
              if (!v47)
              {
LABEL_67:
                v22 = v145;
                v71 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B041E020(v71, v34, v66);
                sub_1B03A3614(&__dst);

                a6 = v147;
                goto LABEL_5;
              }

              v69 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              goto LABEL_65;
            }
          }

          if (v47)
          {
            v64 = 0x40000000;
          }

          else
          {
            v64 = 0;
          }

          goto LABEL_56;
        }

LABEL_26:
        v47 = 1;
        v48 = 0x3FFF;
        v49 = a5;
        goto LABEL_29;
      }

      goto LABEL_25;
    }

LABEL_68:
    v39 = 0;
    goto LABEL_22;
  }

  v77 = v17;
LABEL_76:
  __dst = v77;
  v164 = v14;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v153 = v16;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v153 = sub_1B03A91CC(v16);
  }

  v78 = 0;
  v79 = *(v11 + 16);
LABEL_79:
  v80 = __dst;
  v150 = v164;
  v81 = (v164 + 32);
  while (v78 != v79)
  {
    if (v78 >= *(v11 + 16))
    {
      goto LABEL_167;
    }

    v82 = v11 + 32 + 16 * v78;
    v14 = *v82;
    ++v78;
    v83 = *(v82 + 8);
    v84 = *(v82 + 12);
    v85 = *(v150 + 2);
    if (v80)
    {
      v86 = sub_1B0BA7CA4(v14, v83, v81, v85, (v80 + 16));
      if (v87)
      {
        goto LABEL_101;
      }
    }

    else
    {
      if (!v85)
      {
LABEL_101:
        v94 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03A5284(v94, v83);
        *&v156[0] = v153;
        v96 = *(v153 + 2);
        v95 = *(v153 + 3);
        if (v96 >= v95 >> 1)
        {
          sub_1B03A50A4((v95 > 1), v96 + 1, 1);

          v153 = *&v156[0];
        }

        else
        {
        }

        *(v153 + 2) = v96 + 1;
        *&v153[4 * v96 + 32] = v84;
        goto LABEL_79;
      }

      v86 = 0;
      while (1)
      {
        v88 = (v81 + 16 * v86);
        if ((v88[2] | (v88[2] << 32)) == (v83 | (v83 << 32)))
        {
          v89 = *v88;
          v90 = *(*v88 + 16);
          if (v90 == *(v14 + 2))
          {
            break;
          }
        }

LABEL_87:
        if (++v86 == v85)
        {
          goto LABEL_101;
        }
      }

      if (v90)
      {
        v91 = v89 == v14;
      }

      else
      {
        v91 = 1;
      }

      if (!v91)
      {
        v92 = v89 + 32;
        v93 = v14 + 32;
        while (v90)
        {
          if (*v92 != *v93)
          {
            goto LABEL_87;
          }

          ++v92;
          ++v93;
          if (!--v90)
          {
            goto LABEL_98;
          }
        }

        __break(1u);
LABEL_165:
        __break(1u);
        goto LABEL_166;
      }
    }

LABEL_98:
    if ((v86 & 0x8000000000000000) != 0)
    {
      goto LABEL_168;
    }

    if (v86 >= *(v153 + 2))
    {
      goto LABEL_169;
    }
  }

  v97 = v171;
  __dst = v80;
  v164 = v150;

  v146 = v97;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v148 = v153;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v148 = sub_1B03A91CC(v153);
  }

  v98 = 0;
  v99 = *(v146 + 16);
  v14 = (v146 + 32);
LABEL_108:
  v100 = __dst;
  v101 = v164;
  v102 = (v164 + 32);
  while (v98 != v99)
  {
    if (v98 >= *(v146 + 16))
    {
      goto LABEL_170;
    }

    v103 = &v14[16 * v98];
    v104 = *v103;
    ++v98;
    v105 = *(v103 + 2);
    v106 = *(v103 + 3);
    v107 = *(v101 + 2);
    if (v100)
    {
      v108 = sub_1B0BA7CA4(*v103, *(v103 + 2), v102, v107, (v100 + 16));
      if (v109)
      {
        goto LABEL_130;
      }
    }

    else
    {
      if (!v107)
      {
LABEL_130:
        v116 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03A5284(v116, v105);
        *&v156[0] = v148;
        v118 = *(v148 + 2);
        v117 = *(v148 + 3);
        if (v118 >= v117 >> 1)
        {
          sub_1B03A50A4((v117 > 1), v118 + 1, 1);

          v148 = *&v156[0];
        }

        else
        {
        }

        *(v148 + 2) = v118 + 1;
        *&v148[4 * v118 + 32] = v106;
        goto LABEL_108;
      }

      v108 = 0;
      while (1)
      {
        v110 = (v102 + 16 * v108);
        if ((v110[2] | (v110[2] << 32)) == (v105 | (v105 << 32)))
        {
          v111 = *v110;
          v112 = *(*v110 + 16);
          if (v112 == *(v104 + 16))
          {
            break;
          }
        }

LABEL_116:
        if (++v108 == v107)
        {
          goto LABEL_130;
        }
      }

      if (v112)
      {
        v113 = v111 == v104;
      }

      else
      {
        v113 = 1;
      }

      if (!v113)
      {
        v114 = (v111 + 32);
        v115 = (v104 + 32);
        while (v112)
        {
          if (*v114 != *v115)
          {
            goto LABEL_116;
          }

          ++v114;
          ++v115;
          if (!--v112)
          {
            goto LABEL_127;
          }
        }

        goto LABEL_165;
      }
    }

LABEL_127:
    if ((v108 & 0x8000000000000000) != 0)
    {
      goto LABEL_171;
    }

    if (v108 >= *(v148 + 2))
    {
      goto LABEL_172;
    }
  }

  v119 = v170;

  v120 = v148;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v120 = sub_1B03A91CC(v148);
  }

  v121 = 0;
  v122 = *(v119 + 16);
  v151 = v119;
  v154 = v119 + 32;
LABEL_137:
  v123 = __dst;
  v14 = v164;
  v124 = (v164 + 32);
  while (1)
  {
    if (v121 == v122)
    {

      v141 = v168;
      v142 = v169;
      v165 = v120;

      sub_1B03A9204(v141, v142, &__dst);

      return __dst;
    }

    if (v121 >= *(v119 + 16))
    {
      goto LABEL_173;
    }

    v125 = v154 + 16 * v121;
    v126 = *v125;
    ++v121;
    v127 = *(v125 + 8);
    v128 = *(v125 + 12);
    v129 = *(v14 + 2);
    if (v123)
    {
      v130 = sub_1B0BA7CA4(*v125, *(v125 + 8), v124, v129, (v123 + 16));
      if (v131)
      {
        goto LABEL_159;
      }

      v119 = v151;
      goto LABEL_156;
    }

    if (!v129)
    {
LABEL_159:
      v138 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03A5284(v138, v127);
      *&v156[0] = v120;
      v140 = *(v120 + 2);
      v139 = *(v120 + 3);
      if (v140 >= v139 >> 1)
      {
        sub_1B03A50A4((v139 > 1), v140 + 1, 1);

        v120 = *&v156[0];
      }

      else
      {
      }

      v119 = v151;
      *(v120 + 2) = v140 + 1;
      *&v120[4 * v140 + 32] = v128;
      goto LABEL_137;
    }

    v130 = 0;
    while (1)
    {
      v132 = (v124 + 16 * v130);
      if ((v132[2] | (v132[2] << 32)) == (v127 | (v127 << 32)))
      {
        v133 = *v132;
        v134 = *(*v132 + 16);
        if (v134 == *(v126 + 16))
        {
          break;
        }
      }

LABEL_145:
      if (++v130 == v129)
      {
        goto LABEL_159;
      }
    }

    if (v134 && v133 != v126)
    {
      break;
    }

LABEL_156:
    if ((v130 & 0x8000000000000000) != 0)
    {
      goto LABEL_174;
    }

    if (v130 >= *(v120 + 2))
    {
      goto LABEL_175;
    }
  }

  v136 = (v133 + 32);
  v137 = (v126 + 32);
  while (v134)
  {
    if (*v136 != *v137)
    {
      goto LABEL_145;
    }

    ++v136;
    ++v137;
    if (!--v134)
    {
      goto LABEL_156;
    }
  }

LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B03A8FD8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1B03A4BCC(v3, 0);
  sub_1B03A50A4(0, v3, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = (a1 + 44);
  while (1)
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    result = sub_1B03A912C(*(v4 - 3), v5, v12 + 32, *(v12 + 16));
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03A5284(v9, v5);
    v11 = *(v2 + 16);
    v10 = *(v2 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1B03A50A4((v10 > 1), v11 + 1, 1);
    }

    v4 += 4;
    *(v2 + 16) = v11 + 1;
    *(v2 + 4 * v11 + 32) = v6;
    if (!--v3)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03A912C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    for (result = 0; result != a4; ++result)
    {
      v6 = (a3 + 16 * result);
      if ((v6[2] | (v6[2] << 32)) == (a2 | (a2 << 32)))
      {
        v7 = *v6;
        v8 = *(*v6 + 16);
        if (v8 == *(a1 + 16))
        {
          if (!v8 || v7 == a1)
          {
            return result;
          }

          v9 = (v7 + 32);
          for (i = (a1 + 32); *v9 == *i; ++i)
          {
            ++v9;
            if (!--v8)
            {
              return result;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1B03A9204(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a3 + 2;
  v6 = a3[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B03A91CC(v6);
    v6 = result;
  }

  v8 = *(a2 + 16);
  *v5 = v6;
  v32 = v8;
  if (v8)
  {
    v9 = 0;
    v31 = a2 + 32;
    do
    {
      v10 = v6 + 32;
      while (1)
      {
        if (v9 >= *(a1 + 16))
        {
          goto LABEL_33;
        }

        v11 = a1 + 32 + 16 * v9;
        v12 = *v11;
        v13 = *(v31 + 4 * v9);
        v14 = *(v11 + 8);
        ++v9;
        v15 = a3[1];
        v16 = v15 + 32;
        v17 = *(v15 + 16);
        if (*a3)
        {
          v18 = sub_1B0BA7CA4(v12, v14, v16, v17, (*a3 + 16));
          if (v19)
          {
            break;
          }

          v20 = v18;
          result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_34;
          }

          goto LABEL_25;
        }

        if (!v17)
        {
          break;
        }

        v20 = 0;
        while (1)
        {
          v21 = (v16 + 16 * v20);
          if ((v21[2] | (v21[2] << 32)) == (v14 | (v14 << 32)))
          {
            v22 = *v21;
            v23 = *(*v21 + 16);
            if (v23 == *(v12 + 16))
            {
              break;
            }
          }

LABEL_13:
          if (++v20 == v17)
          {
            goto LABEL_28;
          }
        }

        if (v23)
        {
          v24 = v22 == v12;
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          v25 = (v22 + 32);
          v26 = (v12 + 32);
          while (v23)
          {
            if (*v25 != *v26)
            {
              goto LABEL_13;
            }

            ++v25;
            ++v26;
            if (!--v23)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          return result;
        }

LABEL_24:
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_25:
        if (v20 >= *(v6 + 16))
        {
          goto LABEL_35;
        }

        v27 = *(v10 + 4 * v20);

        *(v10 + 4 * v20) = v27;
        *v5 = v6;
        if (v9 >= v32)
        {
          return result;
        }
      }

LABEL_28:
      v28 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03A5284(v28, v14);
      a3[2] = v6;
      v30 = *(v6 + 16);
      v29 = *(v6 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1B03A50A4((v29 > 1), v30 + 1, 1);
      }

      v6 = *v5;
      *(v6 + 16) = v30 + 1;
      *(v6 + 4 * v30 + 32) = v13;
      *v5 = v6;
    }

    while (v9 < v32);
  }

  return result;
}

uint64_t sub_1B03A944C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v13 = MEMORY[0x1E69E7CC0];

    sub_1B03A9648(0, v4, 0);
    v6 = v13;
    v7 = (a3 + 32);
    do
    {
      v9 = *v7++;
      v8 = v9;
      v14 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1B03A9648((v10 > 1), v11 + 1, 1);
        v6 = v14;
      }

      *(v6 + 16) = v11 + 1;
      *(v6 + v11 + 32) = (v8 & 0x40000000) != 0;
      --v4;
    }

    while (v4);
  }

  else
  {
  }

  return a1;
}

char *sub_1B03A9554(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CC0, &qword_1B0EC9BA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B03A9648(char *a1, int64_t a2, char a3)
{
  result = sub_1B03A9554(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B03A967C()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v3 = sub_1B03A9668(MEMORY[0x1E69E7CC0]);
  if ((v2 & 1) == 0)
  {
    return v3;
  }

  v4 = *(v1 + 16);
  if (!v4)
  {
    return v3;
  }

  v5 = 0;
  v6 = v1 + 32;
  while (2)
  {
    v7 = (v6 + 176 * v5);
    for (i = v5; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v9 = *v7;
      v10 = v7[2];
      v49 = v7[1];
      v50 = v10;
      v48 = v9;
      v11 = v7[3];
      v12 = v7[4];
      v13 = v7[6];
      v53 = v7[5];
      v54 = v13;
      v51 = v11;
      v52 = v12;
      v14 = v7[7];
      v15 = v7[8];
      v16 = v7[10];
      v57 = v7[9];
      v58 = v16;
      v55 = v14;
      v56 = v15;
      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_40;
      }

      v17 = *(v57 + 16);
      if (v17)
      {
        break;
      }

      v7 += 11;
      if (v5 == v4)
      {
        return v3;
      }
    }

    LOBYTE(v18) = *(v57 + 64);
    v19 = v17 - 1;
    if (v17 != 1)
    {
      if (v17 < 3)
      {
        v20 = 1;
        goto LABEL_23;
      }

      v20 = v19 | 1;
      v21 = (v57 + 144);
      v22 = v19 & 0xFFFFFFFFFFFFFFFELL;
      LOBYTE(v23) = *(v57 + 64);
      do
      {
        v24 = *(v21 - 40);
        v26 = *v21;
        v21 += 80;
        v25 = v26;
        if (v18 <= v24)
        {
          v18 = v24;
        }

        else
        {
          v18 = v18;
        }

        v23 = v23;
        if (v23 <= v25)
        {
          v23 = v25;
        }

        v22 -= 2;
      }

      while (v22);
      if (v18 <= v23)
      {
        LOBYTE(v18) = v23;
      }

      if (v19 != (v19 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_23:
        v27 = v17 - v20;
        v28 = (v57 + 40 * v20 + 64);
        do
        {
          v30 = *v28;
          v28 += 40;
          v29 = v30;
          if (v18 <= v30)
          {
            LOBYTE(v18) = v29;
          }

          --v27;
        }

        while (v27);
      }
    }

    v31 = v49;
    v32 = DWORD2(v49);
    sub_1B03A35B8(&v48, &v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v3;
    v34 = sub_1B03AB888(v31, v32);
    v36 = v3[2];
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
      goto LABEL_41;
    }

    v40 = v35;
    if (v3[3] < v39)
    {
      sub_1B0B310D4(v39, isUniquelyReferenced_nonNull_native, &qword_1EB6E4758, &qword_1B0EC5E18);
      v34 = sub_1B03AB888(v31, v32);
      if ((v40 & 1) != (v41 & 1))
      {
        goto LABEL_43;
      }

LABEL_32:
      v3 = v47;
      if (v40)
      {
        goto LABEL_33;
      }

LABEL_35:
      v3[(v34 >> 6) + 8] |= 1 << v34;
      v43 = v3[6] + 16 * v34;
      *v43 = v31;
      *(v43 + 8) = v32;
      *(v3[7] + v34) = v18;
      v44 = v3[2];
      v38 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (!v38)
      {
        v3[2] = v45;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        goto LABEL_37;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      result = sub_1B0E46BA8();
      __break(1u);
      return result;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_32;
    }

    v42 = v34;
    sub_1B0B8E138();
    v34 = v42;
    v3 = v47;
    if ((v40 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_33:
    *(v3[7] + v34) = v18;
LABEL_37:
    sub_1B03A3614(&v48);
    if (v5 != v4)
    {
      continue;
    }

    return v3;
  }
}

uint64_t sub_1B03A9934(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v18 = a12;
  v19 = sub_1B03A8228(MEMORY[0x1E69E7CC0]);
  v21 = v20;
  v168 = v19;
  v169 = v20;
  v170 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = a12;
  v171[0] = a6;
  v171[1] = a7;
  v171[2] = a8;
  v171[3] = sub_1B03AAF64;
  v171[4] = 0;
  v171[5] = sub_1B03AAF8C;
  v171[6] = v24;
  v171[7] = sub_1B03AAF94;
  v171[8] = 0;
  v171[9] = sub_1B0BCBFD0;
  v171[10] = 0;

  v160 = a8;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v167[0] = sub_1B03AABBC(v171);
  sub_1B03AB180(v167);
  v25 = a13;
  sub_1B0398EFC(v171, &qword_1EB6E5318, &qword_1B0ECE380);
  v26 = v167[0];
  v27 = v167[0][2];
  v161 = a7;
  v158 = v23;
  v156 = a3;
  if (!v27)
  {

    v54 = v160;
    if (a14)
    {
      goto LABEL_50;
    }

LABEL_43:
    if (a3)
    {
      v55 = 0;
    }

    else
    {
      v56 = a2;
      if (a2 >= a1)
      {
        v56 = a1;
      }

      v57 = __OFSUB__(v56, 2);
      v58 = v56 - 2;
      if (v57)
      {
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);

        __break(1u);
        return result;
      }

      v55 = v58 & ~(v58 >> 63);
    }

    if (sub_1B03ABC50(v55, a11, &v168, a6, a7, v54, a2, a3 & 1))
    {
      goto LABEL_50;
    }

    goto LABEL_192;
  }

  for (i = 0; i != v27; ++i)
  {
    if (i >= v26[2])
    {
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
      goto LABEL_222;
    }

    v30 = &v26[2 * i + 4];
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = *(v30 + 12);
    if ((sub_1B03B5DDC(*v30, *(v30 + 8), a11) & 1) == 0)
    {
      v34 = v21 + 32;
      v35 = *(v21 + 16);
      if (v168)
      {
        sub_1B0BA7CA4(v31, v32, v34, v35, (v168 + 16));
        if ((v36 & 1) == 0)
        {
          continue;
        }
      }

      else if (v35)
      {
        for (j = 0; j != v35; ++j)
        {
          v38 = (v34 + 16 * j);
          if ((v38[2] | (v38[2] << 32)) == (v32 | (v32 << 32)))
          {
            v39 = *v38;
            v40 = *(*v38 + 16);
            if (v40 == *(v31 + 16))
            {
              if (v40)
              {
                v41 = v39 == v31;
              }

              else
              {
                v41 = 1;
              }

              if (v41)
              {
                goto LABEL_6;
              }

              v42 = (v39 + 32);
              v43 = (v31 + 32);
              while (1)
              {
                v45 = *v42++;
                v44 = v45;
                v46 = *v43++;
                if (v44 != v46)
                {
                  break;
                }

                if (!--v40)
                {
                  goto LABEL_6;
                }
              }
            }
          }
        }
      }

      v47 = a7[2];
      if (a6)
      {
        v48 = sub_1B0BA7CA4(v31, v32, (a7 + 4), v47, a6 + 2);
        if (v49)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v48 = sub_1B03A912C(v31, v32, (a7 + 4), v47);
        if (v50)
        {
          goto LABEL_32;
        }
      }

      if ((v48 & 0x8000000000000000) != 0)
      {
        goto LABEL_215;
      }

      if (v48 >= *(v160 + 16))
      {
        goto LABEL_216;
      }

      if ((*(v160 + 32 + v48) & 1) == 0)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v29 = 0;
        goto LABEL_5;
      }

LABEL_32:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v51 = sub_1B03ABBC8(v23, a9);
      v52 = sub_1B03B5DDC(v31, v32, v51);

      if (v52)
      {
        v29 = 0;
      }

      else if (*(a12 + 16) && (sub_1B03AB888(v31, v32), (v53 & 1) != 0))
      {
        v29 = 1;
      }

      else if (sub_1B03B5DDC(v31, v32, a13))
      {
        v29 = 2;
      }

      else
      {
        v29 = 3;
      }

      a7 = v161;
LABEL_5:
      sub_1B03BB69C(v29 | (v33 << 8), v31, v32);
      v21 = v169;
      if (*(v169 + 16) >= a2)
      {

        goto LABEL_195;
      }

      continue;
    }

LABEL_6:
    ;
  }

  v54 = v160;
  v25 = a13;
  v18 = a12;
  a3 = v156;
  if ((a14 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_50:
  if (sub_1B03AC384(a11, &v168, a6, a7, v54, v23, a9, a10, v18, v25, a2))
  {
    v59 = a4();
    v60 = swift_allocObject();
    v60[2] = v59;
    v167[0] = a6;
    v167[1] = a7;
    v167[2] = v54;
    v167[3] = sub_1B03AAF64;
    v167[4] = 0;
    v167[5] = sub_1B0BCC8E4;
    v167[6] = v60;
    v167[7] = sub_1B03AAF94;
    v167[8] = 0;
    v167[9] = sub_1B0BCBFD0;
    v167[10] = 0;
    v61 = v54[2];

    sub_1B03B5C80(v167, &v164, &qword_1EB6E5320, &qword_1B0ECE388);
    if (v61)
    {
      v62 = a7;
      v63 = 0;
      v153 = v54 + 4;
      v155 = v60;
      v64 = v62 + 5;
      v157 = v61;
      do
      {
        if (v63 >= v161[2])
        {
          goto LABEL_211;
        }

        if (v63 >= v54[2])
        {
          goto LABEL_212;
        }

        v65 = *v64;
        v66 = *(v64 - 1);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v162 = v66;
        v163 = v65;
        sub_1B03ABB24(&v162, v60[2], &v164);

        v67 = v164;
        if (!v164 || (v68 = v165 | (v166 << 32), (sub_1B03B5DDC(v164, v165, a11) & 1) != 0))
        {

          goto LABEL_54;
        }

        v70 = v168;
        v69 = v169;
        v71 = *(v169 + 16);
        v72 = v169 + 32;
        if (v168)
        {
          sub_1B0BA7CA4(v67, v68, v72, v71, (v168 + 16));
          if ((v73 & 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          sub_1B03A912C(v67, v68, v72, v71);
          if ((v77 & 1) == 0)
          {
LABEL_69:

            v54 = v160;
            v61 = v157;
            goto LABEL_54;
          }
        }

        if (BYTE4(v68) > 7u)
        {
          switch(BYTE4(v68))
          {
            case 8u:
              v78 = -16383;
              goto LABEL_130;
            case 9u:
              v78 = -16382;
              goto LABEL_130;
            case 0xAu:
              v78 = -16381;
              if (v156)
              {
                goto LABEL_74;
              }

              goto LABEL_83;
          }

LABEL_79:
          v82 = v161[2];
          if (a6)
          {
            v83 = sub_1B0BA7CA4(v67, v68, (v161 + 4), v82, a6 + 2);
            if (v84)
            {
              goto LABEL_97;
            }
          }

          else
          {
            v83 = sub_1B03A912C(v67, v68, (v161 + 4), v82);
            if (v92)
            {
              goto LABEL_97;
            }
          }

          if ((v83 & 0x8000000000000000) != 0)
          {
            goto LABEL_226;
          }

          if (v83 >= *(v160 + 16))
          {
            goto LABEL_229;
          }

          if (*(v153 + v83))
          {
LABEL_97:
            v93 = sub_1B03ABBC8(v158, a9);
            v94 = sub_1B03B5DDC(v67, v68, v93);

            if (v94)
            {
              goto LABEL_98;
            }

            if (*(a12 + 16) && (sub_1B03AB888(v67, v68), (v103 & 1) != 0))
            {
              v95 = 1;
            }

            else if (sub_1B03B5DDC(v67, v68, a13))
            {
              v95 = 2;
            }

            else
            {
              v95 = 3;
            }
          }

          else
          {
LABEL_98:
            v95 = 0;
          }

          v78 = v95 | (BYTE4(v68) << 8);
          goto LABEL_130;
        }

        if (BYTE4(v68) == 5)
        {
          v79 = v161[2];
          if (a6)
          {
            v80 = sub_1B0BA7CA4(v67, v68, (v161 + 4), v79, a6 + 2);
            if (v81)
            {
              goto LABEL_91;
            }
          }

          else
          {
            v80 = sub_1B03A912C(v67, v68, (v161 + 4), v79);
            if (v89)
            {
LABEL_91:
              v90 = sub_1B03ABBC8(v158, a9);
              v91 = sub_1B03B5DDC(v67, v68, v90);

              if (v91)
              {
                goto LABEL_92;
              }

              if (*(a12 + 16) && (sub_1B03AB888(v67, v68), (v102 & 1) != 0))
              {
                v78 = 16385;
              }

              else if (sub_1B03B5DDC(v67, v68, a13))
              {
                v78 = 16386;
              }

              else
              {
                v78 = 16387;
              }

              goto LABEL_130;
            }
          }

          if ((v80 & 0x8000000000000000) != 0)
          {
            goto LABEL_223;
          }

          if (v80 >= *(v160 + 16))
          {
            goto LABEL_230;
          }

          if ((*(v153 + v80) & 1) == 0)
          {
LABEL_92:
            v78 = 0x4000;
            goto LABEL_130;
          }

          goto LABEL_91;
        }

        if (BYTE4(v68) == 6)
        {
          v78 = -16384;
          if (v156)
          {
LABEL_74:

            v54 = v160;
            v61 = v157;
            goto LABEL_146;
          }

LABEL_83:
          v85 = *(v69 + 16);
          v86 = v69 + 32;
          if (v70)
          {
            v87 = sub_1B0BA7CA4(v67, v68, v86, v85, (v70 + 16));
            if ((v88 & 1) == 0)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v87 = sub_1B03A912C(v67, v68, v86, v85);
            if ((v99 & 1) == 0)
            {
LABEL_106:
              v100 = v87;
              v54 = v160;
              v61 = v157;

              v101 = v170;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v101 = sub_1B0B94750(v101);
              }

              if ((v100 & 0x8000000000000000) != 0)
              {
                goto LABEL_224;
              }

              if (v100 >= *(v101 + 2))
              {
                goto LABEL_227;
              }

              goto LABEL_145;
            }
          }

          goto LABEL_132;
        }

        if (BYTE4(v68) != 7)
        {
          goto LABEL_79;
        }

        v74 = v161[2];
        if (a6)
        {
          v75 = sub_1B0BA7CA4(v67, v68, (v161 + 4), v74, a6 + 2);
          if ((v76 & 1) == 0)
          {
            goto LABEL_100;
          }
        }

        else
        {
          v75 = sub_1B03A912C(v67, v68, (v161 + 4), v74);
          if ((v96 & 1) == 0)
          {
LABEL_100:
            if ((v75 & 0x8000000000000000) != 0)
            {
              goto LABEL_225;
            }

            if (v75 >= *(v160 + 16))
            {
              goto LABEL_228;
            }

            if ((*(v153 + v75) & 1) == 0)
            {
LABEL_104:
              v78 = 0x8000;
              goto LABEL_130;
            }
          }
        }

        v97 = sub_1B03ABBC8(v158, a9);
        v98 = sub_1B03B5DDC(v67, v68, v97);

        if (v98)
        {
          goto LABEL_104;
        }

        if (*(a12 + 16) && (sub_1B03AB888(v67, v68), (v104 & 1) != 0))
        {
          v78 = -32767;
        }

        else if (sub_1B03B5DDC(v67, v68, a13))
        {
          v78 = -32766;
        }

        else
        {
          v78 = -32765;
        }

LABEL_130:
        v105 = *(v69 + 16);
        v106 = v69 + 32;
        if (v70)
        {
          v107 = sub_1B0BA7CA4(v67, v68, v106, v105, (v70 + 16));
          if ((v108 & 1) == 0)
          {
            v100 = v107;
            v54 = v160;
            v61 = v157;
            goto LABEL_141;
          }

LABEL_132:
          v54 = v160;
          v61 = v157;
          goto LABEL_134;
        }

        v109 = sub_1B03A912C(v67, v68, v106, v105);
        v54 = v160;
        v61 = v157;
        if ((v110 & 1) == 0)
        {
          v100 = v109;
LABEL_141:

          v101 = v170;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_1B0B94750(v101);
          }

          if ((v100 & 0x8000000000000000) != 0)
          {
            goto LABEL_219;
          }

          if (v100 >= *(v101 + 2))
          {
            goto LABEL_220;
          }

LABEL_145:
          *&v101[2 * v100 + 32] = v78;
          v170 = v101;
          goto LABEL_146;
        }

LABEL_134:
        sub_1B03A5284(v67, v68);

        v111 = v170;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B03A4FB4(0, *(v111 + 2) + 1, 1);
          v111 = v170;
        }

        v113 = *(v111 + 2);
        v112 = *(v111 + 3);
        if (v113 >= v112 >> 1)
        {
          sub_1B03A4FB4((v112 > 1), v113 + 1, 1);
          v111 = v170;
        }

        *(v111 + 2) = v113 + 1;
        *&v111[2 * v113 + 32] = v78;
LABEL_146:
        v60 = v155;
        if (*(v169 + 16) >= a2)
        {

          sub_1B0398EFC(v167, &qword_1EB6E5320, &qword_1B0ECE388);

          goto LABEL_194;
        }

LABEL_54:
        ++v63;
        v64 += 4;
      }

      while (v61 != v63);
    }

    sub_1B0398EFC(v167, &qword_1EB6E5320, &qword_1B0ECE388);

    v114 = v161;

    v115 = swift_allocObject();
    v115[2] = v158;
    v115[3] = a9;
    v115[4] = a10;
    v116 = swift_allocObject();
    *(v116 + 16) = sub_1B03AD054;
    *(v116 + 24) = v115;
    v117 = v54[2];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    if (v117)
    {
      for (k = 0; k != v117; ++k)
      {
        if (k >= *(v114 + 16))
        {
          goto LABEL_213;
        }

        if (k >= *(v160 + 16))
        {
          goto LABEL_214;
        }

        v119 = &v161[2 * k + 4];
        v120 = *v119;
        v121 = *(v119 + 8);
        v122 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v123 = *(v116 + 24);
        if ((*(v116 + 16))(v122, v121) & 1) == 0 || (sub_1B03B5DDC(v120, v121, a11))
        {
LABEL_151:

          v114 = v161;
          continue;
        }

        v124 = v168;
        v125 = v169;
        v126 = *(v169 + 16);
        if (v168)
        {
          sub_1B0BA7CA4(v120, v121, v169 + 32, v126, (v168 + 16));
          if ((v127 & 1) == 0)
          {
            goto LABEL_151;
          }

          v128 = sub_1B0BA7CA4(v120, v121, v125 + 32, *(v125 + 16), (v124 + 16));
          if (v129)
          {
LABEL_175:
            sub_1B03A5284(v120, v121);

            v141 = v170;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1B03A4FB4(0, *(v141 + 2) + 1, 1);
              v141 = v170;
            }

            v114 = v161;
            v143 = *(v141 + 2);
            v142 = *(v141 + 3);
            if (v143 >= v142 >> 1)
            {
              sub_1B03A4FB4((v142 > 1), v143 + 1, 1);
              v141 = v170;
            }

            *(v141 + 2) = v143 + 1;
            *&v141[2 * v143 + 32] = -16382;
            v125 = v169;
            goto LABEL_185;
          }
        }

        else
        {
          if (v126)
          {
            for (m = 0; m != v126; ++m)
            {
              v131 = (v169 + 32 + 16 * m);
              if ((v131[2] | (v131[2] << 32)) == (v121 | (v121 << 32)))
              {
                v132 = *v131;
                v133 = *(*v131 + 16);
                if (v133 == *(v120 + 16))
                {
                  if (v133)
                  {
                    v134 = v132 == v120;
                  }

                  else
                  {
                    v134 = 1;
                  }

                  if (v134)
                  {
                    goto LABEL_151;
                  }

                  v135 = (v132 + 32);
                  v136 = (v120 + 32);
                  while (1)
                  {
                    v138 = *v135++;
                    v137 = v138;
                    v139 = *v136++;
                    if (v137 != v139)
                    {
                      break;
                    }

                    if (!--v133)
                    {
                      goto LABEL_151;
                    }
                  }
                }
              }
            }
          }

          v128 = sub_1B03A912C(v120, v121, v169 + 32, v126);
          if (v140)
          {
            goto LABEL_175;
          }
        }

        v144 = v128;

        v141 = v170;
        v114 = v161;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v141 = sub_1B0B94750(v141);
        }

        if ((v144 & 0x8000000000000000) != 0)
        {
          goto LABEL_217;
        }

        if (v144 >= *(v141 + 2))
        {
          goto LABEL_218;
        }

        *&v141[2 * v144 + 32] = -16382;
LABEL_185:
        v170 = v141;
        if (*(v125 + 16) >= a2)
        {

          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
            goto LABEL_204;
          }

          return v168;
        }
      }
    }

    v145 = swift_isEscapingClosureAtFileLocation();

    if ((v145 & 1) == 0)
    {
      LOBYTE(v121) = v156;
      if ((sub_1B03ABC50(0x7FFFFFFFFFFFFFFFLL, a11, &v168, a6, v114, v160, a2, v156 & 1) & 1) == 0 || !*(v114 + 16))
      {

        goto LABEL_194;
      }

      isEscapingClosureAtFileLocation = *(v114 + 32);
      LODWORD(v116) = *(v114 + 40);
      if (sub_1B03B5DDC(isEscapingClosureAtFileLocation, v116, a11))
      {

        goto LABEL_207;
      }

      v150 = *(v169 + 16);
      v149 = v169 + 32;
      if (v168)
      {
        sub_1B0BA7CA4(isEscapingClosureAtFileLocation, v116, v149, v150, (v168 + 16));
      }

      else
      {
LABEL_204:
        sub_1B03A912C(isEscapingClosureAtFileLocation, v116, v149, v150);
      }

      v151 = v147;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      if ((v151 & 1) != 0 && (v121 & 1) == 0)
      {
        sub_1B03BB69C(0xC003u, isEscapingClosureAtFileLocation, v116);
      }

      else
      {
LABEL_207:
      }

      goto LABEL_193;
    }

    goto LABEL_221;
  }

LABEL_192:

LABEL_193:

LABEL_194:

LABEL_195:

  return v168;
}

uint64_t sub_1B03AAB44()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B03AAB7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03AABBC(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[4];
  v53 = a1[5];
  v54 = a1[3];
  v4 = a1[6];
  v52 = a1[7];
  v5 = a1[8];
  v45 = a1[9];
  v6 = a1[10];
  v7 = *(v2 + 16);
  v48 = *a1;

  v9 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    v12 = 0;
    goto LABEL_27;
  }

  v10 = v7;
  v11 = 0;
  v12 = 0;
  v13 = v2 + 32;
  v46 = MEMORY[0x1E69E7CC0] + 32;
  v14 = v1 + 40;
  v44 = v1 + 40;
  while (2)
  {
    v49 = v12;
    v51 = v9;
    v15 = (v14 + 16 * v11);
    while (1)
    {
      if (v11 >= *(v1 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v11 >= *(v2 + 16))
      {
        goto LABEL_32;
      }

      v16 = v2;
      v17 = v1;
      v18 = *v15;
      v19 = *(v13 + v11++);
      v56 = *(v15 - 1);
      v57 = v18;
      v58 = v19;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v54(&v55, &v56);

      v53(&v56, &v55);

      v20 = v56;
      v21 = v58;
      v22 = v57;
      v59 = v56;
      v61 = v58;
      v60 = v57;
      if (v52(&v59))
      {
        break;
      }

      v15 += 4;
      v1 = v17;
      v2 = v16;
      if (v11 >= v10)
      {
        v12 = v49;
        goto LABEL_27;
      }
    }

    v59 = v20;
    v60 = v22;
    v61 = (v22 | (v21 << 32)) >> 32;
    v45(&v56, &v59);

    v23 = v56;
    v24 = v57;
    v25 = v58;
    v26 = v49;
    if (v49)
    {
      v27 = v46;
    }

    else
    {
      v43 = v58;
      v47 = v57;
      v50 = v56;
      v28 = v9[3];
      if (((v28 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_35;
      }

      v29 = v28 & 0xFFFFFFFFFFFFFFFELL;
      if (v29 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v29;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4228, &qword_1B0EC4570);
      v9 = swift_allocObject();
      v31 = _swift_stdlib_malloc_size_0(v9);
      v32 = v31 - 32;
      if (v31 < 32)
      {
        v32 = v31 - 17;
      }

      v33 = v32 >> 4;
      v9[2] = v30;
      v9[3] = 2 * (v32 >> 4);
      v34 = (v9 + 4);
      v35 = v51[3] >> 1;
      v36 = 16 * v35;
      if (v51[2])
      {
        v37 = (v51 + 4);
        if (v9 != v51 || v34 >= &v37[v36])
        {
          v38 = v32 >> 4;
          memmove(v9 + 4, v37, v36);
          v33 = v38;
        }

        v51[2] = 0;
      }

      v27 = &v34[v36];
      v26 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

      v23 = v50;
      v24 = v47;
      v25 = v43;
    }

    v39 = __OFSUB__(v26, 1);
    v12 = v26 - 1;
    v14 = v44;
    if (v39)
    {
      goto LABEL_33;
    }

    v1 = v17;
    *v27 = v23;
    *(v27 + 8) = v24;
    *(v27 + 12) = v25;
    v46 = v27 + 16;
    v2 = v16;
    if (v11 < v10)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v40 = v9[3];
  if (v40 < 2)
  {
    return v9;
  }

  v41 = v40 >> 1;
  v39 = __OFSUB__(v41, v12);
  v42 = v41 - v12;
  if (!v39)
  {
    v9[2] = v42;
    return v9;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1B03AAF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

unint64_t sub_1B03AAFA8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = *result, v6 = *(result + 8), result = sub_1B03AB888(*result, v6), (v7 & 1) != 0))
  {
    v8 = *(*(a2 + 56) + result);
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 12) = v8;

    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    *a3 = 0;
    *(a3 + 12) = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void *sub_1B03AB038(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4228, &qword_1B0EC4570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CB8, &unk_1B0ECE3A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B03AB180(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B03AB16C(v2);
  }

  v3 = v2[2];
  v4 = v2 + 4;
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = sub_1B0E469A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 28);
          if (*(v12 + 12) >= v13)
          {
            break;
          }

          v14 = v12[2];
          v15 = *(v12 + 6);
          *(v12 + 1) = *v12;
          *v12 = v14;
          *(v12 + 2) = v15;
          *(v12 + 12) = v13;
          v12 -= 2;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 2;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CB8, &unk_1B0ECE3A0);
      v8 = sub_1B0E45278();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = v8 + 32;
    v17[1] = v7;
    sub_1B0BCA504(v17, v18, v19, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B03AB2E0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a3 | (a3 << 32));
  result = sub_1B0E46CB8();
  v10 = -1 << *(v7 + 32);
  v11 = result & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      if ((v13[2] | (v13[2] << 32)) == (a3 | (a3 << 32)))
      {
        v14 = *v13;
        v15 = *(*v13 + 16);
        if (v15 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (v15)
    {
      v16 = v14 == a2;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
LABEL_14:

      v19 = *(v7 + 48) + 16 * v11;
      v20 = *v19;
      LODWORD(v19) = *(v19 + 8);
      *a1 = v20;
      *(a1 + 8) = v19;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return 0;
    }

    else
    {
      v17 = (v14 + 32);
      v18 = (a2 + 32);
      while (v15)
      {
        if (*v17 != *v18)
        {
          goto LABEL_3;
        }

        ++v17;
        ++v18;
        if (!--v15)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_15:
    v21 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v23 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03AB6C0(v23, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
    *a1 = a2;
    *(a1 + 8) = a3;
    return 1;
  }

  return result;
}

uint64_t sub_1B03AB484(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4330, &qword_1B0EDC420);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = *(v3 + 48) + 16 * (v15 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v6 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v20 | (v20 << 32));
      result = sub_1B0E46CB8();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v6 + 16);
      result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B03AB6C0(uint64_t result, unsigned int a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 <= v7 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B041E1C0(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        v9 = a3;
        result = sub_1B0B070C8();
        a3 = v9;
        goto LABEL_22;
      }

      sub_1B03AB484(v7 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](a2 | (a2 << 32));
    result = sub_1B0E46CB8();
    v12 = -1 << *(v10 + 32);
    a3 = result & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      while (1)
      {
        v14 = (*(v10 + 48) + 16 * a3);
        if ((v14[2] | (v14[2] << 32)) == (a2 | (a2 << 32)))
        {
          v15 = *v14;
          v16 = *(*v14 + 16);
          if (v16 == *(v6 + 16))
          {
            break;
          }
        }

LABEL_10:
        a3 = (a3 + 1) & v13;
        if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (v16)
      {
        v17 = v15 == v6;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        v18 = (v15 + 32);
        v19 = (v6 + 32);
        while (v16)
        {
          if (*v18 != *v19)
          {
            goto LABEL_10;
          }

          ++v18;
          ++v19;
          if (!--v16)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

LABEL_21:
      result = sub_1B0E46B98();
      __break(1u);
    }
  }

LABEL_22:
  v20 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = *(v20 + 48) + 16 * a3;
  *v21 = v6;
  *(v21 + 8) = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1B03AB888(uint64_t a1, unsigned int a2)
{
  v5 = *(v2 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2 | (a2 << 32));
  v6 = sub_1B0E46CB8();

  return sub_1B03AB900(a1, a2, v6);
}

unint64_t sub_1B03AB900(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      if ((v8[2] | (v8[2] << 32)) == (a2 | (a2 << 32)))
      {
        v9 = *v8;
        v10 = *(*v8 + 16);
        if (v10 == *(a1 + 16))
        {
          if (!v10 || v9 == a1)
          {
            return result;
          }

          v11 = (v9 + 32);
          for (i = (a1 + 32); *v11 == *i; ++i)
          {
            ++v11;
            if (!--v10)
            {
              return result;
            }
          }
        }
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t UIDValidityWith.init(uidValidity:value:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for UIDValidityWith();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 28);

  return v8(v9, a2, a3);
}

unint64_t sub_1B03ABAA0()
{
  v2 = qword_1EB6DCCC0;
  if (!qword_1EB6DCCC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DCCC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03ABB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  result = MailboxesSelectionUsage.subscript.getter(*a1, v5, a2);
  if ((v7 & 0x100) == 0 && (v7 & 1) != 0 && result)
  {
    *a3 = v4;
    *(a3 + 8) = v5;
    if (result == 1)
    {
      v8 = 8;
    }

    else
    {
      v8 = 7;
    }

    *(a3 + 12) = v8;

    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    *a3 = 0;
    *(a3 + 12) = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t sub_1B03ABBC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = a2();
    swift_beginAccess();
    v5 = *v3;
    *v3 = v4;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v4;
}

uint64_t sub_1B03ABC50(uint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  v10 = result;
  v55[0] = a4;
  v55[1] = a5;
  v55[2] = a6;
  v55[3] = sub_1B0BC9E34;
  v55[4] = 0;
  v55[5] = sub_1B03AAF94;
  v55[6] = 0;
  v55[7] = sub_1B0BCCDFC;
  v55[8] = 0;
  v55[9] = result;
  if (!result)
  {
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
LABEL_52:
    v49 = 1;
    goto LABEL_53;
  }

  v11 = *(a6 + 16);
  v54 = a2 + 56;
  swift_retain_n();
  swift_retain_n();
  result = swift_retain_n();
  v12 = 0;
  v13 = a5 + 40;
  while (2)
  {
    if (v12 >= v11)
    {
      goto LABEL_52;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    --v10;
    v14 = (v13 + 16 * v12);
    while (1)
    {
      if (v12 >= *(a5 + 16))
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v12 >= *(a6 + 16))
      {
        goto LABEL_55;
      }

      v15 = *v14;
      v16 = *(v14 - 1);
      v17 = *(a6 + 32 + v12);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v17 != 1)
      {
        break;
      }

LABEL_8:
      ++v12;

      v14 += 4;
      if (v11 == v12)
      {
        goto LABEL_52;
      }
    }

    if (!v16)
    {
      goto LABEL_8;
    }

    if (*(a2 + 16))
    {
      v18 = *(a2 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v15 | (v15 << 32));
      v19 = sub_1B0E46CB8();
      v20 = -1 << *(a2 + 32);
      v21 = v19 & ~v20;
      if ((*(v54 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        do
        {
          v23 = (*(a2 + 48) + 16 * v21);
          if ((v23[2] | (v23[2] << 32)) == (v15 | (v15 << 32)))
          {
            v24 = *v23;
            v25 = *(*v23 + 16);
            if (v25 == *(v16 + 16))
            {
              if (v25)
              {
                v26 = v24 == v16;
              }

              else
              {
                v26 = 1;
              }

              if (v26)
              {
                goto LABEL_32;
              }

              v27 = (v24 + 32);
              v28 = (v16 + 32);
              while (1)
              {
                v30 = *v27++;
                v29 = v30;
                v31 = *v28++;
                if (v29 != v31)
                {
                  break;
                }

                if (!--v25)
                {
                  goto LABEL_32;
                }
              }
            }
          }

          v21 = (v21 + 1) & v22;
        }

        while (((*(v54 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
      }
    }

    v32 = a3[1];
    v33 = *(v32 + 16);
    v34 = v32 + 32;
    if (!*a3)
    {
      sub_1B03A912C(v16, v15, v34, v33);
      if ((v36 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_29:
      if (a8)
      {

        goto LABEL_48;
      }

      v37 = a3[1];
      v38 = *(v37 + 16);
      v39 = v37 + 32;
      if (*a3)
      {
        v40 = sub_1B0BA7CA4(v16, v15, v39, v38, (*a3 + 16));
        if ((v41 & 1) == 0)
        {
LABEL_42:
          v47 = v40;

          v48 = a3[2];
          result = swift_isUniquelyReferenced_nonNull_native();
          a3[2] = v48;
          if ((result & 1) == 0)
          {
            result = sub_1B0B94750(v48);
            v48 = result;
            a3[2] = result;
          }

          if ((v47 & 0x8000000000000000) == 0)
          {
            if (v47 >= *(v48 + 16))
            {
              goto LABEL_60;
            }

            v46 = v48 + 2 * v47;
            goto LABEL_47;
          }

LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          return result;
        }
      }

      else
      {
        v40 = sub_1B03A912C(v16, v15, v39, v38);
        if ((v42 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      sub_1B03A5284(v16, v15);

      v43 = a3[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      a3[2] = v43;
      if ((result & 1) == 0)
      {
        result = sub_1B03A4FB4(0, *(v43 + 16) + 1, 1);
        v43 = a3[2];
      }

      v45 = *(v43 + 16);
      v44 = *(v43 + 24);
      if (v45 >= v44 >> 1)
      {
        result = sub_1B03A4FB4((v44 > 1), v45 + 1, 1);
        v43 = a3[2];
      }

      *(v43 + 16) = v45 + 1;
      v46 = v43 + 2 * v45;
LABEL_47:
      *(v46 + 32) = -16384;
LABEL_48:
      if (*(a3[1] + 16) < a7)
      {
        goto LABEL_49;
      }

LABEL_56:
      v49 = 0;
      break;
    }

    sub_1B0BA7CA4(v16, v15, v34, v33, (*a3 + 16));
    if (v35)
    {
      goto LABEL_29;
    }

LABEL_32:

LABEL_49:
    ++v12;
    v49 = 1;
    v13 = a5 + 40;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_53:
  sub_1B0398EFC(v55, &qword_1EB6E5328, &qword_1B0ECE390);

  return v49;
}

uint64_t sub_1B03AC0B0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RunningTask();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1E69E7CD0];
  v21 = MEMORY[0x1E69E7CD0];
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_1B0450D48(v10, v7, type metadata accessor for RunningTask);
      sub_1B0450DB0(v7, v19);
      if (v20)
      {
        if (v20 == 1)
        {
          sub_1B0450C74(v19, v16);
          v12 = v17;
          v13 = v18;
          __swift_project_boxed_opaque_existential_0(v16, v17);
          (*(v13 + 32))(&v22, v12, v13);
          v14 = v23;
          LODWORD(v13) = v24;
          v25 = v22;
          sub_1B039E440(&v25);
          __swift_destroy_boxed_opaque_existential_0Tm(v16);
          sub_1B03AB2E0(v19, v14, v13);
        }
      }

      else
      {
        sub_1B0B7ABB4(v19);
      }

      sub_1B0450ED8(v7, type metadata accessor for RunningTask);
      v10 += v11;
      --v9;
    }

    while (v9);
    return v21;
  }

  return result;
}

uint64_t sub_1B03AC27C(uint64_t a1, uint64_t a2)
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
      v7 = *v4;
      v8 = v6 >> 14;
      if (v6 >> 14 > 1)
      {
        if (v8 == 2)
        {
          v12 = v7 & 0xC000;
          v13 = (v7 ^ v6);
          if (v12 != 0x8000 || v13 != 0)
          {
            return 0;
          }
        }

        else if (*v3 > 0xC001u)
        {
          if (v6 == 49154)
          {
            if (v7 != 49154)
            {
              return 0;
            }
          }

          else if (v7 != 49155)
          {
            return 0;
          }
        }

        else if (v6 == 49152)
        {
          if (v7 != 49152)
          {
            return 0;
          }
        }

        else if (v7 != 49153)
        {
          return 0;
        }
      }

      else if (v8)
      {
        v9 = v7 & 0xC000;
        v10 = (v7 ^ v6);
        if (v9 != 0x4000 || v10 != 0)
        {
          return 0;
        }
      }

      else
      {
        if (v7 >> 14)
        {
          v5 = 0;
        }

        else
        {
          v5 = v6 == v7;
        }

        if (!v5)
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

unint64_t sub_1B03AC384(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a10;
  v52[0] = a3;
  v52[1] = a4;
  v52[2] = a5;
  v52[3] = sub_1B03AAF64;
  v52[4] = 0;
  v52[5] = sub_1B0BCC8EC;
  v52[6] = v14;
  v52[7] = sub_1B03AAF94;
  v52[8] = 0;
  v52[9] = sub_1B0BCCDFC;
  v52[10] = 0;
  v15 = *(a5 + 16);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v15)
  {
LABEL_46:
    v17 = 1;
LABEL_47:
    sub_1B0398EFC(v52, &qword_1EB6E5330, &qword_1B0ECE398);

    return v17;
  }

  v17 = 0;
  v18 = 0;
  v19 = (a4 + 40);
  v45 = v14;
  v46 = a3;
  while (v18 < *(a4 + 16))
  {
    if (v18 >= *(a5 + 16))
    {
      goto LABEL_49;
    }

    v20 = *v19;
    v21 = *(v19 - 1);
    v22 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((sub_1B03B5DDC(v22, v20, *(v14 + 16)) & 1) == 0)
    {

LABEL_16:

      goto LABEL_17;
    }

    if (!v21 || (sub_1B03B5DDC(v21, v20, a1) & 1) != 0)
    {
      goto LABEL_16;
    }

    v23 = a2[1];
    v24 = *(v23 + 16);
    v25 = v23 + 32;
    if (*a2)
    {
      sub_1B0BA7CA4(v21, v20, v25, v24, (*a2 + 16));
      if ((v26 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1B03A912C(v21, v20, v25, v24);
      if ((v30 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v27 = *(a4 + 16);
    v28 = a4 + 32;
    if (a3)
    {
      result = sub_1B0BA7CA4(v21, v20, v28, v27, (a3 + 16));
      if (v29)
      {
        goto LABEL_23;
      }
    }

    else
    {
      result = sub_1B03A912C(v21, v20, v28, v27);
      if (v31)
      {
        goto LABEL_23;
      }
    }

    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }

    if (result >= *(a5 + 16))
    {
      goto LABEL_52;
    }

    if (*(a5 + 32 + result) != 1)
    {
LABEL_24:
      v34 = 0x4000;
      goto LABEL_31;
    }

LABEL_23:
    v32 = sub_1B03ABBC8(a6, a7);
    v33 = sub_1B03B5DDC(v21, v20, v32);

    if (v33)
    {
      goto LABEL_24;
    }

    if (*(a9 + 16) && (sub_1B03AB888(v21, v20), (v35 & 1) != 0))
    {
      v34 = 16385;
    }

    else if (sub_1B03B5DDC(v21, v20, a10))
    {
      v34 = 16386;
    }

    else
    {
      v34 = 16387;
    }

LABEL_31:
    v49 = v34;
    v36 = a2[1];
    v37 = *(v36 + 16);
    v38 = v36 + 32;
    if (*a2)
    {
      v39 = sub_1B0BA7CA4(v21, v20, v38, v37, (*a2 + 16));
      if ((v40 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v39 = sub_1B03A912C(v21, v20, v38, v37);
      if ((v41 & 1) == 0)
      {
LABEL_40:
        v44 = v39;

        v42 = a2[2];
        result = swift_isUniquelyReferenced_nonNull_native();
        a2[2] = v42;
        if ((result & 1) == 0)
        {
          result = sub_1B0B94750(v42);
          v42 = result;
          a2[2] = result;
        }

        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_51;
        }

        if (v44 >= *(v42 + 16))
        {
          goto LABEL_53;
        }

        goto LABEL_44;
      }
    }

    sub_1B03A5284(v21, v20);

    v42 = a2[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    a2[2] = v42;
    if ((result & 1) == 0)
    {
      result = sub_1B03A4FB4(0, *(v42 + 16) + 1, 1);
      v42 = a2[2];
    }

    v44 = *(v42 + 16);
    v43 = *(v42 + 24);
    if (v44 >= v43 >> 1)
    {
      result = sub_1B03A4FB4((v43 > 1), v44 + 1, 1);
      v42 = a2[2];
    }

    *(v42 + 16) = v44 + 1;
LABEL_44:
    *(v42 + 2 * v44 + 32) = v49;
    v14 = v45;
    a3 = v46;
    if (*(a2[1] + 16) >= a11)
    {
      goto LABEL_47;
    }

LABEL_17:
    v17 = ++v18 >= v15;
    v19 += 4;
    if (v15 == v18)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_1B03AC7E0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

IMAP2Connection::MailboxesSelectionUsage sub_1B03AC81C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result.elements._rawValue = MailboxesSelectionUsage.init()().elements._rawValue;
  rawValue = result.elements._rawValue;
  v5 = *(v2 + 168);
  v6 = *(v2 + 192);
  if (v6 == 1)
  {
    v7 = 0;
    v8 = *(v5 + 16);
    v9 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v10 = v5 - 128 + 176 * v7;
    while (v8 != v7)
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_66;
      }

      ++v7;
      v11 = v10 + 176;
      v12 = *(v10 + 256);
      if (*(*(v10 + 296) + 16))
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      v10 += 176;
      if (!v13)
      {
        v14 = *v11;
        v66 = *(v11 + 8);
        v67 = v6;
        v15 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v16 = *(v12 + v15);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result.elements._rawValue = swift_isUniquelyReferenced_nonNull_native();
        if ((result.elements._rawValue & 1) == 0)
        {
          result.elements._rawValue = sub_1B03B9450(0, v9[2] + 1, 1, v9);
          v9 = result.elements._rawValue;
        }

        v18 = v9[2];
        v17 = v9[3];
        if (v18 >= v17 >> 1)
        {
          result.elements._rawValue = sub_1B03B9450((v17 > 1), v18 + 1, 1, v9);
          v9 = result.elements._rawValue;
        }

        v9[2] = v18 + 1;
        v19 = &v9[3 * v18];
        *(v19 + 8) = v16;
        v19[5] = v14;
        v6 = v67;
        *(v19 + 12) = v66;
        goto LABEL_3;
      }
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v20 = v9[2];
  if (v20)
  {
    v21 = 0;
    v22 = (v9 + 6);
    while (v21 < v9[2])
    {
      ++v21;
      v23 = *v22;
      v24 = *(v22 - 1);
      v25 = *(v22 - 4);
      v26 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result.elements._rawValue = MailboxesSelectionUsage.subscript.setter(v26, v23, 1, 1, v25);
      v22 += 6;
      if (v20 == v21)
      {
        goto LABEL_20;
      }
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_20:

  v27 = *(v3 + 280);
  result.elements._rawValue = sub_1B03ACCBC(*(v3 + 264), *(v3 + 272));
  v28 = result.elements._rawValue;
  v29 = *(result.elements._rawValue + 2);
  if (v29)
  {
    v30 = 0;
    v31 = (result.elements._rawValue + 48);
    while (v30 < v28[2])
    {
      ++v30;
      v32 = *v31;
      v33 = *(v31 - 1);
      v34 = *(v31 - 4);
      v35 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result.elements._rawValue = MailboxesSelectionUsage.subscript.setter(v35, v32, 2, 1, v34);
      v31 += 6;
      if (v29 == v30)
      {
        goto LABEL_24;
      }
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_24:

  if (v6)
  {
    v36 = 0;
    v37 = *(v5 + 16);
    v38 = MEMORY[0x1E69E7CC0];
LABEL_26:
    v39 = v5 - 128 + 176 * v36;
    while (v37 != v36)
    {
      if (v36 >= *(v5 + 16))
      {
        goto LABEL_67;
      }

      ++v36;
      v40 = v39 + 176;
      v41 = *(v39 + 256);
      if (*(*(v39 + 296) + 16))
      {
        v42 = 1;
      }

      else
      {
        v42 = v41 == 0;
      }

      v39 += 176;
      if (!v42)
      {
        v43 = *v40;
        v44 = *(v40 + 8);
        v45 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v46 = *(v41 + v45);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result.elements._rawValue = swift_isUniquelyReferenced_nonNull_native();
        if ((result.elements._rawValue & 1) == 0)
        {
          result.elements._rawValue = sub_1B03B9450(0, v38[2] + 1, 1, v38);
          v38 = result.elements._rawValue;
        }

        v48 = v38[2];
        v47 = v38[3];
        if (v48 >= v47 >> 1)
        {
          result.elements._rawValue = sub_1B03B9450((v47 > 1), v48 + 1, 1, v38);
          v38 = result.elements._rawValue;
        }

        v38[2] = v48 + 1;
        v49 = &v38[3 * v48];
        *(v49 + 8) = v46;
        v49[5] = v43;
        *(v49 + 12) = v44;
        goto LABEL_26;
      }
    }
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  v50 = v38[2];
  if (!v50)
  {
LABEL_61:

    return rawValue;
  }

  v51 = 0;
  while (v51 < v38[2])
  {
    v52 = &v38[3 * v51 + 4];
    v53 = *v52;
    v54 = *(v52 + 8);
    v55 = *(v52 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result.elements._rawValue = MailboxesSelectionUsage.subscript.getter(v53, rawValue);
    if (result.elements._rawValue)
    {
    }

    else
    {
      v56 = *(a1 + 16);
      if (v56)
      {
        v57 = 0;
        while (1)
        {
          v58 = (a1 + 32 + 16 * v57);
          if ((v58[2] | (v58[2] << 32)) == (v55 | (v55 << 32)))
          {
            v59 = *v58;
            v60 = *(*v58 + 16);
            if (v60 == *(v54 + 16))
            {
              break;
            }
          }

LABEL_47:
          if (++v57 == v56)
          {
            goto LABEL_59;
          }
        }

        if (v60)
        {
          v61 = v59 == v54;
        }

        else
        {
          v61 = 1;
        }

        if (!v61)
        {
          v62 = (v59 + 32);
          v63 = (v54 + 32);
          while (v60)
          {
            if (*v62 != *v63)
            {
              goto LABEL_47;
            }

            ++v62;
            ++v63;
            if (!--v60)
            {
              goto LABEL_58;
            }
          }

          __break(1u);
          goto LABEL_63;
        }

LABEL_58:
        v64 = 0;
        v65 = *(a2 + 16) - v57;
      }

      else
      {
LABEL_59:
        v65 = 0;
        v64 = 1;
      }

      result.elements._rawValue = MailboxesSelectionUsage.subscript.setter(v54, v55, v65, v64, v53);
    }

    if (++v51 == v50)
    {
      goto LABEL_61;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

void *sub_1B03ACCBC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RunningTask();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v10 = *(v5 + 72);
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1B0450D48(v9, v7, type metadata accessor for RunningTask);
    sub_1B0450DB0(v7, &v25);
    if (v28)
    {
      if (v28 == 1)
      {
        v12 = v26;
        v13 = v27;
        sub_1B0450C74(&v25, v22);
        if (v13)
        {
          sub_1B0450ED8(v7, type metadata accessor for RunningTask);
          __swift_destroy_boxed_opaque_existential_0Tm(v22);
        }

        else
        {
          v14 = v23;
          v15 = v24;
          __swift_project_boxed_opaque_existential_0(v22, v23);
          (*(v15 + 32))(&v29, v14, v15);
          sub_1B0450ED8(v7, type metadata accessor for RunningTask);
          v32 = v29;
          sub_1B039E440(&v32);
          __swift_destroy_boxed_opaque_existential_0Tm(v22);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1B03B9450(0, v11[2] + 1, 1, v11);
          }

          v17 = v11[2];
          v16 = v11[3];
          if (v17 >= v16 >> 1)
          {
            v11 = sub_1B03B9450((v16 > 1), v17 + 1, 1, v11);
          }

          v18 = v30;
          v19 = v31;
          v11[2] = v17 + 1;
          v20 = &v11[3 * v17];
          *(v20 + 8) = v12;
          v20[5] = v18;
          *(v20 + 12) = v19;
        }
      }

      else
      {
        sub_1B0450ED8(v7, type metadata accessor for RunningTask);
      }
    }

    else
    {
      sub_1B0450ED8(v7, type metadata accessor for RunningTask);
      sub_1B0B7ABB4(&v25);
    }

    v9 += v10;
    --v8;
  }

  while (v8);
  return v11;
}

uint64_t MailboxesSelectionUsage.subscript.getter(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = a3 + 32 + 40 * v4;
    if ((*(v5 + 16) | (*(v5 + 16) << 32)) == (a2 | (a2 << 32)))
    {
      v6 = *(v5 + 8);
      v7 = *(v6 + 16);
      if (v7 == *(result + 16))
      {
        break;
      }
    }

LABEL_3:
    if (++v4 == v3)
    {
      return 0;
    }
  }

  if (v7)
  {
    v8 = v6 == result;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
LABEL_14:
    v11 = *(v5 + 32);
    return *(v5 + 24);
  }

  else
  {
    v9 = (v6 + 32);
    v10 = (result + 32);
    while (v7)
    {
      if (*v9 != *v10)
      {
        goto LABEL_3;
      }

      ++v9;
      ++v10;
      if (!--v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B03AD054(uint64_t a1, unsigned int a2)
{
  v5 = *(v2 + 32);
  v6 = sub_1B03ABBC8(*(v2 + 16), *(v2 + 24));
  LOBYTE(a2) = sub_1B03B5DDC(a1, a2, v6);

  return a2 & 1;
}

void sub_1B03AD160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for State.Logger();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 8);
  v13 = (v4 + 8);
  v15 = *(v14 + 16);

  v16 = sub_1B03AD360(v13, a1, a2, a3);
  v17 = *(*v13 + 16);
  if (v17 < v16)
  {
    __break(1u);
  }

  else
  {
    sub_1B03AD818(v16, v17);
    v18 = *(*v13 + 16);
    v19 = v15 - v18;
    if (v15 != v18)
    {
      sub_1B0450D48(a4, v12, type metadata accessor for State.Logger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v20 = sub_1B0E43988();
      v21 = sub_1B0E458D8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 68158208;
        *(v22 + 4) = 2;
        *(v22 + 8) = 256;
        v23 = v12[*(v9 + 20)];
        sub_1B0450ED8(v12, type metadata accessor for State.Logger);
        *(v22 + 10) = v23;
        *(v22 + 11) = 2048;
        *(v22 + 13) = v19;
        _os_log_impl(&dword_1B0389000, v20, v21, "[%.*hhx] Pruned %ld mailbox task(s) without mailbox affinity.", v22, 0x15u);
        MEMORY[0x1B272C230](v22, -1, -1);
      }

      else
      {
        sub_1B0450ED8(v12, type metadata accessor for State.Logger);
      }
    }
  }
}

uint64_t sub_1B03AD360(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for RunningTask();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  v48 = a1;
  v19 = *a1;

  v20 = sub_1B03AD728(v19, a2, a3);
  LODWORD(v54) = v21;

  v55 = v4;
  if (v4)
  {
  }

  v51 = v18;
  v47 = v16;
  v53 = v20;

  if (v54)
  {
    v53 = *(v19 + 16);

LABEL_8:

    return v53;
  }

  v45 = a4;
  v46 = v13;
  v49 = a3;
  v50 = a2;
  v23 = v53 + 1;
  if (!__OFADD__(v53, 1))
  {
    v24 = v19;
    v26 = (v19 + 16);
    v25 = *(v19 + 16);
    v27 = v51;
    if (v23 == v25)
    {
LABEL_7:

      goto LABEL_8;
    }

    while (v23 < v25)
    {
      v28 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v54 = v24;
      v29 = v24 + v28;
      v30 = *(v52 + 72);
      sub_1B0450D48(v24 + v28 + v30 * v23, v27, type metadata accessor for RunningTask);
      v31 = v55;
      v32 = sub_1B0450F38(v27, v50, v49);
      v33 = v27;
      v34 = v32;
      result = sub_1B0450ED8(v33, type metadata accessor for RunningTask);
      v55 = v31;
      if (v31)
      {
      }

      if (v34)
      {
        v27 = v51;
        v24 = v54;
      }

      else
      {
        v35 = v53;
        if (v23 == v53)
        {
          v27 = v51;
          v24 = v54;
        }

        else
        {
          if ((v53 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v36 = *v26;
          if (v53 >= v36)
          {
            goto LABEL_27;
          }

          v37 = v30 * v53;
          result = sub_1B0450D48(&v29[v30 * v53], v47, type metadata accessor for RunningTask);
          if (v23 >= v36)
          {
            goto LABEL_28;
          }

          v38 = v30 * v23;
          v39 = &v29[v30 * v23];
          v40 = v46;
          sub_1B0450D48(v39, v46, type metadata accessor for RunningTask);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_1B0B8CA2C(v54);
          }

          v41 = v47;
          v27 = v51;
          v42 = v54;
          v43 = v54 + v28;
          v44 = &v43[v37];
          v24 = v54;
          result = sub_1B0B7DE7C(v40, v44);
          if (v23 >= v42[2])
          {
            goto LABEL_29;
          }

          result = sub_1B0B7DE7C(v41, &v43[v38]);
          *v48 = v24;
          v35 = v53;
        }

        v53 = v35 + 1;
      }

      ++v23;
      v26 = v24 + 2;
      v25 = v24[2];
      if (v23 == v25)
      {
        goto LABEL_7;
      }
    }

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

  __break(1u);
  return result;
}