@interface SGSignatureDissector
+ (id)singleLineSignatureLeadingCharacterSet;
- (BOOL)_paragraphWithContent:(id)a3 range:(_NSRange)a4 exceedsLineLimit:(unint64_t)a5 orCharacterLimit:(unint64_t)a6;
- (BOOL)shouldIgnoreSignature:(id)a3 signatureRange:(_NSRange *)a4 isInhuman:(BOOL *)a5;
- (_NSRange)findSignaturePrefix:(id)a3;
- (_NSRange)findValediction:(id)a3;
- (_NSRange)hmmPlausibleSignatureRange:(id)a3;
- (_NSRange)hmmSignatureRange:(id)a3;
- (_NSRange)hmmSignatureRangeWithContent:(id)a3 detectedData:(id)a4 quotedRegions:(id)a5 authorName:(id)a6;
- (_NSRange)miniSignatureRange:(id)a3;
- (_NSRange)rangeOfSenderName:(id)a3 inRange:(_NSRange)a4 restrictLength:(BOOL)a5 forMessage:(id)a6;
- (_NSRange)rangeOfSenderNameComponents:(id)a3 withFullname:(id)a4 inSubstring:(id)a5;
- (_NSRange)signatureRange:(id)a3;
- (_NSRange)trailingSenderNameLineRange:(id)a3;
- (id)authorFirstname:(id)a3;
- (id)authorName:(id)a3;
- (id)findRejectSig:(id)a3;
- (id)findSignaturePrefixesInMessage:(id)a3 withSignaturePrefixes:(id)a4;
- (id)findValedictionCommencedSignatureRanges:(id)a3;
- (id)initIgnoringDataDetectors;
- (void)dissectMailMessage:(id)a3 entity:(id)a4 context:(id)a5;
@end

@implementation SGSignatureDissector

+ (id)singleLineSignatureLeadingCharacterSet
{
  if (singleLineSignatureLeadingCharacterSet_onceToken != -1)
  {
    dispatch_once(&singleLineSignatureLeadingCharacterSet_onceToken, &__block_literal_global_120_23073);
  }

  v3 = singleLineSignatureLeadingCharacterSet_charset;

  return v3;
}

void __62__SGSignatureDissector_singleLineSignatureLeadingCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] symbolCharacterSet];
  v5 = [v0 mutableCopy];

  v1 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  [v5 formUnionWithCharacterSet:v1];

  v2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [v5 formUnionWithCharacterSet:v2];

  v3 = [v5 copy];
  v4 = singleLineSignatureLeadingCharacterSet_charset;
  singleLineSignatureLeadingCharacterSet_charset = v3;
}

