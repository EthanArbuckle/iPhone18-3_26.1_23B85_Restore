size_t CAMetricsHandlers_handle_getprop_macretry(void *a1, void *a2)
{
  object = a1;
  v200 = a2;
  v3 = +[NSMutableArray array];
  v202 = +[NSMutableArray array];
  if (xpc_get_type(object) == &_xpc_type_array)
  {
    count = xpc_array_get_count(object);
    v8 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = count;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CAMetrics : MACRetryHistogram array with size %ld.", &buf, 0xCu);
    }

    if (!count)
    {
      v5 = 0;
      v197 = 0;
      v198 = 0;
      v194 = 0;
      v195 = 0;
      v192 = 0;
      v193 = 0;
      v190 = 0;
      v191 = 0;
      v189 = 0;
      HIDWORD(v188) = 0;
      v199 = 0;
      v196 = 0;
      v6 = 0;
      goto LABEL_335;
    }

    v188 = 0;
    v189 = 0;
    v197 = 0;
    v198 = 0;
    v194 = 0;
    v195 = 0;
    v192 = 0;
    v193 = 0;
    v190 = 0;
    v191 = 0;
    v199 = 0;
    v196 = 0;
    v9 = 0;
    v6 = 0;
    while (1)
    {
      v10 = xpc_array_get_dictionary(object, v9);

      v6 = v10;
      string = xpc_dictionary_get_string(v10, "key");
      v12 = strlen(string);
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      v204 = v12;
      if (v12)
      {
        memmove(&buf, string, v12);
      }

      *(&buf + v13) = 0;
      uint64 = xpc_dictionary_get_uint64(v6, "value");
      v15 = uint64;
      if ((v204 & 0x80000000) == 0)
      {
        break;
      }

      if (*(&buf + 1) != 14)
      {
        goto LABEL_145;
      }

      if (*buf == 0x6552746365726944 && *(buf + 6) == 0x5D305B7972746552)
      {
LABEL_90:
        v32 = uint64;
        if (uint64)
        {
          v33 = log10(uint64) + 1.0;
          v34 = v33 - 4;
          if (v33 <= 4)
          {
            v34 = 0;
          }

          v35 = v34;
        }

        else
        {
          v35 = 0.0;
        }

        v44 = __exp10(v35);
        LODWORD(v188) = (v44 * (v32 / v44));
        goto LABEL_207;
      }

      if (*buf == 0x6552746365726944 && *(buf + 6) == 0x5D315B7972746552)
      {
LABEL_94:
        v36 = uint64;
        if (uint64)
        {
          v37 = log10(uint64) + 1.0;
          v38 = v37 - 4;
          if (v37 <= 4)
          {
            v38 = 0;
          }

          v39 = v38;
        }

        else
        {
          v39 = 0.0;
        }

        v49 = __exp10(v39);
        LODWORD(v198) = (v49 * (v36 / v49));
        goto LABEL_207;
      }

      if (*buf == 0x6552746365726944 && *(buf + 6) == 0x5D325B7972746552)
      {
LABEL_98:
        v40 = uint64;
        if (uint64)
        {
          v41 = log10(uint64) + 1.0;
          v42 = v41 - 4;
          if (v41 <= 4)
          {
            v42 = 0;
          }

          v43 = v42;
        }

        else
        {
          v43 = 0.0;
        }

        v54 = __exp10(v43);
        LODWORD(v197) = (v54 * (v40 / v54));
        goto LABEL_207;
      }

      if (*buf == 0x6552746365726944 && *(buf + 6) == 0x5D335B7972746552)
      {
LABEL_104:
        v45 = uint64;
        if (uint64)
        {
          v46 = log10(uint64) + 1.0;
          v47 = v46 - 4;
          if (v46 <= 4)
          {
            v47 = 0;
          }

          v48 = v47;
        }

        else
        {
          v48 = 0.0;
        }

        v59 = __exp10(v48);
        HIDWORD(v195) = (v59 * (v45 / v59));
        goto LABEL_207;
      }

      if (*buf == 0x6552746365726944 && *(buf + 6) == 0x5D345B7972746552)
      {
LABEL_110:
        v50 = uint64;
        if (uint64)
        {
          v51 = log10(uint64) + 1.0;
          v52 = v51 - 4;
          if (v51 <= 4)
          {
            v52 = 0;
          }

          v53 = v52;
        }

        else
        {
          v53 = 0.0;
        }

        v60 = __exp10(v53);
        LODWORD(v194) = (v60 * (v50 / v60));
        goto LABEL_207;
      }

      if (*buf == 0x6552746365726944 && *(buf + 6) == 0x5D355B7972746552)
      {
LABEL_116:
        v55 = uint64;
        if (uint64)
        {
          v56 = log10(uint64) + 1.0;
          v57 = v56 - 4;
          if (v56 <= 4)
          {
            v57 = 0;
          }

          v58 = v57;
        }

        else
        {
          v58 = 0.0;
        }

        v61 = __exp10(v58);
        LODWORD(v193) = (v61 * (v55 / v61));
        goto LABEL_207;
      }

      if (*buf == 0x6552746365726944 && *(buf + 6) == 0x5D365B7972746552)
      {
LABEL_126:
        v62 = uint64;
        if (uint64)
        {
          v63 = log10(uint64) + 1.0;
          v64 = v63 - 4;
          if (v63 <= 4)
          {
            v64 = 0;
          }

          v65 = v64;
        }

        else
        {
          v65 = 0.0;
        }

        v100 = __exp10(v65);
        LODWORD(v191) = (v100 * (v62 / v100));
        goto LABEL_207;
      }

      if ((v204 & 0x80) == 0)
      {
        if (v204 != 14)
        {
          goto LABEL_145;
        }

LABEL_80:
        if (buf == 0x6552746365726944 && *(&buf + 6) == 0x5D375B7972746552)
        {
          goto LABEL_187;
        }

        if (buf == 0x6552746365726944 && *(&buf + 6) == 0x5D385B7972746552)
        {
          goto LABEL_195;
        }

        goto LABEL_140;
      }

      if (*buf == 0x6552746365726944 && *(buf + 6) == 0x5D375B7972746552)
      {
LABEL_187:
        v96 = uint64;
        if (uint64)
        {
          v97 = log10(uint64) + 1.0;
          v98 = v97 - 4;
          if (v97 <= 4)
          {
            v98 = 0;
          }

          v99 = v98;
        }

        else
        {
          v99 = 0.0;
        }

        v101 = __exp10(v99);
        LODWORD(v190) = (v101 * (v96 / v101));
        goto LABEL_207;
      }

      p_buf = buf;
      if (*buf == 0x6552746365726944 && *(buf + 6) == 0x5D385B7972746552)
      {
LABEL_195:
        v102 = uint64;
        if (uint64)
        {
          v103 = log10(uint64) + 1.0;
          v104 = v103 - 4;
          if (v103 <= 4)
          {
            v104 = 0;
          }

          v105 = v104;
        }

        else
        {
          v105 = 0.0;
        }

        v110 = __exp10(v105);
        LODWORD(v189) = (v110 * (v102 / v110));
        goto LABEL_207;
      }

      if (v204 < 0)
      {
        goto LABEL_141;
      }

      if (v204 != 14)
      {
        goto LABEL_145;
      }

LABEL_140:
      p_buf = &buf;
LABEL_141:
      v69 = *p_buf;
      v70 = *(p_buf + 6);
      if (v69 != 0x6552746365726944 || v70 != 0x5D395B7972746552)
      {
LABEL_145:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "DirectRetry[10]"))
        {
          if (v15)
          {
            v72 = log10(v15) + 1.0;
            v73 = v72 - 4;
            if (v72 <= 4)
            {
              v73 = 0;
            }

            v74 = v73;
          }

          else
          {
            v74 = 0.0;
          }

          v81 = __exp10(v74);
          HIDWORD(v199) = (v81 * (v15 / v81));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "DirectRetry[11]"))
        {
          if (v15)
          {
            v75 = log10(v15) + 1.0;
            v76 = v75 - 4;
            if (v75 <= 4)
            {
              v76 = 0;
            }

            v77 = v76;
          }

          else
          {
            v77 = 0.0;
          }

          v85 = __exp10(v77);
          HIDWORD(v198) = (v85 * (v15 / v85));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "DirectRetry[12]"))
        {
          if (v15)
          {
            v78 = log10(v15) + 1.0;
            v79 = v78 - 4;
            if (v78 <= 4)
            {
              v79 = 0;
            }

            v80 = v79;
          }

          else
          {
            v80 = 0.0;
          }

          v89 = __exp10(v80);
          LODWORD(v196) = (v89 * (v15 / v89));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "DirectRetry[13]"))
        {
          if (v15)
          {
            v82 = log10(v15) + 1.0;
            v83 = v82 - 4;
            if (v82 <= 4)
            {
              v83 = 0;
            }

            v84 = v83;
          }

          else
          {
            v84 = 0.0;
          }

          v93 = __exp10(v84);
          HIDWORD(v194) = (v93 * (v15 / v93));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "DirectRetry[14]"))
        {
          if (v15)
          {
            v86 = log10(v15) + 1.0;
            v87 = v86 - 4;
            if (v86 <= 4)
            {
              v87 = 0;
            }

            v88 = v87;
          }

          else
          {
            v88 = 0.0;
          }

          v94 = __exp10(v88);
          LODWORD(v192) = (v94 * (v15 / v94));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "DirectRetry[15]"))
        {
          if (v15)
          {
            v90 = log10(v15) + 1.0;
            v91 = v90 - 4;
            if (v90 <= 4)
            {
              v91 = 0;
            }

            v92 = v91;
          }

          else
          {
            v92 = 0.0;
          }

          v95 = __exp10(v92);
          HIDWORD(v191) = (v95 * (v15 / v95));
        }

        goto LABEL_207;
      }

      v106 = uint64;
      if (uint64)
      {
        v107 = log10(uint64) + 1.0;
        v108 = v107 - 4;
        if (v107 <= 4)
        {
          v108 = 0;
        }

        v109 = v108;
      }

      else
      {
        v109 = 0.0;
      }

      v111 = __exp10(v109);
      HIDWORD(v188) = (v111 * (v106 / v111));
