@interface CLSInspector
- (CLSInspector)init;
- (id)informantClassesForAnyIdentifier:(id)identifier;
- (id)profileIdentifierForHash:(unint64_t)hash;
- (void)invalidateSharedPersistentCachesWithServiceManager:(id)manager locationCache:(id)cache;
- (void)performInvestigation:(id)investigation options:(unint64_t)options progressBlock:(id)block;
@end

@implementation CLSInspector

- (void)invalidateSharedPersistentCachesWithServiceManager:(id)manager locationCache:(id)cache
{
  obj = self;
  objc_sync_enter(obj);
  objc_sync_exit(obj);
}

- (void)performInvestigation:(id)investigation options:(unint64_t)options progressBlock:(id)block
{
  optionsCopy = options;
  v225 = *MEMORY[0x277D85DE8];
  investigationCopy = investigation;
  blockCopy = block;
  v141 = _Block_copy(blockCopy);
  v205 = 0;
  v206 = &v205;
  v207 = 0x2020000000;
  v208 = 0;
  v127 = objc_opt_new();
  v135 = objc_opt_new();
  v137 = objc_opt_new();
  v134 = objc_opt_new();
  v6 = objc_opt_new();
  v133 = objc_opt_new();
  v130 = objc_opt_new();
  v204 = 0u;
  v203 = 0u;
  v202 = 0u;
  v201 = 0u;
  profiles = [investigationCopy profiles];
  v8 = [profiles countByEnumeratingWithState:&v201 objects:v224 count:16];
  obj = profiles;
  if (v8)
  {
    v120 = *v202;
    do
    {
      v121 = 0;
      v118 = v8;
      do
      {
        if (*v202 != v120)
        {
          objc_enumerationMutation(obj);
        }

        v124 = *(*(&v201 + 1) + 8 * v121);
        [v133 addObject:?];
        identifier = [objc_opt_class() identifier];
        [v130 setObject:v124 forKey:identifier];

        v200 = 0u;
        v199 = 0u;
        v198 = 0u;
        v197 = 0u;
        profileDependenciesIdentifiers = [objc_opt_class() profileDependenciesIdentifiers];
        v11 = [profileDependenciesIdentifiers countByEnumeratingWithState:&v197 objects:v223 count:16];
        if (!v11)
        {
          goto LABEL_29;
        }

        v131 = *v198;
        v136 = profileDependenciesIdentifiers;
        while (2)
        {
          v12 = 0;
          v128 = v11;
          do
          {
            if (*v198 != v131)
            {
              objc_enumerationMutation(profileDependenciesIdentifiers);
            }

            v13 = *(*(&v197 + 1) + 8 * v12);
            v193 = 0u;
            v194 = 0u;
            v195 = 0u;
            v196 = 0u;
            profiles2 = [investigationCopy profiles];
            v15 = [profiles2 countByEnumeratingWithState:&v193 objects:v222 count:16];
            v138 = v12;
            if (v15)
            {
              v16 = 0;
              v17 = *v194;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v194 != v17)
                  {
                    objc_enumerationMutation(profiles2);
                  }

                  identifier2 = [objc_opt_class() identifier];
                  v20 = [identifier2 isEqualToString:v13];

                  if (v20)
                  {
                    [v6 addObject:objc_opt_class()];
                    v16 = 1;
                  }
                }

                v15 = [profiles2 countByEnumeratingWithState:&v193 objects:v222 count:16];
              }

              while (v15);

              if (v16)
              {
                goto LABEL_27;
              }
            }

            else
            {
            }

            v21 = [(CLSInspector *)self profileClassForIdentifier:v13];
            if (!v21 || ![(objc_class *)v21 isSubclassOfClass:objc_opt_class()])
            {
              v64 = +[CLSLogging sharedLogging];
              loggingConnection = [v64 loggingConnection];

              if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
              {
                uuid = [investigationCopy uuid];
                *buf = 138412546;
                v219 = uuid;
                v220 = 2112;
                v221 = v13;
                _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "Investigation %@ cannot be performed: Profile dependency %@ cannot be found or is incompatible", buf, 0x16u);
              }

              goto LABEL_106;
            }

            [v6 addObject:v21];
            v22 = objc_alloc_init(v21);
            if (!v22)
            {
              v71 = +[CLSLogging sharedLogging];
              loggingConnection = [v71 loggingConnection];

              if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
              {
                uuid2 = [investigationCopy uuid];
                *buf = 138412546;
                v219 = uuid2;
                v220 = 2112;
                v221 = v21;
                _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "Investigation %@ cannot be performed: Profile %@ cannot be instantiated", buf, 0x16u);
              }

              goto LABEL_106;
            }

            [v133 addObject:v22];
            identifier3 = [objc_opt_class() identifier];
            [v130 setObject:v22 forKey:identifier3];

LABEL_27:
            v12 = v138 + 1;
            profileDependenciesIdentifiers = v136;
          }

          while (v138 + 1 != v128);
          v11 = [v136 countByEnumeratingWithState:&v197 objects:v223 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }

LABEL_29:

        v191 = 0u;
        v192 = 0u;
        v189 = 0u;
        v190 = 0u;
        informantDependenciesIdentifiers = [objc_opt_class() informantDependenciesIdentifiers];
        v25 = [informantDependenciesIdentifiers countByEnumeratingWithState:&v189 objects:v217 count:16];
        if (v25)
        {
          v26 = *v190;
          v136 = informantDependenciesIdentifiers;
LABEL_31:
          v27 = 0;
          while (1)
          {
            if (*v190 != v26)
            {
              objc_enumerationMutation(informantDependenciesIdentifiers);
            }

            v28 = *(*(&v189 + 1) + 8 * v27);
            v29 = [(CLSInspector *)self informantClassesForAnyIdentifier:v28];
            v187 = 0u;
            v188 = 0u;
            v185 = 0u;
            v186 = 0u;
            loggingConnection = v29;
            v31 = [loggingConnection countByEnumeratingWithState:&v185 objects:v216 count:16];
            if (!v31)
            {
              break;
            }

            v32 = *v186;
            while (2)
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v186 != v32)
                {
                  objc_enumerationMutation(loggingConnection);
                }

                v34 = *(*(&v185 + 1) + 8 * j);
                if (!v34 || ![v34 isSubclassOfClass:objc_opt_class()])
                {
                  v68 = +[CLSLogging sharedLogging];
                  loggingConnection2 = [v68 loggingConnection];

                  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
                  {
                    uuid3 = [investigationCopy uuid];
                    *buf = 138412546;
                    v219 = uuid3;
                    v220 = 2112;
                    v221 = v28;
                    _os_log_error_impl(&dword_22F907000, loggingConnection2, OS_LOG_TYPE_ERROR, "Investigation %@ cannot be performed: Informant %@ cannot be found or is incompatible", buf, 0x16u);
                  }

                  loggingConnection3 = loggingConnection;
                  goto LABEL_99;
                }

                [v127 addObject:v34];
              }

              v31 = [loggingConnection countByEnumeratingWithState:&v185 objects:v216 count:16];
              if (v31)
              {
                continue;
              }

              break;
            }

            ++v27;
            informantDependenciesIdentifiers = v136;
            if (v27 == v25)
            {
              v25 = [v136 countByEnumeratingWithState:&v189 objects:v217 count:16];
              if (v25)
              {
                goto LABEL_31;
              }

              goto LABEL_45;
            }
          }

          v113 = +[CLSLogging sharedLogging];
          loggingConnection3 = [v113 loggingConnection];

          if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
          {
            uuid4 = [investigationCopy uuid];
            *buf = 138412546;
            v219 = uuid4;
            v220 = 2112;
            v221 = v28;
            _os_log_error_impl(&dword_22F907000, loggingConnection3, OS_LOG_TYPE_ERROR, "Investigation %@ cannot be performed: Informant %@ cannot be found or is incompatible", buf, 0x16u);
          }

LABEL_99:

LABEL_106:
          goto LABEL_107;
        }