- (BOOL)shouldIgnoreSignature:(id)a3 signatureRange:(_NSRange *)a4 isInhuman:(BOOL *)a5
{
  v245 = *MEMORY[0x277D85DE8];
  v7 = a3;
  context = objc_autoreleasePoolPush();
  v197 = a4;
  length = a4->length;
  location = a4->location;
  *a5 = 0;
  v198 = v7;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v185 = a5;
    v9 = [v7 textContent];
    v10 = [v9 length];

    if (location > v10)
    {
      v8 = sgLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "Can't meaningfully call shouldIgnoreSignature with a signature that starts after the content.", buf, 2u);
      }

      goto LABEL_12;
    }

    v11 = [v7 textContent];
    v12 = [v11 length];

    if (length + location > v12)
    {
      v8 = sgLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "Can't meaningfully call shouldIgnoreSignature on an entity with no detected signature.", buf, 2u);
      }

      goto LABEL_12;
    }

    v16 = objc_opt_new();
    *buf = 0;
    v237 = buf;
    v238 = 0x2020000000;
    v239 = 0;
    v17 = [v7 quotedRegions];
    v232[0] = MEMORY[0x277D85DD0];
    v232[1] = 3221225472;
    v232[2] = __71__SGSignatureDissector_shouldIgnoreSignature_signatureRange_isInhuman___block_invoke;
    v232[3] = &unk_27894F658;
    v235 = buf;
    v18 = v16;
    v233 = v18;
    v192 = v7;
    v234 = v192;
    [v17 enumerateRangesUsingBlock:v232];

    v19 = *(v237 + 3);
    v20 = [v192 textContent];
    LODWORD(v19) = v19 < [v20 length];

    if (v19)
    {
      v21 = [v192 textContent];
      v22 = [v21 substringFromIndex:*(v237 + 3)];
      [v18 addObject:v22];

      v23 = [v192 textContent];
      v24 = [v23 length];
      *(v237 + 3) = v24;
    }

    v184 = [MEMORY[0x277CCACA8] _pas_proxyStringByConcatenatingStrings:v18];

    v25 = objc_autoreleasePoolPush();
    v26 = [v184 substringWithRange:{v197->location, v197->length}];
    v27 = patterns_23118();
    v28 = [v27 regex2ForKey:@"InhumanSig"];
    v29 = [v28 existsInString:v26];

    if (v29)
    {
      v30 = sgLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *v205 = 0;
        _os_log_debug_impl(&dword_231E60000, v30, OS_LOG_TYPE_DEBUG, "Tagging as inhuman: Signature pattern", v205, 2u);
      }

      v31 = sgLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *v205 = 0;
        _os_log_debug_impl(&dword_231E60000, v31, OS_LOG_TYPE_DEBUG, "Ignoring signature: Inhuman pattern.", v205, 2u);
      }

      *v185 = 1;
    }

    objc_autoreleasePoolPop(v25);
    if (v29)
    {
      v13 = 1;
LABEL_200:

      _Block_object_dispose(buf, 8);
      goto LABEL_13;
    }

    v32 = [(SGSignatureDissector *)self findSignaturePrefix:v192];
    if (v33)
    {
      v34 = v197->location - v32;
      if (v197->location < v32)
      {
        v35 = v197->length;
        if (v32 + v33 < v35 + v197->location)
        {
          v197->location = v32;
          v197->length = v34 + v35;
        }
      }
    }

    v36 = [(SGSignatureDissector *)self findValediction:v192];
    if (v37 && v197->length + v197->location <= v36)
    {
      v60 = sgLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        *v205 = 0;
        _os_log_debug_impl(&dword_231E60000, v60, OS_LOG_TYPE_DEBUG, "Ignoring signature: Valediction after signature.", v205, 2u);
      }

      v13 = 1;
      goto LABEL_199;
    }

    v38 = +[SGContactStoreFactory contactStore];
    v186 = [SGCuratedContactMatcher fetchMeContactFromContactStore:v38];

    v40 = v197->location;
    v39 = v197->length;
    obj = [v186 givenName];
    if (!obj)
    {
LABEL_44:
      v59 = [v186 phoneNumbers];
      if ([v59 count])
      {

LABEL_50:
        v230 = 0u;
        v231 = 0u;
        v228 = 0u;
        v229 = 0u;
        v63 = [v192 plainTextDetectedData];
        v64 = [v63 countByEnumeratingWithState:&v228 objects:v244 count:16];
        obj = v63;
        if (!v64)
        {
          goto LABEL_90;
        }

        v188 = *v229;
        while (1)
        {
          v65 = 0;
          v190 = v64;
          do
          {
            if (*v229 != v188)
            {
              objc_enumerationMutation(obj);
            }

            v66 = *(*(&v228 + 1) + 8 * v65);
            v67 = objc_autoreleasePoolPush();
            v246.location = [v66 range];
            if (NSIntersectionRange(v246, *v197).length)
            {
              if ([v66 matchType])
              {
                if ([v66 matchType] == 1)
                {
                  v68 = [v192 textContent];
                  v69 = [v66 valueRange];
                  v71 = [v68 substringWithRange:{v69, v70}];

                  v226 = 0u;
                  v227 = 0u;
                  v224 = 0u;
                  v225 = 0u;
                  v72 = [v186 postalAddresses];
                  v73 = [v72 countByEnumeratingWithState:&v224 objects:v243 count:16];
                  if (v73)
                  {
                    v74 = *v225;
LABEL_60:
                    v75 = 0;
                    while (1)
                    {
                      if (*v225 != v74)
                      {
                        objc_enumerationMutation(v72);
                      }

                      v76 = *(*(&v224 + 1) + 8 * v75);
                      v77 = objc_autoreleasePoolPush();
                      v78 = SGPostalAddressesMatchWithParsed(v76, v71, 0, 0, 0, 0, 1);
                      v79 = v78;
                      if (v78)
                      {
                        v80 = sgLogHandle();
                        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
                        {
                          *v205 = 0;
                          _os_log_debug_impl(&dword_231E60000, v80, OS_LOG_TYPE_DEBUG, "Ignoring signature: Recipient's postal.", v205, 2u);
                        }
                      }

                      objc_autoreleasePoolPop(v77);
                      if (v79)
                      {
                        break;
                      }

                      if (v73 == ++v75)
                      {
                        v73 = [v72 countByEnumeratingWithState:&v224 objects:v243 count:16];
                        if (v73)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_70;
                      }
                    }

LABEL_78:
                    v81 = 1;
                  }

                  else
                  {
LABEL_70:
                    v81 = 0;
                  }

LABEL_81:
                  goto LABEL_82;
                }

                if ([v66 matchType] != 2)
                {
                  v81 = 0;
                  goto LABEL_82;
                }

                v90 = [v192 textContent];
                v91 = [v66 valueRange];
                v71 = [v90 substringWithRange:{v91, v92}];

                v93 = [v186 emailAddresses];
                v94 = SGNormalizeEmailAddress();
                v95 = [v93 containsObject:v94];

                if (v95)
                {
                  v72 = sgLogHandle();
                  if (!os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_78;
                  }

                  *v205 = 0;
                  v88 = v72;
                  v89 = "Ignoring signature: Recipient's email.";
                  goto LABEL_88;
                }
              }

              else
              {
                v82 = [v192 textContent];
                v83 = [v66 valueRange];
                v71 = [v82 substringWithRange:{v83, v84}];

                v85 = [v186 phoneNumbers];
                v86 = SGNormalizePhoneNumber();
                v87 = [v85 containsObject:v86];

                if (v87)
                {
                  v72 = sgLogHandle();
                  if (!os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_78;
                  }

                  *v205 = 0;
                  v88 = v72;
                  v89 = "Ignoring signature: Recipient's phone.";
LABEL_88:
                  _os_log_debug_impl(&dword_231E60000, v88, OS_LOG_TYPE_DEBUG, v89, v205, 2u);
                  goto LABEL_78;
                }
              }

              v81 = 0;
              goto LABEL_81;
            }

            v81 = 3;
LABEL_82:
            objc_autoreleasePoolPop(v67);
            if (v81 != 3 && v81)
            {
              goto LABEL_150;
            }

            ++v65;
          }

          while (v65 != v190);
          v64 = [obj countByEnumeratingWithState:&v228 objects:v244 count:16];
          if (!v64)
          {
LABEL_90:

            goto LABEL_91;
          }
        }
      }

      v61 = [v186 postalAddresses];
      v62 = [v61 count] == 0;

      if (!v62)
      {
        goto LABEL_50;
      }

LABEL_91:
      obj = [(SGSignatureDissector *)self authorName:v192];
      if (!obj || (nontokenCharset(), v96 = objc_claimAutoreleasedReturnValue(), -[NSObject stringByTrimmingCharactersInSet:](obj, "stringByTrimmingCharactersInSet:", v96), v97 = objc_claimAutoreleasedReturnValue(), v98 = [v97 length] == 0, v97, v96, v98))
      {
        v100 = sgLogHandle();
        if (os_log_type_enabled(&v100->super, OS_LOG_TYPE_DEBUG))
        {
          *v205 = 0;
          _os_log_debug_impl(&dword_231E60000, &v100->super, OS_LOG_TYPE_DEBUG, "Ignoring signature: Sender's name unavailable.", v205, 2u);
        }
      }

      else
      {
        v99 = v197->location;
        v100 = [[SGPlainTextContentCursor alloc] initWithMailMessage:v192];
        [(SGPlainTextContentCursor *)v100 setPos:v197->location];
        if ([(SGPlainTextContentCursor *)v100 pos])
        {
          v101 = [v192 textContent];
          v102 = [v101 characterAtIndex:{-[SGPlainTextContentCursor pos](v100, "pos")}] == 10;

          if (!v102)
          {
            [(SGPlainTextContentCursor *)v100 backwardWhile:&__block_literal_global_105];
            v99 = [(SGPlainTextContentCursor *)v100 pos];
          }
        }

        v103 = [(SGPlainTextContentCursor *)v100 pos];
        [(SGPlainTextContentCursor *)v100 backwardWhile:&__block_literal_global_107_23134];
        if ([(SGPlainTextContentCursor *)v100 pos])
        {
          v104 = [(SGPlainTextContentCursor *)v100 pos]+ 1;
        }

        else
        {
          v104 = 1;
        }

        v106 = [v192 textContent];
        v107 = [v106 length];

        if (v104 >= v107)
        {
          v104 = v107;
        }

        [(SGPlainTextContentCursor *)v100 setPos:v103];
        [(SGPlainTextContentCursor *)v100 backwardToString:@"\n\n" consume:1];
        v108 = [v192 textContent];
        v109 = [(SGSignatureDissector *)self _paragraphWithContent:v108 range:[(SGPlainTextContentCursor *)v100 pos] exceedsLineLimit:v103 - [(SGPlainTextContentCursor *)v100 pos] orCharacterLimit:4, 125];

        if (v109)
        {
          [(SGPlainTextContentCursor *)v100 setPos:v103];
        }

        if ([(SGPlainTextContentCursor *)v100 pos]== v99)
        {
          if (!v109)
          {
            v99 = 0;
          }
        }

        else
        {
          [(SGPlainTextContentCursor *)v100 backwardWhile:&__block_literal_global_109];
          v99 = [(SGPlainTextContentCursor *)v100 pos];
          [(SGPlainTextContentCursor *)v100 backwardToString:@"\n\n" consume:0];
          v110 = [v192 textContent];
          v111 = [(SGSignatureDissector *)self _paragraphWithContent:v110 range:[(SGPlainTextContentCursor *)v100 pos] exceedsLineLimit:v99 - [(SGPlainTextContentCursor *)v100 pos] orCharacterLimit:2, 75];

          if (!v111)
          {
            v99 = [(SGPlainTextContentCursor *)v100 pos];
          }
        }

        if (v99 <= v104)
        {
          v99 = v104;
        }

        [(SGPlainTextContentCursor *)v100 setPos:v99];
        [(SGPlainTextContentCursor *)v100 forwardWhile:&__block_literal_global_111];
        v112 = [(SGPlainTextContentCursor *)v100 pos];
        v113 = v197->length;
        if (v112 - v99 >= v197->location - v99 + v113)
        {
          v114 = v197->location - v99 + v113;
        }

        else
        {
          v114 = v112 - v99;
        }

        v116 = [(SGSignatureDissector *)self rangeOfSenderName:obj inRange:v99 restrictLength:v114 forMessage:0, v192];
        if (v116 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v117 = [v192 author];
          v118 = [v117 sg_emailAddress];
          v119 = v118 == 0;

          if (v119)
          {
            goto LABEL_125;
          }

          v120 = [v192 textContent];
          v121 = [v192 author];
          v122 = [v121 sg_emailAddress];
          v123 = [v120 rangeOfString:v122 options:1 range:{v99, v114}] == 0x7FFFFFFFFFFFFFFFLL;

          if (v123)
          {
LABEL_125:
            v124 = sgLogHandle();
            if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
            {
              *v205 = 0;
              _os_log_debug_impl(&dword_231E60000, v124, OS_LOG_TYPE_DEBUG, "Ignoring signature: No sender's name or email.", v205, 2u);
            }

            goto LABEL_127;
          }
        }

        else
        {
          v125 = v115;
          v189 = objc_autoreleasePoolPush();
          v191 = v116 + v99;
          [(SGPlainTextContentCursor *)v100 setPos:?];
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v126 = [v192 plainTextDetectedData];
          v127 = [v126 countByEnumeratingWithState:&v220 objects:v242 count:16];
          if (v127)
          {
            v128 = *v221;
            do
            {
              for (i = 0; i != v127; ++i)
              {
                if (*v221 != v128)
                {
                  objc_enumerationMutation(v126);
                }

                v130 = *(*(&v220 + 1) + 8 * i);
                v131 = [v130 range];
                if (v131 > [(SGPlainTextContentCursor *)v100 pos])
                {
                  v132 = [v130 range];
                  if (v132 >= v197->location && v132 - v197->location < v197->length)
                  {
                    v134 = 1;
                    goto LABEL_142;
                  }
                }
              }

              v127 = [v126 countByEnumeratingWithState:&v220 objects:v242 count:16];
            }

            while (v127);
          }

          v134 = 0;
LABEL_142:

          v135 = [v192 textContent];
          v136 = v191 + v125;
          if (v191 + v125 == [v135 length])
          {
            v137 = 1;
          }

          else
          {
            v138 = [obj length];
            v139 = [v192 textContent];
            if (v138 + v191 >= [v139 length])
            {
              v137 = 1;
            }

            else
            {
              v140 = [v192 textContent];
              if ([v140 characterAtIndex:v136] == 10)
              {
                v137 = 1;
              }

              else
              {
                v142 = [v192 textContent];
                v143 = [obj stringByAppendingString:@"\n"];
                v144 = [v192 textContent];
                v183 = v140;
                v145 = v142;
                v137 = [v142 rangeOfString:v143 options:1 range:{v191, objc_msgSend(v144, "length") - v191}] == v191;

                v140 = v183;
              }
            }
          }

          v146 = [(SGPlainTextContentCursor *)v100 pos];
          [(SGPlainTextContentCursor *)v100 forwardWhile:&__block_literal_global_114];
          if (((v134 | v137) & 1) != 0 && [(SGPlainTextContentCursor *)v100 pos]> v99)
          {
            v147 = [(SGPlainTextContentCursor *)v100 pos];
            v148 = v114 + v99 - v146;
            if (v148 >= v147 - v146)
            {
              v148 = v147 - v146;
            }

            v197->location = v146;
            v197->length = v148;
          }

          objc_autoreleasePoolPop(v189);
        }

        if (v197->location == location && v197->length == length)
        {
          goto LABEL_170;
        }

        v149 = objc_autoreleasePoolPush();
        v150 = v197->location;
        v151 = v197->length;
        v152 = objc_autoreleasePoolPush();
        v153 = patterns_23118();
        v154 = [v153 regex2ForKey:@"InhumanSig"];
        v155 = [v184 substringWithRange:{v150, v151}];
        v156 = [v154 existsInString:v155];

        objc_autoreleasePoolPop(v152);
        v157 = v156;

        if (v157)
        {
          v158 = sgLogHandle();
          if (os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
          {
            *v205 = 0;
            _os_log_debug_impl(&dword_231E60000, v158, OS_LOG_TYPE_DEBUG, "Tagging as inhuman after adjusting range: Signature pattern", v205, 2u);
          }

          v159 = sgLogHandle();
          if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
          {
            *v205 = 0;
            _os_log_debug_impl(&dword_231E60000, v159, OS_LOG_TYPE_DEBUG, "Ignoring signature after adjusting range: Inhuman pattern.", v205, 2u);
          }

          *v185 = 1;
        }

        objc_autoreleasePoolPop(v149);
        if (!v157)
        {
LABEL_170:
          v218 = 0u;
          v219 = 0u;
          v216 = 0u;
          v217 = 0u;
          v124 = [v192 plainTextDetectedData];
          v160 = [v124 countByEnumeratingWithState:&v216 objects:v241 count:16];
          if (!v160)
          {
LABEL_179:

            v164 = [(SGSignatureDissector *)self findRejectSig:v192];
            v214 = 0u;
            v215 = 0u;
            v212 = 0u;
            v213 = 0u;
            v124 = v164;
            v165 = [v124 countByEnumeratingWithState:&v212 objects:v240 count:16];
            if (v165)
            {
              v166 = *v213;
              while (2)
              {
                for (j = 0; j != v165; ++j)
                {
                  if (*v213 != v166)
                  {
                    objc_enumerationMutation(v124);
                  }

                  v247.location = [*(*(&v212 + 1) + 8 * j) rangeValue];
                  if (NSIntersectionRange(v247, *v197).length)
                  {
                    v176 = sgLogHandle();
                    if (os_log_type_enabled(v176, OS_LOG_TYPE_DEBUG))
                    {
                      *v205 = 0;
                      _os_log_debug_impl(&dword_231E60000, v176, OS_LOG_TYPE_DEBUG, "Ignoring signature: Anti pattern.", v205, 2u);
                    }

                    v13 = 1;
                    v181 = v124;
                    goto LABEL_195;
                  }
                }

                v165 = [v124 countByEnumeratingWithState:&v212 objects:v240 count:16];
                if (v165)
                {
                  continue;
                }

                break;
              }
            }

            v168 = [SGIdentityName nameWithString:obj];
            v169 = objc_opt_new();
            v170 = v197->location;
            v171 = v197->length;
            v172 = [v192 textContent];
            v173 = [v172 length];
            v174 = v197->location;
            v175 = v197->length;

            v176 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{v171 + v170, v173 - (v174 + v175)}];
            v177 = [v192 quotedRegions];
            [v176 removeIndexes:v177];

            v209[0] = MEMORY[0x277D85DD0];
            v209[1] = 3221225472;
            v209[2] = __71__SGSignatureDissector_shouldIgnoreSignature_signatureRange_isInhuman___block_invoke_115;
            v209[3] = &unk_278955CB0;
            v178 = v169;
            v210 = v178;
            v211 = v192;
            [v176 enumerateRangesUsingBlock:v209];
            v179 = [MEMORY[0x277CCACA8] _pas_proxyStringByConcatenatingStrings:v178];

            *v205 = 0;
            v206 = v205;
            v207 = 0x2020000000;
            v208 = 0;
            v180 = [v179 length];
            v200[0] = MEMORY[0x277D85DD0];
            v200[1] = 3221225472;
            v200[2] = __71__SGSignatureDissector_shouldIgnoreSignature_signatureRange_isInhuman___block_invoke_2_116;
            v200[3] = &unk_27894F680;
            v201 = obj;
            v202 = self;
            v181 = v168;
            v203 = v181;
            v204 = v205;
            [v179 enumerateSubstringsInRange:0 options:v180 usingBlock:{256, v200}];
            v13 = v206[24];
            if ((v13 & 1) == 0)
            {
              v182 = sgLogHandle();
              if (os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG))
              {
                *v199 = 0;
                _os_log_debug_impl(&dword_231E60000, v182, OS_LOG_TYPE_DEBUG, "Not ignoring signature.", v199, 2u);
              }
            }

            _Block_object_dispose(v205, 8);
LABEL_195:

            goto LABEL_196;
          }

          v161 = 0;
          v162 = *v217;
LABEL_172:
          v163 = 0;
          while (1)
          {
            if (*v217 != v162)
            {
              objc_enumerationMutation(v124);
            }

            if ([*(*(&v216 + 1) + 8 * v163) matchType] == 2 && ++v161 > 3)
            {
              break;
            }

            if (v160 == ++v163)
            {
              v160 = [v124 countByEnumeratingWithState:&v216 objects:v241 count:16];
              if (v160)
              {
                goto LABEL_172;
              }

              goto LABEL_179;
            }
          }

LABEL_127:
          v13 = 1;
LABEL_196:

          goto LABEL_197;
        }
      }

      v13 = 1;