LABEL_207:
      v112 = v204;
      if ((v204 & 0x80000000) == 0)
      {
        if (v204 != 16)
        {
          goto LABEL_10;
        }

        if (buf == 0x7463657269446E49 && *(&buf + 1) == 0x5D305B7972746552)
        {
LABEL_280:
          if (v15)
          {
            v134 = log10(v15) + 1.0;
            v135 = v134 - 4;
            if (v134 <= 4)
            {
              v135 = 0;
            }

            v136 = v135;
          }

          else
          {
            v136 = 0.0;
          }

          v143 = __exp10(v136);
          LODWORD(v199) = (v143 * (v15 / v143));
          if ((v112 & 0x80) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        if (buf == 0x7463657269446E49 && *(&buf + 1) == 0x5D315B7972746552)
        {
          goto LABEL_284;
        }

        if (buf == 0x7463657269446E49 && *(&buf + 1) == 0x5D325B7972746552)
        {
          goto LABEL_288;
        }

        if (buf == 0x7463657269446E49 && *(&buf + 1) == 0x5D335B7972746552)
        {
          goto LABEL_295;
        }

        if (buf == 0x7463657269446E49 && *(&buf + 1) == 0x5D345B7972746552)
        {
          goto LABEL_302;
        }

        if (buf == 0x7463657269446E49 && *(&buf + 1) == 0x5D355B7972746552)
        {
          goto LABEL_309;
        }

        if (buf == 0x7463657269446E49 && *(&buf + 1) == 0x5D365B7972746552)
        {
          goto LABEL_322;
        }

        goto LABEL_270;
      }

      if (*(&buf + 1) != 16)
      {
        goto LABEL_9;
      }

      if (*buf == 0x7463657269446E49 && *(buf + 8) == 0x5D305B7972746552)
      {
        goto LABEL_280;
      }

      if (*buf == 0x7463657269446E49 && *(buf + 8) == 0x5D315B7972746552)
      {
LABEL_284:
        if (v15)
        {
          v137 = log10(v15) + 1.0;
          v138 = v137 - 4;
          if (v137 <= 4)
          {
            v138 = 0;
          }

          v139 = v138;
        }

        else
        {
          v139 = 0.0;
        }

        v147 = __exp10(v139);
        HIDWORD(v197) = (v147 * (v15 / v147));
        if ((v112 & 0x80) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if (*buf == 0x7463657269446E49 && *(buf + 8) == 0x5D325B7972746552)
      {
LABEL_288:
        if (v15)
        {
          v140 = log10(v15) + 1.0;
          v141 = v140 - 4;
          if (v140 <= 4)
          {
            v141 = 0;
          }

          v142 = v141;
        }

        else
        {
          v142 = 0.0;
        }

        v151 = __exp10(v142);
        HIDWORD(v196) = (v151 * (v15 / v151));
        if ((v112 & 0x80) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if (*buf == 0x7463657269446E49 && *(buf + 8) == 0x5D335B7972746552)
      {
LABEL_295:
        if (v15)
        {
          v144 = log10(v15) + 1.0;
          v145 = v144 - 4;
          if (v144 <= 4)
          {
            v145 = 0;
          }

          v146 = v145;
        }

        else
        {
          v146 = 0.0;
        }

        v155 = __exp10(v146);
        LODWORD(v195) = (v155 * (v15 / v155));
        if ((v112 & 0x80) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if (*buf == 0x7463657269446E49 && *(buf + 8) == 0x5D345B7972746552)
      {
LABEL_302:
        if (v15)
        {
          v148 = log10(v15) + 1.0;
          v149 = v148 - 4;
          if (v148 <= 4)
          {
            v149 = 0;
          }

          v150 = v149;
        }

        else
        {
          v150 = 0.0;
        }

        v156 = __exp10(v150);
        HIDWORD(v193) = (v156 * (v15 / v156));
        if ((v112 & 0x80) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if (*buf == 0x7463657269446E49 && *(buf + 8) == 0x5D355B7972746552)
      {
LABEL_309:
        if (v15)
        {
          v152 = log10(v15) + 1.0;
          v153 = v152 - 4;
          if (v152 <= 4)
          {
            v153 = 0;
          }

          v154 = v153;
        }

        else
        {
          v154 = 0.0;
        }

        v157 = __exp10(v154);
        HIDWORD(v192) = (v157 * (v15 / v157));
        if ((v112 & 0x80) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v126 = buf;
      if (*buf == 0x7463657269446E49 && *(buf + 8) == 0x5D365B7972746552)
      {
LABEL_322:
        if (v15)
        {
          v158 = log10(v15) + 1.0;
          v159 = v158 - 4;
          if (v158 <= 4)
          {
            v159 = 0;
          }

          v160 = v159;
        }

        else
        {
          v160 = 0.0;
        }

        v161 = __exp10(v160);
        HIDWORD(v190) = (v161 * (v15 / v161));
LABEL_328:
        if ((v112 & 0x80) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if ((v204 & 0x80) == 0)
      {
        if (v204 != 16)
        {
          goto LABEL_10;
        }

LABEL_270:
        v126 = &buf;
      }

      v129 = *v126;
      v128 = v126[1];
      if (v129 != 0x7463657269446E49 || v128 != 0x5D375B7972746552)
      {
        goto LABEL_328;
      }

      if (v15)
      {
        v131 = log10(v15) + 1.0;
        v132 = v131 - 4;
        if (v131 <= 4)
        {
          v132 = 0;
        }

        v133 = v132;
      }

      else
      {
        v133 = 0.0;
      }

      v162 = __exp10(v133);
      HIDWORD(v189) = (v162 * (v15 / v162));
      if ((v112 & 0x80) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      operator delete(buf);
LABEL_10:
      if (count == ++v9)
      {
        count = 0;
        v5 = v188;
        goto LABEL_335;
      }
    }

    if (v204 != 14)
    {
      goto LABEL_145;
    }

    if (buf == 0x6552746365726944 && *(&buf + 6) == 0x5D305B7972746552)
    {
      goto LABEL_90;
    }

    if (buf == 0x6552746365726944 && *(&buf + 6) == 0x5D315B7972746552)
    {
      goto LABEL_94;
    }

    if (buf == 0x6552746365726944 && *(&buf + 6) == 0x5D325B7972746552)
    {
      goto LABEL_98;
    }

    if (buf == 0x6552746365726944 && *(&buf + 6) == 0x5D335B7972746552)
    {
      goto LABEL_104;
    }

    if (buf == 0x6552746365726944 && *(&buf + 6) == 0x5D345B7972746552)
    {
      goto LABEL_110;
    }

    if (buf == 0x6552746365726944 && *(&buf + 6) == 0x5D355B7972746552)
    {
      goto LABEL_116;
    }

    if (buf == 0x6552746365726944 && *(&buf + 6) == 0x5D365B7972746552)
    {
      goto LABEL_126;
    }

    goto LABEL_80;
  }

  v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    CAMetricsHandlers_handle_getprop_macretry();
  }

  v5 = 0;
  v197 = 0;
  v198 = 0;
  v194 = 0;
  v195 = 0;
  v192 = 0;
  v193 = 0;
  v190 = 0;
  v191 = 0;
  v189 = 0;
  HIDWORD(v188) = 0;
  v199 = 0;
  v196 = 0;
  v6 = 0;
  count = 1;
LABEL_335:
  v163 = [NSNumber numberWithUnsignedInt:v5];
  [v3 addObject:v163];

  v164 = [NSNumber numberWithUnsignedInt:v198];
  [v3 addObject:v164];

  v165 = [NSNumber numberWithUnsignedInt:v197];
  [v3 addObject:v165];

  v166 = [NSNumber numberWithUnsignedInt:HIDWORD(v195)];
  [v3 addObject:v166];

  v167 = [NSNumber numberWithUnsignedInt:v194];
  [v3 addObject:v167];

  v168 = [NSNumber numberWithUnsignedInt:v193];
  [v3 addObject:v168];

  v169 = [NSNumber numberWithUnsignedInt:v191];
  [v3 addObject:v169];

  v170 = [NSNumber numberWithUnsignedInt:v190];
  [v3 addObject:v170];

  v171 = [NSNumber numberWithUnsignedInt:v189];
  [v3 addObject:v171];

  v172 = [NSNumber numberWithUnsignedInt:HIDWORD(v188)];
  [v3 addObject:v172];

  v173 = [NSNumber numberWithUnsignedInt:HIDWORD(v199)];
  [v3 addObject:v173];

  v174 = [NSNumber numberWithUnsignedInt:HIDWORD(v198)];
  [v3 addObject:v174];

  v175 = [NSNumber numberWithUnsignedInt:v196];
  [v3 addObject:v175];

  v176 = [NSNumber numberWithUnsignedInt:HIDWORD(v194)];
  [v3 addObject:v176];

  v177 = [NSNumber numberWithUnsignedInt:v192];
  [v3 addObject:v177];

  v178 = [NSNumber numberWithUnsignedInt:HIDWORD(v191)];
  [v3 addObject:v178];

  v179 = [NSNumber numberWithUnsignedInt:v199];
  [v202 addObject:v179];

  v180 = [NSNumber numberWithUnsignedInt:HIDWORD(v197)];
  [v202 addObject:v180];

  v181 = [NSNumber numberWithUnsignedInt:HIDWORD(v196)];
  [v202 addObject:v181];

  v182 = [NSNumber numberWithUnsignedInt:v195];
  [v202 addObject:v182];

  v183 = [NSNumber numberWithUnsignedInt:HIDWORD(v193)];
  [v202 addObject:v183];

  v184 = [NSNumber numberWithUnsignedInt:HIDWORD(v192)];
  [v202 addObject:v184];

  v185 = [NSNumber numberWithUnsignedInt:HIDWORD(v190)];
  [v202 addObject:v185];

  v186 = [NSNumber numberWithUnsignedInt:HIDWORD(v189)];
  [v202 addObject:v186];

  [v200 setObject:v3 forKey:@"tx_direct_retry_attempts_histogram"];
  [v200 setObject:v202 forKey:@"tx_indirect_retry_attempts_histogram"];

  return count;
}

uint64_t CAMetricsHandlers_handle_getprop_ccaEnergyDetect(void *a1, void *a2)
{
  v3 = a1;
  v134 = a2;
  v137 = v3;
  v4 = +[NSMutableArray array];
  v138 = v4;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v3);
    v9 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = count;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "CAMetrics : CCA Energy Detect Histogram array with size %ld.", &buf, 0xCu);
    }

    if (!count)
    {
      v6 = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      HIDWORD(v128) = 0;
      v135 = 0;
      v7 = 0;
      v8 = 0;
      goto LABEL_240;
    }

    v128 = 0;
    v130 = 0;
    v132 = 0;
    v133 = 0;
    v131 = 0;
    v135 = 0;
    v10 = 0;
    v7 = 0;
    while (1)
    {
      v11 = xpc_array_get_dictionary(v3, v10);

      v7 = v11;
      string = xpc_dictionary_get_string(v11, "key");
      v13 = strlen(string);
      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        operator new();
      }

      v140 = v13;
      if (v13)
      {
        memmove(&buf, string, v13);
      }

      *(&buf + v14) = 0;
      uint64 = xpc_dictionary_get_uint64(v7, "value");
      v16 = uint64;
      if (v140 < 0 && *(&buf + 1) == 34)
      {
        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x3C2028205D307830 && *(buf + 24) == 0x426430392D202020 && *(buf + 32) == 10605)
        {
          v21 = uint64;
          if (uint64)
          {
            v22 = log10(uint64) + 1.0;
            v23 = v22 - 4;
            if (v22 <= 4)
            {
              v23 = 0;
            }

            v24 = v23;
          }

          else
          {
            v24 = 0.0;
          }

          v72 = __exp10(v24);
          LODWORD(v128) = (v72 * (v21 / v72));
          v3 = v137;
          v4 = v138;
          if ((v140 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_234;
        }
      }

      else if (v140 < 0 && *(&buf + 1) == 35)
      {
        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x392D5B205D317830 && *(buf + 24) == 0x6435382D6D426430 && *(buf + 27) == 0x296D426435382D6DLL)
        {
          v68 = uint64;
          if (uint64)
          {
            v69 = log10(uint64) + 1.0;
            v70 = v69 - 4;
            if (v69 <= 4)
            {
              v70 = 0;
            }

            v71 = v70;
          }

          else
          {
            v71 = 0.0;
          }

          v82 = __exp10(v71);
          HIDWORD(v133) = (v82 * (v68 / v82));
          v3 = v137;
          v4 = v138;
          if ((v140 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_234:
          operator delete(buf);
          goto LABEL_9;
        }

        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x382D5B205D327830 && *(buf + 24) == 0x6430382D6D426435 && *(buf + 27) == 0x296D426430382D6DLL)
        {
          v73 = uint64;
          if (uint64)
          {
            v74 = log10(uint64) + 1.0;
            v75 = v74 - 4;
            if (v74 <= 4)
            {
              v75 = 0;
            }

            v76 = v75;
          }

          else
          {
            v76 = 0.0;
          }

          v87 = __exp10(v76);
          LODWORD(v133) = (v87 * (v73 / v87));
          v3 = v137;
          v4 = v138;
          if ((v140 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_234;
        }

        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x382D5B205D337830 && *(buf + 24) == 0x6435372D6D426430 && *(buf + 27) == 0x296D426435372D6DLL)
        {
          v78 = uint64;
          if (uint64)
          {
            v79 = log10(uint64) + 1.0;
            v80 = v79 - 4;
            if (v79 <= 4)
            {
              v80 = 0;
            }

            v81 = v80;
          }

          else
          {
            v81 = 0.0;
          }

          v92 = __exp10(v81);
          HIDWORD(v132) = (v92 * (v78 / v92));
          v3 = v137;
          v4 = v138;
          if ((v140 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_234;
        }

        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x372D5B205D347830 && *(buf + 24) == 0x6430372D6D426435 && *(buf + 27) == 0x296D426430372D6DLL)
        {
          v83 = uint64;
          if (uint64)
          {
            v84 = log10(uint64) + 1.0;
            v85 = v84 - 4;
            if (v84 <= 4)
            {
              v85 = 0;
            }

            v86 = v85;
          }

          else
          {
            v86 = 0.0;
          }

          v97 = __exp10(v86);
          LODWORD(v132) = (v97 * (v83 / v97));
          v3 = v137;
          v4 = v138;
          if ((v140 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_234;
        }

        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x372D5B205D357830 && *(buf + 24) == 0x6435362D6D426430 && *(buf + 27) == 0x296D426435362D6DLL)
        {
          v88 = uint64;
          if (uint64)
          {
            v89 = log10(uint64) + 1.0;
            v90 = v89 - 4;
            if (v89 <= 4)
            {
              v90 = 0;
            }

            v91 = v90;
          }

          else
          {
            v91 = 0.0;
          }

          v102 = __exp10(v91);
          HIDWORD(v131) = (v102 * (v88 / v102));
          v3 = v137;
          v4 = v138;
          if ((v140 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_234;
        }

        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x362D5B205D367830 && *(buf + 24) == 0x6430362D6D426435 && *(buf + 27) == 0x296D426430362D6DLL)
        {
          v93 = uint64;
          if (uint64)
          {
            v94 = log10(uint64) + 1.0;
            v95 = v94 - 4;
            if (v94 <= 4)
            {
              v95 = 0;
            }

            v96 = v95;
          }

          else
          {
            v96 = 0.0;
          }

          v107 = __exp10(v96);
          LODWORD(v131) = (v107 * (v93 / v107));
          v3 = v137;
          v4 = v138;
          if ((v140 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_234;
        }

        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x362D5B205D377830 && *(buf + 24) == 0x6435352D6D426430 && *(buf + 27) == 0x296D426435352D6DLL)
        {
          v98 = uint64;
          if (uint64)
          {
            v99 = log10(uint64) + 1.0;
            v100 = v99 - 4;
            if (v99 <= 4)
            {
              v100 = 0;
            }

            v101 = v100;
          }

          else
          {
            v101 = 0.0;
          }

          v112 = __exp10(v101);
          HIDWORD(v130) = (v112 * (v98 / v112));
          v3 = v137;
          v4 = v138;
          if ((v140 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_234;
        }

        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x352D5B205D387830 && *(buf + 24) == 0x6430352D6D426435 && *(buf + 27) == 0x296D426430352D6DLL)
        {
          v103 = uint64;
          if (uint64)
          {
            v104 = log10(uint64) + 1.0;
            v105 = v104 - 4;
            if (v104 <= 4)
            {
              v105 = 0;
            }

            v106 = v105;
          }

          else
          {
            v106 = 0.0;
          }

          v113 = __exp10(v106);
          LODWORD(v130) = (v113 * (v103 / v113));
          goto LABEL_233;
        }

        if (*buf == 0x6772656E45414343 && *(buf + 8) == 0x5B74636574654479 && *(buf + 16) == 0x352D5B205D397830 && *(buf + 24) == 0x6435342D6D426430 && *(buf + 27) == 0x296D426435342D6DLL)
        {
          v108 = uint64;
          if (uint64)
          {
            v109 = log10(uint64) + 1.0;
            v110 = v109 - 4;
            if (v109 <= 4)
            {
              v110 = 0;
            }

            v111 = v110;
          }

          else
          {
            v111 = 0.0;
          }

          v114 = __exp10(v111);
          HIDWORD(v128) = (v114 * (v108 / v114));
          v3 = v137;
          v4 = v138;
          if ((v140 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_234;
        }
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "CCAEnergyDetect[0xA] [-45dBm-40dBm)"))
      {
        if (v16)
        {
          v61 = log10(v16) + 1.0;
          v62 = v61 - 4;
          if (v61 <= 4)
          {
            v62 = 0;
          }

          v63 = v62;
        }

        else
        {
          v63 = 0.0;
        }

        v67 = __exp10(v63);
        HIDWORD(v135) = (v67 * (v16 / v67));
        v3 = v137;
        v4 = v138;
        if ((v140 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_234;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "CCAEnergyDetect[0xB] [ >=  -40dBm]"))
      {
        if (v16)
        {
          v64 = log10(v16) + 1.0;
          v65 = v64 - 4;
          if (v64 <= 4)
          {
            v65 = 0;
          }

          v66 = v65;
        }

        else
        {
          v66 = 0.0;
        }

        v3 = v137;
        v4 = v138;
        v77 = __exp10(v66);
        LODWORD(v135) = (v77 * (v16 / v77));
        if ((v140 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_234;
      }

LABEL_233:
      v3 = v137;
      v4 = v138;
      if (v140 < 0)
      {
        goto LABEL_234;
      }

LABEL_9:
      if (count == ++v10)
      {
        v8 = 0;
        v6 = v128;
        goto LABEL_240;
      }
    }
  }

  v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    CAMetricsHandlers_handle_getprop_ccaEnergyDetect();
  }

  v6 = 0;
  v132 = 0;
  v133 = 0;
  v130 = 0;
  v131 = 0;
  HIDWORD(v128) = 0;
  v135 = 0;
  v7 = 0;
  v8 = 1;
LABEL_240:
  v115 = [NSNumber numberWithUnsignedInt:v6, v128];
  [v4 addObject:v115];

  v116 = [NSNumber numberWithUnsignedInt:HIDWORD(v133)];
  [v4 addObject:v116];

  v117 = [NSNumber numberWithUnsignedInt:v133];
  [v4 addObject:v117];

  v118 = [NSNumber numberWithUnsignedInt:HIDWORD(v132)];
  [v4 addObject:v118];

  v119 = [NSNumber numberWithUnsignedInt:v132];
  [v4 addObject:v119];

  v120 = [NSNumber numberWithUnsignedInt:HIDWORD(v131)];
  [v4 addObject:v120];

  v121 = [NSNumber numberWithUnsignedInt:v131];
  [v4 addObject:v121];

  v122 = [NSNumber numberWithUnsignedInt:HIDWORD(v130)];
  [v4 addObject:v122];

  v123 = [NSNumber numberWithUnsignedInt:v130];
  [v4 addObject:v123];

  v124 = [NSNumber numberWithUnsignedInt:v129];
  [v4 addObject:v124];

  v125 = [NSNumber numberWithUnsignedInt:HIDWORD(v135)];
  [v4 addObject:v125];

  v126 = [NSNumber numberWithUnsignedInt:v135];
  [v4 addObject:v126];

  [v134 setObject:v4 forKey:@"tx_cca_energy_detected_histogram"];
  return v8;
}

size_t CAMetricsHandlers_handle_getprop_csmaBackoff(void *a1, void *a2)
{
  v3 = a1;
  v45 = a2;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v47 = v3;
  v48 = +[NSMutableArray array];
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v3);
    v8 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
      *(buf.__r_.__value_.__r.__words + 4) = count;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CAMetrics : CSMA Backoff Histogram array with size %ld.", &buf, 0xCu);
    }

    if (count)
    {
      v9 = 0;
      v6 = 0;
      v46 = count;
      do
      {
        while (1)
        {
          v14 = xpc_array_get_dictionary(v3, v9);

          v6 = v14;
          string = xpc_dictionary_get_string(v14, "key");
          v16 = strlen(string);
          if (v16 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v17 = v16;
          if (v16 >= 0x17)
          {
            operator new();
          }

          *(&buf.__r_.__value_.__s + 23) = v16;
          if (v16)
          {
            memmove(&buf, string, v16);
          }

          buf.__r_.__value_.__s.__data_[v17] = 0;
          uint64 = xpc_dictionary_get_uint64(v6, "value");
          size = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = buf.__r_.__value_.__l.__size_;
          }

          v21 = (p_buf + size);
          if (size >= 11)
          {
            v22 = p_buf;
            do
            {
              v23 = memchr(v22, 67, size - 10);
              if (!v23)
              {
                break;
              }

              v24 = v23;
              if (*v23 == 0x6B636142414D5343 && *(v23 + 3) == 0x66666F6B63614241)
              {
                goto LABEL_37;
              }

              v22 = (v23 + 1);
              size = v21 - (&v24->__r_.__value_.__l.__data_ + 1);
            }

            while (size > 10);
          }

          v24 = v21;
LABEL_37:
          v26 = std::string::find(&buf, 91, 0);
          v27 = std::string::find(&buf, 93, 0);
          if (v24 != v21 && v24 == p_buf && v26 != -1 && v27 != -1)
          {
            v28 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              v28 = buf.__r_.__value_.__l.__size_;
              if (buf.__r_.__value_.__l.__size_ <= v26)
              {
LABEL_65:
                std::string::__throw_out_of_range[abi:ne200100]();
              }

              v29 = buf.__r_.__value_.__r.__words[0];
            }

            else
            {
              if (v26 >= SHIBYTE(buf.__r_.__value_.__r.__words[2]))
              {
                goto LABEL_65;
              }

              v29 = &buf;
            }

            v30 = v26 + 1;
            v31 = v28 - (v26 + 1);
            if (v31 >= v27 - 1)
            {
              v32 = v27 - 1;
            }

            else
            {
              v32 = v31;
            }

            if (v32 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v32 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v32;
            if (v32)
            {
              memmove(&__dst, v29 + v30, v32);
            }

            count = v46;
            __dst.__r_.__value_.__s.__data_[v32] = 0;
            v33 = std::stoi(&__dst, 0, 10);
            if ((v33 & 0xFEu) <= 9)
            {
              if (uint64)
              {
                v10 = log10(uint64) + 1.0;
                v11 = v10 - 4;
                if (v10 <= 4)
                {
                  v11 = 0;
                }

                v12 = v11;
              }

              else
              {
                v12 = 0.0;
              }

              v13 = __exp10(v12);
              *(&v51 + v33) = (v13 * (uint64 / v13));
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            break;
          }

          ++v9;
          v3 = v47;
          if (v9 == count)
          {
            goto LABEL_60;
          }
        }

        operator delete(buf.__r_.__value_.__l.__data_);
        ++v9;
        v3 = v47;
      }

      while (v9 != count);
LABEL_60:
      count = 0;
      v5 = v51;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_csmaBackoff();
    }

    v5 = 0;
    v6 = 0;
    count = 1;
  }

  v34 = [NSNumber numberWithUnsignedInt:v5];
  [v48 addObject:v34];

  v35 = [NSNumber numberWithUnsignedInt:DWORD1(v51)];
  [v48 addObject:v35];

  v36 = [NSNumber numberWithUnsignedInt:DWORD2(v51)];
  [v48 addObject:v36];

  v37 = [NSNumber numberWithUnsignedInt:HIDWORD(v51)];
  [v48 addObject:v37];

  v38 = [NSNumber numberWithUnsignedInt:v52];
  [v48 addObject:v38];

  v39 = [NSNumber numberWithUnsignedInt:DWORD1(v52)];
  [v48 addObject:v39];

  v40 = [NSNumber numberWithUnsignedInt:DWORD2(v52)];
  [v48 addObject:v40];

  v41 = [NSNumber numberWithUnsignedInt:HIDWORD(v52)];
  [v48 addObject:v41];

  v42 = [NSNumber numberWithUnsignedInt:v53];
  [v48 addObject:v42];

  v43 = [NSNumber numberWithUnsignedInt:HIDWORD(v53)];
  [v48 addObject:v43];

  [v45 setObject:v48 forKey:@"tx_csma_backoff_histogram"];
  return count;
}

uint64_t CAMetricsHandlers_handle_getprop_allmac(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_allmac();
    }

    v6 = 1;
    goto LABEL_249;
  }

  count = xpc_array_get_count(v3);
  v8 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = count;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CAMetrics : AllMAC array with size %ld.", buf, 0xCu);
  }

  if (count)
  {
    v9 = 0;
    v5 = 0;
    v137 = 0;
    v138 = 0;
    v139 = 0;
    v135 = 0;
    v136 = 0;
    v134 = 0;
    while (1)
    {
      v10 = xpc_array_get_dictionary(v3, v9);

      v5 = v10;
      string = xpc_dictionary_get_string(v10, "key");
      v12 = strlen(string);
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      v141 = v12;
      if (v12)
      {
        memmove(buf, string, v12);
      }

      buf[v13] = 0;
      uint64 = xpc_dictionary_get_uint64(v10, "value");
      v15 = uint64;
      v16 = uint64;
      if (uint64)
      {
        v17 = log10(uint64) + 1.0;
        v18 = v17 - 4;
        if (v17 <= 4)
        {
          v18 = 0;
        }

        v19 = v18;
      }

      else
      {
        v19 = 0.0;
      }

      v20 = __exp10(v19);
      v21 = [NSNumber numberWithUnsignedInt:(v20 * (v16 / v20))];
      if ((v141 & 0x80u) == 0)
      {
        v22 = buf;
      }

      else
      {
        v22 = *buf;
      }

      v23 = [NSString stringWithUTF8String:v22, v134];
      [v4 setObject:v21 forKey:v23];

      if (v141 < 0)
      {
        if (*&buf[8] == 8 && **buf == 0x6C61746F745F7874)
        {
          goto LABEL_97;
        }

        if (*&buf[8] == 10 && **buf == 0x635F7272655F7874 && *(*buf + 8) == 24931)
        {
          goto LABEL_144;
        }

        if (*&buf[8] == 19)
        {
          if (**buf == 0x625F7272655F7874 && *(*buf + 8) == 0x6E6168635F797375 && *(*buf + 11) == 0x6C656E6E6168635FLL)
          {
            goto LABEL_90;
          }
        }

        else if (*&buf[8] == 12 && **buf == 0x615F7272655F7874 && *(*buf + 8) == 1953656674)
        {
          goto LABEL_76;
        }

        if (*&buf[8] != 14)
        {
          if (*&buf[8] == 17)
          {
            v29 = **buf == 0x645F7272655F7872 && *(*buf + 8) == 0x65746163696C7075;
            if (v29 && *(*buf + 16) == 100)
            {
              goto LABEL_135;
            }
          }

          v41 = *&buf[8];
          if (*&buf[8] == 23)
          {
LABEL_108:
            if (**buf == 0x755F7272655F7872 && *(*buf + 8) == 0x6E5F6E776F6E6B6ELL && *(*buf + 15) == 0x726F62686769656ELL)
            {
              if (v15)
              {
                v72 = log10(v16) + 1.0;
                v73 = v72 - 4;
                if (v72 <= 4)
                {
                  v73 = 0;
                }

                v74 = v73;
              }

              else
              {
                v74 = 0.0;
              }

              v98 = __exp10(v74);
              LODWORD(v135) = (v98 * (v16 / v98));
            }

            else
            {
              if (**buf != 0x695F7272655F7872 || *(*buf + 8) != 0x735F64696C61766ELL || *(*buf + 15) != 0x726464615F637273)
              {
                goto LABEL_184;
              }

              if (v15)
              {
                v52 = log10(v16) + 1.0;
                v53 = v52 - 4;
                if (v52 <= 4)
                {
                  v53 = 0;
                }

                v54 = v53;
              }

              else
              {
                v54 = 0.0;
              }

              v100 = __exp10(v54);
              LODWORD(v134) = (v100 * (v16 / v100));
            }

            goto LABEL_191;
          }

LABEL_153:
          if (v41 == 10)
          {
            v68 = *buf;
            goto LABEL_180;
          }

          if (v41 != 15)
          {
            goto LABEL_184;
          }

          if (**buf == 0x735F7272655F7872 && *(*buf + 7) == 0x7974697275636573)
          {
            goto LABEL_161;
          }

          goto LABEL_159;
        }

        v31 = *buf;
      }

      else
      {
        if (v141 <= 0xDu)
        {
          if (v141 == 8)
          {
            if (*buf != 0x6C61746F745F7874)
            {
              goto LABEL_184;
            }

LABEL_97:
            if (v15)
            {
              v42 = log10(v16) + 1.0;
              v43 = v42 - 4;
              if (v42 <= 4)
              {
                v43 = 0;
              }

              v44 = v43;
            }

            else
            {
              v44 = 0.0;
            }

            v76 = __exp10(v44);
            LODWORD(v138) = (v76 * (v16 / v76));
            goto LABEL_191;
          }

          if (v141 != 10)
          {
            if (v141 != 12 || (*buf == 0x615F7272655F7874 ? (v32 = *&buf[8] == 1953656674) : (v32 = 0), !v32))
            {
LABEL_184:
              if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "rx_err_other"))
              {
                if (v15)
                {
                  v83 = log10(v16) + 1.0;
                  v84 = v83 - 4;
                  if (v83 <= 4)
                  {
                    v84 = 0;
                  }

                  v85 = v84;
                }

                else
                {
                  v85 = 0.0;
                }

                v86 = __exp10(v85);
                LODWORD(v139) = (v86 * (v16 / v86));
              }

              goto LABEL_191;
            }

LABEL_76:
            if (v15)
            {
              v33 = log10(v16) + 1.0;
              v34 = v33 - 4;
              if (v33 <= 4)
              {
                v34 = 0;
              }

              v35 = v34;
            }

            else
            {
              v35 = 0.0;
            }

            v78 = __exp10(v35);
            LODWORD(v137) = (v78 * (v16 / v78));
            goto LABEL_191;
          }

          if (*buf == 0x635F7272655F7874 && *&buf[8] == 24931)
          {
LABEL_144:
            if (v15)
            {
              v61 = log10(v16) + 1.0;
              v62 = v61 - 4;
              if (v61 <= 4)
              {
                v62 = 0;
              }

              v63 = v62;
            }

            else
            {
              v63 = 0.0;
            }

            v75 = __exp10(v63);
            HIDWORD(v138) = (v75 * (v16 / v75));
            goto LABEL_191;
          }

          goto LABEL_160;
        }

        if (v141 > 0x10u)
        {
          if (v141 != 17)
          {
            if (v141 != 19)
            {
              goto LABEL_184;
            }

            v36 = *buf == 0x625F7272655F7874 && *&buf[8] == 0x6E6168635F797375;
            if (!v36 || *&buf[11] != 0x6C656E6E6168635FLL)
            {
              goto LABEL_184;
            }

LABEL_90:
            if (v15)
            {
              v38 = log10(v16) + 1.0;
              v39 = v38 - 4;
              if (v38 <= 4)
              {
                v39 = 0;
              }

              v40 = v39;
            }

            else
            {
              v40 = 0.0;
            }

            v77 = __exp10(v40);
            HIDWORD(v137) = (v77 * (v16 / v77));
            goto LABEL_191;
          }

          if (*buf != 0x645F7272655F7872 || *&buf[8] != 0x65746163696C7075 || buf[16] != 100)
          {
            goto LABEL_184;
          }

LABEL_135:
          if (v15)
          {
            v57 = log10(v16) + 1.0;
            v58 = v57 - 4;
            if (v57 <= 4)
            {
              v58 = 0;
            }

            v59 = v58;
          }

          else
          {
            v59 = 0.0;
          }

          v96 = __exp10(v59);
          LODWORD(v136) = (v96 * (v16 / v96));
          goto LABEL_191;
        }

        if (v141 != 14)
        {
          if (v141 != 15)
          {
            goto LABEL_184;
          }

          if (*buf != 0x735F7272655F7872 || *&buf[7] != 0x7974697275636573)
          {
            goto LABEL_184;
          }

LABEL_161:
          if (v15)
          {
            v69 = log10(v16) + 1.0;
            v70 = v69 - 4;
            if (v69 <= 4)
            {
              v70 = 0;
            }

            v71 = v70;
          }

          else
          {
            v71 = 0.0;
          }

          v97 = __exp10(v71);
          HIDWORD(v135) = (v97 * (v16 / v97));
          goto LABEL_191;
        }

        v31 = buf;
      }

      v45 = *v31;
      v46 = *(v31 + 6);
      if (v45 == 0x6E5F7272655F7872 && v46 == 0x656D6172666F6E5FLL)
      {
        if (v15)
        {
          v64 = log10(v16) + 1.0;
          v65 = v64 - 4;
          if (v64 <= 4)
          {
            v65 = 0;
          }

          v66 = v65;
        }

        else
        {
          v66 = 0.0;
        }

        v79 = __exp10(v66);
        HIDWORD(v136) = (v79 * (v16 / v79));
        goto LABEL_191;
      }

      v41 = *&buf[8];
      if ((v141 & 0x80) != 0 && *&buf[8] == 23)
      {
        goto LABEL_108;
      }

      if ((v141 & 0x80) != 0)
      {
        goto LABEL_153;
      }

LABEL_159:
      if (v141 != 10)
      {
        goto LABEL_184;
      }

LABEL_160:
      v68 = buf;
LABEL_180:
      v80 = *v68;
      v81 = *(v68 + 4);
      if (v80 != 0x665F7272655F7872 || v81 != 29539)
      {
        goto LABEL_184;
      }

      if (v15)
      {
        v93 = log10(v16) + 1.0;
        v94 = v93 - 4;
        if (v93 <= 4)
        {
          v94 = 0;
        }

        v95 = v94;
      }

      else
      {
        v95 = 0.0;
      }

      v99 = __exp10(v95);
      HIDWORD(v134) = (v99 * (v16 / v99));
LABEL_191:
      v87 = v141;
      if ((v141 & 0x80000000) == 0)
      {
        if (v141 != 8)
        {
          goto LABEL_10;
        }

        v88 = buf;
LABEL_195:
        if (*v88 == 0x6C61746F745F7872)
        {
          if (v15)
          {
            v89 = log10(v16) + 1.0;
            v90 = v89 - 4;
            if (v89 <= 4)
            {
              v90 = 0;
            }

            v91 = v90;
          }

          else
          {
            v91 = 0.0;
          }

          v92 = __exp10(v91);
          HIDWORD(v139) = (v92 * (v16 / v92));
          if ((v87 & 0x80000000) == 0)
          {
            goto LABEL_10;
          }
        }

        else if ((v141 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        v88 = *buf;
        goto LABEL_9;
      }

      v88 = *buf;
      if (*&buf[8] == 8)
      {
        goto LABEL_195;
      }

LABEL_9:
      operator delete(v88);
LABEL_10:
      if (count == ++v9)
      {
        goto LABEL_220;
      }
    }
  }

  v138 = 0;
  v139 = 0;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v5 = 0;
LABEL_220:
  v101 = 0.0;
  v102 = v137 + HIDWORD(v137) + HIDWORD(v138);
  if (v102)
  {
    v103 = 100 * v137 / v102;
    v104 = (100 * HIDWORD(v138) / v102);
    v105 = 100 * HIDWORD(v137) / v102;
    if (v102 <= 100 * HIDWORD(v138))
    {
      v106 = log10((100 * HIDWORD(v138) / v102)) + 1.0;
      v107 = v106 - 4;
      if (v106 <= 4)
      {
        v107 = 0;
      }

      v101 = v107;
    }
  }

  else
  {
    v103 = 0;
    v105 = 0;
    v104 = 0.0;
  }

  v108 = __exp10(v101);
  v109 = [NSNumber numberWithUnsignedInt:(v108 * (v104 / v108))];
  [v4 setObject:v109 forKey:@"tx_err_cca_percentage"];

  if (v103)
  {
    v110 = log10(v103) + 1.0;
    v111 = v110 - 4;
    if (v110 <= 4)
    {
      v111 = 0;
    }

    v112 = v111;
  }

  else
  {
    v112 = 0.0;
  }

  v113 = __exp10(v112);
  v114 = [NSNumber numberWithUnsignedInt:(v113 * (v103 / v113))];
  [v4 setObject:v114 forKey:@"tx_err_abort_percentage"];

  if (v105)
  {
    v115 = log10(v105) + 1.0;
    v116 = v115 - 4;
    if (v115 <= 4)
    {
      v116 = 0;
    }

    v117 = v116;
  }

  else
  {
    v117 = 0.0;
  }

  v118 = __exp10(v117);
  v119 = [NSNumber numberWithUnsignedInt:(v118 * (v105 / v118))];
  [v4 setObject:v119 forKey:@"tx_err_busy_channel_percentage"];

  if (v138)
  {
    dword_10052A918 = v138;
    dword_10052A91C = HIDWORD(v139);
    v120 = (100 * v102 / v138);
    v121 = 0.0;
    if (v138 <= 100 * v102)
    {
      v122 = log10((100 * v102 / v138)) + 1.0;
      v123 = v122 - 4;
      if (v122 <= 4)
      {
        v123 = 0;
      }

      v121 = v123;
    }
  }

  else
  {
    dword_10052A918 = 0;
    dword_10052A91C = HIDWORD(v139);
    v120 = 0.0;
    v121 = 0.0;
  }

  v124 = __exp10(v121);
  v125 = [NSNumber numberWithUnsignedInt:(v124 * (v120 / v124))];
  [v4 setObject:v125 forKey:@"tx_err_percentage"];

  v126 = 0.0;
  if (HIDWORD(v139))
  {
    v127 = 100 * (HIDWORD(v134) + HIDWORD(v135) + v139 + v134 + v135 + HIDWORD(v136) + v136);
    v128 = (v127 / HIDWORD(v139));
    if (HIDWORD(v139) <= v127)
    {
      v129 = log10((v127 / HIDWORD(v139))) + 1.0;
      v130 = v129 - 4;
      if (v129 <= 4)
      {
        v130 = 0;
      }

      v126 = v130;
    }
  }

  else
  {
    v128 = 0.0;
  }

  v131 = __exp10(v126);
  v132 = [NSNumber numberWithUnsignedInt:(v131 * (v128 / v131))];
  [v4 setObject:v132 forKey:@"rx_err_percentage"];

  v6 = 0;
LABEL_249:

  return v6;
}

uint64_t CAMetricsHandlers_handle_getprop_vendorcoex_histograms(void *a1, void *a2)
{
  object = a1;
  v236 = a2;
  v253[0] = 0;
  v253[1] = 0;
  v252 = v253;
  v278 = 0u;
  v279 = 0u;
  v276 = 0u;
  v277 = 0u;
  v275 = 0u;
  v273 = 0u;
  v274 = 0u;
  v271 = 0u;
  v272 = 0u;
  v269 = 0u;
  v270 = 0u;
  v267 = 0u;
  v268 = 0u;
  v265 = 0u;
  v266 = 0u;
  v263 = 0u;
  v264 = 0u;
  v261 = 0u;
  v262 = 0u;
  v259 = 0u;
  v260 = 0u;
  v257 = 0u;
  v258 = 0u;
  v256 = 0u;
  memset(v255, 0, 44);
  v242 = +[NSMutableArray array];
  v241 = +[NSMutableArray array];
  v244 = +[NSMutableArray array];
  v243 = +[NSMutableArray array];
  v238 = +[NSMutableArray array];
  v237 = +[NSMutableArray array];
  if (xpc_get_type(object) != &_xpc_type_array)
  {
    v3 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_vendorcoex_histograms();
    }

    v4 = 0;
    v5 = 1;
    goto LABEL_332;
  }

  count = xpc_array_get_count(object);
  v6 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = count;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CAMetrics : now onto Coex hist array with size %ld.", &buf, 0xCu);
  }

  if (count)
  {
    v7 = 0;
    v4 = 0;
    while (1)
    {
      v8 = xpc_array_get_dictionary(object, v7);

      v250 = v8;
      string = xpc_dictionary_get_string(v8, "key");
      v10 = strlen(string);
      if (v10 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        operator new();
      }

      *(&buf.__r_.__value_.__s + 23) = v10;
      if (v10)
      {
        memmove(&buf, string, v10);
      }

      v247 = v7;
      buf.__r_.__value_.__s.__data_[v11] = 0;
      uint64 = xpc_dictionary_get_uint64(v8, "value");
      v12 = std::string::find(&buf, 91, 0);
      v13 = std::string::find(&buf, 93, 0);
      v14 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      size = buf.__r_.__value_.__l.__size_;
      v248 = v13;
      v249 = buf.__r_.__value_.__r.__words[0];
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v17 = buf.__r_.__value_.__l.__size_;
      }

      v18 = (p_buf + v17);
      v19 = v17;
      v20 = p_buf;
      if (v17 >= 40)
      {
        do
        {
          v22 = memchr(v20, 99, v19 - 39);
          if (!v22)
          {
            break;
          }

          if (v22->__r_.__value_.__r.__words[0] == 0x5F78725F78656F63 && v22->__r_.__value_.__l.__size_ == 0x72675F6C61746F74 && v22->__r_.__value_.__r.__words[2] == 0x797475645F746E61 && v22[1].__r_.__value_.__r.__words[0] == 0x685F656C6379635FLL && v22[1].__r_.__value_.__l.__size_ == 0x6D6172676F747369)
          {
            goto LABEL_41;
          }

          v20 = (&v22->__r_.__value_.__l.__data_ + 1);
          v19 = v18 - v20;
        }

        while (v18 - v20 > 39);
        v22 = (p_buf + v17);
LABEL_41:
        v21 = v22 != v18 && v22 == p_buf;
        v30 = v17;
        v31 = p_buf;
        do
        {
          v32 = memchr(v31, 99, v30 - 39);
          if (!v32)
          {
            break;
          }

          if (v32->__r_.__value_.__r.__words[0] == 0x5F78745F78656F63 && v32->__r_.__value_.__l.__size_ == 0x72675F6C61746F74 && v32->__r_.__value_.__r.__words[2] == 0x797475645F746E61 && v32[1].__r_.__value_.__r.__words[0] == 0x685F656C6379635FLL && v32[1].__r_.__value_.__l.__size_ == 0x6D6172676F747369)
          {
            goto LABEL_66;
          }

          v31 = (&v32->__r_.__value_.__l.__data_ + 1);
          v30 = v18 - v31;
        }

        while (v18 - v31 > 39);
        v32 = (p_buf + v17);
LABEL_66:
        v28 = v32 != v18 && v32 == p_buf;
        if (v17 >= 46)
        {
          v38 = v17;
          v39 = p_buf;
          while (1)
          {
            v40 = memchr(v39, 99, v38 - 45);
            if (!v40)
            {
LABEL_93:
              v46 = 0;
              goto LABEL_244;
            }

            v41 = v40->__r_.__value_.__r.__words[0] == 0x5F78725F78656F63 && v40->__r_.__value_.__l.__size_ == 0x6963696C6F736E75;
            v42 = v41 && v40->__r_.__value_.__r.__words[2] == 0x6E6172675F646574;
            v43 = v42 && v40[1].__r_.__value_.__r.__words[0] == 0x635F797475645F74;
            v44 = v43 && v40[1].__r_.__value_.__l.__size_ == 0x7369685F656C6379;
            if (v44 && *(&v40[1].__r_.__value_.__r.__words[1] + 6) == 0x6D6172676F747369)
            {
              break;
            }

            v39 = (&v40->__r_.__value_.__l.__data_ + 1);
            v38 = v18 - v39;
            if (v18 - v39 <= 45)
            {
              goto LABEL_93;
            }
          }

          v46 = v40 != v18 && v40 == p_buf;
LABEL_244:
          v97 = v17;
          v98 = p_buf;
          v240 = v46;
          do
          {
            if (v97 == 45)
            {
              break;
            }

            v29 = memchr(v98, 99, v97 - 45);
            if (!v29)
            {
              break;
            }

            if (v29->__r_.__value_.__r.__words[0] == 0x5F78745F78656F63 && v29->__r_.__value_.__l.__size_ == 0x6963696C6F736E75 && v29->__r_.__value_.__r.__words[2] == 0x6E6172675F646574 && v29[1].__r_.__value_.__r.__words[0] == 0x635F797475645F74 && v29[1].__r_.__value_.__l.__size_ == 0x7369685F656C6379 && *(&v29[1].__r_.__value_.__r.__words[1] + 6) == 0x6D6172676F747369)
            {
              goto LABEL_95;
            }

            v98 = (&v29->__r_.__value_.__l.__data_ + 1);
            v97 = v18 - v98;
          }

          while (v18 - v98 > 45);
        }

        else
        {
          v240 = 0;
        }

        v29 = (p_buf + v17);
      }

      else
      {
        v240 = 0;
        v21 = 0;
        v28 = 0;
        v29 = (p_buf + v17);
      }

LABEL_95:
      v48 = v29 != v18 && v29 == p_buf;
      if (v17 >= 31)
      {
        v50 = v17;
        v51 = p_buf;
        do
        {
          v52 = memchr(v51, 99, v50 - 30);
          if (!v52)
          {
            break;
          }

          if (v52->__r_.__value_.__r.__words[0] == 0x746F745F78656F63 && v52->__r_.__value_.__l.__size_ == 0x746E6172675F6C61 && v52->__r_.__value_.__r.__words[2] == 0x69685F656D69745FLL && *(&v52->__r_.__value_.__r.__words[2] + 7) == 0x6D6172676F747369)
          {
            goto LABEL_117;
          }

          v51 = (&v52->__r_.__value_.__l.__data_ + 1);
          v50 = v18 - v51;
        }

        while (v18 - v51 > 30);
        v52 = (p_buf + v17);
LABEL_117:
        v49 = v52 != v18 && v52 == p_buf;
        if (v17 >= 42)
        {
          v57 = p_buf;
          do
          {
            v58 = memchr(v57, 99, v17 - 41);
            if (!v58)
            {
              break;
            }

            if (v58->__r_.__value_.__r.__words[0] == 0x6F62615F78656F63 && v58->__r_.__value_.__l.__size_ == 0x5F6575645F737472 && v58->__r_.__value_.__r.__words[2] == 0x746E6172675F6F74 && v58[1].__r_.__value_.__r.__words[0] == 0x73656B6F7665725FLL && v58[1].__r_.__value_.__l.__size_ == 0x72676F747369685FLL && LOWORD(v58[1].__r_.__value_.__r.__words[2]) == 28001)
            {
              goto LABEL_144;
            }

            v57 = (&v58->__r_.__value_.__l.__data_ + 1);
            v17 = v18 - v57;
          }

          while (v18 - v57 > 41);
        }
      }

      else
      {
        v49 = 0;
      }

      v58 = v18;
LABEL_144:
      v65 = v58 != v18 && v58 == p_buf;
      v66 = v12 != -1 && v21;
      if (!v66 || v248 == -1)
      {
        v68 = v12 != -1 && v28;
        v69 = v249;
        v4 = v250;
        if (!v68 || v248 == -1)
        {
          v70 = v240;
          if (v12 == -1)
          {
            v70 = 0;
          }

          if (!v70 || v248 == -1)
          {
            v77 = v12 != -1 && v48;
            if (!v77 || v248 == -1)
            {
              v88 = v12 != -1 && v49;
              if (!v88 || v248 == -1)
              {
                if (v12 == -1)
                {
                  v65 = 0;
                }

                if (!v65 || v248 == -1)
                {
                  goto LABEL_9;
                }

                if ((v14 & 0x80000000) != 0)
                {
                  if (size <= v12)
                  {
LABEL_344:
                    std::string::__throw_out_of_range[abi:ne200100]();
                  }
                }

                else
                {
                  if (v12 >= v14)
                  {
                    goto LABEL_344;
                  }

                  v69 = &buf;
                  size = v14;
                }

                v119 = v12 + 1;
                if (size - (v12 + 1) >= v248 - 1)
                {
                  v120 = v248 - 1;
                }

                else
                {
                  v120 = size - (v12 + 1);
                }

                if (v120 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                if (v120 >= 0x17)
                {
                  operator new();
                }

                *(&__dst.__r_.__value_.__s + 23) = v120;
                if (v120)
                {
                  memmove(&__dst, v69 + v119, v120);
                }

                __dst.__r_.__value_.__s.__data_[v120] = 0;
                v121 = std::stoi(&__dst, 0, 10);
                if (v121 <= 0xA)
                {
                  if (uint64)
                  {
                    v122 = log10(uint64) + 1.0;
                    v123 = v122 - 4;
                    if (v122 <= 4)
                    {
                      v123 = 0;
                    }

                    v124 = v123;
                  }

                  else
                  {
                    v124 = 0.0;
                  }

                  v126 = __exp10(v124);
                  *(v255 + v121) = (v126 * (uint64 / v126));
                  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_9;
                  }

LABEL_325:
                  operator delete(__dst.__r_.__value_.__l.__data_);
                  goto LABEL_9;
                }
              }

              else
              {
                if ((v14 & 0x80000000) != 0)
                {
                  if (size <= v12)
                  {
LABEL_342:
                    std::string::__throw_out_of_range[abi:ne200100]();
                  }
                }

                else
                {
                  if (v12 >= v14)
                  {
                    goto LABEL_342;
                  }

                  v69 = &buf;
                  size = v14;
                }

                v111 = v12 + 1;
                if (size - (v12 + 1) >= v248 - 1)
                {
                  v112 = v248 - 1;
                }

                else
                {
                  v112 = size - (v12 + 1);
                }

                if (v112 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                if (v112 >= 0x17)
                {
                  operator new();
                }

                *(&__dst.__r_.__value_.__s + 23) = v112;
                if (v112)
                {
                  memmove(&__dst, v69 + v111, v112);
                }

                __dst.__r_.__value_.__s.__data_[v112] = 0;
                v113 = std::stoi(&__dst, 0, 10);
                if ((v113 & 0xF0) == 0)
                {
                  v114 = v113;
                  if (uint64)
                  {
                    v115 = log10(uint64) + 1.0;
                    v116 = v115 - 4;
                    if (v115 <= 4)
                    {
                      v116 = 0;
                    }

                    v117 = v116;
                  }

                  else
                  {
                    v117 = 0.0;
                  }

                  v125 = __exp10(v117);
                  v85 = (v125 * (uint64 / v125));
                  v86 = v114 & 0xF;
                  v87 = &v256;
                  goto LABEL_323;
                }
              }
            }

            else
            {
              if ((v14 & 0x80000000) != 0)
              {
                if (size <= v12)
                {
LABEL_340:
                  std::string::__throw_out_of_range[abi:ne200100]();
                }
              }

              else
              {
                if (v12 >= v14)
                {
                  goto LABEL_340;
                }

                v69 = &buf;
                size = v14;
              }

              v104 = v12 + 1;
              if (size - (v12 + 1) >= v248 - 1)
              {
                v105 = v248 - 1;
              }

              else
              {
                v105 = size - (v12 + 1);
              }

              if (v105 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v105 >= 0x17)
              {
                operator new();
              }

              *(&__dst.__r_.__value_.__s + 23) = v105;
              if (v105)
              {
                memmove(&__dst, v69 + v104, v105);
              }

              __dst.__r_.__value_.__s.__data_[v105] = 0;
              v106 = std::stoi(&__dst, 0, 10);
              if ((v106 & 0xFCu) <= 0x13)
              {
                if (uint64)
                {
                  v107 = log10(uint64) + 1.0;
                  v108 = v107 - 4;
                  if (v107 <= 4)
                  {
                    v108 = 0;
                  }

                  v109 = v108;
                }

                else
                {
                  v109 = 0.0;
                }

                v118 = __exp10(v109);
                v85 = (v118 * (uint64 / v118));
                v86 = v106;
                v87 = &v270;
                goto LABEL_323;
              }
            }
          }

          else
          {
            if ((v14 & 0x80000000) != 0)
            {
              if (size <= v12)
              {
LABEL_338:
                std::string::__throw_out_of_range[abi:ne200100]();
              }
            }

            else
            {
              if (v12 >= v14)
              {
                goto LABEL_338;
              }

              v69 = &buf;
              size = v14;
            }

            v89 = v12 + 1;
            if (size - (v12 + 1) >= v248 - 1)
            {
              v90 = v248 - 1;
            }

            else
            {
              v90 = size - (v12 + 1);
            }

            if (v90 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v90 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v90;
            if (v90)
            {
              memmove(&__dst, v69 + v89, v90);
            }

            __dst.__r_.__value_.__s.__data_[v90] = 0;
            v91 = std::stoi(&__dst, 0, 10);
            if ((v91 & 0xFCu) <= 0x13)
            {
              if (uint64)
              {
                v92 = log10(uint64) + 1.0;
                v93 = v92 - 4;
                if (v92 <= 4)
                {
                  v93 = 0;
                }

                v94 = v93;
              }

              else
              {
                v94 = 0.0;
              }

              v110 = __exp10(v94);
              v85 = (v110 * (uint64 / v110));
              v86 = v91;
              v87 = &v275;
              goto LABEL_323;
            }
          }
        }

        else
        {
          if ((v14 & 0x80000000) != 0)
          {
            if (size <= v12)
            {
LABEL_336:
              std::string::__throw_out_of_range[abi:ne200100]();
            }
          }

          else
          {
            if (v12 >= v14)
            {
              goto LABEL_336;
            }

            v69 = &buf;
            size = v14;
          }

          v78 = v12 + 1;
          if (size - (v12 + 1) >= v248 - 1)
          {
            v79 = v248 - 1;
          }

          else
          {
            v79 = size - (v12 + 1);
          }

          if (v79 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v79 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v79;
          if (v79)
          {
            memmove(&__dst, v69 + v78, v79);
          }

          __dst.__r_.__value_.__s.__data_[v79] = 0;
          v80 = std::stoi(&__dst, 0, 10);
          if ((v80 & 0xFCu) <= 0x13)
          {
            if (uint64)
            {
              v81 = log10(uint64) + 1.0;
              v82 = v81 - 4;
              if (v81 <= 4)
              {
                v82 = 0;
              }

              v83 = v82;
            }

            else
            {
              v83 = 0.0;
            }

            v95 = __exp10(v83);
            v85 = (v95 * (uint64 / v95));
            v86 = v80;
            v87 = &v265;
            goto LABEL_323;
          }
        }
      }

      else
      {
        v67 = v249;
        v4 = v250;
        if ((v14 & 0x80000000) != 0)
        {
          if (size <= v12)
          {
LABEL_334:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v12 >= v14)
          {
            goto LABEL_334;
          }

          v67 = &buf;
          size = v14;
        }

        v71 = v12 + 1;
        if (size - (v12 + 1) >= v248 - 1)
        {
          v72 = v248 - 1;
        }

        else
        {
          v72 = size - (v12 + 1);
        }

        if (v72 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v72 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v72;
        if (v72)
        {
          memmove(&__dst, v67 + v71, v72);
        }

        __dst.__r_.__value_.__s.__data_[v72] = 0;
        v73 = std::stoi(&__dst, 0, 10);
        if ((v73 & 0xFCu) <= 0x13)
        {
          if (uint64)
          {
            v74 = log10(uint64) + 1.0;
            v75 = v74 - 4;
            if (v74 <= 4)
            {
              v75 = 0;
            }

            v76 = v75;
          }

          else
          {
            v76 = 0.0;
          }

          v84 = __exp10(v76);
          v85 = (v84 * (uint64 / v84));
          v86 = v73;
          v87 = &v260;
LABEL_323:
          *(v87 + v86) = v85;
        }
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_325;
      }

LABEL_9:
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
        v7 = v247 + 1;
        if (v247 + 1 == count)
        {
LABEL_329:
          v127 = v260;
          goto LABEL_331;
        }
      }

      else
      {
        v7 = v247 + 1;
        if (v247 + 1 == count)
        {
          goto LABEL_329;
        }
      }
    }
  }

  v127 = 0;
  v4 = 0;
LABEL_331:
  v128 = [NSNumber numberWithUnsignedInt:v127];
  [v244 addObject:v128];

  v129 = [NSNumber numberWithUnsignedInt:DWORD1(v260)];
  [v244 addObject:v129];

  v130 = [NSNumber numberWithUnsignedInt:DWORD2(v260)];
  [v244 addObject:v130];

  v131 = [NSNumber numberWithUnsignedInt:HIDWORD(v260)];
  [v244 addObject:v131];

  v132 = [NSNumber numberWithUnsignedInt:v261];
  [v244 addObject:v132];

  v133 = [NSNumber numberWithUnsignedInt:DWORD1(v261)];
  [v244 addObject:v133];

  v134 = [NSNumber numberWithUnsignedInt:DWORD2(v261)];
  [v244 addObject:v134];

  v135 = [NSNumber numberWithUnsignedInt:HIDWORD(v261)];
  [v244 addObject:v135];

  v136 = [NSNumber numberWithUnsignedInt:v262];
  [v244 addObject:v136];

  v137 = [NSNumber numberWithUnsignedInt:DWORD1(v262)];
  [v244 addObject:v137];

  v138 = [NSNumber numberWithUnsignedInt:DWORD2(v262)];
  [v244 addObject:v138];

  v139 = [NSNumber numberWithUnsignedInt:HIDWORD(v262)];
  [v244 addObject:v139];

  v140 = [NSNumber numberWithUnsignedInt:v263];
  [v244 addObject:v140];

  v141 = [NSNumber numberWithUnsignedInt:DWORD1(v263)];
  [v244 addObject:v141];

  v142 = [NSNumber numberWithUnsignedInt:DWORD2(v263)];
  [v244 addObject:v142];

  v143 = [NSNumber numberWithUnsignedInt:HIDWORD(v263)];
  [v244 addObject:v143];

  v144 = [NSNumber numberWithUnsignedInt:v264];
  [v244 addObject:v144];

  v145 = [NSNumber numberWithUnsignedInt:DWORD1(v264)];
  [v244 addObject:v145];

  v146 = [NSNumber numberWithUnsignedInt:DWORD2(v264)];
  [v244 addObject:v146];

  v147 = [NSNumber numberWithUnsignedInt:HIDWORD(v264)];
  [v244 addObject:v147];

  [v236 setObject:v244 forKey:@"coex_rx_total_grant_duty_cycle_histogram"];
  v148 = [NSNumber numberWithUnsignedInt:v265];
  [v243 addObject:v148];

  v149 = [NSNumber numberWithUnsignedInt:DWORD1(v265)];
  [v243 addObject:v149];

  v150 = [NSNumber numberWithUnsignedInt:DWORD2(v265)];
  [v243 addObject:v150];

  v151 = [NSNumber numberWithUnsignedInt:HIDWORD(v265)];
  [v243 addObject:v151];

  v152 = [NSNumber numberWithUnsignedInt:v266];
  [v243 addObject:v152];

  v153 = [NSNumber numberWithUnsignedInt:DWORD1(v266)];
  [v243 addObject:v153];

  v154 = [NSNumber numberWithUnsignedInt:DWORD2(v266)];
  [v243 addObject:v154];

  v155 = [NSNumber numberWithUnsignedInt:HIDWORD(v266)];
  [v243 addObject:v155];

  v156 = [NSNumber numberWithUnsignedInt:v267];
  [v243 addObject:v156];

  v157 = [NSNumber numberWithUnsignedInt:DWORD1(v267)];
  [v243 addObject:v157];

  v158 = [NSNumber numberWithUnsignedInt:DWORD2(v267)];
  [v243 addObject:v158];

  v159 = [NSNumber numberWithUnsignedInt:HIDWORD(v267)];
  [v243 addObject:v159];

  v160 = [NSNumber numberWithUnsignedInt:v268];
  [v243 addObject:v160];

  v161 = [NSNumber numberWithUnsignedInt:DWORD1(v268)];
  [v243 addObject:v161];

  v162 = [NSNumber numberWithUnsignedInt:DWORD2(v268)];
  [v243 addObject:v162];

  v163 = [NSNumber numberWithUnsignedInt:HIDWORD(v268)];
  [v243 addObject:v163];

  v164 = [NSNumber numberWithUnsignedInt:v269];
  [v243 addObject:v164];

  v165 = [NSNumber numberWithUnsignedInt:DWORD1(v269)];
  [v243 addObject:v165];

  v166 = [NSNumber numberWithUnsignedInt:DWORD2(v269)];
  [v243 addObject:v166];

  v167 = [NSNumber numberWithUnsignedInt:HIDWORD(v269)];
  [v243 addObject:v167];

  [v236 setObject:v243 forKey:@"coex_tx_total_grant_duty_cycle_histogram"];
  v168 = [NSNumber numberWithUnsignedInt:v275];
  [v242 addObject:v168];

  v169 = [NSNumber numberWithUnsignedInt:DWORD1(v275)];
  [v242 addObject:v169];

  v170 = [NSNumber numberWithUnsignedInt:DWORD2(v275)];
  [v242 addObject:v170];

  v171 = [NSNumber numberWithUnsignedInt:HIDWORD(v275)];
  [v242 addObject:v171];

  v172 = [NSNumber numberWithUnsignedInt:v276];
  [v242 addObject:v172];

  v173 = [NSNumber numberWithUnsignedInt:DWORD1(v276)];
  [v242 addObject:v173];

  v174 = [NSNumber numberWithUnsignedInt:DWORD2(v276)];
  [v242 addObject:v174];

  v175 = [NSNumber numberWithUnsignedInt:HIDWORD(v276)];
  [v242 addObject:v175];

  v176 = [NSNumber numberWithUnsignedInt:v277];
  [v242 addObject:v176];

  v177 = [NSNumber numberWithUnsignedInt:DWORD1(v277)];
  [v242 addObject:v177];

  v178 = [NSNumber numberWithUnsignedInt:DWORD2(v277)];
  [v242 addObject:v178];

  v179 = [NSNumber numberWithUnsignedInt:HIDWORD(v277)];
  [v242 addObject:v179];

  v180 = [NSNumber numberWithUnsignedInt:v278];
  [v242 addObject:v180];

  v181 = [NSNumber numberWithUnsignedInt:DWORD1(v278)];
  [v242 addObject:v181];

  v182 = [NSNumber numberWithUnsignedInt:DWORD2(v278)];
  [v242 addObject:v182];

  v183 = [NSNumber numberWithUnsignedInt:HIDWORD(v278)];
  [v242 addObject:v183];

  v184 = [NSNumber numberWithUnsignedInt:v279];
  [v242 addObject:v184];

  v185 = [NSNumber numberWithUnsignedInt:DWORD1(v279)];
  [v242 addObject:v185];

  v186 = [NSNumber numberWithUnsignedInt:DWORD2(v279)];
  [v242 addObject:v186];

  v187 = [NSNumber numberWithUnsignedInt:HIDWORD(v279)];
  [v242 addObject:v187];

  [v236 setObject:v242 forKey:@"coex_rx_unsolicited_grant_duty_cycle_histogram"];
  v188 = [NSNumber numberWithUnsignedInt:v270];
  [v241 addObject:v188];

  v189 = [NSNumber numberWithUnsignedInt:DWORD1(v270)];
  [v241 addObject:v189];

  v190 = [NSNumber numberWithUnsignedInt:DWORD2(v270)];
  [v241 addObject:v190];

  v191 = [NSNumber numberWithUnsignedInt:HIDWORD(v270)];
  [v241 addObject:v191];

  v192 = [NSNumber numberWithUnsignedInt:v271];
  [v241 addObject:v192];

  v193 = [NSNumber numberWithUnsignedInt:DWORD1(v271)];
  [v241 addObject:v193];

  v194 = [NSNumber numberWithUnsignedInt:DWORD2(v271)];
  [v241 addObject:v194];

  v195 = [NSNumber numberWithUnsignedInt:HIDWORD(v271)];
  [v241 addObject:v195];

  v196 = [NSNumber numberWithUnsignedInt:v272];
  [v241 addObject:v196];

  v197 = [NSNumber numberWithUnsignedInt:DWORD1(v272)];
  [v241 addObject:v197];

  v198 = [NSNumber numberWithUnsignedInt:DWORD2(v272)];
  [v241 addObject:v198];

  v199 = [NSNumber numberWithUnsignedInt:HIDWORD(v272)];
  [v241 addObject:v199];

  v200 = [NSNumber numberWithUnsignedInt:v273];
  [v241 addObject:v200];

  v201 = [NSNumber numberWithUnsignedInt:DWORD1(v273)];
  [v241 addObject:v201];

  v202 = [NSNumber numberWithUnsignedInt:DWORD2(v273)];
  [v241 addObject:v202];

  v203 = [NSNumber numberWithUnsignedInt:HIDWORD(v273)];
  [v241 addObject:v203];

  v204 = [NSNumber numberWithUnsignedInt:v274];
  [v241 addObject:v204];

  v205 = [NSNumber numberWithUnsignedInt:DWORD1(v274)];
  [v241 addObject:v205];

  v206 = [NSNumber numberWithUnsignedInt:DWORD2(v274)];
  [v241 addObject:v206];

  v207 = [NSNumber numberWithUnsignedInt:HIDWORD(v274)];
  [v241 addObject:v207];

  [v236 setObject:v241 forKey:@"coex_tx_unsolicited_grant_duty_cycle_histogram"];
  v208 = [NSNumber numberWithUnsignedInt:v256];
  [v238 addObject:v208];

  v209 = [NSNumber numberWithUnsignedInt:DWORD1(v256)];
  [v238 addObject:v209];

  v210 = [NSNumber numberWithUnsignedInt:DWORD2(v256)];
  [v238 addObject:v210];

  v211 = [NSNumber numberWithUnsignedInt:HIDWORD(v256)];
  [v238 addObject:v211];

  v212 = [NSNumber numberWithUnsignedInt:v257];
  [v238 addObject:v212];

  v213 = [NSNumber numberWithUnsignedInt:DWORD1(v257)];
  [v238 addObject:v213];

  v214 = [NSNumber numberWithUnsignedInt:DWORD2(v257)];
  [v238 addObject:v214];

  v215 = [NSNumber numberWithUnsignedInt:HIDWORD(v257)];
  [v238 addObject:v215];

  v216 = [NSNumber numberWithUnsignedInt:v258];
  [v238 addObject:v216];

  v217 = [NSNumber numberWithUnsignedInt:DWORD1(v258)];
  [v238 addObject:v217];

  v218 = [NSNumber numberWithUnsignedInt:DWORD2(v258)];
  [v238 addObject:v218];

  v219 = [NSNumber numberWithUnsignedInt:HIDWORD(v258)];
  [v238 addObject:v219];

  v220 = [NSNumber numberWithUnsignedInt:v259];
  [v238 addObject:v220];

  v221 = [NSNumber numberWithUnsignedInt:DWORD1(v259)];
  [v238 addObject:v221];

  v222 = [NSNumber numberWithUnsignedInt:DWORD2(v259)];
  [v238 addObject:v222];

  v223 = [NSNumber numberWithUnsignedInt:HIDWORD(v259)];
  [v238 addObject:v223];

  [v236 setObject:v238 forKey:@"coex_total_grant_time_histogram"];
  v224 = [NSNumber numberWithUnsignedInt:LODWORD(v255[0])];
  [v237 addObject:v224];

  v225 = [NSNumber numberWithUnsignedInt:DWORD1(v255[0])];
  [v237 addObject:v225];

  v226 = [NSNumber numberWithUnsignedInt:DWORD2(v255[0])];
  [v237 addObject:v226];

  v227 = [NSNumber numberWithUnsignedInt:HIDWORD(v255[0])];
  [v237 addObject:v227];

  v228 = [NSNumber numberWithUnsignedInt:LODWORD(v255[1])];
  [v237 addObject:v228];

  v229 = [NSNumber numberWithUnsignedInt:DWORD1(v255[1])];
  [v237 addObject:v229];

  v230 = [NSNumber numberWithUnsignedInt:DWORD2(v255[1])];
  [v237 addObject:v230];

  v231 = [NSNumber numberWithUnsignedInt:HIDWORD(v255[1])];
  [v237 addObject:v231];

  v232 = [NSNumber numberWithUnsignedInt:LODWORD(v255[2])];
  [v237 addObject:v232];

  v233 = [NSNumber numberWithUnsignedInt:DWORD1(v255[2])];
  [v237 addObject:v233];

  v234 = [NSNumber numberWithUnsignedInt:DWORD2(v255[2])];
  [v237 addObject:v234];

  [v236 setObject:v237 forKey:@"coex_aborts_due_to_grant_revokes_histogram"];
  v5 = 0;
LABEL_332:

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v252, v253[0]);
  return v5;
}

void sub_10004971C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, char *a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a31, a32);
  _Unwind_Resume(a1);
}

uint64_t CAMetricsHandlers_handle_getprop_vendorcoex(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v177 = a2;
  v181 = a3;
  v188[0] = 0;
  v188[1] = 0;
  v187 = v188;
  v192 = 0;
  memset(v191, 0, sizeof(v191));
  memset(v190, 0, 60);
  xarray = v5;
  type = xpc_get_type(v5);
  v7 = +[NSMutableArray array];
  v179 = v7;
  v8 = +[NSMutableArray array];
  v180 = v8;
  if (type != &_xpc_type_array)
  {
    v9 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_vendorcoex();
    }

    v10 = 1;
    goto LABEL_282;
  }

  count = xpc_array_get_count(v5);
  v11 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = count;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "CAMetrics : now onto Coex array with size %ld.", &buf, 0xCu);
  }

  if (count)
  {
    v12 = 0;
    v9 = 0;
    v13 = 0;
    v175 = 0;
    v14 = 0;
    while (1)
    {
      v185 = v14;
      v15 = xpc_array_get_dictionary(xarray, v12);

      v9 = v15;
      string = xpc_dictionary_get_string(v15, "key");
      v14 = v185;
      v17 = string;
      v18 = strlen(string);
      if (v18 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v19 = v18;
      if (v18 >= 0x17)
      {
        operator new();
      }

      *(&buf.__r_.__value_.__s + 23) = v18;
      if (v18)
      {
        memmove(&buf, v17, v18);
      }

      buf.__r_.__value_.__s.__data_[v19] = 0;
      uint64 = xpc_dictionary_get_uint64(v9, "value");
      v21 = uint64;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0 && buf.__r_.__value_.__l.__size_ == 23)
      {
        if (*buf.__r_.__value_.__l.__data_ == 0x736E755F78656F63 && *(buf.__r_.__value_.__r.__words[0] + 8) == 0x6465746963696C6FLL && *(buf.__r_.__value_.__r.__words[0] + 15) == 0x73746E6172675F64)
        {
          v33 = uint64;
          if (uint64)
          {
            v34 = log10(uint64) + 1.0;
            v35 = v34 - 4;
            if (v34 <= 4)
            {
              v35 = 0;
            }

            v36 = v35;
          }

          else
          {
            v36 = 0.0;
          }

          v41 = __exp10(v36);
          v42 = [NSNumber numberWithUnsignedInt:(v41 * (v33 / v41))];
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          goto LABEL_62;
        }

        if (*buf.__r_.__value_.__l.__data_ == 0x5F78745F78656F63 && *(buf.__r_.__value_.__r.__words[0] + 8) == 0x725F6465696E6564 && *(buf.__r_.__value_.__r.__words[0] + 15) == 0x7374736575716572)
        {
          v37 = uint64;
          if (uint64)
          {
            v38 = log10(uint64) + 1.0;
            v39 = v38 - 4;
            if (v38 <= 4)
            {
              v39 = 0;
            }

            v40 = v39;
          }

          else
          {
            v40 = 0.0;
          }

          v65 = __exp10(v40);
          HIDWORD(v175) = (v65 * (v37 / v65));
          v66 = [NSNumber numberWithUnsignedInt:?];
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v67 = &buf;
          }

          else
          {
            v67 = buf.__r_.__value_.__r.__words[0];
          }

          v68 = [NSString stringWithUTF8String:v67];
          [v181 setObject:v66 forKey:v68];

          dword_10052A954 = v21;
          goto LABEL_237;
        }

        v184 = v9;
        if (*buf.__r_.__value_.__l.__data_ == 0x5F78725F78656F63 && *(buf.__r_.__value_.__r.__words[0] + 8) == 0x725F6465696E6564 && *(buf.__r_.__value_.__r.__words[0] + 15) == 0x7374736575716572)
        {
          v28 = uint64;
          if (uint64)
          {
            v29 = log10(uint64) + 1.0;
            v30 = v29 - 4;
            if (v29 <= 4)
            {
              v30 = 0;
            }

            v31 = v30;
          }

          else
          {
            v31 = 0.0;
          }

          v7 = v179;
          v8 = v180;
          v73 = __exp10(v31);
          LODWORD(v175) = (v73 * (v28 / v73));
          v74 = [NSNumber numberWithUnsignedInt:?];
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v75 = &buf;
          }

          else
          {
            v75 = buf.__r_.__value_.__r.__words[0];
          }

          v76 = [NSString stringWithUTF8String:v75];
          [v181 setObject:v74 forKey:v76];

          dword_10052A960 = v21;
          goto LABEL_237;
        }

        goto LABEL_121;
      }

      v184 = v9;
      if ((*(&buf.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        if (buf.__r_.__value_.__l.__size_ != 16)
        {
          if (buf.__r_.__value_.__l.__size_ != 24)
          {
            goto LABEL_121;
          }

LABEL_70:
          if (*buf.__r_.__value_.__l.__data_ == 0x5F78745F78656F63 && *(buf.__r_.__value_.__r.__words[0] + 8) == 0x5F6465746E617267 && *(buf.__r_.__value_.__r.__words[0] + 16) == 0x7374736575716572)
          {
            v61 = uint64;
            if (uint64)
            {
              v62 = log10(uint64) + 1.0;
              v63 = v62 - 4;
              if (v62 <= 4)
              {
                v63 = 0;
              }

              v64 = v63;
            }

            else
            {
              v64 = 0.0;
            }

            v7 = v179;
            v8 = v180;
            v115 = __exp10(v64);
            v13 = (v115 * (v61 / v115));
            v42 = [NSNumber numberWithUnsignedInt:v13];
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_buf = &buf;
            }

            else
            {
              p_buf = buf.__r_.__value_.__r.__words[0];
            }

LABEL_62:
            v44 = [NSString stringWithUTF8String:p_buf];
            [v181 setObject:v42 forKey:v44];

LABEL_237:
            v14 = v185;
            goto LABEL_238;
          }

          if (*buf.__r_.__value_.__l.__data_ == 0x5F78725F78656F63 && *(buf.__r_.__value_.__r.__words[0] + 8) == 0x5F6465746E617267 && *(buf.__r_.__value_.__r.__words[0] + 16) == 0x7374736575716572)
          {
            v52 = uint64;
            if (uint64)
            {
              v53 = log10(uint64) + 1.0;
              v54 = v53 - 4;
              if (v53 <= 4)
              {
                v54 = 0;
              }

              v55 = v54;
            }

            else
            {
              v55 = 0.0;
            }

            v7 = v179;
            v8 = v180;
            v120 = __exp10(v55);
            v14 = (v120 * (v52 / v120));
            v121 = [NSNumber numberWithUnsignedInt:v14];
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v122 = &buf;
            }

            else
            {
              v122 = buf.__r_.__value_.__r.__words[0];
            }

            v123 = [NSString stringWithUTF8String:v122];
            [v181 setObject:v121 forKey:v123];

            goto LABEL_238;
          }

          goto LABEL_121;
        }

        v32 = buf.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (HIBYTE(buf.__r_.__value_.__r.__words[2]) != 16)
        {
          goto LABEL_121;
        }

        v32 = &buf;
      }

      v46 = v32->__r_.__value_.__r.__words[0];
      size = v32->__r_.__value_.__l.__size_;
      if (v46 == 0x5F78745F78656F63 && size == 0x7374736575716572)
      {
        v56 = uint64;
        if (uint64)
        {
          v57 = log10(uint64) + 1.0;
          v58 = v57 - 4;
          if (v57 <= 4)
          {
            v58 = 0;
          }

          v59 = v58;
        }

        else
        {
          v59 = 0.0;
        }

        v7 = v179;
        v8 = v180;
        v69 = __exp10(v59);
        v70 = [NSNumber numberWithUnsignedInt:(v69 * (v56 / v69))];
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v71 = &buf;
        }

        else
        {
          v71 = buf.__r_.__value_.__r.__words[0];
        }

        v72 = [NSString stringWithUTF8String:v71];
        [v181 setObject:v70 forKey:v72];

        dword_10052A950 = v21;
        goto LABEL_237;
      }

      if ((*(&buf.__r_.__value_.__s + 23) & 0x80) != 0 && buf.__r_.__value_.__l.__size_ == 24)
      {
        goto LABEL_70;
      }

      if ((*(&buf.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        if (buf.__r_.__value_.__l.__size_ != 16)
        {
          goto LABEL_121;
        }

        v60 = buf.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (HIBYTE(buf.__r_.__value_.__r.__words[2]) != 16)
        {
          goto LABEL_121;
        }

        v60 = &buf;
      }

      v78 = v60->__r_.__value_.__r.__words[0];
      v77 = v60->__r_.__value_.__l.__size_;
      if (v78 == 0x5F78725F78656F63 && v77 == 0x7374736575716572)
      {
        v116 = uint64;
        if (uint64)
        {
          v117 = log10(uint64) + 1.0;
          v118 = v117 - 4;
          if (v117 <= 4)
          {
            v118 = 0;
          }

          v119 = v118;
        }

        else
        {
          v119 = 0.0;
        }

        v7 = v179;
        v8 = v180;
        v125 = __exp10(v119);
        v126 = [NSNumber numberWithUnsignedInt:(v125 * (v116 / v125))];
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v127 = &buf;
        }

        else
        {
          v127 = buf.__r_.__value_.__r.__words[0];
        }

        v128 = [NSString stringWithUTF8String:v127];
        [v181 setObject:v126 forKey:v128];

        dword_10052A95C = v21;
        goto LABEL_237;
      }

LABEL_121:
      v80 = std::string::find(&buf, 91, 0);
      v81 = std::string::find(&buf, 93, 0);
      v82 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      v83 = buf.__r_.__value_.__l.__size_;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v84 = &buf;
      }

      else
      {
        v84 = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v85 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v85 = buf.__r_.__value_.__l.__size_;
      }

      if (v85 >= 28)
      {
        v86 = v81;
        v176 = buf.__r_.__value_.__r.__words[0];
        v178 = v13;
        v87 = (v84 + v85);
        v88 = v85;
        v89 = v84;
        do
        {
          v90 = memchr(v89, 99, v88 - 27);
          if (!v90)
          {
            break;
          }

          if (v90->__r_.__value_.__r.__words[0] == 0x5F78725F78656F63 && v90->__r_.__value_.__l.__size_ == 0x69745F746E617267 && v90->__r_.__value_.__r.__words[2] == 0x6F747369685F656DLL && LODWORD(v90[1].__r_.__value_.__l.__data_) == 1835102823)
          {
            goto LABEL_143;
          }

          v89 = (&v90->__r_.__value_.__l.__data_ + 1);
          v88 = v87 - v89;
        }

        while (v87 - v89 > 27);
        v90 = (v84 + v85);
LABEL_143:
        v95 = v90 != v87 && v90 == v84;
        v96 = v84;
        do
        {
          v97 = memchr(v96, 99, v85 - 27);
          if (!v97)
          {
            break;
          }

          if (v97->__r_.__value_.__r.__words[0] == 0x5F78745F78656F63 && v97->__r_.__value_.__l.__size_ == 0x69745F746E617267 && v97->__r_.__value_.__r.__words[2] == 0x6F747369685F656DLL && LODWORD(v97[1].__r_.__value_.__l.__data_) == 1835102823)
          {
            goto LABEL_163;
          }

          v96 = (&v97->__r_.__value_.__l.__data_ + 1);
          v85 = v87 - v96;
        }

        while (v87 - v96 > 27);
        v97 = v87;
LABEL_163:
        v101 = v80 != -1 && v95;
        v9 = v184;
        if (v101 && v86 != -1)
        {
          if ((v82 & 0x80000000) != 0)
          {
            v8 = v180;
            v13 = v178;
            v102 = v176;
            if (v83 <= v80)
            {
LABEL_284:
              std::string::__throw_out_of_range[abi:ne200100]();
            }
          }

          else
          {
            v8 = v180;
            v13 = v178;
            if (v80 >= v82)
            {
              goto LABEL_284;
            }

            v102 = &buf;
            v83 = v82;
          }

          if (v83 - (v80 + 1) >= v86 - 1)
          {
            v104 = v86 - 1;
          }

          else
          {
            v104 = v83 - (v80 + 1);
          }

          if (v104 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v7 = v179;
          if (v104 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v104;
          if (v104)
          {
            memmove(&__dst, &v102->__r_.__value_.__l.__data_ + v80 + 1, v104);
          }

          v14 = v185;
          __dst.__r_.__value_.__s.__data_[v104] = 0;
          v105 = std::stoi(&__dst, 0, 10);
          if ((v105 & 0xFEu) <= 0xD)
          {
            if (v21)
            {
              v106 = log10(v21) + 1.0;
              v107 = v106 - 4;
              if (v106 <= 4)
              {
                v107 = 0;
              }

              v108 = v107;
            }

            else
            {
              v108 = 0.0;
            }

            v114 = __exp10(v108);
            *(v191 + v105) = (v114 * (v21 / v114));
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          goto LABEL_238;
        }

        v14 = v185;
        if (v97 == v87)
        {
          v7 = v179;
          v8 = v180;
          v13 = v178;
        }

        else
        {
          v13 = v178;
          if (v97 == v84)
          {
            v8 = v180;
            if (v80 != -1 && v86 != -1)
            {
              if ((v82 & 0x80000000) != 0)
              {
                v103 = v176;
                if (v83 <= v80)
                {
LABEL_286:
                  std::string::__throw_out_of_range[abi:ne200100]();
                }
              }

              else
              {
                if (v80 >= v82)
                {
                  goto LABEL_286;
                }

                v103 = &buf;
                v83 = v82;
              }

              if (v83 - (v80 + 1) >= v86 - 1)
              {
                v109 = v86 - 1;
              }

              else
              {
                v109 = v83 - (v80 + 1);
              }

              if (v109 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v7 = v179;
              if (v109 >= 0x17)
              {
                operator new();
              }

              *(&__dst.__r_.__value_.__s + 23) = v109;
              if (v109)
              {
                memmove(&__dst, &v103->__r_.__value_.__l.__data_ + v80 + 1, v109);
              }

              __dst.__r_.__value_.__s.__data_[v109] = 0;
              v110 = std::stoi(&__dst, 0, 10);
              if (v110 <= 0xE)
              {
                if (v21)
                {
                  v111 = log10(v21) + 1.0;
                  v112 = v111 - 4;
                  if (v111 <= 4)
                  {
                    v112 = 0;
                  }

                  v113 = v112;
                }

                else
                {
                  v113 = 0.0;
                }

                v124 = __exp10(v113);
                *(v190 + v110) = (v124 * (v21 / v124));
              }

              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
              }

              goto LABEL_237;
            }

            v7 = v179;
          }

          else
          {
            v7 = v179;
            v8 = v180;
          }
        }
      }

      else
      {
        v7 = v179;
        v8 = v180;
        v9 = v184;
      }

LABEL_238:
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (++v12 == count)
      {
        goto LABEL_241;
      }
    }
  }

  v175 = 0;
  v14 = 0;
  v13 = 0;
  v9 = 0;
LABEL_241:
  v129 = v14;
  for (i = 0; i != 56; i += 4)
  {
    v131 = *(v191 + i);
    v132 = v131;
    if (v131)
    {
      v133 = log10(v131) + 1.0;
      v134 = v133 - 4;
      if (v133 <= 4)
      {
        v134 = 0;
      }

      v135 = v134;
    }

    else
    {
      v135 = 0.0;
    }

    v136 = __exp10(v135);
    v137 = [NSNumber numberWithUnsignedInt:(v136 * (v132 / v136))];
    [v7 addObject:v137];
  }

  [v177 setObject:v7 forKey:@"coex_rx_grant_time_histogram"];
  for (j = 0; j != 60; j += 4)
  {
    v139 = *(v190 + j);
    v140 = v139;
    if (v139)
    {
      v141 = log10(v139) + 1.0;
      v142 = v141 - 4;
      if (v141 <= 4)
      {
        v142 = 0;
      }

      v143 = v142;
    }

    else
    {
      v143 = 0.0;
    }

    v144 = __exp10(v143);
    v145 = [NSNumber numberWithUnsignedInt:(v144 * (v140 / v144))];
    [v8 addObject:v145];
  }

  [v177 setObject:v8 forKey:@"coex_tx_grant_time_histogram"];
  v146 = v13 + HIDWORD(v175);
  if (v13 + HIDWORD(v175))
  {
    v147 = (100 * v13 / v146);
    v148 = 0.0;
    if (v146 > 100 * v13)
    {
      goto LABEL_262;
    }
  }

  else
  {
    v147 = 100.0;
  }

  v149 = log10(v147) + 1.0;
  v150 = v149 - 4;
  if (v149 <= 4)
  {
    v150 = 0;
  }

  v148 = v150;
LABEL_262:
  v151 = __exp10(v148);
  v152 = [NSNumber numberWithUnsignedInt:(v151 * (v147 / v151))];
  [v181 setObject:v152 forKey:@"coex_tx_granted_requests_percentage"];

  v153 = v129 + v175;
  if (!(v129 + v175))
  {
    v154 = 100.0;
    goto LABEL_266;
  }

  v154 = (100 * v129 / v153);
  v155 = 0.0;
  if (v153 <= 100 * v129)
  {
LABEL_266:
    v156 = log10(v154) + 1.0;
    v157 = v156 - 4;
    if (v156 <= 4)
    {
      v157 = 0;
    }

    v155 = v157;
  }

  v158 = __exp10(v155);
  v159 = [NSNumber numberWithUnsignedInt:(v158 * (v154 / v158))];
  [v181 setObject:v159 forKey:@"coex_rx_granted_requests_percentage"];

  v160 = 0.0;
  if (v146)
  {
    v161 = (100 * HIDWORD(v175) / v146);
    if (v146 <= 100 * HIDWORD(v175))
    {
      v162 = log10((100 * HIDWORD(v175) / v146)) + 1.0;
      v163 = v162 - 4;
      if (v162 <= 4)
      {
        v163 = 0;
      }

      v160 = v163;
    }
  }

  else
  {
    v161 = 0.0;
  }

  v164 = __exp10(v160);
  v165 = (v164 * (v161 / v164));
  v166 = [NSNumber numberWithUnsignedInt:v165];
  [v181 setObject:v166 forKey:@"coex_tx_denied_requests_percentage"];

  v167 = 0.0;
  if (v153)
  {
    v168 = (100 * v175 / v153);
    if (v153 <= 100 * v175)
    {
      v169 = log10((100 * v175 / v153)) + 1.0;
      v170 = v169 - 4;
      if (v169 <= 4)
      {
        v170 = 0;
      }

      v167 = v170;
    }
  }

  else
  {
    v168 = 0.0;
  }

  v171 = __exp10(v167);
  v172 = (v171 * (v168 / v171));
  v173 = [NSNumber numberWithUnsignedInt:v172];
  [v181 setObject:v173 forKey:@"coex_rx_denied_requests_percentage"];

  v10 = 0;
  dword_10052A964 = v172;
  dword_10052A958 = v165;
LABEL_282:

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v187, v188[0]);
  return v10;
}

void sub_10004AB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, char *a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a27, a28);
  _Unwind_Resume(a1);
}

size_t CAMetricsHandlers_handle_getprop_threadmle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  xarray = v3;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v3);
    v8 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = count;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CAMetrics : CAMetricsHandlers_handle_getprop_threadmle - reading array with size %ld.", buf, 0xCu);
    }

    if (count)
    {
      v9 = 0;
      v6 = 0;
      do
      {
        v10 = xpc_array_get_dictionary(xarray, v9);

        v6 = v10;
        string = xpc_dictionary_get_string(v10, "key");
        v12 = strlen(string);
        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v13 = v12;
        if (v12 >= 0x17)
        {
          operator new();
        }

        v35 = v12;
        if (v12)
        {
          memmove(buf, string, v12);
        }

        buf[v13] = 0;
        uint64 = xpc_dictionary_get_uint64(v10, "value");
        v15 = uint64;
        if (uint64)
        {
          v16 = log10(uint64) + 1.0;
          v17 = v16 - 3;
          if (v16 <= 3)
          {
            v17 = 0;
          }

          v18 = v17;
        }

        else
        {
          v18 = 0.0;
        }

        v19 = __exp10(v18);
        v20 = [NSNumber numberWithUnsignedInt:(v19 * (v15 / v19))];
        if (v35 >= 0)
        {
          v21 = buf;
        }

        else
        {
          v21 = *buf;
        }

        v22 = [NSString stringWithUTF8String:v21];
        [v4 setObject:v20 forKey:v22];

        if (v35 < 0)
        {
          operator delete(*buf);
        }

        ++v9;
      }

      while (count != v9);
      count = 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_threadmle();
    }

    v6 = 0;
    count = 1;
  }

  v23 = [v4 objectForKey:@"disabled_role_count"];
  dword_10052A92C = [v23 unsignedIntValue];

  v24 = [v4 objectForKey:@"detached_role_count"];
  dword_10052A930 = [v24 unsignedIntValue];

  v25 = [v4 objectForKey:@"child_role_count"];
  dword_10052A934 = [v25 unsignedIntValue];

  v26 = [v4 objectForKey:@"router_role_count"];
  dword_10052A938 = [v26 unsignedIntValue];

  v27 = [v4 objectForKey:@"leader_role_count"];
  dword_10052A93C = [v27 unsignedIntValue];

  v28 = [v4 objectForKey:@"attach_attempts"];
  dword_10052A940 = [v28 unsignedIntValue];

  v29 = [v4 objectForKey:@"better_partition_attach_attempts"];
  dword_10052A948 = [v29 unsignedIntValue];

  v30 = [v4 objectForKey:@"partition_id_changes_count"];
  dword_10052A944 = [v30 unsignedIntValue];

  v31 = [v4 objectForKey:@"parent_changes_count"];
  dword_10052A94C = [v31 unsignedIntValue];

  return count;
}

