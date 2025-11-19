void sub_100000C70()
{
  if (qword_10000C3B0 != -1)
  {
    sub_100004304();
  }
}

void sub_100000C9C(id a1)
{
  qword_10000C3C8 = os_log_create("com.apple.networkQuality", "netqual");

  _objc_release_x1();
}

id sub_100000CE0(void *a1)
{
  v1 = a1;
  [v1 floatValue];
  v3 = v2;
  if (v2 <= 1073700000.0)
  {
    if (v2 <= 1048600.0)
    {
      if (v2 <= 1024.0)
      {
        +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u B", [v1 intValue]);
      }

      else
      {
        [NSString stringWithFormat:@"%.3f KB", v3 * 0.0009765625];
      }
    }

    else
    {
      [NSString stringWithFormat:@"%.3f MB", v3 * 0.000000953674316];
    }
  }

  else
  {
    [NSString stringWithFormat:@"%.3f GB", v3 * 9.31322575e-10];
  }
  v4 = ;

  return v4;
}

void *sub_100000DF4(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v290 = a3;
  v289 = +[NSDate now];
  v7 = objc_alloc_init(NSMutableString);
  [v7 appendString:@"==== Verbose Results ====\n"];
  v8 = [v6 uplinkCapacity];
  v9 = [v8 value];
  if (v9)
  {
  }

  else
  {
    v10 = [v6 downlinkCapacity];
    v11 = [v10 value];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  [v7 appendString:@"---\nCapacity:\n---\n"];
  v12 = [v6 uplinkCapacity];
  v13 = [v12 value];

  if (v13)
  {
    v14 = [v6 uplinkCapacity];
    v15 = [v14 value];
    v16 = sub_100002910(v15);
    [v7 appendFormat:@"   Uplink capacity: %@\n", v16];

    v17 = [v6 uplinkCapacity];
    v18 = [v17 confidence];
    if ((v18 - 1) > 2)
    {
      v19 = "Unknown";
    }

    else
    {
      v19 = off_100008298[(v18 - 1)];
    }

    [v7 appendFormat:@"      Accuracy: %s\n", v19];
  }

  v20 = [v6 uplinkBytesTransferred];

  if (v20)
  {
    v21 = [v6 uplinkBytesTransferred];
    v22 = sub_100000CE0(v21);
    [v7 appendFormat:@"      Uplink bytes transferred: %@\n", v22];
  }

  v23 = [v6 uplinkFlows];

  if (v23)
  {
    v24 = [v6 uplinkFlows];
    [v7 appendFormat:@"      Uplink Flow count: %u\n", objc_msgSend(v24, "intValue")];
  }

  v25 = [v6 downlinkCapacity];
  v26 = [v25 value];

  if (v26)
  {
    v27 = [v6 downlinkCapacity];
    v28 = [v27 value];
    v29 = sub_100002910(v28);
    [v7 appendFormat:@"   Downlink capacity: %@\n", v29];

    v30 = [v6 downlinkCapacity];
    v31 = [v30 confidence];
    if ((v31 - 1) > 2)
    {
      v32 = "Unknown";
    }

    else
    {
      v32 = off_100008298[(v31 - 1)];
    }

    [v7 appendFormat:@"      Accuracy: %s\n", v32];
  }

  v33 = [v6 downlinkBytesTransferred];

  if (v33)
  {
    v34 = [v6 downlinkBytesTransferred];
    v35 = sub_100000CE0(v34);
    [v7 appendFormat:@"      Downlink bytes transferred: %@\n", v35];
  }

  v36 = [v6 downlinkFlows];

  if (v36)
  {
    v37 = [v6 downlinkFlows];
    [v7 appendFormat:@"      Downlink Flow count: %u\n", objc_msgSend(v37, "intValue")];
  }

LABEL_22:
  v38 = [v6 downlinkResponsiveness];
  v39 = [v38 value];
  v291 = v7;
  if (v39)
  {
LABEL_25:

    goto LABEL_26;
  }

  v39 = [v6 uplinkResponsiveness];
  v40 = [v39 value];
  if (v40)
  {

    goto LABEL_25;
  }

  v206 = [v6 latency];
  v41 = [v206 value];

  if (!v41)
  {
    goto LABEL_83;
  }

LABEL_26:
  v41 = v7;
  [v7 appendString:@"---\nLatency:\n---\n"];
  v42 = [v6 latency];
  v43 = [v42 value];

  if (v43)
  {
    v44 = [v6 latency];
    v45 = [v44 value];
    [v45 floatValue];
    v47 = (60000.0 / v46);

    [v291 appendString:@"   Idle Latency:\n"];
    v48 = [v6 latency];
    v49 = [v48 value];
    v50 = sub_1000029E8(v49);
    [v291 appendFormat:@"      %ld RPM (%@)\n", v47, v50];

    v51 = [v6 tcpLatency];

    if (v51)
    {
      v52 = [v6 tcpLatency];
      [v52 floatValue];
      v54 = (60000.0 / v53);

      v55 = [v6 tcpLatency];
      v56 = sub_1000029E8(v55);
      [v291 appendFormat:@"         Transport: %ld RPM (%@)\n", v54, v56];
    }

    v57 = [v6 tlsLatency];

    if (v57)
    {
      v58 = [v6 tlsLatency];
      [v58 floatValue];
      v60 = (60000.0 / v59);

      v61 = [v6 tlsLatency];
      v62 = sub_1000029E8(v61);
      [v291 appendFormat:@"         Security: %ld RPM (%@)\n", v60, v62];
    }

    v63 = [v6 httpLatency];

    if (v63)
    {
      v64 = [v6 httpLatency];
      [v64 floatValue];
      v66 = (60000.0 / v65);

      v67 = [v6 httpLatency];
      v68 = sub_1000029E8(v67);
      [v291 appendFormat:@"         HTTP: %ld RPM (%@)\n", v66, v68];
    }

    v69 = [v6 latency];
    v70 = [v69 confidence];
    if ((v70 - 1) > 2)
    {
      v71 = "Unknown";
    }

    else
    {
      v71 = off_100008298[(v70 - 1)];
    }

    [v291 appendFormat:@"      Accuracy: %s\n", v71];
  }

  if ([v290 parallel])
  {
    v72 = [v6 downlinkResponsiveness];
    v39 = [v72 value];

    if (!v39)
    {
      goto LABEL_83;
    }

    v73 = [v6 downlinkResponsiveness];
    v74 = [v73 value];
    v75 = [v74 longValue];

    v76 = [v6 downlinkResponsiveness];
    v77 = [v76 value];
    [v77 floatValue];
    v79 = 60000.0 / v78;

    v80 = [v6 downlinkResponsiveness];
    v81 = [v80 rating];
    v82 = [v81 longValue];
    v83 = "Low";
    if (v82 == 1)
    {
      v83 = "Medium";
    }

    if (v82 == 2)
    {
      v83 = "High";
    }

    v41 = v291;
    [v291 appendFormat:@"   Responsiveness: %s\n", v83];

    v85 = &NSExtensionMain_ptr;
    goto LABEL_67;
  }

  v86 = [v6 uplinkResponsiveness];
  v87 = [v86 value];

  v41 = "Low";
  v85 = &NSExtensionMain_ptr;
  if (v87)
  {
    v88 = [v6 uplinkResponsiveness];
    v89 = [v88 value];
    v90 = [v89 longValue];

    v91 = [v6 uplinkResponsiveness];
    v92 = [v91 value];
    [v92 floatValue];
    v94 = 60000.0 / v93;

    v95 = [v6 uplinkResponsiveness];
    v96 = [v95 rating];
    v97 = [v96 longValue];
    v98 = "Medium";
    if (v97 != 1)
    {
      v98 = "Low";
    }

    if (v97 == 2)
    {
      v98 = "High";
    }

    [v291 appendFormat:@"   Uplink Responsiveness: %s\n", v98];

    *&v99 = v94;
    v100 = [NSNumber numberWithFloat:v99];
    v101 = sub_1000029E8(v100);
    [v291 appendFormat:@"      %ld RPM (%@)\n", v90, v101];

    v102 = [v6 uplinkTCPResponsiveness];

    if (v102)
    {
      v103 = [v6 uplinkTCPResponsiveness];
      v104 = [v103 longValue];

      v105 = [v6 uplinkTCPResponsiveness];
      [v105 floatValue];
      v107 = 60000.0 / v106;

      *&v108 = v107;
      v109 = [NSNumber numberWithFloat:v108];
      v110 = sub_1000029E8(v109);
      [v291 appendFormat:@"         Transport: %ld RPM (%@)\n", v104, v110];
    }

    v111 = [v6 uplinkTLSResponsiveness];

    if (v111)
    {
      v112 = [v6 uplinkTLSResponsiveness];
      v113 = [v112 longValue];

      v114 = [v6 uplinkTLSResponsiveness];
      [v114 floatValue];
      v116 = 60000.0 / v115;

      *&v117 = v116;
      v118 = [NSNumber numberWithFloat:v117];
      v119 = sub_1000029E8(v118);
      [v291 appendFormat:@"         Security: %ld RPM (%@)\n", v113, v119];
    }

    v120 = [v6 uplinkHTTPForeignResponsiveness];

    v41 = "Low";
    if (v120)
    {
      v121 = [v6 uplinkHTTPForeignResponsiveness];
      v122 = [v121 longValue];

      v123 = [v6 uplinkHTTPForeignResponsiveness];
      [v123 floatValue];
      v125 = 60000.0 / v124;

      *&v126 = v125;
      v127 = [NSNumber numberWithFloat:v126];
      v128 = sub_1000029E8(v127);
      [v291 appendFormat:@"         HTTP: %ld RPM (%@)\n", v122, v128];
    }

    v129 = [v6 uplinkHTTPSelfResponsiveness];

    if (v129)
    {
      v130 = [v6 uplinkHTTPSelfResponsiveness];
      v131 = [v130 longValue];

      v132 = [v6 uplinkHTTPSelfResponsiveness];
      [v132 floatValue];
      v134 = 60000.0 / v133;

      *&v135 = v134;
      v136 = [NSNumber numberWithFloat:v135];
      v137 = sub_1000029E8(v136);
      [v291 appendFormat:@"         HTTP loaded: %ld RPM (%@)\n", v131, v137];
    }

    v138 = [v6 uplinkResponsiveness];
    v139 = [v138 confidence];
    if ((v139 - 1) > 2)
    {
      v140 = "Unknown";
    }

    else
    {
      v140 = off_100008298[(v139 - 1)];
    }

    [v291 appendFormat:@"      Accuracy: %s\n", v140];
  }

  v141 = [v6 downlinkResponsiveness];
  v39 = [v141 value];

  if (v39)
  {
    v142 = [v6 downlinkResponsiveness];
    v143 = [v142 value];
    v75 = [v143 longValue];

    v144 = [v6 downlinkResponsiveness];
    v145 = [v144 value];
    [v145 floatValue];
    v79 = 60000.0 / v146;

    v147 = [v6 downlinkResponsiveness];
    v148 = [v147 rating];
    v149 = [v148 longValue];
    v150 = "Medium";
    if (v149 != 1)
    {
      v150 = "Low";
    }

    if (v149 == 2)
    {
      v150 = "High";
    }

    v41 = v291;
    [v291 appendFormat:@"   Downlink Responsiveness: %s\n", v150];

LABEL_67:
    *&v84 = v79;
    v39 = [v85[60] numberWithFloat:v84];
    v151 = sub_1000029E8(v39);
    [v41 appendFormat:@"      %ld RPM (%@)\n", v75, v151];

    v152 = [v6 downlinkTCPResponsiveness];

    if (v152)
    {
      v153 = [v6 downlinkTCPResponsiveness];
      v39 = [v153 longValue];

      v154 = [v6 downlinkTCPResponsiveness];
      [v154 floatValue];
      v156 = 60000.0 / v155;

      *&v157 = v156;
      v158 = [v85[60] numberWithFloat:v157];
      v159 = sub_1000029E8(v158);
      [v41 appendFormat:@"         Transport: %ld RPM (%@)\n", v39, v159];
    }

    v160 = [v6 downlinkTLSResponsiveness];

    if (v160)
    {
      v161 = [v6 downlinkTLSResponsiveness];
      v39 = [v161 longValue];

      v162 = [v6 downlinkTLSResponsiveness];
      [v162 floatValue];
      v164 = 60000.0 / v163;

      *&v165 = v164;
      v166 = [v85[60] numberWithFloat:v165];
      v167 = sub_1000029E8(v166);
      [v41 appendFormat:@"         Security: %ld RPM (%@)\n", v39, v167];
    }

    v168 = [v6 downlinkHTTPForeignResponsiveness];

    if (v168)
    {
      v169 = [v6 downlinkHTTPForeignResponsiveness];
      v39 = [v169 longValue];

      v170 = [v6 downlinkHTTPForeignResponsiveness];
      [v170 floatValue];
      v172 = 60000.0 / v171;

      *&v173 = v172;
      v174 = [v85[60] numberWithFloat:v173];
      v175 = sub_1000029E8(v174);
      [v41 appendFormat:@"         HTTP: %ld RPM (%@)\n", v39, v175];
    }

    v176 = [v6 downlinkHTTPSelfResponsiveness];

    if (v176)
    {
      v177 = [v6 downlinkHTTPSelfResponsiveness];
      v39 = [v177 longValue];

      v178 = [v6 downlinkHTTPSelfResponsiveness];
      [v178 floatValue];
      v180 = 60000.0 / v179;

      *&v181 = v180;
      v182 = [v85[60] numberWithFloat:v181];
      v183 = sub_1000029E8(v182);
      [v41 appendFormat:@"         HTTP loaded: %ld RPM (%@)\n", v39, v183];
    }

    v184 = [v6 downlinkResponsiveness];
    v185 = [v184 confidence];
    if (v185 == 1)
    {
      v186 = "Low";
    }

    else if (v185 == 3)
    {
      v186 = "High";
    }

    else if (v185 == 2)
    {
      v186 = "Medium";
    }

    else
    {
      v186 = "Unknown";
    }

    [v41 appendFormat:@"      Accuracy: %s\n", v186];
  }

LABEL_83:
  v187 = [v6 otherValues];
  v188 = [v187 objectForKeyedSubscript:@"proxy_state"];
  v292 = v6;
  if (v188)
  {
    v41 = [v6 otherValues];
    v39 = [v41 objectForKeyedSubscript:@"proxy_state"];
    if ([v39 count])
    {

      goto LABEL_90;
    }
  }

  v189 = [v6 protocolNames];
  if (v189)
  {
    v190 = [v6 protocolNames];
    v191 = [v190 count];

    if (v188)
    {
    }

    if (v191)
    {
LABEL_90:
      v192 = [v6 otherValues];
      v193 = [v192 objectForKeyedSubscript:@"proxy_state"];

      if (!v193)
      {
        goto LABEL_111;
      }

      v317 = 0u;
      v318 = 0u;
      v315 = 0u;
      v316 = 0u;
      v194 = v193;
      v195 = [v194 countByEnumeratingWithState:&v315 objects:v324 count:16];
      if (v195)
      {
        v196 = v195;
        v197 = 0;
        v198 = *v316;
        do
        {
          for (i = 0; i != v196; i = i + 1)
          {
            if (*v316 != v198)
            {
              objc_enumerationMutation(v194);
            }

            v200 = [v194 objectForKeyedSubscript:*(*(&v315 + 1) + 8 * i)];
            v197 += [v200 intValue];
          }

          v196 = [v194 countByEnumeratingWithState:&v315 objects:v324 count:16];
        }

        while (v196);

        if (v197 < 1)
        {
LABEL_111:
          v207 = [v6 protocolNames];

          if (v207)
          {
            v313 = 0u;
            v314 = 0u;
            v311 = 0u;
            v312 = 0u;
            v208 = [v6 protocolNames];
            v209 = [v208 countByEnumeratingWithState:&v311 objects:v323 count:16];
            if (v209)
            {
              v210 = v209;
              v211 = 0;
              v212 = *v312;
              do
              {
                for (j = 0; j != v210; j = j + 1)
                {
                  if (*v312 != v212)
                  {
                    objc_enumerationMutation(v208);
                  }

                  v214 = *(*(&v311 + 1) + 8 * j);
                  v215 = [v6 protocolNames];
                  v216 = [v215 objectForKeyedSubscript:v214];
                  v211 += [v216 intValue];
                }

                v210 = [v208 countByEnumeratingWithState:&v311 objects:v323 count:16];
              }

              while (v210);

              if (v211 < 1)
              {
                goto LABEL_133;
              }

              v287 = v5;
              [v291 appendString:@"---\nProtocols Used:\n---\n"];
              v208 = objc_alloc_init(NSMutableArray);
              v307 = 0u;
              v308 = 0u;
              v309 = 0u;
              v310 = 0u;
              obj = [v6 protocolNames];
              v217 = [obj countByEnumeratingWithState:&v307 objects:v322 count:16];
              if (v217)
              {
                v218 = v217;
                v219 = *v308;
                v220 = v211;
                do
                {
                  for (k = 0; k != v218; k = k + 1)
                  {
                    if (*v308 != v219)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v222 = *(*(&v307 + 1) + 8 * k);
                    v223 = @"HTTP/2";
                    if (([v222 isEqualToString:@"h2"] & 1) == 0)
                    {
                      v223 = @"HTTP/3";
                      if (([v222 isEqualToString:@"h3"] & 1) == 0)
                      {
                        v223 = @"HTTP/1.1";
                        if (([v222 isEqualToString:@"http/1.1"] & 1) == 0)
                        {
                          v223 = v222;
                        }
                      }
                    }

                    v224 = [v292 protocolNames];
                    v225 = [v224 objectForKeyedSubscript:v222];
                    [v225 floatValue];
                    v227 = [NSString stringWithFormat:@"%@: %.0f%%", v223, ((v226 / v220) * 100.0)];
                    [v208 addObject:v227];
                  }

                  v218 = [obj countByEnumeratingWithState:&v307 objects:v322 count:16];
                }

                while (v218);
              }

              v228 = [v208 componentsJoinedByString:{@", "}];
              [v291 appendFormat:@"    %@\n", v228];

              v5 = v287;
              v6 = v292;
            }
          }

LABEL_133:

          goto LABEL_134;
        }

        v201 = [v194 objectForKeyedSubscript:@"proxied"];
        if (v201)
        {
          v202 = v201;
          [v201 floatValue];
          if (v203 <= 0.0)
          {
            v194 = v202;
          }

          else
          {
            [v291 appendString:@"---\nProtocol info:\n---\n"];
            [v202 floatValue];
            [v291 appendFormat:@"    Connections Proxied: %0.f%%\n", ((v204 / v197) * 100.0)];
            v194 = [v194 objectForKeyedSubscript:@"not_proxied"];

            if (v194)
            {
              [v194 floatValue];
              [v291 appendFormat:@"    Connections Not Proxied: %0.f%%\n", ((v205 / v197) * 100.0)];
            }
          }
        }

        else
        {
          v194 = 0;
        }
      }

      goto LABEL_111;
    }
  }

  else
  {

    if (v188)
    {
    }
  }

LABEL_134:
  v229 = [v6 otherValues];
  v230 = [v229 objectForKeyedSubscript:@"ecn_values"];

  v231 = v291;
  if (!v230)
  {
    goto LABEL_162;
  }

  v305 = 0u;
  v306 = 0u;
  v303 = 0u;
  v304 = 0u;
  v232 = v230;
  v233 = [v232 countByEnumeratingWithState:&v303 objects:v321 count:16];
  if (!v233)
  {
    v263 = v232;
LABEL_161:

    goto LABEL_162;
  }

  v234 = v233;
  v235 = 0;
  v236 = *v304;
  do
  {
    for (m = 0; m != v234; m = m + 1)
    {
      if (*v304 != v236)
      {
        objc_enumerationMutation(v232);
      }

      v238 = [v232 objectForKeyedSubscript:*(*(&v303 + 1) + 8 * m)];
      v235 += [v238 intValue];
    }

    v234 = [v232 countByEnumeratingWithState:&v303 objects:v321 count:16];
  }

  while (v234);

  if (v235 >= 1)
  {
    v286 = v230;
    v288 = v5;
    [v291 appendString:@"---\nTransport-layer info:\n---\n"];
    obja = objc_alloc_init(NSMutableArray);
    v299 = 0u;
    v300 = 0u;
    v301 = 0u;
    v302 = 0u;
    v239 = v232;
    v240 = [v239 countByEnumeratingWithState:&v299 objects:v320 count:16];
    if (v240)
    {
      v241 = v240;
      v242 = *v300;
      do
      {
        for (n = 0; n != v241; n = n + 1)
        {
          if (*v300 != v242)
          {
            objc_enumerationMutation(v239);
          }

          v244 = *(*(&v299 + 1) + 8 * n);
          v245 = [v244 stringByReplacingOccurrencesOfString:@"_" withString:@" "];
          v246 = [v245 capitalizedString];
          v247 = [v246 stringByReplacingOccurrencesOfString:@"Ecn" withString:@"ECN"];

          v248 = [v239 objectForKeyedSubscript:v244];
          [v248 floatValue];
          v250 = [NSString stringWithFormat:@"%@: %0.f%%", v247, ((v249 / v235) * 100.0)];
          [obja addObject:v250];
        }

        v241 = [v239 countByEnumeratingWithState:&v299 objects:v320 count:16];
      }

      while (v241);
    }

    v251 = [v292 otherValues];
    v252 = [v251 objectForKeyedSubscript:@"l4s_enablement"];

    v297 = 0u;
    v298 = 0u;
    v295 = 0u;
    v296 = 0u;
    v253 = v252;
    v254 = [v253 countByEnumeratingWithState:&v295 objects:v319 count:16];
    if (v254)
    {
      v255 = v254;
      v256 = *v296;
      do
      {
        for (ii = 0; ii != v255; ii = ii + 1)
        {
          if (*v296 != v256)
          {
            objc_enumerationMutation(v253);
          }

          v258 = *(*(&v295 + 1) + 8 * ii);
          v259 = [v258 localizedCapitalizedString];
          v260 = [v253 objectForKeyedSubscript:v258];
          [v260 floatValue];
          v262 = [NSString stringWithFormat:@"L4S %@: %0.f%%", v259, ((v261 / v235) * 100.0)];
          [obja addObject:v262];
        }

        v255 = [v253 countByEnumeratingWithState:&v295 objects:v319 count:16];
      }

      while (v255);
    }

    v263 = obja;
    v231 = v291;
    if ([obja count])
    {
      v264 = [obja componentsJoinedByString:{@", "}];
      [v291 appendFormat:@"    %@\n", v264];
    }

    v230 = v286;
    v5 = v288;
    goto LABEL_161;
  }

LABEL_162:
  [v231 appendString:@"---\nOther Info:\n---\n"];
  v265 = [v292 testEndpoint];

  if (v265)
  {
    v266 = [v292 testEndpoint];
    [v231 appendFormat:@"   Test Endpoint: %@\n", v266];
  }

  if (qword_10000C3C0 != -1)
  {
    sub_100004318();
  }

  if (dword_10000C3B8)
  {
    v267 = [v292 asn];
    if (v267)
    {
      v268 = v267;
      v269 = [v292 asnName];

      if (v269)
      {
        v270 = [v292 asn];
        v271 = [v292 asnName];
        [v231 appendFormat:@"   Client ASN: %@ (%@)\n", v270, v271];
      }
    }
  }

  v272 = [v292 interfaceName];

  if (v272)
  {
    v273 = [v292 interfaceName];
    [v231 appendFormat:@"   Interface: %@\n", v273];
  }

  v274 = [v292 latencyMeasurementServiceType];

  if (v274)
  {
    v275 = [v292 latencyMeasurementServiceType];
    [v231 appendFormat:@"   Network Service Type (latency): %@\n", v275];
  }

  v276 = [v292 loadGeneratingNetworkServiceType];

  if (v276)
  {
    v277 = [v292 loadGeneratingNetworkServiceType];
    [v231 appendFormat:@"   Network Service Type (load): %@\n", v277];
  }

  v278 = +[NSTimeZone localTimeZone];
  v279 = [NSISO8601DateFormatter stringFromDate:v5 timeZone:v278 formatOptions:2995];
  [v231 appendFormat:@"   Start: %@\n", v279];

  v280 = +[NSTimeZone localTimeZone];
  v281 = [NSISO8601DateFormatter stringFromDate:v289 timeZone:v280 formatOptions:2995];
  [v231 appendFormat:@"   End: %@\n", v281];

  [v289 timeIntervalSinceDate:v5];
  [v231 appendFormat:@"   Duration: %.2fs\n", v282];
  v283 = [v292 osVersion];
  [v231 appendFormat:@"   OS Version: %@\n", v283];

  [v231 appendString:@"\n"];
  v284 = v231;

  return v231;
}

id sub_100002910(void *a1)
{
  [a1 floatValue];
  v2 = v1;
  if (v1 >= 1024.0)
  {
    if (v1 >= 1048600.0)
    {
      if (v1 >= 1073700000.0)
      {
        [NSString stringWithFormat:@"%.3f Gbps", v2 * 9.31322575e-10];
      }

      else
      {
        [NSString stringWithFormat:@"%.3f Mbps", v2 * 0.000000953674316];
      }
    }

    else
    {
      [NSString stringWithFormat:@"%.3f Kbps", v2 * 0.0009765625];
    }
  }

  else
  {
    [NSString stringWithFormat:@"%.3f bps", v1];
  }
  v3 = ;

  return v3;
}

id sub_1000029E8(void *a1)
{
  [a1 floatValue];
  if (v1 <= 1000.0)
  {
    [NSString stringWithFormat:@"%.3f milliseconds", v1];
  }

  else
  {
    [NSString stringWithFormat:@"%.3f seconds", v1 / 1000.0];
  }
  v2 = ;

  return v2;
}

id sub_100002A6C(void *a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = objc_alloc_init(NSMutableString);
  if (a4)
  {
    v13 = sub_100000DF4(v9, v10, v11);
    [v12 appendString:v13];
  }

  if (a5)
  {
    v29 = v11;
    v30 = v9;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [v10 urlSessionMetrics];
    v14 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v36 + 1) + 8 * i);
          [v12 appendFormat:@"Key: %@\n", v18];
          v19 = [v10 urlSessionMetrics];
          v20 = [v19 objectForKey:v18];

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v21 = v20;
          v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v33;
            do
            {
              for (j = 0; j != v23; j = j + 1)
              {
                if (*v33 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = [*(*(&v32 + 1) + 8 * j) description];
                [v12 appendString:v26];
              }

              v23 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v23);
          }
        }

        v15 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v15);
    }

    v11 = v29;
    v9 = v30;
  }

  v27 = sub_100002CFC(v10, v11);
  [v12 appendString:v27];

  return v12;
}