LABEL_197:

      goto LABEL_198;
    }

    v41 = [v186 familyName];
    if (v41)
    {
      v42 = [v186 formattedName];
      v43 = v42 == 0;

      if (v43)
      {
        goto LABEL_44;
      }

      if (v40 >= 0x14)
      {
        v44 = 20;
      }

      else
      {
        v44 = v40;
      }

      if (v40 >= 0x14)
      {
        v45 = v40 - 20;
      }

      else
      {
        v45 = 0;
      }

      v46 = [v192 textContent];
      v47 = [v186 formattedName];
      v48 = [v46 rangeOfString:v47 options:0 range:{v45, v39 + v44}] == 0x7FFFFFFFFFFFFFFFLL;

      if (v48)
      {
        v49 = objc_alloc(MEMORY[0x277CCACA8]);
        v50 = [v186 givenName];
        v51 = [v186 familyName];
        obj = [v49 initWithFormat:@"%@ %@", v50, v51];

        v52 = [v192 textContent];
        LOBYTE(v49) = [v52 rangeOfString:obj options:0 range:{v45, v39 + v44}] == 0x7FFFFFFFFFFFFFFFLL;

        if (v49)
        {
          v53 = objc_alloc(MEMORY[0x277CCACA8]);
          v54 = [v186 familyName];
          v55 = [v186 givenName];
          v56 = [v53 initWithFormat:@"%@ %@", v54, v55];

          v57 = [v192 textContent];
          v58 = [v57 rangeOfString:v56 options:0 range:{v45, v39 + v44}] == 0x7FFFFFFFFFFFFFFFLL;

          if (v58)
          {

            goto LABEL_43;
          }

          v141 = sgLogHandle();
          if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
          {
            *v205 = 0;
            _os_log_debug_impl(&dword_231E60000, v141, OS_LOG_TYPE_DEBUG, "Ignoring signature: Recipient's name (last first).", v205, 2u);
          }
        }

        else
        {
          v105 = sgLogHandle();
          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
          {
            *v205 = 0;
            _os_log_debug_impl(&dword_231E60000, v105, OS_LOG_TYPE_DEBUG, "Ignoring signature: Recipient's name (first last).", v205, 2u);
          }
        }
      }

      else
      {
        obj = sgLogHandle();
        if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
        {
          *v205 = 0;
          _os_log_debug_impl(&dword_231E60000, obj, OS_LOG_TYPE_DEBUG, "Ignoring signature: Recipient's name (composite).", v205, 2u);
        }
      }

LABEL_150:
      v13 = 1;
LABEL_198:

      v60 = v186;
LABEL_199:

      goto LABEL_200;
    }