uint64_t CAMetricsHandlers_handle_getprop_matter_subscription_histograms(void *a1, void *a2)
{
  v3 = a1;
  v77 = a2;
  v89 = 0;
  memset(v88, 0, sizeof(v88));
  memset(v87, 0, sizeof(v87));
  v78 = v3;
  v83 = +[NSMutableArray array];
  v82 = +[NSMutableArray array];
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_matter_subscription_histograms();
    }

    v5 = 0;
    v6 = 1;
    goto LABEL_160;
  }

  count = xpc_array_get_count(v3);
  if (count)
  {
    v8 = 0;
    v5 = 0;
    v80 = count;
    while (1)
    {
      v9 = xpc_array_get_dictionary(v3, v8);

      v10 = v9;
      v84 = v9;
      string = xpc_dictionary_get_string(v9, "key");
      v12 = strlen(string);
      if (v12 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v12;
      if (v12)
      {
        memmove(&__dst, string, v12);
      }

      __dst.__r_.__value_.__s.__data_[v13] = 0;
      uint64 = xpc_dictionary_get_uint64(v10, "value");
      v81 = std::string::find(&__dst, 91, 0);
      v15 = std::string::find(&__dst, 93, 0);
      v16 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      size = __dst.__r_.__value_.__l.__size_;
      v17 = __dst.__r_.__value_.__r.__words[0];
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = __dst.__r_.__value_.__l.__size_;
      }

      if (v20 < 31)
      {
        goto LABEL_7;
      }

      v79 = v15;
      v21 = (p_dst + v20);
      v22 = v20;
      v23 = p_dst;
      do
      {
        v24 = memchr(v23, 109, v22 - 30);
        if (!v24)
        {
          break;
        }

        if (v24->__r_.__value_.__r.__words[0] == 0x745F72657474616DLL && v24->__r_.__value_.__l.__size_ == 0x6275735F6C61746FLL && v24->__r_.__value_.__r.__words[2] == 0x6F69747069726373 && *(&v24->__r_.__value_.__r.__words[2] + 7) == 0x746E756F635F6E6FLL)
        {
          goto LABEL_36;
        }

        v23 = (&v24->__r_.__value_.__l.__data_ + 1);
        v22 = v21 - v23;
      }

      while (v21 - v23 > 30);
      v24 = (p_dst + v20);
LABEL_36:
      v28 = v24 != v21 && v24 == p_dst;
      v29 = v28;
      if (v20 >= 35)
      {
        break;
      }

      v3 = v78;
      if (v29)
      {
        goto LABEL_88;
      }

LABEL_7:
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        ++v8;
        v5 = v84;
        if (v8 == v80)
        {
          goto LABEL_155;
        }
      }

      else
      {
        ++v8;
        v5 = v84;
        if (v8 == v80)
        {
          goto LABEL_155;
        }
      }
    }

    v30 = v20;
    v31 = p_dst;
    do
    {
      v32 = memchr(v31, 109, v30 - 34);
      if (!v32)
      {
        break;
      }

      if (v32->__r_.__value_.__r.__words[0] == 0x735F72657474616DLL && v32->__r_.__value_.__l.__size_ == 0x7470697263736275 && v32->__r_.__value_.__r.__words[2] == 0x6E756F635F6E6F69 && v32[1].__r_.__value_.__r.__words[0] == 0x676F747369685F74 && *(v32[1].__r_.__value_.__r.__words + 3) == 0x6D6172676F747369)
      {
        goto LABEL_64;
      }

      v31 = (&v32->__r_.__value_.__l.__data_ + 1);
      v30 = v21 - v31;
    }

    while (v21 - v31 >= 35);
    v32 = (p_dst + v20);
