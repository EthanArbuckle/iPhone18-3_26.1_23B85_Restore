uint64_t sub_1CF6E6314(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4, int a5)
{
  v10 = sub_1CF9E7FC8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E5CF8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v22 = 0;
  v141 = *(a3 + 30);
  v23 = a3[13];
  v138 = a3[12];
  v139 = v23;
  v140 = a3[14];
  v24 = a3[9];
  v134 = a3[8];
  v135 = v24;
  v25 = a3[11];
  v136 = a3[10];
  v137 = v25;
  v26 = a3[5];
  v130 = a3[4];
  v131 = v26;
  v27 = a3[7];
  v132 = a3[6];
  v133 = v27;
  v28 = a3[1];
  v126 = *a3;
  v127 = v28;
  v29 = a3[3];
  v128 = a3[2];
  v129 = v29;
  if (*(a1 + 8) > 1u)
  {
    return v22;
  }

  v115 = v18;
  v116 = &v104 - v19;
  v113 = v21;
  v114 = v20;
  v112 = v10;
  v30 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48));
  v119 = type metadata accessor for ItemMetadata();
  v31 = *(v119 + 56);
  v121 = v30;
  v32 = &v30[v31];
  v33 = v32[1];
  v118 = a5;
  v117 = v11;
  v111 = v14;
  if (v33)
  {
    v34 = *v32;
    v35 = v33;
  }

  else
  {
    v34 = *(a1 + 128);
    v35 = *(a1 + 136);
  }

  v36 = a2;
  v37 = *(a2 + 80);
  v38 = *(v36 + 88);

  v39 = sub_1CEFE7394(v34, v35);
  v110 = a4;
  if (!v40)
  {
    goto LABEL_11;
  }

  if (v39 != 12565487 || v40 != 0xA300000000000000)
  {
    v41 = sub_1CF9E8048();

    if (v41)
    {
      goto LABEL_10;
    }

LABEL_11:

    v45 = v35;
    goto LABEL_12;
  }

LABEL_10:
  v42 = sub_1CF9E69E8();
  v43 = sub_1CF025150(v42, v34, v35);
  v34 = MEMORY[0x1D3868C10](v43);
  v45 = v44;

LABEL_12:
  v46 = sub_1CEFE7394(v37, v38);
  if (!v47)
  {
    goto LABEL_19;
  }

  if (v46 == 12565487 && v47 == 0xA300000000000000)
  {

    goto LABEL_17;
  }

  v48 = sub_1CF9E8048();

  if ((v48 & 1) == 0)
  {
LABEL_19:

    if (v34 != v37)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_17:
  v49 = sub_1CF9E69E8();
  v50 = sub_1CF025150(v49, v37, v38);
  v51 = MEMORY[0x1D3868C10](v50);
  v38 = v52;

  if (v34 != v51)
  {
LABEL_22:
    v54 = sub_1CF9E8048();

    if (v54)
    {
      v53 = 0;
    }

    else
    {
      v53 = 2;
    }

    goto LABEL_25;
  }

LABEL_20:
  if (v45 != v38)
  {
    goto LABEL_22;
  }

  v53 = 0;
LABEL_25:
  v56 = v119;
  v55 = v120;
  v57 = *v121;
  v58 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48));
  if (qword_1CFA12E28[v57] == qword_1CFA12E28[*v58])
  {
    v22 = v53;
  }

  else
  {
    v22 = v53 | 8;
  }

  if (v57 != 1)
  {
    v59 = v121[v56[28]];
    v60 = *MEMORY[0x1E69E7020];
    v107 = v58;
    v106 = v60;
    if (v59 == 1)
    {
      v61 = v116;
      v62 = *(v117 + 104);
      v108 = (v117 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v109 = v62;
      v63 = v111;
      v64 = v112;
      v105 = v22;
    }

    else
    {
      v105 = v56[8];
      v65 = v117;
      v66 = *(v117 + 104);
      v108 = (v117 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v63 = v111;
      v64 = v112;
      v66(v111, v60, v112);
      sub_1CF515680(v63);
      v104 = *(v65 + 8);
      v104(v63, v64);
      v109 = v66;
      v66(v63, v60, v64);
      v56 = v119;
      v67 = v113;
      sub_1CF515680(v63);
      v104(v63, v64);
      v105 = sub_1CF9E5CD8();
      v68 = *(v114 + 8);
      (v68)(v67, v115);
      v61 = v116;
      v68();
      v69 = v22 | 0x10;
      if (!v105)
      {
        v69 = v22;
      }

      if (*&v121[v56[26]] != *&v58[v56[26]])
      {
        v69 |= 0x100uLL;
      }

      v70 = v56[13];
      v71 = v121[v70];
      LODWORD(v70) = v58[v70];
      v72 = v70 == 0;
      if (v70)
      {
        v73 = v69 | 0x1000000;
      }

      else
      {
        v73 = v69;
      }

      if (v72)
      {
        v69 |= 0x800000uLL;
      }

      if (v71 != 1)
      {
        v69 = v73;
      }

      v105 = v69;
    }

    v116 = v56[7];
    v74 = v106;
    v75 = v109;
    v109(v63, v106, v64);
    sub_1CF515680(v63);
    v76 = *(v117 + 8);
    v76(v63, v64);
    v75(v63, v74, v64);
    v58 = v107;
    v77 = v113;
    sub_1CF515680(v63);
    v76(v63, v64);
    v56 = v119;
    v78 = sub_1CF9E5CD8();
    v79 = *(v114 + 8);
    v80 = v77;
    v81 = v115;
    v79(v80, v115);
    v79(v61, v81);
    if (v78)
    {
      v22 = v105 | 0x20;
    }

    else
    {
      v22 = v105;
    }

    if ((sub_1CF51586C(&v58[v56[30]]) & 1) == 0)
    {
      v22 |= 0x40uLL;
    }

    v55 = v120;
  }

  v82 = v56[32];
  v83 = &v121[v82];
  v84 = v121[v82 + 8];
  v85 = &v58[v82];
  v86 = v58[v82 + 8];
  if (v84)
  {
    if (v86)
    {
      goto LABEL_57;
    }

LABEL_56:
    v22 |= 0x400uLL;
    goto LABEL_57;
  }

  if (*v83 != *v85)
  {
    v86 = 1;
  }

  if (v86)
  {
    goto LABEL_56;
  }

LABEL_57:
  v87 = v56[31];
  v88 = *&v58[v87];
  if (*&v121[v87])
  {
    if (v88)
    {
      v89 = *&v58[v87];

      v91 = sub_1CF6BEA9C(v90, v88);

      if (v91)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_62;
  }

  if (v88)
  {
LABEL_62:
    v22 |= 0x800uLL;
  }

LABEL_63:
  v92 = v56[15];
  v93 = v121[v92];
  v94 = v58[v92];
  v95 = v118;
  if (v93 == 1)
  {
    if ((v94 & 1) == 0 && !v121[v56[18]])
    {
      v22 |= 0x80000uLL;
    }
  }

  else if (v94)
  {
    v22 |= 0x100000uLL;
  }

  if ((*(v55 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions) & 0x40) == 0)
  {
    v96 = v56[10];
    v97 = v121[v96];
    v98 = v58[v96];
    if (v97 == 1)
    {
      if (!v98)
      {
        v22 |= 0x2000000uLL;
      }
    }

    else if (v98)
    {
      v22 |= 0x4000000uLL;
    }
  }

  if ((v121[v56[20]] & 1) == 0)
  {
    v122[12] = v138;
    v123 = v139;
    v124 = v140;
    v125 = v141;
    v122[8] = v134;
    v122[9] = v135;
    v122[10] = v136;
    v122[11] = v137;
    v122[4] = v130;
    v122[5] = v131;
    v122[6] = v132;
    v122[7] = v133;
    v122[0] = v126;
    v122[1] = v127;
    v122[2] = v128;
    v122[3] = v129;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v122) != 1 && (v95 & 1) != 0)
    {
      v99 = *v121;
      if (v99 != 1 && v99 != 2 && v121[v56[12]] != 1 && (v121[v56[11]] & 1) == 0)
      {
        v100 = v56[21];
        v101 = v121[v100];
        if ((v122[0] & 0x40) != 0)
        {
          if (v121[v100])
          {
            v102 = sub_1CEFF8538(v123, *(&v123 + 1), 0, v110, 0, 1u);
            if ((v102 == 1002 || v102 == 3) && v121[v100] != 5)
            {
              return v22 | 0x100000000;
            }
          }

          else
          {
            return v22 | 0x80000000;
          }
        }

        else if (v121[v100])
        {
          return v22 | 0x40000000;
        }
      }
    }
  }

  return v22;
}

uint64_t sub_1CF6E6D28()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v34 - v4;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = v34 - v12;
  v13 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v0 + v13, v5, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    goto LABEL_14;
  }

  v14 = objc_opt_self();
  v15 = sub_1CF9E5928();
  v16 = *(v7 + 8);
  v16(v5, v6);
  v17 = [v14 fp:v15 supportDirectoryForVolume:?];

  if (!v17)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1CF9E59D8();

  sub_1CF9E5958();
  v38 = v16;
  v16(v10, v6);
  if (qword_1EDEA70C8 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDEA70D0;
  if (qword_1EDEA70E0 != -1)
  {
    swift_once();
  }

  v39 = v1;
  v19 = qword_1EDEA70E8;
  v20 = fpfs_current_log();
  v37 = v34;
  MEMORY[0x1EEE9AC00](v20);
  v21 = v40;
  v34[-2] = v18;
  v34[-1] = v21;
  v23 = v22;
  if (!v22)
  {
    v23 = fpfs_current_log();
  }

  v35 = v20;
  v36 = fpfs_adopt_log();
  v48 = 0;
  v49 = 1;
  aBlock = sub_1CF9E73C8();
  v42 = v24;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v25 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v25);

  sub_1CF9E6978();

  v26 = __fp_log_fork();

  v34[1] = v34;
  v48 = v26;
  v49 = 0;
  MEMORY[0x1EEE9AC00](v27);
  v34[-8] = v23;
  v34[-7] = &v48;
  v34[-6] = v19;
  v34[-5] = "purgeAndWait(at:)";
  v34[-4] = 17;
  LOBYTE(v34[-3]) = 2;
  v34[-2] = sub_1CF6FC3C0;
  v34[-1] = &v34[-4];
  v50 = 1;
  v47 = 0;
  v28 = swift_allocObject();
  v28[2] = &v50;
  v28[3] = sub_1CF2B1698;
  v28[4] = &v34[-10];
  v28[5] = &v47;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1CF2B16B0;
  *(v29 + 24) = v28;
  v45 = sub_1CEFFD054;
  v46 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1CEFFD02C;
  v44 = &block_descriptor_309;
  v30 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v19, v30);
  _Block_release(v30);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!v47)
  {
    if ((v50 & 1) == 0)
    {

      v31 = v36;
      v32 = fpfs_adopt_log();

      v38(v40, v6);
      return 1;
    }

    goto LABEL_16;
  }

LABEL_17:
  swift_willThrow();

  result = fpfs_adopt_log();
  __break(1u);
  return result;
}