LABEL_43:

    goto LABEL_44;
  }

  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "Can't meaningfully call shouldIgnoreSignature on an entity with no detected signature.", buf, 2u);
  }

LABEL_12:

  v13 = 1;
LABEL_13:
  objc_autoreleasePoolPop(context);

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void __71__SGSignatureDissector_shouldIgnoreSignature_signatureRange_isInhuman___block_invoke(uint64_t a1, unint64_t a2, size_t size)
{
  v5 = *(*(*(a1 + 48) + 8) + 24);
  v6 = a2 - v5;
  if (a2 > v5)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) textContent];
    v9 = [v8 substringWithRange:{*(*(*(a1 + 48) + 8) + 24), v6}];
    [v7 addObject:v9];

    *(*(*(a1 + 48) + 8) + 24) += v6;
  }

  v10 = malloc_type_calloc(1uLL, size, 0x7C0865A5uLL);
  if (!v10)
  {
    v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v12);
  }

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v10 length:size encoding:1 freeWhenDone:1];
  if (!v11)
  {
    __assert_rtn("[SGSignatureDissector shouldIgnoreSignature:signatureRange:isInhuman:]_block_invoke", "SGSignatureDissector.m", 989, "sub != nil");
  }

  v13 = v11;
  [*(a1 + 32) addObject:v11];
  *(*(*(a1 + 48) + 8) + 24) += [v13 length];
}

void __71__SGSignatureDissector_shouldIgnoreSignature_signatureRange_isInhuman___block_invoke_115(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 40) textContent];
  v9 = [v8 substringWithRange:{a2, a3}];

  objc_autoreleasePoolPop(v7);
  [v6 addObject:v9];
}

void __71__SGSignatureDissector_shouldIgnoreSignature_signatureRange_isInhuman___block_invoke_2_116(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v10 = a2;
  if (a4 && a4 <= 2 * [*(a1 + 32) length])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = [objc_opt_class() singleLineSignatureLeadingCharacterSet];
    v14 = [v10 stringByTrimmingCharactersInSet:v13];

    v15 = [*(a1 + 48) firstname];
    if ([v14 caseInsensitiveCompare:v15])
    {
      v16 = [*(a1 + 48) surname];
      if ([v14 caseInsensitiveCompare:v16])
      {
        v17 = [SGNames unnormalizedNamesApproximatelyMatch:*(a1 + 32) and:v14];

        if (!v17)
        {
LABEL_12:

          objc_autoreleasePoolPop(v11);
          goto LABEL_13;
        }

LABEL_9:
        v18 = sgLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *v19 = 0;
          _os_log_debug_impl(&dword_231E60000, v18, OS_LOG_TYPE_DEBUG, "Ignoring signature: Sender's name after sig.", v19, 2u);
        }

        *(*(*(a1 + 56) + 8) + 24) = 1;
        *a7 = 1;
        goto LABEL_12;
      }
    }

    goto LABEL_9;
  }

LABEL_13:
}

uint64_t __71__SGSignatureDissector_shouldIgnoreSignature_signatureRange_isInhuman___block_invoke_3(uint64_t a1, int a2, int a3)
{
  if (a2 == 10)
  {
    return a3 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t __71__SGSignatureDissector_shouldIgnoreSignature_signatureRange_isInhuman___block_invoke_103(uint64_t a1, int a2, int a3)
{
  if (a2 == 10)
  {
    return 0;
  }

  else
  {
    return a3 ^ 1u;
  }
}

- (BOOL)_paragraphWithContent:(id)a3 range:(_NSRange)a4 exceedsLineLimit:(unint64_t)a5 orCharacterLimit:(unint64_t)a6
{
  length = a4.length;
  location = a4.location;
  v10 = a3;
  if (length <= a6)
  {
    if (!length)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_9;
    }

    v12 = 0;
    while ([v10 characterAtIndex:location] != 10 || ++v12 <= a5)
    {
      ++location;
      if (!--length)
      {
        goto LABEL_8;
      }
    }
  }

  v11 = 1;
LABEL_9:

  return v11;
}

- (void)dissectMailMessage:(id)a3 entity:(id)a4 context:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [v8 textContent];
  v13 = [v12 length];

  if (!v13)
  {
    goto LABEL_27;
  }

  if (([MEMORY[0x277D02098] detectContacts] & 1) == 0)
  {
    v19 = sgLogHandle();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
LABEL_26:

      goto LABEL_27;
    }

    *buf = 0;
    v20 = "Skipping signature dissector: detectContacts is OFF";
LABEL_29:
    _os_log_debug_impl(&dword_231E60000, v19, OS_LOG_TYPE_DEBUG, v20, buf, 2u);
    goto LABEL_26;
  }

  v34 = 0uLL;
  [v9 releaseDissectorLock];
  if (-[NSNumber BOOLValue](self->_ignoreDataDetectorsForTesting, "BOOLValue") || [v8 detectedDataSignatureRange] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [(SGSignatureDissector *)self signatureRange:v8];
    *&v34 = v14;
    *(&v34 + 1) = v15;
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v14;
      v17 = v15;
      v18 = sgLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_231E60000, v18, OS_LOG_TYPE_DEBUG, "Signature found by alternative algorithms.", buf, 2u);
      }

      goto LABEL_18;
    }
  }

  else
  {
    v21 = sgLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v21, OS_LOG_TYPE_DEBUG, "Signature found by DataDetectors.", buf, 2u);
    }

    v22 = [v8 detectedDataSignatureRange];
    *&v34 = v22;
    *(&v34 + 1) = v23;
    if (v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v22;
      v17 = v23;
LABEL_18:
      v25 = objc_autoreleasePoolPush();
      v26 = sgLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v32 = v17 + v16;
        v30 = [v8 textContent];
        v31 = [v30 substringWithRange:{v16, v17}];
        *buf = 134218498;
        v36 = v16;
        v37 = 2048;
        v38 = v32;
        v39 = 2112;
        v40 = v31;
        _os_log_debug_impl(&dword_231E60000, v26, OS_LOG_TYPE_DEBUG, "Sig range %lu-%lu (%@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v33 = 0;
      if ([(SGSignatureDissector *)self shouldIgnoreSignature:v8 signatureRange:&v34 isInhuman:&v33])
      {
        v34 = xmmword_232106CE0;
      }

      goto LABEL_22;
    }
  }

  v24 = sgLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v24, OS_LOG_TYPE_DEBUG, "No signature found", buf, 2u);
  }

  v33 = 0;