LABEL_64:
    v38 = v32 != v21 && v32 == p_dst;
    v76 = v38;
    if (v20 < 38)
    {
LABEL_87:
      v3 = v78;
      v45 = v79;
      if (!v29)
      {
        v49 = 0;
LABEL_93:
        v50 = v76;
        if (v81 == -1)
        {
          v50 = 0;
        }

        if (!v50 || v45 == -1)
        {
          if (v81 == -1)
          {
            v49 = 0;
          }

          if (!v49 || v45 == -1)
          {
            goto LABEL_7;
          }

          if ((v16 & 0x80000000) != 0)
          {
            v53 = v81;
            if (size <= v81)
            {
LABEL_164:
              std::string::__throw_out_of_range[abi:ne200100]();
            }
          }

          else
          {
            v53 = v81;
            if (v81 >= v16)
            {
              goto LABEL_164;
            }

            v17 = &__dst;
            size = v16;
          }

          v60 = v53 + 1;
          if (size - (v53 + 1) >= v45 - 1)
          {
            v61 = v45 - 1;
          }

          else
          {
            v61 = size - v60;
          }

          if (v61 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v61 >= 0x17)
          {
            operator new();
          }

          *(&__str.__r_.__value_.__s + 23) = v61;
          if (v61)
          {
            memmove(&__str, v17 + v60, v61);
          }

          __str.__r_.__value_.__s.__data_[v61] = 0;
          v62 = std::stoi(&__str, 0, 10);
          if ((v62 & 0xFCu) <= 0x63)
          {
            if (uint64)
            {
              v63 = log10(uint64) + 1.0;
              v64 = v63 - 3;
              if (v63 <= 3)
              {
                v64 = 0;
              }

              v65 = v64;
            }

            else
            {
              v65 = 0.0;
            }

            v70 = __exp10(v65);
            v67 = (v70 * (uint64 / v70));
            v68 = v62;
            v69 = v87;
LABEL_151:
            *(v69 + v68) = v67;
          }
        }

        else
        {
          if ((v16 & 0x80000000) != 0)
          {
            if (size <= v81)
            {
LABEL_162:
              std::string::__throw_out_of_range[abi:ne200100]();
            }
          }

          else
          {
            if (v81 >= v16)
            {
              goto LABEL_162;
            }

            v17 = &__dst;
            size = v16;
          }

          if (size - (v81 + 1) >= v45 - 1)
          {
            v55 = v45 - 1;
          }

          else
          {
            v55 = size - (v81 + 1);
          }

          if (v55 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v55 >= 0x17)
          {
            operator new();
          }

          *(&__str.__r_.__value_.__s + 23) = v55;
          if (v55)
          {
            memmove(&__str, &v17->__r_.__value_.__l.__data_ + v81 + 1, v55);
          }

          __str.__r_.__value_.__s.__data_[v55] = 0;
          v56 = std::stoi(&__str, 0, 10);
          if ((v56 & 0xFEu) <= 0x31)
          {
            if (uint64)
            {
              v57 = log10(uint64) + 1.0;
              v58 = v57 - 3;
              if (v57 <= 3)
              {
                v58 = 0;
              }

              v59 = v58;
            }

            else
            {
              v59 = 0.0;
            }

            v66 = __exp10(v59);
            v67 = (v66 * (uint64 / v66));
            v68 = v56;
            v69 = v88;
            goto LABEL_151;
          }
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_7;
      }
    }

    else
    {
      v39 = p_dst;
      while (1)
      {
        v40 = memchr(v39, 109, v20 - 37);
        if (!v40)
        {
          goto LABEL_87;
        }

        v41 = v40->__r_.__value_.__r.__words[0] == 0x735F72657474616DLL && v40->__r_.__value_.__l.__size_ == 0x7470697263736275;
        v42 = v41 && v40->__r_.__value_.__r.__words[2] == 0x65746E695F6E6F69;
        v43 = v42 && v40[1].__r_.__value_.__r.__words[0] == 0x7369685F6C617672;
        if (v43 && *(v40[1].__r_.__value_.__r.__words + 6) == 0x6D6172676F747369)
        {
          break;
        }

        v39 = (&v40->__r_.__value_.__l.__data_ + 1);
        v20 = v21 - v39;
        if (v21 - v39 <= 37)
        {
          goto LABEL_87;
        }
      }

      v49 = v40 != v21 && v40 == p_dst;
      v3 = v78;
      v45 = v79;
      if (!v29)
      {
        goto LABEL_93;
      }
    }

LABEL_88:
    if (uint64)
    {
      v46 = log10(uint64) + 1.0;
      v47 = v46 - 3;
      if (v46 <= 3)
      {
        v47 = 0;
      }

      v48 = v47;
    }

    else
    {
      v48 = 0.0;
    }

    v51 = __exp10(v48);
    v52 = [NSNumber numberWithUnsignedInt:(v51 * (uint64 / v51))];
    [v77 setObject:v52 forKey:@"matter_total_subscription_count"];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_155:
  for (i = 0; i != 200; i += 4)
  {
    v72 = [NSNumber numberWithUnsignedInt:*(v88 + i)];
    [v83 addObject:v72];
  }

  for (j = 0; j != 400; j += 4)
  {
    v74 = [NSNumber numberWithUnsignedInt:*(v87 + j)];
    [v82 addObject:v74];
  }

  [v77 setObject:v83 forKey:@"matter_subscription_count_histogram"];
  [v77 setObject:v82 forKey:@"matter_subscription_interval_histogram"];
  v6 = 0;
LABEL_160:

  return v6;
}

