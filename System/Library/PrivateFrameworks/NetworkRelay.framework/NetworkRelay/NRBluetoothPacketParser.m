@interface NRBluetoothPacketParser
- (BOOL)start;
- (NRBluetoothPacketParser)initWithBluetoothUUID:(id)a3 queue:(id)a4;
- (NRBluetoothPacketParser)initWithDeviceIdentifier:(id)a3 queue:(id)a4;
- (NSString)description;
- (void)cancel;
- (void)changeStateTo:(uint64_t)a1;
- (void)dealloc;
- (void)handleIncomingWakePacket:(uint64_t)a3 spi:;
- (void)handleInternalError:(uint64_t)a3;
- (void)resetContextForPriorityInner:(int)a3 teardownContext:;
- (void)sendDatapathReport:(uint64_t)a1;
- (void)sendXPCCommDictionary:(id)a3;
- (void)sendXPCCommDictionaryInner:(uint64_t)a1;
- (void)sendXPCDictionary:(uint64_t)a1;
- (void)setReceiveXPCCommDictionaryHandler:(id)a3;
- (void)setupNexusChannelForPriority:(void *)a3 channelUUID:;
- (void)teardown;
- (void)updateReadyStateIfApplicable;
@end

@implementation NRBluetoothPacketParser

void __44__NRBluetoothPacketParser_armLinkStatsTimer__block_invoke(uint64_t a1)
{
  v317 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 13) != 4)
  {
    v3 = *(WeakRetained + 73);
    v4 = *(WeakRetained + 78);
    *(WeakRetained + 78) = v3;
    v5 = *(WeakRetained + 72);
    v6 = *(WeakRetained + 81);
    *(WeakRetained + 81) = v5;
    v7 = *(WeakRetained + 77);
    v294 = *(WeakRetained + 79);
    *(WeakRetained + 79) = v7;
    v309 = *(WeakRetained + 82);
    v293 = *(WeakRetained + 76);
    *(WeakRetained + 82) = v293;
    v298 = *(WeakRetained + 80);
    v299 = *(WeakRetained + 75);
    *(WeakRetained + 80) = v299;
    v296 = *(WeakRetained + 83);
    v297 = *(WeakRetained + 74);
    *(WeakRetained + 83) = v297;
    v8 = *(WeakRetained + 68);
    v9 = *(WeakRetained + 60);
    v10 = *(WeakRetained + 61);
    *(WeakRetained + 68) = v9;
    v11 = *(WeakRetained + 69);
    *(WeakRetained + 69) = v10;
    v12 = *(WeakRetained + 70);
    v13 = *(WeakRetained + 62);
    v14 = *(WeakRetained + 63);
    *(WeakRetained + 70) = v13;
    v15 = *(WeakRetained + 71);
    *(WeakRetained + 71) = v14;
    v16 = *(WeakRetained + 64);
    v18 = *(WeakRetained + 56);
    v17 = *(WeakRetained + 57);
    *(WeakRetained + 64) = v18;
    v19 = *(WeakRetained + 65);
    v295 = v17;
    *(WeakRetained + 65) = v17;
    v307 = *(WeakRetained + 66);
    v20 = *(WeakRetained + 59);
    v303 = v19;
    v305 = *(WeakRetained + 58);
    *(WeakRetained + 66) = v305;
    v300 = *(WeakRetained + 67);
    v301 = v20;
    *(WeakRetained + 67) = v20;
    v311 = WeakRetained;
    if (v3 != v4 || v5 != v6 || v9 != v8 || v13 != v12 || v10 != v11 || v14 != v15)
    {
      v291 = v16;
      v21 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 6));
      if (sNRCopyLogToStdErr == 1)
      {

LABEL_12:
        v23 = v7;
        v24 = _NRCopyLogObjectForNRUUID(v311[6]);
        v25 = *(a1 + 40);
        _NRLogWithArgs(v24, 0, "LinkStats - BT(M): Tx [ be %4llu, bk %4llu, %8llu B, %8llu B/s ] Rx [ be %4llu, bk %4llu, %8llu B, %8llu B/s ]", v26, v27, v28, v29, v30, v9 - v8);

        v16 = v291;
        v7 = v23;
        v19 = v303;
        WeakRetained = v311;
        goto LABEL_13;
      }

      v290 = v7;
      v22 = v21;
      v289 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

      v7 = v290;
      v19 = v303;
      WeakRetained = v311;
      v16 = v291;
      if (v289)
      {
        goto LABEL_12;
      }
    }

LABEL_13:
    v292 = v18 - v16;
    if (v7 != v294 || v293 != v309 || v305 != v307 || v18 != v16 || v301 != v300 || v295 != v19)
    {
      v31 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 6));
      if (sNRCopyLogToStdErr == 1)
      {

LABEL_22:
        v34 = _NRCopyLogObjectForNRUUID(v311[6]);
        v35 = *(a1 + 40);
        _NRLogWithArgs(v34, 0, "LinkStats - BT(U): Tx [ vo %4llu, vi %4llu, %8llu B, %8llu B/s ] Rx [ vo %4llu, vi %4llu, %8llu B, %8llu B/s ]", v36, v37, v38, v39, v40, v292);

        v19 = v303;
        WeakRetained = v311;
        goto LABEL_23;
      }

      v32 = v31;
      v33 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

      v19 = v303;
      WeakRetained = v311;
      if (v33)
      {
        goto LABEL_22;
      }
    }

LABEL_23:
    if (v299 != v298 || v297 != v296 || v295 != v19)
    {
      v41 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 6));
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v42 = v41;
        v43 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);

        WeakRetained = v311;
        if (!v43)
        {
          goto LABEL_30;
        }
      }

      v44 = _NRCopyLogObjectForNRUUID(v311[6]);
      v45 = *(a1 + 40);
      _NRLogWithArgs(v44, 0, "LinkStats - BT(D): Tx [ vo %4llu, %8llu B, %8llu B/s ] Rx [ vo %4llu, %8llu B, %8llu B/s ]", v46, v47, v48, v49, v50, v292);

      WeakRetained = v311;
    }

LABEL_30:
    *(WeakRetained + 24) = *(WeakRetained + 23);
    v51 = *(WeakRetained + 25);
    if (*(a1 + 40) * v51 < 0xFuLL)
    {
LABEL_187:
      *(WeakRetained + 25) = v51 + 1;
      goto LABEL_188;
    }

    v52 = *(WeakRetained + 18);
    if (v52)
    {
      v53 = *(WeakRetained + 20);
      if (!v53)
      {
LABEL_36:
        v54 = 0;
        goto LABEL_37;
      }

      if (v53 == *(WeakRetained + 19))
      {
        v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
        [v54 addObject:&unk_286D2CED8];
        WeakRetained = v311;
        v52 = v311[18];
        LODWORD(v53) = 1;
LABEL_37:
        *(WeakRetained + 20) = *(WeakRetained + 19);
        if ((v52 & 2) != 0)
        {
          v55 = *(WeakRetained + 22);
          if (v55)
          {
            if (v55 == *(WeakRetained + 21))
            {
              if (!v54)
              {
                v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              [v54 addObject:&unk_286D2CEF0];
              WeakRetained = v311;
              v52 = v311[18];
              LODWORD(v53) = 1;
            }
          }
        }

        *(WeakRetained + 22) = *(WeakRetained + 21);
        if ((v52 & 4) != 0 && (v56 = *(WeakRetained + 24)) != 0 && v56 == *(WeakRetained + 23))
        {
          if (!v54)
          {
            v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v54 addObject:&unk_286D2CF08];
          v311[24] = v311[23];
          v311[25] = 0;
        }

        else
        {
          *(WeakRetained + 24) = *(WeakRetained + 23);
          *(WeakRetained + 25) = 0;
          if (!v53)
          {
            goto LABEL_185;
          }
        }

        v54 = v54;
        if (*(v311 + 13) != 4)
        {
          if (v54)
          {
            v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v312 = 0u;
            v313 = 0u;
            v314 = 0u;
            v315 = 0u;
            v302 = v54;
            v58 = v54;
            v59 = [v58 countByEnumeratingWithState:&v312 objects:v316 count:16];
            if (v59)
            {
              v60 = v59;
              v61 = *v313;
              v310 = *v313;
              v304 = v58;
              v306 = v57;
              do
              {
                v62 = 0;
                v308 = v60;
                do
                {
                  if (*v313 != v61)
                  {
                    objc_enumerationMutation(v58);
                  }

                  v64 = [*(*(&v312 + 1) + 8 * v62) unsignedCharValue];
                  v65 = v311;
                  if (*(v311 + 13) == 4)
                  {
                    v66 = v64 - 1;
                    goto LABEL_176;
                  }

                  v66 = v64 - 1;
                  if ((v64 - 1) < 3)
                  {
                    v67 = v311[2 * (v66 & 0xF) + 13];
                    if (!v67)
                    {
                      goto LABEL_56;
                    }

                    v68 = v67[3];
                    if (!v68)
                    {
                      goto LABEL_56;
                    }

                    v69 = 0;
                    v70 = off_27996AFD8[(v64 - 1)];
                    v71 = *(v68 + 82);
                    v72 = v68 + 36;
                    while (2)
                    {
                      v80 = (((117 * v71) >> 8) + (((v71 - ((117 * v71) >> 8)) & 0xFE) >> 1)) >> 3;
                      v81 = v71 - 11 * v80;
                      v82 = *(v72 + 4 * (v71 - 11 * v80));
                      if (!v82)
                      {
                        goto LABEL_68;
                      }

                      v83 = _NRCopyLogObjectForNRUUID(v65[6]);
                      if (sNRCopyLogToStdErr == 1)
                      {

                        goto LABEL_73;
                      }

                      v84 = v83;
                      v85 = os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT);

                      if (v85)
                      {
LABEL_73:
                        v86 = _NRCopyLogObjectForNRUUID(v311[6]);
                        _NRLogWithArgs(v86, 0, "LinkStats : %@ -----------------------------------", v87, v88, v89, v90, v91, v70);
                      }

                      v65 = v311;
                      if (v82)
                      {
                        v92 = _NRCopyLogObjectForNRUUID(v311[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_78;
                        }

                        v93 = v92;
                        v94 = os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v94)
                        {
LABEL_78:
                          v95 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v95, 0, "LinkStats : %@ NtL - StartNtL", v96, v97, v98, v99, v100, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 2) != 0)
                      {
                        v101 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_83;
                        }

                        v102 = v101;
                        v103 = os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v103)
                        {
LABEL_83:
                          v104 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v104, 0, "LinkStats : %@ NtL - WaitForLinkOutput", v105, v106, v107, v108, v109, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 4) != 0)
                      {
                        v110 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_88;
                        }

                        v111 = v110;
                        v112 = os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v112)
                        {
LABEL_88:
                          v113 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v113, 0, "LinkStats : %@ NtL - WriteContextInvalid", v114, v115, v116, v117, v118, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 8) != 0)
                      {
                        v119 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_93;
                        }

                        v120 = v119;
                        v121 = os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v121)
                        {
LABEL_93:
                          v122 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v122, 0, "LinkStats : %@ NtL - StartNtLOuter", v123, v124, v125, v126, v127, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 0x10) != 0)
                      {
                        v128 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_98;
                        }

                        v129 = v128;
                        v130 = os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v130)
                        {
LABEL_98:
                          v131 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v131, 0, "LinkStats : %@ NtL - StartNtLInner", v132, v133, v134, v135, v136, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 0x20) != 0)
                      {
                        v137 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_103;
                        }

                        v138 = v137;
                        v139 = os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v139)
                        {
LABEL_103:
                          v140 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v140, 0, "LinkStats : %@ NtL - WroteBytesLWB", v141, v142, v143, v144, v145, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 0x40) != 0)
                      {
                        v146 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_108;
                        }

                        v147 = v146;
                        v148 = os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v148)
                        {
LABEL_108:
                          v149 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v149, 0, "LinkStats : %@ NtL - NotEnoughRoomForMaxTLVLen", v150, v151, v152, v153, v154, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 0x80) != 0)
                      {
                        v155 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_113;
                        }

                        v156 = v155;
                        v157 = os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v157)
                        {
LABEL_113:
                          v158 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v158, 0, "LinkStats : %@ NtL - WroteBytesSlot", v159, v160, v161, v162, v163, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 0x100) != 0)
                      {
                        v164 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_118;
                        }

                        v165 = v164;
                        v166 = os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v166)
                        {
LABEL_118:
                          v167 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v167, 0, "LinkStats : %@ NtL - WroteBytesBuflet", v168, v169, v170, v171, v172, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 0x200) != 0)
                      {
                        v173 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_123;
                        }

                        v174 = v173;
                        v175 = os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v175)
                        {
LABEL_123:
                          v176 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v176, 0, "LinkStats : %@ NtL - NoDataToWrite", v177, v178, v179, v180, v181, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 0x400) != 0)
                      {
                        v182 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_128;
                        }

                        v183 = v182;
                        v184 = os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v184)
                        {
LABEL_128:
                          v185 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v185, 0, "LinkStats : %@ NtL - NoDataFromNexus", v186, v187, v188, v189, v190, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 0x800) != 0)
                      {
                        v191 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_133;
                        }

                        v192 = v191;
                        v193 = os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v193)
                        {
LABEL_133:
                          v194 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v194, 0, "LinkStats : %@ NtL - InvokeSendCallback", v195, v196, v197, v198, v199, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 0x1000) != 0)
                      {
                        v200 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_138;
                        }

                        v201 = v200;
                        v202 = os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v202)
                        {
LABEL_138:
                          v203 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v203, 0, "LinkStats : %@ NtL - NoOutputSpace", v204, v205, v206, v207, v208, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 0x2000) != 0)
                      {
                        v209 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_143;
                        }

                        v210 = v209;
                        v211 = os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v211)
                        {
LABEL_143:
                          v212 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v212, 0, "LinkStats : %@ NtL - MemmovingLWB", v213, v214, v215, v216, v217, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 0x4000) != 0)
                      {
                        v218 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_148;
                        }

                        v219 = v218;
                        v220 = os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v220)
                        {
LABEL_148:
                          v221 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v221, 0, "LinkStats : %@ NtL - NotMemmovingLWB", v222, v223, v224, v225, v226, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 0x8000) != 0)
                      {
                        v227 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_153;
                        }

                        v228 = v227;
                        v229 = os_log_type_enabled(v227, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v229)
                        {
LABEL_153:
                          v230 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v230, 0, "LinkStats : %@ NtL - EndNtLInner", v231, v232, v233, v234, v235, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 0x10000) != 0)
                      {
                        v236 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_158;
                        }

                        v237 = v236;
                        v238 = os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v238)
                        {
LABEL_158:
                          v239 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v239, 0, "LinkStats : %@ NtL - RxSync", v240, v241, v242, v243, v244, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 0x20000) != 0)
                      {
                        v245 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_163;
                        }

                        v246 = v245;
                        v247 = os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v247)
                        {
LABEL_163:
                          v248 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v248, 0, "LinkStats : %@ NtL - EndNtLOuter", v249, v250, v251, v252, v253, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 0x40000) != 0)
                      {
                        v254 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_168;
                        }

                        v255 = v254;
                        v256 = os_log_type_enabled(v254, OS_LOG_TYPE_DEFAULT);

                        v65 = v311;
                        if (v256)
                        {
LABEL_168:
                          v257 = _NRCopyLogObjectForNRUUID(v311[6]);
                          _NRLogWithArgs(v257, 0, "LinkStats : %@ NtL - FinishNtL", v258, v259, v260, v261, v262, v70);

                          v65 = v311;
                        }
                      }

                      if ((v82 & 0x80000) != 0)
                      {
                        v263 = _NRCopyLogObjectForNRUUID(v65[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v264 = v263;
                          v265 = os_log_type_enabled(v263, OS_LOG_TYPE_DEFAULT);

                          v65 = v311;
                          if (!v265)
                          {
                            goto LABEL_68;
                          }
                        }

                        v73 = _NRCopyLogObjectForNRUUID(v311[6]);
                        _NRLogWithArgs(v73, 0, "LinkStats : %@ NtL - LinkOutputAvailable", v74, v75, v76, v77, v78, v70);

                        v65 = v311;
                      }

LABEL_68:
                      v71 = v81 + 1;
                      if (v69++ >= 0xA)
                      {
                        v58 = v304;
                        v57 = v306;
                        v60 = v308;
                        v61 = v310;
LABEL_176:
                        if (v66 > 2u)
                        {
                          v63 = &unk_286D2CF68;
                          goto LABEL_57;
                        }

LABEL_56:
                        v63 = qword_27996B010[v66];
                        goto LABEL_57;
                      }

                      continue;
                    }
                  }

                  v266 = _NRCopyLogObjectForNRUUID(v311[6]);
                  v267 = v266;
                  if (sNRCopyLogToStdErr == 1)
                  {

LABEL_179:
                    v269 = _NRCopyLogObjectForNRUUID(v311[6]);
                    _NRLogWithArgs(v269, 17, "Invalid priority %d", v270, v271, v272, v273, v274, v64);

                    goto LABEL_180;
                  }

                  v268 = os_log_type_enabled(v266, OS_LOG_TYPE_FAULT);

                  if (v268)
                  {
                    goto LABEL_179;
                  }

LABEL_180:
                  v63 = &unk_286D2CF68;
                  v61 = v310;
LABEL_57:
                  [v57 addObject:v63];
                  ++v62;
                }

                while (v62 != v60);
                v60 = [v58 countByEnumeratingWithState:&v312 objects:v316 count:16];
              }

              while (v60);
            }

            v275 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [v275 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"datapath-report-stall"];
            [v275 setObject:v57 forKeyedSubscript:@"channel-id-list"];
            [(NRBluetoothPacketParser *)v311 sendDatapathReport:v275];

            v54 = v302;
            goto LABEL_182;
          }

          v280 = nrCopyLogObj_560();
          v281 = v280;
          if (sNRCopyLogToStdErr == 1)
          {

LABEL_194:
            v283 = nrCopyLogObj_560();
            _NRLogWithArgs(v283, 17, "%s called with null linkChannelPriorityArray", v284, v285, v286, v287, v288, "[NRBluetoothPacketParser reportDataStall:]");

            v54 = 0;
            goto LABEL_182;
          }

          v282 = os_log_type_enabled(v280, OS_LOG_TYPE_FAULT);

          v54 = 0;
          if (v282)
          {
            goto LABEL_194;
          }
        }

LABEL_182:

        WeakRetained = v311;
        v276 = v311[26] + 1;
        v311[26] = v276;
        if ((15 * v276) < 0xB4)
        {
LABEL_186:

          WeakRetained = v311;
          v51 = v311[25];
          goto LABEL_187;
        }

        if (*(v311 + 13) != 4)
        {
          v277 = v54;
          v278 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v278 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"datapath-report-remediate"];
          [(NRBluetoothPacketParser *)v311 sendDatapathReport:v278];

          v54 = v277;
          WeakRetained = v311;
        }

LABEL_185:
        *(WeakRetained + 26) = 0;
        goto LABEL_186;
      }
    }

    LODWORD(v53) = 0;
    goto LABEL_36;
  }

LABEL_188:
  v279 = *MEMORY[0x277D85DE8];
}

- (void)handleInternalError:(uint64_t)a3
{
  v10 = a2;
  v11 = v10;
  if (a1 && *(a1 + 13) != 4)
  {
    if (!v10)
    {
      v23 = nrCopyLogObj_560();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v24 = v23;
        v25 = os_log_type_enabled(v23, OS_LOG_TYPE_FAULT);

        if (!v25)
        {
          goto LABEL_9;
        }
      }

      v26 = nrCopyLogObj_560();
      _NRLogWithArgs(v26, 17, "%s called with null errorFormat", v27, v28, v29, v30, v31, "[NRBluetoothPacketParser handleInternalError:]");

      goto LABEL_9;
    }

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v10 arguments:&a9];
    v13 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v14 = v13;
      v15 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

      if (!v15)
      {
LABEL_8:
        v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v22 setObject:v12 forKeyedSubscript:@"error"];
        [(NRBluetoothPacketParser *)a1 sendXPCDictionary:v22];
        [(NRBluetoothPacketParser *)a1 teardown];

        goto LABEL_9;
      }
    }

    v16 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    _NRLogWithArgs(v16, 0, "%s%.30s:%-4d internal error: %@", v17, v18, v19, v20, v21, "");

    goto LABEL_8;
  }

LABEL_9:
}

- (void)handleIncomingWakePacket:(uint64_t)a3 spi:
{
  if (a1 && *(a1 + 13) != 4)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    [v9 setObject:v7 forKeyedSubscript:@"wake-pkt-sn"];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
    [v9 setObject:v8 forKeyedSubscript:@"wake-pkt-spi"];

    [(NRBluetoothPacketParser *)a1 sendXPCDictionary:v9];
  }
}

- (void)sendXPCDictionary:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 8))
  {
    if (*(a1 + 408))
    {
      v5 = *(a1 + 64);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __45__NRBluetoothPacketParser_sendXPCDictionary___block_invoke;
      v6[3] = &unk_27996B248;
      v6[4] = a1;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }

  else
  {
    [*(a1 + 416) sendXPCCommDictionary:v3];
  }
}

uint64_t __45__NRBluetoothPacketParser_sendXPCDictionary___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 13) != 4)
  {
    v2 = *(v1 + 408);
    if (v2)
    {
      return (*(v2 + 16))(v2, *(result + 40));
    }
  }

  return result;
}

- (void)teardown
{
  if (!a1)
  {
    return;
  }

  v2 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v3 = v2;
    v4 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v5 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
  _NRLogWithArgs(v5, 0, "%s%.30s:%-4d Teardown", v6, v7, v8, v9, v10, "");

LABEL_6:
  [(NRBluetoothPacketParser *)a1 changeStateTo:?];
  *(a1 + 15) = 0;
  v11 = *(a1 + 416);
  if (v11)
  {
    [v11 cancel];
    v12 = *(a1 + 416);
    *(a1 + 416) = 0;
  }

  v13 = *(a1 + 312);
  if (v13)
  {
    v14 = *(a1 + 144);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      dispatch_source_cancel(v13);
      v15 = *(a1 + 312);
      *(a1 + 312) = 0;

      goto LABEL_13;
    }

    *(a1 + 144) = v14 & 0xFFFFFFFFFFFFFFF7;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_11:
      dispatch_resume(*(a1 + 312));
      v13 = *(a1 + 312);
      goto LABEL_12;
    }

    v43 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v51 = v43;
      v52 = os_log_type_enabled(v43, OS_LOG_TYPE_INFO);

      if (!v52)
      {
        goto LABEL_11;
      }
    }

    v53 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    _NRLogWithArgs(v53, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v54, v55, v56, v57, v58, "");

    goto LABEL_11;
  }

LABEL_13:
  v16 = *(a1 + 320);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = *(a1 + 144);
  if ((v17 & 0x80) != 0)
  {
    *(a1 + 144) = v17 & 0xFFFFFFFFFFFFFF7FLL;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_16:
      dispatch_resume(*(a1 + 320));
      v16 = *(a1 + 320);
      goto LABEL_17;
    }

    v44 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v59 = v44;
      v60 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);

      if (!v60)
      {
        goto LABEL_16;
      }
    }

    v61 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    _NRLogWithArgs(v61, 1, "%s%.30s:%-4d source-resume: NexusVOOutput", v62, v63, v64, v65, v66, "");

    goto LABEL_16;
  }

LABEL_17:
  dispatch_source_cancel(v16);
  v18 = *(a1 + 320);
  *(a1 + 320) = 0;

LABEL_18:
  if (*(a1 + 216))
  {
    if (!*(a1 + 376))
    {
      os_channel_destroy();
    }

    *(a1 + 216) = 0;
  }

  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  v19 = *(a1 + 328);
  if (v19)
  {
    v20 = *(a1 + 144);
    if ((v20 & 0x10) == 0)
    {
LABEL_26:
      dispatch_source_cancel(v19);
      v21 = *(a1 + 328);
      *(a1 + 328) = 0;

      goto LABEL_27;
    }

    *(a1 + 144) = v20 & 0xFFFFFFFFFFFFFFEFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_25:
      dispatch_resume(*(a1 + 328));
      v19 = *(a1 + 328);
      goto LABEL_26;
    }

    v45 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v67 = v45;
      v68 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);

      if (!v68)
      {
        goto LABEL_25;
      }
    }

    v69 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    _NRLogWithArgs(v69, 1, "%s%.30s:%-4d source-resume: NexusVIInput", v70, v71, v72, v73, v74, "");

    goto LABEL_25;
  }

LABEL_27:
  v22 = *(a1 + 336);
  if (!v22)
  {
    goto LABEL_32;
  }

  v23 = *(a1 + 144);
  if ((v23 & 0x100) != 0)
  {
    *(a1 + 144) = v23 & 0xFFFFFFFFFFFFFEFFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_30:
      dispatch_resume(*(a1 + 336));
      v22 = *(a1 + 336);
      goto LABEL_31;
    }

    v46 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v75 = v46;
      v76 = os_log_type_enabled(v46, OS_LOG_TYPE_INFO);

      if (!v76)
      {
        goto LABEL_30;
      }
    }

    v77 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    _NRLogWithArgs(v77, 1, "%s%.30s:%-4d source-resume: NexusVIOutput", v78, v79, v80, v81, v82, "");

    goto LABEL_30;
  }

LABEL_31:
  dispatch_source_cancel(v22);
  v24 = *(a1 + 336);
  *(a1 + 336) = 0;