LABEL_45:

        v35 = [v127 copy];
        v36 = 0;
        while ([v35 count])
        {
          loggingConnection = objc_opt_new();

          v183 = 0u;
          v184 = 0u;
          v181 = 0u;
          v182 = 0u;
          v136 = v35;
          v37 = [v136 countByEnumeratingWithState:&v181 objects:v215 count:16];
          if (v37)
          {
            v38 = *v182;
            while (2)
            {
              for (k = 0; k != v37; ++k)
              {
                if (*v182 != v38)
                {
                  objc_enumerationMutation(v136);
                }

                v40 = *(*(&v181 + 1) + 8 * k);
                v177 = 0u;
                v178 = 0u;
                v179 = 0u;
                v180 = 0u;
                informantDependenciesIdentifiers2 = [v40 informantDependenciesIdentifiers];
                v42 = [informantDependenciesIdentifiers2 countByEnumeratingWithState:&v177 objects:v214 count:16];
                v139 = informantDependenciesIdentifiers2;
                if (v42)
                {
                  v43 = *v178;
LABEL_54:
                  v44 = 0;
                  while (1)
                  {
                    if (*v178 != v43)
                    {
                      objc_enumerationMutation(v139);
                    }

                    v129 = v44;
                    v132 = *(*(&v177 + 1) + 8 * v44);
                    v45 = [(CLSInspector *)self informantClassesForAnyIdentifier:?];
                    v175 = 0u;
                    v176 = 0u;
                    v173 = 0u;
                    v174 = 0u;
                    v46 = v45;
                    v47 = [v46 countByEnumeratingWithState:&v173 objects:v213 count:16];
                    if (!v47)
                    {
                      break;
                    }

                    v117 = v43;
                    v125 = v38;
                    v48 = *v174;
                    while (2)
                    {
                      for (m = 0; m != v47; ++m)
                      {
                        if (*v174 != v48)
                        {
                          objc_enumerationMutation(v46);
                        }

                        v50 = *(*(&v173 + 1) + 8 * m);
                        if (!v50 || ![v50 isSubclassOfClass:objc_opt_class()])
                        {
                          v73 = +[CLSLogging sharedLogging];
                          loggingConnection4 = [v73 loggingConnection];

                          if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
                          {
                            uuid5 = [investigationCopy uuid];
                            *buf = 138412546;
                            v219 = uuid5;
                            v220 = 2112;
                            v221 = v132;
                            _os_log_error_impl(&dword_22F907000, loggingConnection4, OS_LOG_TYPE_ERROR, "Investigation %@ cannot be performed: Informant %@ cannot be found or is incompatible", buf, 0x16u);
                          }

                          loggingConnection5 = v46;
                          goto LABEL_105;
                        }

                        [v127 addObject:v50];
                        [loggingConnection addObject:v50];
                      }

                      v47 = [v46 countByEnumeratingWithState:&v173 objects:v213 count:16];
                      if (v47)
                      {
                        continue;
                      }

                      break;
                    }

                    v38 = v125;
                    v44 = v129 + 1;
                    v43 = v117;
                    if (v129 + 1 == v42)
                    {
                      v42 = [v139 countByEnumeratingWithState:&v177 objects:v214 count:16];
                      v38 = v125;
                      v43 = v117;
                      if (v42)
                      {
                        goto LABEL_54;
                      }

                      goto LABEL_68;
                    }
                  }

                  v115 = +[CLSLogging sharedLogging];
                  loggingConnection5 = [v115 loggingConnection];

                  if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_ERROR))
                  {
                    uuid6 = [investigationCopy uuid];
                    *buf = 138412546;
                    v219 = uuid6;
                    v220 = 2112;
                    v221 = v132;
                    _os_log_error_impl(&dword_22F907000, loggingConnection5, OS_LOG_TYPE_ERROR, "Investigation %@ cannot be performed: Informant %@ cannot be found or is incompatible", buf, 0x16u);
                  }

LABEL_105:

                  goto LABEL_106;
                }

LABEL_68:
              }

              v37 = [v136 countByEnumeratingWithState:&v181 objects:v215 count:16];
              if (v37)
              {
                continue;
              }

              break;
            }
          }

          v35 = [loggingConnection copy];
          v36 = loggingConnection;
        }

        ++v121;
      }

      while (v121 != v118);
      v8 = [obj countByEnumeratingWithState:&v201 objects:v224 count:16];
    }

    while (v8);
  }

  if (v141)
  {
    v172 = 0;
    v141[2](v141, &v172, 0.1);
    v51 = *(v206 + 24) | v172;
    *(v206 + 24) = v51;
    if (v51)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_107;
      }

      *buf = 67109120;
      LODWORD(v219) = 307;
      v52 = MEMORY[0x277D86220];