void sub_10004BB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CAMetricsHandlers_handle_getprop_allipv6(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v3);
    v8 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = count;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CAMetrics : CAMetricsHandlers_handle_getprop_allipv6 - reading array with size %ld.", &buf, 0xCu);
    }

    if (count)
    {
      v9 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v122 = 0;
      v118 = 0;
      v5 = 0;
      while (1)
      {
        v10 = xpc_array_get_dictionary(v3, v9);

        v5 = v10;
        string = xpc_dictionary_get_string(v10, "key");
        v12 = strlen(string);
        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v13 = v12;
        if (v12 >= 0x17)
        {
          operator new();
        }

        v125 = v12;
        if (v12)
        {
          memmove(&buf, string, v12);
        }

        *(&buf + v13) = 0;
        uint64 = xpc_dictionary_get_uint64(v10, "value");
        v15 = uint64;
        if (v125 < 0)
        {
          if (*(&buf + 1) != 10)
          {
            goto LABEL_52;
          }

          if (*buf != 0x65636375735F7874 || *(buf + 8) != 29555)
          {
            if (*buf != 0x756C6961665F7874 || *(buf + 8) != 25970)
            {
              if (*buf != 0x65636375735F7872 || *(buf + 8) != 29555)
              {
                if (*buf != 0x756C6961665F7872 || *(buf + 8) != 25970)
                {
LABEL_52:
                  if (*(&buf + 1) == 18)
                  {
                    if (*buf == 0x705F7070615F7874 && *(buf + 8) == 0x65636375735F746BLL && *(buf + 16) == 29555)
                    {
                      goto LABEL_98;
                    }

                    if ((v125 & 0x80) == 0)
                    {
                      if (v125 != 11)
                      {
                        if (v125 != 18)
                        {
                          goto LABEL_175;
                        }

LABEL_27:
                        if (buf != 0x705F7070615F7874 || *(&buf + 1) != 0x756C6961665F746BLL || v124 != 25970)
                        {
                          goto LABEL_175;
                        }

LABEL_138:
                        v64 = uint64;
                        if (uint64)
                        {
                          v65 = log10(uint64) + 1.0;
                          v66 = v65 - 3;
                          if (v65 <= 3)
                          {
                            v66 = 0;
                          }

                          v67 = v66;
                        }

                        else
                        {
                          v67 = 0.0;
                        }

                        v69 = __exp10(v67);
                        HIDWORD(v120) = (v69 * (v64 / v69));
                        v50 = v15;
                        if (v15)
                        {
                          goto LABEL_176;
                        }

                        goto LABEL_181;
                      }

LABEL_64:
                      if (buf != 0x79616C65645F7874 || *(&buf + 3) != 0x6E696D79616C6564)
                      {
                        goto LABEL_68;
                      }

LABEL_134:
                      v60 = uint64;
                      if (uint64)
                      {
                        v61 = log10(uint64) + 1.0;
                        v62 = v61 - 3;
                        if (v61 <= 3)
                        {
                          v62 = 0;
                        }

                        v63 = v62;
                      }

                      else
                      {
                        v63 = 0.0;
                      }

                      v68 = __exp10(v63);
                      LODWORD(v121) = (v68 * (v60 / v68));
                      v50 = v15;
                      if (v15)
                      {
                        goto LABEL_176;
                      }

                      goto LABEL_181;
                    }

                    if (*buf == 0x705F7070615F7874 && *(buf + 8) == 0x756C6961665F746BLL && *(buf + 16) == 25970)
                    {
                      goto LABEL_138;
                    }
                  }

                  if (*(&buf + 1) != 11)
                  {
                    goto LABEL_152;
                  }

                  if (*buf != 0x79616C65645F7874 || *(buf + 3) != 0x6E696D79616C6564)
                  {
                    if (v125 < 0)
                    {
                      if (*buf != 0x79616C65645F7874 || *(buf + 3) != 0x78616D79616C6564)
                      {
LABEL_152:
                        if (*(&buf + 1) == 11)
                        {
                          p_buf = buf;
                          goto LABEL_154;
                        }

LABEL_175:
                        v50 = v15;
                        if (v15)
                        {
                          goto LABEL_176;
                        }

                        goto LABEL_181;
                      }
                    }

                    else
                    {
                      if (v125 != 11)
                      {
                        goto LABEL_175;
                      }

LABEL_68:
                      if (buf != 0x79616C65645F7874 || *(&buf + 3) != 0x78616D79616C6564)
                      {
                        p_buf = &buf;
LABEL_154:
                        v71 = *p_buf;
                        v72 = *(p_buf + 3);
                        if (v71 == 0x79616C65645F7874 && v72 == 0x67766179616C6564)
                        {
                          v74 = uint64;
                          if (uint64)
                          {
                            v75 = log10(uint64) + 1.0;
                            v76 = v75 - 3;
                            if (v75 <= 3)
                            {
                              v76 = 0;
                            }

                            v77 = v76;
                          }

                          else
                          {
                            v77 = 0.0;
                          }

                          v84 = __exp10(v77);
                          v118 = (v84 * (v74 / v84));
                        }

                        goto LABEL_175;
                      }
                    }

                    v78 = uint64;
                    if (uint64)
                    {
                      v79 = log10(uint64) + 1.0;
                      v80 = v79 - 3;
                      if (v79 <= 3)
                      {
                        v80 = 0;
                      }

                      v81 = v80;
                    }

                    else
                    {
                      v81 = 0.0;
                    }

                    v82 = __exp10(v81);
                    LODWORD(v119) = (v82 * (v78 / v82));
                    v50 = v15;
                    if (v15)
                    {
                      goto LABEL_176;
                    }

                    goto LABEL_181;
                  }

                  goto LABEL_134;
                }

                goto LABEL_90;
              }

              goto LABEL_112;
            }

            goto LABEL_102;
          }
        }

        else
        {
          if (v125 != 10)
          {
            if (v125 != 11)
            {
              if (v125 != 18)
              {
                goto LABEL_175;
              }

              if (buf != 0x705F7070615F7874 || *(&buf + 1) != 0x65636375735F746BLL || v124 != 29555)
              {
                goto LABEL_27;
              }

LABEL_98:
              v41 = uint64;
              if (uint64)
              {
                v42 = log10(uint64) + 1.0;
                v43 = v42 - 3;
                if (v42 <= 3)
                {
                  v43 = 0;
                }

                v44 = v43;
              }

              else
              {
                v44 = 0.0;
              }

              v51 = __exp10(v44);
              LODWORD(v122) = (v51 * (v41 / v51));
              v50 = v15;
              if (v15)
              {
                goto LABEL_176;
              }

              goto LABEL_181;
            }

            goto LABEL_64;
          }

          if (buf != 0x65636375735F7874 || WORD4(buf) != 29555)
          {
            if (buf != 0x756C6961665F7874 || WORD4(buf) != 25970)
            {
              if (buf != 0x65636375735F7872 || WORD4(buf) != 29555)
              {
                if (buf != 0x756C6961665F7872 || WORD4(buf) != 25970)
                {
                  goto LABEL_175;
                }

LABEL_90:
                v33 = uint64;
                if (uint64)
                {
                  v34 = log10(uint64) + 1.0;
                  v35 = v34 - 3;
                  if (v34 <= 3)
                  {
                    v35 = 0;
                  }

                  v36 = v35;
                }

                else
                {
                  v36 = 0.0;
                }

                v88 = __exp10(v36);
                HIDWORD(v119) = (v88 * (v33 / v88));
                v50 = v15;
                if (v15)
                {
                  goto LABEL_176;
                }

                goto LABEL_181;
              }

LABEL_112:
              v52 = uint64;
              if (uint64)
              {
                v53 = log10(uint64) + 1.0;
                v54 = v53 - 3;
                if (v53 <= 3)
                {
                  v54 = 0;
                }

                v55 = v54;
              }

              else
              {
                v55 = 0.0;
              }

              v83 = __exp10(v55);
              LODWORD(v120) = (v83 * (v52 / v83));
              v50 = v15;
              if (v15)
              {
                goto LABEL_176;
              }

              goto LABEL_181;
            }

LABEL_102:
            v45 = uint64;
            if (uint64)
            {
              v46 = log10(uint64) + 1.0;
              v47 = v46 - 3;
              if (v46 <= 3)
              {
                v47 = 0;
              }

              v48 = v47;
            }

            else
            {
              v48 = 0.0;
            }

            v56 = __exp10(v48);
            HIDWORD(v121) = (v56 * (v45 / v56));
            v50 = v15;
            if (v15)
            {
              goto LABEL_176;
            }

            goto LABEL_181;
          }
        }

        v37 = uint64;
        if (uint64)
        {
          v38 = log10(uint64) + 1.0;
          v39 = v38 - 3;
          if (v38 <= 3)
          {
            v39 = 0;
          }

          v40 = v39;
        }

        else
        {
          v40 = 0.0;
        }

        v49 = __exp10(v40);
        HIDWORD(v122) = (v49 * (v37 / v49));
        v50 = v15;
        if (v15)
        {
LABEL_176:
          v85 = log10(v50) + 1.0;
          v86 = v85 - 3;
          if (v85 <= 3)
          {
            v86 = 0;
          }

          v87 = v86;
          goto LABEL_182;
        }

LABEL_181:
        v87 = 0.0;
LABEL_182:
        v89 = __exp10(v87);
        v90 = [NSNumber numberWithUnsignedInt:(v89 * (v50 / v89))];
        if (v125 >= 0)
        {
          v91 = &buf;
        }

        else
        {
          v91 = buf;
        }

        v92 = [NSString stringWithUTF8String:v91];
        [v4 setObject:v90 forKey:v92];

        if (v125 < 0)
        {
          operator delete(buf);
        }

        if (count == ++v9)
        {
          goto LABEL_188;
        }
      }
    }

    v5 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
LABEL_188:
    v93 = HIDWORD(v121) + HIDWORD(v122);
    if (HIDWORD(v121) + HIDWORD(v122))
    {
      v94 = (100 * HIDWORD(v122) / v93);
      v95 = 0.0;
      if (v93 > 100 * HIDWORD(v122))
      {
        goto LABEL_195;
      }
    }

    else
    {
      v94 = 100.0;
    }

    v96 = log10(v94) + 1.0;
    v97 = v96 - 4;
    if (v96 <= 4)
    {
      v97 = 0;
    }

    v95 = v97;
LABEL_195:
    v98 = __exp10(v95);
    v99 = (v98 * (v94 / v98));
    v100 = [NSNumber numberWithUnsignedInt:v99];
    [v4 setObject:v100 forKey:@"tx_success_rate"];

    v101 = HIDWORD(v120) + v122;
    if (HIDWORD(v120) + v122)
    {
      v102 = (100 * v122 / v101);
      v103 = 0.0;
      if (v101 > 100 * v122)
      {
        goto LABEL_202;
      }
    }

    else
    {
      v102 = 100.0;
    }

    v104 = log10(v102) + 1.0;
    v105 = v104 - 4;
    if (v104 <= 4)
    {
      v105 = 0;
    }

    v103 = v105;
LABEL_202:
    v106 = __exp10(v103);
    v107 = (v106 * (v102 / v106));
    v108 = [NSNumber numberWithUnsignedInt:v107];
    [v4 setObject:v108 forKey:@"tx_app_success_perc"];

    v109 = HIDWORD(v119) + v120;
    if (HIDWORD(v119) + v120)
    {
      v110 = (100 * v120 / v109);
      v111 = 0.0;
      if (v109 > 100 * v120)
      {
LABEL_209:
        v114 = __exp10(v111);
        v115 = (v114 * (v110 / v114));
        v116 = [NSNumber numberWithUnsignedInt:v115];
        [v4 setObject:v116 forKey:@"rx_success_rate"];

        v6 = 0;
        dword_10052A8F4 = HIDWORD(v122);
        unk_10052A8F8 = HIDWORD(v121);
        dword_10052A8FC = v122;
        unk_10052A900 = HIDWORD(v120);
        dword_10052A904 = v120;
        unk_10052A908 = HIDWORD(v119);
        dword_10052A910 = v107;
        dword_10052A914 = v115;
        dword_10052A90C = v99;
        dword_10052A920 = v121;
        dword_10052A924 = v119;
        dword_10052A928 = v118;
        goto LABEL_210;
      }
    }

    else
    {
      v110 = 100.0;
    }

    v112 = log10(v110) + 1.0;
    v113 = v112 - 4;
    if (v112 <= 4)
    {
      v113 = 0;
    }

    v111 = v113;
    goto LABEL_209;
  }

  v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    CAMetricsHandlers_handle_getprop_allipv6();
  }

  v6 = 1;
LABEL_210:

  return v6;
}

uint64_t CAMetricsHandlers_handle_getprop_trel_link_counters(void *a1, void *a2)
{
  v3 = a1;
  v74 = a2;
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_trel_link_counters();
    }

    v5 = 1;
    goto LABEL_121;
  }

  count = xpc_array_get_count(v3);
  v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = count;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CAMetrics : CAMetricsHandlers_handle_getprop_trel_link_counters - reading array with size %ld.", buf, 0xCu);
  }

  if (!count)
  {
    v59 = 0;
    v4 = 0;
    v60 = 0.0;
LABEL_114:
    v63 = 0.0;
    goto LABEL_115;
  }

  v8 = 0;
  v72 = 0;
  v73 = 0;
  v4 = 0;
  do
  {
    v9 = xpc_array_get_dictionary(v3, v8);

    v4 = v9;
    string = xpc_dictionary_get_string(v9, "key");
    v11 = strlen(string);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      operator new();
    }

    v76 = v11;
    if (v11)
    {
      memmove(buf, string, v11);
    }

    buf[v12] = 0;
    uint64 = xpc_dictionary_get_uint64(v9, "value");
    v14 = uint64;
    if (v76 < 0)
    {
      if (*&buf[8] == 12)
      {
        if (**buf == 0x5F6C6572745F7874 && *(*buf + 8) == 1937009520)
        {
          goto LABEL_74;
        }
      }

      else if (*&buf[8] == 22)
      {
        v18 = **buf == 0x5F6C6572745F7874 && *(*buf + 8) == 0x73616364616F7262;
        if (v18 && *(*buf + 14) == 0x73746B705F747361)
        {
          goto LABEL_37;
        }
      }

      if (*&buf[8] != 22)
      {
        if (*&buf[8] != 12 || (**buf == 0x5F6C6572745F7872 ? (v27 = *(*buf + 8) == 1937009520) : (v27 = 0), !v27))
        {
LABEL_70:
          v33 = uint64;
          if (!uint64)
          {
            goto LABEL_88;
          }

          goto LABEL_71;
        }

        goto LABEL_82;
      }

      v17 = *buf;
    }

    else
    {
      if (v76 == 12)
      {
        if (*buf == 0x5F6C6572745F7874 && *&buf[8] == 1937009520)
        {
LABEL_74:
          v37 = uint64;
          if (uint64)
          {
            v38 = log10(uint64) + 1.0;
            v39 = v38 - 3;
            if (v38 <= 3)
            {
              v39 = 0;
            }

            v40 = v39;
          }

          else
          {
            v40 = 0.0;
          }

          v54 = __exp10(v40);
          LODWORD(v73) = (v54 * (v37 / v54));
          v33 = v14;
          if (!v14)
          {
LABEL_88:
            v36 = 0.0;
            goto LABEL_89;
          }

          goto LABEL_71;
        }

        if (*buf != 0x5F6C6572745F7872 || *&buf[8] != 1937009520)
        {
          goto LABEL_70;
        }

LABEL_82:
        v45 = uint64;
        if (uint64)
        {
          v46 = log10(uint64) + 1.0;
          v47 = v46 - 3;
          if (v46 <= 3)
          {
            v47 = 0;
          }

          v48 = v47;
        }

        else
        {
          v48 = 0.0;
        }

        v56 = __exp10(v48);
        LODWORD(v72) = (v56 * (v45 / v56));
        v33 = v14;
        if (!v14)
        {
          goto LABEL_88;
        }

        goto LABEL_71;
      }

      if (v76 != 22)
      {
        goto LABEL_70;
      }

      if (*buf == 0x5F6C6572745F7874 && *&buf[8] == 0x73616364616F7262 && *&buf[14] == 0x73746B705F747361)
      {
LABEL_37:
        v20 = uint64;
        if (uint64)
        {
          v21 = log10(uint64) + 1.0;
          v22 = v21 - 3;
          if (v21 <= 3)
          {
            v22 = 0;
          }

          v23 = v22;
        }

        else
        {
          v23 = 0.0;
        }

        v49 = __exp10(v23);
        HIDWORD(v73) = (v49 * (v20 / v49));
        v33 = v14;
        if (!v14)
        {
          goto LABEL_88;
        }

        goto LABEL_71;
      }

      v17 = buf;
    }

    v28 = *v17;
    v29 = v17[1];
    v30 = *(v17 + 14);
    if (v28 != 0x5F6C6572745F7872 || v29 != 0x73616364616F7262 || v30 != 0x73746B705F747361)
    {
      goto LABEL_70;
    }

    v41 = uint64;
    if (uint64)
    {
      v42 = log10(uint64) + 1.0;
      v43 = v42 - 3;
      if (v42 <= 3)
      {
        v43 = 0;
      }

      v44 = v43;
    }

    else
    {
      v44 = 0.0;
    }

    v55 = __exp10(v44);
    HIDWORD(v72) = (v55 * (v41 / v55));
    v33 = v14;
    if (!v14)
    {
      goto LABEL_88;
    }

LABEL_71:
    v34 = log10(v33) + 1.0;
    v35 = v34 - 3;
    if (v34 <= 3)
    {
      v35 = 0;
    }

    v36 = v35;
LABEL_89:
    v50 = __exp10(v36);
    v51 = [NSNumber numberWithUnsignedInt:(v50 * (v33 / v50))];
    if (v76 >= 0)
    {
      v52 = buf;
    }

    else
    {
      v52 = *buf;
    }

    v53 = [NSString stringWithUTF8String:v52];
    [v74 setObject:v51 forKey:v53];

    if (v76 < 0)
    {
      operator delete(*buf);
    }

    ++v8;
  }

  while (count != v8);
  v57 = 0;
  v58 = HIDWORD(v72) + v72;
  if (HIDWORD(v73) + v73 && dword_10052A918)
  {
    v57 = 100 * (HIDWORD(v73) + v73) / dword_10052A918;
  }

  v59 = 0;
  if (v58 && dword_10052A91C)
  {
    v59 = 100 * v58 / dword_10052A91C;
  }

  v60 = v57;
  if (!v57)
  {
    goto LABEL_114;
  }

  v61 = log10(v57) + 1.0;
  v62 = v61 - 3;
  if (v61 <= 3)
  {
    v62 = 0;
  }

  v63 = v62;
LABEL_115:
  v64 = __exp10(v63);
  v65 = [NSNumber numberWithUnsignedInt:(v64 * (v60 / v64))];
  [v74 setObject:v65 forKey:@"tx_trel_traffic_percentage"];

  if (v59)
  {
    v66 = log10(v59) + 1.0;
    v67 = v66 - 3;
    if (v66 <= 3)
    {
      v67 = 0;
    }

    v68 = v67;
  }

  else
  {
    v68 = 0.0;
  }

  v69 = __exp10(v68);
  v70 = [NSNumber numberWithUnsignedInt:(v69 * (v59 / v69))];
  [v74 setObject:v70 forKey:@"rx_trel_traffic_percentage"];

  v5 = 0;
LABEL_121:

  return v5;
}

uint64_t convertTriggerIdToString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    a2[23] = 18;
    strcpy(a2, "HK_READ_WRITE_FAIL");
  }

  else
  {
    if (!result)
    {
      operator new();
    }

    a2[23] = 22;
    strcpy(a2, "HK_PERIODIC_STATE_DUMP");
  }

  return result;
}

uint64_t convertTriggerTypeToString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    a2[23] = 16;
    strcpy(a2, "TRIGGER_TYPE_TTR");
  }

  else if (result)
  {
    a2[23] = 16;
    strcpy(a2, "TRIGGER_TYPE_ABC");
  }

  else
  {
    a2[23] = 15;
    strcpy(a2, "TRIGGER_TYPE_CA");
  }

  return result;
}