LABEL_32:
  if (*(a1 + 224))
  {
    if (!*(a1 + 384))
    {
      os_channel_destroy();
    }

    *(a1 + 224) = 0;
  }

  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v25 = *(a1 + 344);
  if (v25)
  {
    v26 = *(a1 + 144);
    if ((v26 & 0x20) == 0)
    {
LABEL_40:
      dispatch_source_cancel(v25);
      v27 = *(a1 + 344);
      *(a1 + 344) = 0;

      goto LABEL_41;
    }

    *(a1 + 144) = v26 & 0xFFFFFFFFFFFFFFDFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_39:
      dispatch_resume(*(a1 + 344));
      v25 = *(a1 + 344);
      goto LABEL_40;
    }

    v47 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v83 = v47;
      v84 = os_log_type_enabled(v47, OS_LOG_TYPE_INFO);

      if (!v84)
      {
        goto LABEL_39;
      }
    }

    v85 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    _NRLogWithArgs(v85, 1, "%s%.30s:%-4d source-resume: NexusBEInput", v86, v87, v88, v89, v90, "");

    goto LABEL_39;
  }

LABEL_41:
  v28 = *(a1 + 352);
  if (!v28)
  {
    goto LABEL_46;
  }

  v29 = *(a1 + 144);
  if ((v29 & 0x200) != 0)
  {
    *(a1 + 144) = v29 & 0xFFFFFFFFFFFFFDFFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_44:
      dispatch_resume(*(a1 + 352));
      v28 = *(a1 + 352);
      goto LABEL_45;
    }

    v48 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v91 = v48;
      v92 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);

      if (!v92)
      {
        goto LABEL_44;
      }
    }

    v93 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    _NRLogWithArgs(v93, 1, "%s%.30s:%-4d source-resume: NexusBEOutput", v94, v95, v96, v97, v98, "");

    goto LABEL_44;
  }

LABEL_45:
  dispatch_source_cancel(v28);
  v30 = *(a1 + 352);
  *(a1 + 352) = 0;

LABEL_46:
  if (*(a1 + 232))
  {
    if (!*(a1 + 392))
    {
      os_channel_destroy();
    }

    *(a1 + 232) = 0;
  }

  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  v31 = *(a1 + 360);
  if (v31)
  {
    v32 = *(a1 + 144);
    if ((v32 & 0x40) == 0)
    {
LABEL_54:
      dispatch_source_cancel(v31);
      v33 = *(a1 + 360);
      *(a1 + 360) = 0;

      goto LABEL_55;
    }

    *(a1 + 144) = v32 & 0xFFFFFFFFFFFFFFBFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_53:
      dispatch_resume(*(a1 + 360));
      v31 = *(a1 + 360);
      goto LABEL_54;
    }

    v49 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v99 = v49;
      v100 = os_log_type_enabled(v49, OS_LOG_TYPE_INFO);

      if (!v100)
      {
        goto LABEL_53;
      }
    }

    v101 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    _NRLogWithArgs(v101, 1, "%s%.30s:%-4d source-resume: NexusBKInput", v102, v103, v104, v105, v106, "");

    goto LABEL_53;
  }

LABEL_55:
  v34 = *(a1 + 368);
  if (v34)
  {
    v35 = *(a1 + 144);
    if ((v35 & 0x400) == 0)
    {
LABEL_59:
      dispatch_source_cancel(v34);
      v36 = *(a1 + 368);
      *(a1 + 368) = 0;

      goto LABEL_60;
    }

    *(a1 + 144) = v35 & 0xFFFFFFFFFFFFFBFFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_58:
      dispatch_resume(*(a1 + 368));
      v34 = *(a1 + 368);
      goto LABEL_59;
    }

    v50 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v107 = v50;
      v108 = os_log_type_enabled(v50, OS_LOG_TYPE_INFO);

      if (!v108)
      {
        goto LABEL_58;
      }
    }

    v109 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    _NRLogWithArgs(v109, 1, "%s%.30s:%-4d source-resume: NexusBKOutput", v110, v111, v112, v113, v114, "");

    goto LABEL_58;
  }

LABEL_60:
  if (*(a1 + 240))
  {
    if (!*(a1 + 400))
    {
      os_channel_destroy();
    }

    *(a1 + 240) = 0;
  }

  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  v37 = *(a1 + 72);
  *(a1 + 72) = 0;

  *(a1 + 16) = 0;
  v38 = *(a1 + 440);
  if (v38)
  {
    dispatch_source_cancel(v38);
    v39 = *(a1 + 440);
    *(a1 + 440) = 0;
  }

  v40 = *(a1 + 672);
  if (v40)
  {
    dispatch_source_cancel(v40);
    v41 = *(a1 + 672);
    *(a1 + 672) = 0;
  }

  v42 = *(a1 + 408);
  if (v42)
  {
    *(a1 + 408) = 0;
  }
}

- (void)changeStateTo:(uint64_t)a1
{
  v2 = *(a1 + 13);
  if (v2 == a2)
  {
    return;
  }

  v5 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
  if (v2 != 4)
  {
    if (sNRCopyLogToStdErr)
    {
    }

    else
    {
      v13 = v5;
      v14 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

      if (!v14)
      {
LABEL_16:
        *(a1 + 13) = a2;
        return;
      }
    }

    v20 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    v21 = *(a1 + 13);
    if (v21 >= 5)
    {
      v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%d)", v21];
    }

    else
    {
      v22 = off_27996AFB0[*(a1 + 13)];
    }

    v23 = off_27996AFB0[a2];
    _NRLogWithArgs(v20, 0, "%s%.30s:%-4d Changing state: %@ -> %@", v15, v16, v17, v18, v19, "");

    goto LABEL_16;
  }

  if (sNRCopyLogToStdErr)
  {
  }

  else
  {
    v6 = v5;
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);

    if (!v7)
    {
      return;
    }
  }

  v24 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
  _NRLogWithArgs(v24, 17, "Invalid state change %@", v8, v9, v10, v11, v12, a1);
}

- (void)resetContextForPriorityInner:(int)a3 teardownContext:
{
  if (!a1)
  {
    return;
  }

  v6 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v7 = v6;
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v14 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
  if (a2 >= 4)
  {
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%d)", a2];
  }

  else
  {
    v15 = off_27996AFF0[a2];
  }

  _NRLogWithArgs(v14, 0, "%s%.30s:%-4d Resetting context for priority: %@ (%d)", v9, v10, v11, v12, v13, "");

LABEL_9:
  v16 = 0xF7FBFDFF >> (8 * a2);
  if (a2 >= 4)
  {
    LOBYTE(v16) = -1;
  }

  *(a1 + 15) &= v16;
  if (!a3)
  {
    goto LABEL_59;
  }

  if ((a2 - 1) >= 3)
  {
    v18 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v19 = v18;
      v20 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

      if (!v20)
      {
        goto LABEL_20;
      }
    }

    v21 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    _NRLogWithArgs(v21, 17, "Invalid priority %d", v22, v23, v24, v25, v26, a2);
  }

  else if (*(16 * ((a2 - 1) & 0xF) + a1 + 96))
  {
    v17 = *(a1 + 680);
    if (v17)
    {
      *(a1 + 680) = v17 - 1;
    }
  }

LABEL_20:
  switch(a2)
  {
    case 1:
      v33 = *(a1 + 96);
      if (v33)
      {
        v34 = *v33;
        if (!*v33)
        {
          goto LABEL_50;
        }

        if (*v34)
        {
          free(*v34);
          ***(a1 + 96) = 0;
          v34 = **(a1 + 96);
        }

        if (v34[1] && (free(v34[1]), *(**(a1 + 96) + 8) = 0, v33 = *(a1 + 96), (v34 = *v33) == 0) || (free(v34), **(a1 + 96) = 0, (v33 = *(a1 + 96)) != 0))
        {
LABEL_50:
          free(v33);
          *(a1 + 96) = 0;
        }
      }

      v30 = a1 + 104;
      v29 = *(a1 + 104);
      if (v29)
      {
        goto LABEL_52;
      }

      break;
    case 2:
      v31 = *(a1 + 112);
      if (v31)
      {
        v32 = *v31;
        if (!*v31)
        {
          goto LABEL_40;
        }

        if (*v32)
        {
          free(*v32);
          ***(a1 + 112) = 0;
          v32 = **(a1 + 112);
        }

        if (v32[1] && (free(v32[1]), *(**(a1 + 112) + 8) = 0, v31 = *(a1 + 112), (v32 = *v31) == 0) || (free(v32), **(a1 + 112) = 0, (v31 = *(a1 + 112)) != 0))
        {
LABEL_40:
          free(v31);
          *(a1 + 112) = 0;
        }
      }

      v30 = a1 + 120;
      v29 = *(a1 + 120);
      if (v29)
      {
        goto LABEL_52;
      }

      break;
    case 3:
      v27 = *(a1 + 128);
      if (v27)
      {
        v28 = *v27;
        if (!*v27)
        {
          goto LABEL_30;
        }

        if (*v28)
        {
          free(*v28);
          ***(a1 + 128) = 0;
          v28 = **(a1 + 128);
        }

        if (v28[1] && (free(v28[1]), *(**(a1 + 128) + 8) = 0, v27 = *(a1 + 128), (v28 = *v27) == 0) || (free(v28), **(a1 + 128) = 0, (v27 = *(a1 + 128)) != 0))
        {
LABEL_30:
          free(v27);
          *(a1 + 128) = 0;
        }
      }

      v30 = a1 + 136;
      v29 = *(a1 + 136);
      if (!v29)
      {
        break;
      }

LABEL_52:
      v35 = v29[3];
      if (!v35)
      {
        goto LABEL_58;
      }

      if (*v35)
      {
        free(*v35);
        **(*v30 + 24) = 0;
        v35 = *(*v30 + 24);
      }

      v36 = *(v35 + 8);
      if (v36)
      {
        free(v36);
        *(*(*v30 + 24) + 8) = 0;
        v29 = *v30;
        v35 = *(*v30 + 24);
        if (!v35)
        {
          goto LABEL_58;
        }
      }

      free(v35);
      *(*v30 + 24) = 0;
      v29 = *v30;
      if (*v30)
      {
LABEL_58:
        free(v29);
        *v30 = 0;
      }

      break;
    default:
      break;
  }

LABEL_59:
  v37 = *(a1 + 144);
  if ((v37 & 8) != 0 && *(a1 + 312))
  {
    *(a1 + 144) = v37 & 0xFFFFFFFFFFFFFFF7;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_62:
      dispatch_resume(*(a1 + 312));
      v37 = *(a1 + 144);
      goto LABEL_63;
    }

    v39 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v43 = v39;
      v44 = os_log_type_enabled(v39, OS_LOG_TYPE_INFO);

      if (!v44)
      {
        goto LABEL_62;
      }
    }

    v45 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    _NRLogWithArgs(v45, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v46, v47, v48, v49, v50, "");

    goto LABEL_62;
  }

LABEL_63:
  if ((v37 & 0x10) != 0 && *(a1 + 328))
  {
    *(a1 + 144) = v37 & 0xFFFFFFFFFFFFFFEFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_66:
      dispatch_resume(*(a1 + 328));
      v37 = *(a1 + 144);
      goto LABEL_67;
    }

    v40 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v51 = v40;
      v52 = os_log_type_enabled(v40, OS_LOG_TYPE_INFO);

      if (!v52)
      {
        goto LABEL_66;
      }
    }

    v53 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    _NRLogWithArgs(v53, 1, "%s%.30s:%-4d source-resume: NexusVIInput", v54, v55, v56, v57, v58, "");

    goto LABEL_66;
  }

LABEL_67:
  if ((v37 & 0x20) != 0 && *(a1 + 344))
  {
    *(a1 + 144) = v37 & 0xFFFFFFFFFFFFFFDFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_70:
      dispatch_resume(*(a1 + 344));
      v37 = *(a1 + 144);
      goto LABEL_71;
    }

    v41 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v59 = v41;
      v60 = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);

      if (!v60)
      {
        goto LABEL_70;
      }
    }

    v61 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    _NRLogWithArgs(v61, 1, "%s%.30s:%-4d source-resume: NexusBEInput", v62, v63, v64, v65, v66, "");

    goto LABEL_70;
  }

LABEL_71:
  if ((v37 & 0x40) == 0 || !*(a1 + 360))
  {
    return;
  }

  *(a1 + 144) = v37 & 0xFFFFFFFFFFFFFFBFLL;
  if (gNRPacketLoggingEnabled != 1)
  {
    goto LABEL_74;
  }

  v42 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_93:
    v69 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    _NRLogWithArgs(v69, 1, "%s%.30s:%-4d source-resume: NexusBKInput", v70, v71, v72, v73, v74, "");

    goto LABEL_74;
  }

  v67 = v42;
  v68 = os_log_type_enabled(v42, OS_LOG_TYPE_INFO);

  if (v68)
  {
    goto LABEL_93;
  }

LABEL_74:
  v38 = *(a1 + 360);

  dispatch_resume(v38);
}

- (void)cancel
{
  v3 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v4 = v3;
    v5 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v6 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
  _NRLogWithArgs(v6, 0, "%s%.30s:%-4d Cancel", v7, v8, v9, v10, v11, "");

LABEL_5:

  [(NRBluetoothPacketParser *)self teardown];
}

- (void)dealloc
{
  [(NRBluetoothPacketParser *)self cancel];
  readContextForMedium = self->_readContextForMedium;
  if (readContextForMedium)
  {
    var0 = readContextForMedium->var0;
    if (!readContextForMedium->var0)
    {
      goto LABEL_8;
    }

    if (*var0)
    {
      free(*var0);
      *self->_readContextForMedium->var0 = 0;
      var0 = self->_readContextForMedium->var0;
    }

    if (var0[1] && (free(var0[1]), *(self->_readContextForMedium->var0 + 1) = 0, readContextForMedium = self->_readContextForMedium, (var0 = readContextForMedium->var0) == 0) || (free(var0), self->_readContextForMedium->var0 = 0, (readContextForMedium = self->_readContextForMedium) != 0))
    {
LABEL_8:
      free(readContextForMedium);
      self->_readContextForMedium = 0;
    }
  }

  readContextForHigh = self->_readContextForHigh;
  if (readContextForHigh)
  {
    v6 = readContextForHigh->var0;
    if (!readContextForHigh->var0)
    {
      goto LABEL_16;
    }

    if (*v6)
    {
      free(*v6);
      *self->_readContextForHigh->var0 = 0;
      v6 = self->_readContextForHigh->var0;
    }

    if (v6[1] && (free(v6[1]), *(self->_readContextForHigh->var0 + 1) = 0, readContextForHigh = self->_readContextForHigh, (v6 = readContextForHigh->var0) == 0) || (free(v6), self->_readContextForHigh->var0 = 0, (readContextForHigh = self->_readContextForHigh) != 0))
    {
LABEL_16:
      free(readContextForHigh);
      self->_readContextForHigh = 0;
    }
  }

  readContextForIsochronous = self->_readContextForIsochronous;
  if (readContextForIsochronous)
  {
    v8 = readContextForIsochronous->var0;
    if (!readContextForIsochronous->var0)
    {
      goto LABEL_24;
    }

    if (*v8)
    {
      free(*v8);
      *self->_readContextForIsochronous->var0 = 0;
      v8 = self->_readContextForIsochronous->var0;
    }

    if (v8[1] && (free(v8[1]), *(self->_readContextForIsochronous->var0 + 1) = 0, readContextForIsochronous = self->_readContextForIsochronous, (v8 = readContextForIsochronous->var0) == 0) || (free(v8), self->_readContextForIsochronous->var0 = 0, (readContextForIsochronous = self->_readContextForIsochronous) != 0))
    {
LABEL_24:
      free(readContextForIsochronous);
      self->_readContextForIsochronous = 0;
    }
  }

  writeContextForMedium = self->_writeContextForMedium;
  if (writeContextForMedium)
  {
    var3 = writeContextForMedium->var3;
    if (!var3)
    {
      goto LABEL_32;
    }

    if (*var3)
    {
      free(*var3);
      *self->_writeContextForMedium->var3 = 0;
      var3 = self->_writeContextForMedium->var3;
    }

    if (var3[1] && (free(var3[1]), *(self->_writeContextForMedium->var3 + 1) = 0, writeContextForMedium = self->_writeContextForMedium, (var3 = writeContextForMedium->var3) == 0) || (free(var3), self->_writeContextForMedium->var3 = 0, (writeContextForMedium = self->_writeContextForMedium) != 0))
    {
LABEL_32:
      free(writeContextForMedium);
      self->_writeContextForMedium = 0;
    }
  }

  writeContextForHigh = self->_writeContextForHigh;
  if (writeContextForHigh)
  {
    v12 = writeContextForHigh->var3;
    if (!v12)
    {
      goto LABEL_40;
    }

    if (*v12)
    {
      free(*v12);
      *self->_writeContextForHigh->var3 = 0;
      v12 = self->_writeContextForHigh->var3;
    }

    if (v12[1] && (free(v12[1]), *(self->_writeContextForHigh->var3 + 1) = 0, writeContextForHigh = self->_writeContextForHigh, (v12 = writeContextForHigh->var3) == 0) || (free(v12), self->_writeContextForHigh->var3 = 0, (writeContextForHigh = self->_writeContextForHigh) != 0))
    {
LABEL_40:
      free(writeContextForHigh);
      self->_writeContextForHigh = 0;
    }
  }

  writeContextForIsochronous = self->_writeContextForIsochronous;
  if (writeContextForIsochronous)
  {
    v14 = writeContextForIsochronous->var3;
    if (!v14)
    {
      goto LABEL_48;
    }

    if (*v14)
    {
      free(*v14);
      *self->_writeContextForIsochronous->var3 = 0;
      v14 = self->_writeContextForIsochronous->var3;
    }

    if (v14[1] && (free(v14[1]), *(self->_writeContextForIsochronous->var3 + 1) = 0, writeContextForIsochronous = self->_writeContextForIsochronous, (v14 = writeContextForIsochronous->var3) == 0) || (free(v14), self->_writeContextForIsochronous->var3 = 0, (writeContextForIsochronous = self->_writeContextForIsochronous) != 0))
    {
LABEL_48:
      free(writeContextForIsochronous);
      self->_writeContextForIsochronous = 0;
    }
  }

  v15 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_52:
    v18 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
    _NRLogWithArgs(v18, 0, "%s%.30s:%-4d Dealloc", v19, v20, v21, v22, v23, "");

    goto LABEL_53;
  }

  v16 = v15;
  v17 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    goto LABEL_52;
  }

LABEL_53:
  v24 = self->_nrUUID;
  os_unfair_lock_lock(&sNRLogLock);
  [sNRUUIDsEligibleForLogObject removeObject:v24];

  os_unfair_lock_unlock(&sNRLogLock);
  v25.receiver = self;
  v25.super_class = NRBluetoothPacketParser;
  [(NRBluetoothPacketParser *)&v25 dealloc];
}

- (BOOL)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__NRBluetoothPacketParser_start__block_invoke;
  block[3] = &unk_27996B180;
  block[4] = self;
  dispatch_async(queue, block);
  return 1;
}

void __32__NRBluetoothPacketParser_start__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 13) != 4 && (*(v1 + 14) & 1) == 0)
  {
    *(v1 + 14) = 1;
    v3 = *(a1 + 32);
    if (*(v3 + 8) == 1)
    {
      goto LABEL_13;
    }

    objc_initWeak(location, v3);
    v4 = [NRXPCComm alloc];
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = v5[5];
    }

    v6 = v5;
    v7 = *(a1 + 32);
    if (v7)
    {
      v7 = v7[8];
    }

    v8 = v7;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __32__NRBluetoothPacketParser_start__block_invoke_2;
    v20 = &unk_27996AF20;
    objc_copyWeak(&v21, location);
    v9 = [(NRXPCComm *)v4 initWithDeviceIdentifier:v6 notificationQueue:v8 notificationBlock:&v17];
    v10 = *(a1 + 32);
    v11 = *(v10 + 416);
    *(v10 + 416) = v9;

    [*(*(a1 + 32) + 416) activate];
    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
    v3 = *(a1 + 32);
    if (v3)
    {
LABEL_13:
      if (!*(v3 + 672))
      {
        v12 = v3;
        v13 = *(v3 + 64);
        v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v13);
        v15 = v12[84];
        v12[84] = v14;

        dispatch_source_set_timer(v12[84], 0, 0x12A05F200uLL, 0x1DCD6500uLL);
        objc_initWeak(&from, v12);
        v16 = v12[84];
        location[0] = MEMORY[0x277D85DD0];
        location[1] = 3221225472;
        location[2] = __44__NRBluetoothPacketParser_armLinkStatsTimer__block_invoke;
        location[3] = &unk_27996AF48;
        objc_copyWeak(v23, &from);
        v23[1] = 5;
        dispatch_source_set_event_handler(v16, location);
        dispatch_resume(v12[84]);
        objc_destroyWeak(v23);
        objc_destroyWeak(&from);
      }
    }
  }
}

void __32__NRBluetoothPacketParser_start__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[13] != 4)
  {
    v4 = WeakRetained;
    [WeakRetained sendXPCCommDictionary:v5];
    WeakRetained = v4;
  }
}

- (void)sendDatapathReport:(uint64_t)a1
{
  v13 = a2;
  v3 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v4 = v3;
    v5 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v6 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
  _NRLogWithArgs(v6, 0, "%s%.30s:%-4d sending datapath report: %@", v7, v8, v9, v10, v11, "");

LABEL_5:
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v12 setObject:v13 forKeyedSubscript:@"datapath-report"];
  [(NRBluetoothPacketParser *)a1 sendXPCDictionary:v12];
}

- (void)setReceiveXPCCommDictionaryHandler:(id)a3
{
  v4 = MEMORY[0x25F8740C0](a3, a2);
  xpcCommDictionaryCallback = self->_xpcCommDictionaryCallback;
  self->_xpcCommDictionaryCallback = v4;

  MEMORY[0x2821F96F8]();
}

- (void)sendXPCCommDictionary:(id)a3
{
  v4 = a3;
  v5 = self;
  if (self->_direct)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__NRBluetoothPacketParser_sendXPCCommDictionary___block_invoke;
    v7[3] = &unk_27996B248;
    v7[4] = v5;
    v8 = v4;
    dispatch_async(queue, v7);
  }

  else
  {
    [(NRBluetoothPacketParser *)self sendXPCCommDictionaryInner:v4];
  }
}

- (void)sendXPCCommDictionaryInner:(uint64_t)a1
{
  v1103 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!a1 || *(a1 + 13) == 4)
  {
    goto LABEL_307;
  }

  v1091 = a1;
  v4 = (a1 + 48);
  v5 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
  p_inst_meths = &OBJC_PROTOCOL___NSCopying.inst_meths;
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v7 = v5;
    v8 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = _NRCopyLogObjectForNRUUID(*v4);
  _NRLogWithArgs(v9, 0, "%s%.30s:%-4d Received notification: %@", v10, v11, v12, v13, v14, "");