uint64_t sub_1CF6E7300(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v98 = a1;
  v10 = sub_1CF9E5248();
  v92 = *(v10 - 8);
  v11 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E5268();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a5;
  result = sub_1CF6CF224("checkBackupManifest()", 21, 2, 3432);
  if ((result & 1) == 0)
  {
    sub_1CF9E5228();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BCE0(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v15 + 8))(v18, v14);
    return swift_willThrow();
  }

  if (a2)
  {
    v20 = v98;
    v21 = *(v98 + 8);
    if (v21 != 2 || *v98)
    {
      v22 = v6;
      if (v21 == 1)
      {
        v29 = a6[3];
        MEMORY[0x1EEE9AC00](result);
        *(&v91 - 2) = a6;
        *(&v91 - 1) = v30;
        sub_1CF1E87A4(5, sub_1CF6FCACC, (&v91 - 4));
        if (!v6)
        {
          v27 = v32;
          v92 = v31;

          v28 = 1;
          goto LABEL_17;
        }
      }

      else
      {
        if (*(v98 + 8))
        {
          v27 = 0;
          v28 = 1;
          v92 = 0xE000000000000000;
          goto LABEL_17;
        }

        v23 = a6[3];
        MEMORY[0x1EEE9AC00](result);
        *(&v91 - 2) = a6;
        *(&v91 - 2) = v24;
        sub_1CF1E87A4(5, sub_1CF6FCAE8, (&v91 - 4));
        if (!v6)
        {
          v27 = v26;
          v92 = v25;
          v28 = 1;
LABEL_17:
          v36 = 2;
          v33 = v93;
          goto LABEL_18;
        }
      }

      v33 = v93;
      v34 = v6;
      sub_1CF9E50F8();
      sub_1CF00BCE0(&qword_1EDEAB460, MEMORY[0x1E6967E70]);
      v35 = sub_1CF9E5658();

      (*(v92 + 8))(v13, v10);
      if ((v35 & 1) == 0)
      {
      }

      v27 = 0;
      v28 = 0;
      v22 = 0;
      v92 = 0xE000000000000000;
      v36 = 3;
LABEL_18:
      v37 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48));
      if (*v37 - 1 < 2 || (v37[*(type metadata accessor for ItemMetadata() + 80)] & 1) != 0)
      {
        if ((v28 & 1) == 0)
        {
          v91 = v22;
          v38 = 1;
          goto LABEL_30;
        }
      }

      else
      {
        v39 = *(v20 + 40);
        v40 = v39 == v27;
        if (v39 == v27)
        {
          v41 = v28;
        }

        else
        {
          v41 = 0;
        }

        if (v40)
        {
          v38 = 1;
        }

        else
        {
          v38 = v36;
        }

        if ((v41 & 1) == 0)
        {
          v91 = v22;
LABEL_30:
          v42 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredBackupManifestVsFSSnapshotDiffCounters;
          v93 = v38;
          v43 = v38 & -v38;
          swift_beginAccess();
          sub_1CEFF7124(0);
          v44 = *(v33 + v42);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v96 = *(v33 + v42);
          v46 = v96;
          *(v33 + v42) = 0x8000000000000000;
          v47 = sub_1CF7D52B4(v43);
          v49 = v46[2];
          v50 = (v48 & 1) == 0;
          v51 = __OFADD__(v49, v50);
          v52 = v49 + v50;
          if (v51)
          {
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          LOBYTE(v20) = v48;
          if (v46[3] < v52)
          {
            sub_1CF7C8980(v52, isUniquelyReferenced_nonNull_native);
            v46 = v96;
            v47 = sub_1CF7D52B4(v43);
            if ((v20 & 1) == (v53 & 1))
            {
LABEL_35:
              *(v33 + v42) = v46;
              if ((v20 & 1) == 0)
              {
                goto LABEL_36;
              }

LABEL_38:
              while (1)
              {
                v56 = v46[7];
                v57 = *(v56 + 8 * v47);
                v51 = __OFADD__(v57, 1);
                v58 = v57 + 1;
                if (!v51)
                {
                  break;
                }

LABEL_59:
                __break(1u);
LABEL_60:
                while (1)
                {
                  __break(1u);
LABEL_61:
                  __break(1u);
LABEL_62:
                  v90 = v47;
                  sub_1CF7D17DC();
                  v47 = v90;
                  v46 = v96;
                  *(v33 + v42) = v96;
                  if (v20)
                  {
                    break;
                  }

LABEL_36:
                  v46[(v47 >> 6) + 8] |= 1 << v47;
                  *(v46[6] + 8 * v47) = v43;
                  *(v46[7] + 8 * v47) = 0;
                  v54 = v46[2];
                  v51 = __OFADD__(v54, 1);
                  v55 = v54 + 1;
                  if (!v51)
                  {
                    v46[2] = v55;
                    goto LABEL_38;
                  }
                }
              }

              *(v56 + 8 * v47) = v58;
              swift_endAccess();
              if (v93 == v43)
              {
LABEL_40:
                v59 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInBackupManifestCheck;
                v47 = swift_beginAccess();
                v60 = *(v33 + v59);
                v51 = __OFADD__(v60, 1);
                v61 = v60 + 1;
                if (v51)
                {
                  goto LABEL_61;
                }

                *(v33 + v59) = v61;
                v62 = *(v33 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler);
                v63 = *(v33 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler + 8);
                v64 = v98;
                v65 = *(v98 + 24);
                v94 = *(v98 + 16);
                v95 = v65;

                v96 = VFSItemID.description.getter(v66, v67);
                v97 = v68;
                MEMORY[0x1D3868CC0](47, 0xE100000000000000);
                v69 = *(v64 + 128);
                v70 = *(v64 + 136);
                v71 = sub_1CF9E6888();
                v72 = [v71 fp_obfuscatedFilename];

                v73 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v75 = v74;

                MEMORY[0x1D3868CC0](v73, v75);

                MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
                v76 = sub_1CF7F55BC(v93);
                MEMORY[0x1D3868CC0](v76);

                MEMORY[0x1D3868CC0](2592, 0xE200000000000000);
                v62(v96, v97);
              }

              v77 = v43 ^ v93;
              while (1)
              {
                v43 = v77 & -v77;
                swift_beginAccess();
                sub_1CEFF7124(sub_1CF193338);
                v78 = *(v33 + v42);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v96 = *(v33 + v42);
                v46 = v96;
                *(v33 + v42) = 0x8000000000000000;
                v47 = sub_1CF7D52B4(v43);
                v80 = v46[2];
                v81 = (v79 & 1) == 0;
                v51 = __OFADD__(v80, v81);
                v82 = v80 + v81;
                if (v51)
                {
                  goto LABEL_58;
                }

                LOBYTE(v20) = v79;
                if (v46[3] < v82)
                {
                  break;
                }

                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_49;
                }

                v89 = v47;
                sub_1CF7D17DC();
                v47 = v89;
                v46 = v96;
                *(v33 + v42) = v96;
                if ((v20 & 1) == 0)
                {
LABEL_50:
                  v46[(v47 >> 6) + 8] |= 1 << v47;
                  *(v46[6] + 8 * v47) = v43;
                  *(v46[7] + 8 * v47) = 0;
                  v84 = v46[2];
                  v51 = __OFADD__(v84, 1);
                  v85 = v84 + 1;
                  if (v51)
                  {
                    goto LABEL_60;
                  }

                  v46[2] = v85;
                }

LABEL_52:
                v86 = v46[7];
                v87 = *(v86 + 8 * v47);
                v51 = __OFADD__(v87, 1);
                v88 = v87 + 1;
                if (v51)
                {
                  goto LABEL_59;
                }

                *(v86 + 8 * v47) = v88;
                swift_endAccess();
                v40 = v77 == v43;
                v77 ^= v43;
                if (v40)
                {
                  goto LABEL_40;
                }
              }

              sub_1CF7C8980(v82, isUniquelyReferenced_nonNull_native);
              v46 = v96;
              v47 = sub_1CF7D52B4(v77 & -v77);
              if ((v20 & 1) != (v83 & 1))
              {
                goto LABEL_33;
              }

LABEL_49:
              *(v33 + v42) = v46;
              if ((v20 & 1) == 0)
              {
                goto LABEL_50;
              }

              goto LABEL_52;
            }

LABEL_33:
            v47 = sub_1CF9E8108();
            __break(1u);
          }

          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_35;
        }
      }
    }
  }

  return result;
}

uint64_t BrokenInvariants.bitDescription.getter(uint64_t a1)
{
  if (a1 > 0x1FFFFFFF)
  {
    if (a1 > 0x7FFFFFFFFFFLL)
    {
      if (a1 <= 0x3FFFFFFFFFFFFLL)
      {
        if (a1 > 0x3FFFFFFFFFFFLL)
        {
          if (a1 > 0xFFFFFFFFFFFFLL)
          {
            v4 = 0x1000000000000;
            v5 = 0xD000000000000024;
            v6 = 0x2000000000000;
          }

          else
          {
            v4 = 0x400000000000;
            v5 = 0xD000000000000016;
            v6 = 0x800000000000;
          }

          v7 = 0xD000000000000021;
          goto LABEL_109;
        }

        if (a1 != 0x80000000000)
        {
          v4 = 0x100000000000;
          v5 = 0xD000000000000016;
          v6 = 0x200000000000;
          v7 = 0xD000000000000020;
          goto LABEL_109;
        }

        return 0xD000000000000018;
      }

      if (a1 <= 0x1FFFFFFFFFFFFFLL)
      {
        switch(a1)
        {
          case 0x4000000000000:
            return 0xD000000000000023;
          case 0x8000000000000:
            return 0x797375625F736168;
          case 0x10000000000000:
            return 0xD00000000000001CLL;
        }

        return 0;
      }

      if (a1 <= 0x7FFFFFFFFFFFFFLL)
      {
        v4 = 0x20000000000000;
        v5 = 0xD000000000000020;
        v6 = 0x40000000000000;
        v7 = 0xD000000000000022;
        goto LABEL_109;
      }

      v23 = 0x80000000000000;
      if (a1 == 0x100000000000000)
      {
        v24 = 0xD000000000000019;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      if (a1 <= 0xFFFFFFFFFLL)
      {
        if (a1 > 0xFFFFFFFFLL)
        {
          if (a1 > 0x3FFFFFFFFLL)
          {
            v4 = 0x400000000;
            v5 = 0xD000000000000019;
            v6 = 0x800000000;
            v7 = 0xD000000000000036;
          }

          else
          {
            v4 = 0x100000000;
            v5 = 0xD000000000000020;
            v6 = 0x200000000;
            v7 = 0xD000000000000024;
          }

          goto LABEL_109;
        }

        if (a1 != 0x20000000)
        {
          v14 = 0x40000000;
          v15 = 0xD000000000000019;
          v16 = 0x80000000;
LABEL_80:
          v19 = 0xD00000000000001FLL;
          if (a1 != v16)
          {
            v19 = 0;
          }

          if (a1 == v14)
          {
            return v15;
          }

          else
          {
            return v19;
          }
        }

        return 0xD000000000000018;
      }

      if (a1 <= 0x7FFFFFFFFFLL)
      {
        if (a1 == 0x1000000000)
        {
          return 0xD000000000000019;
        }

        v14 = 0x2000000000;
        v15 = 0xD00000000000001ELL;
        v16 = 0x4000000000;
        goto LABEL_80;
      }

      if (a1 <= 0x1FFFFFFFFFFLL)
      {
        v4 = 0x8000000000;
        v5 = 0xD00000000000001ELL;
        v6 = 0x10000000000;
        v7 = 0xD00000000000002ALL;
        goto LABEL_109;
      }

      v23 = 0x20000000000;
      if (a1 == 0x40000000000)
      {
        v24 = 0xD00000000000001ALL;
      }

      else
      {
        v24 = 0;
      }
    }

    if (a1 == v23)
    {
      return 0xD00000000000001ALL;
    }

    else
    {
      return v24;
    }
  }

  if (a1 < 0x4000)
  {
    if (a1 <= 127)
    {
      if (a1 > 7)
      {
        v1 = 0xD00000000000001FLL;
        if (a1 != 64)
        {
          v1 = 0;
        }

        if (a1 == 32)
        {
          v1 = 0xD00000000000001ALL;
        }

        v2 = 0xD000000000000022;
        if (a1 != 16)
        {
          v2 = 0;
        }

        if (a1 == 8)
        {
          v2 = 0xD000000000000023;
        }

        if (a1 <= 31)
        {
          return v2;
        }

        else
        {
          return v1;
        }
      }

      if (a1 == 1)
      {
        return 0x6F6E5F646C756F63;
      }

      v8 = 0xD000000000000019;
      v9 = 0xD00000000000001ELL;
      if (a1 != 4)
      {
        v9 = 0;
      }

      v10 = a1 == 2;
LABEL_57:
      if (v10)
      {
        return v8;
      }

      else
      {
        return v9;
      }
    }

    if (a1 <= 1023)
    {
      v18 = 0xD00000000000001ALL;
      if (a1 != 512)
      {
        v18 = 0;
      }

      if (a1 == 256)
      {
        v18 = 0xD000000000000014;
      }

      if (a1 == 128)
      {
        return 0xD000000000000014;
      }

      else
      {
        return v18;
      }
    }

    else
    {
      v11 = 0xD00000000000001CLL;
      if (a1 == 0x2000)
      {
        v12 = 0xD00000000000001CLL;
      }

      else
      {
        v12 = 0;
      }

      if (a1 == 4096)
      {
        v12 = 0xD00000000000001ALL;
      }

      v13 = 0xD000000000000019;
      if (a1 != 2048)
      {
        v11 = 0;
      }

      if (a1 != 1024)
      {
        v13 = v11;
      }

      if (a1 <= 4095)
      {
        return v13;
      }

      else
      {
        return v12;
      }
    }
  }

  if (a1 >= 0x200000)
  {
    if (a1 <= 0xFFFFFF)
    {
      v20 = 0xD00000000000001BLL;
      v21 = 0xD00000000000001ALL;
      if (a1 != 0x800000)
      {
        v21 = 0;
      }

      if (a1 != 0x400000)
      {
        v20 = v21;
      }

      if (a1 == 0x200000)
      {
        return 0xD000000000000010;
      }

      else
      {
        return v20;
      }
    }

    if (a1 > 0x7FFFFFF)
    {
      v4 = 0x8000000;
      v5 = 0xD000000000000016;
      v6 = 0x10000000;
      v7 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x1000000;
      v5 = 0xD00000000000002ALL;
      v6 = 0x4000000;
      v7 = 0xD000000000000011;
    }

LABEL_109:
    if (a1 != v6)
    {
      v7 = 0;
    }

    if (a1 == v4)
    {
      return v5;
    }

    else
    {
      return v7;
    }
  }

  if (a1 < 0x20000)
  {
    v17 = 0xD00000000000001ELL;
    if (a1 != 0x10000)
    {
      v17 = 0;
    }

    if (a1 == 0x8000)
    {
      v17 = 0xD00000000000001DLL;
    }

    if (a1 == 0x4000)
    {
      return 0xD00000000000001FLL;
    }

    else
    {
      return v17;
    }
  }

  else
  {
    if (a1 < 0x80000)
    {
      v8 = 0xD000000000000010;
      v9 = 0xD000000000000011;
      if (a1 != 0x40000)
      {
        v9 = 0;
      }

      v10 = a1 == 0x20000;
      goto LABEL_57;
    }

    v22 = 0x7974706D655F7369;
    if (a1 != 0x100000)
    {
      v22 = 0;
    }

    if (a1 == 0x80000)
    {
      return 0x5F656469735F7369;
    }

    else
    {
      return v22;
    }
  }
}

uint64_t FPCKOptions.description.getter(uint64_t a1)
{
  if (a1 > 15)
  {
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        return 0xD000000000000023;
      }

      if (a1 == 128)
      {
        return 0xD00000000000001BLL;
      }
    }

    else
    {
      if (a1 == 16)
      {
        return 0x75705F7261656C63;
      }

      if (a1 == 32)
      {
        return 0xD000000000000018;
      }
    }
  }

  else if (a1 > 3)
  {
    if (a1 == 4)
    {
      return 0xD000000000000015;
    }

    if (a1 == 8)
    {
      return 0xD000000000000018;
    }
  }

  else if (a1 == 1 || a1 == 2)
  {
    return 0xD000000000000021;
  }

  return 0;
}

