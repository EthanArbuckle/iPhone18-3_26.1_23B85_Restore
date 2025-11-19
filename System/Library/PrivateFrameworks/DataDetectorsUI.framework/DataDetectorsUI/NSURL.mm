@interface NSURL
- (__CFString)dd_phoneNumberFromTelSchemeAndExtractBody:(__CFString *)a3 serviceID:(uint64_t)a4 suggestions:;
- (id)dd_emailFromValidSchemes:(id)a1;
- (id)dd_formattedPhoneNumber;
- (id)dd_phoneNumberFromValidSchemes:(id)a1;
- (id)dd_rdarLinkFromTelScheme;
- (uint64_t)dd_isAppleBooks;
- (uint64_t)dd_isAppleMusic;
- (uint64_t)dd_isApplePodcasts;
- (uint64_t)dd_isAppleStore;
- (uint64_t)dd_isAppleTV;
- (uint64_t)dd_isMaps:(char *)a3 isDirections:;
- (void)dd_isAppleApps;
@end

@implementation NSURL

- (__CFString)dd_phoneNumberFromTelSchemeAndExtractBody:(__CFString *)a3 serviceID:(uint64_t)a4 suggestions:
{
  v4 = a1;
  v140[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_116;
  }

  if (!dd_isAnySimpleTelephonyScheme(a1))
  {
    v4 = 0;
    goto LABEL_116;
  }

  v6 = [(__CFString *)v4 resourceSpecifier];
  if ([v6 hasPrefix:@"//"])
  {
    if ([v6 length] < 3)
    {
LABEL_45:
      v4 = 0;
      goto LABEL_115;
    }

    v7 = [v6 substringFromIndex:2];

    v6 = v7;
  }

  if (![v6 length])
  {
    goto LABEL_45;
  }

  v8 = [(__CFString *)v4 scheme];
  v9 = [v8 lowercaseString];

  v10 = [v9 isEqualToString:@"sms"];
  v11 = [v9 isEqualToString:@"messages"];
  v12 = [v9 isEqualToString:@"sip"];
  HIDWORD(v124) = v10;
  v13 = v10 | v11;
  v123 = a3;
  if ((v10 | v11))
  {
    LODWORD(v116) = v10 | v11;
    v14 = @";";
    v15 = [v6 rangeOfString:@"?"];
    v16 = [v6 rangeOfString:@"&"];
    v17 = [v6 rangeOfString:@";"];
    if (v16 >= v15)
    {
      v18 = @"?";
    }

    else
    {
      v18 = @"&";
    }

    if (v16 >= v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = v16;
    }

    if (v17 >= v19)
    {
      v14 = v18;
    }

    v20 = [v6 componentsSeparatedByString:v14];
    if ([v20 count])
    {
      v21 = [v20 firstObject];
      v140[0] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:1];

      if ([v20 count] < 2)
      {
        v36 = 0;
      }

      else
      {
        HIDWORD(v116) = v12;
        v117 = v9;
        v119 = v6;
        v23 = [v20 subarrayWithRange:{1, objc_msgSend(v20, "count") - 1}];
        v24 = [v23 componentsJoinedByString:v14];

        v25 = [v24 componentsSeparatedByString:@"&"];
        v33 = v25;
        v121 = v22;
        v114 = v24;
        v115 = v20;
        if ((a2 || a3 || a4) && (v137 = 0u, v138 = 0u, v135 = 0u, v136 = 0u, (v34 = OUTLINED_FUNCTION_4_2(v25, v26, v27, v28, v29, v30, v31, v32, v112, v113, v24, v20, v116, v9, v6, v22, a3, v124, a4, a2, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, *(&v133 + 1), v134, *(&v134 + 1), 0)) != 0))
        {
          v35 = v34;
          v36 = 0;
          v37 = *v136;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v136 != v37)
              {
                objc_enumerationMutation(v33);
              }

              v39 = *(*(&v135 + 1) + 8 * i);
              v40 = [v39 componentsSeparatedByString:@"="];
              if ([v40 count] >= 2)
              {
                v41 = [v40 firstObject];
                v42 = [v41 lowercaseString];

                v43 = [v39 substringFromIndex:{objc_msgSend(v42, "length") + 1}];
                if (v129 && [v42 isEqualToString:@"body"])
                {
                  *v129 = [v43 stringByRemovingPercentEncoding];
                }

                else if ([v42 isEqualToString:@"service_id"])
                {
                  v44 = [v43 stringByRemovingPercentEncoding];

                  if ((v124 & 0x100000000) != 0 || dd_handleIsChatBot(v44))
                  {
                    if (v123)
                    {
                      v45 = v44;
                      *v123 = v44;
                    }

                    v36 = v44;
                  }

                  else
                  {

                    v36 = 0;
                  }
                }

                else if (v126 && [v42 isEqualToString:@"suggestions"])
                {
                  v46 = v43;
                  *v126 = v43;
                }
              }
            }

            v35 = OUTLINED_FUNCTION_4_2(v47, v48, v49, v50, v51, v52, v53, v54, v112, v113, v114, v115, v116, v117, v119, v121, v123, v124, v126, v129, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, *(&v133 + 1), v134, *(&v134 + 1), v135);
          }

          while (v35);
        }

        else
        {
          v36 = 0;
        }

        v22 = [v121 arrayByAddingObjectsFromArray:v33];

        v9 = v117;
        v6 = v119;
        a3 = v123;
        v12 = HIDWORD(v116);
        v20 = v115;
      }
    }

    else
    {
      v36 = 0;
      v22 = 0;
    }

    v13 = v116;
  }

  else
  {
    v22 = [v6 componentsSeparatedByString:@""];;
    v36 = 0;
  }

  v55 = [v22 firstObject];
  v56 = [v55 length];

  if (!v56)
  {
    v4 = 0;
    goto LABEL_114;
  }

  v57 = [v22 firstObject];
  v58 = [v57 stringByRemovingPercentEncoding];

  v130 = v36;
  if ((v13 & 1) == 0)
  {
    v59 = [(__CFString *)v58 stringByReplacingOccurrencesOfString:@":" withString:@""];;
    goto LABEL_58;
  }

  v59 = v58;
  if ([(__CFString *)v58 isEqualToString:@"/open"])
  {
    v59 = @"open";
LABEL_58:
  }

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v122 = v22;
  v60 = v22;
  v61 = [v60 countByEnumeratingWithState:&v131 objects:v139 count:16];
  if (!v61)
  {
    goto LABEL_103;
  }

  v69 = v61;
  v127 = v59;
  HIDWORD(v116) = v12;
  v118 = v9;
  v120 = v6;
  v70 = 0;
  v71 = 1;
  v72 = *v132;
  while (1)
  {
    OUTLINED_FUNCTION_1_2(v61, v62, v63, v64, v65, v66, v67, v68, v112, v113, v114, v115, v116, v118, v120, v122, v123, v124, v127, v130, v131, *(&v131 + 1), v132);
    if (!v81)
    {
      objc_enumerationMutation(v60);
    }

    if ((v71 & 1) == 0)
    {
      v82 = **(&v131 + 1);
      v83 = [**(&v131 + 1) componentsSeparatedByString:@"="];
      v84 = v83;
      if ((v70 & 1) != 0 && [v83 count] == 1)
      {
        if ([v82 length])
        {
          v85 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"1234567890#*"];
          v86 = [v85 invertedSet];

          if ([OUTLINED_FUNCTION_2_2() rangeOfCharacterFromSet:?] == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_119;
          }

LABEL_73:
        }
      }

      else if ([v84 count] == 2)
      {
        v86 = [v84 objectAtIndexedSubscript:0];
        if ([v86 isEqualToString:@"ext"])
        {
          v87 = [OUTLINED_FUNCTION_3_2() objectAtIndexedSubscript:?];
          v88 = [v87 length];

          if (v88)
          {
            goto LABEL_101;
          }

          goto LABEL_74;
        }

        goto LABEL_73;
      }

LABEL_74:
    }

    if (v69 >= 2)
    {
      break;
    }