LABEL_7:
  v15 = [v3 objectForKeyedSubscript:@"packet-logging"];

  if (v15)
  {
    v16 = [v3 objectForKeyedSubscript:@"packet-logging"];
    gNRPacketLoggingEnabled = [v16 BOOLValue];
  }

  v17 = [v3 objectForKeyedSubscript:@"test-wake-pkt"];

  v18 = v1091;
  if (v17)
  {
    v19 = [v3 objectForKeyedSubscript:@"test-wake-pkt"];
    *(v1091 + 23) = [v19 BOOLValue];
  }

  v20 = [v3 objectForKeyedSubscript:@"message"];

  if (v20)
  {
    if (*(v18 + 13) == 1)
    {
      [(NRBluetoothPacketParser *)v18 changeStateTo:?];
    }

    v21 = [v3 objectForKeyedSubscript:@"message"];
    v22 = [v21 objectForKeyedSubscript:@"message-data"];
    v23 = [v21 objectForKeyedSubscript:@"channel-id"];
    v1082 = v21;
    v1083 = v22;
    if ([v23 integerValue] == 2)
    {
      LODWORD(v1090) = 2;
      v24 = 112;
LABEL_18:

LABEL_19:
      if (*(v18 + v24))
      {
        v25 = _NRCopyLogObjectForNRUUID(*v4);
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v26 = v25;
          v27 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);

          v18 = v1091;
          if (!v27)
          {
            goto LABEL_24;
          }
        }

        v28 = _NRCopyLogObjectForNRUUID(*(v18 + 48));
        v1065 = *(v1091 + v24);
        _NRLogWithArgs(v28, 1, "%s%.30s:%-4d Read context: %p", v29, v30, v31, v32, v33, "");

        v18 = v1091;
LABEL_24:
        v34 = **(v18 + v24);
        v35 = _NRCopyLogObjectForNRUUID(*(v18 + 48));
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v36 = v35;
          v37 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);

          if (!v37)
          {
LABEL_28:
            if (v34)
            {
              v44 = v1091;
              if ((*(v34 + 43) & 1) == 0)
              {
                *(v34 + 43) |= 1u;
                v45 = *(v44 + v24);
                v46 = *(v45 + 24);
                if (v46)
                {
                  v46(*(v45 + 32));
                }
              }

              v47 = off_27996AFD8[(v1090 - 1)];
              v48 = v44 + 16 * (v1090 - 1);
              v49 = v44;
              v50 = *(v48 + 104);
              v51 = _NRCopyLogObjectForNRUUID(*(v49 + 48));
              if (!v50)
              {
                if (sNRCopyLogToStdErr)
                {
                }

                else
                {
                  v682 = v51;
                  v683 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);

                  if (!v683)
                  {
                    goto LABEL_60;
                  }
                }

                v91 = _NRCopyLogObjectForNRUUID(*v4);
                StringFromNRLinkChannelPriority = createStringFromNRLinkChannelPriority(v1090);
                _NRLogWithArgs(v91, 16, "%s%.30s:%-4d Invalid write context %sptr for prio %@", v684, v685, v686, v687, v688, "");

                goto LABEL_59;
              }

              if (sNRCopyLogToStdErr)
              {
              }

              else
              {
                v53 = v51;
                v54 = os_log_type_enabled(v51, OS_LOG_TYPE_INFO);

                if (!v54)
                {
LABEL_39:
                  v61 = *(*(v48 + 104) + 24);
                  v62 = _NRCopyLogObjectForNRUUID(*v4);
                  if (v61)
                  {
                    v1076 = v23;
                    if (sNRCopyLogToStdErr)
                    {
                    }

                    else
                    {
                      v64 = v62;
                      v65 = os_log_type_enabled(v62, OS_LOG_TYPE_INFO);

                      if (!v65)
                      {
                        goto LABEL_48;
                      }
                    }

                    v66 = _NRCopyLogObjectForNRUUID(*v4);
                    _NRLogWithArgs(v66, 1, "%s%.30s:%-4d link Write context: %p", v67, v68, v69, v70, v71, "");

LABEL_48:
                    v72 = *(v61 + 24);
                    v73 = *(v61 + 28);
                    v74 = v1083;
                    if ([v1083 length] + v73 <= v72)
                    {
                      goto LABEL_63;
                    }

                    v75 = *(v61 + 28);
                    v76 = [v1083 length];
                    v77 = (v75 + v76);
                    *(v61 + 24) = v77;
                    if (v75 + v76)
                    {
                      v78 = reallocf(*(v61 + 8), v77);
                      if (v78)
                      {
                        *(v61 + 8) = v78;
                        v79 = _NRCopyLogObjectForNRUUID(*v4);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          v74 = v1083;
                        }

                        else
                        {
                          v97 = v79;
                          v98 = os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT);

                          v74 = v1083;
                          if (!v98)
                          {
                            goto LABEL_63;
                          }
                        }

                        v99 = _NRCopyLogObjectForNRUUID(*v4);
                        v1052 = *(v61 + 24);
                        _NRLogWithArgs(v99, 0, "%s%.30s:%-4d %@ link Write context staging buffer allocated: %u bytes", v100, v101, v102, v103, v104, "");

LABEL_63:
                        memcpy((*(v61 + 8) + *(v61 + 28)), [v74 bytes], objc_msgSend(v74, "length"));
                        *(v61 + 28) += [v74 length];
                        v18 = v1091;
                        if (*(v1091 + 13) == 4)
                        {
LABEL_276:

                          goto LABEL_277;
                        }

                        dispatch_assert_queue_V2(*(v1091 + 64));
                        if (v1090 == 1)
                        {
                          v105 = 0;
                          v109 = 0;
                          v1079 = NRBluetoothPacketParserSuspendNexusBEInputSource;
                          v1087 = 21;
                          v1086 = 480;
                          v106 = 344;
                          v107 = 280;
                          v108 = 232;
                        }

                        else if (v1090 == 3)
                        {
                          v1079 = NRBluetoothPacketParserSuspendNexusVOInputSource;
                          v105 = 1;
                          v1087 = 19;
                          v1086 = 448;
                          v106 = 312;
                          v107 = 248;
                          v108 = 216;
                          v109 = 1;
                        }

                        else
                        {
                          v109 = 0;
                          v1079 = NRBluetoothPacketParserSuspendNexusVIInputSource;
                          v105 = 1;
                          v1087 = 20;
                          v1086 = 464;
                          v106 = 328;
                          v107 = 264;
                          v108 = 224;
                        }

                        v1072 = *(v1091 + v108);
                        v1090 = *(v1091 + v107);
                        v126 = *(v1091 + v106);
                        v127 = 0x280D73000uLL;
                        if (gNRPacketLoggingEnabled == 1)
                        {
                          v1074 = v126;
                          v691 = _NRCopyLogObjectForNRUUID(*v4);
                          v692 = v691;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v127 = 0x280D73000;
                          }

                          else
                          {
                            v708 = os_log_type_enabled(v691, OS_LOG_TYPE_INFO);

                            v18 = v1091;
                            v126 = v1074;
                            v127 = 0x280D73000;
                            if (!v708)
                            {
                              goto LABEL_80;
                            }
                          }

                          v709 = _NRCopyLogObjectForNRUUID(*v4);
                          _NRLogWithArgs(v709, 1, "%s%.30s:%-4d starting NtL fast-path for %u", v710, v711, v712, v713, v714, "");

                          v126 = v1074;
                          v18 = v1091;
                        }

LABEL_80:
                        v128 = *(v18 + 15);
                        v1089 = *&v109 & ((v128 & 8) >> 3);
                        if (v1089 == 1)
                        {
                          v129 = (v18 + 136);
                          v130 = "Isochronous";
                          v131 = 3;
                          p_inst_meths = (&OBJC_PROTOCOL___NSCopying + 24);
                          goto LABEL_98;
                        }

                        if (!v105)
                        {
                          p_inst_meths = (&OBJC_PROTOCOL___NSCopying + 24);
                          goto LABEL_89;
                        }

                        if ((v128 & 4) != 0)
                        {
                          v129 = (v18 + 120);
                          p_inst_meths = &OBJC_PROTOCOL___NSCopying.inst_meths;
                          goto LABEL_97;
                        }

                        v132 = *(v18 + 112);
                        p_inst_meths = &OBJC_PROTOCOL___NSCopying.inst_meths;
                        if (!v132)
                        {
LABEL_89:
                          v129 = (v18 + 104);
                          v130 = "Medium";
                          v131 = 1;
                          goto LABEL_98;
                        }

                        if ((*(*v132 + 43) & 3) == 1 && (*(v18 + 17) & 1) == 0)
                        {

                          v1079 = 0;
                          v133 = 0;
                          v126 = 0;
                          v1090 = 0;
                          v1072 = 0;
                          v129 = (v18 + 120);
                        }

                        else
                        {
                          v129 = 0;
                          v133 = 1;
                        }

                        if (*(v18 + 17) == 1 && (*(v127 + 3640) & 1) != 0)
                        {
                          v1074 = v126;
                          v801 = _NRCopyLogObjectForNRUUID(*v4);
                          v802 = v801;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v127 = 0x280D73000;
                          }

                          else
                          {
                            LODWORD(v1088) = os_log_type_enabled(v801, OS_LOG_TYPE_INFO);

                            v18 = v1091;
                            v126 = v1074;
                            v127 = 0x280D73000;
                            if (!v1088)
                            {
                              goto LABEL_94;
                            }
                          }

                          v827 = _NRCopyLogObjectForNRUUID(*v4);
                          _NRLogWithArgs(v827, 1, "%s%.30s:%-4d sending packets over medium pipe", v828, v829, v830, v831, v832, "");

                          v126 = v1074;
                          v18 = v1091;
                        }

LABEL_94:
                        if (v129)
                        {
                          if (v133)
                          {
                            v131 = 0;
                            v130 = "Invalid";
                            goto LABEL_98;
                          }

LABEL_97:
                          v130 = "High";
                          v131 = 2;
LABEL_98:
                          v134 = *v129;
                          v1074 = v126;
                          if (v134)
                          {
                            v135 = *(v134 + 24);
                            if ((*(v135 + 84) & 1) == 0)
                            {
                              v1069 = v131;
                              v1068 = v130;
                              v1075 = v4;
                              v1071 = v3;
                              v136 = *(v135 + 8);
                              v137 = *(v135 + 83);
                              v138 = 584;
                              if (v137 == 3)
                              {
                                v138 = 600;
                              }

                              v383 = v137 == 2;
                              v139 = 616;
                              if (!v383)
                              {
                                v139 = v138;
                              }

                              v1077 = v139;
                              v140 = *(v127 + 3640);
                              v1080 = v129;
                              v1081 = v136;
                              if (v140 != 1)
                              {
                                goto LABEL_105;
                              }

                              v733 = _NRCopyLogObjectForNRUUID(*v1075);
                              v734 = v733;
                              if (*(p_inst_meths + 556) == 1)
                              {
                              }

                              else
                              {
                                v743 = os_log_type_enabled(v733, OS_LOG_TYPE_INFO);

                                v18 = v1091;
                                v136 = v1081;
                                if (!v743)
                                {
LABEL_105:
                                  v1070 = &v1068;
                                  LODWORD(v1085) = 0;
                                  v141 = 0;
                                  v142 = 0;
                                  ESPSequenceNumberFromPacket = 0;
                                  v143 = 0;
                                  v1078 = 0;
                                  v1088 = v135 + 36;
                                  v1100 = 0u;
                                  v1101 = 0u;
                                  v144 = 9;
                                  v1098 = 0u;
                                  v1099 = 0u;
                                  while (1)
                                  {
                                    if (*(v127 + 3640) == 1)
                                    {
                                      v224 = _NRCopyLogObjectForNRUUID(*v1075);
                                      if (*(p_inst_meths + 556) == 1)
                                      {

LABEL_217:
                                        v229 = _NRCopyLogObjectForNRUUID(*v1075);
                                        _NRLogWithArgs(v229, 1, "%s%.30s:%-4d %s: starting NtL inner loop", v230, v231, v232, v233, v234, "");

                                        v136 = v1081;
                                        v18 = v1091;
                                        goto LABEL_107;
                                      }

                                      v227 = v224;
                                      v228 = os_log_type_enabled(v224, OS_LOG_TYPE_INFO);

                                      v18 = v1091;
                                      v136 = v1081;
                                      if (v228)
                                      {
                                        goto LABEL_217;
                                      }
                                    }

LABEL_107:
                                    v145 = v144 | 0x10;
                                    if ((v1089 & 1) == 0)
                                    {
                                      v147 = *(v135 + 28);
                                      v146 = *(v135 + 32);
                                      if (v147 > v146)
                                      {
                                        v148 = *(v135 + 80);
                                        v1073 = (0x4000 - v148);
                                        if ((v147 - v146) >= (0x4000 - v148))
                                        {
                                          v149 = (0x4000 - v148);
                                        }

                                        else
                                        {
                                          v149 = (v147 - v146);
                                        }

                                        v150 = v136;
                                        memcpy((*v135 + v148), v136 + v146, v149);
                                        v151 = *(v135 + 28);
                                        v152 = *(v135 + 32) + v149;
                                        *(v135 + 32) = v152;
                                        if (v151 <= v152)
                                        {
                                          v153 = 0;
                                        }

                                        else
                                        {
                                          memmove(v150, &v150[v152], v151 - v152);
                                          v153 = *(v135 + 28) - *(v135 + 32);
                                        }

                                        *(v135 + 28) = v153;
                                        *(v135 + 32) = 0;
                                        *(v135 + 80) += v149;
                                        if (gNRPacketLoggingEnabled != 1)
                                        {
                                          goto LABEL_116;
                                        }

                                        v256 = _NRCopyLogObjectForNRUUID(*v1075);
                                        v257 = v256;
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          goto LABEL_242;
                                        }

                                        v285 = os_log_type_enabled(v256, OS_LOG_TYPE_INFO);

                                        v18 = v1091;
                                        if (v285)
                                        {
LABEL_242:
                                          v286 = _NRCopyLogObjectForNRUUID(*v1075);
                                          _NRLogWithArgs(v286, 1, "%s%.30s:%-4d %s: wrote %u (%u/%u) bytes from linkWriteBuffer", v287, v288, v289, v290, v291, "");

                                          v18 = v1091;
                                        }

LABEL_116:
                                        v145 = v144 | 0x30;
                                        v142 += v149;
                                        v127 = 0x280D73000;
                                      }
                                    }

                                    next_slot = ESPSequenceNumberFromPacket;
                                    if (v1090)
                                    {
                                      next_slot = os_channel_get_next_slot();
                                    }

                                    if (!next_slot)
                                    {
                                      v200 = 0;
                                      goto LABEL_168;
                                    }

                                    while (1)
                                    {
                                      v155 = 0x4000 - *(v135 + 80);
                                      if (v155 < nrMaxTLVLengthForPacket(v1099 + *(v18 + 28), (WORD1(v1098) - *(v18 + 28))))
                                      {
                                        v145 |= 0x40u;
                                        if (gNRPacketLoggingEnabled != 1)
                                        {
LABEL_166:
                                          v200 = next_slot;
                                          v18 = v1091;
                                          v127 = 0x280D73000;
                                          goto LABEL_168;
                                        }

                                        v251 = _NRCopyLogObjectForNRUUID(*v1075);
                                        if (sNRCopyLogToStdErr == 1)
                                        {
                                        }

                                        else
                                        {
                                          v266 = v251;
                                          LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v251, OS_LOG_TYPE_INFO);

                                          if (!ESPSequenceNumberFromPacket)
                                          {
                                            goto LABEL_166;
                                          }
                                        }

                                        v267 = _NRCopyLogObjectForNRUUID(*v1075);
                                        _NRLogWithArgs(v267, 1, "%s%.30s:%-4d %s: not enough room %u to fit maxTLVLen %u", v268, v269, v270, v271, v272, "");

                                        goto LABEL_166;
                                      }

                                      os_channel_slot_get_packet();
                                      os_packet_get_next_buflet();
                                      data_offset = os_buflet_get_data_offset();
                                      object_address = os_buflet_get_object_address();
                                      data_length = os_buflet_get_data_length();
                                      if (data_length >= 0x10000)
                                      {
                                        v461 = nrCopyLogObj_560();
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          goto LABEL_445;
                                        }

                                        v470 = v461;
                                        v471 = os_log_type_enabled(v461, OS_LOG_TYPE_ERROR);

                                        if (v471)
                                        {
LABEL_445:
                                          v472 = nrCopyLogObj_560();
                                          _NRLogWithArgs(v472, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen <= 65535", v473, v474, v475, v476, v477, "");
                                        }

                                        v478 = _os_log_pack_size();
                                        MEMORY[0x28223BE20](v478, v479);
                                        v480 = *__error();
                                        v481 = _os_log_pack_fill();
                                        *v481 = 136446210;
                                        *(v481 + 4) = "NRBluetoothPacketParserNexusToLinkLoop";
                                        goto LABEL_447;
                                      }

                                      if (*(v1091 + 9) == 1)
                                      {
                                        v1096 = 0;
                                        v1097 = 0;
                                        v159 = (*v135 + *(v135 + 80));
                                        v1096 = v159;
                                        LODWORD(v1097) = v155;
                                        v160 = *(v1091 + 28);
                                        v18 = v1091;
                                        if (*(v1091 + 10) == 1)
                                        {
                                          v161 = nrPacketTo6LoWPAN((v1099 + v160), (WORD1(v1098) - v160), &v1096, 1u, v1091 + 688, v1091 + 704, 0);
                                        }

                                        else
                                        {
                                          memcpy(v159, (v1099 + v160), WORD1(v1098) - v160);
                                          v161 = WORD1(v1098) - *(v18 + 28);
                                        }

                                        v127 = 0x280D73000uLL;
                                        if (gNRPacketLoggingEnabled != 1)
                                        {
                                          goto LABEL_135;
                                        }

                                        v168 = _NRCopyLogObjectForNRUUID(*v1075);
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          goto LABEL_152;
                                        }

                                        v169 = v168;
                                        v170 = os_log_type_enabled(v168, OS_LOG_TYPE_INFO);

                                        v18 = v1091;
                                        if (v170)
                                        {
LABEL_152:
                                          v171 = _NRCopyLogObjectForNRUUID(*v1075);
                                          _NRLogWithArgs(v171, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus (actual: %u)", v172, v173, v174, v175, v176, "");
                                          goto LABEL_157;
                                        }

                                        goto LABEL_135;
                                      }

                                      if (!data_length && WORD1(v1098))
                                      {
                                        v1096 = 0;
                                        v1097 = 0;
                                        v1096 = *v135 + *(v135 + 80);
                                        LODWORD(v1097) = v155;
                                        v18 = v1091;
                                        v161 = nrPacketToTLV((v1099 + *(v1091 + 28)), (WORD1(v1098) - *(v1091 + 28)), &v1096, 1, v1091 + 688, v1091 + 704);
                                        v127 = 0x280D73000uLL;
                                        if (gNRPacketLoggingEnabled == 1)
                                        {
                                          v162 = _NRCopyLogObjectForNRUUID(*v1075);
                                          if (sNRCopyLogToStdErr == 1)
                                          {
                                          }

                                          else
                                          {
                                            v178 = v162;
                                            v179 = os_log_type_enabled(v162, OS_LOG_TYPE_INFO);

                                            v18 = v1091;
                                            if (!v179)
                                            {
                                              goto LABEL_135;
                                            }
                                          }

                                          v171 = _NRCopyLogObjectForNRUUID(*v1075);
                                          getESPSequenceNumberFromPacket(v1099, WORD1(v1098));
                                          getESPSPIFromPacket(v1099, WORD1(v1098));
                                          _NRLogWithArgs(v171, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", v180, v181, v182, v183, v184, "");
LABEL_157:

                                          v18 = v1091;
                                        }

LABEL_135:
                                        v145 |= 0x80u;
                                        goto LABEL_136;
                                      }

                                      if (data_length)
                                      {
                                        v163 = object_address + data_offset;
                                        v1096 = 0;
                                        v1097 = 0;
                                        v1096 = *v135 + *(v135 + 80);
                                        LODWORD(v1097) = v155;
                                        v18 = v1091;
                                        v164 = data_length;
                                        v161 = nrPacketToTLV((v163 + *(v1091 + 28)), (data_length - *(v1091 + 28)), &v1096, 1, v1091 + 688, v1091 + 704);
                                        if (gNRPacketLoggingEnabled != 1)
                                        {
LABEL_132:
                                          v145 |= 0x100u;
                                          v127 = 0x280D73000;
                                          goto LABEL_136;
                                        }

                                        v177 = _NRCopyLogObjectForNRUUID(*v1075);
                                        if (sNRCopyLogToStdErr == 1)
                                        {
                                        }

                                        else
                                        {
                                          v186 = v177;
                                          LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v177, OS_LOG_TYPE_INFO);

                                          v18 = v1091;
                                          if (!ESPSequenceNumberFromPacket)
                                          {
                                            goto LABEL_132;
                                          }
                                        }

                                        v187 = _NRCopyLogObjectForNRUUID(*v1075);
                                        ESPSequenceNumberFromPacket = getESPSequenceNumberFromPacket(v163, v164);
                                        getESPSPIFromPacket(v163, v164);
                                        _NRLogWithArgs(v187, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", v188, v189, v190, v191, v192, "");

                                        v18 = v1091;
                                        goto LABEL_132;
                                      }

                                      v145 |= 0x200u;
                                      v127 = 0x280D73000uLL;
                                      if (gNRPacketLoggingEnabled == 1)
                                      {
                                        v185 = _NRCopyLogObjectForNRUUID(*v1075);
                                        if (sNRCopyLogToStdErr == 1)
                                        {
                                        }

                                        else
                                        {
                                          v193 = v185;
                                          v161 = os_log_type_enabled(v185, OS_LOG_TYPE_INFO);

                                          if (!v161)
                                          {
                                            goto LABEL_148;
                                          }
                                        }

                                        v194 = _NRCopyLogObjectForNRUUID(*v1075);
                                        _NRLogWithArgs(v194, 1, "%s%.30s:%-4d %s: No data to write", v195, v196, v197, v198, v199, "");
                                      }

                                      v161 = 0;
LABEL_148:
                                      v18 = v1091;
LABEL_136:
                                      *(v135 + 80) += v161;
                                      v165 = (v1089 & 1) != 0 ? 0 : os_channel_get_next_slot();
                                      ++v141;
                                      ++*(v18 + v1086);
                                      *(v18 + v1087) = 1;
                                      v142 += v161;
                                      if (!v165)
                                      {
                                        break;
                                      }

                                      v166 = *(v135 + 82);
                                      if (v166 >= 0xB)
                                      {
                                        v166 -= 11 * ((((117 * v166) >> 8) + (((v166 - ((117 * v166) >> 8)) & 0xFE) >> 1)) >> 3);
                                      }

                                      *(v1088 + 4 * v166) = v145;
                                      if (v166 < 0xAu)
                                      {
                                        v167 = v166 + 1;
                                      }

                                      else
                                      {
                                        v167 = v166 - 10;
                                      }

                                      *(v135 + 82) = v167;
                                      v143 = next_slot;
                                      next_slot = v165;
                                      v145 = 0;
                                    }

                                    v200 = 0;
                                    v143 = next_slot;
LABEL_168:
                                    v201 = *(v135 + 80);
                                    if (!*(v135 + 80))
                                    {
                                      v203 = v145 | 0x400;
                                      if (*(v127 + 3640) != 1)
                                      {
                                        goto LABEL_256;
                                      }

                                      v758 = _NRCopyLogObjectForNRUUID(*v1075);
                                      v759 = v758;
                                      if (sNRCopyLogToStdErr == 1)
                                      {

                                        goto LABEL_739;
                                      }

                                      v788 = os_log_type_enabled(v758, OS_LOG_TYPE_INFO);

                                      if (v788)
                                      {
LABEL_739:
                                        v789 = _NRCopyLogObjectForNRUUID(*v1075);
                                        _NRLogWithArgs(v789, 1, "%s%.30s:%-4d %s: nothing to read from nexus", v790, v791, v792, v793, v794, "");
                                      }

                                      v18 = v1091;
                                      v127 = 0x280D73000;
LABEL_256:
                                      v309 = v203 | 0x8000;
                                      if (*(v127 + 3640) == 1)
                                      {
                                        v737 = _NRCopyLogObjectForNRUUID(*v1075);
                                        v738 = v737;
                                        if (sNRCopyLogToStdErr == 1)
                                        {
                                        }

                                        else
                                        {
                                          v760 = os_log_type_enabled(v737, OS_LOG_TYPE_INFO);

                                          v18 = v1091;
                                          if (!v760)
                                          {
                                            goto LABEL_257;
                                          }
                                        }

                                        v761 = _NRCopyLogObjectForNRUUID(*v1075);
                                        _NRLogWithArgs(v761, 1, "%s%.30s:%-4d %s: out of NtL inner loop", v762, v763, v764, v765, v766, "");

                                        v18 = v1091;
                                      }

LABEL_257:
                                      if (v143)
                                      {
                                        os_channel_advance_slot();
                                        *(v18 + 18) = 1;
                                        v3 = v1071;
LABEL_260:
                                        if (v1085 > 8u || v1090 && os_channel_available_slot_count() <= 1)
                                        {
                                          v309 = v203 | 0x18000;
                                          if (gNRPacketLoggingEnabled != 1)
                                          {
                                            goto LABEL_264;
                                          }

                                          v756 = _NRCopyLogObjectForNRUUID(*v1075);
                                          v757 = v756;
                                          if (sNRCopyLogToStdErr == 1)
                                          {

                                            v3 = v1071;
                                            v18 = v1091;
                                            goto LABEL_737;
                                          }

                                          v781 = os_log_type_enabled(v756, OS_LOG_TYPE_INFO);

                                          v3 = v1071;
                                          v18 = v1091;
                                          if (v781)
                                          {
LABEL_737:
                                            v782 = _NRCopyLogObjectForNRUUID(*(v18 + 48));
                                            v1050 = *(v1091 + 432) * 0.000001;
                                            _NRLogWithArgs(v782, 1, "%s%.30s:%-4d %s: performing RX sync (%u packets, %u bytes, %u pending, %0.2f msec, canWriteMore %d, memmove %u)", v783, v784, v785, v786, v787, "");

                                            v18 = v1091;
                                          }

LABEL_264:
                                          os_channel_sync();
                                          *(v18 + 18) = 0;
                                        }
                                      }

                                      else
                                      {
                                        v3 = v1071;
                                        if (*(v18 + 18))
                                        {
                                          goto LABEL_260;
                                        }
                                      }

                                      if (gNRPacketLoggingEnabled == 1)
                                      {
                                        v739 = _NRCopyLogObjectForNRUUID(*v1075);
                                        v740 = v739;
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          v3 = v1071;
                                          v18 = v1091;
                                        }

                                        else
                                        {
                                          v767 = os_log_type_enabled(v739, OS_LOG_TYPE_INFO);

                                          v3 = v1071;
                                          v18 = v1091;
                                          if (!v767)
                                          {
                                            goto LABEL_266;
                                          }
                                        }

                                        v768 = _NRCopyLogObjectForNRUUID(*v1075);
                                        _NRLogWithArgs(v768, 1, "%s%.30s:%-4d %s: out of NtL outer loop", v769, v770, v771, v772, v773, "");
                                      }

LABEL_266:
                                      v4 = v1075;
                                      p_inst_meths = &OBJC_PROTOCOL___NSCopying.inst_meths;
                                      if (v201)
                                      {
LABEL_267:
                                        if (gNRPacketLoggingEnabled != 1)
                                        {
                                          goto LABEL_268;
                                        }

                                        v741 = _NRCopyLogObjectForNRUUID(*v4);
                                        v742 = v741;
                                        if (*(p_inst_meths + 556) == 1)
                                        {

                                          v3 = v1071;
                                          v18 = v1091;
                                          v4 = v1075;
                                          goto LABEL_735;
                                        }

                                        v774 = os_log_type_enabled(v741, OS_LOG_TYPE_INFO);

                                        v3 = v1071;
                                        v18 = v1091;
                                        v4 = v1075;
                                        if (v774)
                                        {
LABEL_735:
                                          v775 = _NRCopyLogObjectForNRUUID(*v4);
                                          _NRLogWithArgs(v775, 1, "%s%.30s:%-4d %s: done with NtL fast-path", v776, v777, v778, v779, v780, "");
                                        }

LABEL_268:
                                        v307 = *(v135 + 82);
                                        if (v307 >= 0xB)
                                        {
                                          v307 -= 11 * ((((117 * v307) >> 8) + (((v307 - ((117 * v307) >> 8)) & 0xFE) >> 1)) >> 3);
                                        }

                                        v308 = v307;
                                        *(v1088 + 4 * v307) = v309 | 0x60000;
LABEL_271:
                                        if (v308 < 0xA)
                                        {
                                          v310 = v307 + 1;
                                        }

                                        else
                                        {
                                          v310 = v307 - 10;
                                        }

                                        *(v135 + 82) = v310;
                                        goto LABEL_275;
                                      }

                                      if (v1069 <= 1)
                                      {
                                        if (v1069)
                                        {
                                          v361 = *(v18 + 144);
                                          if ((*(v18 + 15) & 4) == 0)
                                          {
                                            goto LABEL_410;
                                          }
                                        }

                                        else
                                        {
                                          v361 = *(v18 + 144);
LABEL_410:
                                          if ((v361 & 8) != 0 && *(v18 + 312))
                                          {
                                            *(v18 + 144) = v361 & 0xFFFFFFFFFFFFFFF7;
                                            if (gNRPacketLoggingEnabled != 1)
                                            {
                                              goto LABEL_413;
                                            }

                                            v835 = _NRCopyLogObjectForNRUUID(*v4);
                                            v836 = v835;
                                            if (sNRCopyLogToStdErr == 1)
                                            {

                                              v3 = v1071;
                                              v18 = v1091;
                                              v4 = v1075;
                                              goto LABEL_793;
                                            }

                                            v896 = os_log_type_enabled(v835, OS_LOG_TYPE_INFO);

                                            v3 = v1071;
                                            v18 = v1091;
                                            v4 = v1075;
                                            if (v896)
                                            {
LABEL_793:
                                              v897 = _NRCopyLogObjectForNRUUID(*v4);
                                              _NRLogWithArgs(v897, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v898, v899, v900, v901, v902, "");
                                            }

LABEL_413:
                                            dispatch_resume(*(v18 + 312));
                                            v361 = *(v18 + 144);
                                          }

                                          if ((v361 & 0x10) != 0 && *(v18 + 328))
                                          {
                                            *(v18 + 144) = v361 & 0xFFFFFFFFFFFFFFEFLL;
                                            if (gNRPacketLoggingEnabled != 1)
                                            {
                                              goto LABEL_417;
                                            }

                                            v837 = _NRCopyLogObjectForNRUUID(*v4);
                                            v838 = v837;
                                            if (sNRCopyLogToStdErr == 1)
                                            {

                                              v3 = v1071;
                                              v18 = v1091;
                                              v4 = v1075;
                                              goto LABEL_795;
                                            }

                                            v903 = os_log_type_enabled(v837, OS_LOG_TYPE_INFO);

                                            v3 = v1071;
                                            v18 = v1091;
                                            v4 = v1075;
                                            if (v903)
                                            {
LABEL_795:
                                              v904 = _NRCopyLogObjectForNRUUID(*v4);
                                              _NRLogWithArgs(v904, 1, "%s%.30s:%-4d source-resume: NexusVIInput", v905, v906, v907, v908, v909, "");
                                            }

LABEL_417:
                                            dispatch_resume(*(v18 + 328));
                                            v361 = *(v18 + 144);
                                          }
                                        }

                                        if ((v361 & 0x20) != 0 && *(v18 + 344))
                                        {
                                          *(v18 + 144) = v361 & 0xFFFFFFFFFFFFFFDFLL;
                                          if (gNRPacketLoggingEnabled != 1)
                                          {
                                            goto LABEL_421;
                                          }

                                          v833 = _NRCopyLogObjectForNRUUID(*v4);
                                          v834 = v833;
                                          if (sNRCopyLogToStdErr == 1)
                                          {

                                            v3 = v1071;
                                            v18 = v1091;
                                            v4 = v1075;
                                            goto LABEL_791;
                                          }

                                          v889 = os_log_type_enabled(v833, OS_LOG_TYPE_INFO);

                                          v3 = v1071;
                                          v18 = v1091;
                                          v4 = v1075;
                                          if (v889)
                                          {
LABEL_791:
                                            v890 = _NRCopyLogObjectForNRUUID(*v4);
                                            _NRLogWithArgs(v890, 1, "%s%.30s:%-4d source-resume: NexusBEInput", v891, v892, v893, v894, v895, "");
                                          }

LABEL_421:
                                          dispatch_resume(*(v18 + 344));
                                          v361 = *(v18 + 144);
                                        }

                                        if ((v361 & 0x40) == 0 || !*(v18 + 360))
                                        {
                                          goto LABEL_267;
                                        }

                                        v363 = (v18 + 360);
                                        *(v18 + 144) = v361 & 0xFFFFFFFFFFFFFFBFLL;
                                        if (gNRPacketLoggingEnabled == 1)
                                        {
                                          v458 = _NRCopyLogObjectForNRUUID(*v4);
                                          v459 = v458;
                                          if (sNRCopyLogToStdErr == 1)
                                          {

                                            goto LABEL_787;
                                          }

                                          v880 = os_log_type_enabled(v458, OS_LOG_TYPE_INFO);

                                          if (v880)
                                          {
LABEL_787:
                                            v881 = _NRCopyLogObjectForNRUUID(*v1075);
                                            _NRLogWithArgs(v881, 1, "%s%.30s:%-4d source-resume: NexusBKInput", v882, v883, v884, v885, v886, "");
                                            goto LABEL_807;
                                          }

LABEL_808:
                                          v3 = v1071;
                                          v18 = v1091;
                                          v4 = v1075;
                                        }

LABEL_430:
                                        dispatch_resume(*v363);
                                        p_inst_meths = (&OBJC_PROTOCOL___NSCopying + 24);
                                        goto LABEL_267;
                                      }

                                      if (v1069 == 2)
                                      {
                                        v362 = *(v18 + 144);
                                        if ((v362 & 8) != 0 && *(v18 + 312))
                                        {
                                          *(v18 + 144) = v362 & 0xFFFFFFFFFFFFFFF7;
                                          if (gNRPacketLoggingEnabled != 1)
                                          {
                                            goto LABEL_316;
                                          }

                                          v878 = _NRCopyLogObjectForNRUUID(*v4);
                                          v879 = v878;
                                          if (sNRCopyLogToStdErr == 1)
                                          {

                                            v3 = v1071;
                                            v18 = v1091;
                                            v4 = v1075;
                                            goto LABEL_804;
                                          }

                                          v930 = os_log_type_enabled(v878, OS_LOG_TYPE_INFO);

                                          v3 = v1071;
                                          v18 = v1091;
                                          v4 = v1075;
                                          if (v930)
                                          {
LABEL_804:
                                            v931 = _NRCopyLogObjectForNRUUID(*v4);
                                            _NRLogWithArgs(v931, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v932, v933, v934, v935, v936, "");
                                          }

LABEL_316:
                                          dispatch_resume(*(v18 + 312));
                                          v362 = *(v18 + 144);
                                        }

                                        if ((v362 & 0x10) == 0 || !*(v18 + 328))
                                        {
                                          goto LABEL_267;
                                        }

                                        v363 = (v18 + 328);
                                        *(v18 + 144) = v362 & 0xFFFFFFFFFFFFFFEFLL;
                                        if (gNRPacketLoggingEnabled != 1)
                                        {
                                          goto LABEL_430;
                                        }

                                        v364 = _NRCopyLogObjectForNRUUID(*v4);
                                        v365 = v364;
                                        if (sNRCopyLogToStdErr == 1)
                                        {
                                        }

                                        else
                                        {
                                          v924 = os_log_type_enabled(v364, OS_LOG_TYPE_INFO);

                                          if (!v924)
                                          {
                                            goto LABEL_808;
                                          }
                                        }

                                        v881 = _NRCopyLogObjectForNRUUID(*v1075);
                                        _NRLogWithArgs(v881, 1, "%s%.30s:%-4d source-resume: NexusVIInput", v925, v926, v927, v928, v929, "");
                                      }

                                      else
                                      {
                                        v460 = *(v18 + 144);
                                        if ((v460 & 8) == 0 || !*(v18 + 312))
                                        {
                                          goto LABEL_267;
                                        }

                                        v363 = (v18 + 312);
                                        *(v18 + 144) = v460 & 0xFFFFFFFFFFFFFFF7;
                                        if (gNRPacketLoggingEnabled != 1)
                                        {
                                          goto LABEL_430;
                                        }

                                        v887 = _NRCopyLogObjectForNRUUID(*v4);
                                        v888 = v887;
                                        if (sNRCopyLogToStdErr == 1)
                                        {
                                        }

                                        else
                                        {
                                          v937 = os_log_type_enabled(v887, OS_LOG_TYPE_INFO);

                                          if (!v937)
                                          {
                                            goto LABEL_808;
                                          }
                                        }

                                        v881 = _NRCopyLogObjectForNRUUID(*v1075);
                                        _NRLogWithArgs(v881, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v938, v939, v940, v941, v942, "");
                                      }

LABEL_807:

                                      goto LABEL_808;
                                    }

                                    ESPSequenceNumberFromPacket = v200;
                                    v1096 = 0;
                                    if (*(v127 + 3640) != 1)
                                    {
                                      goto LABEL_170;
                                    }

                                    v225 = _NRCopyLogObjectForNRUUID(*v1075);
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      goto LABEL_221;
                                    }

                                    v236 = v225;
                                    v237 = os_log_type_enabled(v225, OS_LOG_TYPE_INFO);

                                    v18 = v1091;
                                    if (v237)
                                    {
LABEL_221:
                                      v238 = _NRCopyLogObjectForNRUUID(*v1075);
                                      v1054 = *(v135 + 80);
                                      _NRLogWithArgs(v238, 1, "%s%.30s:%-4d %s: invoking send callback w/ written %u", v239, v240, v241, v242, v243, "");

                                      v18 = v1091;
                                    }

LABEL_170:
                                    v202 = (*(*v1080 + 8))(**v1080, *v135, *(v135 + 80), &v1096, 0, 0);
                                    if (*(v127 + 3640) == 1)
                                    {
                                      v226 = _NRCopyLogObjectForNRUUID(*v1075);
                                      if (sNRCopyLogToStdErr == 1)
                                      {
                                      }

                                      else
                                      {
                                        v244 = v226;
                                        LODWORD(v1073) = os_log_type_enabled(v226, OS_LOG_TYPE_INFO);

                                        v18 = v1091;
                                        if (!v1073)
                                        {
                                          goto LABEL_171;
                                        }
                                      }

                                      v245 = _NRCopyLogObjectForNRUUID(*v1075);
                                      v1055 = *(v135 + 80);
                                      _NRLogWithArgs(v245, 1, "%s%.30s:%-4d %s: canWriteMore: %d bufferHandled=%zu/%u", v246, v247, v248, v249, v250, "");

                                      v18 = v1091;
                                    }

LABEL_171:
                                    if (v202)
                                    {
                                      v203 = v145 | 0x800;
                                      goto LABEL_173;
                                    }

                                    if (v1079)
                                    {
                                      v1079(v18);
                                    }

                                    *(v135 + 84) |= 1u;
                                    v204 = *(v135 + 83);
                                    if (v204 > 1)
                                    {
                                      if (v204 == 2)
                                      {
                                        ++*(v18 + 168);
                                        *(v18 + 144) = *(v18 + 144) & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(v135 + 84) & 1));
                                        v136 = v1081;
                                        if (*(v127 + 3640) != 1)
                                        {
                                          goto LABEL_195;
                                        }

                                        v211 = _NRCopyLogObjectForNRUUID(*v1075);
                                        v212 = v211;
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          v127 = 0x280D73000;
                                        }

                                        else
                                        {
                                          LODWORD(v1073) = os_log_type_enabled(v211, OS_LOG_TYPE_INFO);

                                          v18 = v1091;
                                          v127 = 0x280D73000;
                                          v136 = v1081;
                                          if (!v1073)
                                          {
                                            goto LABEL_195;
                                          }
                                        }

                                        v214 = _NRCopyLogObjectForNRUUID(*v1075);
                                        *(v135 + 84);
                                        _NRLogWithArgs(v214, 1, "%s%.30s:%-4d source-%s: High", v302, v303, v304, v305, v306, "");
                                      }

                                      else
                                      {
                                        v136 = v1081;
                                        if (v204 != 3)
                                        {
                                          goto LABEL_195;
                                        }

                                        ++*(v18 + 184);
                                        *(v18 + 144) = *(v18 + 144) & 0xFFFFFFFFFFFFFFFBLL | (4 * (*(v135 + 84) & 1));
                                        if (*(v127 + 3640) != 1)
                                        {
                                          goto LABEL_195;
                                        }

                                        v208 = _NRCopyLogObjectForNRUUID(*v1075);
                                        v209 = v208;
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          v127 = 0x280D73000;
                                        }

                                        else
                                        {
                                          LODWORD(v1073) = os_log_type_enabled(v208, OS_LOG_TYPE_INFO);

                                          v18 = v1091;
                                          v127 = 0x280D73000;
                                          v136 = v1081;
                                          if (!v1073)
                                          {
                                            goto LABEL_195;
                                          }
                                        }

                                        v214 = _NRCopyLogObjectForNRUUID(*v1075);
                                        *(v135 + 84);
                                        _NRLogWithArgs(v214, 1, "%s%.30s:%-4d source-%s: Isochronous", v297, v298, v299, v300, v301, "");
                                      }

LABEL_194:

                                      v18 = v1091;
                                      v136 = v1081;
                                      goto LABEL_195;
                                    }

                                    if (!*(v135 + 83))
                                    {
                                      v210 = _NRCopyLogObjectForNRUUID(*v1075);
                                      if (sNRCopyLogToStdErr == 1)
                                      {
                                      }

                                      else
                                      {
                                        v213 = v210;
                                        LODWORD(v1073) = os_log_type_enabled(v210, OS_LOG_TYPE_ERROR);

                                        v18 = v1091;
                                        v136 = v1081;
                                        if (!v1073)
                                        {
                                          goto LABEL_195;
                                        }
                                      }

                                      v214 = _NRCopyLogObjectForNRUUID(*v1075);
                                      _NRLogWithArgs(v214, 16, "%s%.30s:%-4d invalid link channel priority", v215, v216, v217, v218, v219, "");
                                      goto LABEL_194;
                                    }

                                    v136 = v1081;
                                    if (v204 == 1)
                                    {
                                      v205 = *(v18 + 144);
                                      ++*(v18 + 152);
                                      *(v18 + 144) = v205 & 0xFFFFFFFFFFFFFFFELL | *(v135 + 84) & 1;
                                      if (*(v127 + 3640) == 1)
                                      {
                                        v206 = _NRCopyLogObjectForNRUUID(*v1075);
                                        v207 = v206;
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          v127 = 0x280D73000;
                                          goto LABEL_244;
                                        }

                                        LODWORD(v1073) = os_log_type_enabled(v206, OS_LOG_TYPE_INFO);

                                        v18 = v1091;
                                        v127 = 0x280D73000;
                                        v136 = v1081;
                                        if (v1073)
                                        {
LABEL_244:
                                          v214 = _NRCopyLogObjectForNRUUID(*v1075);
                                          *(v135 + 84);
                                          _NRLogWithArgs(v214, 1, "%s%.30s:%-4d source-%s: Medium", v292, v293, v294, v295, v296, "");
                                          goto LABEL_194;
                                        }
                                      }
                                    }