LABEL_22:
  [v9 acquireDissectorLock];
  [v9 setPlainTextSigRange:v34];
  if (v33 == 1)
  {
    v27 = sgLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v27, OS_LOG_TYPE_DEBUG, "Tagging as inhuman after adjusting range: Signature pattern", buf, 2u);
    }

    v28 = [MEMORY[0x277D01FA0] inhuman];
    [v9 addTag:v28];

    v19 = sgLogHandle();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v20 = "Ignoring signature after adjusting range: Inhuman pattern.";
    goto LABEL_29;
  }

LABEL_27:
  objc_autoreleasePoolPop(v11);

  v29 = *MEMORY[0x277D85DE8];
}

- (_NSRange)rangeOfSenderNameComponents:(id)a3 withFullname:(id)a4 inSubstring:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v26 = 0u;
  v27 = 0u;
  if ([SGNames isProbablyShortCJKName:a4])
  {
    v9 = 1;
  }

  else
  {
    v9 = 3;
  }

  v28 = 0uLL;
  v29 = 0uLL;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    v25 = v9;
LABEL_6:
    v14 = 0;
    while (1)
    {
      if (*v27 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v26 + 1) + 8 * v14);
      if ([v15 length] >= v9)
      {
        v16 = [v8 rangeOfString:v15 options:1];
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = v16;
          v19 = v17;
          if (v16 < 4)
          {
            break;
          }

          v20 = 0;
          v21 = v16 - 1;
          do
          {
            if (!v21)
            {
              break;
            }

            if ([v8 characterAtIndex:v21] == 10)
            {
              goto LABEL_21;
            }

            --v21;
            ++v20;
          }

          while (v20 < 3);
          v9 = v25;
          if ([v8 characterAtIndex:v18 - 1] == 32)
          {
            break;
          }
        }
      }

      if (++v14 == v12)
      {
        v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
        v19 = 0;
        v18 = 0x7FFFFFFFFFFFFFFFLL;
        if (v12)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  else
  {
    v19 = 0;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_21:

  v22 = *MEMORY[0x277D85DE8];
  v23 = v18;
  v24 = v19;
  result.length = v24;
  result.location = v23;
  return result;
}

- (_NSRange)rangeOfSenderName:(id)a3 inRange:(_NSRange)a4 restrictLength:(BOOL)a5 forMessage:(id)a6
{
  v7 = a5;
  length = a4.length;
  location = a4.location;
  v11 = a3;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = [v12 textContent];
  v15 = [v14 substringWithRange:{location, length}];

  objc_autoreleasePoolPop(v13);
  if (!v7)
  {
    goto LABEL_4;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-_ "];
  v18 = [v15 stringByTrimmingCharactersInSet:v17];

  objc_autoreleasePoolPop(v16);
  v19 = [v18 length];

  if (v19 > 0x96)
  {
    v20 = 0;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
LABEL_4:
    v22 = [SGNames stripHonorifics:v11];
    v23 = [SGIdentityName nameWithString:v22];
    v24 = objc_opt_new();
    v25 = [v23 firstname];

    if (v25)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = [v23 firstname];
      v28 = [v27 componentsSeparatedByString:@" "];

      objc_autoreleasePoolPop(v26);
      [v24 addObjectsFromArray:v28];
    }

    v29 = [v23 surname];

    if (v29)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = [v23 surname];
      v32 = [v31 componentsSeparatedByString:@" "];

      objc_autoreleasePoolPop(v30);
      [v24 addObjectsFromArray:v32];
    }

    v33 = [v23 middlename];

    if (v33)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = [v23 middlename];
      v36 = [v35 componentsSeparatedByString:@" "];

      objc_autoreleasePoolPop(v34);
      [v24 addObjectsFromArray:v36];
    }

    v37 = [(SGSignatureDissector *)self rangeOfSenderNameComponents:v24 withFullname:v22 inSubstring:v15];
    v20 = v38;
    if (v37 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v39 = [v23 firstname];

      if (v39)
      {
        v40 = [v23 firstname];
        v41 = [SGNicknames nicknamesForName:v40];

        v42 = [v41 allObjects];
        v43 = self;
        v44 = v42;
        v21 = [(SGSignatureDissector *)v43 rangeOfSenderNameComponents:v42 withFullname:v22 inSubstring:v15];
        v20 = v45;
      }

      else
      {
        v21 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v21 = v37;
    }
  }

  v46 = v21;
  v47 = v20;
  result.length = v47;
  result.location = v46;
  return result;
}