LABEL_99:
    v70 = v71;
    v61 = [v60 countByEnumeratingWithState:&v131 objects:v139 count:16];
    v69 = v61;
    v71 = 0;
    if (!v61)
    {
      v9 = v118;
      v6 = v120;
      v22 = v122;
      a3 = v123;
      v12 = HIDWORD(v116);
      v59 = v127;
      goto LABEL_103;
    }
  }

  OUTLINED_FUNCTION_1_2(v73, v74, v75, v76, v77, v78, v79, v80, v112, v113, v114, v115, v116, v118, v120, v122, v123, v124, v127, v130, v131, *(&v131 + 1), v132);
  if (!v81)
  {
    objc_enumerationMutation(v60);
  }

  v82 = *(*(&v131 + 1) + 8);
  v89 = [v82 componentsSeparatedByString:@"="];
  v84 = v89;
  if ((v71 & 1) == 0 || [v89 count] != 1)
  {
    if ([v84 count] == 2)
    {
      v86 = [v84 objectAtIndexedSubscript:0];
      if ([v86 isEqualToString:@"ext"])
      {
        v91 = [OUTLINED_FUNCTION_3_2() objectAtIndexedSubscript:?];
        v92 = [v91 length];

        if (v92)
        {
LABEL_101:
          v105 = MEMORY[0x277CCACA8];
          v86 = [OUTLINED_FUNCTION_3_2() objectAtIndexedSubscript:?];
          v106 = [v86 stringByRemovingPercentEncoding];
          v59 = [v105 stringWithFormat:@"%@%@", v127, v106];;

          v107 = v106;
          goto LABEL_102;
        }

        goto LABEL_88;
      }

      goto LABEL_87;
    }

LABEL_88:

    if (v69 != 2)
    {
      for (j = 2; j != v69; ++j)
      {
        OUTLINED_FUNCTION_1_2(v93, v94, v95, v96, v97, v98, v99, v100, v112, v113, v114, v115, v116, v118, v120, v122, v123, v124, v127, v130, v131, *(&v131 + 1), v132);
        if (!v81)
        {
          objc_enumerationMutation(v60);
        }

        v84 = [*(*(&v131 + 1) + 8 * j) componentsSeparatedByString:@"="];
        if ([v84 count] == 2)
        {
          v102 = [v84 objectAtIndexedSubscript:0];
          if ([v102 isEqualToString:@"ext"])
          {
            v103 = [OUTLINED_FUNCTION_3_2() objectAtIndexedSubscript:?];
            v104 = [v103 length];

            if (v104)
            {
              goto LABEL_101;
            }
          }

          else
          {
          }
        }
      }
    }

    v71 = 0;
    goto LABEL_99;
  }

  if (![v82 length])
  {
    goto LABEL_88;
  }

  v90 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"1234567890#*"];
  v86 = [v90 invertedSet];

  if ([OUTLINED_FUNCTION_2_2() rangeOfCharacterFromSet:?] != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_87:

    goto LABEL_88;
  }