LABEL_195:
                                    v203 = v145 | 0x1800;
                                    if (*(v127 + 3640) == 1)
                                    {
                                      v235 = _NRCopyLogObjectForNRUUID(*v1075);
                                      if (sNRCopyLogToStdErr == 1)
                                      {

                                        goto LABEL_233;
                                      }

                                      v258 = v235;
                                      v259 = os_log_type_enabled(v235, OS_LOG_TYPE_INFO);

                                      if (v259)
                                      {
LABEL_233:
                                        v260 = _NRCopyLogObjectForNRUUID(*v1075);
                                        _NRLogWithArgs(v260, 1, "%s%.30s:%-4d ", v261, v262, v263, v264, v265, "");
                                      }

                                      v18 = v1091;
                                      v127 = 0x280D73000;
LABEL_173:
                                      v136 = v1081;
                                    }

                                    if (!v1096)
                                    {
                                      goto LABEL_203;
                                    }

                                    v220 = *(v127 + 3640);
                                    if (v1096 >= *(v135 + 80))
                                    {
                                      if (!*(v127 + 3640))
                                      {
LABEL_201:
                                        v203 |= 0x4000u;
                                        *(v135 + 80) = 0;
                                        v221 = v1096;
                                        goto LABEL_202;
                                      }

                                      v254 = _NRCopyLogObjectForNRUUID(*v1075);
                                      v255 = v254;
                                      if (sNRCopyLogToStdErr == 1)
                                      {

                                        v127 = 0x280D73000;
                                      }

                                      else
                                      {
                                        LODWORD(v1073) = os_log_type_enabled(v254, OS_LOG_TYPE_INFO);

                                        v18 = v1091;
                                        v127 = 0x280D73000;
                                        v136 = v1081;
                                        if (!v1073)
                                        {
                                          goto LABEL_201;
                                        }
                                      }

                                      v279 = _NRCopyLogObjectForNRUUID(*v1075);
                                      v1057 = *(v135 + 80);
                                      _NRLogWithArgs(v279, 1, "%s%.30s:%-4d %s: not memmoving filledIn=%u, bufferHandled=%zu", v280, v281, v282, v283, v284, "");

                                      v136 = v1081;
                                      v18 = v1091;
                                      goto LABEL_201;
                                    }

                                    if (!*(v127 + 3640))
                                    {
                                      goto LABEL_199;
                                    }

                                    v252 = _NRCopyLogObjectForNRUUID(*v1075);
                                    v253 = v252;
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      v127 = 0x280D73000;
                                      goto LABEL_238;
                                    }

                                    LODWORD(v1073) = os_log_type_enabled(v252, OS_LOG_TYPE_INFO);

                                    v18 = v1091;
                                    v127 = 0x280D73000;
                                    if (v1073)
                                    {
LABEL_238:
                                      v273 = _NRCopyLogObjectForNRUUID(*v1075);
                                      v1056 = *(v135 + 80);
                                      _NRLogWithArgs(v273, 1, "%s%.30s:%-4d %s: memmoving filledIn=%u, bufferHandled=%zu", v274, v275, v276, v277, v278, "");

                                      v18 = v1091;
                                    }

LABEL_199:
                                    v203 |= 0x2000u;
                                    memmove(*v135, (*v135 + v1096), *(v135 + 80) - v1096);
                                    v221 = v1096;
                                    *(v135 + 80) -= v1096;
                                    v1078 = (v1078 + 1);
                                    v136 = v1081;
LABEL_202:
                                    *&v1077[v18] += v221;
LABEL_203:
                                    LODWORD(v1085) = v1085 + 1;
                                    if ((v202 & 1) == 0)
                                    {
                                      goto LABEL_256;
                                    }

                                    v222 = *(v135 + 82);
                                    if (v222 >= 0xB)
                                    {
                                      v222 -= 11 * ((((117 * v222) >> 8) + (((v222 - ((117 * v222) >> 8)) & 0xFE) >> 1)) >> 3);
                                    }

                                    v144 = 0;
                                    *(v1088 + 4 * v222) = v203;
                                    if (v222 < 0xAu)
                                    {
                                      v223 = v222 + 1;
                                    }

                                    else
                                    {
                                      v223 = v222 - 10;
                                    }

                                    *(v135 + 82) = v223;
                                    p_inst_meths = (&OBJC_PROTOCOL___NSCopying + 24);
                                  }
                                }
                              }

                              v744 = _NRCopyLogObjectForNRUUID(*v1075);
                              _NRLogWithArgs(v744, 1, "%s%.30s:%-4d %s: starting NtL outer loop", v745, v746, v747, v748, v749, "");

                              v136 = v1081;
                              v18 = v1091;
                              goto LABEL_105;
                            }

                            if (*(v127 + 3640) != 1)
                            {
LABEL_250:
                              if (v1079)
                              {
                                v1079(v18);
                              }

                              v307 = *(v135 + 82);
                              if (v307 >= 0xB)
                              {
                                v307 -= 11 * ((((117 * v307) >> 8) + (((v307 - ((117 * v307) >> 8)) & 0xFE) >> 1)) >> 3);
                              }

                              v308 = v307;
                              *(v135 + 4 * v307 + 36) = 3;
                              goto LABEL_271;
                            }

                            v735 = _NRCopyLogObjectForNRUUID(*v4);
                            v736 = v735;
                            if (*(p_inst_meths + 556) == 1)
                            {
                            }

                            else
                            {
                              LODWORD(v1090) = os_log_type_enabled(v735, OS_LOG_TYPE_INFO);

                              v18 = v1091;
                              if (!v1090)
                              {
                                goto LABEL_250;
                              }
                            }

                            v750 = _NRCopyLogObjectForNRUUID(*v4);
                            _NRLogWithArgs(v750, 1, "%s%.30s:%-4d %s: ignoring NtL fast-path for %u, as waiting for link output available", v751, v752, v753, v754, v755, "");

                            v18 = v1091;
                            goto LABEL_250;
                          }

                          v693 = v130;
                          if (*(v127 + 3640) != 1)
                          {
                            goto LABEL_697;
                          }

                          v991 = _NRCopyLogObjectForNRUUID(*v4);
                          v992 = v991;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v1014 = os_log_type_enabled(v991, OS_LOG_TYPE_INFO);

                            if (!v1014)
                            {
                              goto LABEL_697;
                            }
                          }

                          v1015 = _NRCopyLogObjectForNRUUID(*v4);
                          _NRLogWithArgs(v1015, 1, "%s%.30s:%-4d ", v1016, v1017, v1018, v1019, v1020, "");

LABEL_697:
                          v694 = _NRCopyLogObjectForNRUUID(*v4);
                          v695 = v694;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v715 = os_log_type_enabled(v694, OS_LOG_TYPE_FAULT);

                            v18 = v1091;
                            if (!v715)
                            {
                              goto LABEL_275;
                            }
                          }

                          v716 = _NRCopyLogObjectForNRUUID(*v4);
                          _NRLogWithArgs(v716, 17, "%s: Invalid write context for nexus priority: %u", v717, v718, v719, v720, v721, v693);

                          v18 = v1091;
LABEL_275:

                          v74 = v1083;
                          goto LABEL_276;
                        }

                        goto LABEL_89;
                      }

                      v696 = nrCopyLogObj_560();
                      v697 = v696;
                      if (sNRCopyLogToStdErr == 1)
                      {
                      }

                      else
                      {
                        v722 = os_log_type_enabled(v696, OS_LOG_TYPE_ERROR);

                        if (!v722)
                        {
LABEL_710:
                          v729 = _os_log_pack_size();
                          MEMORY[0x28223BE20](v729, v730);
                          v731 = *__error();
                          v732 = _os_log_pack_fill();
                          *v732 = 136446466;
                          *(v732 + 4) = "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]";
                          *(v732 + 12) = 2048;
                          *(v732 + 14) = v77;
                          goto LABEL_447;
                        }
                      }

                      v723 = nrCopyLogObj_560();
                      _NRLogWithArgs(v723, 16, "%s%.30s:%-4d ABORTING: strict_reallocf(%zu) failed", v724, v725, v726, v727, v728, "");

                      goto LABEL_710;
                    }

                    v689 = nrCopyLogObj_560();
                    v690 = v689;
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v698 = os_log_type_enabled(v689, OS_LOG_TYPE_ERROR);

                      if (!v698)
                      {
LABEL_703:
                        v705 = _os_log_pack_size();
                        MEMORY[0x28223BE20](v705, v706);
                        v707 = *__error();
                        v680 = _os_log_pack_fill();
                        *v680 = 136446210;
                        v681 = "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]";
                        goto LABEL_689;
                      }
                    }

                    v699 = nrCopyLogObj_560();
                    _NRLogWithArgs(v699, 16, "%s%.30s:%-4d ABORTING: strict_reallocf called with size 0", v700, v701, v702, v703, v704, "");

                    goto LABEL_703;
                  }

                  if (sNRCopyLogToStdErr)
                  {
                  }

                  else
                  {
                    v89 = v62;
                    v90 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);

                    if (!v90)
                    {
LABEL_60:

LABEL_76:
                      goto LABEL_307;
                    }
                  }

                  v91 = _NRCopyLogObjectForNRUUID(*v4);
                  _NRLogWithArgs(v91, 16, "%s%.30s:%-4d Invalid link-write context ptr for prio %@", v92, v93, v94, v95, v96, "");
LABEL_59:

                  goto LABEL_60;
                }
              }

              v55 = _NRCopyLogObjectForNRUUID(*v4);
              v1066 = *(v48 + 104);
              _NRLogWithArgs(v55, 1, "%s%.30s:%-4d Write context: %p", v56, v57, v58, v59, v60, "");

              goto LABEL_39;
            }

            v52 = _NRCopyLogObjectForNRUUID(*v4);
            if (sNRCopyLogToStdErr == 1)
            {

              v22 = v1083;
LABEL_54:
              v82 = _NRCopyLogObjectForNRUUID(*v4);
              v1067 = off_27996AFD8[(v1090 - 1)];
              _NRLogWithArgs(v82, 16, "%s%.30s:%-4d Invalid link-read context ptr for prio %@", v83, v84, v85, v86, v87, "");
LABEL_74:

              goto LABEL_75;
            }

            v80 = v52;
            v81 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);

            v22 = v1083;
            if (v81)
            {
              goto LABEL_54;
            }

LABEL_75:

            goto LABEL_76;
          }
        }

        v38 = _NRCopyLogObjectForNRUUID(*v4);
        _NRLogWithArgs(v38, 1, "%s%.30s:%-4d Link Read context: %p", v39, v40, v41, v42, v43, "");

        goto LABEL_28;
      }

      v22 = v1083;
LABEL_70:
      v118 = _NRCopyLogObjectForNRUUID(*v4);
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v119 = v118;
        v120 = os_log_type_enabled(v118, OS_LOG_TYPE_ERROR);

        if (!v120)
        {
          goto LABEL_75;
        }
      }

      v82 = _NRCopyLogObjectForNRUUID(*v4);
      v1053 = createStringFromNRLinkChannelPriority(v1090);
      _NRLogWithArgs(v82, 16, "%s%.30s:%-4d Invalid read context %sptr for prio %@", v121, v122, v123, v124, v125, "");

      goto LABEL_74;
    }

    if ([v23 integerValue] == 1)
    {
      LODWORD(v1090) = 1;
      v24 = 96;
      goto LABEL_18;
    }

    v63 = [v23 integerValue];

    if (v63 == 3)
    {
      LODWORD(v1090) = 3;
      v24 = 128;
      v18 = v1091;
      goto LABEL_19;
    }

    v88 = _NRCopyLogObjectForNRUUID(*v4);
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v110 = v88;
      v111 = os_log_type_enabled(v88, OS_LOG_TYPE_FAULT);

      if (!v111)
      {
LABEL_69:
        LODWORD(v1090) = 0;
        goto LABEL_70;
      }
    }

    v112 = _NRCopyLogObjectForNRUUID(*v4);
    _NRLogWithArgs(v112, 17, "Invalid priority %d", v113, v114, v115, v116, v117, 0);

    goto LABEL_69;
  }