LABEL_132:
      _os_log_impl(&dword_22F907000, v52, OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
      goto LABEL_107;
    }
  }

  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v53 = v127;
  v54 = [v53 countByEnumeratingWithState:&v168 objects:v212 count:16];
  if (v54)
  {
    v55 = *v169;
    while (2)
    {
      for (n = 0; n != v54; ++n)
      {
        if (*v169 != v55)
        {
          objc_enumerationMutation(v53);
        }

        v57 = *(*(&v168 + 1) + 8 * n);
        v58 = objc_opt_new();
        if (!v58)
        {
          v66 = +[CLSLogging sharedLogging];
          loggingConnection6 = [v66 loggingConnection];

          if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_ERROR))
          {
            uuid7 = [investigationCopy uuid];
            *buf = 138412546;
            v219 = uuid7;
            v220 = 2112;
            v221 = v57;
            _os_log_error_impl(&dword_22F907000, loggingConnection6, OS_LOG_TYPE_ERROR, "Investigation %@ cannot be performed: Informant %@ cannot be instantiated", buf, 0x16u);
          }

          goto LABEL_107;
        }

        [v135 addObject:v58];
        identifier4 = [objc_opt_class() identifier];
        [v137 setObject:v58 forKey:identifier4];

        familyIdentifier = [objc_opt_class() familyIdentifier];
        v61 = [v134 objectForKey:familyIdentifier];

        if (!v61)
        {
          v61 = objc_opt_new();
          familyIdentifier2 = [objc_opt_class() familyIdentifier];
          [v137 setObject:v61 forKey:familyIdentifier2];
        }

        [v61 addObject:v58];
      }

      v54 = [v53 countByEnumeratingWithState:&v168 objects:v212 count:16];
      if (v54)
      {
        continue;
      }

      break;
    }
  }

  if (v141)
  {
    v172 = 0;
    v141[2](v141, &v172, 0.2);
    v63 = *(v206 + 24) | v172;
    *(v206 + 24) = v63;
    if (v63)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_107;
      }

      *buf = 67109120;
      LODWORD(v219) = 333;
      v52 = MEMORY[0x277D86220];
      goto LABEL_132;
    }
  }

  [investigationCopy _willBeginInvestigation:self];
  if (optionsCopy)
  {
    feeder = [investigationCopy feeder];
    v77 = feeder == 0;

    if (v77)
    {
      clueCollection = [investigationCopy clueCollection];
      v83 = v167;
      v167[0] = MEMORY[0x277D85DD0];
      v167[1] = 3221225472;
      v167[2] = __59__CLSInspector_performInvestigation_options_progressBlock___block_invoke;
      v167[3] = &unk_2788A8AA8;
      v167[4] = v141;
      v167[5] = &v205;
      [clueCollection prepareWithProgressBlock:v167];
    }

    else
    {
      feeder2 = [investigationCopy feeder];
      helper = [investigationCopy helper];
      serviceManager = [helper serviceManager];
      helper2 = [investigationCopy helper];
      locationCache = [helper2 locationCache];
      v83 = v164;
      v164[0] = MEMORY[0x277D85DD0];
      v164[1] = 3221225472;
      v164[2] = __59__CLSInspector_performInvestigation_options_progressBlock___block_invoke_2;
      v164[3] = &unk_2788A8AA8;
      v84 = v141;
      v165 = v84;
      v166 = &v205;
      clueCollection = [feeder2 prepareWithServiceManager:serviceManager locationCache:locationCache progressBlock:v164];

      if (*(v206 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v219) = 352;
          _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
        }

        goto LABEL_107;
      }

      clueCollection2 = [investigationCopy clueCollection];
      inputClues = [clueCollection inputClues];
      [clueCollection2 mergeClues:inputClues];

      clueCollection3 = [investigationCopy clueCollection];
      outputClues = [clueCollection outputClues];
      [clueCollection3 mergeClues:outputClues];

      clueCollection4 = [investigationCopy clueCollection];
      meaningClues = [clueCollection meaningClues];
      [clueCollection4 mergeClues:meaningClues];

      clueCollection5 = [investigationCopy clueCollection];
      v161[0] = MEMORY[0x277D85DD0];
      v161[1] = 3221225472;
      v161[2] = __59__CLSInspector_performInvestigation_options_progressBlock___block_invoke_66;
      v161[3] = &unk_2788A8AA8;
      v162 = v84;
      v163 = &v205;
      [clueCollection5 prepareWithProgressBlock:v161];
    }

    if (*(v206 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_107;
      }

      *buf = 67109120;
      LODWORD(v219) = 362;
      v52 = MEMORY[0x277D86220];
      goto LABEL_132;
    }
  }

  if ((optionsCopy & 2) != 0)
  {
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v140 = v135;
    v98 = [v140 countByEnumeratingWithState:&v157 objects:v211 count:16];
    if (v98)
    {
      v99 = *v158;
      while (2)
      {
        for (ii = 0; ii != v98; ++ii)
        {
          if (*v158 != v99)
          {
            objc_enumerationMutation(v140);
          }

          v101 = *(*(&v157 + 1) + 8 * ii);
          v154[0] = MEMORY[0x277D85DD0];
          v154[1] = 3221225472;
          v154[2] = __59__CLSInspector_performInvestigation_options_progressBlock___block_invoke_67;
          v154[3] = &unk_2788A8AA8;
          v155 = v141;
          v156 = &v205;
          v102 = [v101 gatherCluesForInvestigation:investigationCopy progressBlock:v154];
          v103 = v102;
          if (*(v206 + 24) == 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              LODWORD(v219) = 374;
              _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
            }

            goto LABEL_107;
          }

          v152 = 0u;
          v153 = 0u;
          v150 = 0u;
          v151 = 0u;
          v104 = v102;
          v105 = [v104 countByEnumeratingWithState:&v150 objects:v210 count:16];
          if (v105)
          {
            v106 = *v151;
            do
            {
              for (jj = 0; jj != v105; ++jj)
              {
                if (*v151 != v106)
                {
                  objc_enumerationMutation(v104);
                }

                [*(*(&v150 + 1) + 8 * jj) setInformant:v101];
              }

              v105 = [v104 countByEnumeratingWithState:&v150 objects:v210 count:16];
            }

            while (v105);
          }

          clueCollection6 = [investigationCopy clueCollection];
          [clueCollection6 mergeClues:v104];
        }

        v98 = [v140 countByEnumeratingWithState:&v157 objects:v211 count:16];
        if (v98)
        {
          continue;
        }

        break;
      }
    }

    if (v141)
    {
      v172 = 0;
      v141[2](v141, &v172, 0.6);
      v109 = *(v206 + 24) | v172;
      *(v206 + 24) = v109;
      if (v109)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_107;
        }

        *buf = 67109120;
        LODWORD(v219) = 384;
        v52 = MEMORY[0x277D86220];
        goto LABEL_132;
      }
    }
  }

  if ((optionsCopy & 4) != 0)
  {
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v93 = v133;
    v94 = [v93 countByEnumeratingWithState:&v146 objects:v209 count:16];
    if (v94)
    {
      v95 = *v147;
      do
      {
        for (kk = 0; kk != v94; ++kk)
        {
          if (*v147 != v95)
          {
            objc_enumerationMutation(v93);
          }

          v97 = *(*(&v146 + 1) + 8 * kk);
          v143[0] = MEMORY[0x277D85DD0];
          v143[1] = 3221225472;
          v143[2] = __59__CLSInspector_performInvestigation_options_progressBlock___block_invoke_68;
          v143[3] = &unk_2788A8AA8;
          v144 = v141;
          v145 = &v205;
          [v97 processResultsSynchronouslyForInvestigation:investigationCopy withProgressBlock:v143];
        }

        v94 = [v93 countByEnumeratingWithState:&v146 objects:v209 count:16];
      }

      while (v94);
    }
  }

  if (*(v206 + 24) != 1)
  {
    [investigationCopy _didEndInvestigation:1];
    goto LABEL_107;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v219) = 398;
    v52 = MEMORY[0x277D86220];
    goto LABEL_132;
  }