LABEL_119:
  v107 = v127;
  v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v127, v82];;
LABEL_102:
  v9 = v118;
  v6 = v120;
  v22 = v122;
  a3 = v123;
  v12 = HIDWORD(v116);

LABEL_103:
  if (dd_handleIsChatBot(v59))
  {
    if (a3 && !*a3)
    {
      v108 = v59;
      *a3 = v59;
    }

    v36 = v59;

    v109 = [(__CFString *)v36 componentsSeparatedByString:@"@"];

    v59 = [v109 firstObject];

    if (!v12)
    {
LABEL_111:
      v4 = v59;
      goto LABEL_113;
    }
  }

  else
  {
    v36 = v130;
    if (!v12)
    {
      goto LABEL_111;
    }
  }

  if (dd_handleIsChatBot(v36))
  {
    goto LABEL_111;
  }

  v4 = 0;
LABEL_113:

LABEL_114:
LABEL_115:

LABEL_116:
  v110 = *MEMORY[0x277D85DE8];

  return v4;
}

- (uint64_t)dd_isMaps:(char *)a3 isDirections:
{
  if (!a1)
  {
    v10 = 0;
    return v10 & 1;
  }

  v6 = [a1 scheme];
  v7 = [v6 lowercaseString];

  if (([v7 isEqualToString:@"maps"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"geo") || objc_msgSend(v7, "isEqualToString:", @"geo-navigation"))
  {
    v8 = [a1 absoluteString];
    v9 = [v8 componentsSeparatedByString:@":"];
    v10 = [v9 count] > 1;
LABEL_6:

    goto LABEL_7;
  }

  v14 = [a1 query];

  if (v14)
  {
    v15 = [a1 host];
    v8 = [v15 lowercaseString];

    v16 = [v8 isEqualToString:@"maps.apple.com"];
    v10 = a2 | v16;
    if (!a2 || (v16 & 1) != 0)
    {
LABEL_7:

      if (a3 && (v10 & 1) != 0)
      {
        v11 = [a1 resourceSpecifier];
        if ([v11 containsString:@"?daddr="] & 1) != 0 || (objc_msgSend(v11, "containsString:", @"&daddr=") & 1) != 0 || (objc_msgSend(v11, "containsString:", @"?destination="))
        {
          v12 = 1;
        }

        else
        {
          v12 = [v11 containsString:@"&destination="];
        }

        *a3 = v12;

        v10 = 1;
      }

      goto LABEL_14;
    }

    if ([v8 isEqualToString:@"maps.google.com"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"maps.bing.com"))
    {
      v10 = 1;
      goto LABEL_7;
    }

    goto LABEL_26;
  }

  if (a2)
  {
    v17 = [a1 path];

    if (v17)
    {
      v18 = [a1 host];
      v8 = [v18 lowercaseString];

LABEL_26:
      v9 = [a1 path];
      v19 = [v9 lowercaseString];
      if ([v19 hasPrefix:@"/maps"])
      {
        if ([v8 isEqualToString:@"www.google.com"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"www.bing.com"))
        {
          v10 = 1;
        }

        else
        {
          v10 = [v8 isEqualToString:@"goo.gl"];
        }
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_14:

  return v10 & 1;
}

- (void)dd_isAppleApps
{
  if (result)
  {
    v1 = [result host];
    v2 = [v1 lowercaseString];
    v3 = [&unk_282C2BE78 containsObject:v2];

    return v3;
  }

  return result;
}

- (uint64_t)dd_isAppleBooks
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 host];
    v3 = [v2 lowercaseString];
    if ([@"books.apple.com" isEqualToString:v3])
    {
      v1 = 1;
    }

    else
    {
      v1 = [v1 dd_hasHosts:&unk_282C2BE48 filterKey:@"app" filterValue:@"books"];
    }
  }

  return v1;
}

- (uint64_t)dd_isAppleMusic
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 host];
    v3 = [v2 lowercaseString];
    if ([&unk_282C2BE90 containsObject:v3])
    {
      v1 = 1;
    }

    else
    {
      v1 = [v1 dd_hasHosts:&unk_282C2BE48 filterKey:@"app" filterValue:@"music"];
    }
  }

  return v1;
}