void populateAndSubmitTriggerBasedCAEvent(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5)
{
  v366 = a1;
  v7 = a5;
  v8 = &s_CATriggerBasedInternalDB + 13848 * a4;
  v9 = *(v8 + 54);
  v10 = v9;
  if (v9)
  {
    v11 = log10(v9) + 1.0;
    v12 = v11 - 4;
    if (v11 <= 4)
    {
      v12 = 0;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = __exp10(v13);
  v15 = [NSNumber numberWithUnsignedInt:(v14 * (v10 / v14))];
  v16 = [v7 stringByAppendingString:@"ca_trigger_based_counters_num_firmware_resets"];
  [v366 setObject:v15 forKey:v16];

  v17 = *(v8 + 55);
  v18 = v17;
  if (v17)
  {
    v19 = log10(v17) + 1.0;
    v20 = v19 - 4;
    if (v19 <= 4)
    {
      v20 = 0;
    }

    v21 = v20;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = __exp10(v21);
  v23 = [NSNumber numberWithUnsignedInt:(v22 * (v18 / v22))];
  v24 = [v7 stringByAppendingString:@"ca_trigger_based_counters_num_daemon_restart_due_to_reboots"];
  [v366 setObject:v23 forKey:v24];

  v25 = *(v8 + 56);
  v26 = v25;
  if (v25)
  {
    v27 = log10(v25) + 1.0;
    v28 = v27 - 4;
    if (v27 <= 4)
    {
      v28 = 0;
    }

    v29 = v28;
  }

  else
  {
    v29 = 0.0;
  }

  v30 = __exp10(v29);
  v31 = [NSNumber numberWithUnsignedInt:(v30 * (v26 / v30))];
  v32 = [v7 stringByAppendingString:@"ca_trigger_based_counters_num_daemon_restart_due_to_crashes_or_jetsams"];
  [v366 setObject:v31 forKey:v32];

  if (*(v8 + 54))
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v33 = ;
  v34 = [v7 stringByAppendingString:@"is_fwreset_detected"];
  [v366 setObject:v33 forKey:v34];

  if (*(v8 + 55))
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v35 = ;
  v36 = [v7 stringByAppendingString:@"is_daemon_reboot_detected"];
  [v366 setObject:v35 forKey:v36];

  if (*(v8 + 56))
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v37 = ;
  v38 = [v7 stringByAppendingString:@"is_daemon_crash_jetsam_detected"];
  [v366 setObject:v37 forKey:v38];

  v39 = [NSNumber numberWithBool:v8[228]];
  v40 = [v7 stringByAppendingString:@"is_border_router_advertised"];
  [v366 setObject:v39 forKey:v40];

  v41 = [NSNumber numberWithBool:v8[230]];
  v42 = [v7 stringByAppendingString:@"is_unicast_srp_service_advertised"];
  [v366 setObject:v41 forKey:v42];

  v43 = [NSNumber numberWithBool:v8[231]];
  v44 = [v7 stringByAppendingString:@"is_anycast_srp_service_advertised"];
  [v366 setObject:v43 forKey:v44];

  if ((v8[230] & 1) != 0 || v8[231] == 1)
  {
    v45 = [NSNumber numberWithBool:1];
    v46 = [v7 stringByAppendingString:@"is_srp_service_advertised"];
    [v366 setObject:v45 forKey:v46];
  }

  else
  {
    v45 = [NSNumber numberWithBool:0];
    v46 = [v7 stringByAppendingString:@"is_srp_service_advertised"];
    [v366 setObject:v45 forKey:v46];
  }

  v47 = *(v8 + 14);
  v48 = v47;
  if (v47)
  {
    v49 = log10(v47) + 1.0;
    v50 = v49 - 4;
    if (v49 <= 4)
    {
      v50 = 0;
    }

    v51 = v50;
  }

  else
  {
    v51 = 0.0;
  }

  v52 = __exp10(v51);
  v53 = [NSNumber numberWithUnsignedInt:(v52 * (v48 / v52))];
  v54 = [v7 stringByAppendingString:@"disabled_role_count"];
  [v366 setObject:v53 forKey:v54];

  v55 = *(v8 + 15);
  v56 = v55;
  if (v55)
  {
    v57 = log10(v55) + 1.0;
    v58 = v57 - 4;
    if (v57 <= 4)
    {
      v58 = 0;
    }

    v59 = v58;
  }

  else
  {
    v59 = 0.0;
  }

  v60 = __exp10(v59);
  v61 = [NSNumber numberWithUnsignedInt:(v60 * (v56 / v60))];
  v62 = [v7 stringByAppendingString:@"detached_role_count"];
  [v366 setObject:v61 forKey:v62];

  if (*(v8 + 15) || *(v8 + 14))
  {
    v63 = [NSNumber numberWithBool:1];
    v64 = [v7 stringByAppendingString:@"is_role_detach_disable_detected"];
    [v366 setObject:v63 forKey:v64];
  }

  else
  {
    v63 = [NSNumber numberWithBool:0];
    v64 = [v7 stringByAppendingString:@"is_role_detach_disable_detected"];
    [v366 setObject:v63 forKey:v64];
  }

  v65 = *(v8 + 16);
  v66 = v65;
  if (v65)
  {
    v67 = log10(v65) + 1.0;
    v68 = v67 - 4;
    if (v67 <= 4)
    {
      v68 = 0;
    }

    v69 = v68;
  }

  else
  {
    v69 = 0.0;
  }

  v70 = __exp10(v69);
  v71 = [NSNumber numberWithUnsignedInt:(v70 * (v66 / v70))];
  v72 = [v7 stringByAppendingString:@"child_role_count"];
  [v366 setObject:v71 forKey:v72];

  v73 = *(v8 + 17);
  v74 = v73;
  if (v73)
  {
    v75 = log10(v73) + 1.0;
    v76 = v75 - 4;
    if (v75 <= 4)
    {
      v76 = 0;
    }

    v77 = v76;
  }

  else
  {
    v77 = 0.0;
  }

  v78 = __exp10(v77);
  v79 = [NSNumber numberWithUnsignedInt:(v78 * (v74 / v78))];
  v80 = [v7 stringByAppendingString:@"router_role_count"];
  [v366 setObject:v79 forKey:v80];

  v81 = *(v8 + 18);
  v82 = v81;
  if (v81)
  {
    v83 = log10(v81) + 1.0;
    v84 = v83 - 4;
    if (v83 <= 4)
    {
      v84 = 0;
    }

    v85 = v84;
  }

  else
  {
    v85 = 0.0;
  }

  v86 = __exp10(v85);
  v87 = [NSNumber numberWithUnsignedInt:(v86 * (v82 / v86))];
  v88 = [v7 stringByAppendingString:@"leader_role_count"];
  [v366 setObject:v87 forKey:v88];

  v89 = *(v8 + 22);
  v90 = v89;
  if (v89)
  {
    v91 = log10(v89) + 1.0;
    v92 = v91 - 4;
    if (v91 <= 4)
    {
      v92 = 0;
    }

    v93 = v92;
  }

  else
  {
    v93 = 0.0;
  }

  v94 = __exp10(v93);
  v95 = [NSNumber numberWithUnsignedInt:(v94 * (v90 / v94))];
  v96 = [v7 stringByAppendingString:@"parent_changes_count"];
  [v366 setObject:v95 forKey:v96];

  v97 = *(v8 + 19);
  v98 = v97;
  if (v97)
  {
    v99 = log10(v97) + 1.0;
    v100 = v99 - 4;
    if (v99 <= 4)
    {
      v100 = 0;
    }

    v101 = v100;
  }

  else
  {
    v101 = 0.0;
  }

  v102 = __exp10(v101);
  v103 = [NSNumber numberWithUnsignedInt:(v102 * (v98 / v102))];
  v104 = [v7 stringByAppendingString:@"attach_attempts"];
  [v366 setObject:v103 forKey:v104];

  v105 = *(v8 + 20);
  v106 = v105;
  if (v105)
  {
    v107 = log10(v105) + 1.0;
    v108 = v107 - 4;
    if (v107 <= 4)
    {
      v108 = 0;
    }

    v109 = v108;
  }

  else
  {
    v109 = 0.0;
  }

  v110 = __exp10(v109);
  v111 = [NSNumber numberWithUnsignedInt:(v110 * (v106 / v110))];
  v112 = [v7 stringByAppendingString:@"partition_id_changes_count"];
  [v366 setObject:v111 forKey:v112];

  v113 = *(v8 + 21);
  v114 = v113;
  if (v113)
  {
    v115 = log10(v113) + 1.0;
    v116 = v115 - 4;
    if (v115 <= 4)
    {
      v116 = 0;
    }

    v117 = v116;
  }

  else
  {
    v117 = 0.0;
  }

  v118 = __exp10(v117);
  v119 = [NSNumber numberWithUnsignedInt:(v118 * (v114 / v118))];
  v120 = [v7 stringByAppendingString:@"better_partition_attach_attempts"];
  [v366 setObject:v119 forKey:v120];

  if (*(v8 + 20))
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v121 = ;
  v122 = [v7 stringByAppendingString:@"is_partition_id_changed"];
  [v366 setObject:v121 forKey:v122];

  if (*(v8 + 22))
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v123 = ;
  v124 = [v7 stringByAppendingString:@"is_parent_changed"];
  [v366 setObject:v123 forKey:v124];

  v125 = *(v8 + 40);
  v126 = v125;
  if (v125)
  {
    v127 = log10(v125) + 1.0;
    v128 = v127 - 4;
    if (v127 <= 4)
    {
      v128 = 0;
    }

    v129 = v128;
  }

  else
  {
    v129 = 0.0;
  }

  v130 = __exp10(v129);
  v131 = [NSNumber numberWithUnsignedInt:(v130 * (v126 / v130))];
  v132 = [v7 stringByAppendingString:@"numRouters"];
  [v366 setObject:v131 forKey:v132];

  v133 = *(v8 + 41);
  v134 = v133;
  if (v133)
  {
    v135 = log10(v133) + 1.0;
    v136 = v135 - 4;
    if (v135 <= 4)
    {
      v136 = 0;
    }

    v137 = v136;
  }

  else
  {
    v137 = 0.0;
  }

  v138 = __exp10(v137);
  v139 = [NSNumber numberWithUnsignedInt:(v138 * (v134 / v138))];
  v140 = [v7 stringByAppendingString:@"numOnMeshPrefixes"];
  [v366 setObject:v139 forKey:v140];

  if (*(v8 + 41) < 2u)
  {
    [NSNumber numberWithBool:0];
  }

  else
  {
    [NSNumber numberWithBool:1];
  }
  v141 = ;
  v142 = [v7 stringByAppendingString:@"is_multiple_prefix_detected"];
  [v366 setObject:v141 forKey:v142];

  v143 = v8 + 168;
  if (v8[191] < 0)
  {
    v143 = *v143;
  }

  v144 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", v143, +[NSString defaultCStringEncoding]);
  v145 = [v7 stringByAppendingString:@"thread_mesh_size"];
  [v366 setObject:v144 forKey:v145];

  v146 = *(v8 + 23);
  v147 = v146;
  if (v146)
  {
    v148 = log10(v146) + 1.0;
    v149 = v148 - 4;
    if (v148 <= 4)
    {
      v149 = 0;
    }

    v150 = v149;
  }

  else
  {
    v150 = 0.0;
  }

  v151 = __exp10(v150);
  v152 = [NSNumber numberWithUnsignedInt:(v151 * (v147 / v151))];
  v153 = [v7 stringByAppendingString:@"coex_tx_requests"];
  [v366 setObject:v152 forKey:v153];

  v154 = *(v8 + 26);
  v155 = v154;
  if (v154)
  {
    v156 = log10(v154) + 1.0;
    v157 = v156 - 4;
    if (v156 <= 4)
    {
      v157 = 0;
    }

    v158 = v157;
  }

  else
  {
    v158 = 0.0;
  }

  v159 = __exp10(v158);
  v160 = [NSNumber numberWithUnsignedInt:(v159 * (v155 / v159))];
  v161 = [v7 stringByAppendingString:@"coex_tx_granted_requests"];
  [v366 setObject:v160 forKey:v161];

  v162 = *(v8 + 24);
  v163 = v162;
  if (v162)
  {
    v164 = log10(v162) + 1.0;
    v165 = v164 - 4;
    if (v164 <= 4)
    {
      v165 = 0;
    }

    v166 = v165;
  }

  else
  {
    v166 = 0.0;
  }

  v167 = __exp10(v166);
  v168 = [NSNumber numberWithUnsignedInt:(v167 * (v163 / v167))];
  v169 = [v7 stringByAppendingString:@"coex_tx_denied_requests"];
  [v366 setObject:v168 forKey:v169];

  v170 = *(v8 + 25);
  v171 = v170;
  if (v170)
  {
    v172 = log10(v170) + 1.0;
    v173 = v172 - 4;
    if (v172 <= 4)
    {
      v173 = 0;
    }

    v174 = v173;
  }

  else
  {
    v174 = 0.0;
  }

  v175 = __exp10(v174);
  v176 = [NSNumber numberWithUnsignedInt:(v175 * (v171 / v175))];
  v177 = [v7 stringByAppendingString:@"coex_tx_denied_requests_percentage"];
  [v366 setObject:v176 forKey:v177];

  v178 = *(v8 + 27);
  v179 = v178;
  if (v178)
  {
    v180 = log10(v178) + 1.0;
    v181 = v180 - 4;
    if (v180 <= 4)
    {
      v181 = 0;
    }

    v182 = v181;
  }

  else
  {
    v182 = 0.0;
  }

  v183 = __exp10(v182);
  v184 = [NSNumber numberWithUnsignedInt:(v183 * (v179 / v183))];
  v185 = [v7 stringByAppendingString:@"coex_rx_requests"];
  [v366 setObject:v184 forKey:v185];

  v186 = *(v8 + 30);
  v187 = v186;
  if (v186)
  {
    v188 = log10(v186) + 1.0;
    v189 = v188 - 4;
    if (v188 <= 4)
    {
      v189 = 0;
    }

    v190 = v189;
  }

  else
  {
    v190 = 0.0;
  }

  v191 = __exp10(v190);
  v192 = [NSNumber numberWithUnsignedInt:(v191 * (v187 / v191))];
  v193 = [v7 stringByAppendingString:@"coex_rx_granted_requests"];
  [v366 setObject:v192 forKey:v193];

  v194 = *(v8 + 28);
  v195 = v194;
  if (v194)
  {
    v196 = log10(v194) + 1.0;
    v197 = v196 - 4;
    if (v196 <= 4)
    {
      v197 = 0;
    }

    v198 = v197;
  }

  else
  {
    v198 = 0.0;
  }

  v199 = __exp10(v198);
  v200 = [NSNumber numberWithUnsignedInt:(v199 * (v195 / v199))];
  v201 = [v7 stringByAppendingString:@"coex_rx_denied_requests"];
  [v366 setObject:v200 forKey:v201];

  v202 = *(v8 + 29);
  v203 = v202;
  if (v202)
  {
    v204 = log10(v202) + 1.0;
    v205 = v204 - 4;
    if (v204 <= 4)
    {
      v205 = 0;
    }

    v206 = v205;
  }

  else
  {
    v206 = 0.0;
  }

  v207 = __exp10(v206);
  v208 = [NSNumber numberWithUnsignedInt:(v207 * (v203 / v207))];
  v209 = [v7 stringByAppendingString:@"coex_rx_denied_requests_percentage"];
  [v366 setObject:v208 forKey:v209];

  v210 = *v8;
  if (*v8)
  {
    v211 = log10(*v8) + 1.0;
    v212 = v211 - 4;
    if (v211 <= 4)
    {
      v212 = 0;
    }

    v213 = v212;
  }

  else
  {
    v213 = 0.0;
  }

  v214 = __exp10(v213);
  v215 = [NSNumber numberWithUnsignedInt:(v214 * (v210 / v214))];
  v216 = [v7 stringByAppendingString:@"tx_success"];
  [v366 setObject:v215 forKey:v216];

  v217 = *(v8 + 1);
  v218 = v217;
  if (v217)
  {
    v219 = log10(v217) + 1.0;
    v220 = v219 - 4;
    if (v219 <= 4)
    {
      v220 = 0;
    }

    v221 = v220;
  }

  else
  {
    v221 = 0.0;
  }

  v222 = __exp10(v221);
  v223 = [NSNumber numberWithUnsignedInt:(v222 * (v218 / v222))];
  v224 = [v7 stringByAppendingString:@"tx_failure"];
  [v366 setObject:v223 forKey:v224];

  v225 = *(v8 + 8);
  v226 = v225;
  if (v225)
  {
    v227 = log10(v225) + 1.0;
    v228 = v227 - 4;
    if (v227 <= 4)
    {
      v228 = 0;
    }

    v229 = v228;
  }

  else
  {
    v229 = 0.0;
  }

  v230 = __exp10(v229);
  v231 = [NSNumber numberWithUnsignedInt:(v230 * (v226 / v230))];
  v232 = [v7 stringByAppendingString:@"tx_success_perc"];
  [v366 setObject:v231 forKey:v232];

  v233 = *(v8 + 5);
  v234 = v233;
  if (v233)
  {
    v235 = log10(v233) + 1.0;
    v236 = v235 - 4;
    if (v235 <= 4)
    {
      v236 = 0;
    }

    v237 = v236;
  }

  else
  {
    v237 = 0.0;
  }

  v238 = __exp10(v237);
  v239 = [NSNumber numberWithUnsignedInt:(v238 * (v234 / v238))];
  v240 = [v7 stringByAppendingString:@"rx_success"];
  [v366 setObject:v239 forKey:v240];

  v241 = *(v8 + 6);
  v242 = v241;
  if (v241)
  {
    v243 = log10(v241) + 1.0;
    v244 = v243 - 4;
    if (v243 <= 4)
    {
      v244 = 0;
    }

    v245 = v244;
  }

  else
  {
    v245 = 0.0;
  }

  v246 = __exp10(v245);
  v247 = [NSNumber numberWithUnsignedInt:(v246 * (v242 / v246))];
  v248 = [v7 stringByAppendingString:@"rx_failure"];
  [v366 setObject:v247 forKey:v248];

  v249 = *(v8 + 10);
  v250 = v249;
  if (v249)
  {
    v251 = log10(v249) + 1.0;
    v252 = v251 - 4;
    if (v251 <= 4)
    {
      v252 = 0;
    }

    v253 = v252;
  }

  else
  {
    v253 = 0.0;
  }

  v254 = __exp10(v253);
  v255 = [NSNumber numberWithUnsignedInt:(v254 * (v250 / v254))];
  v256 = [v7 stringByAppendingString:@"rx_success_perc"];
  [v366 setObject:v255 forKey:v256];

  v257 = *(v8 + 3);
  v258 = v257;
  if (v257)
  {
    v259 = log10(v257) + 1.0;
    v260 = v259 - 4;
    if (v259 <= 4)
    {
      v260 = 0;
    }

    v261 = v260;
  }

  else
  {
    v261 = 0.0;
  }

  v262 = __exp10(v261);
  v263 = [NSNumber numberWithUnsignedInt:(v262 * (v258 / v262))];
  v264 = [v7 stringByAppendingString:@"tx_app_pkt_success"];
  [v366 setObject:v263 forKey:v264];

  v265 = *(v8 + 4);
  v266 = v265;
  if (v265)
  {
    v267 = log10(v265) + 1.0;
    v268 = v267 - 4;
    if (v267 <= 4)
    {
      v268 = 0;
    }

    v269 = v268;
  }

  else
  {
    v269 = 0.0;
  }

  v270 = __exp10(v269);
  v271 = [NSNumber numberWithUnsignedInt:(v270 * (v266 / v270))];
  v272 = [v7 stringByAppendingString:@"tx_app_pkt_failure"];
  [v366 setObject:v271 forKey:v272];

  v273 = *(v8 + 9);
  v274 = v273;
  if (v273)
  {
    v275 = log10(v273) + 1.0;
    v276 = v275 - 4;
    if (v275 <= 4)
    {
      v276 = 0;
    }

    v277 = v276;
  }

  else
  {
    v277 = 0.0;
  }

  v278 = __exp10(v277);
  v279 = [NSNumber numberWithUnsignedInt:(v278 * (v274 / v278))];
  v280 = [v7 stringByAppendingString:@"tx_app_success_perc"];
  [v366 setObject:v279 forKey:v280];

  v281 = *(v8 + 11);
  v282 = v281;
  if (v281)
  {
    v283 = log10(v281) + 1.0;
    v284 = v283 - 4;
    if (v283 <= 4)
    {
      v284 = 0;
    }

    v285 = v284;
  }

  else
  {
    v285 = 0.0;
  }

  v286 = __exp10(v285);
  v287 = [NSNumber numberWithUnsignedInt:(v286 * (v282 / v286))];
  v288 = [v7 stringByAppendingString:@"tx_delaymin"];
  [v366 setObject:v287 forKey:v288];

  v289 = *(v8 + 12);
  v290 = v289;
  if (v289)
  {
    v291 = log10(v289) + 1.0;
    v292 = v291 - 4;
    if (v291 <= 4)
    {
      v292 = 0;
    }

    v293 = v292;
  }

  else
  {
    v293 = 0.0;
  }

  v294 = __exp10(v293);
  v295 = [NSNumber numberWithUnsignedInt:(v294 * (v290 / v294))];
  v296 = [v7 stringByAppendingString:@"tx_delaymax"];
  [v366 setObject:v295 forKey:v296];

  v297 = *(v8 + 13);
  v298 = v297;
  if (v297)
  {
    v299 = log10(v297) + 1.0;
    v300 = v299 - 4;
    if (v299 <= 4)
    {
      v300 = 0;
    }

    v301 = v300;
  }

  else
  {
    v301 = 0.0;
  }

  v302 = __exp10(v301);
  v303 = [NSNumber numberWithUnsignedInt:(v302 * (v298 / v302))];
  v304 = [v7 stringByAppendingString:@"tx_delayavg"];
  [v366 setObject:v303 forKey:v304];

  v305 = *(v8 + 32);
  v306 = v305;
  if (v305)
  {
    v307 = log10(v305) + 1.0;
    v308 = v307 - 4;
    if (v307 <= 4)
    {
      v308 = 0;
    }

    v309 = v308;
  }

  else
  {
    v309 = 0.0;
  }

  v310 = __exp10(v309);
  v311 = [NSNumber numberWithUnsignedInt:(v310 * (v306 / v310))];
  v312 = [v7 stringByAppendingString:@"num_third_party_border_routers"];
  [v366 setObject:v311 forKey:v312];

  v313 = *(v8 + 33);
  v314 = v313;
  if (v313)
  {
    v315 = log10(v313) + 1.0;
    v316 = v315 - 4;
    if (v315 <= 4)
    {
      v316 = 0;
    }

    v317 = v316;
  }

  else
  {
    v317 = 0.0;
  }

  v318 = __exp10(v317);
  v319 = [NSNumber numberWithUnsignedInt:(v318 * (v314 / v318))];
  v320 = [v7 stringByAppendingString:@"num_apple_border_routers"];
  [v366 setObject:v319 forKey:v320];

  v321 = *(v8 + 34);
  v322 = v321;
  if (v321)
  {
    v323 = log10(v321) + 1.0;
    v324 = v323 - 4;
    if (v323 <= 4)
    {
      v324 = 0;
    }

    v325 = v324;
  }

  else
  {
    v325 = 0.0;
  }

  v326 = __exp10(v325);
  v327 = [NSNumber numberWithUnsignedInt:(v326 * (v322 / v326))];
  v328 = [v7 stringByAppendingString:@"num_thread_networks"];
  [v366 setObject:v327 forKey:v328];

  if (v8[140] == 1)
  {
    [NSNumber numberWithBool:0];
  }

  else
  {
    [NSNumber numberWithBool:1];
  }
  v329 = ;
  v330 = [v7 stringByAppendingString:@"is_leader_thirdparty"];
  [v366 setObject:v329 forKey:v330];

  v331 = *(v8 + 31);
  v332 = v331;
  if (v331)
  {
    v333 = log10(v331) + 1.0;
    v334 = v333 - 4;
    if (v333 <= 4)
    {
      v334 = 0;
    }

    v335 = v334;
  }

  else
  {
    v335 = 0.0;
  }

  v336 = __exp10(v335);
  v337 = [NSNumber numberWithUnsignedInt:(v336 * (v332 / v336))];
  v338 = [v7 stringByAppendingString:@"num_border_routers_advertised"];
  [v366 setObject:v337 forKey:v338];

  v339 = *(v8 + 59);
  v340 = v339;
  if (v339)
  {
    v341 = log10(v339) + 1.0;
    v342 = v341 - 4;
    if (v341 <= 4)
    {
      v342 = 0;
    }

    v343 = v342;
  }

  else
  {
    v343 = 0.0;
  }

  v344 = __exp10(v343);
  v345 = [NSNumber numberWithUnsignedInt:(v344 * (v340 / v344))];
  v346 = [v7 stringByAppendingString:@"num_unicast_srp_services_advertised"];
  [v366 setObject:v345 forKey:v346];

  v347 = *(v8 + 60);
  v348 = v347;
  if (v347)
  {
    v349 = log10(v347) + 1.0;
    v350 = v349 - 4;
    if (v349 <= 4)
    {
      v350 = 0;
    }

    v351 = v350;
  }

  else
  {
    v351 = 0.0;
  }

  v352 = __exp10(v351);
  v353 = [NSNumber numberWithUnsignedInt:(v352 * (v348 / v352))];
  v354 = [v7 stringByAppendingString:@"num_anycast_srp_services_advertised"];
  [v366 setObject:v353 forKey:v354];

  v355 = *(v8 + 59) + *(v8 + 60);
  v356 = v355;
  if (v355)
  {
    v357 = log10(v355) + 1.0;
    v358 = v357 - 4;
    if (v357 <= 4)
    {
      v358 = 0;
    }

    v359 = v358;
  }

  else
  {
    v359 = 0.0;
  }

  v360 = __exp10(v359);
  v361 = [NSNumber numberWithUnsignedInt:(v360 * (v356 / v360))];
  v362 = [v7 stringByAppendingString:@"num_srp_services_advertised"];
  [v366 setObject:v361 forKey:v362];

  v363 = v8 + 192;
  if (v8[215] < 0)
  {
    v363 = *v363;
  }

  v364 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", v363, +[NSString defaultCStringEncoding]);
  v365 = [v7 stringByAppendingString:@"last_known_device_role"];
  [v366 setObject:v364 forKey:v365];
}

size_t CAMetricsHandlers_handle_getprop_vendorcoex_RCP2_counters(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v31[0] = 0;
  v31[1] = 0;
  v30 = v31;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v3);
    if (!count)
    {
      goto LABEL_40;
    }

    v8 = 0;
    v5 = 0;
    *&v7 = 67109120;
    v27 = v7;
    while (1)
    {
      v9 = xpc_array_get_dictionary(v3, v8);

      v5 = v9;
      string = xpc_dictionary_get_string(v9, "key");
      v11 = strlen(string);
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      v29 = v11;
      if (v11)
      {
        memmove(__dst, string, v11);
        *(__dst + v12) = 0;
        v13 = v29;
        if ((v29 & 0x80000000) == 0)
        {
LABEL_12:
          if (v13 != 22)
          {
            goto LABEL_25;
          }

          v14 = __dst;
          goto LABEL_18;
        }
      }

      else
      {
        LOBYTE(__dst[0]) = 0;
        v13 = v29;
        if ((v29 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }
      }

      if (__dst[1] != 22)
      {
        goto LABEL_25;
      }

      v14 = __dst[0];
LABEL_18:
      v15 = *v14;
      v16 = v14[1];
      v17 = *(v14 + 14);
      if (v15 == 0x7063725F78656F63 && v16 == 0x615F697373725F32 && v17 == 0x656761726576615FLL)
      {
        int64 = xpc_dictionary_get_int64(v5, "value");
        if (int64 >= 0)
        {
          LOBYTE(v24) = int64;
        }

        else
        {
          v24 = -int64;
        }

        v25 = log_get_logging_obg("com.apple.wpantund.awd", "default");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = v27;
          v33 = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "CAMetrics : rssivalue %d.", buf, 8u);
        }

        v20 = [NSNumber numberWithUnsignedInt:v24];
        if (v29 >= 0)
        {
          v21 = __dst;
        }

        else
        {
          v21 = __dst[0];
        }

        goto LABEL_28;
      }

LABEL_25:
      v20 = [NSNumber numberWithUnsignedInt:xpc_dictionary_get_uint64(v5, "value")];
      if (v29 >= 0)
      {
        v21 = __dst;
      }

      else
      {
        v21 = __dst[0];
      }

LABEL_28:
      v22 = [NSString stringWithUTF8String:v21, v27];
      [v4 setObject:v20 forKey:v22];

      if (v29 < 0)
      {
        operator delete(__dst[0]);
      }

      if (count == ++v8)
      {
        count = 0;
        goto LABEL_39;
      }
    }
  }

  v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    CAMetricsHandlers_handle_getprop_vendorcoex_RCP2_counters();
  }

  count = 1;
LABEL_39:

LABEL_40:
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v30, v31[0]);

  return count;
}

void sub_10004F7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, char *a18)
{
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a17, a18);

  _Unwind_Resume(a1);
}

uint64_t CAMetricsHandlers_handle_getprop_vendorcoex_RCP2_histograms(void *a1, void *a2)
{
  object = a1;
  v258 = a2;
  v293[0] = 0;
  v293[1] = 0;
  v292 = v293;
  v322 = 0;
  memset(v321, 0, sizeof(v321));
  v320 = 0;
  memset(v319, 0, sizeof(v319));
  v318 = 0;
  memset(v317, 0, sizeof(v317));
  v316 = 0;
  memset(v315, 0, sizeof(v315));
  v314 = 0;
  memset(v313, 0, sizeof(v313));
  v312 = 0;
  memset(v311, 0, sizeof(v311));
  v310 = 0;
  memset(v309, 0, sizeof(v309));
  v308 = 0;
  memset(v307, 0, sizeof(v307));
  v306 = 0;
  memset(v305, 0, sizeof(v305));
  v304 = 0;
  memset(v303, 0, sizeof(v303));
  v302 = 0;
  memset(v301, 0, sizeof(v301));
  v300 = 0;
  memset(v299, 0, sizeof(v299));
  v298 = 0;
  memset(v297, 0, sizeof(v297));
  v296 = 0;
  memset(v295, 0, sizeof(v295));
  v287 = +[NSMutableArray array];
  v286 = +[NSMutableArray array];
  v285 = +[NSMutableArray array];
  v284 = +[NSMutableArray array];
  v283 = +[NSMutableArray array];
  v282 = +[NSMutableArray array];
  v281 = +[NSMutableArray array];
  v280 = +[NSMutableArray array];
  v279 = +[NSMutableArray array];
  v277 = +[NSMutableArray array];
  v276 = +[NSMutableArray array];
  v274 = +[NSMutableArray array];
  v275 = +[NSMutableArray array];
  v278 = +[NSMutableArray array];
  if (xpc_get_type(object) != &_xpc_type_array)
  {
    v3 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_vendorcoex_RCP2_histograms();
    }

    v4 = 0;
    v5 = 1;
    goto LABEL_631;
  }

  xdict = 0;
  count = xpc_array_get_count(object);
  v6 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = count;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "RCP2 CAMetrics : now onto Coex hist array with size %ld.", &buf, 0xCu);
  }

  if (count)
  {
    v7 = 0;
    xdict = 0;
    while (1)
    {
      v8 = xpc_array_get_dictionary(object, v7);

      xdict = v8;
      string = xpc_dictionary_get_string(v8, "key");
      v10 = strlen(string);
      if (v10 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        operator new();
      }

      *(&buf.__r_.__value_.__s + 23) = v10;
      if (v10)
      {
        memmove(&buf, string, v10);
      }

      buf.__r_.__value_.__s.__data_[v11] = 0;
      uint64 = xpc_dictionary_get_uint64(xdict, "value");
      v13 = std::string::find(&buf, 91, 0);
      v14 = std::string::find(&buf, 93, 0);
      v15 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      size = buf.__r_.__value_.__l.__size_;
      v288 = v14;
      v289 = buf.__r_.__value_.__r.__words[0];
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v18 = buf.__r_.__value_.__l.__size_;
      }

      v19 = (p_buf + v18);
      v20 = v18;
      v21 = p_buf;
      v273 = uint64;
      if (v18 < 22)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = v288;
        goto LABEL_348;
      }

      do
      {
        v36 = memchr(v21, 99, v20 - 21);
        if (!v36)
        {
          break;
        }

        if (v36->__r_.__value_.__r.__words[0] == 0x7063725F78656F63 && v36->__r_.__value_.__l.__size_ == 0x615F697373725F32 && *(&v36->__r_.__value_.__r.__words[1] + 6) == 0x656761726576615FLL)
        {
          goto LABEL_35;
        }

        v21 = (&v36->__r_.__value_.__l.__data_ + 1);
        v20 = v19 - v21;
      }

      while (v19 - v21 > 21);
      v36 = (p_buf + v18);
LABEL_35:
      v39 = v36 != v19 && v36 == p_buf;
      v40 = v39;
      v270 = v40;
      if (v18 >= 24)
      {
        break;
      }

      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = v288;
      if (!v270)
      {
        goto LABEL_348;
      }