LABEL_107:

  _Block_object_dispose(&v205, 8);
}

uint64_t __59__CLSInspector_performInvestigation_options_progressBlock___block_invoke(uint64_t a1, _BYTE *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v5 = 0;
    result = (*(result + 16))(result, &v5, 0.3);
    *(*(*(a1 + 40) + 8) + 24) |= v5;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

uint64_t __59__CLSInspector_performInvestigation_options_progressBlock___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v5 = 0;
    result = (*(result + 16))(result, &v5, 0.3);
    *(*(*(a1 + 40) + 8) + 24) |= v5;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

uint64_t __59__CLSInspector_performInvestigation_options_progressBlock___block_invoke_66(uint64_t a1, _BYTE *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v5 = 0;
    result = (*(result + 16))(result, &v5, 0.3);
    *(*(*(a1 + 40) + 8) + 24) |= v5;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

uint64_t __59__CLSInspector_performInvestigation_options_progressBlock___block_invoke_67(uint64_t a1, _BYTE *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v5 = 0;
    result = (*(result + 16))(result, &v5, 0.6);
    *(*(*(a1 + 40) + 8) + 24) |= v5;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

uint64_t __59__CLSInspector_performInvestigation_options_progressBlock___block_invoke_68(uint64_t a1, _BYTE *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v5 = 0;
    result = (*(result + 16))(result, &v5, 0.8);
    *(*(*(a1 + 40) + 8) + 24) |= v5;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

- (id)profileIdentifierForHash:(unint64_t)hash
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_profileClasses;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) valueForKey:{@"identifier", v13}];
        if ([v10 hash] == hash)
        {
          v11 = v10;

          v7 = v11;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)informantClassesForAnyIdentifier:(id)identifier
{
  v9[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(CLSInspector *)self informantClassForIdentifier:identifierCopy];
  if (v5)
  {
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = [(CLSInspector *)self informantClassesForFamilyIdentifier:identifierCopy];
  }

  v7 = v6;

  return v7;
}

- (CLSInspector)init
{
  v47 = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = CLSInspector;
  v2 = [(CLSInspector *)&v43 init];
  v3 = v2;
  if (v2)
  {
    profileClasses = v2->_profileClasses;
    v2->_profileClasses = MEMORY[0x277CBEBF8];

    v5 = objc_opt_new();
    profileClassesByIdentifier = v3->_profileClassesByIdentifier;
    v3->_profileClassesByIdentifier = v5;

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v7 = v3->_profileClasses;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v40;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v39 + 1) + 8 * i);
          v13 = v3->_profileClassesByIdentifier;
          identifier = [v12 identifier];
          [(NSMutableDictionary *)v13 setObject:v12 forKey:identifier];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v9);
    }

    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v45[2] = objc_opt_class();
    v45[3] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
    informantClasses = v3->_informantClasses;
    v3->_informantClasses = v15;

    v17 = objc_opt_new();
    informantClassesByIdentifier = v3->_informantClassesByIdentifier;
    v3->_informantClassesByIdentifier = v17;

    v19 = objc_opt_new();
    informantClassesByFamilyIdentifier = v3->_informantClassesByFamilyIdentifier;
    v3->_informantClassesByFamilyIdentifier = v19;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v21 = v3->_informantClasses;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v36;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v35 + 1) + 8 * j);
          v27 = v3->_informantClassesByIdentifier;
          identifier2 = [v26 identifier];
          [(NSMutableDictionary *)v27 setObject:v26 forKey:identifier2];

          v29 = v3->_informantClassesByFamilyIdentifier;
          familyIdentifier = [v26 familyIdentifier];
          v31 = [(NSMutableDictionary *)v29 objectForKey:familyIdentifier];

          if (!v31)
          {
            v31 = objc_opt_new();
            v32 = v3->_informantClassesByFamilyIdentifier;
            familyIdentifier2 = [v26 familyIdentifier];
            [(NSMutableDictionary *)v32 setObject:v31 forKey:familyIdentifier2];
          }

          [v31 addObject:v26];
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v23);
    }
  }

  return v3;
}

@end