id sub_100002CFC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(NSMutableString);
  [v5 appendString:@"==== SUMMARY ====\n"];
  v6 = [v3 uplinkCapacity];
  v7 = [v6 value];

  if (v7)
  {
    v8 = [v3 uplinkCapacity];
    v9 = [v8 value];
    v10 = sub_100002910(v9);
    [v5 appendFormat:@"Uplink capacity: %@\n", v10];
  }

  v11 = [v3 downlinkCapacity];
  v12 = [v11 value];

  if (v12)
  {
    v13 = [v3 downlinkCapacity];
    v14 = [v13 value];
    v15 = sub_100002910(v14);
    [v5 appendFormat:@"Downlink capacity: %@\n", v15];
  }

  if ([v4 parallel])
  {
    v16 = [v3 downlinkResponsiveness];
    v17 = [v16 value];

    if (!v17)
    {
      goto LABEL_23;
    }

    v58 = v4;
    v18 = @"Responsiveness: %s (%@ | %ld RPM)\n";
    goto LABEL_17;
  }

  v19 = [v3 uplinkResponsiveness];
  v20 = [v19 value];

  if (v20)
  {
    v21 = [v3 uplinkResponsiveness];
    v22 = [v21 value];
    [v22 floatValue];
    *&v24 = 60000.0 / v23;
    v25 = [NSNumber numberWithFloat:v24];

    v26 = [v3 uplinkResponsiveness];
    v27 = [v26 rating];
    v28 = [v27 longValue];
    v29 = "Low";
    if (v28 == 1)
    {
      v29 = "Medium";
    }

    if (v28 == 2)
    {
      v30 = "High";
    }

    else
    {
      v30 = v29;
    }

    v31 = sub_1000029E8(v25);
    v32 = [v3 uplinkResponsiveness];
    v33 = [v32 value];
    [v5 appendFormat:@"Uplink Responsiveness: %s (%@ | %ld RPM)\n", v30, v31, objc_msgSend(v33, "longValue")];
  }

  v34 = [v3 downlinkResponsiveness];
  v35 = [v34 value];

  if (v35)
  {
    v58 = v4;
    v18 = @"Downlink Responsiveness: %s (%@ | %ld RPM)\n";
LABEL_17:
    v36 = [v3 downlinkResponsiveness];
    v37 = [v36 value];
    [v37 floatValue];
    *&v39 = 60000.0 / v38;
    v40 = [NSNumber numberWithFloat:v39];

    v41 = [v3 downlinkResponsiveness];
    v42 = [v41 rating];
    v43 = [v42 longValue];
    v44 = "Low";
    if (v43 == 1)
    {
      v44 = "Medium";
    }

    if (v43 == 2)
    {
      v45 = "High";
    }

    else
    {
      v45 = v44;
    }

    v46 = sub_1000029E8(v40);
    v47 = [v3 downlinkResponsiveness];
    v48 = [v47 value];
    [v5 appendFormat:v18, v45, v46, objc_msgSend(v48, "longValue")];

    v4 = v58;
  }

