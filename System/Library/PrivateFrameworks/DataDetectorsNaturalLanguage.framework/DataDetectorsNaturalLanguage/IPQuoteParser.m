@interface IPQuoteParser
+ (id)strippedQuoteBlockWithHtml:(id)a3;
@end

@implementation IPQuoteParser

+ (id)strippedQuoteBlockWithHtml:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v151 = 0;
    goto LABEL_327;
  }

  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  *buffer = 0u;
  v182 = 0u;
  Length = CFStringGetLength(v3);
  theString[0] = v4;
  *(&v190 + 1) = 0;
  *&v191 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v4);
  CStringPtr = 0;
  theString[1] = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v4, 0x600u);
  }

  *(&v191 + 1) = 0;
  v192 = 0;
  *&v190 = CStringPtr;
  if (Length < 1)
  {
    goto LABEL_321;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v168 = 0;
  v154 = 0;
  v155 = 0;
  v161 = 0;
  v162 = 0;
  v157 = 0;
  v158 = 0;
  v153 = 0;
  v11 = 0;
  v156 = 0;
  LOBYTE(v12) = 0;
  v13 = 0;
  v159 = Length - 14;
  v167 = 0;
  v14 = MEMORY[0x277D85DE0];
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v160 = -1;
  do
  {
    if (v13 < 0)
    {
      if (v10)
      {
        goto LABEL_162;
      }

      v17 = 0;
LABEL_22:
      if (v8 && !v9)
      {
        if (v168)
        {
          LOBYTE(v12) = 0;
          v10 = 0;
          v9 = 0;
          v168 = 1;
        }

        else if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          LOBYTE(v12) = 0;
          v168 = 0;
          v10 = 0;
          v9 = 0;
          v15 = (*(&v190 + 1) + v13) & ~((*(&v190 + 1) + v13) >> 63);
        }

        else
        {
          v9 = 0;
          LOBYTE(v12) = 0;
          v39 = v17 <= 0x20u && ((1 << v17) & 0x100002600) != 0;
          v168 = v39;
          v10 = 0;
          if (v17 > 0x20u)
          {
            v9 = 0;
          }
        }

        goto LABEL_163;
      }

      if (v8 | v9)
      {
        v10 = 0;
        goto LABEL_163;
      }

      v9 = 0;
      v10 = 0;
      if (v17 > 0xCu)
      {
        if (v17 != 32)
        {
          if (v17 != 13)
          {
            goto LABEL_30;
          }

          goto LABEL_60;
        }
      }

      else if (v17 != 9)
      {
        if (v17 != 10)
        {
LABEL_30:
          v23 = v11 > 0 && v162 == 0;
          v24 = v23;
          v156 |= v24;
          if (v11 | v162)
          {
            v10 = 0;
            v9 = 0;
            v8 = 0;
            goto LABEL_163;
          }

          v65 = v160;
          v66 = v12 | (v160 < 0);
          LOBYTE(v12) = 0;
          v11 = 0;
          if (v66)
          {
            v65 = 0;
          }

          v160 = v65;
          v67 = v161;
          if (v66)
          {
            v67 = 0;
          }

          v161 = v67;
          v162 = 0;
          v23 = (v66 & 1) == 0;
          v10 = 0;
          v68 = v155;
          if (!v23)
          {
            v68 = v13;
          }

          v155 = v68;
          goto LABEL_75;
        }

LABEL_60:
        v31 = v161;
        v32 = v162;
        v33 = v11 | v162;
        v34 = v13 + ~v155;
        v35 = v160;
        if (v160)
        {
          v34 = v161;
        }

        v36 = -1;
        if (v160 <= 3)
        {
          v36 = v160 + 1;
        }

        if (!v33)
        {
          LOBYTE(v12) = 1;
          v32 = 0;
          v11 = 0;
        }

        v37 = v158;
        if (!v33)
        {
          v37 = 0;
        }

        v158 = v37;
        v38 = v157;
        if (!v33)
        {
          v38 = 0;
        }

        v157 = v38;
        v10 = 0;
        if (!v33)
        {
          v35 = v36;
        }

        v160 = v35;
        if (!v33)
        {
          v31 = v34;
        }

        v161 = v31;
        v162 = v32;
LABEL_75:
        v9 = 0;
        v8 = 0;
        goto LABEL_163;
      }

      v8 = 0;
      goto LABEL_163;
    }

    v16 = v191;
    if (v191 <= v13)
    {
      v17 = 0;
    }

    else if (theString[1])
    {
      v17 = *(&theString[1]->isa + *(&v190 + 1) + v13);
    }

    else if (v190)
    {
      v17 = *(v190 + *(&v190 + 1) + v13);
    }

    else
    {
      if (v192 <= v13 || (v26 = *(&v191 + 1), *(&v191 + 1) > v13))
      {
        v27 = v13 - 4;
        if (v13 < 4)
        {
          v27 = 0;
        }

        if (v27 + 64 < v191)
        {
          v16 = v27 + 64;
        }

        *(&v191 + 1) = v27;
        v192 = v16;
        v28 = v8;
        v29 = v9;
        v194.length = v16 - v27;
        v194.location = *(&v190 + 1) + v27;
        v30 = v15;
        CFStringGetCharacters(theString[0], v194, buffer);
        v9 = v29;
        v15 = v30;
        v8 = v28;
        v14 = MEMORY[0x277D85DE0];
        v26 = *(&v191 + 1);
      }

      v17 = buffer[v13 - v26];
    }

    if (v10)
    {
      *theString1 = *theString;
      v178 = v190;
      v179 = v191;
      v180 = v192;
      v173 = v185;
      v174 = v186;
      v175 = v187;
      v176 = v188;
      *v169 = *buffer;
      v170 = v182;
      v171 = v183;
      v172 = v184;
      v18 = v191;
      if (v191 > v13)
      {
        if (theString1[1])
        {
          v19 = *(&theString1[1]->isa + *(&v178 + 1) + v13);
        }

        else if (v178)
        {
          v19 = *(v178 + *(&v178 + 1) + v13);
        }

        else
        {
          if (v180 <= v13 || (v44 = *(&v179 + 1), *(&v179 + 1) > v13))
          {
            v45 = v13 - 4;
            if (v13 < 4)
            {
              v45 = 0;
            }

            if (v45 + 64 < v191)
            {
              v18 = v45 + 64;
            }

            *(&v179 + 1) = v45;
            v180 = v18;
            v46 = v8;
            v47 = v9;
            v195.length = v18 - v45;
            v195.location = *(&v178 + 1) + v45;
            v48 = v15;
            CFStringGetCharacters(theString1[0], v195, v169);
            v9 = v47;
            v15 = v48;
            v8 = v46;
            v14 = MEMORY[0x277D85DE0];
            v44 = *(&v179 + 1);
          }

          v19 = v169[v13 - v44];
        }

        if (v19 == 45)
        {
          v49 = v13 + 1;
          v50 = v179;
          if (v179 > v13 + 1)
          {
            if (theString1[1])
            {
              v51 = *(&theString1[1]->isa + *(&v178 + 1) + v49);
            }

            else if (v178)
            {
              v51 = *(v178 + *(&v178 + 1) + v49);
            }

            else
            {
              if (v180 <= v49 || (v78 = *(&v179 + 1), *(&v179 + 1) > v49))
              {
                v79 = v13 - 3;
                if (v13 < 3)
                {
                  v79 = 0;
                }

                if (v79 + 64 < v179)
                {
                  v50 = v79 + 64;
                }

                *(&v179 + 1) = v79;
                v180 = v50;
                v80 = v8;
                v81 = v9;
                v197.length = v50 - v79;
                v197.location = *(&v178 + 1) + v79;
                v82 = v15;
                CFStringGetCharacters(theString1[0], v197, v169);
                v9 = v81;
                v15 = v82;
                v8 = v80;
                v14 = MEMORY[0x277D85DE0];
                v78 = *(&v179 + 1);
              }

              v51 = v169[v49 - v78];
            }

            if (v51 == 45)
            {
              v83 = v13 + 2;
              v84 = v179;
              if (v179 > v13 + 2)
              {
                if (theString1[1])
                {
                  v85 = *(&theString1[1]->isa + *(&v178 + 1) + v83);
                }

                else if (v178)
                {
                  v85 = *(v178 + *(&v178 + 1) + v83);
                }

                else
                {
                  if (v180 <= v83 || (v133 = *(&v179 + 1), *(&v179 + 1) > v83))
                  {
                    v134 = v13 - 2;
                    if (v13 < 2)
                    {
                      v134 = 0;
                    }

                    if (v134 + 64 < v179)
                    {
                      v84 = v134 + 64;
                    }

                    *(&v179 + 1) = v134;
                    v180 = v84;
                    v135 = v8;
                    v136 = v9;
                    v201.length = v84 - v134;
                    v201.location = *(&v178 + 1) + v134;
                    v137 = v15;
                    CFStringGetCharacters(theString1[0], v201, v169);
                    v9 = v136;
                    v15 = v137;
                    v8 = v135;
                    v14 = MEMORY[0x277D85DE0];
                    v133 = *(&v179 + 1);
                  }

                  v85 = v169[v83 - v133];
                }

                v10 = v85 != 62;
                if (v85 == 62)
                {
                  v13 += 2;
                }

                goto LABEL_163;
              }
            }
          }
        }
      }

LABEL_162:
      v10 = 1;
      goto LABEL_163;
    }

    if (v17 == 62)
    {
      LOBYTE(v12) = 0;
      if (!v8 || v9)
      {
        v10 = 0;
        goto LABEL_163;
      }

      v25 = Length - v15;
      if (Length < v15)
      {
        LOBYTE(v12) = 0;
        v10 = 0;
        v9 = 0;
        goto LABEL_163;
      }

      v163 = --v8;
      if (v25 < 0xA)
      {
        v41 = v162;
        if (v162)
        {
          v52 = 1;
        }

        else
        {
          v52 = v11 <= 0;
        }

        v53 = !v52;
        v156 |= v53;
        if (v25 >= 4)
        {
          goto LABEL_118;
        }

        v164 = v11;
        if (v25 == 3)
        {
          v76 = v15;
          v77 = [(__CFString *)v4 compare:@"div" options:1 range:?];
          v15 = v76;
          v70 = 0;
          v56 = 0;
          v55 = 0;
          v69 = v77 == 0;
          goto LABEL_141;
        }

        if (v25 >= 2)
        {
          v70 = 0;
          v56 = 0;
          v55 = 0;
          v69 = 0;
          goto LABEL_141;
        }

        v70 = 0;
        v56 = 0;
        v55 = 0;
        v69 = 0;
        v73 = 0;
      }

      else
      {
        v40 = v15;
        v41 = v162;
        if (![(__CFString *)v4 compare:@"blockquote" options:1 range:?])
        {
          v14 = MEMORY[0x277D85DE0];
          if (v162)
          {
            LOBYTE(v12) = 0;
            v10 = 0;
            v9 = 0;
            ++v162;
            v8 = v163;
            v15 = v40;
            goto LABEL_163;
          }

          if (v11 < 1)
          {
            v8 = v163;
            v15 = v40;
            if (v160 < 0 || (v138 = v155 + v161, v155 + v161 < 0) || (v139 = v191, v191 <= v138))
            {
              LOBYTE(v12) = 0;
              v10 = 0;
              v9 = 0;
              v162 = 1;
              v153 = v167;
              goto LABEL_163;
            }

            if (theString[1])
            {
              v140 = *(&theString[1]->isa + *(&v190 + 1) + v138);
            }

            else if (v190)
            {
              v140 = *(v190 + *(&v190 + 1) + v138);
            }

            else
            {
              if (v192 <= v138 || (v145 = *(&v191 + 1), *(&v191 + 1) > v138))
              {
                v146 = v138 - 4;
                if (v138 < 4)
                {
                  v146 = 0;
                }

                if (v146 + 64 < v191)
                {
                  v139 = v146 + 64;
                }

                *(&v191 + 1) = v146;
                v192 = v139;
                v203.length = v139 - v146;
                v203.location = *(&v190 + 1) + v146;
                CFStringGetCharacters(theString[0], v203, buffer);
                v15 = v40;
                v8 = v163;
                v14 = MEMORY[0x277D85DE0];
                v145 = *(&v191 + 1);
              }

              v140 = buffer[v138 - v145];
            }

            LOBYTE(v12) = 0;
            v10 = 0;
            v9 = 0;
            v147 = v155;
            if (v158 > 0)
            {
              v147 = v157;
            }

            v23 = v140 == 58;
            v148 = v167;
            if (v23)
            {
              v148 = v147;
            }

            v153 = v148;
          }

          else
          {
            v8 = v163;
            if (v156)
            {
              goto LABEL_320;
            }

            v15 = v40;
            LOBYTE(v12) = 0;
            v156 = 0;
            v10 = 0;
            v9 = 0;
          }

          v162 = 1;
          goto LABEL_163;
        }

        if (v162 && v25 != 10 && ![(__CFString *)v4 compare:@"/blockquote" options:1 range:v40, 11])
        {
          LOBYTE(v12) = v162 - 1;
          v14 = MEMORY[0x277D85DE0];
          v15 = v40;
          if (v162 == 1)
          {
            v162 = 0;
            v10 = 0;
            v9 = 0;
            v11 = v13 - v153 + 1;
          }

          else
          {
            --v162;
            LOBYTE(v12) = 0;
            v10 = 0;
            v9 = 0;
          }

          goto LABEL_257;
        }

        if (v162)
        {
          v42 = 1;
        }

        else
        {
          v42 = v11 <= 0;
        }

        v43 = !v42;
        v156 |= v43;
        v15 = v40;
LABEL_118:
        v54 = v15;
        v55 = [(__CFString *)v4 compare:@"span" options:1 range:v153]== 0;
        v164 = v11;
        v56 = v25 >= 5 && [(__CFString *)v4 compare:@"/span" options:1 range:v54, 5]== 0;
        v69 = [(__CFString *)v4 compare:@"div" options:1 range:v54, 3]== 0;
        v70 = [(__CFString *)v4 compare:@"/div" options:1 range:v54, 4]== 0;
        v15 = v54;
LABEL_141:
        v71 = v15;
        v72 = [(__CFString *)v4 compare:@"br" options:1 range:v153];
        v15 = v71;
        v73 = v72 == 0;
        v14 = MEMORY[0x277D85DE0];
        v8 = v163;
      }

      v12 = (v73 || v69 || v70) && (v164 | v41) == 0;
      if (v12 == 1)
      {
        v74 = v160 == 0;
        v75 = v161;
        if (!v160)
        {
          v75 = v167 + ~v155;
        }

        v161 = v75;
        if (v160 >= 4)
        {
          v157 = 0;
          v158 = 0;
          v74 = 0;
          v160 = -1;
        }

        else
        {
          ++v160;
        }
      }

      else
      {
        v74 = 0;
      }

      if (v70 || v56)
      {
        if (v161 >= 1)
        {
          goto LABEL_174;
        }
      }

      else if (v161 > 0 && v73)
      {
LABEL_174:
        v86 = !v74;
        v87 = v158;
        if (!v86)
        {
          v87 = v13 - v154;
        }

        v158 = v87;
        v88 = v157;
        if (!v86)
        {
          v88 = v154;
        }

        v157 = v88;
      }

      if (v69 || v55)
      {
        v10 = 0;
        v9 = 0;
        v89 = v167;
      }

      else
      {
        v10 = 0;
        v9 = 0;
        v23 = !v73;
        v89 = v154;
        if (!v23)
        {
          v89 = v15 + 3;
        }
      }

      v154 = v89;
      v11 = v164;
      goto LABEL_163;
    }

    if (v17 != 60)
    {
      goto LABEL_22;
    }

    v20 = v13 + 1;
    *theString1 = *theString;
    v178 = v190;
    v179 = v191;
    v180 = v192;
    v173 = v185;
    v174 = v186;
    v175 = v187;
    v176 = v188;
    *v169 = *buffer;
    v170 = v182;
    v171 = v183;
    v172 = v184;
    v21 = v191;
    if (v191 <= v13 + 1)
    {
      goto LABEL_203;
    }

    if (theString1[1])
    {
      v22 = *(&theString1[1]->isa + *(&v178 + 1) + v20);
    }

    else if (v178)
    {
      v22 = *(v178 + *(&v178 + 1) + v20);
    }

    else
    {
      if (v180 <= v20 || (v57 = *(&v179 + 1), *(&v179 + 1) > v20))
      {
        v58 = v13 - 3;
        if (v20 < 4)
        {
          v58 = 0;
        }

        if (v58 + 64 < v191)
        {
          v21 = v58 + 64;
        }

        *(&v179 + 1) = v58;
        v180 = v21;
        v59 = v8;
        v60 = v9;
        v196.length = v21 - v58;
        v196.location = *(&v178 + 1) + v58;
        v61 = v15;
        CFStringGetCharacters(theString1[0], v196, v169);
        v9 = v60;
        v15 = v61;
        v8 = v59;
        v14 = MEMORY[0x277D85DE0];
        v57 = *(&v179 + 1);
      }

      v22 = v169[v20 - v57];
    }

    if (v22 != 33)
    {
      goto LABEL_203;
    }

    v62 = v13 + 2;
    v63 = v179;
    if (v179 <= v13 + 2)
    {
      goto LABEL_203;
    }

    if (theString1[1])
    {
      v64 = *(&theString1[1]->isa + *(&v178 + 1) + v62);
    }

    else if (v178)
    {
      v64 = *(v178 + *(&v178 + 1) + v62);
    }

    else
    {
      if (v180 <= v62 || (v91 = *(&v179 + 1), *(&v179 + 1) > v62))
      {
        v92 = v13 - 2;
        if (v20 < 3)
        {
          v92 = 0;
        }

        if (v92 + 64 < v179)
        {
          v63 = v92 + 64;
        }

        *(&v179 + 1) = v92;
        v180 = v63;
        v93 = v8;
        v94 = v9;
        v198.length = v63 - v92;
        v198.location = *(&v178 + 1) + v92;
        v95 = v15;
        CFStringGetCharacters(theString1[0], v198, v169);
        v9 = v94;
        v15 = v95;
        v8 = v93;
        v14 = MEMORY[0x277D85DE0];
        v91 = *(&v179 + 1);
      }

      v64 = v169[v62 - v91];
    }

    if (v64 == 45 && (v96 = v13 + 3, v97 = v179, v179 > v13 + 3))
    {
      if (theString1[1])
      {
        v98 = v11;
        v99 = v8;
        v100 = *(&theString1[1]->isa + *(&v178 + 1) + v96);
      }

      else
      {
        v98 = v11;
        if (v178)
        {
          v99 = v8;
          v100 = *(v178 + *(&v178 + 1) + v96);
        }

        else
        {
          v99 = v8;
          if (v180 <= v96 || (v141 = *(&v179 + 1), *(&v179 + 1) > v96))
          {
            v142 = v13 - 1;
            if (v20 < 2)
            {
              v142 = 0;
            }

            if (v142 + 64 < v179)
            {
              v97 = v142 + 64;
            }

            *(&v179 + 1) = v142;
            v180 = v97;
            v143 = v9;
            v202.length = v97 - v142;
            v202.location = *(&v178 + 1) + v142;
            v144 = v15;
            CFStringGetCharacters(theString1[0], v202, v169);
            v9 = v143;
            v15 = v144;
            v14 = MEMORY[0x277D85DE0];
            v141 = *(&v179 + 1);
          }

          v100 = v169[v96 - v141];
        }
      }

      if (v100 == 45)
      {
        LOBYTE(v12) = 0;
        v10 = 1;
        v13 += 3;
        v8 = v99;
        goto LABEL_236;
      }
    }

    else
    {
LABEL_203:
      v98 = v11;
      v99 = v8;
    }

    v166 = v9;
    v101 = v9 == 0;
    v102 = -v13;
    v103 = v13 + 64;
    v104 = v13;
    do
    {
      if (v104 >= 3)
      {
        v105 = 3;
      }

      else
      {
        v105 = v104;
      }

      v106 = v104 + 1;
      v107 = v191;
      if (v191 <= v104 + 1)
      {
        v109 = 0;
LABEL_225:
        v117 = *(v14 + 4 * v109 + 60) & 0x4000;
        goto LABEL_227;
      }

      if (theString[1])
      {
        v108 = *(&theString[1]->isa + *(&v190 + 1) + v104 + 1);
      }

      else if (v190)
      {
        v108 = *(v190 + *(&v190 + 1) + v104 + 1);
      }

      else
      {
        v110 = *(&v191 + 1);
        if (v192 <= v106 || *(&v191 + 1) > v106)
        {
          v112 = -v105;
          v113 = v105 + v102;
          v114 = v103 - v105;
          v115 = v104 + v112;
          v116 = v115 + 64;
          if (v115 + 64 >= v191)
          {
            v116 = v191;
          }

          *(&v191 + 1) = v115;
          v192 = v116;
          if (v191 >= v114)
          {
            v107 = v114;
          }

          v199.location = v115 + *(&v190 + 1);
          v199.length = v107 + v113;
          CFStringGetCharacters(theString[0], v199, buffer);
          v14 = MEMORY[0x277D85DE0];
          v110 = *(&v191 + 1);
        }

        v108 = buffer[v104 + 1 - v110];
      }

      v109 = v108;
      if (v108 <= 0x7Fu)
      {
        goto LABEL_225;
      }

      v117 = __maskrune(v108, 0x4000uLL);
      v14 = MEMORY[0x277D85DE0];
LABEL_227:
      --v102;
      ++v103;
      ++v104;
    }

    while (v117);
    v9 = v166;
    v118 = v167;
    if (!v166)
    {
      v118 = v13;
    }

    v167 = v118;
    v8 = v99 + v101;
    if (v104 >= v159)
    {
      LOBYTE(v12) = 0;
      v168 = 0;
      v10 = 0;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_236:
      v11 = v98;
      goto LABEL_163;
    }

    *theString1 = *theString;
    v178 = v190;
    v179 = v191;
    v180 = v192;
    v173 = v185;
    v174 = v186;
    v175 = v187;
    v176 = v188;
    *v169 = *buffer;
    v170 = v182;
    v171 = v183;
    v172 = v184;
    v119 = v191;
    v163 = v99 + v101;
    v165 = v98;
    if (v191 <= v104)
    {
      v120 = Length;
      v121 = v4;
      v123 = 0;
    }

    else
    {
      if (theString1[1])
      {
        v120 = Length;
        v121 = v4;
        v122 = theString1[1] + *(&v178 + 1);
        goto LABEL_234;
      }

      if (v178)
      {
        v120 = Length;
        v121 = v4;
        v123 = *(v178 + *(&v178 + 1) + v104);
      }

      else
      {
        v120 = Length;
        if (v180 <= v104 || (v130 = *(&v179 + 1), *(&v179 + 1) > v104))
        {
          v131 = 4;
          if (v104 < 4)
          {
            v131 = v104;
          }

          v132 = v104 - v131 + 64;
          if (v132 >= v191)
          {
            v132 = v191;
          }

          *(&v179 + 1) = v104 - v131;
          v180 = v132;
          if (v191 >= v103 - v131)
          {
            v119 = v103 - v131;
          }

          v200.length = v119 + v131 - v104;
          v200.location = v104 - v131 + *(&v178 + 1);
          CFStringGetCharacters(theString1[0], v200, v169);
          v130 = *(&v179 + 1);
        }

        v121 = v4;
        v122 = &v169[-v130];
LABEL_234:
        v123 = v122[v104];
      }
    }

    v124 = v123 == 47;
    if (v123 == 47)
    {
      v125 = -1;
    }

    else
    {
      v125 = 1;
    }

    v126 = *(&v178 + 1);
    if (v123 == 47)
    {
      v127 = *(&v178 + 1) + 1;
    }

    else
    {
      v127 = *(&v178 + 1);
    }

    v128 = v127 + v104;
    v129 = CFStringGetLength(theString1[0]) - v126 - v124;
    if (v129 - v104 >= 5)
    {
      v204.location = v128;
      v204.length = 5;
      v4 = v121;
      if (CFStringCompareWithOptions(theString1[0], @"style", v204, 1uLL) == kCFCompareEqualTo)
      {
        Length = v120;
        v11 = v165;
        goto LABEL_256;
      }

      Length = v120;
      if (v129 - 5 == v104)
      {
        v11 = v165;
      }

      else
      {
        v205.location = v128;
        v205.length = 6;
        v11 = v165;
        if (CFStringCompareWithOptions(theString1[0], @"script", v205, 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_256;
        }
      }
    }

    else
    {
      v4 = v121;
      Length = v120;
      v11 = v165;
      if (v129 - 4 != v104)
      {
LABEL_255:
        v125 = 0;
        goto LABEL_256;
      }
    }

    v206.location = v128;
    v206.length = 4;
    if (CFStringCompareWithOptions(theString1[0], @"head", v206, 1uLL))
    {
      goto LABEL_255;
    }

LABEL_256:
    LOBYTE(v12) = 0;
    v168 = 0;
    v10 = 0;
    v9 = v125 + v166;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = MEMORY[0x277D85DE0];
LABEL_257:
    v8 = v163;
LABEL_163:
    ++v13;
  }

  while (v13 < Length);
  if (v11 >= 1)
  {
LABEL_320:
    v149 = [(__CFString *)v4 stringByReplacingCharactersInRange:v153 withString:v11, &stru_285AD0E88, v153];
    goto LABEL_322;
  }

LABEL_321:
  v149 = 0;
LABEL_322:
  if (v149)
  {
    v150 = v149;
  }

  else
  {
    v150 = v4;
  }

  v151 = v150;

LABEL_327:

  return v151;
}

@end