LABEL_343:
      if (v13 != -1 && v35 != -1)
      {
        v146 = v289;
        if ((v15 & 0x80000000) != 0)
        {
          if (size <= v13)
          {
LABEL_633:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v13 >= v15)
          {
            goto LABEL_633;
          }

          v146 = &buf;
          size = v15;
        }

        if (size - (v13 + 1) >= v35 - 1)
        {
          v150 = v35 - 1;
        }

        else
        {
          v150 = size - (v13 + 1);
        }

        if (v150 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v150 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v150;
        if (v150)
        {
          memmove(&__dst, &v146->__r_.__value_.__l.__data_ + v13 + 1, v150);
        }

        __dst.__r_.__value_.__s.__data_[v150] = 0;
        v151 = std::stoi(&__dst, 0, 10);
        if ((v151 & 0xFEu) > 9)
        {
          goto LABEL_625;
        }

        if (v273)
        {
          v152 = log10(v273) + 1.0;
          v153 = v152 - 4;
          if (v152 <= 4)
          {
            v153 = 0;
          }

          v154 = v153;
        }

        else
        {
          v154 = 0.0;
        }

        v161 = __exp10(v154);
        v162 = (v161 * (v273 / v161));
        v163 = v151;
        v164 = v321;
        goto LABEL_624;
      }

LABEL_348:
      v147 = v13 != -1 && v27;
      v148 = v289;
      if (v147 && v35 != -1)
      {
        if ((v15 & 0x80000000) != 0)
        {
          if (size <= v13)
          {
LABEL_635:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v13 >= v15)
          {
            goto LABEL_635;
          }

          v148 = &buf;
          size = v15;
        }

        if (size - (v13 + 1) >= v35 - 1)
        {
          v156 = v35 - 1;
        }

        else
        {
          v156 = size - (v13 + 1);
        }

        if (v156 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v156 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v156;
        if (v156)
        {
          memmove(&__dst, &v148->__r_.__value_.__l.__data_ + v13 + 1, v156);
        }

        __dst.__r_.__value_.__s.__data_[v156] = 0;
        v157 = std::stoi(&__dst, 0, 10);
        if ((v157 & 0xFEu) > 9)
        {
          goto LABEL_625;
        }

        if (v273)
        {
          v158 = log10(v273) + 1.0;
          v159 = v158 - 4;
          if (v158 <= 4)
          {
            v159 = 0;
          }

          v160 = v159;
        }

        else
        {
          v160 = 0.0;
        }

        v171 = __exp10(v160);
        v162 = (v171 * (v273 / v171));
        v163 = v157;
        v164 = v319;
        goto LABEL_624;
      }

      v149 = v13 != -1 && v28;
      if (v149 && v35 != -1)
      {
        if ((v15 & 0x80000000) != 0)
        {
          if (size <= v13)
          {
LABEL_637:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v13 >= v15)
          {
            goto LABEL_637;
          }

          v148 = &buf;
          size = v15;
        }

        if (size - (v13 + 1) >= v35 - 1)
        {
          v166 = v35 - 1;
        }

        else
        {
          v166 = size - (v13 + 1);
        }

        if (v166 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v166 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v166;
        if (v166)
        {
          memmove(&__dst, &v148->__r_.__value_.__l.__data_ + v13 + 1, v166);
        }

        __dst.__r_.__value_.__s.__data_[v166] = 0;
        v167 = std::stoi(&__dst, 0, 10);
        if ((v167 & 0xFEu) > 9)
        {
          goto LABEL_625;
        }

        if (v273)
        {
          v168 = log10(v273) + 1.0;
          v169 = v168 - 4;
          if (v168 <= 4)
          {
            v169 = 0;
          }

          v170 = v169;
        }

        else
        {
          v170 = 0.0;
        }

        v178 = __exp10(v170);
        v162 = (v178 * (v273 / v178));
        v163 = v167;
        v164 = v317;
        goto LABEL_624;
      }

      v155 = v13 != -1 && v26;
      if (v155 && v35 != -1)
      {
        if ((v15 & 0x80000000) != 0)
        {
          if (size <= v13)
          {
LABEL_639:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v13 >= v15)
          {
            goto LABEL_639;
          }

          v148 = &buf;
          size = v15;
        }

        if (size - (v13 + 1) >= v35 - 1)
        {
          v173 = v35 - 1;
        }

        else
        {
          v173 = size - (v13 + 1);
        }

        if (v173 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v173 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v173;
        if (v173)
        {
          memmove(&__dst, &v148->__r_.__value_.__l.__data_ + v13 + 1, v173);
        }

        __dst.__r_.__value_.__s.__data_[v173] = 0;
        v174 = std::stoi(&__dst, 0, 10);
        if ((v174 & 0xFEu) > 9)
        {
          goto LABEL_625;
        }

        if (v273)
        {
          v175 = log10(v273) + 1.0;
          v176 = v175 - 4;
          if (v175 <= 4)
          {
            v176 = 0;
          }

          v177 = v176;
        }

        else
        {
          v177 = 0.0;
        }

        v185 = __exp10(v177);
        v162 = (v185 * (v273 / v185));
        v163 = v174;
        v164 = v315;
        goto LABEL_624;
      }

      v165 = v13 != -1 && v29;
      if (v165 && v35 != -1)
      {
        if ((v15 & 0x80000000) != 0)
        {
          if (size <= v13)
          {
LABEL_641:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v13 >= v15)
          {
            goto LABEL_641;
          }

          v148 = &buf;
          size = v15;
        }

        if (size - (v13 + 1) >= v35 - 1)
        {
          v180 = v35 - 1;
        }

        else
        {
          v180 = size - (v13 + 1);
        }

        if (v180 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v180 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v180;
        if (v180)
        {
          memmove(&__dst, &v148->__r_.__value_.__l.__data_ + v13 + 1, v180);
        }

        __dst.__r_.__value_.__s.__data_[v180] = 0;
        v181 = std::stoi(&__dst, 0, 10);
        if ((v181 & 0xFEu) > 9)
        {
          goto LABEL_625;
        }

        if (v273)
        {
          v182 = log10(v273) + 1.0;
          v183 = v182 - 4;
          if (v182 <= 4)
          {
            v183 = 0;
          }

          v184 = v183;
        }

        else
        {
          v184 = 0.0;
        }

        v192 = __exp10(v184);
        v162 = (v192 * (v273 / v192));
        v163 = v181;
        v164 = v313;
        goto LABEL_624;
      }

      v172 = v13 != -1 && v25;
      if (v172 && v35 != -1)
      {
        if ((v15 & 0x80000000) != 0)
        {
          if (size <= v13)
          {
LABEL_643:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v13 >= v15)
          {
            goto LABEL_643;
          }

          v148 = &buf;
          size = v15;
        }

        if (size - (v13 + 1) >= v35 - 1)
        {
          v187 = v35 - 1;
        }

        else
        {
          v187 = size - (v13 + 1);
        }

        if (v187 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v187 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v187;
        if (v187)
        {
          memmove(&__dst, &v148->__r_.__value_.__l.__data_ + v13 + 1, v187);
        }

        __dst.__r_.__value_.__s.__data_[v187] = 0;
        v188 = std::stoi(&__dst, 0, 10);
        if ((v188 & 0xFEu) > 9)
        {
          goto LABEL_625;
        }

        if (v273)
        {
          v189 = log10(v273) + 1.0;
          v190 = v189 - 4;
          if (v189 <= 4)
          {
            v190 = 0;
          }

          v191 = v190;
        }

        else
        {
          v191 = 0.0;
        }

        v199 = __exp10(v191);
        v162 = (v199 * (v273 / v199));
        v163 = v188;
        v164 = v311;
        goto LABEL_624;
      }

      v179 = v13 != -1 && v30;
      if (v179 && v35 != -1)
      {
        if ((v15 & 0x80000000) != 0)
        {
          if (size <= v13)
          {
LABEL_645:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v13 >= v15)
          {
            goto LABEL_645;
          }

          v148 = &buf;
          size = v15;
        }

        if (size - (v13 + 1) >= v35 - 1)
        {
          v194 = v35 - 1;
        }

        else
        {
          v194 = size - (v13 + 1);
        }

        if (v194 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v194 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v194;
        if (v194)
        {
          memmove(&__dst, &v148->__r_.__value_.__l.__data_ + v13 + 1, v194);
        }

        __dst.__r_.__value_.__s.__data_[v194] = 0;
        v195 = std::stoi(&__dst, 0, 10);
        if ((v195 & 0xFEu) > 9)
        {
          goto LABEL_625;
        }

        if (v273)
        {
          v196 = log10(v273) + 1.0;
          v197 = v196 - 4;
          if (v196 <= 4)
          {
            v197 = 0;
          }

          v198 = v197;
        }

        else
        {
          v198 = 0.0;
        }

        v210 = __exp10(v198);
        v162 = (v210 * (v273 / v210));
        v163 = v195;
        v164 = v309;
        goto LABEL_624;
      }

      v186 = v13 != -1 && v24;
      if (v186 && v35 != -1)
      {
        if ((v15 & 0x80000000) != 0)
        {
          if (size <= v13)
          {
LABEL_647:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v13 >= v15)
          {
            goto LABEL_647;
          }

          v148 = &buf;
          size = v15;
        }

        if (size - (v13 + 1) >= v35 - 1)
        {
          v205 = v35 - 1;
        }

        else
        {
          v205 = size - (v13 + 1);
        }

        if (v205 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v205 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v205;
        if (v205)
        {
          memmove(&__dst, &v148->__r_.__value_.__l.__data_ + v13 + 1, v205);
        }

        __dst.__r_.__value_.__s.__data_[v205] = 0;
        v206 = std::stoi(&__dst, 0, 10);
        if ((v206 & 0xFEu) > 9)
        {
          goto LABEL_625;
        }

        if (v273)
        {
          v207 = log10(v273) + 1.0;
          v208 = v207 - 4;
          if (v207 <= 4)
          {
            v208 = 0;
          }

          v209 = v208;
        }

        else
        {
          v209 = 0.0;
        }

        v221 = __exp10(v209);
        v162 = (v221 * (v273 / v221));
        v163 = v206;
        v164 = v307;
        goto LABEL_624;
      }

      v193 = v13 != -1 && v31;
      if (v193 && v35 != -1)
      {
        if ((v15 & 0x80000000) != 0)
        {
          if (size <= v13)
          {
LABEL_649:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v13 >= v15)
          {
            goto LABEL_649;
          }

          v148 = &buf;
          size = v15;
        }

        if (size - (v13 + 1) >= v35 - 1)
        {
          v216 = v35 - 1;
        }

        else
        {
          v216 = size - (v13 + 1);
        }

        if (v216 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v216 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v216;
        if (v216)
        {
          memmove(&__dst, &v148->__r_.__value_.__l.__data_ + v13 + 1, v216);
        }

        __dst.__r_.__value_.__s.__data_[v216] = 0;
        v217 = std::stoi(&__dst, 0, 10);
        if ((v217 & 0xFEu) > 9)
        {
          goto LABEL_625;
        }

        if (v273)
        {
          v218 = log10(v273) + 1.0;
          v219 = v218 - 4;
          if (v218 <= 4)
          {
            v219 = 0;
          }

          v220 = v219;
        }

        else
        {
          v220 = 0.0;
        }

        v227 = __exp10(v220);
        v162 = (v227 * (v273 / v227));
        v163 = v217;
        v164 = v305;
        goto LABEL_624;
      }

      v200 = v13 != -1 && v23;
      if (v200 && v35 != -1)
      {
        std::string::substr[abi:ne200100](&buf, v13 + 1, v35 - 1, &__dst);
        v201 = std::stoi(&__dst, 0, 10);
        if ((v201 & 0xFEu) > 9)
        {
          goto LABEL_625;
        }

        if (v273)
        {
          v202 = log10(v273) + 1.0;
          v203 = v202 - 4;
          if (v202 <= 4)
          {
            v203 = 0;
          }

          v204 = v203;
        }

        else
        {
          v204 = 0.0;
        }

        v233 = __exp10(v204);
        v162 = (v233 * (v273 / v233));
        v163 = v201;
        v164 = v303;
        goto LABEL_624;
      }

      v211 = v13 != -1 && v32;
      if (v211 && v35 != -1)
      {
        std::string::substr[abi:ne200100](&buf, v13 + 1, v35 - 1, &__dst);
        v212 = std::stoi(&__dst, 0, 10);
        if ((v212 & 0xFEu) > 9)
        {
          goto LABEL_625;
        }

        if (v273)
        {
          v213 = log10(v273) + 1.0;
          v214 = v213 - 4;
          if (v213 <= 4)
          {
            v214 = 0;
          }

          v215 = v214;
        }

        else
        {
          v215 = 0.0;
        }

        v238 = __exp10(v215);
        v162 = (v238 * (v273 / v238));
        v163 = v212;
        v164 = v301;
        goto LABEL_624;
      }

      v222 = v13 != -1 && v33;
      if (v222 && v35 != -1)
      {
        std::string::substr[abi:ne200100](&buf, v13 + 1, v35 - 1, &__dst);
        v223 = std::stoi(&__dst, 0, 10);
        if ((v223 & 0xFEu) > 9)
        {
          goto LABEL_625;
        }

        if (v273)
        {
          v224 = log10(v273) + 1.0;
          v225 = v224 - 4;
          if (v224 <= 4)
          {
            v225 = 0;
          }

          v226 = v225;
        }

        else
        {
          v226 = 0.0;
        }

        v239 = __exp10(v226);
        v162 = (v239 * (v273 / v239));
        v163 = v223;
        v164 = v299;
        goto LABEL_624;
      }

      v228 = v13 != -1 && v22;
      if (v228 && v35 != -1)
      {
        std::string::substr[abi:ne200100](&buf, v13 + 1, v35 - 1, &__dst);
        v229 = std::stoi(&__dst, 0, 10);
        if ((v229 & 0xFEu) > 9)
        {
          goto LABEL_625;
        }

        if (v273)
        {
          v230 = log10(v273) + 1.0;
          v231 = v230 - 4;
          if (v230 <= 4)
          {
            v231 = 0;
          }

          v232 = v231;
        }

        else
        {
          v232 = 0.0;
        }

        v240 = __exp10(v232);
        v162 = (v240 * (v273 / v240));
        v163 = v229;
        v164 = v297;
        goto LABEL_624;
      }

      if (v13 == -1)
      {
        v34 = 0;
      }

      if (!v34 || v35 == -1)
      {
        goto LABEL_9;
      }

      std::string::substr[abi:ne200100](&buf, v13 + 1, v35 - 1, &__dst);
      v234 = std::stoi(&__dst, 0, 10);
      if ((v234 & 0xFEu) <= 9)
      {
        if (v273)
        {
          v235 = log10(v273) + 1.0;
          v236 = v235 - 4;
          if (v235 <= 4)
          {
            v236 = 0;
          }

          v237 = v236;
        }

        else
        {
          v237 = 0.0;
        }

        v241 = __exp10(v237);
        v162 = (v241 * (v273 / v241));
        v163 = v234;
        v164 = v295;
LABEL_624:
        *(v164 + v163) = v162;
      }

LABEL_625:
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

LABEL_9:
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
        if (++v7 == count)
        {
          goto LABEL_628;
        }
      }

      else if (++v7 == count)
      {
        goto LABEL_628;
      }
    }

    v41 = v18;
    v42 = p_buf;
    do
    {
      v43 = memchr(v42, 99, v41 - 23);
      if (!v43)
      {
        break;
      }

      if (v43->__r_.__value_.__r.__words[0] == 0x7063725F78656F63 && v43->__r_.__value_.__l.__size_ == 0x7165725F78745F32 && v43->__r_.__value_.__r.__words[2] == 0x7265746E756F635FLL)
      {
        goto LABEL_57;
      }

      v42 = (&v43->__r_.__value_.__l.__data_ + 1);
      v41 = v19 - v42;
    }

    while (v19 - v42 > 23);
    v43 = (p_buf + v18);
LABEL_57:
    v47 = v43 != v19 && v43 == p_buf;
    v269 = v47;
    v48 = v18 < 31;
    if (v18 < 31)
    {
      v48 = 1;
    }

    else
    {
      v49 = v18;
      v50 = p_buf;
      do
      {
        v51 = memchr(v50, 99, v49 - 30);
        if (!v51)
        {
          break;
        }

        if (v51->__r_.__value_.__r.__words[0] == 0x7063725F78656F63 && v51->__r_.__value_.__l.__size_ == 0x7465725F78745F32 && v51->__r_.__value_.__r.__words[2] == 0x5F74696D736E6172 && *(&v51->__r_.__value_.__r.__words[2] + 7) == 0x7265746E756F635FLL)
        {
          goto LABEL_79;
        }

        v50 = (&v51->__r_.__value_.__l.__data_ + 1);
        v49 = v19 - v50;
      }

      while (v19 - v50 > 30);
    }

    v51 = (p_buf + v18);
LABEL_79:
    v56 = v51 != v19 && v51 == p_buf;
    v268 = v56;
    if (v18 < 26)
    {
      v260 = 0;
      v267 = 0;
      v264 = 1;
      v57 = 1;
      if (v48)
      {
        v266 = 0;
        v58 = 1;
        goto LABEL_171;
      }
    }

    else
    {
      v264 = 0;
      v59 = v18;
      v60 = p_buf;
      do
      {
        v61 = memchr(v60, 99, v59 - 25);
        if (!v61)
        {
          break;
        }

        if (v61->__r_.__value_.__r.__words[0] == 0x7063725F78656F63 && v61->__r_.__value_.__l.__size_ == 0x6172675F78745F32 && v61->__r_.__value_.__r.__words[2] == 0x746E756F635F746ELL && LOWORD(v61[1].__r_.__value_.__l.__data_) == 29285)
        {
          goto LABEL_102;
        }

        v60 = (&v61->__r_.__value_.__l.__data_ + 1);
        v59 = v19 - v60;
      }

      while (v19 - v60 >= 26);
      v61 = (p_buf + v18);
LABEL_102:
      v66 = v61 != v19 && v61 == p_buf;
      v267 = v66;
      v57 = v18 < 29;
      if (v18 < 29)
      {
        v57 = 1;
      }

      else
      {
        v67 = v18;
        v68 = p_buf;
        do
        {
          v69 = memchr(v68, 99, v67 - 28);
          if (!v69)
          {
            break;
          }

          if (v69->__r_.__value_.__r.__words[0] == 0x7063725F78656F63 && v69->__r_.__value_.__l.__size_ == 0x6163635F78745F32 && v69->__r_.__value_.__r.__words[2] == 0x6F635F6C6961665FLL && *(&v69->__r_.__value_.__r.__words[2] + 5) == 0x7265746E756F635FLL)
          {
            v74 = v69 != v19 && v69 == p_buf;
            v260 = v74;
            if (v48)
            {
              v266 = 0;
              v58 = 1;
              goto LABEL_157;
            }

            goto LABEL_134;
          }

          v68 = (&v69->__r_.__value_.__l.__data_ + 1);
          v67 = v19 - v68;
        }

        while (v19 - v68 > 28);
      }

      v260 = 0;
      if (v48)
      {
        v266 = 0;
        v58 = 1;
        if (v57)
        {
          goto LABEL_171;
        }

        goto LABEL_157;
      }
    }

LABEL_134:
    v75 = v18;
    v76 = p_buf;
    while (1)
    {
      if (v75 == 30 || (v77 = memchr(v76, 99, v75 - 30)) == 0)
      {
LABEL_148:
        v266 = 0;
        v58 = 0;
        if (!v57)
        {
          goto LABEL_157;
        }

        goto LABEL_171;
      }

      v78 = v77->__r_.__value_.__r.__words[0] == 0x7063725F78656F63 && v77->__r_.__value_.__l.__size_ == 0x6B63615F78745F32;
      v79 = v78 && v77->__r_.__value_.__r.__words[2] == 0x5F74656B6361705FLL;
      if (v79 && *(&v77->__r_.__value_.__r.__words[2] + 7) == 0x7265746E756F635FLL)
      {
        break;
      }

      v76 = (&v77->__r_.__value_.__l.__data_ + 1);
      v75 = v19 - v76;
      if (v19 - v76 <= 30)
      {
        goto LABEL_148;
      }
    }

    v58 = 0;
    v82 = v77 != v19 && v77 == p_buf;
    v266 = v82;
    if (v57)
    {
      goto LABEL_171;
    }

LABEL_157:
    v83 = v18;
    v84 = p_buf;
    do
    {
      if (v83 == 28)
      {
        break;
      }

      v85 = memchr(v84, 99, v83 - 28);
      if (!v85)
      {
        break;
      }

      if (v85->__r_.__value_.__r.__words[0] == 0x7063725F78656F63 && v85->__r_.__value_.__l.__size_ == 0x6761726576615F32 && v85->__r_.__value_.__r.__words[2] == 0x666F6B6361625F65 && *(&v85->__r_.__value_.__r.__words[2] + 5) == 0x656D69745F666F6BLL)
      {
        v104 = v85 != v19 && v85 == p_buf;
        v259 = v104;
        if (v264)
        {
          v265 = 0;
          goto LABEL_218;
        }

        goto LABEL_174;
      }

      v84 = (&v85->__r_.__value_.__l.__data_ + 1);
      v83 = v19 - v84;
    }

    while (v19 - v84 > 28);
LABEL_171:
    if (v264)
    {
      v265 = 0;
      v259 = 0;
    }

    else
    {
      v259 = 0;
LABEL_174:
      v89 = v18;
      v90 = p_buf;
      do
      {
        if (v89 == 25)
        {
          break;
        }

        v91 = memchr(v90, 99, v89 - 25);
        if (!v91)
        {
          break;
        }

        if (v91->__r_.__value_.__r.__words[0] == 0x7063725F78656F63 && v91->__r_.__value_.__l.__size_ == 0x6761726576615F32 && v91->__r_.__value_.__r.__words[2] == 0x776F705F78745F65 && LOWORD(v91[1].__r_.__value_.__l.__data_) == 29285)
        {
          goto LABEL_189;
        }

        v90 = (&v91->__r_.__value_.__l.__data_ + 1);
        v89 = v19 - v90;
      }

      while (v19 - v90 > 25);
      v91 = (p_buf + v18);
LABEL_189:
      v96 = v91 != v19 && v91 == p_buf;
      v265 = v96;
      v97 = v18;
      v98 = p_buf;
      do
      {
        if (v97 == 25)
        {
          break;
        }

        v99 = memchr(v98, 99, v97 - 25);
        if (!v99)
        {
          break;
        }

        if (v99->__r_.__value_.__r.__words[0] == 0x7063725F78656F63 && v99->__r_.__value_.__l.__size_ == 0x6172675F78725F32 && v99->__r_.__value_.__r.__words[2] == 0x746E756F635F746ELL && LOWORD(v99[1].__r_.__value_.__l.__data_) == 29285)
        {
          goto LABEL_219;
        }

        v98 = (&v99->__r_.__value_.__l.__data_ + 1);
        v97 = v19 - v98;
      }

      while (v19 - v98 > 25);
    }

LABEL_218:
    v99 = (p_buf + v18);
LABEL_219:
    v106 = v99 != v19 && v99 == p_buf;
    v263 = v106;
    if (v18 >= 34)
    {
      v107 = v18;
      v108 = p_buf;
      do
      {
        v109 = memchr(v108, 99, v107 - 33);
        if (!v109)
        {
          break;
        }

        if (v109->__r_.__value_.__r.__words[0] == 0x7063725F78656F63 && v109->__r_.__value_.__l.__size_ == 0x6172675F78725F32 && v109->__r_.__value_.__r.__words[2] == 0x615F726F665F746ELL && v109[1].__r_.__value_.__r.__words[0] == 0x746E756F635F6B63 && LOWORD(v109[1].__r_.__value_.__r.__words[1]) == 29285)
        {
          goto LABEL_243;
        }

        v108 = (&v109->__r_.__value_.__l.__data_ + 1);
        v107 = v19 - v108;
      }

      while (v19 - v108 > 33);
    }

    v109 = (p_buf + v18);
LABEL_243:
    v115 = v109 != v19 && v109 == p_buf;
    v262 = v115;
    if (v18 == 24)
    {
      v261 = 0;
    }

    else
    {
      v116 = v18;
      v117 = p_buf;
      do
      {
        v118 = memchr(v117, 99, v116 - 24);
        if (!v118)
        {
          break;
        }

        if (v118->__r_.__value_.__r.__words[0] == 0x7063725F78656F63 && v118->__r_.__value_.__l.__size_ == 0x725F646F6F675F32 && v118->__r_.__value_.__r.__words[2] == 0x65746E756F635F78 && v118[1].__r_.__value_.__s.__data_[0] == 114)
        {
          goto LABEL_265;
        }

        v117 = (&v118->__r_.__value_.__l.__data_ + 1);
        v116 = v19 - v117;
      }

      while (v19 - v117 > 24);
      v118 = (p_buf + v18);
LABEL_265:
      v123 = v118 != v19 && v118 == p_buf;
      v261 = v123;
      if (v18 >= 33)
      {
        v124 = v18;
        v125 = p_buf;
        do
        {
          v126 = memchr(v125, 99, v124 - 32);
          if (!v126)
          {
            break;
          }

          if (v126->__r_.__value_.__r.__words[0] == 0x7063725F78656F63 && v126->__r_.__value_.__l.__size_ == 0x6E79735F78725F32 && v126->__r_.__value_.__r.__words[2] == 0x756F656D69745F63 && v126[1].__r_.__value_.__r.__words[0] == 0x65746E756F635F74 && v126[1].__r_.__value_.__s.__data_[8] == 114)
          {
            v33 = v126 != v19 && v126 == p_buf;
            if ((v58 & 1) == 0)
            {
              goto LABEL_289;
            }

            goto LABEL_311;
          }

          v125 = (&v126->__r_.__value_.__l.__data_ + 1);
          v124 = v19 - v125;
        }

        while (v19 - v125 > 32);
      }
    }

    v33 = 0;
    if ((v58 & 1) == 0)
    {
LABEL_289:
      v131 = v18;
      v132 = p_buf;
      do
      {
        if (v131 == 30)
        {
          break;
        }

        v133 = memchr(v132, 99, v131 - 30);
        if (!v133)
        {
          break;
        }

        if (v133->__r_.__value_.__r.__words[0] == 0x7063725F78656F63 && v133->__r_.__value_.__l.__size_ == 0x6172675F78725F32 && v133->__r_.__value_.__r.__words[2] == 0x5F696669775F746ELL && *(&v133->__r_.__value_.__r.__words[2] + 7) == 0x7265746E756F635FLL)
        {
          goto LABEL_312;
        }

        v132 = (&v133->__r_.__value_.__l.__data_ + 1);
        v131 = v19 - v132;
      }

      while (v19 - v132 > 30);
    }

LABEL_311:
    v133 = (p_buf + v18);
LABEL_312:
    v22 = v133 != v19 && v133 == p_buf;
    if (v18 >= 39)
    {
      v139 = p_buf;
      do
      {
        v140 = memchr(v139, 99, v18 - 38);
        if (!v140)
        {
          break;
        }

        if (v140->__r_.__value_.__r.__words[0] == 0x7063725F78656F63 && v140->__r_.__value_.__l.__size_ == 0x6172675F78725F32 && v140->__r_.__value_.__r.__words[2] == 0x615F726F665F746ELL && v140[1].__r_.__value_.__r.__words[0] == 0x5F696669775F6B63 && *(v140[1].__r_.__value_.__r.__words + 7) == 0x7265746E756F635FLL)
        {
          goto LABEL_336;
        }

        v139 = (&v140->__r_.__value_.__l.__data_ + 1);
        v18 = v19 - v139;
      }

      while (v19 - v139 > 38);
    }

    v140 = v19;
LABEL_336:
    v27 = v269;
    v26 = v267;
    v28 = v268;
    v30 = v259;
    v29 = v260;
    v24 = v265;
    v25 = v266;
    v23 = v262;
    v31 = v263;
    v32 = v261;
    v34 = v140 != v19 && v140 == p_buf;
    v35 = v288;
    if (!v270)
    {
      goto LABEL_348;
    }

    goto LABEL_343;
  }

  xdict = 0;
LABEL_628:
  for (i = 0; i != 40; i += 4)
  {
    v243 = [NSNumber numberWithUnsignedInt:*(v321 + i)];
    [v287 addObject:v243];

    v244 = [NSNumber numberWithUnsignedInt:*(v319 + i)];
    [v286 addObject:v244];

    v245 = [NSNumber numberWithUnsignedInt:*(v317 + i)];
    [v285 addObject:v245];

    v246 = [NSNumber numberWithUnsignedInt:*(v315 + i)];
    [v284 addObject:v246];

    v247 = [NSNumber numberWithUnsignedInt:*(v313 + i)];
    [v283 addObject:v247];

    v248 = [NSNumber numberWithUnsignedInt:*(v311 + i)];
    [v282 addObject:v248];

    v249 = [NSNumber numberWithUnsignedInt:*(v309 + i)];
    [v281 addObject:v249];

    v250 = [NSNumber numberWithUnsignedInt:*(v307 + i)];
    [v280 addObject:v250];

    v251 = [NSNumber numberWithUnsignedInt:*(v305 + i)];
    [v279 addObject:v251];

    v252 = [NSNumber numberWithUnsignedInt:*(v303 + i)];
    [v277 addObject:v252];

    v253 = [NSNumber numberWithUnsignedInt:*(v301 + i)];
    [v276 addObject:v253];

    v254 = [NSNumber numberWithUnsignedInt:*(v299 + i)];
    [v274 addObject:v254];

    v255 = [NSNumber numberWithUnsignedInt:*(v297 + i)];
    [v275 addObject:v255];

    v256 = [NSNumber numberWithUnsignedInt:*(v295 + i)];
    [v278 addObject:v256];
  }

  [v258 setObject:v287 forKey:@"coex_rcp2_rssi_average"];
  [v258 setObject:v286 forKey:@"coex_rcp2_tx_req_counter"];
  [v258 setObject:v285 forKey:@"coex_rcp2_tx_retransmit_counter"];
  [v258 setObject:v284 forKey:@"coex_rcp2_tx_grant_counter"];
  [v258 setObject:v283 forKey:@"coex_rcp2_tx_cca_fail_counter"];
  [v258 setObject:v282 forKey:@"coex_rcp2_tx_ack_packet_counter"];
  [v258 setObject:v281 forKey:@"coex_rcp2_average_backof_time"];
  [v258 setObject:v280 forKey:@"coex_rcp2_average_tx_power"];
  [v258 setObject:v279 forKey:@"coex_rcp2_rx_grant_counter"];
  [v258 setObject:v277 forKey:@"coex_rcp2_rx_grant_for_ack_counter"];
  [v258 setObject:v276 forKey:@"coex_rcp2_good_rx_counter"];
  [v258 setObject:v274 forKey:@"coex_rcp2_rx_sync_timeout_counter"];
  [v258 setObject:v275 forKey:@"coex_rcp2_rx_grant_wifi_counter"];
  [v258 setObject:v278 forKey:@"coex_rcp2_rx_grant_for_ack_wifi_counter"];
  v5 = 0;
  v4 = xdict;
LABEL_631:

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v292, v293[0]);
  return v5;
}

void sub_100051988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, void *a31, void *a32, void *a33, uint64_t a34, uint64_t a35, void *a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, char *a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a43, a44);
  _Unwind_Resume(a1);
}

size_t CAMetricsHandlers_handle_getprop_BTWifiLoadInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v42[0] = 0;
  v42[1] = 0;
  v41 = v42;
  memset(&v40, 0, sizeof(v40));
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v3);
    if (!count)
    {
      goto LABEL_102;
    }

    v7 = 0;
    v8 = 0;
    while (1)
    {
      v5 = xpc_array_get_dictionary(v3, v8);

      string = xpc_dictionary_get_string(v5, "key");
      v10 = strlen(string);
      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        operator new();
      }

      v39 = v10;
      if (v10)
      {
        memmove(&__dst, string, v10);
        v38[v11 - 8] = 0;
        v12 = v39;
        if (v39 < 0)
        {
LABEL_27:
          if (*v38 == 7 && *__dst == 1818195042 && *(__dst + 3) == 1684107116)
          {
            goto LABEL_80;
          }

          if (*v38 == 17)
          {
            v16 = *__dst == 0x685F6469685F7462 && *(__dst + 1) == 0x6E756F635F686769;
            if (v16 && __dst[16] == 116)
            {
              goto LABEL_80;
            }
          }

          if (*v38 == 19)
          {
            if (*__dst == 0x6E5F6469685F7462 && *(__dst + 1) == 0x6F635F6C616D726FLL && *(__dst + 11) == 0x746E756F635F6C61)
            {
              goto LABEL_80;
            }
          }

          else if (*v38 == 22)
          {
            v18 = *__dst == 0x695F6469685F7462 && *(__dst + 1) == 0x72616C7567657272;
            if (v18 && *(__dst + 14) == 0x746E756F635F7261)
            {
              goto LABEL_80;
            }
          }

          if (*v38 != 12)
          {
            goto LABEL_66;
          }

          p_dst = __dst;
          goto LABEL_62;
        }
      }

      else
      {
        LOBYTE(__dst) = 0;
        v12 = v39;
        if (v39 < 0)
        {
          goto LABEL_27;
        }
      }

      if (v12 > 0x10u)
      {
        switch(v12)
        {
          case 0x11u:
            if (__dst != 0x685F6469685F7462 || *v38 != 0x6E756F635F686769 || v38[8] != 116)
            {
              goto LABEL_66;
            }

            break;
          case 0x13u:
            if (__dst != 0x6E5F6469685F7462 || *v38 != 0x6F635F6C616D726FLL || *&v38[3] != 0x746E756F635F6C61)
            {
              goto LABEL_66;
            }

            break;
          case 0x16u:
            v13 = __dst == 0x695F6469685F7462 && *v38 == 0x72616C7567657272;
            if (!v13 || *&v38[6] != 0x746E756F635F7261)
            {
              goto LABEL_66;
            }

            break;
          default:
            goto LABEL_66;
        }

        goto LABEL_80;
      }

      if (v12 != 7)
      {
        if (v12 != 12)
        {
          goto LABEL_66;
        }

        p_dst = &__dst;
LABEL_62:
        v23 = *p_dst;
        v24 = *(p_dst + 2);
        if (v23 != 0x6168635F69666977 || v24 != 1818586734)
        {
          goto LABEL_66;
        }

        goto LABEL_80;
      }

      if (__dst != 1818195042 || *(&__dst + 3) != 1684107116)
      {
LABEL_66:
        v26 = xpc_dictionary_get_string(v5, "value");
        std::string::assign(&v40, v26);
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &v40;
        }

        else
        {
          v27 = v40.__r_.__value_.__r.__words[0];
        }

        v28 = [NSString stringWithUTF8String:v27];
        if ((v39 & 0x80u) == 0)
        {
          v29 = &__dst;
        }

        else
        {
          v29 = __dst;
        }

        goto LABEL_83;
      }