LABEL_23:
  v49 = [v3 latency];
  v50 = [v49 value];

  if (v50)
  {
    v51 = [v3 latency];
    v52 = [v51 value];

    [v52 floatValue];
    *&v54 = 60000.0 / v53;
    v55 = [NSNumber numberWithFloat:v54];
    v56 = sub_1000029E8(v52);
    [v5 appendFormat:@"Idle Latency: %@ | %ld RPM\n", v56, objc_msgSend(v55, "longValue")];
  }

  return v5;
}

id sub_1000031A0(void *a1, void *a2, void *a3)
{
  v83 = a1;
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v8 = [v5 workingLatencyValues];
  v9 = [v8 countByEnumeratingWithState:&v89 objects:v94 count:16];
  if (v9)
  {
    v10 = *v90;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v90 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v89 + 1) + 8 * i);
        v13 = [v5 workingLatencyValues];
        v14 = [v13 valueForKey:v12];
        [v7 setObject:v14 forKeyedSubscript:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v89 objects:v94 count:16];
    }

    while (v9);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v15 = [v5 idleLatencyValues];
  v16 = [v15 countByEnumeratingWithState:&v85 objects:v93 count:16];
  if (v16)
  {
    v17 = *v86;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v86 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v85 + 1) + 8 * j);
        v20 = [v5 idleLatencyValues];
        v21 = [v20 valueForKey:v19];
        [v7 setObject:v21 forKeyedSubscript:v19];
      }

      v16 = [v15 countByEnumeratingWithState:&v85 objects:v93 count:16];
    }

    while (v16);
  }

  v22 = [v5 interfaceName];
  [v7 setObject:v22 forKeyedSubscript:@"interface_name"];

  v23 = [v5 otherValues];
  v24 = [v23 count] == 0;

  if (!v24)
  {
    v25 = [v5 otherValues];
    [v7 setObject:v25 forKeyedSubscript:@"other"];
  }

  if ([v6 parallel])
  {
    v26 = [v5 downlinkResponsiveness];
    v27 = [v26 value];
    [v7 setObject:v27 forKeyedSubscript:@"responsiveness"];

    v28 = [v5 uplinkBytesTransferred];
    [v7 setObject:v28 forKeyedSubscript:@"ul_bytes_transferred"];

    v29 = [v5 downlinkBytesTransferred];
    [v7 setObject:v29 forKeyedSubscript:@"dl_bytes_transferred"];

    v30 = [v5 uplinkCapacity];
    v31 = [v30 value];
    [v7 setObject:v31 forKeyedSubscript:@"ul_throughput"];

    v32 = [v5 downlinkCapacity];
    v33 = [v32 value];
    [v7 setObject:v33 forKeyedSubscript:@"dl_throughput"];

    v34 = [v5 uplinkFlows];
    [v7 setObject:v34 forKeyedSubscript:@"ul_flows"];

    v35 = [v5 downlinkFlows];
    [v7 setObject:v35 forKeyedSubscript:@"dl_flows"];
LABEL_23:

    goto LABEL_24;
  }

  if ([v6 download])
  {
    v36 = [v5 downlinkResponsiveness];
    v37 = [v36 value];
    [v7 setObject:v37 forKeyedSubscript:@"dl_responsiveness"];

    v38 = [v5 downlinkBytesTransferred];
    [v7 setObject:v38 forKeyedSubscript:@"dl_bytes_transferred"];

    v39 = [v5 downlinkCapacity];
    v40 = [v39 value];
    [v7 setObject:v40 forKeyedSubscript:@"dl_throughput"];

    v41 = [v5 downlinkFlows];
    [v7 setObject:v41 forKeyedSubscript:@"dl_flows"];
  }

  if ([v6 upload])
  {
    v42 = [v5 uplinkResponsiveness];
    v43 = [v42 value];
    [v7 setObject:v43 forKeyedSubscript:@"ul_responsiveness"];

    v44 = [v5 uplinkBytesTransferred];
    [v7 setObject:v44 forKeyedSubscript:@"ul_bytes_transferred"];

    v45 = [v5 uplinkCapacity];
    v46 = [v45 value];
    [v7 setObject:v46 forKeyedSubscript:@"ul_throughput"];

    v35 = [v5 uplinkFlows];
    [v7 setObject:v35 forKeyedSubscript:@"ul_flows"];
    goto LABEL_23;
  }