LABEL_277:
  v311 = [v3 objectForKeyedSubscript:{@"source-address-bytes", v1068}];

  if (v311)
  {
    v312 = [v3 objectForKeyedSubscript:@"source-address-bytes"];
    if ([v312 length] != 16)
    {
      v1058 = [v312 length];
      [(NRBluetoothPacketParser *)v18 handleInternalError:v325, v326, v327, v328, v329, v330, v1058];
LABEL_306:

      goto LABEL_307;
    }

    [v312 getBytes:v18 + 688 length:{objc_msgSend(v312, "length")}];
  }

  v313 = [v3 objectForKeyedSubscript:@"destination-address-bytes"];

  if (!v313)
  {
    goto LABEL_283;
  }

  v312 = [v3 objectForKeyedSubscript:@"destination-address-bytes"];
  if ([v312 length] != 16)
  {
    v1059 = [v312 length];
    [(NRBluetoothPacketParser *)v18 handleInternalError:v354, v355, v356, v357, v358, v359, v1059];
    goto LABEL_306;
  }

  [v312 getBytes:v18 + 704 length:{objc_msgSend(v312, "length")}];

LABEL_283:
  v314 = [v3 objectForKeyedSubscript:@"nexus-instances"];

  if (!v314)
  {
    goto LABEL_337;
  }

  if (*(v18 + 13) == 1)
  {
    [(NRBluetoothPacketParser *)v18 changeStateTo:?];
  }

  v315 = [v3 objectForKeyedSubscript:@"ip-header-offset"];

  if (v315)
  {
    v316 = [v3 objectForKeyedSubscript:@"ip-header-offset"];
    if (v316)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(v18 + 28) = [v316 unsignedShortValue];
      }
    }
  }

  v317 = [v3 objectForKeyedSubscript:@"nexus-instances"];
  v318 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v1092 = 0u;
  v1093 = 0u;
  v1094 = 0u;
  v1095 = 0u;
  v319 = v317;
  v320 = [v319 countByEnumeratingWithState:&v1092 objects:v1102 count:16];
  if (v320)
  {
    v321 = v320;
    v322 = *v1093;
    do
    {
      for (i = 0; i != v321; ++i)
      {
        if (*v1093 != v322)
        {
          objc_enumerationMutation(v319);
        }

        v324 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v1092 + 1) + 8 * i)];
        [v318 addObject:v324];
      }

      v321 = [v319 countByEnumeratingWithState:&v1092 objects:v1102 count:16];
    }

    while (v321);
  }

  v331 = v318;
  v338 = v331;
  v339 = v1091;
  if (*(v1091 + 13) != 4 && (*(v1091 + 16) & 1) == 0)
  {
    if (v331)
    {
      v340 = [v331 count];
      if (v340 == 1)
      {
        v366 = v1091;
        v367 = *(v1091 + 11);
        v351 = [v338 firstObject];
        if (v367)
        {
          v353 = 100;
        }

        else
        {
          v353 = 102;
        }

        v352 = v366;
LABEL_326:
        [(NRBluetoothPacketParser *)v352 setupNexusChannelForPriority:v353 channelUUID:v351];

        v368 = _NRCopyLogObjectForNRUUID(*v4);
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v369 = v368;
          v370 = os_log_type_enabled(v368, OS_LOG_TYPE_DEFAULT);

          if (!v370)
          {
            goto LABEL_330;
          }
        }

        v371 = _NRCopyLogObjectForNRUUID(*v4);
        _NRLogWithArgs(v371, 0, "%s%.30s:%-4d Setup nexus channels: %@", v372, v373, v374, v375, v376, "");

LABEL_330:
        v339 = v1091;
        *(v1091 + 16) = 1;
        objc_storeStrong((v339 + 72), v318);
        if (*(v339 + 13) != 3 && ([*(v339 + 72) count] || *(v339 + 12) == 1) && *(v339 + 15))
        {
          [(NRBluetoothPacketParser *)v339 changeStateTo:?];
        }

        goto LABEL_336;
      }

      if (v340 == 4)
      {
        v347 = [v338 objectAtIndexedSubscript:0];
        v348 = v1091;
        [(NRBluetoothPacketParser *)v1091 setupNexusChannelForPriority:v347 channelUUID:?];

        v349 = [v338 objectAtIndexedSubscript:1];
        [(NRBluetoothPacketParser *)v348 setupNexusChannelForPriority:v349 channelUUID:?];

        v350 = [v338 objectAtIndexedSubscript:2];
        [(NRBluetoothPacketParser *)v348 setupNexusChannelForPriority:v350 channelUUID:?];

        v351 = [v338 objectAtIndexedSubscript:3];
        v352 = v348;
        v353 = 103;
        goto LABEL_326;
      }

      v339 = v1091;
      [(NRBluetoothPacketParser *)v1091 handleInternalError:v341, v342, v343, v344, v345, v346, v340];
    }

    else
    {
      v339 = v1091;
      [(NRBluetoothPacketParser *)v1091 handleInternalError:v332, v333, v334, v335, v336, v337, v1068];
    }
  }

LABEL_336:

  v18 = v339;
  p_inst_meths = &OBJC_PROTOCOL___NSCopying.inst_meths;
LABEL_337:
  v377 = [v3 objectForKeyedSubscript:@"activate-datapath"];

  if (!v377)
  {
    goto LABEL_351;
  }

  v312 = [v3 objectForKeyedSubscript:@"activate-datapath"];
  v378 = [v312 objectForKeyedSubscript:@"activate-datapath-offset"];
  v379 = [v312 objectForKeyedSubscript:@"channel-id"];
  if ([v379 integerValue] == 2)
  {

    v380 = 4;
    v381 = 2;
  }

  else if ([v379 integerValue] == 1)
  {

    v380 = 2;
    v381 = 1;
  }

  else
  {
    v382 = [v379 integerValue];

    v383 = v382 == 3;
    v18 = v1091;
    v384 = v383;
    if (v383)
    {
      v381 = 3;
    }

    else
    {
      v381 = 0;
    }

    v380 = 8 * v384;
  }

  v385 = *(v18 + 15);
  if ((v385 & v380) == 0)
  {
    *(v18 + 15) = v385 | v380;
    v1085 = v378;
    if (v381 > 1)
    {
      if (v381 == 3)
      {
        v393 = 128;
      }

      else
      {
        v393 = 112;
      }
    }

    else
    {
      if (!v381)
      {
        v390 = _NRCopyLogObjectForNRUUID(*v4);
        if (*(p_inst_meths + 556) == 1)
        {
        }

        else
        {
          v419 = v390;
          v420 = os_log_type_enabled(v390, OS_LOG_TYPE_FAULT);

          if (!v420)
          {
LABEL_387:
            v427 = _NRCopyLogObjectForNRUUID(*v4);
            if (*(p_inst_meths + 556) == 1)
            {

LABEL_390:
              v412 = _NRCopyLogObjectForNRUUID(*v4);
              v413 = createStringFromNRLinkChannelPriority(v381);
              _NRLogWithArgs(v412, 16, "%s%.30s:%-4d Invalid read context %sptr for prio %@", v430, v431, v432, v433, v434, "");
              goto LABEL_391;
            }

            v428 = v427;
            v429 = os_log_type_enabled(v427, OS_LOG_TYPE_ERROR);

            if (v429)
            {
              goto LABEL_390;
            }

LABEL_397:

            goto LABEL_306;
          }
        }

        v421 = _NRCopyLogObjectForNRUUID(*v4);
        _NRLogWithArgs(v421, 17, "Invalid priority %d", v422, v423, v424, v425, v426, v381);

        goto LABEL_387;
      }

      v393 = 96;
    }

    v1082 = v379;
    v394 = *(v18 + v393);
    if (!v394)
    {
      v379 = v1082;
      goto LABEL_387;
    }

    v395 = *v394;
    if (!*v394)
    {
      v409 = _NRCopyLogObjectForNRUUID(*v4);
      if (*(p_inst_meths + 556) == 1)
      {

        v379 = v1082;
      }

      else
      {
        v410 = v409;
        v411 = os_log_type_enabled(v409, OS_LOG_TYPE_ERROR);

        v379 = v1082;
        if (!v411)
        {
          goto LABEL_397;
        }
      }

      v412 = _NRCopyLogObjectForNRUUID(*v4);
      v413 = createStringFromNRLinkChannelPriority(v381);
      _NRLogWithArgs(v412, 16, "%s%.30s:%-4d Invalid link-read context ptr for prio %@", v414, v415, v416, v417, v418, "");
LABEL_391:

      goto LABEL_397;
    }

    v1075 = v4;
    *(v395 + 43) |= 3u;
    v396 = *(v18 + v393);
    v397 = *(v396 + 24);
    if (v397)
    {
      v397(*(v396 + 32));
    }

    v398 = [v378 unsignedIntValue];
    v405 = v398;
    v406 = *(v395 + 24);
    if (v406 <= v398)
    {
      if (v406 != v398)
      {
        [(NRBluetoothPacketParser *)v18 handleInternalError:v399, v400, v401, v402, v403, v404, *(v395 + 24)];
LABEL_396:
        v379 = v1082;
        goto LABEL_397;
      }

      *(v395 + 24) = 0;
LABEL_405:
      v379 = v1082;
      [(NRBluetoothPacketParser *)v18 updateReadyStateIfApplicable];
      if (*(v18 + 13) == 4)
      {
        goto LABEL_350;
      }

      dispatch_assert_queue_V2(*(v18 + 64));
      v1080 = NRBluetoothPacketParserSuspendNexusVOInputSource;
      v1076 = v312;
      if (v381 == 1)
      {
        v453 = 0;
        v457 = 0;
        v1080 = NRBluetoothPacketParserSuspendNexusBEInputSource;
        v1087 = 21;
        v1086 = 480;
        v454 = 344;
        v455 = 280;
        v456 = 232;
      }

      else if (v381 == 3)
      {
        v453 = 1;
        v1087 = 19;
        v1086 = 448;
        v454 = 312;
        v455 = 248;
        v456 = 216;
        v457 = 1;
      }

      else
      {
        v457 = 0;
        v1080 = NRBluetoothPacketParserSuspendNexusVIInputSource;
        v453 = 1;
        v1087 = 20;
        v1086 = 464;
        v454 = 328;
        v455 = 264;
        v456 = 224;
      }

      v1072 = *(v18 + v456);
      v1090 = *(v18 + v455);
      v462 = *(v18 + v454);
      if (gNRPacketLoggingEnabled != 1)
      {
        goto LABEL_436;
      }

      v795 = v462;
      v796 = _NRCopyLogObjectForNRUUID(*v1075);
      v797 = v796;
      if (sNRCopyLogToStdErr == 1)
      {

        v379 = v1082;
      }

      else
      {
        v803 = os_log_type_enabled(v796, OS_LOG_TYPE_INFO);

        v18 = v1091;
        v379 = v1082;
        v462 = v795;
        if (!v803)
        {
LABEL_436:
          v463 = *(v18 + 15);
          v1089 = *&v457 & ((v463 & 8) >> 3);
          if (v1089 == 1)
          {
            v464 = (v18 + 136);
            v465 = "Isochronous";
            v466 = 3;
            v467 = 0x280D73000;
            goto LABEL_458;
          }

          if (!v453)
          {
            goto LABEL_456;
          }

          if ((v463 & 4) != 0)
          {
            v464 = (v18 + 120);
LABEL_457:
            v467 = 0x280D73000uLL;
            v465 = "High";
            v466 = 2;
LABEL_458:
            v483 = *v464;
            v1074 = v462;
            if (v483)
            {
              v484 = v483[3];
              if ((*(v484 + 84) & 1) == 0)
              {
                v1081 = v464;
                v1069 = v466;
                v1068 = v465;
                v1070 = &v1068;
                v1071 = v3;
                v485 = *(v484 + 83);
                v486 = 584;
                if (v485 == 3)
                {
                  v486 = 600;
                }

                v383 = v485 == 2;
                v487 = 616;
                if (!v383)
                {
                  v487 = v486;
                }

                v1077 = *(v484 + 8);
                v1078 = v487;
                if (*(v467 + 3640) != 1)
                {
                  goto LABEL_465;
                }

                v817 = _NRCopyLogObjectForNRUUID(*v1075);
                v818 = v817;
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v839 = os_log_type_enabled(v817, OS_LOG_TYPE_INFO);

                  v18 = v1091;
                  if (!v839)
                  {
LABEL_465:
                    LODWORD(ESPSequenceNumberFromPacket) = 0;
                    v488 = 0;
                    v489 = 0;
                    v1083 = 0;
                    v490 = 0;
                    v1079 = 0;
                    v1088 = v484 + 36;
                    v1100 = 0u;
                    v1101 = 0u;
                    v491 = 9;
                    v1098 = 0u;
                    v1099 = 0u;
                    while (1)
                    {
                      if (*(v467 + 3640) == 1)
                      {
                        v572 = _NRCopyLogObjectForNRUUID(*v1075);
                        v573 = v572;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          v467 = 0x280D73000;
LABEL_577:
                          v579 = _NRCopyLogObjectForNRUUID(*v1075);
                          _NRLogWithArgs(v579, 1, "%s%.30s:%-4d %s: starting NtL inner loop", v580, v581, v582, v583, v584, "");

                          v18 = v1091;
                          goto LABEL_467;
                        }

                        v578 = os_log_type_enabled(v572, OS_LOG_TYPE_INFO);

                        v18 = v1091;
                        v467 = 0x280D73000;
                        if (v578)
                        {
                          goto LABEL_577;
                        }
                      }

LABEL_467:
                      v492 = v491 | 0x10;
                      if ((v1089 & 1) == 0)
                      {
                        v494 = *(v484 + 28);
                        v493 = *(v484 + 32);
                        if (v494 > v493)
                        {
                          v495 = *(v484 + 80);
                          v1073 = (0x4000 - v495);
                          if ((v494 - v493) >= (0x4000 - v495))
                          {
                            v496 = (0x4000 - v495);
                          }

                          else
                          {
                            v496 = (v494 - v493);
                          }

                          v497 = v1077;
                          memcpy((*v484 + v495), &v1077[v493], v496);
                          v498 = *(v484 + 28);
                          v499 = *(v484 + 32) + v496;
                          *(v484 + 32) = v499;
                          if (v498 <= v499)
                          {
                            v500 = 0;
                          }

                          else
                          {
                            memmove(v497, &v497[v499], v498 - v499);
                            v500 = *(v484 + 28) - *(v484 + 32);
                          }

                          *(v484 + 28) = v500;
                          *(v484 + 32) = 0;
                          *(v484 + 80) += v496;
                          if (gNRPacketLoggingEnabled != 1)
                          {
                            goto LABEL_476;
                          }

                          v606 = _NRCopyLogObjectForNRUUID(*v1075);
                          v607 = v606;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            goto LABEL_603;
                          }

                          v633 = os_log_type_enabled(v606, OS_LOG_TYPE_INFO);

                          v18 = v1091;
                          if (v633)
                          {
LABEL_603:
                            v634 = _NRCopyLogObjectForNRUUID(*v1075);
                            _NRLogWithArgs(v634, 1, "%s%.30s:%-4d %s: wrote %u (%u/%u) bytes from linkWriteBuffer", v635, v636, v637, v638, v639, "");

                            v18 = v1091;
                          }

LABEL_476:
                          v492 = v491 | 0x30;
                          v489 += v496;
                          v467 = 0x280D73000;
                        }
                      }

                      v501 = v1083;
                      if (v1090)
                      {
                        v501 = os_channel_get_next_slot();
                      }

                      if (!v501)
                      {
                        v547 = 0;
                        goto LABEL_528;
                      }

                      while (1)
                      {
                        v502 = 0x4000 - *(v484 + 80);
                        if (v502 < nrMaxTLVLengthForPacket(v1099 + *(v18 + 28), (WORD1(v1098) - *(v18 + 28))))
                        {
                          v492 |= 0x40u;
                          if (gNRPacketLoggingEnabled != 1)
                          {
LABEL_526:
                            v547 = v501;
                            v18 = v1091;
                            v467 = 0x280D73000;
                            goto LABEL_528;
                          }

                          v600 = _NRCopyLogObjectForNRUUID(*v1075);
                          v601 = v600;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            LODWORD(v1083) = os_log_type_enabled(v600, OS_LOG_TYPE_INFO);

                            if (!v1083)
                            {
                              goto LABEL_526;
                            }
                          }

                          v615 = _NRCopyLogObjectForNRUUID(*v1075);
                          _NRLogWithArgs(v615, 1, "%s%.30s:%-4d %s: not enough room %u to fit maxTLVLen %u", v616, v617, v618, v619, v620, "");

                          goto LABEL_526;
                        }

                        os_channel_slot_get_packet();
                        os_packet_get_next_buflet();
                        v503 = os_buflet_get_data_offset();
                        v504 = os_buflet_get_object_address();
                        v505 = os_buflet_get_data_length();
                        if (v505 >= 0x10000)
                        {
                          v668 = nrCopyLogObj_560();
                          if (sNRCopyLogToStdErr == 1)
                          {

                            goto LABEL_687;
                          }

                          v669 = v668;
                          v670 = os_log_type_enabled(v668, OS_LOG_TYPE_ERROR);

                          if (v670)
                          {
LABEL_687:
                            v671 = nrCopyLogObj_560();
                            _NRLogWithArgs(v671, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen <= 65535", v672, v673, v674, v675, v676, "");
                          }

                          v677 = _os_log_pack_size();
                          MEMORY[0x28223BE20](v677, v678);
                          v679 = *__error();
                          v680 = _os_log_pack_fill();
                          *v680 = 136446210;
                          v681 = "NRBluetoothPacketParserNexusToLinkLoop";
LABEL_689:
                          *(v680 + 4) = v681;
LABEL_447:
                          v482 = nrCopyLogObj_560();
                          _NRLogAbortWithPack(v482);
                        }

                        if (*(v1091 + 9) == 1)
                        {
                          v1096 = 0;
                          v1097 = 0;
                          v506 = (*v484 + *(v484 + 80));
                          v1096 = v506;
                          LODWORD(v1097) = v502;
                          v507 = *(v1091 + 28);
                          v18 = v1091;
                          if (*(v1091 + 10) == 1)
                          {
                            v508 = nrPacketTo6LoWPAN((v1099 + v507), (WORD1(v1098) - v507), &v1096, 1u, v1091 + 688, v1091 + 704, 0);
                          }

                          else
                          {
                            memcpy(v506, (v1099 + v507), WORD1(v1098) - v507);
                            v508 = WORD1(v1098) - *(v18 + 28);
                          }

                          v467 = 0x280D73000uLL;
                          if (gNRPacketLoggingEnabled != 1)
                          {
                            goto LABEL_495;
                          }

                          v516 = _NRCopyLogObjectForNRUUID(*v1075);
                          if (sNRCopyLogToStdErr == 1)
                          {

                            goto LABEL_512;
                          }

                          v517 = v516;
                          v518 = os_log_type_enabled(v516, OS_LOG_TYPE_INFO);

                          v18 = v1091;
                          if (v518)
                          {
LABEL_512:
                            v519 = _NRCopyLogObjectForNRUUID(*v1075);
                            _NRLogWithArgs(v519, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus (actual: %u)", v520, v521, v522, v523, v524, "");
                            goto LABEL_517;
                          }

                          goto LABEL_495;
                        }

                        if (!v505 && WORD1(v1098))
                        {
                          v1096 = 0;
                          v1097 = 0;
                          v1096 = *v484 + *(v484 + 80);
                          LODWORD(v1097) = v502;
                          v18 = v1091;
                          v508 = nrPacketToTLV((v1099 + *(v1091 + 28)), (WORD1(v1098) - *(v1091 + 28)), &v1096, 1, v1091 + 688, v1091 + 704);
                          v467 = 0x280D73000uLL;
                          if (gNRPacketLoggingEnabled == 1)
                          {
                            v509 = _NRCopyLogObjectForNRUUID(*v1075);
                            v510 = v509;
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v527 = os_log_type_enabled(v509, OS_LOG_TYPE_INFO);

                              v18 = v1091;
                              if (!v527)
                              {
                                goto LABEL_495;
                              }
                            }

                            v519 = _NRCopyLogObjectForNRUUID(*v1075);
                            getESPSequenceNumberFromPacket(v1099, WORD1(v1098));
                            getESPSPIFromPacket(v1099, WORD1(v1098));
                            _NRLogWithArgs(v519, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", v528, v529, v530, v531, v532, "");
LABEL_517:

                            v18 = v1091;
                          }

LABEL_495:
                          v492 |= 0x80u;
                          goto LABEL_496;
                        }

                        if (v505)
                        {
                          v511 = v504 + v503;
                          v1096 = 0;
                          v1097 = 0;
                          v1096 = *v484 + *(v484 + 80);
                          LODWORD(v1097) = v502;
                          v18 = v1091;
                          v512 = v505;
                          v508 = nrPacketToTLV((v511 + *(v1091 + 28)), (v505 - *(v1091 + 28)), &v1096, 1, v1091 + 688, v1091 + 704);
                          if (gNRPacketLoggingEnabled != 1)
                          {
LABEL_492:
                            v492 |= 0x100u;
                            v467 = 0x280D73000;
                            goto LABEL_496;
                          }

                          v525 = _NRCopyLogObjectForNRUUID(*v1075);
                          v526 = v525;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            LODWORD(v1083) = os_log_type_enabled(v525, OS_LOG_TYPE_INFO);

                            v18 = v1091;
                            if (!v1083)
                            {
                              goto LABEL_492;
                            }
                          }

                          v535 = _NRCopyLogObjectForNRUUID(*v1075);
                          v1083 = getESPSequenceNumberFromPacket(v511, v512);
                          getESPSPIFromPacket(v511, v512);
                          _NRLogWithArgs(v535, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", v536, v537, v538, v539, v540, "");

                          v18 = v1091;
                          goto LABEL_492;
                        }

                        v492 |= 0x200u;
                        v467 = 0x280D73000uLL;
                        if (gNRPacketLoggingEnabled == 1)
                        {
                          v533 = _NRCopyLogObjectForNRUUID(*v1075);
                          v534 = v533;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v508 = os_log_type_enabled(v533, OS_LOG_TYPE_INFO);

                            if (!v508)
                            {
                              goto LABEL_508;
                            }
                          }

                          v541 = _NRCopyLogObjectForNRUUID(*v1075);
                          _NRLogWithArgs(v541, 1, "%s%.30s:%-4d %s: No data to write", v542, v543, v544, v545, v546, "");
                        }

                        v508 = 0;
LABEL_508:
                        v18 = v1091;
LABEL_496:
                        *(v484 + 80) += v508;
                        v513 = (v1089 & 1) != 0 ? 0 : os_channel_get_next_slot();
                        ++v488;
                        ++*(v18 + v1086);
                        *(v18 + v1087) = 1;
                        v489 += v508;
                        if (!v513)
                        {
                          break;
                        }

                        v514 = *(v484 + 82);
                        if (v514 >= 0xB)
                        {
                          v514 -= 11 * ((((117 * v514) >> 8) + (((v514 - ((117 * v514) >> 8)) & 0xFE) >> 1)) >> 3);
                        }

                        *(v1088 + 4 * v514) = v492;
                        if (v514 < 0xAu)
                        {
                          v515 = v514 + 1;
                        }

                        else
                        {
                          v515 = v514 - 10;
                        }

                        *(v484 + 82) = v515;
                        v490 = v501;
                        v501 = v513;
                        v492 = 0;
                      }

                      v547 = 0;
                      v490 = v501;
LABEL_528:
                      v548 = *(v484 + 80);
                      if (!*(v484 + 80))
                      {
                        v550 = v492 | 0x400;
                        if (*(v467 + 3640) != 1)
                        {
                          goto LABEL_617;
                        }

                        v855 = _NRCopyLogObjectForNRUUID(*v1075);
                        v856 = v855;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_799;
                        }

                        v917 = os_log_type_enabled(v855, OS_LOG_TYPE_INFO);

                        if (v917)
                        {
LABEL_799:
                          v918 = _NRCopyLogObjectForNRUUID(*v1075);
                          _NRLogWithArgs(v918, 1, "%s%.30s:%-4d %s: nothing to read from nexus", v919, v920, v921, v922, v923, "");
                        }

                        v18 = v1091;
                        v467 = 0x280D73000;
LABEL_617:
                        v657 = v550 | 0x8000;
                        if (*(v467 + 3640) == 1)
                        {
                          v821 = _NRCopyLogObjectForNRUUID(*v1075);
                          v822 = v821;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v857 = os_log_type_enabled(v821, OS_LOG_TYPE_INFO);

                            v18 = v1091;
                            if (!v857)
                            {
                              goto LABEL_618;
                            }
                          }

                          v858 = _NRCopyLogObjectForNRUUID(*v1075);
                          _NRLogWithArgs(v858, 1, "%s%.30s:%-4d %s: out of NtL inner loop", v859, v860, v861, v862, v863, "");

                          v18 = v1091;
                        }

LABEL_618:
                        if (v490)
                        {
                          os_channel_advance_slot();
                          *(v18 + 18) = 1;
                          v3 = v1071;
LABEL_621:
                          if (ESPSequenceNumberFromPacket > 8u || v1090 && os_channel_available_slot_count() <= 1)
                          {
                            v657 = v550 | 0x18000;
                            if (gNRPacketLoggingEnabled != 1)
                            {
                              goto LABEL_625;
                            }

                            v853 = _NRCopyLogObjectForNRUUID(*v1075);
                            v854 = v853;
                            if (sNRCopyLogToStdErr == 1)
                            {

                              v3 = v1071;
                              v18 = v1091;
                              goto LABEL_797;
                            }

                            v910 = os_log_type_enabled(v853, OS_LOG_TYPE_INFO);

                            v3 = v1071;
                            v18 = v1091;
                            if (v910)
                            {
LABEL_797:
                              v911 = _NRCopyLogObjectForNRUUID(*(v18 + 48));
                              v1051 = *(v1091 + 432) * 0.000001;
                              _NRLogWithArgs(v911, 1, "%s%.30s:%-4d %s: performing RX sync (%u packets, %u bytes, %u pending, %0.2f msec, canWriteMore %d, memmove %u)", v912, v913, v914, v915, v916, "");

                              v18 = v1091;
                            }

LABEL_625:
                            os_channel_sync();
                            *(v18 + 18) = 0;
                          }
                        }

                        else
                        {
                          v3 = v1071;
                          if (*(v18 + 18))
                          {
                            goto LABEL_621;
                          }
                        }

                        if (gNRPacketLoggingEnabled == 1)
                        {
                          v823 = _NRCopyLogObjectForNRUUID(*v1075);
                          v824 = v823;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v3 = v1071;
                            v18 = v1091;
                          }

                          else
                          {
                            v864 = os_log_type_enabled(v823, OS_LOG_TYPE_INFO);

                            v3 = v1071;
                            v18 = v1091;
                            if (!v864)
                            {
                              goto LABEL_627;
                            }
                          }

                          v865 = _NRCopyLogObjectForNRUUID(*v1075);
                          _NRLogWithArgs(v865, 1, "%s%.30s:%-4d %s: out of NtL outer loop", v866, v867, v868, v869, v870, "");
                        }

LABEL_627:
                        if (v548)
                        {
LABEL_628:
                          v658 = v657 | 0x60000;
                          if (gNRPacketLoggingEnabled != 1)
                          {
                            goto LABEL_629;
                          }

                          v825 = _NRCopyLogObjectForNRUUID(*v1075);
                          v826 = v825;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v3 = v1071;
                            v18 = v1091;
                            goto LABEL_783;
                          }

                          v871 = os_log_type_enabled(v825, OS_LOG_TYPE_INFO);

                          v3 = v1071;
                          v18 = v1091;
                          if (v871)
                          {
LABEL_783:
                            v872 = _NRCopyLogObjectForNRUUID(*v1075);
                            _NRLogWithArgs(v872, 1, "%s%.30s:%-4d %s: done with NtL fast-path", v873, v874, v875, v876, v877, "");
                          }

LABEL_629:
                          v655 = *(v484 + 82);
                          v379 = v1082;
                          if (v655 >= 0xB)
                          {
                            v655 -= 11 * ((((117 * v655) >> 8) + (((v655 - ((117 * v655) >> 8)) & 0xFE) >> 1)) >> 3);
                          }

                          v656 = v655;
                          *(v1088 + 4 * v655) = v658;
LABEL_632:
                          if (v656 < 0xA)
                          {
                            v659 = v655 + 1;
                          }

                          else
                          {
                            v659 = v655 - 10;
                          }

                          *(v484 + 82) = v659;
                          goto LABEL_636;
                        }

                        if (v1069 <= 1)
                        {
                          if (!v1069)
                          {
                            v660 = *(v18 + 144);
LABEL_652:
                            if ((v660 & 8) != 0 && *(v18 + 312))
                            {
                              *(v18 + 144) = v660 & 0xFFFFFFFFFFFFFFF7;
                              if (gNRPacketLoggingEnabled != 1)
                              {
                                goto LABEL_655;
                              }

                              v955 = _NRCopyLogObjectForNRUUID(*v1075);
                              v956 = v955;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                v3 = v1071;
                                v18 = v1091;
                                goto LABEL_826;
                              }

                              v970 = os_log_type_enabled(v955, OS_LOG_TYPE_INFO);

                              v3 = v1071;
                              v18 = v1091;
                              if (v970)
                              {
LABEL_826:
                                v971 = _NRCopyLogObjectForNRUUID(*v1075);
                                _NRLogWithArgs(v971, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v972, v973, v974, v975, v976, "");
                              }

LABEL_655:
                              dispatch_resume(*(v18 + 312));
                              v660 = *(v18 + 144);
                            }

                            if ((v660 & 0x10) != 0 && *(v18 + 328))
                            {
                              *(v18 + 144) = v660 & 0xFFFFFFFFFFFFFFEFLL;
                              if (gNRPacketLoggingEnabled != 1)
                              {
                                goto LABEL_659;
                              }

                              v957 = _NRCopyLogObjectForNRUUID(*v1075);
                              v958 = v957;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                v3 = v1071;
                                v18 = v1091;
                                goto LABEL_828;
                              }

                              v977 = os_log_type_enabled(v957, OS_LOG_TYPE_INFO);

                              v3 = v1071;
                              v18 = v1091;
                              if (v977)
                              {
LABEL_828:
                                v978 = _NRCopyLogObjectForNRUUID(*v1075);
                                _NRLogWithArgs(v978, 1, "%s%.30s:%-4d source-resume: NexusVIInput", v979, v980, v981, v982, v983, "");
                              }

LABEL_659:
                              dispatch_resume(*(v18 + 328));
                              v660 = *(v18 + 144);
                            }

                            if ((v660 & 0x20) != 0 && *(v18 + 344))
                            {
                              *(v18 + 144) = v660 & 0xFFFFFFFFFFFFFFDFLL;
                              if (gNRPacketLoggingEnabled != 1)
                              {
                                goto LABEL_663;
                              }

                              v959 = _NRCopyLogObjectForNRUUID(*v1075);
                              v960 = v959;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                v3 = v1071;
                                v18 = v1091;
                                goto LABEL_830;
                              }

                              v984 = os_log_type_enabled(v959, OS_LOG_TYPE_INFO);

                              v3 = v1071;
                              v18 = v1091;
                              if (v984)
                              {
LABEL_830:
                                v985 = _NRCopyLogObjectForNRUUID(*v1075);
                                _NRLogWithArgs(v985, 1, "%s%.30s:%-4d source-resume: NexusBEInput", v986, v987, v988, v989, v990, "");
                              }

LABEL_663:
                              dispatch_resume(*(v18 + 344));
                              v660 = *(v18 + 144);
                            }

                            if ((v660 & 0x40) == 0 || !*(v18 + 360))
                            {
                              goto LABEL_628;
                            }

                            v662 = (v18 + 360);
                            *(v18 + 144) = v660 & 0xFFFFFFFFFFFFFFBFLL;
                            if (gNRPacketLoggingEnabled == 1)
                            {
LABEL_813:
                              v953 = _NRCopyLogObjectForNRUUID(*v1075);
                              v954 = v953;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                goto LABEL_824;
                              }

                              v963 = os_log_type_enabled(v953, OS_LOG_TYPE_INFO);

                              if (v963)
                              {
LABEL_824:
                                v964 = _NRCopyLogObjectForNRUUID(*v1075);
                                _NRLogWithArgs(v964, 1, "%s%.30s:%-4d source-resume: NexusBKInput", v965, v966, v967, v968, v969, "");
                                goto LABEL_837;
                              }

LABEL_684:
                              v3 = v1071;
                              v18 = v1091;
                            }

                            dispatch_resume(*v662);
                            goto LABEL_628;
                          }

                          v660 = *(v18 + 144);
                          if ((*(v18 + 15) & 4) == 0)
                          {
                            goto LABEL_652;
                          }

                          if ((v660 & 0x20) != 0 && *(v18 + 344))
                          {
                            *(v18 + 144) = v660 & 0xFFFFFFFFFFFFFFDFLL;
                            if (gNRPacketLoggingEnabled != 1)
                            {
                              goto LABEL_680;
                            }

                            v1005 = _NRCopyLogObjectForNRUUID(*v1075);
                            v1006 = v1005;
                            if (sNRCopyLogToStdErr == 1)
                            {

                              goto LABEL_845;
                            }

                            v1021 = os_log_type_enabled(v1005, OS_LOG_TYPE_INFO);

                            if (v1021)
                            {
LABEL_845:
                              v1022 = _NRCopyLogObjectForNRUUID(*v1075);
                              _NRLogWithArgs(v1022, 1, "%s%.30s:%-4d source-resume: NexusBEInput", v1023, v1024, v1025, v1026, v1027, "");
                            }

LABEL_680:
                            v18 = v1091;
                            dispatch_resume(*(v1091 + 344));
                            v660 = *(v18 + 144);
                          }

                          v3 = v1071;
                          if ((v660 & 0x40) == 0 || !*(v18 + 360))
                          {
                            goto LABEL_628;
                          }

                          v662 = (v18 + 360);
                          *(v18 + 144) = v660 & 0xFFFFFFFFFFFFFFBFLL;
                          if (gNRPacketLoggingEnabled == 1)
                          {
                            goto LABEL_813;
                          }

                          goto LABEL_684;
                        }

                        if (v1069 == 2)
                        {
                          v661 = *(v18 + 144);
                          if ((v661 & 8) != 0 && *(v18 + 312))
                          {
                            *(v18 + 144) = v661 & 0xFFFFFFFFFFFFFFF7;
                            if (gNRPacketLoggingEnabled != 1)
                            {
                              goto LABEL_645;
                            }

                            v961 = _NRCopyLogObjectForNRUUID(*v1075);
                            v962 = v961;
                            if (sNRCopyLogToStdErr == 1)
                            {

                              goto LABEL_841;
                            }

                            v1007 = os_log_type_enabled(v961, OS_LOG_TYPE_INFO);

                            if (v1007)
                            {
LABEL_841:
                              v1008 = _NRCopyLogObjectForNRUUID(*v1075);
                              _NRLogWithArgs(v1008, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v1009, v1010, v1011, v1012, v1013, "");
                            }

LABEL_645:
                            v18 = v1091;
                            dispatch_resume(*(v1091 + 312));
                            v661 = *(v18 + 144);
                            v3 = v1071;
                          }

                          if ((v661 & 0x10) == 0 || !*(v18 + 328))
                          {
                            goto LABEL_628;
                          }

                          v662 = (v18 + 328);
                          *(v18 + 144) = v661 & 0xFFFFFFFFFFFFFFEFLL;
                          if (gNRPacketLoggingEnabled != 1)
                          {
                            goto LABEL_684;
                          }

                          v663 = _NRCopyLogObjectForNRUUID(*v1075);
                          v664 = v663;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v993 = os_log_type_enabled(v663, OS_LOG_TYPE_INFO);

                            if (!v993)
                            {
                              goto LABEL_684;
                            }
                          }

                          v964 = _NRCopyLogObjectForNRUUID(*v1075);
                          _NRLogWithArgs(v964, 1, "%s%.30s:%-4d source-resume: NexusVIInput", v994, v995, v996, v997, v998, "");
                        }

                        else
                        {
                          v665 = *(v18 + 144);
                          if ((v665 & 8) == 0 || !*(v18 + 312))
                          {
                            goto LABEL_628;
                          }

                          v662 = (v18 + 312);
                          *(v18 + 144) = v665 & 0xFFFFFFFFFFFFFFF7;
                          if (gNRPacketLoggingEnabled != 1)
                          {
                            goto LABEL_684;
                          }

                          v666 = _NRCopyLogObjectForNRUUID(*v1075);
                          v667 = v666;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v999 = os_log_type_enabled(v666, OS_LOG_TYPE_INFO);

                            if (!v999)
                            {
                              goto LABEL_684;
                            }
                          }

                          v964 = _NRCopyLogObjectForNRUUID(*v1075);
                          _NRLogWithArgs(v964, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v1000, v1001, v1002, v1003, v1004, "");
                        }