- (id)authorFirstname:(id)a3
{
  v3 = [(SGSignatureDissector *)self authorName:a3];
  if (v3)
  {
    v4 = [SGIdentityName nameWithString:v3];
    v5 = [v4 firstname];
    if ([v5 length])
    {
      v6 = [v4 firstname];
    }

    else
    {
      v6 = v3;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)authorName:(id)a3
{
  v3 = [a3 author];
  v4 = [v3 displayName];

  return v4;
}

- (_NSRange)trailingSenderNameLineRange:(id)a3
{
  v47[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v40 = self;
  v41 = [(SGSignatureDissector *)self authorName:v4];
  if (![v41 length])
  {
    goto LABEL_10;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [[SGPlainTextContentCursor alloc] initWithMailMessage:v4];
  [(SGPlainTextContentCursor *)v6 seekToEnd];
  [(SGPlainTextContentCursor *)v6 backwardWhile:&__block_literal_global_73_23190];
  v7 = [(SGPlainTextContentCursor *)v6 pos];
  [(SGPlainTextContentCursor *)v6 backwardToString:@"\n\n" consume:0];
  if ([(SGPlainTextContentCursor *)v6 pos]== v7)
  {
    [(SGPlainTextContentCursor *)v6 backwardWhile:&__block_literal_global_78];
  }

  if ([(SGPlainTextContentCursor *)v6 pos]== v7)
  {
    goto LABEL_9;
  }

  v8 = [(SGPlainTextContentCursor *)v6 pos];
  v9 = [v4 textContent];
  v10 = [v9 characterAtIndex:v7];

  if (v10 == 65306 || v10 == 58)
  {
    [(SGPlainTextContentCursor *)v6 backward];
    [(SGPlainTextContentCursor *)v6 backwardWhile:&__block_literal_global_80];
    v7 = [(SGPlainTextContentCursor *)v6 pos];
    [(SGPlainTextContentCursor *)v6 backwardToString:@"\n\n" consume:0];
    v8 = [(SGPlainTextContentCursor *)v6 pos];
  }

  v11 = v7 - v8;
  if (v7 == v8)
  {
LABEL_9:

    objc_autoreleasePoolPop(v5);
LABEL_10:
    v12 = 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  [(SGPlainTextContentCursor *)v6 backward];
  [(SGPlainTextContentCursor *)v6 backwardWhile:&__block_literal_global_82];
  v17 = [(SGPlainTextContentCursor *)v6 pos];
  [(SGPlainTextContentCursor *)v6 backwardToString:@"\n" consume:0];
  v18 = [(SGPlainTextContentCursor *)v6 pos];
  context = v5;
  v39 = v4;
  if ([(SGPlainTextContentCursor *)v6 pos]< 2)
  {
    goto LABEL_17;
  }

  v19 = [v4 textContent];
  if ([v19 characterAtIndex:{-[SGPlainTextContentCursor pos](v6, "pos") - 1}] != 10)
  {

    goto LABEL_17;
  }

  v20 = [v4 textContent];
  v21 = [v20 characterAtIndex:{-[SGPlainTextContentCursor pos](v6, "pos") - 2}];

  if (v21 != 10)
  {
LABEL_17:
    v22 = 0;
    goto LABEL_18;
  }

  v22 = v17 - v18 + 1;
LABEL_18:
  v23 = [MEMORY[0x277CCAE60] valueWithRange:{v8, v11 + 1, context}];
  v47[0] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
  v25 = [v24 mutableCopy];

  if (v22)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = [MEMORY[0x277CCAE60] valueWithRange:{v18, v22}];
    [v25 addObject:v27];

    objc_autoreleasePoolPop(v26);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v28 = v25;
  v29 = [v28 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v43;
    while (2)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v43 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v42 + 1) + 8 * i);
        v34 = objc_autoreleasePoolPush();
        v13 = [v33 rangeValue];
        v12 = v35;
        v36 = [(SGSignatureDissector *)v40 rangeOfSenderName:v41 inRange:v13 restrictLength:v35 forMessage:1, v39];
        objc_autoreleasePoolPop(v34);
        if (v36 != 0x7FFFFFFFFFFFFFFFLL)
        {

          objc_autoreleasePoolPop(contexta);
          goto LABEL_30;
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }
  }

  objc_autoreleasePoolPop(contexta);
  v12 = 0;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_30:
  v4 = v39;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  v15 = v13;
  v16 = v12;
  result.length = v16;
  result.location = v15;
  return result;
}

uint64_t __52__SGSignatureDissector_trailingSenderNameLineRange___block_invoke(uint64_t a1, int a2, unsigned int a3)
{
  if (a2 == 10)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

- (_NSRange)miniSignatureRange:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SGSignatureDissector *)self trailingSenderNameLineRange:v4];
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [v4 plainTextDetectedData];
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [v14 range];
          if (v15 >= v7 && v15 - v7 < v8)
          {
            v17 = [v14 matchType];
            if (v17 <= 5 && v17 != 4)
            {
              v19 = v7;
              v20 = v8;
              goto LABEL_21;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        v20 = 0;
        v19 = 0x7FFFFFFFFFFFFFFFLL;
      }

      while (v11);
    }

    else
    {
      v20 = 0;
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_21:
  }

  else
  {
    v20 = 0;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v21 = *MEMORY[0x277D85DE8];
  v22 = v19;
  v23 = v20;
  result.length = v23;
  result.location = v22;
  return result;
}

- (_NSRange)hmmSignatureRangeWithContent:(id)a3 detectedData:(id)a4 quotedRegions:(id)a5 authorName:(id)a6
{
  v133 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v109 = a6;
  if (!v10)
  {
    v55 = 0;
    v56 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_107;
  }

  v107 = v10;
  v108 = v12;
  v110 = _PASTrimTrailingWhitespace();
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v106 = v11;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v126 objects:v132 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v127;
    do
    {
      v18 = 0;
      do
      {
        if (*v127 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v126 + 1) + 8 * v18);
        v20 = [v19 matchType];
        if (v20 <= 3)
        {
          v21 = 4;
          if (v20 != 3)
          {
            v21 = 0;
          }

          if (v20 == 1)
          {
            v21 = 1;
          }

          if (v20)
          {
            v22 = v21;
          }

          else
          {
            v22 = 2;
          }

          goto LABEL_15;
        }

        if ((v20 - 6) >= 4 && v20 != 4)
        {
          if (v20 == 5)
          {
            v22 = 3;
          }

          else
          {
            v22 = 0;
          }

LABEL_15:
          v23 = [v19 range];
          v6 = v22 | v6 & 0xFFFFFFFF00000000;
          v25 = [SGSlice sliceWithType:v6 range:v23, v24];
          [v13 addObject:v25];
        }

        ++v18;
      }

      while (v16 != v18);
      v27 = [v14 countByEnumeratingWithState:&v126 objects:v132 count:16];
      v16 = v27;
    }

    while (v27);
  }

  v124[0] = MEMORY[0x277D85DD0];
  v124[1] = 3221225472;
  v124[2] = __91__SGSignatureDissector_hmmSignatureRangeWithContent_detectedData_quotedRegions_authorName___block_invoke;
  v124[3] = &unk_278954840;
  v28 = v13;
  v125 = v28;
  [v108 enumerateRangesUsingBlock:v124];
  v29 = objc_opt_new();
  v111 = v28;
  v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v28, "count")}];
  v31 = 0;
  do
  {
    v112 = v31;
    v32 = slicePrecedence[v31];
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v33 = v111;
    v34 = [v33 countByEnumeratingWithState:&v120 objects:v131 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v121;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v121 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v120 + 1) + 8 * i);
          if (v32 == [v38 type])
          {
            v39 = [v38 range];
            v41 = v40;
            if (([v29 intersectsIndexesInRange:{v39, v40}] & 1) == 0)
            {
              [v29 addIndexesInRange:{v39, v41}];
              [v30 addObject:v38];
            }
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v120 objects:v131 count:16];
      }

      while (v35);
    }

    v31 = v112 + 1;
  }

  while (v112 != 5);
  v42 = v30;

  [v42 sortUsingSelector:sel_compare_];
  v118[0] = 0;
  *v119 = 0u;
  v118[1] = 256;
  v43 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
  if (!v43)
  {
    goto LABEL_112;
  }

  v119[0] = v43;
  v44 = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
  if (!v44)
  {
    goto LABEL_112;
  }

  v119[1] = v44;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v45 = v42;
  v46 = [v45 countByEnumeratingWithState:&v114 objects:v130 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = 0;
    v49 = *v115;
LABEL_43:
    v50 = 0;
    while (1)
    {
      if (*v115 != v49)
      {
        objc_enumerationMutation(v45);
      }

      v51 = *(*(&v114 + 1) + 8 * v50);
      v52 = [v51 start];
      if (v52 >= [v110 length])
      {
        break;
      }

      if ([v51 start] > v48)
      {
        tokenize(v110, v118, v48, [v51 start] - v48, v109);
      }

      v53 = [v51 type];
      if (v53 >= 6u)
      {
        v54 = 7;
      }

      else
      {
        v54 = v53 + 12;
      }

      emitToken(v118, v54, [v51 start]);
      v48 = [v51 end];
      if (v47 == ++v50)
      {
        v47 = [v45 countByEnumeratingWithState:&v114 objects:v130 count:16];
        if (v47)
        {
          goto LABEL_43;
        }

        break;
      }
    }
  }

  else
  {
    v48 = 0;
  }

  v57 = v110;
  if (v48 < [v110 length])
  {
    tokenize(v110, v118, v48, [v110 length] - v48, v109);
  }

  v58 = v119[0];
  v59 = v118[0];
  if (viterbi_hmmOnceToken != -1)
  {
    dispatch_once(&viterbi_hmmOnceToken, &__block_literal_global_246_23195);
  }

  v60 = 0;
  v61 = atomic_load(viterbi_hmmLoaded);
  if (!v59 || (v61 & 1) == 0)
  {
    goto LABEL_79;
  }

  v62 = malloc_type_malloc(8 * v59, 0x100004000313F17uLL);
  v63 = malloc_type_malloc(8 * v59, 0x100004000313F17uLL);
  v64 = malloc_type_calloc(v59, 1uLL, 0x100004077774924uLL);
  if (!v64)
  {
LABEL_112:
    v105 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v105);
  }

  v65 = v64;
  v60 = 0;
  if (v62 && v63)
  {
    *v62 = *&qword_280D94290 + hmm[*v58];
    *v63 = *&qword_280D94298 + hmm[*v58 + 18];
    *v64 = 2;
    if (v59 >= 2)
    {
      v66 = *&qword_280D94270;
      v67 = *algn_280D94278;
      v68 = v59 - 1;
      v69 = *&qword_280D94280;
      v70 = unk_280D94288;
      v71 = v64 + 1;
      v72 = v58 + 1;
      v73 = v62;
      v74 = v63;
      do
      {
        v76 = *v72++;
        v75 = v76;
        if (v76 >= 0x13uLL)
        {
          __assert_rtn("viterbi", "SGSignatureDissector.m", 1413, "obs <= NUM_TOKEN_TYPES");
        }

        v77 = *v73;
        v78 = hmm[v75];
        v79 = v66 + *v73 + v78;
        v80 = v78 + v69 + *v74;
        if (v80 > v79)
        {
          *v71 |= 1u;
          v77 = *v73;
          v79 = v80;
        }

        v73[1] = v79;
        v81 = hmm[v75 + 18];
        v82 = v67 + v77 + v81;
        v83 = v81 + v70 + *v74;
        if (v83 > v82)
        {
          *v71 |= 2u;
          v82 = v83;
        }

        v74[1] = v82;
        ++v74;
        ++v71;
        ++v73;
        --v68;
      }

      while (v68);
    }

    v84 = malloc_type_malloc(v59, 0x100004077774924uLL);
    v60 = v84;
    if (v84 && v59 >= 1)
    {
      LOBYTE(v85) = v63[v59 - 1] > v62[v59 - 1];
      v86 = (v59 & 0x7FFFFFFF) - 1;
      do
      {
        v84[v86] = v85 & 1;
        v85 = (v65[v86] >> (v85 & 1)) & 1;
        v87 = v86-- + 1;
      }

      while (v87 > 1);
    }
  }

  free(v62);
  free(v63);
  free(v65);
  v57 = v110;