LABEL_24:
  v47 = [v5 latency];
  v48 = [v47 value];
  v49 = v48 == 0;

  if (!v49)
  {
    v50 = [v5 latency];
    v51 = [v50 value];
    [v7 setObject:v51 forKeyedSubscript:@"base_rtt"];
  }

  v52 = +[NSTimeZone localTimeZone];
  v53 = [NSISO8601DateFormatter stringFromDate:v83 timeZone:v52 formatOptions:2995];
  [v7 setObject:v53 forKeyedSubscript:@"start_date"];

  v54 = +[NSDate now];
  v55 = +[NSTimeZone localTimeZone];
  v56 = [NSISO8601DateFormatter stringFromDate:v54 timeZone:v55 formatOptions:2995];
  [v7 setObject:v56 forKeyedSubscript:@"end_date"];

  v57 = [v5 osVersion];
  [v7 setObject:v57 forKeyedSubscript:@"os_version"];

  v58 = [v5 error];
  v59 = v58 == 0;

  if (!v59)
  {
    v60 = [v5 error];
    v61 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v60 code]);
    [v7 setValue:v61 forKey:@"error_code"];

    v62 = [v5 error];
    v63 = [v62 domain];
    [v7 setValue:v63 forKey:@"error_domain"];

    v64 = [v5 error];
    v65 = [v64 userInfo];
    v66 = v65 == 0;

    if (!v66)
    {
      v67 = [v5 error];
      v68 = [v67 userInfo];
      v69 = [v68 objectForKeyedSubscript:@"statusCode"];

      if (v69)
      {
        [v7 setValue:v69 forKey:@"status_code"];
      }

      v70 = [v5 error];
      v71 = [v70 userInfo];
      v72 = [v71 objectForKeyedSubscript:@"detail"];

      if (v72)
      {
        [v7 setValue:v72 forKey:@"error_detail"];
      }
    }
  }

  v73 = [v5 testEndpoint];
  [v7 setObject:v73 forKeyedSubscript:@"test_endpoint"];

  v74 = [v5 latencyMeasurementServiceType];
  [v7 setObject:v74 forKeyedSubscript:@"latency_traffic_class"];

  v75 = [v5 loadGeneratingNetworkServiceType];
  [v7 setObject:v75 forKeyedSubscript:@"load_generatingy_traffic_class"];

  v84 = 0;
  v76 = [NSJSONSerialization dataWithJSONObject:v7 options:11 error:&v84];
  v77 = v84;
  if (v77)
  {
    v78 = v77;
    v79 = [v77 localizedDescription];
    v80 = v79;
    printf("could not serialize to JSON: %s", [v79 UTF8String]);

    v81 = 0;
  }

  else
  {
    v81 = [[NSString alloc] initWithData:v76 encoding:4];
  }

  return v81;
}

void sub_10000408C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000040CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000040E4(uint64_t a1)
{
  v2 = [[NetworkQualityAssessment alloc] initWithConfiguration:*(a1 + 32)];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000041AC;
  v5[3] = &unk_1000082E0;
  v6 = *(a1 + 40);
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  [v2 runWithCompletionHandler:v5];
}

void sub_1000041AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004270;
  v8[3] = &unk_1000082B8;
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  [v4 addOperationWithBlock:v8];
}

intptr_t sub_100004270(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

void sub_1000042E4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

void sub_100004340()
{
  v2 = 136315906;
  sub_1000042D4();
  sub_1000042B8();
  sub_1000042E4(&_mh_execute_header, v0, v1, "%s:%u - Error writing to %@: %@", v2);
}

void sub_1000043BC()
{
  v2 = 136315906;
  sub_1000042D4();
  sub_1000042B8();
  sub_1000042E4(&_mh_execute_header, v0, v1, "%s:%u - Error writing to %@: %@", v2);
}

void sub_100004438()
{
  v1[0] = 136315394;
  sub_1000042D4();
  *(&v1[3] + 2) = 29;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s:%u - Could not find DEExtensionProvider class", v1, 0x12u);
}