LABEL_837:

                        goto LABEL_684;
                      }

                      v1083 = v547;
                      v1096 = 0;
                      if (*(v467 + 3640) != 1)
                      {
                        goto LABEL_530;
                      }

                      v574 = _NRCopyLogObjectForNRUUID(*v1075);
                      v575 = v574;
                      if (sNRCopyLogToStdErr == 1)
                      {

                        v467 = 0x280D73000;
                        goto LABEL_581;
                      }

                      v587 = os_log_type_enabled(v574, OS_LOG_TYPE_INFO);

                      v18 = v1091;
                      v467 = 0x280D73000;
                      if (v587)
                      {
LABEL_581:
                        v588 = _NRCopyLogObjectForNRUUID(*v1075);
                        v1060 = *(v484 + 80);
                        _NRLogWithArgs(v588, 1, "%s%.30s:%-4d %s: invoking send callback w/ written %u", v589, v590, v591, v592, v593, "");

                        v18 = v1091;
                      }

LABEL_530:
                      v549 = ((*v1081)[1])(**v1081, *v484, *(v484 + 80), &v1096, 0, 0);
                      if (*(v467 + 3640) == 1)
                      {
                        v576 = _NRCopyLogObjectForNRUUID(*v1075);
                        v577 = v576;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          v467 = 0x280D73000;
                        }

                        else
                        {
                          LODWORD(v1073) = os_log_type_enabled(v576, OS_LOG_TYPE_INFO);

                          v18 = v1091;
                          v467 = 0x280D73000;
                          if (!v1073)
                          {
                            goto LABEL_531;
                          }
                        }

                        v594 = _NRCopyLogObjectForNRUUID(*v1075);
                        v1061 = *(v484 + 80);
                        _NRLogWithArgs(v594, 1, "%s%.30s:%-4d %s: canWriteMore: %d bufferHandled=%zu/%u", v595, v596, v597, v598, v599, "");

                        v18 = v1091;
                      }

LABEL_531:
                      if (v549)
                      {
                        v550 = v492 | 0x800;
                        v551 = v1096;
                        if (!v1096)
                        {
                          goto LABEL_563;
                        }

LABEL_557:
                        v568 = *(v467 + 3640);
                        if (v551 < *(v484 + 80))
                        {
                          if (!*(v467 + 3640))
                          {
                            goto LABEL_559;
                          }

                          v602 = _NRCopyLogObjectForNRUUID(*v1075);
                          v603 = v602;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v467 = 0x280D73000;
                            goto LABEL_599;
                          }

                          LODWORD(v1073) = os_log_type_enabled(v602, OS_LOG_TYPE_INFO);

                          v18 = v1091;
                          v467 = 0x280D73000;
                          if (v1073)
                          {
LABEL_599:
                            v621 = _NRCopyLogObjectForNRUUID(*v1075);
                            v1062 = *(v484 + 80);
                            _NRLogWithArgs(v621, 1, "%s%.30s:%-4d %s: memmoving filledIn=%u, bufferHandled=%zu", v622, v623, v624, v625, v626, "");

                            v18 = v1091;
                          }

LABEL_559:
                          v550 |= 0x2000u;
                          memmove(*v484, (*v484 + v1096), *(v484 + 80) - v1096);
                          v569 = v1096;
                          *(v484 + 80) -= v1096;
                          v1079 = (v1079 + 1);
LABEL_562:
                          *(v18 + v1078) += v569;
                          goto LABEL_563;
                        }

                        if (!*(v467 + 3640))
                        {
LABEL_561:
                          v550 |= 0x4000u;
                          *(v484 + 80) = 0;
                          v569 = v1096;
                          goto LABEL_562;
                        }

                        v604 = _NRCopyLogObjectForNRUUID(*v1075);
                        v605 = v604;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          v467 = 0x280D73000;
                        }

                        else
                        {
                          LODWORD(v1073) = os_log_type_enabled(v604, OS_LOG_TYPE_INFO);

                          v18 = v1091;
                          v467 = 0x280D73000;
                          if (!v1073)
                          {
                            goto LABEL_561;
                          }
                        }

                        v627 = _NRCopyLogObjectForNRUUID(*v1075);
                        v1063 = *(v484 + 80);
                        _NRLogWithArgs(v627, 1, "%s%.30s:%-4d %s: not memmoving filledIn=%u, bufferHandled=%zu", v628, v629, v630, v631, v632, "");

                        v18 = v1091;
                        goto LABEL_561;
                      }

                      if (v1080)
                      {
                        v1080(v18);
                      }

                      *(v484 + 84) |= 1u;
                      v552 = *(v484 + 83);
                      if (v552 > 1)
                      {
                        if (v552 == 2)
                        {
                          ++*(v18 + 168);
                          *(v18 + 144) = *(v18 + 144) & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(v484 + 84) & 1));
                          if (*(v467 + 3640) != 1)
                          {
                            goto LABEL_555;
                          }

                          v559 = _NRCopyLogObjectForNRUUID(*v1075);
                          v560 = v559;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v467 = 0x280D73000;
                          }

                          else
                          {
                            LODWORD(v1073) = os_log_type_enabled(v559, OS_LOG_TYPE_INFO);

                            v18 = v1091;
                            v467 = 0x280D73000;
                            if (!v1073)
                            {
                              goto LABEL_555;
                            }
                          }

                          v562 = _NRCopyLogObjectForNRUUID(*v1075);
                          *(v484 + 84);
                          _NRLogWithArgs(v562, 1, "%s%.30s:%-4d source-%s: High", v650, v651, v652, v653, v654, "");
                        }

                        else
                        {
                          if (v552 != 3)
                          {
                            goto LABEL_555;
                          }

                          ++*(v18 + 184);
                          *(v18 + 144) = *(v18 + 144) & 0xFFFFFFFFFFFFFFFBLL | (4 * (*(v484 + 84) & 1));
                          if (*(v467 + 3640) != 1)
                          {
                            goto LABEL_555;
                          }

                          v556 = _NRCopyLogObjectForNRUUID(*v1075);
                          v557 = v556;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v467 = 0x280D73000;
                          }

                          else
                          {
                            LODWORD(v1073) = os_log_type_enabled(v556, OS_LOG_TYPE_INFO);

                            v18 = v1091;
                            v467 = 0x280D73000;
                            if (!v1073)
                            {
                              goto LABEL_555;
                            }
                          }

                          v562 = _NRCopyLogObjectForNRUUID(*v1075);
                          *(v484 + 84);
                          _NRLogWithArgs(v562, 1, "%s%.30s:%-4d source-%s: Isochronous", v645, v646, v647, v648, v649, "");
                        }

LABEL_554:

                        v18 = v1091;
                        goto LABEL_555;
                      }

                      if (!*(v484 + 83))
                      {
                        v558 = _NRCopyLogObjectForNRUUID(*v1075);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v561 = v558;
                          LODWORD(v1073) = os_log_type_enabled(v558, OS_LOG_TYPE_ERROR);

                          v18 = v1091;
                          if (!v1073)
                          {
                            goto LABEL_555;
                          }
                        }

                        v562 = _NRCopyLogObjectForNRUUID(*v1075);
                        _NRLogWithArgs(v562, 16, "%s%.30s:%-4d invalid link channel priority", v563, v564, v565, v566, v567, "");
                        goto LABEL_554;
                      }

                      if (v552 == 1)
                      {
                        v553 = *(v18 + 144);
                        ++*(v18 + 152);
                        *(v18 + 144) = v553 & 0xFFFFFFFFFFFFFFFELL | *(v484 + 84) & 1;
                        if (*(v467 + 3640) == 1)
                        {
                          v554 = _NRCopyLogObjectForNRUUID(*v1075);
                          v555 = v554;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v467 = 0x280D73000;
                            goto LABEL_605;
                          }

                          LODWORD(v1073) = os_log_type_enabled(v554, OS_LOG_TYPE_INFO);

                          v18 = v1091;
                          v467 = 0x280D73000;
                          if (v1073)
                          {
LABEL_605:
                            v562 = _NRCopyLogObjectForNRUUID(*v1075);
                            *(v484 + 84);
                            _NRLogWithArgs(v562, 1, "%s%.30s:%-4d source-%s: Medium", v640, v641, v642, v643, v644, "");
                            goto LABEL_554;
                          }
                        }
                      }

LABEL_555:
                      v550 = v492 | 0x1800;
                      if (*(v467 + 3640) != 1)
                      {
                        v551 = v1096;
                        if (!v1096)
                        {
                          goto LABEL_563;
                        }

                        goto LABEL_557;
                      }

                      v585 = _NRCopyLogObjectForNRUUID(*v1075);
                      v586 = v585;
                      if (sNRCopyLogToStdErr == 1)
                      {

                        goto LABEL_593;
                      }

                      v608 = os_log_type_enabled(v585, OS_LOG_TYPE_INFO);

                      if (v608)
                      {
LABEL_593:
                        v609 = _NRCopyLogObjectForNRUUID(*v1075);
                        _NRLogWithArgs(v609, 1, "%s%.30s:%-4d ", v610, v611, v612, v613, v614, "");
                      }

                      v18 = v1091;
                      v467 = 0x280D73000;
                      v551 = v1096;
                      if (v1096)
                      {
                        goto LABEL_557;
                      }

LABEL_563:
                      LODWORD(ESPSequenceNumberFromPacket) = ESPSequenceNumberFromPacket + 1;
                      if ((v549 & 1) == 0)
                      {
                        goto LABEL_617;
                      }

                      v570 = *(v484 + 82);
                      if (v570 >= 0xB)
                      {
                        v570 -= 11 * ((((117 * v570) >> 8) + (((v570 - ((117 * v570) >> 8)) & 0xFE) >> 1)) >> 3);
                      }

                      v491 = 0;
                      *(v1088 + 4 * v570) = v550;
                      if (v570 < 0xAu)
                      {
                        v571 = v570 + 1;
                      }

                      else
                      {
                        v571 = v570 - 10;
                      }

                      *(v484 + 82) = v571;
                    }
                  }
                }

                v840 = _NRCopyLogObjectForNRUUID(*v1075);
                _NRLogWithArgs(v840, 1, "%s%.30s:%-4d %s: starting NtL outer loop", v841, v842, v843, v844, v845, "");

                v18 = v1091;
                goto LABEL_465;
              }

              if (*(v467 + 3640) != 1)
              {
LABEL_611:
                if (v1080)
                {
                  v1080(v18);
                }

                v655 = *(v484 + 82);
                if (v655 >= 0xB)
                {
                  v655 -= 11 * ((((117 * v655) >> 8) + (((v655 - ((117 * v655) >> 8)) & 0xFE) >> 1)) >> 3);
                }

                v656 = v655;
                *(v484 + 4 * v655 + 36) = 3;
                goto LABEL_632;
              }

              v819 = _NRCopyLogObjectForNRUUID(*v1075);
              v820 = v819;
              if (sNRCopyLogToStdErr == 1)
              {

                v379 = v1082;
              }

              else
              {
                v846 = os_log_type_enabled(v819, OS_LOG_TYPE_INFO);

                v18 = v1091;
                v379 = v1082;
                if (!v846)
                {
                  goto LABEL_611;
                }
              }

              v847 = _NRCopyLogObjectForNRUUID(*v1075);
              _NRLogWithArgs(v847, 1, "%s%.30s:%-4d %s: ignoring NtL fast-path for %u, as waiting for link output available", v848, v849, v850, v851, v852, "");

              v18 = v1091;
              goto LABEL_611;
            }

            v798 = v465;
            if (*(v467 + 3640) == 1)
            {
              v1030 = _NRCopyLogObjectForNRUUID(*v1075);
              v1031 = v1030;
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v1043 = os_log_type_enabled(v1030, OS_LOG_TYPE_INFO);

                if (!v1043)
                {
                  goto LABEL_744;
                }
              }

              v1044 = _NRCopyLogObjectForNRUUID(*v1075);
              _NRLogWithArgs(v1044, 1, "%s%.30s:%-4d ", v1045, v1046, v1047, v1048, v1049, "");
            }

LABEL_744:
            v799 = _NRCopyLogObjectForNRUUID(*v1075);
            v800 = v799;
            if (sNRCopyLogToStdErr == 1)
            {

              v379 = v1082;
            }

            else
            {
              v810 = os_log_type_enabled(v799, OS_LOG_TYPE_FAULT);

              v18 = v1091;
              v379 = v1082;
              if (!v810)
              {
                goto LABEL_636;
              }
            }

            v811 = _NRCopyLogObjectForNRUUID(*v1075);
            _NRLogWithArgs(v811, 17, "%s: Invalid write context for nexus priority: %u", v812, v813, v814, v815, v816, v798);

            v18 = v1091;
LABEL_636:

            v312 = v1076;
            v378 = v1085;
            goto LABEL_350;
          }

          v468 = *(v18 + 112);
          if (!v468)
          {
LABEL_456:
            v464 = (v18 + 104);
            v465 = "Medium";
            v466 = 1;
            v467 = 0x280D73000;
            goto LABEL_458;
          }

          if ((*(*v468 + 43) & 3) == 1 && (*(v18 + 17) & 1) == 0)
          {

            v1080 = 0;
            v469 = 0;
            v462 = 0;
            v1090 = 0;
            v1072 = 0;
            v464 = (v18 + 120);
          }

          else
          {
            v464 = 0;
            v469 = 1;
          }

          if (*(v18 + 17) == 1 && (gNRPacketLoggingEnabled & 1) != 0)
          {
            v943 = v462;
            v944 = _NRCopyLogObjectForNRUUID(*v1075);
            v945 = v944;
            if (sNRCopyLogToStdErr == 1)
            {

              v379 = v1082;
            }

            else
            {
              v946 = os_log_type_enabled(v944, OS_LOG_TYPE_INFO);

              v18 = v1091;
              v379 = v1082;
              v462 = v943;
              if (!v946)
              {
                goto LABEL_453;
              }
            }

            v947 = _NRCopyLogObjectForNRUUID(*v1075);
            _NRLogWithArgs(v947, 1, "%s%.30s:%-4d sending packets over medium pipe", v948, v949, v950, v951, v952, "");

            v462 = v943;
            v18 = v1091;
          }