- (uint64_t)dd_isApplePodcasts
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 host];
    v3 = [v2 lowercaseString];
    if ([@"podcasts.apple.com" isEqualToString:v3])
    {
      v1 = 1;
    }

    else
    {
      v1 = [v1 dd_hasHosts:&unk_282C2BE48 filterKey:@"app" filterValue:@"podcast"];
    }
  }

  return v1;
}

- (uint64_t)dd_isAppleTV
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 host];
    v3 = [v2 lowercaseString];
    if ([@"tv.apple.com" isEqualToString:v3])
    {
      v1 = 1;
    }

    else
    {
      v1 = [v1 dd_hasHosts:&unk_282C2BE48 filterKey:@"app" filterValue:@"tv"];
    }
  }

  return v1;
}

- (uint64_t)dd_isAppleStore
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 host];
  v2 = [v1 lowercaseString];

  if ([&unk_282C2BE48 containsObject:v2])
  {
    v3 = 1;
  }

  else
  {
    v3 = [&unk_282C2BE60 containsObject:v2];
  }

  return v3;
}

- (id)dd_rdarLinkFromTelScheme
{
  if (a1)
  {
    v2 = [a1 scheme];
    v3 = [v2 lowercaseString];

    if ([v3 isEqualToString:@"rdar"])
    {
      v4 = a1;
    }

    else if ([v3 isEqualToString:@"tel"])
    {
      v6 = objc_alloc(MEMORY[0x277CBEBC0]);
      v7 = MEMORY[0x277CCACA8];
      OUTLINED_FUNCTION_0_2();
      v12 = [(NSURL *)v8 dd_phoneNumberFromTelSchemeAndExtractBody:v9 serviceID:v10 suggestions:v11];
      v13 = 0;
      if (([v12 containsString:@"@"] & 1) == 0)
      {
        v13 = v12;
      }

      v14 = [v7 stringWithFormat:@"rdar://problem/%@", v13];
      v4 = [v6 initWithString:v14];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)dd_phoneNumberFromValidSchemes:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v2 scheme];
    v5 = [v4 lowercaseString];

    LODWORD(v4) = [OUTLINED_FUNCTION_2_2() containsObject:?];
    if (!v4)
    {
      goto LABEL_6;
    }

    if ([&unk_282C2BEC0 containsObject:v5])
    {
      OUTLINED_FUNCTION_0_2();
      v12 = [(NSURL *)v8 dd_phoneNumberFromTelSchemeAndExtractBody:v9 serviceID:v10 suggestions:v11];
      v2 = 0;
      if (([v12 containsString:@"@"] & 1) == 0)
      {
        v2 = v12;
      }

      goto LABEL_7;
    }

    if ([&unk_282C2BED8 containsObject:v5] && (objc_msgSend(v2, "dd_emailFromFacetimeScheme"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
    {
      v2 = [v2 dd_phoneNumberFromFacetimeScheme];
    }

    else
    {
LABEL_6:
      v2 = 0;
    }

LABEL_7:
  }

  return v2;
}

- (id)dd_emailFromValidSchemes:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v2 scheme];
    v5 = [v4 lowercaseString];

    LODWORD(v4) = [OUTLINED_FUNCTION_2_2() containsObject:?];
    if (v4)
    {
      if ([v5 isEqualToString:@"mailto"])
      {
        v6 = dd_emailFromMailtoScheme(v2);
LABEL_9:
        v2 = v6;
LABEL_11:

        goto LABEL_12;
      }

      if (([v5 isEqualToString:@"sms"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"sip"))
      {
        OUTLINED_FUNCTION_0_2();
        v12 = [(NSURL *)v8 dd_phoneNumberFromTelSchemeAndExtractBody:v9 serviceID:v10 suggestions:v11];
        v2 = 0;
        if ([v12 containsString:@"@"])
        {
          v2 = v12;
        }

        goto LABEL_11;
      }

      if ([&unk_282C2BEF0 containsObject:v5])
      {
        v6 = [v2 dd_emailFromFacetimeScheme];
        goto LABEL_9;
      }
    }

    v2 = 0;
    goto LABEL_11;
  }

LABEL_12:

  return v2;
}

- (id)dd_formattedPhoneNumber
{
  if (a1)
  {
    a1 = [a1 formattedPhoneNumber];
    v1 = vars8;
  }

  return a1;
}

@end