unint64_t sub_1CF6E8598(uint64_t a1)
{
  if (a1 >= 0x80000)
  {
    if (a1 <= 0xFFFFFFF)
    {
      if (a1 < 0x800000)
      {
        v19 = 0xD000000000000028;
        if (a1 == 0x400000)
        {
          v20 = 0xD000000000000028;
        }

        else
        {
          v20 = 0;
        }

        if (a1 != 0x200000)
        {
          v19 = v20;
        }

        v21 = 0xD00000000000002BLL;
        if (a1 == 0x100000)
        {
          v22 = 0xD00000000000002BLL;
        }

        else
        {
          v22 = 0;
        }

        if (a1 != 0x80000)
        {
          v21 = v22;
        }

        if (a1 < 0x200000)
        {
          return v21;
        }

        else
        {
          return v19;
        }
      }

      else if (a1 <= 0x1FFFFFF)
      {
        if (a1 == 0x1000000)
        {
          v23 = 0xD000000000000032;
        }

        else
        {
          v23 = 0;
        }

        if (a1 == 0x800000)
        {
          return 0xD000000000000032;
        }

        else
        {
          return v23;
        }
      }

      else
      {
        if (a1 == 0x8000000)
        {
          v13 = 0xD000000000000028;
        }

        else
        {
          v13 = 0;
        }

        if (a1 == 0x4000000)
        {
          v14 = 0xD000000000000028;
        }

        else
        {
          v14 = v13;
        }

        if (a1 == 0x2000000)
        {
          return 0xD000000000000028;
        }

        else
        {
          return v14;
        }
      }
    }

    if (a1 > 0x1FFFFFFFFLL)
    {
      if (a1 <= 0x7FFFFFFFFLL)
      {
        v3 = 0x200000000;
        v4 = 0xD00000000000002FLL;
        v8 = 0xD000000000000026;
        if (a1 != 0x400000000)
        {
          v8 = 0;
        }

        goto LABEL_99;
      }

      v3 = 0x800000000;
      v4 = 0xD00000000000002BLL;
      v5 = 0x1000000000;
      v6 = 0xD000000000000030;
      v7 = 0x2000000000;
      v8 = 0xD000000000000022;
    }

    else
    {
      if (a1 <= 0x3FFFFFFF)
      {
        if (a1 == 0x20000000)
        {
          v24 = 0xD000000000000021;
        }

        else
        {
          v24 = 0;
        }

        if (a1 == 0x10000000)
        {
          return 0xD000000000000028;
        }

        else
        {
          return v24;
        }
      }

      v3 = 0x40000000;
      v4 = 0xD000000000000025;
      v5 = 0x80000000;
      v6 = 0xD000000000000022;
      v7 = 0x100000000;
      v8 = 0xD00000000000002FLL;
    }

    if (a1 != v7)
    {
      v8 = 0;
    }

    if (a1 == v5)
    {
      v8 = v6;
    }

LABEL_99:
    if (a1 == v3)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  if (a1 > 511)
  {
    if (a1 >= 0x4000)
    {
      if (a1 < 0x10000)
      {
        v9 = 0xD000000000000021;
        v10 = 0xD00000000000002ALL;
        if (a1 != 0x8000)
        {
          v10 = 0;
        }

        v12 = a1 == 0x4000;
      }

      else
      {
        v9 = 0xD00000000000002ALL;
        v10 = 0xD00000000000002BLL;
        if (a1 == 0x40000)
        {
          v15 = 0xD00000000000002BLL;
        }

        else
        {
          v15 = 0;
        }

        if (a1 != 0x20000)
        {
          v10 = v15;
        }

        v12 = a1 == 0x10000;
      }
    }

    else
    {
      if (a1 > 2047)
      {
        v1 = 0xD000000000000013;
        if (a1 != 0x2000)
        {
          v1 = 0;
        }

        if (a1 == 4096)
        {
          v1 = 0xD000000000000018;
        }

        if (a1 == 2048)
        {
          return 0xD000000000000012;
        }

        else
        {
          return v1;
        }
      }

      v9 = 0xD000000000000015;
      v10 = 0xD000000000000017;
      if (a1 != 1024)
      {
        v10 = 0;
      }

      v12 = a1 == 512;
    }

LABEL_94:
    if (v12)
    {
      return v9;
    }

    else
    {
      return v10;
    }
  }

  if (a1 > 15)
  {
    if (a1 <= 63)
    {
      v9 = 0xD000000000000023;
      v10 = 0xD000000000000017;
      if (a1 != 32)
      {
        v10 = 0;
      }

      v12 = a1 == 16;
    }

    else
    {
      v9 = 0xD000000000000018;
      v10 = 0xD000000000000017;
      if (a1 == 256)
      {
        v11 = 0xD000000000000017;
      }

      else
      {
        v11 = 0;
      }

      if (a1 != 128)
      {
        v10 = v11;
      }

      v12 = a1 == 64;
    }

    goto LABEL_94;
  }

  v16 = 0xD000000000000014;
  v17 = 0x6E65726566666964;
  if (a1 != 8)
  {
    v17 = 0;
  }

  if (a1 != 4)
  {
    v16 = v17;
  }

  v18 = 0xD000000000000013;
  if (a1 != 2)
  {
    v18 = 0;
  }

  if (a1 == 1)
  {
    v18 = 0xD000000000000021;
  }

  if (a1 <= 3)
  {
    return v18;
  }

  else
  {
    return v16;
  }
}

unint64_t sub_1CF6E8B90(uint64_t a1)
{
  if (a1 >= 0x10000)
  {
    if (a1 > 0x3FFFFFF)
    {
      if (a1 > 0x3FFFFFFF)
      {
        if (a1 > 0xFFFFFFFFLL)
        {
          v25 = 0x100000000;
          v26 = 0xD000000000000025;
          v27 = 0x200000000;
          v28 = 0xD00000000000001CLL;
        }

        else
        {
          v25 = 0x40000000;
          v26 = 0xD00000000000001FLL;
          v27 = 0x80000000;
          v28 = 0xD00000000000001BLL;
        }
      }

      else
      {
        if (a1 <= 0xFFFFFFF)
        {
          if (a1 == 0x8000000)
          {
            v12 = 0xD00000000000002FLL;
          }

          else
          {
            v12 = 0;
          }

          if (a1 == 0x4000000)
          {
            return 0xD00000000000002FLL;
          }

          else
          {
            return v12;
          }
        }

        v25 = 0x10000000;
        v26 = 0xD00000000000002FLL;
        v27 = 0x20000000;
        v28 = 0xD000000000000022;
      }

      if (a1 != v27)
      {
        v28 = 0;
      }

      if (a1 == v25)
      {
        return v26;
      }

      else
      {
        return v28;
      }
    }

    else if (a1 >= 0x100000)
    {
      v17 = 0xD000000000000039;
      if (a1 == 0x2000000)
      {
        v18 = 0xD00000000000002FLL;
      }

      else
      {
        v18 = 0;
      }

      if (a1 == 0x1000000)
      {
        v19 = 0xD000000000000039;
      }

      else
      {
        v19 = v18;
      }

      v20 = 0xD000000000000032;
      if (a1 != 0x800000)
      {
        v17 = 0;
      }

      if (a1 != 0x100000)
      {
        v20 = v17;
      }

      if (a1 <= 0xFFFFFF)
      {
        return v20;
      }

      else
      {
        return v19;
      }
    }

    else
    {
      v5 = 0xD000000000000032;
      if (a1 == 0x80000)
      {
        v6 = 0xD000000000000032;
      }

      else
      {
        v6 = 0;
      }

      if (a1 == 0x40000)
      {
        v6 = 0xD000000000000032;
      }

      v7 = 0xD000000000000031;
      if (a1 != 0x20000)
      {
        v5 = 0;
      }

      if (a1 != 0x10000)
      {
        v7 = v5;
      }

      if (a1 < 0x40000)
      {
        return v7;
      }

      else
      {
        return v6;
      }
    }
  }

  else if (a1 > 255)
  {
    if (a1 > 4095)
    {
      v21 = 0xD000000000000021;
      v22 = 0xD000000000000031;
      if (a1 != 0x8000)
      {
        v22 = 0;
      }

      if (a1 != 0x4000)
      {
        v21 = v22;
      }

      v23 = 0xD000000000000013;
      if (a1 != 0x2000)
      {
        v23 = 0;
      }

      if (a1 == 4096)
      {
        v24 = 0xD000000000000018;
      }

      else
      {
        v24 = v23;
      }

      if (a1 < 0x4000)
      {
        return v24;
      }

      else
      {
        return v21;
      }
    }

    else
    {
      v8 = 0xD000000000000017;
      v9 = 0xD000000000000012;
      if (a1 != 2048)
      {
        v9 = 0;
      }

      if (a1 != 1024)
      {
        v8 = v9;
      }

      v10 = 0xD000000000000017;
      v11 = 0xD000000000000015;
      if (a1 != 512)
      {
        v11 = 0;
      }

      if (a1 != 256)
      {
        v10 = v11;
      }

      if (a1 <= 1023)
      {
        return v10;
      }

      else
      {
        return v8;
      }
    }
  }

  else if (a1 > 15)
  {
    if (a1 == 128)
    {
      v13 = 0xD000000000000017;
    }

    else
    {
      v13 = 0;
    }

    if (a1 == 64)
    {
      v14 = 0xD000000000000018;
    }

    else
    {
      v14 = v13;
    }

    v15 = 0xD000000000000023;
    v16 = 0xD000000000000017;
    if (a1 != 32)
    {
      v16 = 0;
    }

    if (a1 != 16)
    {
      v15 = v16;
    }

    if (a1 <= 63)
    {
      return v15;
    }

    else
    {
      return v14;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0x6E65726566666964;
    if (a1 != 8)
    {
      v2 = 0;
    }

    if (a1 != 4)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 != 2)
    {
      v3 = 0;
    }

    if (a1 == 1)
    {
      v3 = 0xD000000000000028;
    }

    if (a1 <= 3)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1CF6E90B8(uint64_t a1)
{
  if (a1 <= 127)
  {
    if (a1 <= 7)
    {
      v11 = 0xD00000000000001ELL;
      if (a1 != 4)
      {
        v11 = 0;
      }

      if (a1 == 2)
      {
        v11 = 0xD000000000000020;
      }

      if (a1 == 1)
      {
        return 0xD000000000000014;
      }

      else
      {
        return v11;
      }
    }

    else
    {
      v5 = 0xD000000000000025;
      v6 = 0xD000000000000023;
      if (a1 != 64)
      {
        v6 = 0;
      }

      if (a1 == 32)
      {
        v6 = 0xD000000000000025;
      }

      v7 = 0xD000000000000031;
      if (a1 != 16)
      {
        v5 = 0;
      }

      if (a1 != 8)
      {
        v7 = v5;
      }

      if (a1 <= 31)
      {
        return v7;
      }

      else
      {
        return v6;
      }
    }
  }

  else if (a1 > 2047)
  {
    v8 = 0xD000000000000026;
    if (a1 != 0x4000)
    {
      v8 = 0;
    }

    if (a1 == 0x2000)
    {
      v8 = 0xD000000000000015;
    }

    v9 = 0xD000000000000012;
    v10 = 0xD000000000000015;
    if (a1 != 4096)
    {
      v10 = 0;
    }

    if (a1 != 2048)
    {
      v9 = v10;
    }

    if (a1 < 0x2000)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v1 = 0xD000000000000030;
    if (a1 == 1024)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = 0;
    }

    if (a1 != 512)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000030;
    if (a1 != 256)
    {
      v3 = 0;
    }

    if (a1 == 128)
    {
      v3 = 0xD000000000000023;
    }

    if (a1 <= 511)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1CF6E9320()
{
  v1 = *v0;
  v2 = 0xD000000000000012;
  v3 = 0xD000000000000025;
  if (*v0 != 1)
  {
    v3 = 0;
  }

  *v0;
  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1 == 4)
  {
    return 0xD000000000000028;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CF6E9394(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1CF9E81D8();
  a3(v5);
  return sub_1CF9E8228();
}

uint64_t sub_1CF6E93EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1CF9E81D8();
  a4(v6);
  return sub_1CF9E8228();
}

uint64_t sub_1CF6E946C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_1CF6BD4C0(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1CF6E9478(char a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  if (v3 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v3 < a2)
    {
      v4 = a2;
      v5 = 0;
      goto LABEL_9;
    }

    sub_1CF7D1218();
    return 0;
  }

  v4 = a2;
  v5 = 1;
LABEL_9:
  sub_1CF7C7708(v4, v5);
  return 1;
}

uint64_t sub_1CF6E9500(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1CF9E81D8();
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](a2);
    }

    else
    {
      if (a2)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      MEMORY[0x1D386A470](v9);
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    sub_1CF9E8208();
  }

  v10 = sub_1CF9E8228();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = a2 == 1 && a3 == 2;
    if (a2)
    {
      v15 = 0;
    }

    else
    {
      v15 = a3 == 2;
    }

    do
    {
      v16 = *(v7 + 48) + 16 * v12;
      v17 = *v16;
      v18 = *(v16 + 8);
      if (v18)
      {
        if (v18 == 1)
        {
          if (a3 == 1 && v17 == a2)
          {
            result = 0;
            goto LABEL_30;
          }
        }

        else if (v17)
        {
          if (v14)
          {
            goto LABEL_28;
          }
        }

        else if (v15)
        {
          a2 = 0;
          result = 0;
          goto LABEL_30;
        }
      }

      else if (!a3 && v17 == a2)
      {
LABEL_28:
        result = 0;
        a2 = v17;
        goto LABEL_30;
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;
  sub_1CF6ED354(a2, a3, v12, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  result = 1;
  LOBYTE(v18) = a3;
LABEL_30:
  *a1 = a2;
  *(a1 + 8) = v18;
  return result;
}

uint64_t sub_1CF6E96F4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1CF9E7828();

    if (v9)
    {

      sub_1CEFD57E0(0, &unk_1EDEA3640, 0x1E696ABF8);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1CF9E7818();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1CF4766C4(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1CF6EC52C(v22 + 1, qword_1EC4C0728, &qword_1CFA05B38);
    }

    v20 = v8;
    sub_1CF485A90();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1CEFD57E0(0, &unk_1EDEA3640, 0x1E696ABF8);
  v11 = *(v6 + 40);
  v12 = sub_1CF9E7558();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1CF6EE120(v20, v14, isUniquelyReferenced_nonNull_native, qword_1EC4C0728, &qword_1CFA05B38, &unk_1EDEA3640, 0x1E696ABF8);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1CF9E7568();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1CF6E995C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_1CF9E81D8();
  MEMORY[0x1D386A4A0](a2);
  sub_1CF9E69C8();
  v10 = sub_1CF9E8228();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v8 + 48);
    while (1)
    {
      v15 = (v14 + 24 * v12);
      if (*v15 == a2)
      {
        v16 = v15[1] == a3 && v15[2] == a4;
        if (v16 || (sub_1CF9E8048() & 1) != 0)
        {
          break;
        }
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v17 = *(v8 + 48) + 24 * v12;
    v18 = *(v17 + 16);
    *a1 = *v17;
    *(a1 + 16) = v18;

    return 0;
  }

  else
  {
LABEL_11:
    v20 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v4;

    sub_1CF6ED564(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v4 = v23;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }
}

uint64_t sub_1CF6E9AF0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  v9 = sub_1CF9E8228();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1CF9E8048() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1CF6ED718(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1CF6E9C5C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  v11 = sub_1CF9E81C8();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (*(*(v9 + 48) + 8 * v13) != a2)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v15 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_1CF6ED898(a2, v13, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1CF6E9D5C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1CF9E81D8();
  sub_1CEFF47E0(v45, a2, a3 & 0x1FF);
  v9 = sub_1CF9E8228();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  v43 = v7 + 56;
  v12 = (a3 >> 8) & 1;
  v41 = a1;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_33:
    v30 = *v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45[0] = *v40;
    sub_1CEFD0988(a2, a3, v12);
    sub_1CF6ED9D4(a2, a3 | (((a3 >> 8) & 1) << 8), v11, isUniquelyReferenced_nonNull_native);
    *v40 = v45[0];
    *v41 = a2;
    *(v41 + 8) = a3;
    *(v41 + 9) = v12;
    return 1;
  }

  v44 = ~v10;
  v13 = a3 == 2;
  v14 = a2 == 1 && a3 == 2;
  if (a2)
  {
    v13 = 0;
  }

  v38 = v13;
  v39 = v14;
  v15 = v7 + 56;
  v42 = v7;
  while (1)
  {
    v19 = *(v7 + 48) + 16 * v11;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 9);
    if ((v22 & 1) == 0)
    {
      break;
    }

    if ((a3 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    v23 = *v19;
    v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v26 = v25;
    if (v24 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v26 == v27)
    {
      sub_1CEFD0988(a2, a3, 1);
      sub_1CEFD0988(v20, v21, 1);

      sub_1CEFD0994(a2, a3, 1);
LABEL_35:
      sub_1CEFD0994(a2, a3, 1);
      sub_1CEFD0994(v20, v21, 1);
      v33 = v41;
      v7 = v42;
      goto LABEL_38;
    }

    v29 = sub_1CF9E8048();
    sub_1CEFD0988(a2, a3, 1);
    sub_1CEFD0988(v20, v21, 1);

    sub_1CEFD0994(a2, a3, 1);
    if (v29)
    {
      goto LABEL_35;
    }

    sub_1CEFD0994(v20, v21, 1);
    v7 = v42;
    v15 = v43;
LABEL_10:
    v11 = (v11 + 1) & v44;
    if (((*(v15 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if ((a3 & 0x100) != 0)
  {
LABEL_8:
    sub_1CEFD0988(a2, a3, v12);
    sub_1CEFD0988(v20, v21, v22);
    sub_1CEFD0994(v20, v21, v22);
    v16 = a2;
    v17 = a3;
    v18 = BYTE1(a3) & 1;
LABEL_9:
    sub_1CEFD0994(v16, v17, v18);
    goto LABEL_10;
  }

  if (!*(v19 + 8))
  {
    if (!a3 && v20 == a2)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v21 == 1)
  {
    if (a3 == 1 && v20 == a2)
    {
      v20 = a2;
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v20)
  {
    if (v39)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (!v38)
  {
LABEL_32:
    sub_1CEFD0988(a2, a3, 0);
    sub_1CEFD0988(v20, v21, 0);
    v16 = v20;
    v17 = v21;
    v18 = 0;
    goto LABEL_9;
  }

  v20 = 0;
LABEL_37:
  sub_1CEFD0988(v20, v21, 0);
  sub_1CEFD0994(v20, v21, 0);
  v33 = v41;
LABEL_38:
  v34 = *(v7 + 48) + 16 * v11;
  v35 = *v34;
  v36 = *(v34 + 9);
  *v33 = *v34;
  v37 = *(v34 + 8);
  *(v33 + 8) = v37;
  *(v33 + 9) = v36;
  sub_1CEFD0988(v35, v37, v36);
  return 0;
}

uint64_t sub_1CF6EA118(uint64_t a1, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_1CF9E81D8();
  v32 = a2;
  v33 = a4;
  v34 = a5;
  sub_1CF7BD790(v35, a2, a3, a4, a5);
  v12 = sub_1CF9E8228();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = *(v10 + 48) + 32 * v14;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
      sub_1CF1FB2C0(*v16, v18, v19, v20);
      v21 = sub_1CF7BCC38(v17, v18, v19, v20, v32, a3, v33, v34);
      sub_1CF484340(v17, v18, v19, v20);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1CF484340(v32, a3, v33, v34);
    v25 = *(v10 + 48) + 32 * v14;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    *a1 = *v25;
    *(a1 + 8) = v27;
    *(a1 + 16) = v28;
    v29 = *(v25 + 24);
    *(a1 + 24) = v29;
    sub_1CF1FB2C0(v26, v27, v28, v29);
    return 0;
  }

  else
  {
LABEL_5:
    v22 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35[0] = *v30;
    sub_1CF1FB2C0(v32, a3, v33, v34);
    sub_1CF6EDD90(v32, a3, v33, v34, v14, isUniquelyReferenced_nonNull_native);
    *v30 = v35[0];
    *a1 = v32;
    *(a1 + 8) = a3;
    *(a1 + 16) = v33;
    *(a1 + 24) = v34;
    return 1;
  }
}

__n128 sub_1CF6EA310(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1CF9E81D8();
  sub_1CF7BDAE8();
  v7 = sub_1CF9E8228();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = (*(v5 + 48) + 48 * v9);
      v12 = v11[1];
      v22 = *v11;
      v23[0] = v12;
      *(v23 + 10) = *(v11 + 26);
      if (sub_1CF7BD478(&v22, a2))
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v5 + 48) + 48 * v9;
    v18 = *(v17 + 32);
    v19 = *(v17 + 40);
    result = *v17;
    v20 = *(v17 + 16);
    *a1 = *v17;
    *(a1 + 16) = v20;
    *(a1 + 32) = v18;
    *(a1 + 40) = v19;
  }

  else
  {
LABEL_5:
    v13 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_1CF6EDF74(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v21;
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    result = *(a2 + 26);
    *(a1 + 26) = result;
  }

  return result;
}

uint64_t sub_1CF6EA45C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1CF9E7828();

    if (v9)
    {

      sub_1CEFD57E0(0, &unk_1EDEAB630, 0x1E696AE38);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1CF9E7818();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1CF476A94(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1CF6EC52C(v22 + 1, &qword_1EC4C0658, &qword_1CFA05A68);
    }

    v20 = v8;
    sub_1CF485A90();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1CEFD57E0(0, &unk_1EDEAB630, 0x1E696AE38);
  v11 = *(v6 + 40);
  v12 = sub_1CF9E7558();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1CF6EE120(v20, v14, isUniquelyReferenced_nonNull_native, &qword_1EC4C0658, &qword_1CFA05A68, &unk_1EDEAB630, 0x1E696AE38);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1CF9E7568();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1CF6EA6EC(void *a1, void *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v6 = v5;
  v9 = *v5;
  v10 = *(*v5 + 40);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  v11 = sub_1CF9E8228();

  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = *(*(v9 + 48) + 8 * v13);
      v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v18 = v17;
      if (v16 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v18 == v19)
      {

        goto LABEL_12;
      }

      v21 = sub_1CF9E8048();

      if (v21)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v26 = *(*(v9 + 48) + 8 * v13);
    *a1 = v26;
    v27 = v26;
    return 0;
  }

  else
  {
LABEL_9:
    v22 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v6;
    v24 = a2;
    sub_1CF6EE2B0(v24, v13, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v6 = v31;
    *a1 = v24;
    return 1;
  }
}

uint64_t sub_1CF6EA8A8(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_1CF9E81D8();
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E69C8();

  v34 = a4;
  sub_1CF9E81F8();
  if ((a4 & 1) == 0)
  {
    MEMORY[0x1D386A470](a3);
  }

  v10 = sub_1CF9E8228();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    do
    {
      v14 = *(v8 + 48) + 24 * v12;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v20 = v19;
      if (v18 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v20 == v21)
      {

        if (v17)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v23 = sub_1CF9E8048();

        if ((v23 & 1) == 0)
        {
          goto LABEL_6;
        }

        if (v17)
        {
LABEL_5:
          if (v34)
          {
            goto LABEL_17;
          }

          goto LABEL_6;
        }
      }

      if ((v34 & 1) == 0 && v16 == a3)
      {
LABEL_17:

        v24 = *(v8 + 48) + 24 * v12;
        v25 = *v24;
        v26 = *(v24 + 8);
        LOBYTE(v24) = *(v24 + 16);
        *a1 = v25;
        *(a1 + 8) = v26;
        *(a1 + 16) = v24;
        v27 = v25;
        return 0;
      }

LABEL_6:
      v12 = (v12 + 1) & v13;
    }

    while (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  v29 = *v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v32;
  v31 = a2;
  sub_1CF6EE4BC(v31, a3, v34 & 1, v12, isUniquelyReferenced_nonNull_native);
  *v32 = v35;
  *a1 = v31;
  *(a1 + 8) = a3;
  *(a1 + 16) = v34 & 1;
  return 1;
}

uint64_t sub_1CF6EAAF0(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1CF9E81D8();
  sub_1CF82009C(v18, a2);
  v8 = sub_1CF9E8228();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      sub_1CEFD09A0(v12);
      v13 = sub_1CF81C5BC(v12, a2);
      sub_1CEFD0A98(v12);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1CEFD0A98(a2);
    v17 = *(*(v6 + 48) + 8 * v10);
    *a1 = v17;
    sub_1CEFD09A0(v17);
    return 0;
  }

  else
  {
LABEL_5:
    v14 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18[0] = *v3;
    sub_1CEFD09A0(a2);
    sub_1CF6EE72C(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1CF6EAC38(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4FB0, &unk_1CFA17180);
  v4 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v6 = &v61 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v64 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v70 = *(v19 - 8);
  v20 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v69 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v61 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v61 = &v61 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v61 - v31;
  v62 = v2;
  v74 = *v2;
  v33 = *(v74 + 40);
  sub_1CF9E81D8();
  v73 = a2;
  sub_1CEFCCBDC(a2, v32, &unk_1EC4BF650, &unk_1CF9FCB40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = &qword_1CFA12AC0;
    sub_1CEFE55D0(v32, v12, &unk_1EC4BFD70, &qword_1CFA12AC0);
    MEMORY[0x1D386A470](1);
    sub_1CF1CE0C8();
    v35 = v12;
    v36 = &unk_1EC4BFD70;
  }

  else
  {
    v34 = &unk_1CF9FCB50;
    sub_1CEFE55D0(v32, v18, &unk_1EC4BFCC0, &unk_1CF9FCB50);
    MEMORY[0x1D386A470](0);
    sub_1CF1CDC08();
    v35 = v18;
    v36 = &unk_1EC4BFCC0;
  }

  sub_1CEFCCC44(v35, v36, v34);
  v37 = sub_1CF9E8228();
  v38 = -1 << *(v74 + 32);
  v39 = v37 & ~v38;
  v71 = v74 + 56;
  v40 = v69;
  if (((*(v74 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
  {
LABEL_17:
    v55 = v62;
    v56 = *v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v73;
    v59 = v61;
    sub_1CEFCCBDC(v73, v61, &unk_1EC4BF650, &unk_1CF9FCB40);
    v75 = *v55;
    sub_1CF6EE8BC(v59, v39, isUniquelyReferenced_nonNull_native);
    *v55 = v75;
    sub_1CEFE55D0(v58, v63, &unk_1EC4BF650, &unk_1CF9FCB40);
    return 1;
  }

  v68 = v24;
  v41 = ~v38;
  v42 = *(v70 + 72);
  v66 = ~v38;
  v67 = v42;
  while (1)
  {
    v46 = *(v74 + 48);
    v70 = v42 * v39;
    sub_1CEFCCBDC(v46 + v42 * v39, v27, &unk_1EC4BF650, &unk_1CF9FCB40);
    v47 = *(v72 + 48);
    sub_1CEFCCBDC(v27, v6, &unk_1EC4BF650, &unk_1CF9FCB40);
    sub_1CEFCCBDC(v73, &v6[v47], &unk_1EC4BF650, &unk_1CF9FCB40);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1CEFCCBDC(v6, v40, &unk_1EC4BF650, &unk_1CF9FCB40);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v48 = v65;
      sub_1CEFE55D0(&v6[v47], v65, &unk_1EC4BFD70, &qword_1CFA12AC0);
      v49 = sub_1CF469E78(v69, v48);
      v50 = v48;
      v40 = v69;
      sub_1CEFCCC44(v50, &unk_1EC4BFD70, &qword_1CFA12AC0);
      sub_1CEFCCC44(v27, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CEFCCC44(v40, &unk_1EC4BFD70, &qword_1CFA12AC0);
      if (v49)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    sub_1CEFCCC44(v27, &unk_1EC4BF650, &unk_1CF9FCB40);
    sub_1CEFCCC44(v40, &unk_1EC4BFD70, &qword_1CFA12AC0);
LABEL_7:
    v43 = v6;
    v44 = &qword_1EC4C4FB0;
    v45 = &unk_1CFA17180;
LABEL_8:
    sub_1CEFCCC44(v43, v44, v45);
    v39 = (v39 + 1) & v41;
    if (((*(v71 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v51 = v68;
  sub_1CEFCCBDC(v6, v68, &unk_1EC4BF650, &unk_1CF9FCB40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v27, &unk_1EC4BF650, &unk_1CF9FCB40);
    sub_1CEFCCC44(v51, &unk_1EC4BFCC0, &unk_1CF9FCB50);
    v41 = v66;
    v42 = v67;
    goto LABEL_7;
  }

  v52 = v64;
  sub_1CEFE55D0(&v6[v47], v64, &unk_1EC4BFCC0, &unk_1CF9FCB50);
  v53 = sub_1CF4692CC(v51, v52);
  v54 = v52;
  v40 = v69;
  sub_1CEFCCC44(v54, &unk_1EC4BFCC0, &unk_1CF9FCB50);
  sub_1CEFCCC44(v27, &unk_1EC4BF650, &unk_1CF9FCB40);
  sub_1CEFCCC44(v51, &unk_1EC4BFCC0, &unk_1CF9FCB50);
  v41 = v66;
  v42 = v67;
  if (!v53)
  {
LABEL_15:
    v43 = v6;
    v44 = &unk_1EC4BF650;
    v45 = &unk_1CF9FCB40;
    goto LABEL_8;
  }

LABEL_18:
  sub_1CEFCCC44(v6, &unk_1EC4BF650, &unk_1CF9FCB40);
  sub_1CEFCCC44(v73, &unk_1EC4BF650, &unk_1CF9FCB40);
  sub_1CEFCCBDC(*(v74 + 48) + v70, v63, &unk_1EC4BF650, &unk_1CF9FCB40);
  return 0;
}

uint64_t sub_1CF6EB350(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2768, &qword_1CFA12980);
  result = sub_1CF9E78E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 16 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v6 + 40);
      sub_1CF9E81D8();
      if (v21)
      {
        if (v21 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v20);
        }

        else
        {
          if (v20)
          {
            v23 = 3;
          }

          else
          {
            v23 = 2;
          }

          MEMORY[0x1D386A470](v23);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      result = sub_1CF9E8228();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 16 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero((v3 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1CF6EB610(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2870, &qword_1CFA12AA0);
  result = sub_1CF9E78E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 24 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = *(v6 + 40);
      sub_1CF9E81D8();
      MEMORY[0x1D386A4A0](v20);
      sub_1CF9E69C8();
      result = sub_1CF9E8228();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 24 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1CF6EB890(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27A8, &unk_1CFA129B0);
  result = sub_1CF9E78E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      result = sub_1CF9E8228();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1CF6EBAF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1CF9E78E8();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    v29 = v4;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_1CF9E81C8();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v11 >= 64)
    {
      bzero((v5 + 56), 8 * v14);
    }

    else
    {
      *v10 = -1 << v11;
    }

    v4 = v29;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1CF6EBD20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27B0, &qword_1CFA129C0);
  result = sub_1CF9E78E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 16 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 9);
      v23 = *(v6 + 40);
      sub_1CF9E81D8();
      if (v22)
      {
        MEMORY[0x1D386A470](1);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        sub_1CF9E69C8();
      }

      else
      {
        MEMORY[0x1D386A470](0);
        if (v21)
        {
          if (v21 == 1)
          {
            MEMORY[0x1D386A470](1);
            MEMORY[0x1D386A4A0](v20);
          }

          else
          {
            if (v20)
            {
              v24 = 3;
            }

            else
            {
              v24 = 2;
            }

            MEMORY[0x1D386A470](v24);
          }
        }

        else
        {
          MEMORY[0x1D386A470](0);
          sub_1CF9E8208();
        }
      }

      result = sub_1CF9E8228();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 16 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 9) = v22;
      ++*(v6 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1CF6EC01C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27C0, &unk_1CFA129D8);
  result = sub_1CF9E78E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 32 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v6 + 40);
      sub_1CF9E81D8();
      v35 = v20;
      sub_1CF7BD790(v36, v20, v21, v22, v23);
      result = sub_1CF9E8228();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 32 * v14;
      v3 = v34;
      *v15 = v35;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 24) = v23;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1CF6EC2A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27C8, &unk_1CFA129E8);
  result = sub_1CF9E78E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 48 * (v16 | (v7 << 6)));
      v30 = *v19;
      *v31 = v19[1];
      *&v31[10] = *(v19 + 26);
      v20 = *(v6 + 40);
      sub_1CF9E81D8();
      sub_1CF7BDAE8();
      result = sub_1CF9E8228();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 48 * v14);
      *v15 = v30;
      v15[1] = *v31;
      *(v15 + 26) = *&v31[10];
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1CF6EC52C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1CF9E78E8();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_1CF9E7558();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1CF6EC74C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1CF9E78E8();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v5;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v22 = sub_1CF9E8228();

      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
      v5 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v5 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v4 = v31;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1CF6EC9C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E70, &qword_1CFA18030);
  result = sub_1CF9E78E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1CF9E81D8();
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      sub_1CF9E69C8();

      sub_1CF9E81F8();
      if (v22 != 1)
      {
        MEMORY[0x1D386A470](v21);
      }

      result = sub_1CF9E8228();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1CF6ECC78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2878, &qword_1CFA12AA8);
  result = sub_1CF9E78E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1CF9E81D8();
      sub_1CF82009C(v29, v18);
      result = sub_1CF9E8228();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1CF6ECEC8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - v7;
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2888, &qword_1CFA12AC8);
  result = sub_1CF9E78E8();
  v12 = result;
  if (*(v9 + 16))
  {
    v24 = v2;
    v13 = 0;
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v9 + 56);
    for (i = (v15 + 63) >> 6; v17; result = sub_1CF476F2C(v8, v12))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_13:
      sub_1CEFE55D0(*(v9 + 48) + *(v5 + 72) * (v19 | (v13 << 6)), v8, &unk_1EC4BF650, &unk_1CF9FCB40);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= i)
      {
        break;
      }

      v21 = v14[v13];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v9 + 32);
    if (v22 >= 64)
    {
      bzero((v9 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v22;
    }

    v2 = v24;
    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_1CF6ED0E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC38, &unk_1CFA05370);
  result = sub_1CF9E78E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1CF9E81D8();
      v20 = *(v18 + 16);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      sub_1CF9E69C8();

      result = sub_1CF9E8228();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1CF6ED354(uint64_t result, char a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_36;
  }

  if (a4)
  {
    sub_1CF6EB350(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_1CF6EEF8C();
      a3 = v9;
      goto LABEL_36;
    }

    sub_1CF6F00CC(v7 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1CF9E81D8();
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](v6);
    }

    else
    {
      if (v6)
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      MEMORY[0x1D386A470](v12);
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    sub_1CF9E8208();
  }

  result = sub_1CF9E8228();
  v13 = -1 << *(v10 + 32);
  a3 = result & ~v13;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    v15 = a2 == 2;
    v16 = v6 == 1 && a2 == 2;
    if (v6)
    {
      v15 = 0;
    }

    do
    {
      v17 = *(v10 + 48) + 16 * a3;
      v18 = *v17;
      v19 = *(v17 + 8);
      if (v19)
      {
        if (v19 == 1)
        {
          if (a2 == 1 && v18 == v6)
          {
            goto LABEL_35;
          }
        }

        else if (v18)
        {
          if (v16)
          {
            goto LABEL_35;
          }
        }

        else if (v15)
        {
          goto LABEL_35;
        }
      }

      else if (!a2 && v18 == v6)
      {
LABEL_35:
        result = sub_1CF9E80F8();
        __break(1u);
        break;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_36:
  v20 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = *(v20 + 48) + 16 * a3;
  *v21 = v6;
  *(v21 + 8) = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_1CF6ED564(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_1CF6EB610(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1CF6EF0F4();
      goto LABEL_18;
    }

    sub_1CF6F0348(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  sub_1CF9E81D8();
  MEMORY[0x1D386A4A0](v10);
  sub_1CF9E69C8();
  result = sub_1CF9E8228();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = result & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    while (1)
    {
      v19 = (v18 + 24 * a4);
      if (*v19 == v10)
      {
        if (v19[1] == a2 && v19[2] == a3)
        {
          break;
        }

        result = sub_1CF9E8048();
        if (result)
        {
          break;
        }
      }

      a4 = (a4 + 1) & v17;
      if (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    result = sub_1CF9E80F8();
    __break(1u);
  }

LABEL_18:
  v21 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = (*(v21 + 48) + 24 * a4);
  *v22 = v10;
  v22[1] = a2;
  v22[2] = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

uint64_t sub_1CF6ED718(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1CF6EB890(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1CF6EF25C();
      goto LABEL_16;
    }

    sub_1CF6F05A0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  result = sub_1CF9E8228();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1CF9E8048();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1CF9E80F8();
  __break(1u);
  return result;
}

uint64_t sub_1CF6ED898(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CF6EBAF0(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = sub_1CF6EF3B8(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    sub_1CF6F07D8(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  result = sub_1CF9E81C8();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + 8 * a2) != v6)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1CF9E80F8();
  __break(1u);
  return result;
}

void sub_1CF6ED9D4(char *a1, uint64_t a2, unint64_t a3, char a4)
{
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  v13 = (a2 >> 8) & 1;
  if (v12 > v11 && (a4 & 1) != 0)
  {
    goto LABEL_40;
  }

  if (a4)
  {
    sub_1CF6EBD20(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1CF6EF4FC();
      goto LABEL_40;
    }

    sub_1CF6F09C0(v11 + 1);
  }

  v14 = *v5;
  v15 = *(*v5 + 40);
  sub_1CF9E81D8();
  sub_1CEFF47E0(v45, a1, a2 & 0x1FF);
  v5 = v45;
  v16 = sub_1CF9E8228();
  v4 = (v14 + 56);
  v17 = -1 << *(v14 + 32);
  a3 = v16 & ~v17;
  if ((*(v14 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v18 = ~v17;
    v19 = a2 == 2;
    v20 = a1 == 1 && a2 == 2;
    if (a1)
    {
      v19 = 0;
    }

    v39 = v19;
    v40 = v20;
    v43 = (v14 + 56);
    v44 = v14;
    v42 = v18;
    while (1)
    {
      v24 = *(v14 + 48) + 16 * a3;
      v6 = *v24;
      v5 = *(v24 + 8);
      v7 = *(v24 + 9);
      if ((v7 & 1) == 0)
      {
        break;
      }

      if ((a2 & 0x100) == 0)
      {
        goto LABEL_15;
      }

      v25 = v13;
      v26 = *v24;
      v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v29 = v28;
      v4 = a1;
      if (v27 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v29 == v30)
      {
        goto LABEL_43;
      }

      v32 = sub_1CF9E8048();
      sub_1CEFD0988(v6, v5, 1);
      sub_1CEFD0988(a1, a2, 1);

      sub_1CEFD0994(a1, a2, 1);
      if (v32)
      {
        goto LABEL_47;
      }

      sub_1CEFD0994(v6, v5, 1);
      v13 = v25;
      v4 = v43;
      v14 = v44;
      v18 = v42;
LABEL_17:
      a3 = (a3 + 1) & v18;
      if (((*&v4[(a3 >> 3) & 0xFFFFFFFFFFFFFF8] >> a3) & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    if ((a2 & 0x100) != 0)
    {
LABEL_15:
      sub_1CEFD0988(*v24, *(v24 + 8), *(v24 + 9));
      sub_1CEFD0988(a1, a2, v13);
      sub_1CEFD0994(v6, v5, v7);
      v21 = a1;
      v22 = a2;
      v23 = v13;
    }

    else
    {
      if (*(v24 + 8))
      {
        if (v5 == 1)
        {
          if (a2 == 1 && v6 == a1)
          {
            v38 = a1;
            v6 = a1;
            goto LABEL_46;
          }
        }

        else if (v6)
        {
          if (v40)
          {
            goto LABEL_44;
          }
        }

        else if (v39)
        {
          v38 = a1;
          v6 = 0;
LABEL_46:
          sub_1CEFD0988(v6, v5, 0);
          sub_1CEFD0988(v38, a2, 0);
LABEL_47:
          sub_1CEFD0994(v6, v5, v7);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFC10, &qword_1CF9FE510);
          sub_1CF9E80F8();
          __break(1u);
          return;
        }
      }

      else if (!a2 && v6 == a1)
      {
LABEL_44:
        v38 = a1;
        goto LABEL_46;
      }

      sub_1CEFD0988(v6, v5, 0);
      sub_1CEFD0988(a1, a2, 0);
      v21 = v6;
      v22 = v5;
      v23 = 0;
    }

    sub_1CEFD0994(v21, v22, v23);
    goto LABEL_17;
  }

LABEL_40:
  v33 = *v41;
  *(*v41 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v34 = *(v33 + 48) + 16 * a3;
  *v34 = a1;
  *(v34 + 8) = a2;
  *(v34 + 9) = v13;
  v35 = *(v33 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
LABEL_43:
    sub_1CEFD0988(v6, v5, 1);
    sub_1CEFD0988(v4, a2, 1);

    sub_1CEFD0994(v4, a2, 1);
    goto LABEL_47;
  }

  *(v33 + 16) = v37;
}

void sub_1CF6EDD90(void *a1, void *a2, void *a3, unsigned __int8 a4, unint64_t a5, char a6)
{
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a6 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a6)
  {
    sub_1CF6EC01C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1CF6EF668();
      goto LABEL_12;
    }

    sub_1CF6F0CA0(v8 + 1);
  }

  v10 = *v6;
  v11 = *(*v6 + 40);
  sub_1CF9E81D8();
  sub_1CF7BD790(v31, a1, a2, a3, a4);
  v12 = sub_1CF9E8228();
  v13 = -1 << *(v10 + 32);
  a5 = v12 & ~v13;
  if ((*(v10 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v14 = ~v13;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0670, &qword_1CFA129D0);
      v15 = *(v10 + 48) + 32 * a5;
      v17 = *v15;
      v16 = *(v15 + 8);
      v18 = *(v15 + 16);
      v19 = *(v15 + 24);
      sub_1CF1FB2C0(*v15, v16, v18, v19);
      v20 = sub_1CF7BCC38(v17, v16, v18, v19, a1, a2, a3, a4);
      sub_1CF484340(v17, v16, v18, v19);
      if (v20)
      {
        goto LABEL_15;
      }

      a5 = (a5 + 1) & v14;
    }

    while (((*(v10 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_12:
  v21 = *v26;
  *(*v26 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v22 = *(v21 + 48) + 32 * a5;
  *v22 = a1;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1CF9E80F8();
  __break(1u);
}

uint64_t sub_1CF6EDF74(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CF6EC2A4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1CF6EF7D4();
      goto LABEL_12;
    }

    sub_1CF6F0F08(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1CF9E81D8();
  sub_1CF7BDAE8();
  result = sub_1CF9E8228();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4EF0, &unk_1CFA05A90);
      v12 = (*(v8 + 48) + 48 * a2);
      v13 = v12[1];
      v20 = *v12;
      v21[0] = v13;
      *(v21 + 10) = *(v12 + 26);
      result = sub_1CF7BD478(&v20, v5);
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = (*(v14 + 48) + 48 * a2);
  v16 = *(v5 + 16);
  *v15 = *v5;
  v15[1] = v16;
  *(v15 + 26) = *(v5 + 26);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1CF9E80F8();
  __break(1u);
  return result;
}

void sub_1CF6EE120(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_1CF6EC52C(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1CF6EF948(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_1CF01B858(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_1CF9E7558();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_1CEFD57E0(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_1CF9E7568();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1CF9E80F8();
  __break(1u);
}

uint64_t sub_1CF6EE2B0(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v7 = v6;
  v9 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v12 = a6;
    sub_1CF6EC74C(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_1CF6EF948(a4, a5);
      goto LABEL_16;
    }

    v12 = a6;
    sub_1CF6F114C(v10 + 1, a4, a5);
  }

  v13 = *v6;
  v14 = *(*v6 + 40);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  v15 = sub_1CF9E8228();

  v16 = -1 << *(v13 + 32);
  a2 = v15 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v12(0);
    do
    {
      v18 = *(*(v13 + 48) + 8 * a2);
      v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v21 = v20;
      if (v19 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v21 == v22)
      {
        goto LABEL_19;
      }

      v24 = sub_1CF9E8048();

      if (v24)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v25 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + 8 * a2) = v9;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1CF9E80F8();
  __break(1u);
  return result;
}

uint64_t sub_1CF6EE4BC(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v7 = result;
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 > v8 && (a5 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a5)
  {
    sub_1CF6EC9C0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1CF6EFA9C();
      goto LABEL_25;
    }

    sub_1CF6F1398(v8 + 1);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_1CF9E81D8();
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E69C8();

  sub_1CF9E81F8();
  if ((a3 & 1) == 0)
  {
    MEMORY[0x1D386A470](a2);
  }

  result = sub_1CF9E8228();
  v12 = -1 << *(v10 + 32);
  a4 = result & ~v12;
  if ((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v10 + 48) + 24 * a4;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v20 = v19;
      if (v18 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v20 == v21)
      {

        if (v17)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v23 = sub_1CF9E8048();

        if ((v23 & 1) == 0)
        {
          goto LABEL_13;
        }

        if (v17)
        {
LABEL_12:
          if (a3)
          {
            goto LABEL_24;
          }

          goto LABEL_13;
        }
      }

      if ((a3 & 1) == 0 && v16 == a2)
      {
LABEL_24:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BD0, &unk_1CF9FE500);
        result = sub_1CF9E80F8();
        __break(1u);
        break;
      }

LABEL_13:
      a4 = (a4 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_25:
  v24 = *v29;
  *(*v29 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v25 = *(v24 + 48) + 24 * a4;
  *v25 = v7;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3 & 1;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

unint64_t sub_1CF6EE72C(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CF6ECC78(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1CF6EFC04();
      goto LABEL_12;
    }

    sub_1CF6F163C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1CF9E81D8();
  sub_1CF82009C(v19, v5);
  result = sub_1CF9E8228();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2880, &unk_1CFA12AB0);
      v12 = *(*(v8 + 48) + 8 * a2);
      sub_1CEFD09A0(v12);
      v13 = sub_1CF81C5BC(v12, v5);
      result = sub_1CEFD0A98(v12);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v5;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1CF9E80F8();
  __break(1u);
  return result;
}

uint64_t sub_1CF6EE8BC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v69 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4FB0, &unk_1CFA17180);
  v7 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v9 = &v60 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v62 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v66 = &v60 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v21 = *(v71 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v60 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v60 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v60 - v31;
  v33 = *(*v4 + 16);
  v34 = *(*v4 + 24);
  v60 = v21;
  v61 = v4;
  if (v34 <= v33 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CF6ECEC8(v33 + 1);
    }

    else
    {
      if (v34 > v33)
      {
        sub_1CF6EFD54();
        goto LABEL_24;
      }

      sub_1CF6F1864(v33 + 1);
    }

    v67 = *v4;
    v35 = *(v67 + 40);
    sub_1CF9E81D8();
    sub_1CEFCCBDC(v69, v32, &unk_1EC4BF650, &unk_1CF9FCB40);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1CEFE55D0(v32, v15, &unk_1EC4BFD70, &qword_1CFA12AC0);
      MEMORY[0x1D386A470](1);
      sub_1CF1CE0C8();
      v36 = v15;
      v37 = &unk_1EC4BFD70;
      v38 = &qword_1CFA12AC0;
    }

    else
    {
      v39 = v32;
      v40 = v66;
      sub_1CEFE55D0(v39, v66, &unk_1EC4BFCC0, &unk_1CF9FCB50);
      MEMORY[0x1D386A470](0);
      sub_1CF1CDC08();
      v36 = v40;
      v37 = &unk_1EC4BFCC0;
      v38 = &unk_1CF9FCB50;
    }

    sub_1CEFCCC44(v36, v37, v38);
    v41 = sub_1CF9E8228();
    v42 = -1 << *(v67 + 32);
    a2 = v41 & ~v42;
    v66 = v67 + 56;
    if ((*(v67 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v65 = v26;
      v43 = ~v42;
      v44 = *(v21 + 72);
      v64 = v44;
      do
      {
        sub_1CEFCCBDC(*(v67 + 48) + v44 * a2, v29, &unk_1EC4BF650, &unk_1CF9FCB40);
        v48 = *(v68 + 48);
        sub_1CEFCCBDC(v29, v9, &unk_1EC4BF650, &unk_1CF9FCB40);
        sub_1CEFCCBDC(v69, &v9[v48], &unk_1EC4BF650, &unk_1CF9FCB40);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1CEFCCBDC(v9, v70, &unk_1EC4BF650, &unk_1CF9FCB40);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v49 = v63;
            sub_1CEFE55D0(&v9[v48], v63, &unk_1EC4BFD70, &qword_1CFA12AC0);
            v50 = sub_1CF469E78(v70, v49);
            sub_1CEFCCC44(v49, &unk_1EC4BFD70, &qword_1CFA12AC0);
            sub_1CEFCCC44(v29, &unk_1EC4BF650, &unk_1CF9FCB40);
            sub_1CEFCCC44(v70, &unk_1EC4BFD70, &qword_1CFA12AC0);
            if (v50)
            {
              goto LABEL_27;
            }

LABEL_22:
            v45 = v9;
            v46 = &unk_1EC4BF650;
            v47 = &unk_1CF9FCB40;
            goto LABEL_15;
          }

          sub_1CEFCCC44(v29, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v70, &unk_1EC4BFD70, &qword_1CFA12AC0);
        }

        else
        {
          v51 = v43;
          v52 = v65;
          sub_1CEFCCBDC(v9, v65, &unk_1EC4BF650, &unk_1CF9FCB40);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v53 = v62;
            sub_1CEFE55D0(&v9[v48], v62, &unk_1EC4BFCC0, &unk_1CF9FCB50);
            v54 = sub_1CF4692CC(v52, v53);
            sub_1CEFCCC44(v53, &unk_1EC4BFCC0, &unk_1CF9FCB50);
            sub_1CEFCCC44(v29, &unk_1EC4BF650, &unk_1CF9FCB40);
            sub_1CEFCCC44(v52, &unk_1EC4BFCC0, &unk_1CF9FCB50);
            v43 = v51;
            v44 = v64;
            if (v54)
            {
              goto LABEL_27;
            }

            goto LABEL_22;
          }

          sub_1CEFCCC44(v29, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v52, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          v43 = v51;
          v44 = v64;
        }

        v45 = v9;
        v46 = &qword_1EC4C4FB0;
        v47 = &unk_1CFA17180;
LABEL_15:
        sub_1CEFCCC44(v45, v46, v47);
        a2 = (a2 + 1) & v43;
      }

      while (((*(v66 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_24:
  v55 = *v61;
  *(*v61 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1CEFE55D0(v69, *(v55 + 48) + *(v60 + 72) * a2, &unk_1EC4BF650, &unk_1CF9FCB40);
  v57 = *(v55 + 16);
  v58 = __OFADD__(v57, 1);
  v59 = v57 + 1;
  if (v58)
  {
    __break(1u);
LABEL_27:
    sub_1CEFCCC44(v9, &unk_1EC4BF650, &unk_1CF9FCB40);
    result = sub_1CF9E80F8();
    __break(1u);
  }

  else
  {
    *(v55 + 16) = v59;
  }

  return result;
}

void *sub_1CF6EEF8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2768, &qword_1CFA12980);
  v2 = *v0;
  v3 = sub_1CF9E78D8();
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
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
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

void *sub_1CF6EF0F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2870, &qword_1CFA12AA0);
  v2 = *v0;
  v3 = sub_1CF9E78D8();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 16);
        v20 = *(v4 + 48) + v17;
        *v20 = *v18;
        *(v20 + 16) = v19;
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

void *sub_1CF6EF25C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27A8, &unk_1CFA129B0);
  v2 = *v0;
  v3 = sub_1CF9E78D8();
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

void *sub_1CF6EF3B8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E78D8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1CF6EF4FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27B0, &qword_1CFA129C0);
  v2 = *v0;
  v3 = sub_1CF9E78D8();
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
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 9);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 8);
        *v21 = *v18;
        *(v21 + 8) = v22;
        *(v21 + 9) = v20;
        result = sub_1CEFD0988(v19, v22, v20);
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

void *sub_1CF6EF668()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27C0, &unk_1CFA129D8);
  v2 = *v0;
  v3 = sub_1CF9E78D8();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + v17;
        v23 = *(v18 + 24);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        *(v22 + 24) = v23;
        result = sub_1CF1FB2C0(v19, v20, v21, v23);
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

void *sub_1CF6EF7D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27C8, &unk_1CFA129E8);
  v2 = *v0;
  v3 = sub_1CF9E78D8();
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
    for (i = (v9 + 63) >> 6; v11; *(v21 + 40) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 48 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 32);
      v20 = *(v18 + 40);
      v21 = *(v4 + 48) + v17;
      v22 = *(v18 + 16);
      *v21 = *v18;
      *(v21 + 16) = v22;
      *(v21 + 32) = v19;
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

id sub_1CF6EF948(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E78D8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_1CF6EFA9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E70, &qword_1CFA18030);
  v2 = *v0;
  v3 = sub_1CF9E78D8();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = v19;
        *(v21 + 8) = v20;
        *(v21 + 16) = v18;
        result = v19;
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

void *sub_1CF6EFC04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2878, &qword_1CFA12AA8);
  v2 = *v0;
  v3 = sub_1CF9E78D8();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_1CEFD09A0(v18);
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

void *sub_1CF6EFD54()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2888, &qword_1CFA12AC8);
  v6 = *v0;
  v7 = sub_1CF9E78D8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    v15 = *(v6 + 56);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v23 + 72) * (v18 | (v12 << 6));
        sub_1CEFCCBDC(*(v6 + 48) + v21, v5, &unk_1EC4BF650, &unk_1CF9FCB40);
        result = sub_1CEFE55D0(v5, *(v8 + 48) + v21, &unk_1EC4BF650, &unk_1CF9FCB40);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1CF6EFF7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC38, &unk_1CFA05370);
  v2 = *v0;
  v3 = sub_1CF9E78D8();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_1CF6F00CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2768, &qword_1CFA12980);
  result = sub_1CF9E78E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
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
      sub_1CF9E81D8();
      if (v20)
      {
        if (v20 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v19);
        }

        else
        {
          if (v19)
          {
            v22 = 3;
          }

          else
          {
            v22 = 2;
          }

          MEMORY[0x1D386A470](v22);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      result = sub_1CF9E8228();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_38;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v6 + 16);
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

        v2 = v30;
        goto LABEL_36;
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
LABEL_38:
    __break(1u);
  }

  else
  {

LABEL_36:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1CF6F0348(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2870, &qword_1CFA12AA0);
  result = sub_1CF9E78E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 24 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = *(v6 + 40);
      sub_1CF9E81D8();
      MEMORY[0x1D386A4A0](v20);

      sub_1CF9E69C8();
      result = sub_1CF9E8228();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 24 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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

uint64_t sub_1CF6F05A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27A8, &unk_1CFA129B0);
  result = sub_1CF9E78E8();
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
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1CF9E81D8();

      sub_1CF9E69C8();
      result = sub_1CF9E8228();
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
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
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

uint64_t sub_1CF6F07D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1CF9E78E8();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      result = sub_1CF9E81C8();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_26;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v4 = v8;
  }

  return result;
}

uint64_t sub_1CF6F09C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27B0, &qword_1CFA129C0);
  result = sub_1CF9E78E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
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
      v21 = *(v18 + 9);
      v22 = *(v6 + 40);
      sub_1CF9E81D8();
      if (v21)
      {
        MEMORY[0x1D386A470](1);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v23 = v19;
        sub_1CF9E69C8();
      }

      else
      {
        MEMORY[0x1D386A470](0);
        if (v20)
        {
          if (v20 == 1)
          {
            MEMORY[0x1D386A470](1);
            MEMORY[0x1D386A4A0](v19);
          }

          else
          {
            if (v19)
            {
              v24 = 3;
            }

            else
            {
              v24 = 2;
            }

            MEMORY[0x1D386A470](v24);
          }
        }

        else
        {
          MEMORY[0x1D386A470](0);
          sub_1CF9E8208();
        }
      }

      result = sub_1CF9E8228();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_40;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 9) = v21;
      ++*(v6 + 16);
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

        v2 = v32;
        goto LABEL_38;
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
LABEL_40:
    __break(1u);
  }

  else
  {

LABEL_38:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1CF6F0CA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27C0, &unk_1CFA129D8);
  result = sub_1CF9E78E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v34 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 32 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v6 + 40);
      sub_1CF9E81D8();
      sub_1CF1FB2C0(v20, v21, v22, v23);
      sub_1CF7BD790(v35, v20, v21, v22, v23);
      result = sub_1CF9E8228();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 32 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 24) = v23;
      ++*(v6 + 16);
      v3 = v33;
      v11 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
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

uint64_t sub_1CF6F0F08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27C8, &unk_1CFA129E8);
  result = sub_1CF9E78E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
      v18 = (*(v3 + 48) + 48 * (v15 | (v7 << 6)));
      v28 = *v18;
      *v29 = v18[1];
      *&v29[10] = *(v18 + 26);
      v19 = *(v6 + 40);
      sub_1CF9E81D8();
      sub_1CF7BDAE8();
      result = sub_1CF9E8228();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 48 * v13);
      *v14 = v28;
      v14[1] = *v29;
      *(v14 + 26) = *&v29[10];
      ++*(v6 + 16);
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

        v2 = v27;
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

uint64_t sub_1CF6F114C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1CF9E78E8();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v5;
    v9 = 0;
    v10 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      sub_1CF9E81D8();
      v22 = v20;
      sub_1CF9E69C8();
      v23 = sub_1CF9E8228();

      v24 = -1 << *(v8 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      ++*(v8 + 16);
      v5 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v4 = v31;
        goto LABEL_28;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_1CF6F1398(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E70, &qword_1CFA18030);
  result = sub_1CF9E78E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v34 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1CF9E81D8();
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v33 = v20;
      sub_1CF9E69C8();

      sub_1CF9E81F8();
      if (v22 != 1)
      {
        MEMORY[0x1D386A470](v21);
      }

      result = sub_1CF9E8228();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      v11 = v34;
      *v15 = v33;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_30;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1CF6F163C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2878, &qword_1CFA12AA8);
  result = sub_1CF9E78E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1CF9E81D8();
      sub_1CEFD09A0(v17);
      sub_1CF82009C(v27, v17);
      result = sub_1CF9E8228();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_1CF6F1864(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v21 - v7;
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2888, &qword_1CFA12AC8);
  result = sub_1CF9E78E8();
  v12 = result;
  if (*(v9 + 16))
  {
    v22 = v2;
    v13 = 0;
    v14 = 1 << *(v9 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v9 + 56);
    for (i = (v14 + 63) >> 6; v16; result = sub_1CF476F2C(v8, v12))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      sub_1CEFCCBDC(*(v9 + 48) + *(v5 + 72) * (v18 | (v13 << 6)), v8, &unk_1EC4BF650, &unk_1CF9FCB40);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= i)
      {

        v2 = v22;
        goto LABEL_17;
      }

      v20 = *(v9 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_17:
    *v2 = v12;
  }

  return result;
}

uint64_t sub_1CF6F1A54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC38, &unk_1CFA05370);
  result = sub_1CF9E78E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1CF9E81D8();
      v19 = *(v17 + 16);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

      sub_1CF9E69C8();

      result = sub_1CF9E8228();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_1CF6F1C9C(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_1CF6F20C4(v13, v7, v5, a3);
  result = MEMORY[0x1D386CDC0](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF6F1E0C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v21 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    if (*(*(a3 + 56) + 8 * v14) == 1)
    {
      v15 = (*(a3 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];

      v18 = sub_1CF9E69D8();

      if (v18 >= 3)
      {
        *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v4++, 1))
        {
          __break(1u);
          return sub_1CF4F5784(v21, a2, v4, a3);
        }
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1CF4F5784(v21, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF6F1F68(uint64_t result, uint64_t a2, uint64_t a3)
{
  v21 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    if (*(*(a3 + 56) + 8 * v14) <= 1uLL)
    {
      v15 = (*(a3 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];

      v18 = sub_1CF9E69D8();

      if (v18 > 2)
      {
        continue;
      }
    }

    *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    if (__OFADD__(v4++, 1))
    {
      __break(1u);
      return sub_1CF4F5784(v21, a2, v4, a3);
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1CF4F5784(v21, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1CF6F20C4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
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

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_1CF6F214C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1CF6F3794(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1CF6F21B8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1CF6F21B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CF9E7F88();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C22C0, &unk_1CFA10820);
        v5 = sub_1CF9E6DB8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1CF6F2488(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1CF6F22C0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CF6F22C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
LABEL_5:
    v5 = *(v4 + 24 * a3 + 16);
    v6 = a3;
    while (1)
    {
      v7 = (v4 + 24 * v6);
      v8 = *(v7 - 1);
      v9 = *(v5 + 16);
      if (!v9)
      {
        break;
      }

      if (v9 > 4)
      {
        v13 = *(v5 + 16) & 3;
        if ((v9 & 3) == 0)
        {
          v13 = 4;
        }

        v11 = v9 - v13;
        v14 = 0uLL;
        v15 = v9 - v13;
        v16 = (v5 + 80);
        v17 = 0uLL;
        do
        {
          v18 = v16 - 6;
          v19 = vld3q_f64(v18);
          v20 = vld3q_f64(v16);
          v14 = vbslq_s8(vcgtq_s64(v19, v14), v19, v14);
          v17 = vbslq_s8(vcgtq_s64(v20, v17), v20, v17);
          v16 += 12;
          v15 -= 4;
        }

        while (v15);
        v21 = vbslq_s8(vcgtq_s64(v14, v17), v14, v17);
        v22 = vextq_s8(v21, v21, 8uLL).u64[0];
        v10 = vbsl_s8(vcgtd_s64(v21.i64[0], v22), *v21.i8, v22);
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      v23 = v9 - v11;
      v24 = (v5 + 32 + 24 * v11);
      do
      {
        v26 = *v24;
        v24 += 3;
        v25 = v26;
        if (v26 > v10)
        {
          v10 = v25;
        }

        --v23;
      }

      while (v23);
      v12 = *(v8 + 16);
      if (v12)
      {
        goto LABEL_21;
      }

      if (v10 <= 0)
      {
        goto LABEL_4;
      }

LABEL_39:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      --v6;
      v39 = v7 - 3;
      v41 = *v7;
      v40 = v7[1];
      *v7 = *(v7 - 3);
      v7[2] = *(v7 - 1);
      *v39 = v41;
      v39[1] = v40;
      v39[2] = v5;
      if (v6 == result)
      {
LABEL_4:
        if (++a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    v12 = *(v8 + 16);
    if (!v12)
    {
      goto LABEL_4;
    }

    v10 = 0;
LABEL_21:
    if (v12 > 1)
    {
      v27 = 0;
      v29 = 0;
      v28 = v12 & 0x7FFFFFFFFFFFFFFELL;
      v30 = (v8 + 56);
      v31 = v12 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v32 = *(v30 - 3);
        v34 = *v30;
        v30 += 6;
        v33 = v34;
        if (v32 > v27)
        {
          v27 = v32;
        }

        if (v33 > v29)
        {
          v29 = v33;
        }

        v31 -= 2;
      }

      while (v31);
      if (v27 <= v29)
      {
        v27 = v29;
      }

      if (v12 == v28)
      {
LABEL_36:
        if (v27 >= v10)
        {
          goto LABEL_4;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v35 = v12 - v28;
    v36 = (v8 + 24 * v28 + 32);
    do
    {
      v38 = *v36;
      v36 += 3;
      v37 = v38;
      if (v38 > v27)
      {
        v27 = v37;
      }

      --v35;
    }

    while (v35);
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1CF6F2488(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v180 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_172:
    v8 = *v180;
    if (!*v180)
    {
      goto LABEL_210;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_174;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *a3;
      v12 = *(*a3 + 24 * v8 + 16);
      v13 = *(v12 + 16);
      if (v13)
      {
        if (v13 > 4)
        {
          v16 = *(v12 + 16) & 3;
          if ((v13 & 3) == 0)
          {
            v16 = 4;
          }

          v15 = v13 - v16;
          v17 = (v12 + 80);
          v18 = 0uLL;
          v19 = v15;
          v20 = 0uLL;
          do
          {
            v21 = v17 - 6;
            v22 = vld3q_f64(v21);
            v23 = vld3q_f64(v17);
            v18 = vbslq_s8(vcgtq_s64(v22, v18), v22, v18);
            v20 = vbslq_s8(vcgtq_s64(v23, v20), v23, v20);
            v17 += 12;
            v19 -= 4;
          }

          while (v19);
          v24 = vbslq_s8(vcgtq_s64(v18, v20), v18, v20);
          v25 = vextq_s8(v24, v24, 8uLL).u64[0];
          v14 = vbsl_s8(vcgtd_s64(v24.i64[0], v25), *v24.i8, v25);
        }

        else
        {
          v14 = 0;
          v15 = 0;
        }

        v26 = v13 - v15;
        v27 = (v12 + 24 * v15 + 32);
        do
        {
          v29 = *v27;
          v27 += 3;
          v28 = v29;
          if (*&v29 > *&v14)
          {
            v14 = v28;
          }

          --v26;
        }

        while (v26);
      }

      else
      {
        v14 = 0;
      }

      v30 = *(v11 + 24 * v10 + 16);
      v31 = *(v30 + 16);
      if (v31)
      {
        if (v31 >= 5)
        {
          v34 = *(v30 + 16) & 3;
          if ((v31 & 3) == 0)
          {
            v34 = 4;
          }

          v33 = v31 - v34;
          v35 = (v30 + 80);
          v36 = 0uLL;
          v37 = v33;
          v38 = 0uLL;
          do
          {
            v39 = v35 - 6;
            v40 = vld3q_f64(v39);
            v41 = vld3q_f64(v35);
            v36 = vbslq_s8(vcgtq_s64(v40, v36), v40, v36);
            v38 = vbslq_s8(vcgtq_s64(v41, v38), v41, v38);
            v35 += 12;
            v37 -= 4;
          }

          while (v37);
          v42 = vbslq_s8(vcgtq_s64(v36, v38), v36, v38);
          v43 = vextq_s8(v42, v42, 8uLL).u64[0];
          v32 = vbsl_s8(vcgtd_s64(v42.i64[0], v43), *v42.i8, v43);
        }

        else
        {
          v32 = 0;
          v33 = 0;
        }

        v44 = v31 - v33;
        v45 = (v30 + 24 * v33 + 32);
        do
        {
          v47 = *v45;
          v45 += 3;
          v46 = v47;
          if (*&v47 > *&v32)
          {
            v32 = v46;
          }

          --v44;
        }

        while (v44);
      }

      else
      {
        v32 = 0;
      }

      if (v5)
      {
      }

      v8 = v10 + 2;
      if (v10 + 2 < v6)
      {
        do
        {
          v48 = *(v11 + 24 * v8 + 16);
          v49 = *(v48 + 16);
          if (v49)
          {
            if (v49 > 4)
            {
              v52 = *(v48 + 16) & 3;
              if ((v49 & 3) == 0)
              {
                v52 = 4;
              }

              v51 = v49 - v52;
              v53 = (v48 + 80);
              v54 = 0uLL;
              v55 = v51;
              v56 = 0uLL;
              do
              {
                v57 = v53 - 6;
                v58 = vld3q_f64(v57);
                v59 = vld3q_f64(v53);
                v54 = vbslq_s8(vcgtq_s64(v58, v54), v58, v54);
                v56 = vbslq_s8(vcgtq_s64(v59, v56), v59, v56);
                v53 += 12;
                v55 -= 4;
              }

              while (v55);
              v60 = vbslq_s8(vcgtq_s64(v54, v56), v54, v56);
              v61 = vextq_s8(v60, v60, 8uLL).u64[0];
              v50 = vbsl_s8(vcgtd_s64(v60.i64[0], v61), *v60.i8, v61);
            }

            else
            {
              v50 = 0;
              v51 = 0;
            }

            v62 = v49 - v51;
            v63 = (v48 + 24 * v51 + 32);
            do
            {
              v65 = *v63;
              v63 += 3;
              v64 = v65;
              if (*&v65 > *&v50)
              {
                v50 = v64;
              }

              --v62;
            }

            while (v62);
          }

          else
          {
            v50 = 0;
          }

          v66 = *(v12 + 16);
          if (v66)
          {
            if (v66 > 4)
            {
              v69 = *(v12 + 16) & 3;
              if ((v66 & 3) == 0)
              {
                v69 = 4;
              }

              v68 = v66 - v69;
              v70 = (v12 + 80);
              v71 = 0uLL;
              v72 = v68;
              v73 = 0uLL;
              do
              {
                result = (v70 - 6);
                v74 = vld3q_f64(result);
                v75 = vld3q_f64(v70);
                v71 = vbslq_s8(vcgtq_s64(v74, v71), v74, v71);
                v73 = vbslq_s8(vcgtq_s64(v75, v73), v75, v73);
                v70 += 12;
                v72 -= 4;
              }

              while (v72);
              v76 = vbslq_s8(vcgtq_s64(v71, v73), v71, v73);
              v77 = vextq_s8(v76, v76, 8uLL).u64[0];
              v67 = vbsl_s8(vcgtd_s64(v76.i64[0], v77), *v76.i8, v77);
            }

            else
            {
              v67 = 0;
              v68 = 0;
            }

            v78 = v66 - v68;
            v79 = (v12 + 24 * v68 + 32);
            do
            {
              v81 = *v79;
              v79 += 3;
              v80 = v81;
              if (*&v81 > *&v67)
              {
                v67 = v80;
              }

              --v78;
            }

            while (v78);
            if (*&v32 < *&v14 == *&v67 >= *&v50)
            {
              goto LABEL_63;
            }
          }

          else if (*&v32 < *&v14 == *&v50 < 1)
          {
            goto LABEL_63;
          }

          ++v8;
          v12 = v48;
        }

        while (v8 != v6);
        v8 = v6;
      }

LABEL_63:
      if (*&v32 < *&v14)
      {
        if (v8 < v10)
        {
          goto LABEL_203;
        }

        if (v10 < v8)
        {
          v82 = 0;
          v83 = 24 * v8;
          v84 = 24 * v10;
          v85 = v10;
          do
          {
            if (v85 != (v8 + v82 - 1))
            {
              v91 = *a3;
              if (!*a3)
              {
                goto LABEL_207;
              }

              v86 = (v91 + v84);
              v87 = v91 + v83;
              v88 = *v86;
              v89 = *(v86 + 1);
              v90 = *(v87 - 24);
              v86[2] = *(v87 - 8);
              *v86 = v90;
              *(v87 - 24) = v88;
              *(v87 - 16) = v89;
            }

            ++v85;
            --v82;
            v83 -= 24;
            v84 += 24;
          }

          while (v85 < v8 + v82);
          v6 = a3[1];
        }
      }
    }

    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_200;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_201;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          result = sub_1CF6F3368(v9);
          v9 = result;
LABEL_174:
          v175 = *(v9 + 2);
          if (v175 >= 2)
          {
            while (*a3)
            {
              v176 = *&v9[16 * v175];
              v177 = *&v9[16 * v175 + 24];
              sub_1CF6F2E1C((*a3 + 24 * v176), (*a3 + 24 * *&v9[16 * v175 + 16]), *a3 + 24 * v177, v8);
              if (v5)
              {
              }

              if (v177 < v176)
              {
                goto LABEL_197;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = sub_1CF6F3368(v9);
              }

              if (v175 - 2 >= *(v9 + 2))
              {
                goto LABEL_198;
              }

              v178 = &v9[16 * v175];
              *v178 = v176;
              *(v178 + 1) = v177;
              result = sub_1CF6F32DC(v175 - 1);
              v175 = *(v9 + 2);
              if (v175 <= 1)
              {
              }
            }

            goto LABEL_208;
          }
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_121:
    if (v8 < v10)
    {
      goto LABEL_199;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1CF1F6594(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v129 = *(v9 + 2);
    v128 = *(v9 + 3);
    v130 = v129 + 1;
    if (v129 >= v128 >> 1)
    {
      result = sub_1CF1F6594((v128 > 1), v129 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v130;
    v131 = &v9[16 * v129];
    *(v131 + 4) = v10;
    *(v131 + 5) = v8;
    v132 = *v180;
    if (!*v180)
    {
      goto LABEL_209;
    }

    if (v129)
    {
      while (1)
      {
        v133 = v130 - 1;
        if (v130 >= 4)
        {
          break;
        }

        if (v130 == 3)
        {
          v134 = *(v9 + 4);
          v135 = *(v9 + 5);
          v144 = __OFSUB__(v135, v134);
          v136 = v135 - v134;
          v137 = v144;
LABEL_141:
          if (v137)
          {
            goto LABEL_188;
          }

          v150 = &v9[16 * v130];
          v152 = *v150;
          v151 = *(v150 + 1);
          v153 = __OFSUB__(v151, v152);
          v154 = v151 - v152;
          v155 = v153;
          if (v153)
          {
            goto LABEL_191;
          }

          v156 = &v9[16 * v133 + 32];
          v158 = *v156;
          v157 = *(v156 + 1);
          v144 = __OFSUB__(v157, v158);
          v159 = v157 - v158;
          if (v144)
          {
            goto LABEL_194;
          }

          if (__OFADD__(v154, v159))
          {
            goto LABEL_195;
          }

          if (v154 + v159 >= v136)
          {
            if (v136 < v159)
            {
              v133 = v130 - 2;
            }

            goto LABEL_162;
          }

          goto LABEL_155;
        }

        v160 = &v9[16 * v130];
        v162 = *v160;
        v161 = *(v160 + 1);
        v144 = __OFSUB__(v161, v162);
        v154 = v161 - v162;
        v155 = v144;
LABEL_155:
        if (v155)
        {
          goto LABEL_190;
        }

        v163 = &v9[16 * v133];
        v165 = *(v163 + 4);
        v164 = *(v163 + 5);
        v144 = __OFSUB__(v164, v165);
        v166 = v164 - v165;
        if (v144)
        {
          goto LABEL_193;
        }

        if (v166 < v154)
        {
          goto LABEL_3;
        }

LABEL_162:
        v171 = v133 - 1;
        if (v133 - 1 >= v130)
        {
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
          goto LABEL_202;
        }

        if (!*a3)
        {
          goto LABEL_206;
        }

        v172 = *&v9[16 * v171 + 32];
        v173 = *&v9[16 * v133 + 40];
        sub_1CF6F2E1C((*a3 + 24 * v172), (*a3 + 24 * *&v9[16 * v133 + 32]), *a3 + 24 * v173, v132);
        if (v5)
        {
        }

        if (v173 < v172)
        {
          goto LABEL_184;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1CF6F3368(v9);
        }

        if (v171 >= *(v9 + 2))
        {
          goto LABEL_185;
        }

        v174 = &v9[16 * v171];
        *(v174 + 4) = v172;
        *(v174 + 5) = v173;
        result = sub_1CF6F32DC(v133);
        v130 = *(v9 + 2);
        if (v130 <= 1)
        {
          goto LABEL_3;
        }
      }

      v138 = &v9[16 * v130 + 32];
      v139 = *(v138 - 64);
      v140 = *(v138 - 56);
      v144 = __OFSUB__(v140, v139);
      v141 = v140 - v139;
      if (v144)
      {
        goto LABEL_186;
      }

      v143 = *(v138 - 48);
      v142 = *(v138 - 40);
      v144 = __OFSUB__(v142, v143);
      v136 = v142 - v143;
      v137 = v144;
      if (v144)
      {
        goto LABEL_187;
      }

      v145 = &v9[16 * v130];
      v147 = *v145;
      v146 = *(v145 + 1);
      v144 = __OFSUB__(v146, v147);
      v148 = v146 - v147;
      if (v144)
      {
        goto LABEL_189;
      }

      v144 = __OFADD__(v136, v148);
      v149 = v136 + v148;
      if (v144)
      {
        goto LABEL_192;
      }

      if (v149 >= v141)
      {
        v167 = &v9[16 * v133 + 32];
        v169 = *v167;
        v168 = *(v167 + 1);
        v144 = __OFSUB__(v168, v169);
        v170 = v168 - v169;
        if (v144)
        {
          goto LABEL_196;
        }

        if (v136 < v170)
        {
          v133 = v130 - 2;
        }

        goto LABEL_162;
      }

      goto LABEL_141;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_172;
    }
  }

  v92 = *a3;
LABEL_83:
  v93 = *(v92 + 24 * v8 + 16);
  v94 = v8;
  while (1)
  {
    v95 = (v92 + 24 * v94);
    v96 = *(v95 - 1);
    v97 = *(v93 + 16);
    if (!v97)
    {
      v100 = *(v96 + 16);
      if (!v100)
      {
        goto LABEL_82;
      }

      v98 = 0;
LABEL_99:
      if (v100 > 1)
      {
        result = 0;
        v115 = 0;
        v114 = v100 & 0x7FFFFFFFFFFFFFFELL;
        v116 = (v96 + 56);
        v117 = v100 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v118 = *(v116 - 3);
          v120 = *v116;
          v116 += 6;
          v119 = v120;
          if (v118 > result)
          {
            result = v118;
          }

          if (v119 > v115)
          {
            v115 = v119;
          }

          v117 -= 2;
        }

        while (v117);
        if (result <= v115)
        {
          result = v115;
        }

        if (v100 == v114)
        {
LABEL_114:
          if (result >= v98)
          {
            goto LABEL_82;
          }

          goto LABEL_117;
        }
      }

      else
      {
        result = 0;
        v114 = 0;
      }

      v121 = v100 - v114;
      v122 = (v96 + 24 * v114 + 32);
      do
      {
        v124 = *v122;
        v122 += 3;
        v123 = v124;
        if (v124 > result)
        {
          result = v123;
        }

        --v121;
      }

      while (v121);
      goto LABEL_114;
    }

    if (v97 > 4)
    {
      v101 = *(v93 + 16) & 3;
      if ((v97 & 3) == 0)
      {
        v101 = 4;
      }

      v99 = v97 - v101;
      v102 = 0uLL;
      v103 = v97 - v101;
      v104 = (v93 + 80);
      v105 = 0uLL;
      do
      {
        v106 = v104 - 6;
        v107 = vld3q_f64(v106);
        v108 = vld3q_f64(v104);
        v102 = vbslq_s8(vcgtq_s64(v107, v102), v107, v102);
        v105 = vbslq_s8(vcgtq_s64(v108, v105), v108, v105);
        v104 += 12;
        v103 -= 4;
      }

      while (v103);
      v109 = vbslq_s8(vcgtq_s64(v102, v105), v102, v105);
      v110 = vextq_s8(v109, v109, 8uLL).u64[0];
      v98 = vbsl_s8(vcgtd_s64(v109.i64[0], v110), *v109.i8, v110);
    }

    else
    {
      v98 = 0;
      v99 = 0;
    }

    v111 = v97 - v99;
    v112 = (v93 + 32 + 24 * v99);
    do
    {
      v113 = *v112;
      v112 += 3;
      result = v113;
      if (v113 > v98)
      {
        v98 = result;
      }

      --v111;
    }

    while (v111);
    v100 = *(v96 + 16);
    if (v100)
    {
      goto LABEL_99;
    }

    if (v98 <= 0)
    {
      goto LABEL_82;
    }

LABEL_117:
    if (!v92)
    {
      break;
    }

    --v94;
    v125 = v95 - 3;
    v126 = *v95;
    v127 = v95[1];
    *v95 = *(v95 - 3);
    v95[2] = *(v95 - 1);
    *v125 = v126;
    v125[1] = v127;
    v125[2] = v93;
    if (v94 == v10)
    {
LABEL_82:
      if (++v8 != v6)
      {
        goto LABEL_83;
      }

      v8 = v6;
      goto LABEL_121;
    }
  }

  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
  return result;
}