LABEL_453:
          if (v464)
          {
            if (v469)
            {
              v466 = 0;
              v465 = "Invalid";
              v467 = 0x280D73000;
              goto LABEL_458;
            }

            goto LABEL_457;
          }

          goto LABEL_456;
        }
      }

      v804 = _NRCopyLogObjectForNRUUID(*v1075);
      _NRLogWithArgs(v804, 1, "%s%.30s:%-4d starting NtL fast-path for %u", v805, v806, v807, v808, v809, "");

      v462 = v795;
      v18 = v1091;
      goto LABEL_436;
    }

    v407 = v3;
    v408 = _NRCopyLogObjectForNRUUID(*v1075);
    if (*(p_inst_meths + 556) == 1)
    {
    }

    else
    {
      v435 = v408;
      v436 = os_log_type_enabled(v408, OS_LOG_TYPE_DEFAULT);

      if (!v436)
      {
        goto LABEL_394;
      }
    }

    v437 = _NRCopyLogObjectForNRUUID(*v1075);
    v438 = *(v395 + 24);
    [v1085 intValue];
    _NRLogWithArgs(v437, 0, "%s%.30s:%-4d received more data than moveOffset (%u > %u), off %d", v439, v440, v441, v442, v443, "");

LABEL_394:
    if (v405 >= 0x10000)
    {
      v444 = *(v395 + 24);
      [v1085 intValue];
      [(NRBluetoothPacketParser *)v1091 handleInternalError:off %d""), v445, v446, v447, v448, v449, v450, v444];
      v3 = v407;
      goto LABEL_396;
    }

    v3 = v407;
    if (v405)
    {
      memmove(*v395, (*v395 + v405), *(v395 + 24) - v405);
      *(v395 + 24) -= v405;
    }

    bzero(&v1098, 0x5DCuLL);
    v451 = *(v395 + 24);
    *(v395 + 24) = 0;
    v452 = &v1098;
    if (v451 < 0x5DD || (v452 = malloc_type_calloc(1uLL, v451, 0xA3D89D4uLL)) != 0)
    {
      memcpy(v452, *v395, v451);
      NRBluetoothPacketParserLinkToNexusLoopFastPath(v1091, v395, v452, v451, 0, 0);
      if (v452 != &v1098)
      {
        free(v452);
      }

      v18 = v1091;
      v378 = v1085;
      goto LABEL_405;
    }

    v1028 = nrCopyLogObj_560();
    v1029 = v1028;
    if (*(p_inst_meths + 556) == 1)
    {
    }

    else
    {
      v1032 = os_log_type_enabled(v1028, OS_LOG_TYPE_ERROR);

      if (!v1032)
      {
LABEL_852:
        v1039 = _os_log_pack_size();
        MEMORY[0x28223BE20](v1039, v1040);
        v1041 = *__error();
        v1042 = _os_log_pack_fill();
        *v1042 = 136446722;
        *(v1042 + 4) = "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]";
        *(v1042 + 12) = 2048;
        *(v1042 + 14) = 1;
        *(v1042 + 22) = 2048;
        *(v1042 + 24) = v451;
        goto LABEL_447;
      }
    }

    v1033 = nrCopyLogObj_560();
    _NRLogWithArgs(v1033, 16, "%s%.30s:%-4d ABORTING: strict_calloc(%zu, %zu) failed", v1034, v1035, v1036, v1037, v1038, "");

    goto LABEL_852;
  }

LABEL_350:

LABEL_351:
  v386 = [v3 objectForKeyedSubscript:{@"deactivate-datapath", v1068}];

  if (v386)
  {
    v387 = [v3 objectForKeyedSubscript:@"deactivate-datapath"];
    v388 = [v387 objectForKeyedSubscript:@"channel-id"];
    if ([v388 integerValue] == 2)
    {
      v389 = 2;
    }

    else if ([v388 integerValue] == 1)
    {
      v389 = 1;
    }

    else if ([v388 integerValue] == 3)
    {
      v389 = 3;
    }

    else
    {
      v389 = 0;
    }

    v391 = v1091;
    [(NRBluetoothPacketParser *)v1091 resetContextForPriorityInner:v389 teardownContext:0];

    v18 = v391;
  }

  v392 = [v3 objectForKeyedSubscript:@"teardown"];

  if (v392)
  {
    v312 = [v3 objectForKeyedSubscript:@"teardown"];
    if ([v312 BOOLValue])
    {
      [(NRBluetoothPacketParser *)v18 teardown];
    }

    goto LABEL_306;
  }

LABEL_307:

  v360 = *MEMORY[0x277D85DE8];
}

- (void)updateReadyStateIfApplicable
{
  if (*(a1 + 13) != 3 && ([*(a1 + 72) count] || *(a1 + 12) == 1) && *(a1 + 15))
  {

    [(NRBluetoothPacketParser *)a1 changeStateTo:?];
  }
}

- (void)setupNexusChannelForPriority:(void *)a3 channelUUID:
{
  v61[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!os_channel_attr_create())
  {
    v45 = @"os_channel_attr_create() failed";
LABEL_14:
    [(NRBluetoothPacketParser *)a1 handleInternalError:v45, v6, v7, v8, v9, v10, v11, v47];
    goto LABEL_15;
  }

  os_channel_attr_set();
  v61[0] = 0;
  v61[1] = 0;
  [v5 getUUIDBytes:v61];
  extended = os_channel_create_extended();
  if (!extended)
  {
    v45 = @"os_channel_create_extended() failed";
    goto LABEL_14;
  }

  v13 = extended;
  os_channel_attr_destroy();
  os_channel_ring_id();
  v14 = os_channel_rx_ring();
  if (!v14)
  {
    v45 = @"os_channel_rx_ring() failed";
    goto LABEL_14;
  }

  v51 = v14;
  os_channel_ring_id();
  v15 = os_channel_tx_ring();
  if (!v15)
  {
    v45 = @"os_channel_tx_ring() failed";
    goto LABEL_14;
  }

  v16 = v15;
  fd = os_channel_get_fd();
  if ((fd & 0x80000000) != 0)
  {
    v45 = @"os_channel_get_fd() failed";
    goto LABEL_14;
  }

  v18 = fd;
  v25 = dispatch_group_create();
  if (v25)
  {
    v26 = v18;
    v27 = dispatch_source_create(MEMORY[0x277D85D28], v18, 0, *(a1 + 64));
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __68__NRBluetoothPacketParser_setupNexusChannelForPriority_channelUUID___block_invoke;
    handler[3] = &unk_27996AF70;
    handler[4] = a1;
    v60 = a2;
    dispatch_source_set_event_handler(v27, handler);
    dispatch_group_enter(v25);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __68__NRBluetoothPacketParser_setupNexusChannelForPriority_channelUUID___block_invoke_2;
    v57[3] = &unk_27996B180;
    v28 = v25;
    v58 = v28;
    dispatch_source_set_cancel_handler(v27, v57);
    dispatch_activate(v27);
    v29 = dispatch_source_create(MEMORY[0x277D85D50], v26, 0, *(a1 + 64));
    v36 = v29;
    if (v29)
    {
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __68__NRBluetoothPacketParser_setupNexusChannelForPriority_channelUUID___block_invoke_3;
      v55[3] = &unk_27996AF70;
      v55[4] = a1;
      v56 = a2;
      v37 = a2;
      dispatch_source_set_event_handler(v29, v55);
      dispatch_group_enter(v28);
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __68__NRBluetoothPacketParser_setupNexusChannelForPriority_channelUUID___block_invoke_4;
      v53[3] = &unk_27996B180;
      v38 = v28;
      v54 = v38;
      dispatch_source_set_cancel_handler(v36, v53);
      v39 = *(a1 + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__NRBluetoothPacketParser_setupNexusChannelForPriority_channelUUID___block_invoke_5;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v13;
      dispatch_group_notify(v38, v39, block);
      v50 = v27;
      v49 = v36;
      v48 = v38;
      v40 = v37 - 100;
      v41 = qword_25B9FC478[v40];
      v42 = qword_25B9FC498[v40];
      v43 = a1 + 8 * v40;
      *(v43 + 216) = v13;
      v44 = a1 + 16 * v40;
      *(v44 + 248) = v51;
      *(v44 + 256) = v16;
      objc_storeStrong((v44 + 312), v27);
      objc_storeStrong((v44 + 320), v36);
      objc_storeStrong((v43 + 376), v25);
      *(a1 + 144) = *(a1 + 144) & v41 | v42;
    }

    else
    {
      [(NRBluetoothPacketParser *)a1 handleInternalError:v30, v31, v32, v33, v34, v35, a2];
    }
  }

  else
  {
    [(NRBluetoothPacketParser *)a1 handleInternalError:v19, v20, v21, v22, v23, v24, a2];
  }

LABEL_15:
  v46 = *MEMORY[0x277D85DE8];
}

void __68__NRBluetoothPacketParser_setupNexusChannelForPriority_channelUUID___block_invoke(uint64_t a1)
{
  v1 = a1;
  v425 = *MEMORY[0x277D85DE8];
  if (gNRPacketLoggingEnabled == 1)
  {
    v223 = _NRCopyLogObjectForNRUUID(*(*(a1 + 32) + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v225 = v223;
      v226 = os_log_type_enabled(v223, OS_LOG_TYPE_INFO);

      if (!v226)
      {
        goto LABEL_2;
      }
    }

    v227 = _NRCopyLogObjectForNRUUID(*(*(v1 + 32) + 48));
    StringForNRNexusChannelPriority = createStringForNRNexusChannelPriority(*(v1 + 40));
    _NRLogWithArgs(v227, 1, "%s%.30s:%-4d Nexus input available - %@", v228, v229, v230, v231, v232, "");
  }

LABEL_2:
  *(*(v1 + 32) + 17) = 1;
  v2 = *(v1 + 32);
  if (*(v2 + 13) == 4)
  {
    goto LABEL_208;
  }

  v3 = *(v1 + 40);
  dispatch_assert_queue_V2(*(v2 + 64));
  v4 = 0;
  if (v3 > 101)
  {
    if (v3 == 102)
    {
      v4 = 0;
      v5 = 0;
      v411 = NRBluetoothPacketParserSuspendNexusBEInputSource;
      v7 = 21;
      v8 = 480;
      v9 = 344;
      v10 = 280;
      v11 = 232;
    }

    else
    {
      v5 = 0;
      v414 = 0;
      v415 = 0;
      v6 = 0;
      v418 = 0;
      v411 = 0;
      if (v3 != 103)
      {
        goto LABEL_13;
      }

      v4 = 0;
      v5 = 0;
      v411 = NRBluetoothPacketParserSuspendNexusBKInputSource;
      v7 = 22;
      v8 = 496;
      v9 = 360;
      v10 = 296;
      v11 = 240;
    }
  }

  else if (v3 == 100)
  {
    v4 = 1;
    v7 = 19;
    v8 = 448;
    v9 = 312;
    v10 = 248;
    v11 = 216;
    v5 = 1;
    v411 = NRBluetoothPacketParserSuspendNexusVOInputSource;
  }

  else
  {
    v5 = 0;
    v414 = 0;
    v415 = 0;
    v6 = 0;
    v418 = 0;
    v411 = 0;
    if (v3 != 101)
    {
      goto LABEL_13;
    }

    v5 = 0;
    v411 = NRBluetoothPacketParserSuspendNexusVIInputSource;
    v4 = 1;
    v7 = 20;
    v8 = 464;
    v9 = 328;
    v10 = 264;
    v11 = 224;
  }

  v12 = *(v2 + v11);
  v418 = *(v2 + v10);
  v6 = *(v2 + v9);
  v414 = (v2 + v8);
  v415 = (v2 + v7);
LABEL_13:
  if (gNRPacketLoggingEnabled != 1)
  {
    goto LABEL_14;
  }

  v224 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v241 = v224;
    v242 = os_log_type_enabled(v224, OS_LOG_TYPE_INFO);

    if (!v242)
    {
      goto LABEL_14;
    }
  }

  v243 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
  _NRLogWithArgs(v243, 1, "%s%.30s:%-4d starting NtL fast-path for %u", v244, v245, v246, v247, v248, "");

LABEL_14:
  v417 = *&v5 & ((*(v2 + 15) & 8) >> 3);
  if (v417 != 1)
  {
    if (!v4)
    {
      goto LABEL_257;
    }

    if ((*(v2 + 15) & 4) != 0)
    {
      v13 = (v2 + 120);
      goto LABEL_261;
    }

    v201 = *(v2 + 112);
    if (!v201)
    {
LABEL_257:
      v13 = (v2 + 104);
      v14 = "Medium";
      v15 = 1;
      v16 = *(v2 + 104);
      if (!v16)
      {
        goto LABEL_258;
      }

      goto LABEL_16;
    }

    if ((*(*v201 + 43) & 3) == 1 && (*(v2 + 17) & 1) == 0)
    {

      v411 = 0;
      v202 = 0;
      v6 = 0;
      v418 = 0;
      v13 = (v2 + 120);
    }

    else
    {
      v13 = 0;
      v202 = 1;
    }

    if (*(v2 + 17) == 1 && (gNRPacketLoggingEnabled & 1) != 0)
    {
      v312 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
      v313 = v312;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v314 = os_log_type_enabled(v312, OS_LOG_TYPE_INFO);

        if (!v314)
        {
          goto LABEL_253;
        }
      }

      v315 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
      _NRLogWithArgs(v315, 1, "%s%.30s:%-4d sending packets over medium pipe", v316, v317, v318, v319, v320, "");
    }

LABEL_253:
    if (v13)
    {
      if (v202)
      {
        v15 = 0;
        v14 = "Invalid";
        v16 = *v13;
        if (!*v13)
        {
          goto LABEL_258;
        }

        goto LABEL_16;
      }

LABEL_261:
      v14 = "High";
      v15 = 2;
      v16 = *v13;
      if (!*v13)
      {
        goto LABEL_258;
      }

LABEL_16:
      v17 = v16[3];
      if ((*(v17 + 84) & 1) == 0)
      {
        v18 = *(v17 + 8);
        v19 = *(v17 + 83);
        v20 = 584;
        if (v19 == 3)
        {
          v20 = 600;
        }

        v21 = v19 == 2;
        v22 = 616;
        if (!v21)
        {
          v22 = v20;
        }

        v409 = v22;
        if (gNRPacketLoggingEnabled != 1)
        {
          goto LABEL_22;
        }

        v249 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v254 = v249;
          v255 = os_log_type_enabled(v249, OS_LOG_TYPE_INFO);

          if (!v255)
          {
LABEL_22:
            v412 = v13;
            v394 = v15;
            v395 = v6;
            v396 = v1;
            v413 = 0;
            v23 = 0;
            v24 = 0;
            next_slot = 0;
            v26 = 0;
            v410 = 0;
            v416 = v17 + 36;
            v423 = 0u;
            v424 = 0u;
            v27 = 9;
            v421 = 0u;
            v422 = 0u;
            v28 = 0x280D73000uLL;
            v397 = v18;
            while (1)
            {
              if (*(v28 + 3640) == 1)
              {
                v117 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                if (sNRCopyLogToStdErr == 1)
                {

LABEL_141:
                  v122 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  _NRLogWithArgs(v122, 1, "%s%.30s:%-4d %s: starting NtL inner loop", v123, v124, v125, v126, v127, "");

                  v28 = 0x280D73000;
                  goto LABEL_24;
                }

                v120 = v117;
                v121 = os_log_type_enabled(v117, OS_LOG_TYPE_INFO);

                v28 = 0x280D73000;
                if (v121)
                {
                  goto LABEL_141;
                }
              }

LABEL_24:
              v29 = v27 | 0x10;
              if (v417)
              {
                goto LABEL_34;
              }

              v31 = *(v17 + 28);
              v30 = *(v17 + 32);
              if (v31 <= v30)
              {
                goto LABEL_34;
              }

              v32 = *(v17 + 80);
              if ((v31 - v30) >= (0x4000 - v32))
              {
                v33 = (0x4000 - v32);
              }

              else
              {
                v33 = (v31 - v30);
              }

              memcpy((*v17 + v32), &v397[v30], v33);
              v34 = *(v17 + 28);
              v35 = *(v17 + 32) + v33;
              *(v17 + 32) = v35;
              if (v34 <= v35)
              {
                v36 = 0;
              }

              else
              {
                memmove(v397, &v397[v35], v34 - v35);
                v36 = *(v17 + 28) - *(v17 + 32);
              }

              *(v17 + 28) = v36;
              *(v17 + 32) = 0;
              *(v17 + 80) += v33;
              if (*(v28 + 3640) == 1)
              {
                v147 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                if (sNRCopyLogToStdErr == 1)
                {

LABEL_167:
                  v177 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  _NRLogWithArgs(v177, 1, "%s%.30s:%-4d %s: wrote %u (%u/%u) bytes from linkWriteBuffer", v178, v179, v180, v181, v182, "");

                  v28 = 0x280D73000;
                  goto LABEL_33;
                }

                v176 = v147;
                v393 = os_log_type_enabled(v147, OS_LOG_TYPE_INFO);

                v28 = 0x280D73000;
                if (v393)
                {
                  goto LABEL_167;
                }
              }

LABEL_33:
              v29 = v27 | 0x30;
              v24 += v33;
LABEL_34:
              if (v418)
              {
                next_slot = os_channel_get_next_slot();
              }

              if (!next_slot)
              {
LABEL_90:
                v96 = *(v17 + 80);
                if (*(v17 + 80))
                {
                  goto LABEL_93;
                }

LABEL_186:
                v98 = v29 | 0x400;
                if (*(v28 + 3640) != 1)
                {
LABEL_187:
                  v205 = v98 | 0x8000;
                  if (*(v28 + 3640) != 1)
                  {
                    goto LABEL_188;
                  }

                  v251 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  if (sNRCopyLogToStdErr == 1)
                  {

                    goto LABEL_292;
                  }

                  v273 = v251;
                  v274 = os_log_type_enabled(v251, OS_LOG_TYPE_INFO);

                  if (v274)
                  {
LABEL_292:
                    v275 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    _NRLogWithArgs(v275, 1, "%s%.30s:%-4d %s: out of NtL inner loop", v276, v277, v278, v279, v280, "");
                  }

LABEL_188:
                  if (v26)
                  {
                    os_channel_advance_slot();
                    *(v2 + 18) = 1;
LABEL_191:
                    if (v413 > 8u || v418 && os_channel_available_slot_count() <= 1)
                    {
                      v205 = v98 | 0x18000;
                      if (gNRPacketLoggingEnabled != 1)
                      {
                        goto LABEL_195;
                      }

                      v270 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                      if (sNRCopyLogToStdErr == 1)
                      {

                        goto LABEL_298;
                      }

                      v297 = v270;
                      v298 = os_log_type_enabled(v270, OS_LOG_TYPE_INFO);

                      if (v298)
                      {
LABEL_298:
                        v299 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                        v387 = *(v2 + 432) * 0.000001;
                        _NRLogWithArgs(v299, 1, "%s%.30s:%-4d %s: performing RX sync (%u packets, %u bytes, %u pending, %0.2f msec, canWriteMore %d, memmove %u)", v300, v301, v302, v303, v304, "");
                      }

LABEL_195:
                      os_channel_sync();
                      *(v2 + 18) = 0;
                    }
                  }

                  else if (*(v2 + 18))
                  {
                    goto LABEL_191;
                  }

                  if (gNRPacketLoggingEnabled == 1)
                  {
                    v252 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v281 = v252;
                      v282 = os_log_type_enabled(v252, OS_LOG_TYPE_INFO);

                      if (!v282)
                      {
                        goto LABEL_198;
                      }
                    }

                    v283 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    _NRLogWithArgs(v283, 1, "%s%.30s:%-4d %s: out of NtL outer loop", v284, v285, v286, v287, v288, "");
                  }

LABEL_198:
                  if (v96)
                  {
LABEL_199:
                    v206 = v205 | 0x60000;
                    v1 = v396;
                    v6 = v395;
                    if (gNRPacketLoggingEnabled != 1)
                    {
                      goto LABEL_200;
                    }

                    v253 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    if (sNRCopyLogToStdErr == 1)
                    {

                      goto LABEL_296;
                    }

                    v289 = v253;
                    v290 = os_log_type_enabled(v253, OS_LOG_TYPE_INFO);

                    if (v290)
                    {
LABEL_296:
                      v291 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                      _NRLogWithArgs(v291, 1, "%s%.30s:%-4d %s: done with NtL fast-path", v292, v293, v294, v295, v296, "");
                    }

LABEL_200:
                    v203 = *(v17 + 82);
                    if (v203 >= 0xB)
                    {
                      v203 -= 11 * ((((117 * v203) >> 8) + (((v203 - ((117 * v203) >> 8)) & 0xFE) >> 1)) >> 3);
                    }

                    v204 = v203;
                    *(v416 + 4 * v203) = v206;
LABEL_203:
                    if (v204 < 0xA)
                    {
                      v207 = v203 + 1;
                    }

                    else
                    {
                      v207 = v203 - 10;
                    }

                    *(v17 + 82) = v207;
                    goto LABEL_207;
                  }

                  if (v394 <= 1)
                  {
                    if (v394)
                    {
                      v209 = *(v2 + 144);
                      if ((*(v2 + 15) & 4) == 0)
                      {
                        goto LABEL_223;
                      }
                    }

                    else
                    {
                      v209 = *(v2 + 144);
LABEL_223:
                      if ((v209 & 8) != 0 && *(v2 + 312))
                      {
                        *(v2 + 144) = v209 & 0xFFFFFFFFFFFFFFF7;
                        if (gNRPacketLoggingEnabled != 1)
                        {
                          goto LABEL_226;
                        }

                        v323 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                        v324 = v323;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_321;
                        }

                        v345 = os_log_type_enabled(v323, OS_LOG_TYPE_INFO);

                        if (v345)
                        {
LABEL_321:
                          v346 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                          _NRLogWithArgs(v346, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v347, v348, v349, v350, v351, "");
                        }

LABEL_226:
                        dispatch_resume(*(v2 + 312));
                        v209 = *(v2 + 144);
                      }

                      if ((v209 & 0x10) != 0 && *(v2 + 328))
                      {
                        *(v2 + 144) = v209 & 0xFFFFFFFFFFFFFFEFLL;
                        if (gNRPacketLoggingEnabled != 1)
                        {
                          goto LABEL_230;
                        }

                        v325 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                        v326 = v325;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_323;
                        }

                        v352 = os_log_type_enabled(v325, OS_LOG_TYPE_INFO);

                        if (v352)
                        {
LABEL_323:
                          v353 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                          _NRLogWithArgs(v353, 1, "%s%.30s:%-4d source-resume: NexusVIInput", v354, v355, v356, v357, v358, "");
                        }

LABEL_230:
                        dispatch_resume(*(v2 + 328));
                        v209 = *(v2 + 144);
                      }
                    }

                    if ((v209 & 0x20) != 0 && *(v2 + 344))
                    {
                      *(v2 + 144) = v209 & 0xFFFFFFFFFFFFFFDFLL;
                      if (gNRPacketLoggingEnabled != 1)
                      {
                        goto LABEL_234;
                      }

                      v321 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                      v322 = v321;
                      if (sNRCopyLogToStdErr == 1)
                      {

                        goto LABEL_319;
                      }

                      v338 = os_log_type_enabled(v321, OS_LOG_TYPE_INFO);

                      if (v338)
                      {
LABEL_319:
                        v339 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                        _NRLogWithArgs(v339, 1, "%s%.30s:%-4d source-resume: NexusBEInput", v340, v341, v342, v343, v344, "");
                      }

LABEL_234:
                      dispatch_resume(*(v2 + 344));
                      v209 = *(v2 + 144);
                    }

                    if ((v209 & 0x40) == 0 || !*(v2 + 360))
                    {
                      goto LABEL_199;
                    }

                    v211 = (v2 + 360);
                    *(v2 + 144) = v209 & 0xFFFFFFFFFFFFFFBFLL;
                    if (gNRPacketLoggingEnabled == 1)
                    {
                      v214 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                      v215 = v214;
                      if (sNRCopyLogToStdErr == 1)
                      {

                        goto LABEL_315;
                      }

                      v329 = os_log_type_enabled(v214, OS_LOG_TYPE_INFO);

                      if (v329)
                      {
LABEL_315:
                        v330 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                        _NRLogWithArgs(v330, 1, "%s%.30s:%-4d source-resume: NexusBKInput", v331, v332, v333, v334, v335, "");
                        goto LABEL_330;
                      }
                    }

LABEL_243:
                    dispatch_resume(*v211);
                    goto LABEL_199;
                  }

                  if (v394 == 2)
                  {
                    v210 = *(v2 + 144);
                    if ((v210 & 8) != 0 && *(v2 + 312))
                    {
                      *(v2 + 144) = v210 & 0xFFFFFFFFFFFFFFF7;
                      if (gNRPacketLoggingEnabled != 1)
                      {
                        goto LABEL_216;
                      }

                      v327 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                      v328 = v327;
                      if (sNRCopyLogToStdErr == 1)
                      {

                        goto LABEL_327;
                      }

                      v365 = os_log_type_enabled(v327, OS_LOG_TYPE_INFO);

                      if (v365)
                      {
LABEL_327:
                        v366 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                        _NRLogWithArgs(v366, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v367, v368, v369, v370, v371, "");
                      }

LABEL_216:
                      dispatch_resume(*(v2 + 312));
                      v210 = *(v2 + 144);
                    }

                    if ((v210 & 0x10) == 0 || !*(v2 + 328))
                    {
                      goto LABEL_199;
                    }

                    v211 = (v2 + 328);
                    *(v2 + 144) = v210 & 0xFFFFFFFFFFFFFFEFLL;
                    if (gNRPacketLoggingEnabled != 1)
                    {
                      goto LABEL_243;
                    }

                    v212 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    v213 = v212;
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v359 = os_log_type_enabled(v212, OS_LOG_TYPE_INFO);

                      if (!v359)
                      {
                        goto LABEL_243;
                      }
                    }

                    v330 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    _NRLogWithArgs(v330, 1, "%s%.30s:%-4d source-resume: NexusVIInput", v360, v361, v362, v363, v364, "");
                  }

                  else
                  {
                    v216 = *(v2 + 144);
                    if ((v216 & 8) == 0 || !*(v2 + 312))
                    {
                      goto LABEL_199;
                    }

                    v211 = (v2 + 312);
                    *(v2 + 144) = v216 & 0xFFFFFFFFFFFFFFF7;
                    if (gNRPacketLoggingEnabled != 1)
                    {
                      goto LABEL_243;
                    }

                    v336 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    v337 = v336;
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v372 = os_log_type_enabled(v336, OS_LOG_TYPE_INFO);

                      if (!v372)
                      {
                        goto LABEL_243;
                      }
                    }

                    v330 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    _NRLogWithArgs(v330, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v373, v374, v375, v376, v377, "");
                  }

LABEL_330:

                  goto LABEL_243;
                }

                v271 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                v272 = v271;
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_300;
                }

                v305 = os_log_type_enabled(v271, OS_LOG_TYPE_INFO);

                if (v305)
                {
LABEL_300:
                  v306 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  _NRLogWithArgs(v306, 1, "%s%.30s:%-4d %s: nothing to read from nexus", v307, v308, v309, v310, v311, "");
                }

                v28 = 0x280D73000;
                goto LABEL_187;
              }

              v37 = next_slot;
              while (1)
              {
                v38 = 0x4000 - *(v17 + 80);
                if (v38 < nrMaxTLVLengthForPacket(v422 + *(v2 + 28), (WORD1(v421) - *(v2 + 28))))
                {
                  v29 |= 0x40u;
                  if (gNRPacketLoggingEnabled != 1)
                  {
LABEL_89:
                    next_slot = v37;
                    v28 = 0x280D73000uLL;
                    goto LABEL_90;
                  }

                  v144 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v155 = v144;
                    v403 = os_log_type_enabled(v144, OS_LOG_TYPE_INFO);

                    if (!v403)
                    {
                      goto LABEL_89;
                    }
                  }

                  v156 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  _NRLogWithArgs(v156, 1, "%s%.30s:%-4d %s: not enough room %u to fit maxTLVLen %u", v157, v158, v159, v160, v161, "");

                  goto LABEL_89;
                }

                os_channel_slot_get_packet();
                os_packet_get_next_buflet();
                data_offset = os_buflet_get_data_offset();
                object_address = os_buflet_get_object_address();
                data_length = os_buflet_get_data_length();
                if (data_length >= 0x10000)
                {
                  if (nrCopyLogObj_onceToken_563 != -1)
                  {
                    dispatch_once(&nrCopyLogObj_onceToken_563, &__block_literal_global_442);
                  }

                  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_564, OS_LOG_TYPE_ERROR))
                  {
                    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_564, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen <= 65535", v42, v43, v44, v45, v46, "");
                  }

                  v217 = _os_log_pack_size();
                  MEMORY[0x28223BE20](v217, v218);
                  v219 = *__error();
                  v220 = _os_log_pack_fill();
                  *v220 = 136446210;
                  *(v220 + 4) = "NRBluetoothPacketParserNexusToLinkLoop";
                  v221 = nrCopyLogObj_560();
                  _NRLogAbortWithPack(v221);
                }

                if (*(v2 + 9) == 1)
                {
                  v419 = 0;
                  v420 = 0;
                  v47 = (*v17 + *(v17 + 80));
                  v419 = v47;
                  LODWORD(v420) = v38;
                  v48 = *(v2 + 28);
                  if (*(v2 + 10) == 1)
                  {
                    v49 = nrPacketTo6LoWPAN((v422 + v48), (WORD1(v421) - v48), &v419, 1u, v2 + 688, v2 + 704, 0);
                  }

                  else
                  {
                    memcpy(v47, (v422 + v48), WORD1(v421) - v48);
                    v49 = WORD1(v421) - *(v2 + 28);
                  }

                  v28 = 0x280D73000uLL;
                  if (gNRPacketLoggingEnabled != 1)
                  {
                    goto LABEL_53;
                  }

                  v56 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  if (sNRCopyLogToStdErr == 1)
                  {

                    goto LABEL_69;
                  }

                  v57 = v56;
                  v58 = os_log_type_enabled(v56, OS_LOG_TYPE_INFO);

                  v28 = 0x280D73000;
                  if (v58)
                  {
LABEL_69:
                    v59 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    _NRLogWithArgs(v59, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus (actual: %u)", v60, v61, v62, v63, v64, "");

                    goto LABEL_80;
                  }

                  goto LABEL_53;
                }

                if (!data_length && WORD1(v421))
                {
                  v419 = 0;
                  v420 = 0;
                  v419 = *v17 + *(v17 + 80);
                  LODWORD(v420) = v38;
                  v49 = nrPacketToTLV((v422 + *(v2 + 28)), (WORD1(v421) - *(v2 + 28)), &v419, 1, v2 + 688, v2 + 704);
                  v28 = 0x280D73000uLL;
                  if (gNRPacketLoggingEnabled == 1)
                  {
                    v50 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v66 = v50;
                      v67 = os_log_type_enabled(v50, OS_LOG_TYPE_INFO);

                      v28 = 0x280D73000;
                      if (!v67)
                      {
                        goto LABEL_53;
                      }
                    }

                    v68 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    v69 = v422;
                    v70 = WORD1(v421);
                    v398 = v68;
                    if (isPacketValidIPv6(v422, WORD1(v421)) && isNextHeaderValidESP(v69, v70))
                    {
                      v71 = bswap32(*(v69 + 44));
                    }

                    v72 = v422;
                    v73 = WORD1(v421);
                    if (isPacketValidIPv6(v422, WORD1(v421)) && isNextHeaderValidESP(v72, v73))
                    {
                      v79 = bswap32(*(v72 + 40));
                    }

                    _NRLogWithArgs(v398, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", v74, v75, v76, v77, v78, "");

LABEL_80:
                    v28 = 0x280D73000;
                  }

LABEL_53:
                  v29 |= 0x80u;
                  goto LABEL_54;
                }

                if (data_length)
                {
                  v51 = object_address + data_offset;
                  v419 = 0;
                  v420 = 0;
                  v419 = *v17 + *(v17 + 80);
                  LODWORD(v420) = v38;
                  v52 = data_length;
                  v49 = nrPacketToTLV((v51 + *(v2 + 28)), (data_length - *(v2 + 28)), &v419, 1, v2 + 688, v2 + 704);
                  v28 = 0x280D73000uLL;
                  if (gNRPacketLoggingEnabled != 1)
                  {
LABEL_50:
                    v29 |= 0x100u;
                    goto LABEL_54;
                  }

                  v65 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v81 = v65;
                    v399 = os_log_type_enabled(v65, OS_LOG_TYPE_INFO);

                    v28 = 0x280D73000;
                    if (!v399)
                    {
                      goto LABEL_50;
                    }
                  }

                  v82 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  getESPSequenceNumberFromPacket(v51, v52);
                  getESPSPIFromPacket(v51, v52);
                  _NRLogWithArgs(v82, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", v83, v84, v85, v86, v87, "");

                  v28 = 0x280D73000;
                  goto LABEL_50;
                }

                v29 |= 0x200u;
                v28 = 0x280D73000uLL;
                if (gNRPacketLoggingEnabled != 1)
                {
                  v49 = 0;
                  goto LABEL_54;
                }

                v80 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                if (sNRCopyLogToStdErr == 1)
                {

LABEL_86:
                  v90 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  _NRLogWithArgs(v90, 1, "%s%.30s:%-4d %s: No data to write", v91, v92, v93, v94, v95, "");

                  goto LABEL_87;
                }

                v88 = v80;
                v89 = os_log_type_enabled(v80, OS_LOG_TYPE_INFO);

                if (v89)
                {
                  goto LABEL_86;
                }

LABEL_87:
                v49 = 0;
                v28 = 0x280D73000;
LABEL_54:
                *(v17 + 80) += v49;
                v53 = (v417 & 1) != 0 ? 0 : os_channel_get_next_slot();
                ++v23;
                ++*v414;
                *v415 = 1;
                v24 += v49;
                if (!v53)
                {
                  break;
                }

                v54 = *(v17 + 82);
                if (v54 >= 0xB)
                {
                  v54 -= 11 * ((((117 * v54) >> 8) + (((v54 - ((117 * v54) >> 8)) & 0xFE) >> 1)) >> 3);
                }

                *(v416 + 4 * v54) = v29;
                if (v54 < 0xAu)
                {
                  v55 = v54 + 1;
                }

                else
                {
                  v55 = v54 - 10;
                }

                *(v17 + 82) = v55;
                v26 = v37;
                v37 = v53;
                v29 = 0;
              }

              next_slot = 0;
              v26 = v37;
              v96 = *(v17 + 80);
              if (!*(v17 + 80))
              {
                goto LABEL_186;
              }