LABEL_79:
  v88 = v118[0];
  if (!v118[0])
  {
    v55 = 0;
    v56 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = v106;
    v10 = v107;
    v12 = v108;
    goto LABEL_106;
  }

  v89 = 0;
  v11 = v106;
  v10 = v107;
  v12 = v108;
  while (1)
  {
    v90 = (v89 + 1);
    if (v60[v89])
    {
      break;
    }

    ++v89;
    if (v118[0] == v90)
    {
      goto LABEL_105;
    }
  }

  if (LODWORD(v118[0]) - v89 > 39)
  {
    v91 = sgLogHandle();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v91, OS_LOG_TYPE_DEBUG, "HMM confused, too many tokens in signature", buf, 2u);
    }

    goto LABEL_105;
  }

  if (v118[0] <= (v89 + 1))
  {
LABEL_98:
    v56 = *(v119[1] + v89);
    v57 = v110;
    v96 = [v110 rangeOfString:@"\n" options:6 range:{0, v56}];
    if (v97)
    {
      if ((v56 - v96) >= 5)
      {
        v98 = [v110 rangeOfString:@"\n" options:2 range:{v56, objc_msgSend(v110, "length") - v56}];
        if (v99)
        {
          v56 = v98 + 1;
        }
      }

      v100 = [v110 length];
      v55 = v100 - v56;
      if (v100 == v56)
      {
        v56 = 0x7FFFFFFFFFFFFFFFLL;
      }

      goto LABEL_106;
    }

LABEL_105:
    v55 = 0;
    v56 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_106;
  }

  v92 = 0;
  while (*(v119[0] + v90) != 17)
  {
LABEL_97:
    if (v88 <= ++v90)
    {
      goto LABEL_98;
    }
  }

  v93 = *(v119[1] + v90);
  v94 = (v90 + 1);
  if (v88 <= v94)
  {
    v95 = [v110 length];
  }

  else
  {
    v95 = *(v119[1] + v94);
  }

  v92 += v95 - v93;
  if (v92 <= 0x100)
  {
    v88 = v118[0];
    goto LABEL_97;
  }

  v104 = sgLogHandle();
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v104, OS_LOG_TYPE_DEBUG, "HMM confused, too much quoting in signature", buf, 2u);
  }

  v55 = 0;
  v56 = 0x7FFFFFFFFFFFFFFFLL;
  v57 = v110;
LABEL_106:
  free(v60);
  free(v119[0]);
  free(v119[1]);

LABEL_107:
  v101 = *MEMORY[0x277D85DE8];
  v102 = v56;
  v103 = v55;
  result.length = v103;
  result.location = v102;
  return result;
}

void __91__SGSignatureDissector_hmmSignatureRangeWithContent_detectedData_quotedRegions_authorName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [SGSlice sliceWithType:5 range:a2, a3];
  [v3 addObject:v4];
}

- (_NSRange)hmmSignatureRange:(id)a3
{
  v4 = a3;
  v5 = [v4 textContent];
  v6 = [v4 plainTextDetectedData];
  v7 = [v4 quotedRegions];
  v8 = [(SGSignatureDissector *)self authorFirstname:v4];

  v9 = [(SGSignatureDissector *)self hmmSignatureRangeWithContent:v5 detectedData:v6 quotedRegions:v7 authorName:v8];
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)hmmPlausibleSignatureRange:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SGSignatureDissector *)self findValedictionCommencedSignatureRanges:v4];
  v6 = [v5 firstObject];
  v7 = [v6 rangeValue];
  v9 = v8;

  if (v9)
  {
    context = objc_autoreleasePoolPush();
    v10 = [v4 textContent];
    v11 = [v10 substringToIndex:v7 + v9];

    v12 = [v4 quotedRegions];
    v31 = [v12 indexesInRange:0 options:objc_msgSend(v11 passingTest:{"length"), 0, &__block_literal_global_23237}];

    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    v14 = [v4 plainTextDetectedData];
    v15 = [v13 initWithCapacity:{objc_msgSend(v14, "count")}];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v16 = [v4 plainTextDetectedData];
    v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v33 + 1) + 8 * i);
          v22 = [v21 range];
          [v21 range];
          if (v23 + v22 <= [v11 length])
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v18);
    }

    v24 = [(SGSignatureDissector *)self authorFirstname:v4];
    v25 = [(SGSignatureDissector *)self hmmSignatureRangeWithContent:v11 detectedData:v15 quotedRegions:v31 authorName:v24];
    v27 = v26;

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v27 = 0;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v28 = *MEMORY[0x277D85DE8];
  v29 = v25;
  v30 = v27;
  result.length = v30;
  result.location = v29;
  return result;
}

- (_NSRange)findSignaturePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SGSignatureDissector *)self findValediction:v4];
  if (v6)
  {
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v9 = patterns_23118();
    v10 = [v9 regex2ForKey:@"SymbolicSig"];
    v11 = [(SGSignatureDissector *)self findSignaturePrefixesInMessage:v4 withSignaturePrefixes:v10];
    v12 = [v11 firstObject];
    v7 = [v12 rangeValue];
    v8 = v13;
  }

  v14 = v7;
  v15 = v8;
  result.length = v15;
  result.location = v14;
  return result;
}