LABEL_80:
      v28 = [NSNumber numberWithUnsignedInt:xpc_dictionary_get_uint64(v5, "value")];
      if ((v39 & 0x80u) == 0)
      {
        v29 = &__dst;
      }

      else
      {
        v29 = __dst;
      }

LABEL_83:
      v32 = [NSString stringWithUTF8String:v29];
      [v4 setObject:v28 forKey:v32];

      if (v39 < 0)
      {
        operator delete(__dst);
      }

      ++v8;
      v7 = v5;
      if (count == v8)
      {
        count = 0;
        goto LABEL_101;
      }
    }
  }

  v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    CAMetricsHandlers_handle_getprop_BTWifiLoadInfo();
  }

  count = 1;
LABEL_101:

LABEL_102:
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v41, v42[0]);

  return count;
}

void sub_100052238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, char *a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a22, a23);

  _Unwind_Resume(a1);
}

void populatePreviousDbAccessoryInfoForTriggerBasedMetrics()
{
  if (*(&s_CATriggerBasedInternalDB + 3462 * byte_10052A8F2 + 61))
  {
    v3[0] = 0;
    v3[1] = 0;
    v2 = v3;
    v1[7] = 6;
    strcpy(__p, "RLOC16");
    v3[3] = __p;
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v2, __p);
    operator new();
  }
}

void CAMetricsHandlers_handle_getprop_allTriggerMetrics_accessory_specific(uint64_t a1, void *a2, void *a3)
{
  v156 = a2;
  v4 = a3;
  v5 = byte_10052A8F2;
  xdict = v4;
  type = xpc_get_type(v4);
  populatePreviousDbAccessoryInfoForTriggerBasedMetrics();
  if (type != &_xpc_type_array)
  {
    v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_allTriggerMetrics_accessory_specific();
    }

    goto LABEL_310;
  }

  xarray = xpc_dictionary_get_array(xdict, "PropVal");
  if (xarray)
  {
    v7 = 0;
    v158 = &s_CATriggerBasedInternalDB + 13848 * ((v5 & 1) == 0);
    for (i = 0; ; ++i)
    {
      if (i >= xpc_array_get_count(xarray))
      {
        goto LABEL_309;
      }

      if (xpc_get_type(xarray) != &_xpc_type_array)
      {
        v155 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
        if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
        {
          CAMetricsHandlers_handle_getprop_allTriggerMetrics_accessory_specific();
        }

        goto LABEL_309;
      }

      v8 = xpc_dictionary_get_array(xarray, "PropVal");
      v9 = v8;
      if (!v8)
      {
        goto LABEL_309;
      }

      v10 = 0;
      v11 = v158;
      *(v158 + 61) = xpc_array_get_count(v8);
      while (v10 < xpc_array_get_count(v9))
      {
        v14 = xpc_array_get_dictionary(v9, v10);

        string = xpc_dictionary_get_string(v14, "key");
        v16 = strlen(string);
        if (v16 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v17 = v16;
        if (v16 >= 0x17)
        {
          operator new();
        }

        v162 = v16;
        if (v16)
        {
          memmove(__dst, string, v16);
          __dst[v17] = 0;
          v18 = v162;
          if ((v162 & 0x80000000) == 0)
          {
LABEL_20:
            if (v18 <= 10)
            {
              if (v18 == 6)
              {
                if (*__dst == 1129270354 && *&__dst[4] == 13873)
                {
                  goto LABEL_94;
                }

                goto LABEL_189;
              }

              if (v18 == 8)
              {
                goto LABEL_117;
              }

              if (v18 != 10)
              {
                goto LABEL_189;
              }

              if (*__dst == 0x6572646441747845 && *&__dst[8] == 29555)
              {
LABEL_68:
                v27 = xpc_dictionary_get_string(v14, "value");
                v28 = strlen(v27);
                if (v28 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v29 = v28;
                if (v28 >= 0x17)
                {
                  operator new();
                }

                *(&__str.__r_.__value_.__s + 23) = v28;
                if (v28)
                {
                  memmove(&__str, v27, v28);
                }

                __str.__r_.__value_.__s.__data_[v29] = 0;
                std::string::operator=((v11 + 248), &__str);
                goto LABEL_221;
              }

              goto LABEL_131;
            }

            if (v18 <= 13)
            {
              if (v18 == 11)
              {
                if (*__dst == 0x5265676172657641 && *&__dst[3] == 0x6973735265676172)
                {
                  goto LABEL_110;
                }
              }

              else if (v18 == 13)
              {
LABEL_24:
                if (*__dst == 0x6C6175516B6E694CLL && *&__dst[5] == 0x6E497974696C6175)
                {
                  goto LABEL_146;
                }
              }

LABEL_189:
              if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__dst, "rx_total"))
              {
                uint64 = xpc_dictionary_get_uint64(v14, "value");
                v65 = uint64;
                if (uint64)
                {
                  v66 = log10(uint64) + 1.0;
                  v67 = v66 - 3;
                  if (v66 <= 3)
                  {
                    v67 = 0;
                  }

                  v12 = v67;
                }

                else
                {
                  v12 = 0.0;
                }

                v13 = __exp10(v12);
                *(v11 + 84) = (v13 * (v65 / v13));
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__dst, "rx_success_perc"))
              {
                v68 = xpc_dictionary_get_uint64(v14, "value");
                v69 = v68;
                if (v68)
                {
                  v70 = log10(v68) + 1.0;
                  v71 = v70 - 3;
                  if (v70 <= 3)
                  {
                    v71 = 0;
                  }

                  v72 = v71;
                }

                else
                {
                  v72 = 0.0;
                }

                v83 = __exp10(v72);
                *(v11 + 87) = (v83 * (v69 / v83));
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__dst, "tx_failure"))
              {
                v73 = xpc_dictionary_get_uint64(v14, "value");
                v74 = v73;
                if (v73)
                {
                  v75 = log10(v73) + 1.0;
                  v76 = v75 - 3;
                  if (v75 <= 3)
                  {
                    v76 = 0;
                  }

                  v77 = v76;
                }

                else
                {
                  v77 = 0.0;
                }

                v89 = __exp10(v77);
                *(v11 + 78) = (v89 * (v74 / v89));
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__dst, "tx_success"))
              {
                v78 = xpc_dictionary_get_uint64(v14, "value");
                v79 = v78;
                if (v78)
                {
                  v80 = log10(v78) + 1.0;
                  v81 = v80 - 3;
                  if (v80 <= 3)
                  {
                    v81 = 0;
                  }

                  v82 = v81;
                }

                else
                {
                  v82 = 0.0;
                }

                v96 = __exp10(v82);
                *(v11 + 77) = (v96 * (v79 / v96));
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__dst, "tx_total"))
              {
                v84 = xpc_dictionary_get_uint64(v14, "value");
                v85 = v84;
                if (v84)
                {
                  v86 = log10(v84) + 1.0;
                  v87 = v86 - 3;
                  if (v86 <= 3)
                  {
                    v87 = 0;
                  }

                  v88 = v87;
                }

                else
                {
                  v88 = 0.0;
                }

                v102 = __exp10(v88);
                *(v11 + 76) = (v102 * (v85 / v102));
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__dst, "tx_success_perc"))
              {
                v91 = xpc_dictionary_get_uint64(v14, "value");
                v92 = v91;
                if (v91)
                {
                  v93 = log10(v91) + 1.0;
                  v94 = v93 - 3;
                  if (v93 <= 3)
                  {
                    v94 = 0;
                  }

                  v95 = v94;
                }

                else
                {
                  v95 = 0.0;
                }

                v108 = __exp10(v95);
                *(v11 + 79) = (v108 * (v92 / v108));
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__dst, "tx_app_pkt_success"))
              {
                v97 = xpc_dictionary_get_uint64(v14, "value");
                v98 = v97;
                if (v97)
                {
                  v99 = log10(v97) + 1.0;
                  v100 = v99 - 3;
                  if (v99 <= 3)
                  {
                    v100 = 0;
                  }

                  v101 = v100;
                }

                else
                {
                  v101 = 0.0;
                }

                v114 = __exp10(v101);
                *(v11 + 81) = (v114 * (v98 / v114));
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__dst, "tx_app_total"))
              {
                v103 = xpc_dictionary_get_uint64(v14, "value");
                v104 = v103;
                if (v103)
                {
                  v105 = log10(v103) + 1.0;
                  v106 = v105 - 3;
                  if (v105 <= 3)
                  {
                    v106 = 0;
                  }

                  v107 = v106;
                }

                else
                {
                  v107 = 0.0;
                }

                v120 = __exp10(v107);
                *(v11 + 80) = (v120 * (v104 / v120));
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__dst, "tx_app_pkt_failure"))
              {
                v109 = xpc_dictionary_get_uint64(v14, "value");
                v110 = v109;
                if (v109)
                {
                  v111 = log10(v109) + 1.0;
                  v112 = v111 - 3;
                  if (v111 <= 3)
                  {
                    v112 = 0;
                  }

                  v113 = v112;
                }

                else
                {
                  v113 = 0.0;
                }

                v126 = __exp10(v113);
                *(v11 + 82) = (v126 * (v110 / v126));
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__dst, "tx_app_success_perc"))
              {
                v115 = xpc_dictionary_get_uint64(v14, "value");
                v116 = v115;
                if (v115)
                {
                  v117 = log10(v115) + 1.0;
                  v118 = v117 - 3;
                  if (v117 <= 3)
                  {
                    v118 = 0;
                  }

                  v119 = v118;
                }

                else
                {
                  v119 = 0.0;
                }

                v132 = __exp10(v119);
                *(v11 + 83) = (v132 * (v116 / v132));
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__dst, "tx_icmp_err"))
              {
                v121 = xpc_dictionary_get_uint64(v14, "value");
                v122 = v121;
                if (v121)
                {
                  v123 = log10(v121) + 1.0;
                  v124 = v123 - 3;
                  if (v123 <= 3)
                  {
                    v124 = 0;
                  }

                  v125 = v124;
                }

                else
                {
                  v125 = 0.0;
                }

                v138 = __exp10(v125);
                *(v11 + 91) = (v138 * (v122 / v138));
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__dst, "rx_icmp_err"))
              {
                v127 = xpc_dictionary_get_uint64(v14, "value");
                v128 = v127;
                if (v127)
                {
                  v129 = log10(v127) + 1.0;
                  v130 = v129 - 3;
                  if (v129 <= 3)
                  {
                    v130 = 0;
                  }

                  v131 = v130;
                }

                else
                {
                  v131 = 0.0;
                }

                v144 = __exp10(v131);
                *(v11 + 92) = (v144 * (v128 / v144));
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__dst, "tx_delaymin"))
              {
                v133 = xpc_dictionary_get_uint64(v14, "value");
                v134 = v133;
                if (v133)
                {
                  v135 = log10(v133) + 1.0;
                  v136 = v135 - 3;
                  if (v135 <= 3)
                  {
                    v136 = 0;
                  }

                  v137 = v136;
                }

                else
                {
                  v137 = 0.0;
                }

                v150 = __exp10(v137);
                *(v11 + 89) = (v150 * (v134 / v150));
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__dst, "tx_delaymax"))
              {
                v139 = xpc_dictionary_get_uint64(v14, "value");
                v140 = v139;
                if (v139)
                {
                  v141 = log10(v139) + 1.0;
                  v142 = v141 - 3;
                  if (v141 <= 3)
                  {
                    v142 = 0;
                  }

                  v143 = v142;
                }

                else
                {
                  v143 = 0.0;
                }

                v152 = __exp10(v143);
                *(v11 + 90) = (v152 * (v140 / v152));
              }

              else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__dst, "tx_delayavg"))
              {
                v145 = xpc_dictionary_get_uint64(v14, "value");
                v146 = v145;
                if (v145)
                {
                  v147 = log10(v145) + 1.0;
                  v148 = v147 - 3;
                  if (v147 <= 3)
                  {
                    v148 = 0;
                  }

                  v149 = v148;
                }

                else
                {
                  v149 = 0.0;
                }

                v153 = __exp10(v149);
                *(v11 + 88) = (v153 * (v146 / v153));
              }

              else
              {
                v151 = log_get_logging_obg("com.apple.wpantund.awd", "default");
                if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
                {
                  v154 = __dst;
                  if ((v162 & 0x80u) != 0)
                  {
                    v154 = *__dst;
                  }

                  LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
                  *(__str.__r_.__value_.__r.__words + 4) = v154;
                  _os_log_error_impl(&_mh_execute_header, v151, OS_LOG_TYPE_ERROR, "CAMetrics : CAMetricsHandlers_handle_getprop_allTriggerMetrics_accessory_specific - ERROR : Unhandled key=%s", &__str, 0xCu);
                }
              }

              goto LABEL_12;
            }

            if (v18 == 14)
            {
              if (*__dst == 0x765F646165726874 && *&__dst[6] == 0x6E6F69737265765FLL)
              {
                goto LABEL_111;
              }

              if (*__dst == 0x63657269645F7369 && *&__dst[6] == 0x6B6E696C5F746365)
              {
                goto LABEL_112;
              }

              goto LABEL_103;
            }

LABEL_73:
            if (v18 != 22)
            {
              goto LABEL_189;
            }

            if (*__dst == 0x65727275635F7369 && *&__dst[8] == 0x5F65646F6E5F746ELL && *&__dst[14] == 0x746E657261705F65)
            {
              goto LABEL_161;
            }

LABEL_81:
            if (*__dst == 0x6F6E6B5F7473616CLL && *&__dst[8] == 0x63697665645F6E77 && *&__dst[14] == 0x656C6F725F656369)
            {
              goto LABEL_183;
            }

            goto LABEL_130;
          }
        }

        else
        {
          __dst[0] = 0;
          v18 = v162;
          if ((v162 & 0x80000000) == 0)
          {
            goto LABEL_20;
          }
        }

        if (*&__dst[8] == 6 && **__dst == 1129270354 && *(*__dst + 4) == 13873)
        {
LABEL_94:
          *(v11 + 148) = xpc_dictionary_get_uint64(v14, "value");
          goto LABEL_12;
        }

        if (*&__dst[8] == 10 && **__dst == 0x6572646441747845 && *(*__dst + 8) == 29555)
        {
          goto LABEL_68;
        }

        v22 = *&__dst[8];
        if (*&__dst[8] == 14)
        {
          if (**__dst == 0x765F646165726874 && *(*__dst + 6) == 0x6E6F69737265765FLL)
          {
LABEL_111:
            v11[376] = xpc_dictionary_get_uint64(v14, "value");
            goto LABEL_12;
          }

          if (**__dst == 0x63657269645F7369 && *(*__dst + 6) == 0x6B6E696C5F746365)
          {
LABEL_112:
            v11[372] = xpc_dictionary_get_BOOL(v14, "value");
            goto LABEL_12;
          }

          v22 = *&__dst[8];
        }

        if (v22 == 11)
        {
          if (**__dst == 0x5265676172657641 && *(*__dst + 3) == 0x6973735265676172)
          {
LABEL_110:
            *(v11 + 149) = xpc_dictionary_get_int64(v14, "value");
            goto LABEL_12;
          }

          if ((v18 & 0x80) == 0)
          {
            if (v18 <= 12)
            {
              if (v18 == 8)
              {
LABEL_117:
                if (*__dst == 0x697373527473614CLL)
                {
                  goto LABEL_145;
                }

                goto LABEL_189;
              }

LABEL_130:
              if (v18 != 10)
              {
                goto LABEL_189;
              }

              goto LABEL_131;
            }

LABEL_103:
            if (v18 == 13)
            {
              goto LABEL_24;
            }

            goto LABEL_73;
          }

          v22 = *&__dst[8];
        }

        if (v22 == 8)
        {
          if (**__dst == 0x697373527473614CLL)
          {
LABEL_145:
            *(v11 + 150) = xpc_dictionary_get_int64(v14, "value");
            goto LABEL_12;
          }

          if ((v18 & 0x80) == 0)
          {
            goto LABEL_189;
          }
        }

        if (*&__dst[8] == 22)
        {
          if (**__dst == 0x65727275635F7369 && *(*__dst + 8) == 0x5F65646F6E5F746ELL && *(*__dst + 14) == 0x746E657261705F65)
          {
LABEL_161:
            v11[375] = xpc_dictionary_get_BOOL(v14, "value");
            goto LABEL_12;
          }

          if ((v18 & 0x80) == 0)
          {
            if (v18 != 10)
            {
              if (v18 != 22)
              {
                goto LABEL_189;
              }

              goto LABEL_81;
            }

LABEL_131:
            if (*__dst == 0x756C6961665F7872 && *&__dst[8] == 25970)
            {
              goto LABEL_179;
            }

            goto LABEL_135;
          }
        }

        else if (*&__dst[8] == 13)
        {
          if (**__dst == 0x6C6175516B6E694CLL && *(*__dst + 5) == 0x6E497974696C6175)
          {
LABEL_146:
            v11[302] = xpc_dictionary_get_uint64(v14, "value");
            goto LABEL_12;
          }

          if ((v18 & 0x80) == 0)
          {
            goto LABEL_130;
          }
        }

        v52 = *&__dst[8];
        if (*&__dst[8] == 22)
        {
          if (**__dst == 0x6F6E6B5F7473616CLL && *(*__dst + 8) == 0x63697665645F6E77 && *(*__dst + 14) == 0x656C6F725F656369)
          {
LABEL_183:
            v61 = xpc_dictionary_get_string(v14, "value");
            v62 = strlen(v61);
            if (v62 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v63 = v62;
            if (v62 >= 0x17)
            {
              operator new();
            }

            *(&__str.__r_.__value_.__s + 23) = v62;
            if (v62)
            {
              memmove(&__str, v61, v62);
            }

            __str.__r_.__value_.__s.__data_[v63] = 0;
            std::string::operator=((v11 + 272), &__str);
LABEL_221:
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            goto LABEL_12;
          }

          v52 = *&__dst[8];
        }

        if (v52 != 10)
        {
          goto LABEL_187;
        }

        if (**__dst == 0x756C6961665F7872 && *(*__dst + 8) == 25970)
        {
LABEL_179:
          v56 = xpc_dictionary_get_uint64(v14, "value");
          v57 = v56;
          if (v56)
          {
            v58 = log10(v56) + 1.0;
            v59 = v58 - 3;
            if (v58 <= 3)
            {
              v59 = 0;
            }

            v60 = v59;
          }

          else
          {
            v60 = 0.0;
          }

          v90 = __exp10(v60);
          *(v11 + 86) = (v90 * (v57 / v90));
          goto LABEL_12;
        }

        if ((v18 & 0x80) != 0)
        {
LABEL_187:
          if (*&__dst[8] != 10)
          {
            goto LABEL_189;
          }

          v40 = *__dst;
          goto LABEL_136;
        }

        if (v18 != 10)
        {
          goto LABEL_189;
        }

LABEL_135:
        v40 = __dst;
LABEL_136:
        v41 = *v40;
        v42 = *(v40 + 4);
        if (v41 != 0x65636375735F7872 || v42 != 29555)
        {
          goto LABEL_189;
        }

        v44 = xpc_dictionary_get_uint64(v14, "value");
        v45 = v44;
        if (v44)
        {
          v46 = log10(v44) + 1.0;
          v47 = v46 - 3;
          if (v46 <= 3)
          {
            v47 = 0;
          }

          v48 = v47;
        }

        else
        {
          v48 = 0.0;
        }

        v49 = __exp10(v48);
        *(v11 + 85) = (v49 * (v45 / v49));
LABEL_12:
        if (v162 < 0)
        {
          operator delete(*__dst);
        }

        ++v10;
        v11 += 136;
        v7 = v14;
      }
    }
  }

  v7 = 0;
LABEL_309:

LABEL_310:
}