LABEL_93:
              v419 = 0;
              if (*(v28 + 3640) != 1)
              {
                goto LABEL_94;
              }

              v118 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
              if (sNRCopyLogToStdErr == 1)
              {

                goto LABEL_145;
              }

              v129 = v118;
              v130 = os_log_type_enabled(v118, OS_LOG_TYPE_INFO);

              v28 = 0x280D73000;
              if (v130)
              {
LABEL_145:
                v131 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                v388 = *(v17 + 80);
                _NRLogWithArgs(v131, 1, "%s%.30s:%-4d %s: invoking send callback w/ written %u", v132, v133, v134, v135, v136, "");

                v28 = 0x280D73000;
              }

LABEL_94:
              v97 = ((*v412)[1])(**v412, *v17, *(v17 + 80), &v419, 0, 0);
              if (*(v28 + 3640) == 1)
              {
                v119 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v137 = v119;
                  v401 = os_log_type_enabled(v119, OS_LOG_TYPE_INFO);

                  v28 = 0x280D73000;
                  if (!v401)
                  {
                    goto LABEL_95;
                  }
                }

                v138 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                v389 = *(v17 + 80);
                _NRLogWithArgs(v138, 1, "%s%.30s:%-4d %s: canWriteMore: %d bufferHandled=%zu/%u", v139, v140, v141, v142, v143, "");

                v28 = 0x280D73000;
              }

LABEL_95:
              if (v97)
              {
                v98 = v29 | 0x800;
                v99 = v419;
                if (!v419)
                {
                  goto LABEL_127;
                }

LABEL_121:
                v113 = *(v28 + 3640);
                if (v99 < *(v17 + 80))
                {
                  if (!*(v28 + 3640))
                  {
                    goto LABEL_123;
                  }

                  v145 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  if (sNRCopyLogToStdErr == 1)
                  {

                    goto LABEL_163;
                  }

                  v162 = v145;
                  v404 = os_log_type_enabled(v145, OS_LOG_TYPE_INFO);

                  v28 = 0x280D73000;
                  if (v404)
                  {
LABEL_163:
                    v163 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    v390 = *(v17 + 80);
                    _NRLogWithArgs(v163, 1, "%s%.30s:%-4d %s: memmoving filledIn=%u, bufferHandled=%zu", v164, v165, v166, v167, v168, "");

                    v28 = 0x280D73000;
                  }

LABEL_123:
                  v98 |= 0x2000u;
                  memmove(*v17, (*v17 + v419), *(v17 + 80) - v419);
                  v114 = v419;
                  *(v17 + 80) -= v419;
                  ++v410;
LABEL_126:
                  *(v2 + v409) += v114;
                  goto LABEL_127;
                }

                if (!*(v28 + 3640))
                {
LABEL_125:
                  v98 |= 0x4000u;
                  *(v17 + 80) = 0;
                  v114 = v419;
                  goto LABEL_126;
                }

                v146 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v169 = v146;
                  v405 = os_log_type_enabled(v146, OS_LOG_TYPE_INFO);

                  v28 = 0x280D73000;
                  if (!v405)
                  {
                    goto LABEL_125;
                  }
                }

                v170 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                v391 = *(v17 + 80);
                _NRLogWithArgs(v170, 1, "%s%.30s:%-4d %s: not memmoving filledIn=%u, bufferHandled=%zu", v171, v172, v173, v174, v175, "");

                v28 = 0x280D73000;
                goto LABEL_125;
              }

              if (v411)
              {
                v411(v2);
              }

              *(v17 + 84) |= 1u;
              v100 = *(v17 + 83);
              if (v100 > 1)
              {
                if (v100 == 2)
                {
                  ++*(v2 + 168);
                  *(v2 + 144) = *(v2 + 144) & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(v17 + 84) & 1));
                  if (*(v28 + 3640) != 1)
                  {
                    goto LABEL_119;
                  }

                  v105 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v195 = v105;
                    v408 = os_log_type_enabled(v105, OS_LOG_TYPE_INFO);

                    v28 = 0x280D73000;
                    if (!v408)
                    {
                      goto LABEL_119;
                    }
                  }

                  v107 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  *(v17 + 84);
                  _NRLogWithArgs(v107, 1, "%s%.30s:%-4d source-%s: High", v196, v197, v198, v199, v200, "");
                }

                else
                {
                  if (v100 != 3)
                  {
                    goto LABEL_119;
                  }

                  ++*(v2 + 184);
                  *(v2 + 144) = *(v2 + 144) & 0xFFFFFFFFFFFFFFFBLL | (4 * (*(v17 + 84) & 1));
                  if (*(v28 + 3640) != 1)
                  {
                    goto LABEL_119;
                  }

                  v103 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v189 = v103;
                    v407 = os_log_type_enabled(v103, OS_LOG_TYPE_INFO);

                    v28 = 0x280D73000;
                    if (!v407)
                    {
                      goto LABEL_119;
                    }
                  }

                  v107 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  *(v17 + 84);
                  _NRLogWithArgs(v107, 1, "%s%.30s:%-4d source-%s: Isochronous", v190, v191, v192, v193, v194, "");
                }

LABEL_118:

                v28 = 0x280D73000uLL;
                goto LABEL_119;
              }

              if (!*(v17 + 83))
              {
                v104 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v106 = v104;
                  v400 = os_log_type_enabled(v104, OS_LOG_TYPE_ERROR);

                  v28 = 0x280D73000;
                  if (!v400)
                  {
                    goto LABEL_119;
                  }
                }

                v107 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                _NRLogWithArgs(v107, 16, "%s%.30s:%-4d invalid link channel priority", v108, v109, v110, v111, v112, "");
                goto LABEL_118;
              }

              if (v100 == 1)
              {
                v101 = *(v2 + 144);
                ++*(v2 + 152);
                *(v2 + 144) = v101 & 0xFFFFFFFFFFFFFFFELL | *(v17 + 84) & 1;
                if (*(v28 + 3640) == 1)
                {
                  v102 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  if (sNRCopyLogToStdErr == 1)
                  {

                    goto LABEL_169;
                  }

                  v183 = v102;
                  v406 = os_log_type_enabled(v102, OS_LOG_TYPE_INFO);

                  v28 = 0x280D73000;
                  if (v406)
                  {
LABEL_169:
                    v107 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    *(v17 + 84);
                    _NRLogWithArgs(v107, 1, "%s%.30s:%-4d source-%s: Medium", v184, v185, v186, v187, v188, "");
                    goto LABEL_118;
                  }
                }
              }

LABEL_119:
              v98 = v29 | 0x1800;
              if (*(v28 + 3640) != 1)
              {
                v99 = v419;
                if (!v419)
                {
                  goto LABEL_127;
                }

                goto LABEL_121;
              }

              v128 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
              if (sNRCopyLogToStdErr == 1)
              {

                goto LABEL_157;
              }

              v148 = v128;
              v402 = os_log_type_enabled(v128, OS_LOG_TYPE_INFO);

              if (v402)
              {
LABEL_157:
                v149 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                _NRLogWithArgs(v149, 1, "%s%.30s:%-4d ", v150, v151, v152, v153, v154, "");
              }

              v28 = 0x280D73000;
              v99 = v419;
              if (v419)
              {
                goto LABEL_121;
              }

LABEL_127:
              ++v413;
              if ((v97 & 1) == 0)
              {
                goto LABEL_187;
              }

              v115 = *(v17 + 82);
              if (v115 >= 0xB)
              {
                v115 -= 11 * ((((117 * v115) >> 8) + (((v115 - ((117 * v115) >> 8)) & 0xFE) >> 1)) >> 3);
              }

              v27 = 0;
              *(v416 + 4 * v115) = v98;
              if (v115 < 0xAu)
              {
                v116 = v115 + 1;
              }

              else
              {
                v116 = v115 - 10;
              }

              *(v17 + 82) = v116;
            }
          }
        }

        v256 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
        _NRLogWithArgs(v256, 1, "%s%.30s:%-4d %s: starting NtL outer loop", v257, v258, v259, v260, v261, "");

        goto LABEL_22;
      }

      if (gNRPacketLoggingEnabled != 1)
      {
LABEL_181:
        if (v411)
        {
          v411(v2);
        }

        v203 = *(v17 + 82);
        if (v203 >= 0xB)
        {
          v203 -= 11 * ((((117 * v203) >> 8) + (((v203 - ((117 * v203) >> 8)) & 0xFE) >> 1)) >> 3);
        }

        v204 = v203;
        *(v17 + 4 * v203 + 36) = 3;
        goto LABEL_203;
      }

      v250 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v262 = v250;
        v263 = os_log_type_enabled(v250, OS_LOG_TYPE_INFO);

        if (!v263)
        {
          goto LABEL_181;
        }
      }

      v264 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
      _NRLogWithArgs(v264, 1, "%s%.30s:%-4d %s: ignoring NtL fast-path for %u, as waiting for link output available", v265, v266, v267, v268, v269, "");

      goto LABEL_181;
    }

    goto LABEL_257;
  }

  v13 = (v2 + 136);
  v14 = "Isochronous";
  v15 = 3;
  v16 = *(v2 + 136);
  if (v16)
  {
    goto LABEL_16;
  }

LABEL_258:
  if (gNRPacketLoggingEnabled != 1)
  {
    goto LABEL_259;
  }

  v378 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
  v379 = v378;
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v380 = os_log_type_enabled(v378, OS_LOG_TYPE_INFO);

    if (!v380)
    {
      goto LABEL_259;
    }
  }

  v381 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
  _NRLogWithArgs(v381, 1, "%s%.30s:%-4d ", v382, v383, v384, v385, v386, "");

LABEL_259:
  v222 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v233 = v222;
    v234 = os_log_type_enabled(v222, OS_LOG_TYPE_FAULT);

    if (!v234)
    {
      goto LABEL_207;
    }
  }

  v235 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
  _NRLogWithArgs(v235, 17, "%s: Invalid write context for nexus priority: %u", v236, v237, v238, v239, v240, v14);

LABEL_207:
  v2 = *(v1 + 32);
LABEL_208:
  *(v2 + 17) = 0;
  v208 = *MEMORY[0x277D85DE8];
}

void __68__NRBluetoothPacketParser_setupNexusChannelForPriority_channelUUID___block_invoke_3(uint64_t a1)
{
  if (gNRPacketLoggingEnabled != 1)
  {
    goto LABEL_2;
  }

  v16 = a1;
  v17 = _NRCopyLogObjectForNRUUID(*(*(a1 + 32) + 48));
  if (sNRCopyLogToStdErr == 1)
  {

    a1 = v16;
  }

  else
  {
    v18 = v17;
    v19 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);

    a1 = v16;
    if (!v19)
    {
      goto LABEL_2;
    }
  }

  v20 = _NRCopyLogObjectForNRUUID(*(*(a1 + 32) + 48));
  StringForNRNexusChannelPriority = createStringForNRNexusChannelPriority(*(v16 + 40));
  _NRLogWithArgs(v20, 1, "%s%.30s:%-4d Nexus output available - %@", v21, v22, v23, v24, v25, "");

  a1 = v16;
LABEL_2:
  v1 = *(a1 + 40) & 0xFE;
  if (v1 == 100)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1 == 102;
  }

  v3 = *(a1 + 32);
  if (v2 == 2)
  {
    v4 = 112;
    goto LABEL_9;
  }

  if (v2 == 1)
  {
    v4 = 96;
LABEL_9:
    v5 = *(v3 + v4);
    if (v5)
    {
      v6 = *(v5 + 24);
      if (v6)
      {
        v7 = *(v5 + 32);

        v6(v7);
      }
    }

    return;
  }

  v8 = _NRCopyLogObjectForNRUUID(*(v3 + 48));
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v9 = v8;
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);

    if (!v10)
    {
      return;
    }
  }

  v27 = _NRCopyLogObjectForNRUUID(*(v3 + 48));
  _NRLogWithArgs(v27, 17, "Invalid priority %d", v11, v12, v13, v14, v15, v2);
}

- (NRBluetoothPacketParser)initWithDeviceIdentifier:(id)a3 queue:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v38.receiver = self;
  v38.super_class = NRBluetoothPacketParser;
  v9 = [(NRBluetoothPacketParser *)&v38 init];
  if (!v9)
  {
    v24 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v25 = v24;
      v26 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v26)
      {
        goto LABEL_11;
      }
    }

    v27 = nrCopyLogObj_560();
    _NRLogWithArgs(v27, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v28, v29, v30, v31, v32, "");

LABEL_11:
    v33 = _os_log_pack_size();
    MEMORY[0x28223BE20](v33, v34);
    v35 = *__error();
    v36 = _os_log_pack_fill();
    *v36 = 136446210;
    *(v36 + 4) = "[NRBluetoothPacketParser initWithDeviceIdentifier:queue:]";
    v37 = nrCopyLogObj_560();
    _NRLogAbortWithPack(v37);
  }

  v10 = v9;
  objc_storeStrong(&v9->_queue, a4);
  v10->_identifier = atomic_fetch_add_explicit(&initializeWithQueue__sNRParserID, 1uLL, memory_order_relaxed);
  v10->_uses6LoWPAN = 1;
  [(NRBluetoothPacketParser *)v10 changeStateTo:?];
  objc_storeStrong(&v10->_deviceIdentifier, a3);
  v11 = [(NRDeviceIdentifier *)v10->_deviceIdentifier nrDeviceIdentifier];
  nrUUID = v10->_nrUUID;
  v10->_nrUUID = v11;

  _NRAddEligibleNRUUIDForLogObject(v10->_nrUUID);
  v13 = _NRCopyLogObjectForNRUUID(v10->_nrUUID);
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_5:
    v16 = _NRCopyLogObjectForNRUUID(v10->_nrUUID);
    _NRLogWithArgs(v16, 0, "%s%.30s:%-4d Created (%p)", v17, v18, v19, v20, v21, "");

    goto LABEL_6;
  }

  v14 = v13;
  v15 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    goto LABEL_5;
  }

LABEL_6:

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

- (NRBluetoothPacketParser)initWithBluetoothUUID:(id)a3 queue:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v41.receiver = self;
  v41.super_class = NRBluetoothPacketParser;
  v9 = [(NRBluetoothPacketParser *)&v41 init];
  if (!v9)
  {
    v27 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v28 = v27;
      v29 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

      if (!v29)
      {
        goto LABEL_14;
      }
    }

    v30 = nrCopyLogObj_560();
    _NRLogWithArgs(v30, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v31, v32, v33, v34, v35, "");

LABEL_14:
    v36 = _os_log_pack_size();
    MEMORY[0x28223BE20](v36, v37);
    v38 = *__error();
    v39 = _os_log_pack_fill();
    *v39 = 136446210;
    *(v39 + 4) = "[NRBluetoothPacketParser initWithBluetoothUUID:queue:]";
    v40 = nrCopyLogObj_560();
    _NRLogAbortWithPack(v40);
  }

  v10 = v9;
  objc_storeStrong(&v9->_queue, a4);
  *(v10 + 56) = atomic_fetch_add_explicit(&initializeWithQueue__sNRParserID, 1uLL, memory_order_relaxed);
  *(v10 + 10) = 1;
  [(NRBluetoothPacketParser *)v10 changeStateTo:?];
  v11 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:v7];
  v12 = *(v10 + 40);
  *(v10 + 40) = v11;

  if (*(v10 + 40))
  {
    objc_storeStrong((v10 + 32), a3);
    v13 = [*(v10 + 40) nrDeviceIdentifier];
    v14 = *(v10 + 48);
    *(v10 + 48) = v13;

    _NRAddEligibleNRUUIDForLogObject(*(v10 + 48));
    v15 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v17 = v15;
      v18 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

      if (!v18)
      {
LABEL_8:
        v16 = v10;
        goto LABEL_9;
      }
    }

    v19 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    _NRLogWithArgs(v19, 0, "%s%.30s:%-4d Created (%p)", v20, v21, v22, v23, v24, "");

    goto LABEL_8;
  }

  v16 = 0;
LABEL_9:

  v25 = *MEMORY[0x277D85DE8];
  return v16;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = v3;
  if (self->_readContextForMedium)
  {
    [v3 appendFormat:@"%sr", "M"];
  }

  if (self->_writeContextForMedium)
  {
    [v4 appendFormat:@"%sw", "M"];
  }

  if (self->_readContextForHigh)
  {
    [v4 appendFormat:@"%sr", "H"];
  }

  if (self->_writeContextForHigh)
  {
    [v4 appendFormat:@"%sw", "H"];
  }

  if (self->_readContextForIsochronous)
  {
    [v4 appendFormat:@"%sr", "D"];
  }

  if (self->_writeContextForIsochronous)
  {
    [v4 appendFormat:@"%sw", "D"];
  }

  v5 = objc_alloc(MEMORY[0x277CCAB68]);
  identifier = self->_identifier;
  state = self->_state;
  if (state >= 5)
  {
    v9 = v5;
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%d)", state];
    v5 = v9;
  }

  else
  {
    v8 = off_27996AFB0[state];
  }

  v10 = [v5 initWithFormat:@"[%llu %@ %@]", identifier, v8, v4];

  return v10;
}

@end