- (id)findRejectSig:(id)a3
{
  v3 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__23243;
  v20 = __Block_byref_object_dispose__23244;
  v21 = objc_opt_new();
  v4 = [v3 quotedRegions];
  v5 = [v3 textContent];
  if ([v5 length])
  {
    v6 = patterns_23118();
    v7 = [v6 regex2ForKey:@"RejetedSig/F"];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __38__SGSignatureDissector_findRejectSig___block_invoke;
    v13 = &unk_27894F5F0;
    v14 = v4;
    v15 = &v16;
    [v7 enumerateMatchesInString:v5 ngroups:0 block:&v10];
  }

  v8 = [v17[5] copy];

  _Block_object_dispose(&v16, 8);

  return v8;
}

uint64_t __38__SGSignatureDissector_findRejectSig___block_invoke(uint64_t a1, void *a2)
{
  if (([*(a1 + 32) intersectsIndexesInRange:{*a2, a2[1]}] & 1) == 0)
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = [MEMORY[0x277CCAE60] valueWithRange:{*a2, a2[1]}];
    [v4 addObject:v5];
  }

  return 1;
}

- (_NSRange)findValediction:(id)a3
{
  v4 = a3;
  v5 = patterns_23118();
  v6 = [v5 regex2ForKey:@"ValedictionSig/F"];
  v7 = [(SGSignatureDissector *)self findSignaturePrefixesInMessage:v4 withSignaturePrefixes:v6];

  v8 = [v7 firstObject];
  v9 = [v8 rangeValue];
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (id)findSignaturePrefixesInMessage:(id)a3 withSignaturePrefixes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 textContent];
  if (v7)
  {
    v8 = objc_opt_new();
    v9 = [v5 quotedRegions];
    v13 = v7;
    v14 = v6;
    v15 = v9;
    v16 = v8;
    v10 = v9;
    _PASEnumerateSimpleLinesInString();
    v11 = v16;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

uint64_t __77__SGSignatureDissector_findSignaturePrefixesInMessage_withSignaturePrefixes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) substringWithRange:{a2, a3}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SGSignatureDissector_findSignaturePrefixesInMessage_withSignaturePrefixes___block_invoke_2;
  v9[3] = &unk_27894F5A0;
  v12 = a2;
  v13 = a3;
  v7 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  [v7 enumerateMatchesInString:v6 ngroups:0 block:v9];

  return 1;
}

uint64_t __77__SGSignatureDissector_findSignaturePrefixesInMessage_withSignaturePrefixes___block_invoke_2(uint64_t a1, void *a2)
{
  if (([*(a1 + 32) intersectsIndexesInRange:{*a2 + *(a1 + 48), a2[1] + 1}] & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x277CCAE60] valueWithRange:{*a2 + *(a1 + 48), a2[1]}];
    [v4 addObject:v5];
  }

  return 1;
}

- (id)findValedictionCommencedSignatureRanges:(id)a3
{
  v3 = a3;
  v4 = [v3 textContent];
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [v3 quotedRegions];
    v10 = v4;
    v11 = v6;
    v12 = v5;
    v7 = v6;
    _PASEnumerateSimpleLinesInString();
    v8 = v12;
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

uint64_t __64__SGSignatureDissector_findValedictionCommencedSignatureRanges___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = *(a1 + 56) + *a2;
  if ([*(a1 + 32) intersectsIndexesInRange:{v4, v3}])
  {
    return 1;
  }

  v5 = [*(a1 + 40) substringFromIndex:v4 + v3];
  if ([v5 length] < 4)
  {
    goto LABEL_53;
  }

  v6 = v5;
  v7 = objc_opt_self();

  if (!v7)
  {
    goto LABEL_39;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *buffer = 0u;
  v32 = 0u;
  Length = CFStringGetLength(v6);
  theString = v6;
  v42 = 0;
  v43 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v6);
  CStringPtr = 0;
  v40 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v6, 0x600u);
  }

  v44 = 0;
  v45 = 0;
  v41 = CStringPtr;
  if (Length < 1)
  {
LABEL_39:

    goto LABEL_52;
  }

  v29 = v5;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  while (2)
  {
    v30 = v13;
    v14 = 0;
    v15 = -v12;
    v16 = v12 + 64;
    v28 = v12;
    while (1)
    {
      if (v12 >= 4)
      {
        v17 = 4;
      }

      else
      {
        v17 = v12;
      }

      v18 = v43;
      if (v43 <= v12)
      {
        goto LABEL_20;
      }

      if (v40)
      {
        v19 = &v40[v42];
LABEL_15:
        v20 = v19[v12];
        goto LABEL_18;
      }

      if (!v41)
      {
        if (v45 <= v12 || v11 > v12)
        {
          v22 = v17 + v15;
          v23 = v16 - v17;
          v24 = v12 - v17;
          v25 = v24 + 64;
          if (v24 + 64 >= v43)
          {
            v25 = v43;
          }

          v44 = v24;
          v45 = v25;
          if (v43 >= v23)
          {
            v18 = v23;
          }

          v46.location = v24 + v42;
          v46.length = v18 + v22;
          CFStringGetCharacters(theString, v46, buffer);
          v11 = v44;
        }

        v19 = &buffer[-v11];
        goto LABEL_15;
      }

      v20 = v41[v42 + v12];
LABEL_18:
      if (v20 != 13)
      {
        break;
      }

LABEL_21:
      ++v12;
      --v15;
      ++v16;
      if (Length == v12)
      {

        v13 = v30;
        if (v14 >= 1)
        {
          goto LABEL_41;
        }

LABEL_47:
        v12 = Length;
        goto LABEL_48;
      }
    }

    if (v20 != 10)
    {
LABEL_20:
      ++v14;
      goto LABEL_21;
    }

    v13 = v30;
    if (!v14 && v30)
    {
      goto LABEL_57;
    }

    if (v14 > 150)
    {

      Length = v28;
LABEL_41:
      if (v14 >= 0x97)
      {
        v12 = v28;
      }

      else
      {
        v12 = Length;
      }

      if (v14 < 0x97)
      {
        ++v13;
      }
    }

    else
    {
      if (v30 != 4)
      {
        v13 = v30 + 1;
        if (++v12 != Length)
        {
          continue;
        }

        goto LABEL_47;
      }

      v13 = 5;
LABEL_57:
    }

    break;
  }

LABEL_48:
  v5 = v29;
  if (v13 <= 1)
  {
LABEL_52:
  }

  else
  {

    if (v12 && ([*(a1 + 32) intersectsIndexesInRange:{v4, v12 + v3}] & 1) == 0)
    {
      v26 = *(a1 + 48);
      v6 = [MEMORY[0x277CCAE60] valueWithRange:{v4, v12 + v3}];
      [v26 addObject:v6];
      goto LABEL_52;
    }
  }

LABEL_53:

  return 1;
}

- (_NSRange)signatureRange:(id)a3
{
  v4 = a3;
  v5 = [v4 htmlParser];
  v6 = [v5 signatureRegions];
  if ([v6 count])
  {
    v7 = [v6 firstIndex];
    v8 = [v6 lastIndex];
    if (v8 >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v8 >= v7)
    {
      v10 = v8 - v7 + 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(SGSignatureDissector *)self miniSignatureRange:v4];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(SGSignatureDissector *)self hmmPlausibleSignatureRange:v4];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [(SGSignatureDissector *)self hmmSignatureRange:v4];
      }
    }

    v9 = v11;
    v10 = v12;
  }

  v13 = v9;
  v14 = v10;
  result.length = v14;
  result.location = v13;
  return result;
}

- (id)initIgnoringDataDetectors
{
  v2 = [(SGSignatureDissector *)self init];
  v3 = v2;
  if (v2)
  {
    ignoreDataDetectorsForTesting = v2->_ignoreDataDetectorsForTesting;
    v2->_ignoreDataDetectorsForTesting = MEMORY[0x277CBEC38];
  }

  return v3;
}

@end