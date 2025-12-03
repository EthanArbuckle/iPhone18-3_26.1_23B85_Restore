@interface NSURL
- (__CFString)dd_phoneNumberFromTelSchemeAndExtractBody:(__CFString *)body serviceID:(uint64_t)d suggestions:;
- (id)dd_emailFromValidSchemes:(id)schemes;
- (id)dd_formattedPhoneNumber;
- (id)dd_phoneNumberFromValidSchemes:(id)schemes;
- (id)dd_rdarLinkFromTelScheme;
- (uint64_t)dd_isAppleBooks;
- (uint64_t)dd_isAppleMusic;
- (uint64_t)dd_isApplePodcasts;
- (uint64_t)dd_isAppleStore;
- (uint64_t)dd_isAppleTV;
- (uint64_t)dd_isMaps:(char *)maps isDirections:;
- (void)dd_isAppleApps;
@end

@implementation NSURL

- (__CFString)dd_phoneNumberFromTelSchemeAndExtractBody:(__CFString *)body serviceID:(uint64_t)d suggestions:
{
  selfCopy = self;
  v140[1] = *MEMORY[0x277D85DE8];
  if (!self)
  {
    goto LABEL_116;
  }

  if (!dd_isAnySimpleTelephonyScheme(self))
  {
    selfCopy = 0;
    goto LABEL_116;
  }

  resourceSpecifier = [(__CFString *)selfCopy resourceSpecifier];
  if ([resourceSpecifier hasPrefix:@"//"])
  {
    if ([resourceSpecifier length] < 3)
    {
LABEL_45:
      selfCopy = 0;
      goto LABEL_115;
    }

    v7 = [resourceSpecifier substringFromIndex:2];

    resourceSpecifier = v7;
  }

  if (![resourceSpecifier length])
  {
    goto LABEL_45;
  }

  scheme = [(__CFString *)selfCopy scheme];
  lowercaseString = [scheme lowercaseString];

  v10 = [lowercaseString isEqualToString:@"sms"];
  v11 = [lowercaseString isEqualToString:@"messages"];
  v12 = [lowercaseString isEqualToString:@"sip"];
  HIDWORD(v124) = v10;
  v13 = v10 | v11;
  bodyCopy = body;
  if ((v10 | v11))
  {
    LODWORD(v116) = v10 | v11;
    v14 = @";";
    v15 = [resourceSpecifier rangeOfString:@"?"];
    v16 = [resourceSpecifier rangeOfString:@"&"];
    v17 = [resourceSpecifier rangeOfString:@";"];
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

    v20 = [resourceSpecifier componentsSeparatedByString:v14];
    if ([v20 count])
    {
      firstObject = [v20 firstObject];
      v140[0] = firstObject;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:1];

      if ([v20 count] < 2)
      {
        v36 = 0;
      }

      else
      {
        HIDWORD(v116) = v12;
        v117 = lowercaseString;
        v119 = resourceSpecifier;
        v23 = [v20 subarrayWithRange:{1, objc_msgSend(v20, "count") - 1}];
        v24 = [v23 componentsJoinedByString:v14];

        v25 = [v24 componentsSeparatedByString:@"&"];
        v33 = v25;
        v121 = v22;
        v114 = v24;
        v115 = v20;
        if ((a2 || body || d) && (v137 = 0u, v138 = 0u, v135 = 0u, v136 = 0u, (v34 = OUTLINED_FUNCTION_4_2(v25, v26, v27, v28, v29, v30, v31, v32, v112, v113, v24, v20, v116, lowercaseString, resourceSpecifier, v22, body, v124, d, a2, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, *(&v133 + 1), v134, *(&v134 + 1), 0)) != 0))
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
                firstObject2 = [v40 firstObject];
                lowercaseString2 = [firstObject2 lowercaseString];

                v43 = [v39 substringFromIndex:{objc_msgSend(lowercaseString2, "length") + 1}];
                if (v129 && [lowercaseString2 isEqualToString:@"body"])
                {
                  *v129 = [v43 stringByRemovingPercentEncoding];
                }

                else if ([lowercaseString2 isEqualToString:@"service_id"])
                {
                  stringByRemovingPercentEncoding = [v43 stringByRemovingPercentEncoding];

                  if ((v124 & 0x100000000) != 0 || dd_handleIsChatBot(stringByRemovingPercentEncoding))
                  {
                    if (bodyCopy)
                    {
                      v45 = stringByRemovingPercentEncoding;
                      *bodyCopy = stringByRemovingPercentEncoding;
                    }

                    v36 = stringByRemovingPercentEncoding;
                  }

                  else
                  {

                    v36 = 0;
                  }
                }

                else if (v126 && [lowercaseString2 isEqualToString:@"suggestions"])
                {
                  v46 = v43;
                  *v126 = v43;
                }
              }
            }

            v35 = OUTLINED_FUNCTION_4_2(v47, v48, v49, v50, v51, v52, v53, v54, v112, v113, v114, v115, v116, v117, v119, v121, bodyCopy, v124, v126, v129, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, *(&v133 + 1), v134, *(&v134 + 1), v135);
          }

          while (v35);
        }

        else
        {
          v36 = 0;
        }

        v22 = [v121 arrayByAddingObjectsFromArray:v33];

        lowercaseString = v117;
        resourceSpecifier = v119;
        body = bodyCopy;
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
    v22 = [resourceSpecifier componentsSeparatedByString:@""];;
    v36 = 0;
  }

  firstObject3 = [v22 firstObject];
  v56 = [firstObject3 length];

  if (!v56)
  {
    selfCopy = 0;
    goto LABEL_114;
  }

  firstObject4 = [v22 firstObject];
  stringByRemovingPercentEncoding2 = [firstObject4 stringByRemovingPercentEncoding];

  v130 = v36;
  if ((v13 & 1) == 0)
  {
    v106 = [(__CFString *)stringByRemovingPercentEncoding2 stringByReplacingOccurrencesOfString:@":" withString:@""];;
    goto LABEL_58;
  }

  v106 = stringByRemovingPercentEncoding2;
  if ([(__CFString *)stringByRemovingPercentEncoding2 isEqualToString:@"/open"])
  {
    v106 = @"open";
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
  v127 = v106;
  HIDWORD(v116) = v12;
  v118 = lowercaseString;
  v120 = resourceSpecifier;
  v70 = 0;
  v71 = 1;
  v72 = *v132;
  while (1)
  {
    OUTLINED_FUNCTION_1_2(v61, v62, v63, v64, v65, v66, v67, v68, v112, v113, v114, v115, v116, v118, v120, v122, bodyCopy, v124, v127, v130, v131, *(&v131 + 1), v132);
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
          invertedSet = [v85 invertedSet];

          if ([OUTLINED_FUNCTION_2_2() rangeOfCharacterFromSet:?] == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_119;
          }

LABEL_73:
        }
      }

      else if ([v84 count] == 2)
      {
        invertedSet = [v84 objectAtIndexedSubscript:0];
        if ([invertedSet isEqualToString:@"ext"])
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
      lowercaseString = v118;
      resourceSpecifier = v120;
      v22 = v122;
      body = bodyCopy;
      v12 = HIDWORD(v116);
      v106 = v127;
      goto LABEL_103;
    }
  }

  OUTLINED_FUNCTION_1_2(v73, v74, v75, v76, v77, v78, v79, v80, v112, v113, v114, v115, v116, v118, v120, v122, bodyCopy, v124, v127, v130, v131, *(&v131 + 1), v132);
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
      invertedSet = [v84 objectAtIndexedSubscript:0];
      if ([invertedSet isEqualToString:@"ext"])
      {
        v91 = [OUTLINED_FUNCTION_3_2() objectAtIndexedSubscript:?];
        v92 = [v91 length];

        if (v92)
        {
LABEL_101:
          v105 = MEMORY[0x277CCACA8];
          invertedSet = [OUTLINED_FUNCTION_3_2() objectAtIndexedSubscript:?];
          stringByRemovingPercentEncoding3 = [invertedSet stringByRemovingPercentEncoding];
          v106 = [v105 stringWithFormat:@"%@%@", v127, stringByRemovingPercentEncoding3];;

          v107 = stringByRemovingPercentEncoding3;
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
        OUTLINED_FUNCTION_1_2(v93, v94, v95, v96, v97, v98, v99, v100, v112, v113, v114, v115, v116, v118, v120, v122, bodyCopy, v124, v127, v130, v131, *(&v131 + 1), v132);
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
  invertedSet = [v90 invertedSet];

  if ([OUTLINED_FUNCTION_2_2() rangeOfCharacterFromSet:?] != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_87:

    goto LABEL_88;
  }

LABEL_119:
  v107 = v127;
  v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v127, v82];;
LABEL_102:
  lowercaseString = v118;
  resourceSpecifier = v120;
  v22 = v122;
  body = bodyCopy;
  v12 = HIDWORD(v116);

LABEL_103:
  if (dd_handleIsChatBot(v106))
  {
    if (body && !*body)
    {
      v108 = v106;
      *body = v106;
    }

    v36 = v106;

    v109 = [(__CFString *)v36 componentsSeparatedByString:@"@"];

    v106 = [v109 firstObject];

    if (!v12)
    {
LABEL_111:
      selfCopy = v106;
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

  selfCopy = 0;
LABEL_113:

LABEL_114:
LABEL_115:

LABEL_116:
  v110 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (uint64_t)dd_isMaps:(char *)maps isDirections:
{
  if (!self)
  {
    v10 = 0;
    return v10 & 1;
  }

  scheme = [self scheme];
  lowercaseString = [scheme lowercaseString];

  if (([lowercaseString isEqualToString:@"maps"] & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"geo") || objc_msgSend(lowercaseString, "isEqualToString:", @"geo-navigation"))
  {
    absoluteString = [self absoluteString];
    path2 = [absoluteString componentsSeparatedByString:@":"];
    v10 = [path2 count] > 1;
LABEL_6:

    goto LABEL_7;
  }

  query = [self query];

  if (query)
  {
    host = [self host];
    absoluteString = [host lowercaseString];

    v16 = [absoluteString isEqualToString:@"maps.apple.com"];
    v10 = a2 | v16;
    if (!a2 || (v16 & 1) != 0)
    {
LABEL_7:

      if (maps && (v10 & 1) != 0)
      {
        resourceSpecifier = [self resourceSpecifier];
        if ([resourceSpecifier containsString:@"?daddr="] & 1) != 0 || (objc_msgSend(resourceSpecifier, "containsString:", @"&daddr=") & 1) != 0 || (objc_msgSend(resourceSpecifier, "containsString:", @"?destination="))
        {
          v12 = 1;
        }

        else
        {
          v12 = [resourceSpecifier containsString:@"&destination="];
        }

        *maps = v12;

        v10 = 1;
      }

      goto LABEL_14;
    }

    if ([absoluteString isEqualToString:@"maps.google.com"] & 1) != 0 || (objc_msgSend(absoluteString, "isEqualToString:", @"maps.bing.com"))
    {
      v10 = 1;
      goto LABEL_7;
    }

    goto LABEL_26;
  }

  if (a2)
  {
    path = [self path];

    if (path)
    {
      host2 = [self host];
      absoluteString = [host2 lowercaseString];

LABEL_26:
      path2 = [self path];
      lowercaseString2 = [path2 lowercaseString];
      if ([lowercaseString2 hasPrefix:@"/maps"])
      {
        if ([absoluteString isEqualToString:@"www.google.com"] & 1) != 0 || (objc_msgSend(absoluteString, "isEqualToString:", @"www.bing.com"))
        {
          v10 = 1;
        }

        else
        {
          v10 = [absoluteString isEqualToString:@"goo.gl"];
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
    host = [result host];
    lowercaseString = [host lowercaseString];
    v3 = [&unk_282C2BE78 containsObject:lowercaseString];

    return v3;
  }

  return result;
}

- (uint64_t)dd_isAppleBooks
{
  selfCopy = self;
  if (self)
  {
    host = [self host];
    lowercaseString = [host lowercaseString];
    if ([@"books.apple.com" isEqualToString:lowercaseString])
    {
      selfCopy = 1;
    }

    else
    {
      selfCopy = [selfCopy dd_hasHosts:&unk_282C2BE48 filterKey:@"app" filterValue:@"books"];
    }
  }

  return selfCopy;
}

- (uint64_t)dd_isAppleMusic
{
  selfCopy = self;
  if (self)
  {
    host = [self host];
    lowercaseString = [host lowercaseString];
    if ([&unk_282C2BE90 containsObject:lowercaseString])
    {
      selfCopy = 1;
    }

    else
    {
      selfCopy = [selfCopy dd_hasHosts:&unk_282C2BE48 filterKey:@"app" filterValue:@"music"];
    }
  }

  return selfCopy;
}

- (uint64_t)dd_isApplePodcasts
{
  selfCopy = self;
  if (self)
  {
    host = [self host];
    lowercaseString = [host lowercaseString];
    if ([@"podcasts.apple.com" isEqualToString:lowercaseString])
    {
      selfCopy = 1;
    }

    else
    {
      selfCopy = [selfCopy dd_hasHosts:&unk_282C2BE48 filterKey:@"app" filterValue:@"podcast"];
    }
  }

  return selfCopy;
}

- (uint64_t)dd_isAppleTV
{
  selfCopy = self;
  if (self)
  {
    host = [self host];
    lowercaseString = [host lowercaseString];
    if ([@"tv.apple.com" isEqualToString:lowercaseString])
    {
      selfCopy = 1;
    }

    else
    {
      selfCopy = [selfCopy dd_hasHosts:&unk_282C2BE48 filterKey:@"app" filterValue:@"tv"];
    }
  }

  return selfCopy;
}

- (uint64_t)dd_isAppleStore
{
  if (!self)
  {
    return 0;
  }

  host = [self host];
  lowercaseString = [host lowercaseString];

  if ([&unk_282C2BE48 containsObject:lowercaseString])
  {
    v3 = 1;
  }

  else
  {
    v3 = [&unk_282C2BE60 containsObject:lowercaseString];
  }

  return v3;
}

- (id)dd_rdarLinkFromTelScheme
{
  if (self)
  {
    scheme = [self scheme];
    lowercaseString = [scheme lowercaseString];

    if ([lowercaseString isEqualToString:@"rdar"])
    {
      selfCopy = self;
    }

    else if ([lowercaseString isEqualToString:@"tel"])
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
      selfCopy = [v6 initWithString:v14];
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dd_phoneNumberFromValidSchemes:(id)schemes
{
  schemesCopy = schemes;
  if (schemes)
  {
    v3 = a2;
    scheme = [schemesCopy scheme];
    lowercaseString = [scheme lowercaseString];

    LODWORD(scheme) = [OUTLINED_FUNCTION_2_2() containsObject:?];
    if (!scheme)
    {
      goto LABEL_6;
    }

    if ([&unk_282C2BEC0 containsObject:lowercaseString])
    {
      OUTLINED_FUNCTION_0_2();
      v12 = [(NSURL *)v8 dd_phoneNumberFromTelSchemeAndExtractBody:v9 serviceID:v10 suggestions:v11];
      schemesCopy = 0;
      if (([v12 containsString:@"@"] & 1) == 0)
      {
        schemesCopy = v12;
      }

      goto LABEL_7;
    }

    if ([&unk_282C2BED8 containsObject:lowercaseString] && (objc_msgSend(schemesCopy, "dd_emailFromFacetimeScheme"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
    {
      schemesCopy = [schemesCopy dd_phoneNumberFromFacetimeScheme];
    }

    else
    {
LABEL_6:
      schemesCopy = 0;
    }

LABEL_7:
  }

  return schemesCopy;
}

- (id)dd_emailFromValidSchemes:(id)schemes
{
  schemesCopy = schemes;
  if (schemes)
  {
    v3 = a2;
    scheme = [schemesCopy scheme];
    lowercaseString = [scheme lowercaseString];

    LODWORD(scheme) = [OUTLINED_FUNCTION_2_2() containsObject:?];
    if (scheme)
    {
      if ([lowercaseString isEqualToString:@"mailto"])
      {
        dd_emailFromFacetimeScheme = dd_emailFromMailtoScheme(schemesCopy);
LABEL_9:
        schemesCopy = dd_emailFromFacetimeScheme;
LABEL_11:

        goto LABEL_12;
      }

      if (([lowercaseString isEqualToString:@"sms"] & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"sip"))
      {
        OUTLINED_FUNCTION_0_2();
        v12 = [(NSURL *)v8 dd_phoneNumberFromTelSchemeAndExtractBody:v9 serviceID:v10 suggestions:v11];
        schemesCopy = 0;
        if ([v12 containsString:@"@"])
        {
          schemesCopy = v12;
        }

        goto LABEL_11;
      }

      if ([&unk_282C2BEF0 containsObject:lowercaseString])
      {
        dd_emailFromFacetimeScheme = [schemesCopy dd_emailFromFacetimeScheme];
        goto LABEL_9;
      }
    }

    schemesCopy = 0;
    goto LABEL_11;
  }

LABEL_12:

  return schemesCopy;
}

- (id)dd_formattedPhoneNumber
{
  if (self)
  {
    self = [self formattedPhoneNumber];
    v1 = vars8;
  }

  return self;
}

@end