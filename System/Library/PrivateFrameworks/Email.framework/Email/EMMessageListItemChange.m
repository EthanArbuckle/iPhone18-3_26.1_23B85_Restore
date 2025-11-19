@interface EMMessageListItemChange
+ (id)changeForFlags:(id)a3;
+ (id)changeForKeyPaths:(id)a3 ofItem:(id)a4;
+ (id)changeForUnsubscribeType:(int64_t)a3;
+ (id)changeFrom:(id)a3 to:(id)a4;
+ (id)changeFrom:(id)a3 to:(id)a4 with:(id)a5 hasChanges:(BOOL)a6;
+ (id)changesForKeyPaths:(id)a3 ofItems:(id)a4;
- (BOOL)applyToMessageListItem:(id)a3;
- (BOOL)isEqual:(id)a3;
- (EMMessageListItemChange)initWithCoder:(id)a3;
- (NSString)ef_publicDescription;
- (id)changeDescriptionsForInternal:(BOOL)a3 useDebugDescriptions:(BOOL)a4;
- (unint64_t)hash;
- (void)addChange:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setMailboxObjectIDs:(id)a3;
- (void)setMailboxes:(id)a3;
@end

@implementation EMMessageListItemChange

- (NSString)ef_publicDescription
{
  v3 = [MEMORY[0x1E699B7B0] currentDevice];
  v4 = -[EMMessageListItemChange _descriptionForInternal:useDebugDescriptions:](self, "_descriptionForInternal:useDebugDescriptions:", [v3 isInternal], 0);

  return v4;
}

- (id)changeDescriptionsForInternal:(BOOL)a3 useDebugDescriptions:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(EMMessageListItemChange *)self date];

  if (v8)
  {
    if (v4)
    {
      v9 = [(EMMessageListItemChange *)self date];
      v10 = [v9 debugDescription];
    }

    else
    {
      v11 = [(EMMessageListItemChange *)self date];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = MEMORY[0x1E699B858];
        v9 = [(EMMessageListItemChange *)self date];
        v10 = [v13 partiallyRedactedStringForString:v9];
      }

      else
      {
        v14 = [(EMMessageListItemChange *)self date];
        objc_opt_class();
        v15 = objc_opt_isKindOfClass();

        if (v15)
        {
          v9 = [(EMMessageListItemChange *)self date];
          if ([EMInternalPreferences preferenceEnabled:10])
          {
            v16 = [v9 absoluteString];
          }

          else
          {
            v67 = MEMORY[0x1E699B858];
            v68 = [v9 absoluteString];
            v16 = [v67 fullyRedactedStringForString:v68];
          }

          goto LABEL_11;
        }

        v9 = [(EMMessageListItemChange *)self date];
        v10 = [v9 description];
      }
    }

    v16 = v10;
LABEL_11:

    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"date: %@", v16];
    [v7 addObject:v17];
  }

  v18 = [(EMMessageListItemChange *)self displayDate];

  if (!v18)
  {
    goto LABEL_23;
  }

  if (v4)
  {
    v19 = [(EMMessageListItemChange *)self displayDate];
    v20 = [v19 debugDescription];
  }

  else
  {
    v21 = [(EMMessageListItemChange *)self displayDate];
    objc_opt_class();
    v22 = objc_opt_isKindOfClass();

    if (v22)
    {
      v23 = MEMORY[0x1E699B858];
      v19 = [(EMMessageListItemChange *)self displayDate];
      v20 = [v23 partiallyRedactedStringForString:v19];
    }

    else
    {
      v24 = [(EMMessageListItemChange *)self displayDate];
      objc_opt_class();
      v25 = objc_opt_isKindOfClass();

      if (v25)
      {
        v19 = [(EMMessageListItemChange *)self displayDate];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v26 = [v19 absoluteString];
        }

        else
        {
          v69 = MEMORY[0x1E699B858];
          v70 = [v19 absoluteString];
          v26 = [v69 fullyRedactedStringForString:v70];
        }

        goto LABEL_22;
      }

      v19 = [(EMMessageListItemChange *)self displayDate];
      v20 = [v19 description];
    }
  }

  v26 = v20;
LABEL_22:

  v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"displayDate: %@", v26];
  [v7 addObject:v27];

LABEL_23:
  v28 = [(EMMessageListItemChange *)self readLater];

  if (!v28)
  {
    goto LABEL_34;
  }

  if (v4)
  {
    v29 = [(EMMessageListItemChange *)self readLater];
    v30 = [v29 debugDescription];
  }

  else
  {
    v31 = [(EMMessageListItemChange *)self readLater];
    objc_opt_class();
    v32 = objc_opt_isKindOfClass();

    if (v32)
    {
      v33 = MEMORY[0x1E699B858];
      v29 = [(EMMessageListItemChange *)self readLater];
      v30 = [v33 partiallyRedactedStringForString:v29];
    }

    else
    {
      v34 = [(EMMessageListItemChange *)self readLater];
      objc_opt_class();
      v35 = objc_opt_isKindOfClass();

      if (v35)
      {
        v29 = [(EMMessageListItemChange *)self readLater];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v36 = [v29 absoluteString];
        }

        else
        {
          v71 = MEMORY[0x1E699B858];
          v72 = [v29 absoluteString];
          v36 = [v71 fullyRedactedStringForString:v72];
        }

        goto LABEL_33;
      }

      v29 = [(EMMessageListItemChange *)self readLater];
      v30 = [v29 description];
    }
  }

  v36 = v30;
LABEL_33:

  v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"readLater: %@", v36];
  [v7 addObject:v37];

LABEL_34:
  v38 = [(EMMessageListItemChange *)self sendLaterDate];

  if (!v38)
  {
    goto LABEL_45;
  }

  if (v4)
  {
    v39 = [(EMMessageListItemChange *)self sendLaterDate];
    v40 = [v39 debugDescription];
  }

  else
  {
    v41 = [(EMMessageListItemChange *)self sendLaterDate];
    objc_opt_class();
    v42 = objc_opt_isKindOfClass();

    if (v42)
    {
      v43 = MEMORY[0x1E699B858];
      v39 = [(EMMessageListItemChange *)self sendLaterDate];
      v40 = [v43 partiallyRedactedStringForString:v39];
    }

    else
    {
      v44 = [(EMMessageListItemChange *)self sendLaterDate];
      objc_opt_class();
      v45 = objc_opt_isKindOfClass();

      if (v45)
      {
        v39 = [(EMMessageListItemChange *)self sendLaterDate];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v46 = [v39 absoluteString];
        }

        else
        {
          v73 = MEMORY[0x1E699B858];
          v74 = [v39 absoluteString];
          v46 = [v73 fullyRedactedStringForString:v74];
        }

        goto LABEL_44;
      }

      v39 = [(EMMessageListItemChange *)self sendLaterDate];
      v40 = [v39 description];
    }
  }

  v46 = v40;
LABEL_44:

  v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"sendLaterDate: %@", v46];
  [v7 addObject:v47];

LABEL_45:
  v48 = [(EMMessageListItemChange *)self followUp];

  if (!v48)
  {
    goto LABEL_56;
  }

  if (v4)
  {
    v49 = [(EMMessageListItemChange *)self followUp];
    v50 = [v49 debugDescription];
  }

  else
  {
    v51 = [(EMMessageListItemChange *)self followUp];
    objc_opt_class();
    v52 = objc_opt_isKindOfClass();

    if (v52)
    {
      v53 = MEMORY[0x1E699B858];
      v49 = [(EMMessageListItemChange *)self followUp];
      v50 = [v53 partiallyRedactedStringForString:v49];
    }

    else
    {
      v54 = [(EMMessageListItemChange *)self followUp];
      objc_opt_class();
      v55 = objc_opt_isKindOfClass();

      if (v55)
      {
        v49 = [(EMMessageListItemChange *)self followUp];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v56 = [v49 absoluteString];
        }

        else
        {
          v75 = MEMORY[0x1E699B858];
          v76 = [v49 absoluteString];
          v56 = [v75 fullyRedactedStringForString:v76];
        }

        goto LABEL_55;
      }

      v49 = [(EMMessageListItemChange *)self followUp];
      v50 = [v49 description];
    }
  }

  v56 = v50;
LABEL_55:

  v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"followUp: %@", v56];
  [v7 addObject:v57];

LABEL_56:
  v58 = [(EMMessageListItemChange *)self subject];

  if (!v58)
  {
    goto LABEL_79;
  }

  if (!v5)
  {
    [v7 addObject:@"subject"];
    goto LABEL_79;
  }

  if (v4)
  {
    v59 = [(EMMessageListItemChange *)self subject];
    v60 = [v59 debugDescription];
  }

  else
  {
    v61 = [(EMMessageListItemChange *)self subject];
    objc_opt_class();
    v62 = objc_opt_isKindOfClass();

    if (v62)
    {
      v63 = MEMORY[0x1E699B858];
      v59 = [(EMMessageListItemChange *)self subject];
      v60 = [v63 partiallyRedactedStringForString:v59];
    }

    else
    {
      v64 = [(EMMessageListItemChange *)self subject];
      objc_opt_class();
      v65 = objc_opt_isKindOfClass();

      if (v65)
      {
        v59 = [(EMMessageListItemChange *)self subject];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v66 = [v59 absoluteString];
        }

        else
        {
          v142 = MEMORY[0x1E699B858];
          v143 = [v59 absoluteString];
          v66 = [v142 fullyRedactedStringForString:v143];
        }

        goto LABEL_78;
      }

      v59 = [(EMMessageListItemChange *)self subject];
      v60 = [v59 description];
    }
  }

  v66 = v60;
LABEL_78:

  v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"subject: %@", v66];
  [v7 addObject:v77];

LABEL_79:
  v78 = [(EMMessageListItemChange *)self businessID];

  if (!v78)
  {
    goto LABEL_90;
  }

  if (v4)
  {
    v79 = [(EMMessageListItemChange *)self businessID];
    v80 = [v79 debugDescription];
  }

  else
  {
    v81 = [(EMMessageListItemChange *)self businessID];
    objc_opt_class();
    v82 = objc_opt_isKindOfClass();

    if (v82)
    {
      v83 = MEMORY[0x1E699B858];
      v79 = [(EMMessageListItemChange *)self businessID];
      v80 = [v83 partiallyRedactedStringForString:v79];
    }

    else
    {
      v84 = [(EMMessageListItemChange *)self businessID];
      objc_opt_class();
      v85 = objc_opt_isKindOfClass();

      if (v85)
      {
        v79 = [(EMMessageListItemChange *)self businessID];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v86 = [v79 absoluteString];
        }

        else
        {
          v127 = MEMORY[0x1E699B858];
          v128 = [v79 absoluteString];
          v86 = [v127 fullyRedactedStringForString:v128];
        }

        goto LABEL_89;
      }

      v79 = [(EMMessageListItemChange *)self businessID];
      v80 = [v79 description];
    }
  }

  v86 = v80;
LABEL_89:

  v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"businessID: %@", v86];
  [v7 addObject:v87];

LABEL_90:
  v88 = [(EMMessageListItemChange *)self businessLogoID];

  if (!v88)
  {
    goto LABEL_101;
  }

  if (v4)
  {
    v89 = [(EMMessageListItemChange *)self businessLogoID];
    v90 = [v89 debugDescription];
  }

  else
  {
    v91 = [(EMMessageListItemChange *)self businessLogoID];
    objc_opt_class();
    v92 = objc_opt_isKindOfClass();

    if (v92)
    {
      v93 = MEMORY[0x1E699B858];
      v89 = [(EMMessageListItemChange *)self businessLogoID];
      v90 = [v93 partiallyRedactedStringForString:v89];
    }

    else
    {
      v94 = [(EMMessageListItemChange *)self businessLogoID];
      objc_opt_class();
      v95 = objc_opt_isKindOfClass();

      if (v95)
      {
        v89 = [(EMMessageListItemChange *)self businessLogoID];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v96 = [v89 absoluteString];
        }

        else
        {
          v129 = MEMORY[0x1E699B858];
          v130 = [v89 absoluteString];
          v96 = [v129 fullyRedactedStringForString:v130];
        }

        goto LABEL_100;
      }

      v89 = [(EMMessageListItemChange *)self businessLogoID];
      v90 = [v89 description];
    }
  }

  v96 = v90;
LABEL_100:

  v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"businessLogoID: %@", v96];
  [v7 addObject:v97];

LABEL_101:
  v98 = [(EMMessageListItemChange *)self brandIndicatorLocation];

  if (!v98)
  {
    goto LABEL_112;
  }

  if (v4)
  {
    v99 = [(EMMessageListItemChange *)self brandIndicatorLocation];
    v100 = [v99 debugDescription];
  }

  else
  {
    v101 = [(EMMessageListItemChange *)self brandIndicatorLocation];
    objc_opt_class();
    v102 = objc_opt_isKindOfClass();

    if (v102)
    {
      v103 = MEMORY[0x1E699B858];
      v99 = [(EMMessageListItemChange *)self brandIndicatorLocation];
      v100 = [v103 partiallyRedactedStringForString:v99];
    }

    else
    {
      v104 = [(EMMessageListItemChange *)self brandIndicatorLocation];
      objc_opt_class();
      v105 = objc_opt_isKindOfClass();

      if (v105)
      {
        v99 = [(EMMessageListItemChange *)self brandIndicatorLocation];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v106 = [v99 absoluteString];
        }

        else
        {
          v131 = MEMORY[0x1E699B858];
          v132 = [v99 absoluteString];
          v106 = [v131 fullyRedactedStringForString:v132];
        }

        goto LABEL_111;
      }

      v99 = [(EMMessageListItemChange *)self brandIndicatorLocation];
      v100 = [v99 description];
    }
  }

  v106 = v100;
LABEL_111:

  v107 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"brandIndicatorLocation: %@", v106];
  [v7 addObject:v107];

LABEL_112:
  v108 = [(EMMessageListItemChange *)self category];

  if (!v108)
  {
    goto LABEL_123;
  }

  if (v4)
  {
    v109 = [(EMMessageListItemChange *)self category];
    v110 = [v109 debugDescription];
  }

  else
  {
    v111 = [(EMMessageListItemChange *)self category];
    objc_opt_class();
    v112 = objc_opt_isKindOfClass();

    if (v112)
    {
      v113 = MEMORY[0x1E699B858];
      v109 = [(EMMessageListItemChange *)self category];
      v110 = [v113 partiallyRedactedStringForString:v109];
    }

    else
    {
      v114 = [(EMMessageListItemChange *)self category];
      objc_opt_class();
      v115 = objc_opt_isKindOfClass();

      if (v115)
      {
        v109 = [(EMMessageListItemChange *)self category];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v116 = [v109 absoluteString];
        }

        else
        {
          v133 = MEMORY[0x1E699B858];
          v134 = [v109 absoluteString];
          v116 = [v133 fullyRedactedStringForString:v134];
        }

        goto LABEL_122;
      }

      v109 = [(EMMessageListItemChange *)self category];
      v110 = [v109 description];
    }
  }

  v116 = v110;
LABEL_122:

  v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"category: %@", v116];
  [v7 addObject:v117];

LABEL_123:
  v118 = [(EMMessageListItemChange *)self summary];

  if (v118)
  {
    if (v5)
    {
      if (v4)
      {
        v119 = [(EMMessageListItemChange *)self summary];
        v120 = [v119 debugDescription];
      }

      else
      {
        v121 = [(EMMessageListItemChange *)self summary];
        objc_opt_class();
        v122 = objc_opt_isKindOfClass();

        if (v122)
        {
          v123 = MEMORY[0x1E699B858];
          v119 = [(EMMessageListItemChange *)self summary];
          v120 = [v123 partiallyRedactedStringForString:v119];
        }

        else
        {
          v124 = [(EMMessageListItemChange *)self summary];
          objc_opt_class();
          v125 = objc_opt_isKindOfClass();

          if (v125)
          {
            v119 = [(EMMessageListItemChange *)self summary];
            if ([EMInternalPreferences preferenceEnabled:10])
            {
              v126 = [v119 absoluteString];
            }

            else
            {
              v144 = MEMORY[0x1E699B858];
              v145 = [v119 absoluteString];
              v126 = [v144 fullyRedactedStringForString:v145];
            }

            goto LABEL_143;
          }

          v119 = [(EMMessageListItemChange *)self summary];
          v120 = [v119 description];
        }
      }

      v126 = v120;
LABEL_143:

      v135 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"summary: %@", v126];
      [v7 addObject:v135];

      goto LABEL_144;
    }

    [v7 addObject:@"summary"];
  }

LABEL_144:
  if (_os_feature_enabled_impl())
  {
    if (EMIsGreymatterSupported())
    {
      v136 = [(EMMessageListItemChange *)self generatedSummary];

      if (v136)
      {
        if (!v5)
        {
          [v7 addObject:@"generatedSummary"];
          goto LABEL_163;
        }

        if (v4)
        {
          v137 = [(EMMessageListItemChange *)self generatedSummary];
          v138 = [v137 debugDescription];
        }

        else
        {
          v139 = [(EMMessageListItemChange *)self generatedSummary];
          objc_opt_class();
          v140 = objc_opt_isKindOfClass();

          if (v140)
          {
            v141 = MEMORY[0x1E699B858];
            v137 = [(EMMessageListItemChange *)self generatedSummary];
            v138 = [v141 partiallyRedactedStringForString:v137];
          }

          else
          {
            v146 = [(EMMessageListItemChange *)self generatedSummary];
            objc_opt_class();
            v147 = objc_opt_isKindOfClass();

            if (v147)
            {
              v137 = [(EMMessageListItemChange *)self generatedSummary];
              if ([EMInternalPreferences preferenceEnabled:10])
              {
                v148 = [v137 absoluteString];
              }

              else
              {
                v368 = MEMORY[0x1E699B858];
                v369 = [v137 absoluteString];
                v148 = [v368 fullyRedactedStringForString:v369];
              }

              goto LABEL_162;
            }

            v137 = [(EMMessageListItemChange *)self generatedSummary];
            v138 = [v137 description];
          }
        }

        v148 = v138;
LABEL_162:

        v149 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"generatedSummary: %@", v148];
        [v7 addObject:v149];
      }
    }
  }

LABEL_163:
  v150 = [(EMMessageListItemChange *)self senderList];

  if (!v150)
  {
    goto LABEL_176;
  }

  if (!v5)
  {
    [v7 addObject:@"senderList"];
    goto LABEL_176;
  }

  if (v4)
  {
    v151 = [(EMMessageListItemChange *)self senderList];
    v152 = [v151 debugDescription];
  }

  else
  {
    v153 = [(EMMessageListItemChange *)self senderList];
    objc_opt_class();
    v154 = objc_opt_isKindOfClass();

    if (v154)
    {
      v155 = MEMORY[0x1E699B858];
      v151 = [(EMMessageListItemChange *)self senderList];
      v152 = [v155 partiallyRedactedStringForString:v151];
    }

    else
    {
      v156 = [(EMMessageListItemChange *)self senderList];
      objc_opt_class();
      v157 = objc_opt_isKindOfClass();

      if (v157)
      {
        v151 = [(EMMessageListItemChange *)self senderList];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v158 = [v151 absoluteString];
        }

        else
        {
          v358 = MEMORY[0x1E699B858];
          v359 = [v151 absoluteString];
          v158 = [v358 fullyRedactedStringForString:v359];
        }

        goto LABEL_175;
      }

      v151 = [(EMMessageListItemChange *)self senderList];
      v152 = [v151 description];
    }
  }

  v158 = v152;
LABEL_175:

  v159 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"senderList: %@", v158];
  [v7 addObject:v159];

LABEL_176:
  v160 = [(EMMessageListItemChange *)self toList];

  if (!v160)
  {
    goto LABEL_189;
  }

  if (!v5)
  {
    [v7 addObject:@"toList"];
    goto LABEL_189;
  }

  if (v4)
  {
    v161 = [(EMMessageListItemChange *)self toList];
    v162 = [v161 debugDescription];
  }

  else
  {
    v163 = [(EMMessageListItemChange *)self toList];
    objc_opt_class();
    v164 = objc_opt_isKindOfClass();

    if (v164)
    {
      v165 = MEMORY[0x1E699B858];
      v161 = [(EMMessageListItemChange *)self toList];
      v162 = [v165 partiallyRedactedStringForString:v161];
    }

    else
    {
      v166 = [(EMMessageListItemChange *)self toList];
      objc_opt_class();
      v167 = objc_opt_isKindOfClass();

      if (v167)
      {
        v161 = [(EMMessageListItemChange *)self toList];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v168 = [v161 absoluteString];
        }

        else
        {
          v360 = MEMORY[0x1E699B858];
          v361 = [v161 absoluteString];
          v168 = [v360 fullyRedactedStringForString:v361];
        }

        goto LABEL_188;
      }

      v161 = [(EMMessageListItemChange *)self toList];
      v162 = [v161 description];
    }
  }

  v168 = v162;
LABEL_188:

  v169 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"toList: %@", v168];
  [v7 addObject:v169];

LABEL_189:
  v170 = [(EMMessageListItemChange *)self ccList];

  if (!v170)
  {
    goto LABEL_202;
  }

  if (!v5)
  {
    [v7 addObject:@"ccList"];
    goto LABEL_202;
  }

  if (v4)
  {
    v171 = [(EMMessageListItemChange *)self ccList];
    v172 = [v171 debugDescription];
  }

  else
  {
    v173 = [(EMMessageListItemChange *)self ccList];
    objc_opt_class();
    v174 = objc_opt_isKindOfClass();

    if (v174)
    {
      v175 = MEMORY[0x1E699B858];
      v171 = [(EMMessageListItemChange *)self ccList];
      v172 = [v175 partiallyRedactedStringForString:v171];
    }

    else
    {
      v176 = [(EMMessageListItemChange *)self ccList];
      objc_opt_class();
      v177 = objc_opt_isKindOfClass();

      if (v177)
      {
        v171 = [(EMMessageListItemChange *)self ccList];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v178 = [v171 absoluteString];
        }

        else
        {
          v362 = MEMORY[0x1E699B858];
          v363 = [v171 absoluteString];
          v178 = [v362 fullyRedactedStringForString:v363];
        }

        goto LABEL_201;
      }

      v171 = [(EMMessageListItemChange *)self ccList];
      v172 = [v171 description];
    }
  }

  v178 = v172;
LABEL_201:

  v179 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ccList: %@", v178];
  [v7 addObject:v179];

LABEL_202:
  v180 = [(EMMessageListItemChange *)self flags];

  if (!v180)
  {
    goto LABEL_213;
  }

  if (v4)
  {
    v181 = [(EMMessageListItemChange *)self flags];
    v182 = [v181 debugDescription];
  }

  else
  {
    v183 = [(EMMessageListItemChange *)self flags];
    objc_opt_class();
    v184 = objc_opt_isKindOfClass();

    if (v184)
    {
      v185 = MEMORY[0x1E699B858];
      v181 = [(EMMessageListItemChange *)self flags];
      v182 = [v185 partiallyRedactedStringForString:v181];
    }

    else
    {
      v186 = [(EMMessageListItemChange *)self flags];
      objc_opt_class();
      v187 = objc_opt_isKindOfClass();

      if (v187)
      {
        v181 = [(EMMessageListItemChange *)self flags];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v188 = [v181 absoluteString];
        }

        else
        {
          v309 = MEMORY[0x1E699B858];
          v310 = [v181 absoluteString];
          v188 = [v309 fullyRedactedStringForString:v310];
        }

        goto LABEL_212;
      }

      v181 = [(EMMessageListItemChange *)self flags];
      v182 = [v181 description];
    }
  }

  v188 = v182;
LABEL_212:

  v189 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"flags: %@", v188];
  [v7 addObject:v189];

LABEL_213:
  v190 = [(EMMessageListItemChange *)self hasUnflagged];

  if (!v190)
  {
    goto LABEL_224;
  }

  if (v4)
  {
    v191 = [(EMMessageListItemChange *)self hasUnflagged];
    v192 = [v191 debugDescription];
  }

  else
  {
    v193 = [(EMMessageListItemChange *)self hasUnflagged];
    objc_opt_class();
    v194 = objc_opt_isKindOfClass();

    if (v194)
    {
      v195 = MEMORY[0x1E699B858];
      v191 = [(EMMessageListItemChange *)self hasUnflagged];
      v192 = [v195 partiallyRedactedStringForString:v191];
    }

    else
    {
      v196 = [(EMMessageListItemChange *)self hasUnflagged];
      objc_opt_class();
      v197 = objc_opt_isKindOfClass();

      if (v197)
      {
        v191 = [(EMMessageListItemChange *)self hasUnflagged];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v198 = [v191 absoluteString];
        }

        else
        {
          v311 = MEMORY[0x1E699B858];
          v312 = [v191 absoluteString];
          v198 = [v311 fullyRedactedStringForString:v312];
        }

        goto LABEL_223;
      }

      v191 = [(EMMessageListItemChange *)self hasUnflagged];
      v192 = [v191 description];
    }
  }

  v198 = v192;
LABEL_223:

  v199 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"hasUnflagged: %@", v198];
  [v7 addObject:v199];

LABEL_224:
  v200 = [(EMMessageListItemChange *)self flagColors];

  if (!v200)
  {
    goto LABEL_235;
  }

  if (v4)
  {
    v201 = [(EMMessageListItemChange *)self flagColors];
    v202 = [v201 debugDescription];
  }

  else
  {
    v203 = [(EMMessageListItemChange *)self flagColors];
    objc_opt_class();
    v204 = objc_opt_isKindOfClass();

    if (v204)
    {
      v205 = MEMORY[0x1E699B858];
      v201 = [(EMMessageListItemChange *)self flagColors];
      v202 = [v205 partiallyRedactedStringForString:v201];
    }

    else
    {
      v206 = [(EMMessageListItemChange *)self flagColors];
      objc_opt_class();
      v207 = objc_opt_isKindOfClass();

      if (v207)
      {
        v201 = [(EMMessageListItemChange *)self flagColors];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v208 = [v201 absoluteString];
        }

        else
        {
          v313 = MEMORY[0x1E699B858];
          v314 = [v201 absoluteString];
          v208 = [v313 fullyRedactedStringForString:v314];
        }

        goto LABEL_234;
      }

      v201 = [(EMMessageListItemChange *)self flagColors];
      v202 = [v201 description];
    }
  }

  v208 = v202;
LABEL_234:

  v209 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"flagColors: %@", v208];
  [v7 addObject:v209];

LABEL_235:
  v210 = [(EMMessageListItemChange *)self isVIP];

  if (!v210)
  {
    goto LABEL_246;
  }

  if (v4)
  {
    v211 = [(EMMessageListItemChange *)self isVIP];
    v212 = [v211 debugDescription];
  }

  else
  {
    v213 = [(EMMessageListItemChange *)self isVIP];
    objc_opt_class();
    v214 = objc_opt_isKindOfClass();

    if (v214)
    {
      v215 = MEMORY[0x1E699B858];
      v211 = [(EMMessageListItemChange *)self isVIP];
      v212 = [v215 partiallyRedactedStringForString:v211];
    }

    else
    {
      v216 = [(EMMessageListItemChange *)self isVIP];
      objc_opt_class();
      v217 = objc_opt_isKindOfClass();

      if (v217)
      {
        v211 = [(EMMessageListItemChange *)self isVIP];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v218 = [v211 absoluteString];
        }

        else
        {
          v315 = MEMORY[0x1E699B858];
          v316 = [v211 absoluteString];
          v218 = [v315 fullyRedactedStringForString:v316];
        }

        goto LABEL_245;
      }

      v211 = [(EMMessageListItemChange *)self isVIP];
      v212 = [v211 description];
    }
  }

  v218 = v212;
LABEL_245:

  v219 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"isVIP: %@", v218];
  [v7 addObject:v219];

LABEL_246:
  v220 = [(EMMessageListItemChange *)self isBlocked];

  if (!v220)
  {
    goto LABEL_257;
  }

  if (v4)
  {
    v221 = [(EMMessageListItemChange *)self isBlocked];
    v222 = [v221 debugDescription];
  }

  else
  {
    v223 = [(EMMessageListItemChange *)self isBlocked];
    objc_opt_class();
    v224 = objc_opt_isKindOfClass();

    if (v224)
    {
      v225 = MEMORY[0x1E699B858];
      v221 = [(EMMessageListItemChange *)self isBlocked];
      v222 = [v225 partiallyRedactedStringForString:v221];
    }

    else
    {
      v226 = [(EMMessageListItemChange *)self isBlocked];
      objc_opt_class();
      v227 = objc_opt_isKindOfClass();

      if (v227)
      {
        v221 = [(EMMessageListItemChange *)self isBlocked];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v228 = [v221 absoluteString];
        }

        else
        {
          v317 = MEMORY[0x1E699B858];
          v318 = [v221 absoluteString];
          v228 = [v317 fullyRedactedStringForString:v318];
        }

        goto LABEL_256;
      }

      v221 = [(EMMessageListItemChange *)self isBlocked];
      v222 = [v221 description];
    }
  }

  v228 = v222;
LABEL_256:

  v229 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"isBlocked: %@", v228];
  [v7 addObject:v229];

LABEL_257:
  v230 = [(EMMessageListItemChange *)self searchResultType];

  if (!v230)
  {
    goto LABEL_268;
  }

  if (v4)
  {
    v231 = [(EMMessageListItemChange *)self searchResultType];
    v232 = [v231 debugDescription];
  }

  else
  {
    v233 = [(EMMessageListItemChange *)self searchResultType];
    objc_opt_class();
    v234 = objc_opt_isKindOfClass();

    if (v234)
    {
      v235 = MEMORY[0x1E699B858];
      v231 = [(EMMessageListItemChange *)self searchResultType];
      v232 = [v235 partiallyRedactedStringForString:v231];
    }

    else
    {
      v236 = [(EMMessageListItemChange *)self searchResultType];
      objc_opt_class();
      v237 = objc_opt_isKindOfClass();

      if (v237)
      {
        v231 = [(EMMessageListItemChange *)self searchResultType];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v238 = [v231 absoluteString];
        }

        else
        {
          v319 = MEMORY[0x1E699B858];
          v320 = [v231 absoluteString];
          v238 = [v319 fullyRedactedStringForString:v320];
        }

        goto LABEL_267;
      }

      v231 = [(EMMessageListItemChange *)self searchResultType];
      v232 = [v231 description];
    }
  }

  v238 = v232;
LABEL_267:

  v239 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"searchResultType: %@", v238];
  [v7 addObject:v239];

LABEL_268:
  v240 = [(EMMessageListItemChange *)self searchRelevanceScore];

  if (!v240)
  {
    goto LABEL_279;
  }

  if (v4)
  {
    v241 = [(EMMessageListItemChange *)self searchRelevanceScore];
    v242 = [v241 debugDescription];
  }

  else
  {
    v243 = [(EMMessageListItemChange *)self searchRelevanceScore];
    objc_opt_class();
    v244 = objc_opt_isKindOfClass();

    if (v244)
    {
      v245 = MEMORY[0x1E699B858];
      v241 = [(EMMessageListItemChange *)self searchRelevanceScore];
      v242 = [v245 partiallyRedactedStringForString:v241];
    }

    else
    {
      v246 = [(EMMessageListItemChange *)self searchRelevanceScore];
      objc_opt_class();
      v247 = objc_opt_isKindOfClass();

      if (v247)
      {
        v241 = [(EMMessageListItemChange *)self searchRelevanceScore];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v248 = [v241 absoluteString];
        }

        else
        {
          v321 = MEMORY[0x1E699B858];
          v322 = [v241 absoluteString];
          v248 = [v321 fullyRedactedStringForString:v322];
        }

        goto LABEL_278;
      }

      v241 = [(EMMessageListItemChange *)self searchRelevanceScore];
      v242 = [v241 description];
    }
  }

  v248 = v242;
LABEL_278:

  v249 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"searchRelevanceScore: %@", v248];
  [v7 addObject:v249];

LABEL_279:
  v250 = [(EMMessageListItemChange *)self unsubscribeType];

  if (!v250)
  {
    goto LABEL_290;
  }

  if (v4)
  {
    v251 = [(EMMessageListItemChange *)self unsubscribeType];
    v252 = [v251 debugDescription];
  }

  else
  {
    v253 = [(EMMessageListItemChange *)self unsubscribeType];
    objc_opt_class();
    v254 = objc_opt_isKindOfClass();

    if (v254)
    {
      v255 = MEMORY[0x1E699B858];
      v251 = [(EMMessageListItemChange *)self unsubscribeType];
      v252 = [v255 partiallyRedactedStringForString:v251];
    }

    else
    {
      v256 = [(EMMessageListItemChange *)self unsubscribeType];
      objc_opt_class();
      v257 = objc_opt_isKindOfClass();

      if (v257)
      {
        v251 = [(EMMessageListItemChange *)self unsubscribeType];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v258 = [v251 absoluteString];
        }

        else
        {
          v323 = MEMORY[0x1E699B858];
          v324 = [v251 absoluteString];
          v258 = [v323 fullyRedactedStringForString:v324];
        }

        goto LABEL_289;
      }

      v251 = [(EMMessageListItemChange *)self unsubscribeType];
      v252 = [v251 description];
    }
  }

  v258 = v252;
LABEL_289:

  v259 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unsubscribeType: %@", v258];
  [v7 addObject:v259];

LABEL_290:
  v260 = [(EMMessageListItemChange *)self hasAttachments];

  if (!v260)
  {
    goto LABEL_301;
  }

  if (v4)
  {
    v261 = [(EMMessageListItemChange *)self hasAttachments];
    v262 = [v261 debugDescription];
  }

  else
  {
    v263 = [(EMMessageListItemChange *)self hasAttachments];
    objc_opt_class();
    v264 = objc_opt_isKindOfClass();

    if (v264)
    {
      v265 = MEMORY[0x1E699B858];
      v261 = [(EMMessageListItemChange *)self hasAttachments];
      v262 = [v265 partiallyRedactedStringForString:v261];
    }

    else
    {
      v266 = [(EMMessageListItemChange *)self hasAttachments];
      objc_opt_class();
      v267 = objc_opt_isKindOfClass();

      if (v267)
      {
        v261 = [(EMMessageListItemChange *)self hasAttachments];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v268 = [v261 absoluteString];
        }

        else
        {
          v325 = MEMORY[0x1E699B858];
          v326 = [v261 absoluteString];
          v268 = [v325 fullyRedactedStringForString:v326];
        }

        goto LABEL_300;
      }

      v261 = [(EMMessageListItemChange *)self hasAttachments];
      v262 = [v261 description];
    }
  }

  v268 = v262;
LABEL_300:

  v269 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"hasAttachments: %@", v268];
  [v7 addObject:v269];

LABEL_301:
  v270 = [(EMMessageListItemChange *)self conversationNotificationLevel];

  if (!v270)
  {
    goto LABEL_312;
  }

  if (v4)
  {
    v271 = [(EMMessageListItemChange *)self conversationNotificationLevel];
    v272 = [v271 debugDescription];
  }

  else
  {
    v273 = [(EMMessageListItemChange *)self conversationNotificationLevel];
    objc_opt_class();
    v274 = objc_opt_isKindOfClass();

    if (v274)
    {
      v275 = MEMORY[0x1E699B858];
      v271 = [(EMMessageListItemChange *)self conversationNotificationLevel];
      v272 = [v275 partiallyRedactedStringForString:v271];
    }

    else
    {
      v276 = [(EMMessageListItemChange *)self conversationNotificationLevel];
      objc_opt_class();
      v277 = objc_opt_isKindOfClass();

      if (v277)
      {
        v271 = [(EMMessageListItemChange *)self conversationNotificationLevel];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v278 = [v271 absoluteString];
        }

        else
        {
          v327 = MEMORY[0x1E699B858];
          v328 = [v271 absoluteString];
          v278 = [v327 fullyRedactedStringForString:v328];
        }

        goto LABEL_311;
      }

      v271 = [(EMMessageListItemChange *)self conversationNotificationLevel];
      v272 = [v271 description];
    }
  }

  v278 = v272;
LABEL_311:

  v279 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"conversationNotificationLevel: %@", v278];
  [v7 addObject:v279];

LABEL_312:
  v280 = [(EMMessageListItemChange *)self count];

  if (!v280)
  {
    goto LABEL_323;
  }

  if (v4)
  {
    v281 = [(EMMessageListItemChange *)self count];
    v282 = [v281 debugDescription];
  }

  else
  {
    v283 = [(EMMessageListItemChange *)self count];
    objc_opt_class();
    v284 = objc_opt_isKindOfClass();

    if (v284)
    {
      v285 = MEMORY[0x1E699B858];
      v281 = [(EMMessageListItemChange *)self count];
      v282 = [v285 partiallyRedactedStringForString:v281];
    }

    else
    {
      v286 = [(EMMessageListItemChange *)self count];
      objc_opt_class();
      v287 = objc_opt_isKindOfClass();

      if (v287)
      {
        v281 = [(EMMessageListItemChange *)self count];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v288 = [v281 absoluteString];
        }

        else
        {
          v329 = MEMORY[0x1E699B858];
          v330 = [v281 absoluteString];
          v288 = [v329 fullyRedactedStringForString:v330];
        }

        goto LABEL_322;
      }

      v281 = [(EMMessageListItemChange *)self count];
      v282 = [v281 description];
    }
  }

  v288 = v282;
LABEL_322:

  v289 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"count: %@", v288];
  [v7 addObject:v289];

LABEL_323:
  v290 = [(EMMessageListItemChange *)self mailboxObjectIDs];

  if (!v290)
  {
    goto LABEL_334;
  }

  if (v4)
  {
    v291 = [(EMMessageListItemChange *)self mailboxObjectIDs];
    v292 = [v291 debugDescription];
  }

  else
  {
    v293 = [(EMMessageListItemChange *)self mailboxObjectIDs];
    objc_opt_class();
    v294 = objc_opt_isKindOfClass();

    if (v294)
    {
      v295 = MEMORY[0x1E699B858];
      v291 = [(EMMessageListItemChange *)self mailboxObjectIDs];
      v292 = [v295 partiallyRedactedStringForString:v291];
    }

    else
    {
      v296 = [(EMMessageListItemChange *)self mailboxObjectIDs];
      objc_opt_class();
      v297 = objc_opt_isKindOfClass();

      if (v297)
      {
        v291 = [(EMMessageListItemChange *)self mailboxObjectIDs];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v298 = [v291 absoluteString];
        }

        else
        {
          v331 = MEMORY[0x1E699B858];
          v332 = [v291 absoluteString];
          v298 = [v331 fullyRedactedStringForString:v332];
        }

        goto LABEL_333;
      }

      v291 = [(EMMessageListItemChange *)self mailboxObjectIDs];
      v292 = [v291 description];
    }
  }

  v298 = v292;
LABEL_333:

  v299 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"mailboxObjectIDs: %@", v298];
  [v7 addObject:v299];

LABEL_334:
  v300 = [(EMMessageListItemChange *)self mailboxes];

  if (!v300)
  {
    goto LABEL_371;
  }

  if (!v5)
  {
    [v7 addObject:@"mailboxes"];
    goto LABEL_371;
  }

  if (v4)
  {
    v301 = [(EMMessageListItemChange *)self mailboxes];
    v302 = [v301 debugDescription];
  }

  else
  {
    v303 = [(EMMessageListItemChange *)self mailboxes];
    objc_opt_class();
    v304 = objc_opt_isKindOfClass();

    if (v304)
    {
      v305 = MEMORY[0x1E699B858];
      v301 = [(EMMessageListItemChange *)self mailboxes];
      v302 = [v305 partiallyRedactedStringForString:v301];
    }

    else
    {
      v306 = [(EMMessageListItemChange *)self mailboxes];
      objc_opt_class();
      v307 = objc_opt_isKindOfClass();

      if (v307)
      {
        v301 = [(EMMessageListItemChange *)self mailboxes];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v308 = [v301 absoluteString];
        }

        else
        {
          v364 = MEMORY[0x1E699B858];
          v365 = [v301 absoluteString];
          v308 = [v364 fullyRedactedStringForString:v365];
        }

        goto LABEL_370;
      }

      v301 = [(EMMessageListItemChange *)self mailboxes];
      v302 = [v301 description];
    }
  }

  v308 = v302;
LABEL_370:

  v333 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"mailboxes: %@", v308];
  [v7 addObject:v333];

LABEL_371:
  v334 = [(EMMessageListItemChange *)self displayMessageItemID];

  if (!v334)
  {
    goto LABEL_382;
  }

  if (v4)
  {
    v335 = [(EMMessageListItemChange *)self displayMessageItemID];
    v336 = [v335 debugDescription];
  }

  else
  {
    v337 = [(EMMessageListItemChange *)self displayMessageItemID];
    objc_opt_class();
    v338 = objc_opt_isKindOfClass();

    if (v338)
    {
      v339 = MEMORY[0x1E699B858];
      v335 = [(EMMessageListItemChange *)self displayMessageItemID];
      v336 = [v339 partiallyRedactedStringForString:v335];
    }

    else
    {
      v340 = [(EMMessageListItemChange *)self displayMessageItemID];
      objc_opt_class();
      v341 = objc_opt_isKindOfClass();

      if (v341)
      {
        v335 = [(EMMessageListItemChange *)self displayMessageItemID];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          v342 = [v335 absoluteString];
        }

        else
        {
          v353 = MEMORY[0x1E699B858];
          v354 = [v335 absoluteString];
          v342 = [v353 fullyRedactedStringForString:v354];
        }

        goto LABEL_381;
      }

      v335 = [(EMMessageListItemChange *)self displayMessageItemID];
      v336 = [v335 description];
    }
  }

  v342 = v336;
LABEL_381:

  v343 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"displayMessageItemID: %@", v342];
  [v7 addObject:v343];

LABEL_382:
  v344 = [(EMMessageListItemChange *)self groupedSenderMessageListItems];

  if (v344)
  {
    if (v5)
    {
      if (v4)
      {
        v345 = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
        v346 = [v345 debugDescription];
      }

      else
      {
        v347 = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
        objc_opt_class();
        v348 = objc_opt_isKindOfClass();

        if (v348)
        {
          v349 = MEMORY[0x1E699B858];
          v345 = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
          v346 = [v349 partiallyRedactedStringForString:v345];
        }

        else
        {
          v350 = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
          objc_opt_class();
          v351 = objc_opt_isKindOfClass();

          if (v351)
          {
            v345 = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
            if ([EMInternalPreferences preferenceEnabled:10])
            {
              v352 = [v345 absoluteString];
            }

            else
            {
              v366 = MEMORY[0x1E699B858];
              v367 = [v345 absoluteString];
              v352 = [v366 fullyRedactedStringForString:v367];
            }

            goto LABEL_396;
          }

          v345 = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
          v346 = [v345 description];
        }
      }

      v352 = v346;
LABEL_396:

      v355 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"groupedSenderMessageListItems: %@", v352];
      [v7 addObject:v355];

      goto LABEL_397;
    }

    [v7 addObject:@"groupedSenderMessageListItems"];
  }

LABEL_397:
  v356 = v7;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
    goto LABEL_92;
  }

  if (([(EMMessageListItemChange *)v4 isMemberOfClass:objc_opt_class()]& 1) == 0)
  {
    v8 = 0;
    goto LABEL_92;
  }

  v5 = v4;
  v88 = v5;
  v6 = [(EMMessageListItemChange *)self date];
  v87 = v6;
  v86 = [(EMMessageListItemChange *)v5 date];
  v7 = EFObjectsAreEqual();
  v85 = v7;
  if (v7)
  {
    v78 = [(EMMessageListItemChange *)self readLater];
    v77 = [(EMMessageListItemChange *)v5 readLater];
    if (EFObjectsAreEqual())
    {
      v76 = [(EMMessageListItemChange *)self sendLaterDate];
      v75 = [(EMMessageListItemChange *)v5 sendLaterDate];
      if (EFObjectsAreEqual())
      {
        v74 = [(EMMessageListItemChange *)self followUp];
        v73 = [(EMMessageListItemChange *)v5 followUp];
        if (EFObjectsAreEqual())
        {
          v72 = [(EMMessageListItemChange *)self subject];
          v71 = [(EMMessageListItemChange *)v5 subject];
          if (EFObjectsAreEqual())
          {
            v70 = [(EMMessageListItemChange *)self summary];
            v69 = [(EMMessageListItemChange *)v5 summary];
            if (EFObjectsAreEqual())
            {
              v68 = [(EMMessageListItemChange *)self generatedSummary];
              v67 = [(EMMessageListItemChange *)v5 generatedSummary];
              if (EFObjectsAreEqual())
              {
                v66 = [(EMMessageListItemChange *)self senderList];
                v65 = [(EMMessageListItemChange *)v5 senderList];
                if (EFArraysAreEqual())
                {
                  v64 = [(EMMessageListItemChange *)self toList];
                  v63 = [(EMMessageListItemChange *)v5 toList];
                  if (EFArraysAreEqual())
                  {
                    v62 = [(EMMessageListItemChange *)self ccList];
                    v61 = [(EMMessageListItemChange *)v5 ccList];
                    if (EFArraysAreEqual())
                    {
                      v60 = [(EMMessageListItemChange *)self flags];
                      v59 = [(EMMessageListItemChange *)v5 flags];
                      if (EFObjectsAreEqual())
                      {
                        v58 = [(EMMessageListItemChange *)self hasUnflagged];
                        v57 = [(EMMessageListItemChange *)v5 hasUnflagged];
                        if (EFObjectsAreEqual())
                        {
                          v56 = [(EMMessageListItemChange *)self flagColors];
                          v55 = [(EMMessageListItemChange *)v5 flagColors];
                          if (EFObjectsAreEqual())
                          {
                            v54 = [(EMMessageListItemChange *)self isVIP];
                            v53 = [(EMMessageListItemChange *)v5 isVIP];
                            if (EFObjectsAreEqual())
                            {
                              v52 = [(EMMessageListItemChange *)self isBlocked];
                              v51 = [(EMMessageListItemChange *)v5 isBlocked];
                              if (EFObjectsAreEqual())
                              {
                                v50 = [(EMMessageListItemChange *)self searchResultType];
                                v49 = [(EMMessageListItemChange *)v5 searchResultType];
                                if (EFObjectsAreEqual())
                                {
                                  v48 = [(EMMessageListItemChange *)self searchRelevanceScore];
                                  v47 = [(EMMessageListItemChange *)v5 searchRelevanceScore];
                                  if (EFObjectsAreEqual())
                                  {
                                    v46 = [(EMMessageListItemChange *)self unsubscribeType];
                                    v45 = [(EMMessageListItemChange *)v5 unsubscribeType];
                                    if (EFObjectsAreEqual())
                                    {
                                      v44 = [(EMMessageListItemChange *)self hasAttachments];
                                      v43 = [(EMMessageListItemChange *)v5 hasAttachments];
                                      if (EFObjectsAreEqual())
                                      {
                                        v42 = [(EMMessageListItemChange *)self conversationNotificationLevel];
                                        v41 = [(EMMessageListItemChange *)v5 conversationNotificationLevel];
                                        if (EFObjectsAreEqual())
                                        {
                                          v40 = [(EMMessageListItemChange *)self count];
                                          v39 = [(EMMessageListItemChange *)v5 count];
                                          if (EFObjectsAreEqual())
                                          {
                                            v38 = [(EMMessageListItemChange *)self conversationID];
                                            v37 = [(EMMessageListItemChange *)v5 conversationID];
                                            if (EFObjectsAreEqual())
                                            {
                                              v36 = [(EMMessageListItemChange *)self mailboxObjectIDs];
                                              v35 = [(EMMessageListItemChange *)v5 mailboxObjectIDs];
                                              if (EFArraysAreEqual())
                                              {
                                                v34 = [(EMMessageListItemChange *)self mailboxes];
                                                v33 = [(EMMessageListItemChange *)v5 mailboxes];
                                                if (EFArraysAreEqual())
                                                {
                                                  v32 = [(EMMessageListItemChange *)self displayMessageItemID];
                                                  v31 = [(EMMessageListItemChange *)v5 displayMessageItemID];
                                                  if (EFObjectsAreEqual())
                                                  {
                                                    v30 = [(EMMessageListItemChange *)self businessID];
                                                    v29 = [(EMMessageListItemChange *)v5 businessID];
                                                    if (EFObjectsAreEqual())
                                                    {
                                                      v28 = [(EMMessageListItemChange *)self businessLogoID];
                                                      v27 = [(EMMessageListItemChange *)v5 businessLogoID];
                                                      if (EFObjectsAreEqual())
                                                      {
                                                        v26 = [(EMMessageListItemChange *)self brandIndicatorLocation];
                                                        v25 = [(EMMessageListItemChange *)self brandIndicatorLocation];
                                                        if (EFObjectsAreEqual())
                                                        {
                                                          v24 = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
                                                          v6 = [(EMMessageListItemChange *)v5 groupedSenderMessageListItems];
                                                          v8 = _groupedSenderMessageListItemsPropertiesAreEqual(v24, v6);
                                                          v9 = 1;
                                                        }

                                                        else
                                                        {
                                                          v9 = 0;
                                                          v8 = 0;
                                                        }

                                                        v84[3] = 0x100000001;
                                                        v84[2] = 0x100000001;
                                                        v84[1] = 0x100000001;
                                                        v84[0] = 0x100000001;
                                                        v10 = 1;
                                                        v11 = 1;
                                                        v83 = 0x100000001;
                                                        v82 = 0x100000001;
                                                        *&v81[8] = 1;
                                                        v80 = 0x100000001;
                                                        v79 = 0x100000001;
                                                        *v81 = 0x100000001;
                                                        v12 = 1;
                                                        v13 = 1;
                                                        v7 = 1;
                                                        v14 = 1;
                                                        v15 = 1;
                                                      }

                                                      else
                                                      {
                                                        v15 = 0;
                                                        v9 = 0;
                                                        v8 = 0;
                                                        v84[3] = 0x100000001;
                                                        v84[2] = 0x100000001;
                                                        v84[1] = 0x100000001;
                                                        v84[0] = 0x100000001;
                                                        v10 = 1;
                                                        v11 = 1;
                                                        v83 = 0x100000001;
                                                        v82 = 0x100000001;
                                                        *&v81[8] = 1;
                                                        v80 = 0x100000001;
                                                        v79 = 0x100000001;
                                                        *v81 = 0x100000001;
                                                        v12 = 1;
                                                        v13 = 1;
                                                        v7 = 1;
                                                        v14 = 1;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v14 = 0;
                                                      v15 = 0;
                                                      v9 = 0;
                                                      v8 = 0;
                                                      v84[3] = 0x100000001;
                                                      v84[2] = 0x100000001;
                                                      v84[1] = 0x100000001;
                                                      v84[0] = 0x100000001;
                                                      v10 = 1;
                                                      v11 = 1;
                                                      v83 = 0x100000001;
                                                      v82 = 0x100000001;
                                                      *&v81[8] = 1;
                                                      v80 = 0x100000001;
                                                      v79 = 0x100000001;
                                                      *v81 = 0x100000001;
                                                      v12 = 1;
                                                      v13 = 1;
                                                      v7 = 1;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v7 = 0;
                                                    v14 = 0;
                                                    v15 = 0;
                                                    v9 = 0;
                                                    v8 = 0;
                                                    v84[3] = 0x100000001;
                                                    v84[2] = 0x100000001;
                                                    v84[1] = 0x100000001;
                                                    v84[0] = 0x100000001;
                                                    v10 = 1;
                                                    v11 = 1;
                                                    v83 = 0x100000001;
                                                    v82 = 0x100000001;
                                                    *&v81[8] = 1;
                                                    v80 = 0x100000001;
                                                    v79 = 0x100000001;
                                                    *v81 = 0x100000001;
                                                    v12 = 1;
                                                    v13 = 1;
                                                  }
                                                }

                                                else
                                                {
                                                  v13 = 0;
                                                  v7 = 0;
                                                  v14 = 0;
                                                  v15 = 0;
                                                  v9 = 0;
                                                  v8 = 0;
                                                  v84[3] = 0x100000001;
                                                  v84[2] = 0x100000001;
                                                  v84[1] = 0x100000001;
                                                  v84[0] = 0x100000001;
                                                  v10 = 1;
                                                  v11 = 1;
                                                  v83 = 0x100000001;
                                                  v82 = 0x100000001;
                                                  *&v81[8] = 1;
                                                  v80 = 0x100000001;
                                                  v79 = 0x100000001;
                                                  *v81 = 0x100000001;
                                                  v12 = 1;
                                                }
                                              }

                                              else
                                              {
                                                v12 = 0;
                                                v13 = 0;
                                                v7 = 0;
                                                v14 = 0;
                                                v15 = 0;
                                                v9 = 0;
                                                v8 = 0;
                                                v84[3] = 0x100000001;
                                                v84[2] = 0x100000001;
                                                v84[1] = 0x100000001;
                                                v10 = 1;
                                                v11 = 1;
                                                v83 = 0x100000001;
                                                v82 = 0x100000001;
                                                *&v81[8] = 1;
                                                v80 = 0x100000001;
                                                v79 = 0x100000001;
                                                *v81 = 0x100000001;
                                                v84[0] = 0x100000001;
                                              }
                                            }

                                            else
                                            {
                                              v12 = 0;
                                              v13 = 0;
                                              v7 = 0;
                                              v14 = 0;
                                              v15 = 0;
                                              v9 = 0;
                                              v8 = 0;
                                              v84[3] = 0x100000001;
                                              v84[2] = 0x100000001;
                                              v84[1] = 0x100000001;
                                              v84[0] = 0x100000000;
                                              v10 = 1;
                                              v11 = 1;
                                              v82 = 0x100000001;
                                              *&v81[8] = 1;
                                              v80 = 0x100000001;
                                              v79 = 0x100000001;
                                              *v81 = 0x100000001;
                                              v83 = 0x100000001;
                                            }
                                          }

                                          else
                                          {
                                            v12 = 0;
                                            v13 = 0;
                                            v7 = 0;
                                            v14 = 0;
                                            v15 = 0;
                                            v9 = 0;
                                            v8 = 0;
                                            v84[3] = 0x100000001;
                                            v84[2] = 0x100000001;
                                            v84[1] = 0x100000001;
                                            v84[0] = 0x100000000;
                                            v10 = 1;
                                            v11 = 1;
                                            v83 = 0x100000000;
                                            *&v81[8] = 1;
                                            v80 = 0x100000001;
                                            v79 = 0x100000001;
                                            *v81 = 0x100000001;
                                            v82 = 0x100000001;
                                          }
                                        }

                                        else
                                        {
                                          v82 = 0x100000000;
                                          v12 = 0;
                                          v13 = 0;
                                          v7 = 0;
                                          v14 = 0;
                                          v15 = 0;
                                          v9 = 0;
                                          v8 = 0;
                                          v84[3] = 0x100000001;
                                          v84[2] = 0x100000001;
                                          v84[1] = 0x100000001;
                                          v84[0] = 0x100000000;
                                          v10 = 1;
                                          v11 = 1;
                                          v83 = 0x100000000;
                                          *&v81[8] = 1;
                                          v80 = 0x100000001;
                                          v79 = 0x100000001;
                                          *v81 = 0x100000001;
                                        }
                                      }

                                      else
                                      {
                                        v82 = 0x100000000;
                                        v12 = 0;
                                        v13 = 0;
                                        v7 = 0;
                                        v14 = 0;
                                        v15 = 0;
                                        v9 = 0;
                                        v8 = 0;
                                        v84[3] = 0x100000001;
                                        v84[2] = 0x100000001;
                                        v84[1] = 0x100000001;
                                        v84[0] = 0x100000000;
                                        v10 = 1;
                                        v11 = 1;
                                        v83 = 0x100000000;
                                        *&v81[8] = 1;
                                        v80 = 0x100000001;
                                        v79 = 0x100000001;
                                        *v81 = 1;
                                      }
                                    }

                                    else
                                    {
                                      *v81 = 0;
                                      v82 = 0x100000000;
                                      v12 = 0;
                                      v13 = 0;
                                      v7 = 0;
                                      v14 = 0;
                                      v15 = 0;
                                      v9 = 0;
                                      v8 = 0;
                                      v84[3] = 0x100000001;
                                      v84[2] = 0x100000001;
                                      v84[1] = 0x100000001;
                                      v84[0] = 0x100000000;
                                      v10 = 1;
                                      v11 = 1;
                                      v83 = 0x100000000;
                                      *&v81[8] = 1;
                                      v79 = 0x100000001;
                                      v80 = 0x100000001;
                                    }
                                  }

                                  else
                                  {
                                    v80 = 0x100000000;
                                    *v81 = 0;
                                    v82 = 0x100000000;
                                    v12 = 0;
                                    v13 = 0;
                                    v7 = 0;
                                    v14 = 0;
                                    v15 = 0;
                                    v9 = 0;
                                    v8 = 0;
                                    v84[3] = 0x100000001;
                                    v84[2] = 0x100000001;
                                    v84[1] = 0x100000001;
                                    v84[0] = 0x100000000;
                                    v10 = 1;
                                    v11 = 1;
                                    v83 = 0x100000000;
                                    *&v81[8] = 1;
                                    v79 = 0x100000001;
                                  }
                                }

                                else
                                {
                                  v79 = 0x100000000;
                                  v80 = 0x100000000;
                                  *v81 = 0;
                                  v82 = 0x100000000;
                                  v12 = 0;
                                  v13 = 0;
                                  v7 = 0;
                                  v14 = 0;
                                  v15 = 0;
                                  v9 = 0;
                                  v8 = 0;
                                  v84[3] = 0x100000001;
                                  v84[2] = 0x100000001;
                                  v84[1] = 0x100000001;
                                  v84[0] = 0x100000000;
                                  v10 = 1;
                                  v11 = 1;
                                  v83 = 0x100000000;
                                  *&v81[8] = 1;
                                }
                              }

                              else
                              {
                                v79 = 0;
                                v80 = 0x100000000;
                                *v81 = 0;
                                v82 = 0x100000000;
                                v12 = 0;
                                v13 = 0;
                                v7 = 0;
                                v14 = 0;
                                v15 = 0;
                                v9 = 0;
                                v8 = 0;
                                v84[3] = 0x100000001;
                                v84[2] = 0x100000001;
                                v84[1] = 0x100000001;
                                v84[0] = 0x100000000;
                                v10 = 1;
                                v11 = 1;
                                v83 = 0x100000000;
                                *&v81[8] = 1;
                              }
                            }

                            else
                            {
                              v79 = 0;
                              v80 = 0;
                              *v81 = 0;
                              v82 = 0x100000000;
                              v12 = 0;
                              v13 = 0;
                              v7 = 0;
                              v14 = 0;
                              v15 = 0;
                              v9 = 0;
                              v8 = 0;
                              v84[3] = 0x100000001;
                              v84[2] = 0x100000001;
                              v84[1] = 0x100000001;
                              v84[0] = 0x100000000;
                              v10 = 1;
                              v11 = 1;
                              v83 = 0x100000000;
                              *&v81[8] = 1;
                            }
                          }

                          else
                          {
                            v79 = 0;
                            v80 = 0;
                            memset(v81, 0, sizeof(v81));
                            v82 = 0x100000000;
                            v12 = 0;
                            v13 = 0;
                            v7 = 0;
                            v14 = 0;
                            v15 = 0;
                            v9 = 0;
                            v8 = 0;
                            v84[3] = 0x100000001;
                            v84[2] = 0x100000001;
                            v84[1] = 0x100000001;
                            v84[0] = 0x100000000;
                            v10 = 1;
                            v11 = 1;
                            v83 = 0x100000000;
                          }
                        }

                        else
                        {
                          v82 = 0;
                          v79 = 0;
                          v80 = 0;
                          memset(v81, 0, sizeof(v81));
                          v12 = 0;
                          v13 = 0;
                          v7 = 0;
                          v14 = 0;
                          v15 = 0;
                          v9 = 0;
                          v8 = 0;
                          v84[3] = 0x100000001;
                          v84[2] = 0x100000001;
                          v84[1] = 0x100000001;
                          v84[0] = 0x100000000;
                          v10 = 1;
                          v11 = 1;
                          v83 = 0x100000000;
                        }
                      }

                      else
                      {
                        v83 = 0;
                        v82 = 0;
                        v79 = 0;
                        v80 = 0;
                        memset(v81, 0, sizeof(v81));
                        v12 = 0;
                        v13 = 0;
                        v7 = 0;
                        v14 = 0;
                        v15 = 0;
                        v9 = 0;
                        v8 = 0;
                        v84[3] = 0x100000001;
                        v84[2] = 0x100000001;
                        v84[1] = 0x100000001;
                        v84[0] = 0x100000000;
                        v10 = 1;
                        v11 = 1;
                      }
                    }

                    else
                    {
                      v11 = 0;
                      v83 = 0;
                      v82 = 0;
                      v79 = 0;
                      v80 = 0;
                      memset(v81, 0, sizeof(v81));
                      v12 = 0;
                      v13 = 0;
                      v7 = 0;
                      v14 = 0;
                      v15 = 0;
                      v9 = 0;
                      v8 = 0;
                      v84[3] = 0x100000001;
                      v84[2] = 0x100000001;
                      v84[1] = 0x100000001;
                      v84[0] = 0x100000000;
                      v10 = 1;
                    }
                  }

                  else
                  {
                    v10 = 0;
                    v11 = 0;
                    v83 = 0;
                    v82 = 0;
                    v79 = 0;
                    v80 = 0;
                    memset(v81, 0, sizeof(v81));
                    v12 = 0;
                    v13 = 0;
                    v7 = 0;
                    v14 = 0;
                    v15 = 0;
                    v9 = 0;
                    v8 = 0;
                    v84[3] = 0x100000001;
                    v84[2] = 0x100000001;
                    v84[1] = 0x100000001;
                    v84[0] = 0x100000000;
                  }
                }

                else
                {
                  v84[0] = 0;
                  v10 = 0;
                  v11 = 0;
                  v83 = 0;
                  v82 = 0;
                  v79 = 0;
                  v80 = 0;
                  memset(v81, 0, sizeof(v81));
                  v12 = 0;
                  v13 = 0;
                  v7 = 0;
                  v14 = 0;
                  v15 = 0;
                  v9 = 0;
                  v8 = 0;
                  v84[3] = 0x100000001;
                  v84[2] = 0x100000001;
                  v84[1] = 0x100000001;
                }
              }

              else
              {
                *(v84 + 4) = 0;
                v10 = 0;
                v11 = 0;
                v83 = 0;
                v82 = 0;
                v79 = 0;
                v80 = 0;
                memset(v81, 0, sizeof(v81));
                LODWORD(v84[0]) = 0;
                v12 = 0;
                v13 = 0;
                v7 = 0;
                v14 = 0;
                v15 = 0;
                v9 = 0;
                v8 = 0;
                v84[3] = 0x100000001;
                v84[2] = 0x100000001;
                HIDWORD(v84[1]) = 1;
              }
            }

            else
            {
              v84[1] = 0;
              v84[0] = 0;
              v10 = 0;
              v11 = 0;
              v83 = 0;
              v82 = 0;
              v79 = 0;
              v80 = 0;
              memset(v81, 0, sizeof(v81));
              v12 = 0;
              v13 = 0;
              v7 = 0;
              v14 = 0;
              v15 = 0;
              v9 = 0;
              v8 = 0;
              v84[3] = 0x100000001;
              v84[2] = 0x100000001;
            }
          }

          else
          {
            v10 = 0;
            v11 = 0;
            v83 = 0;
            v82 = 0;
            v79 = 0;
            v80 = 0;
            memset(v81, 0, sizeof(v81));
            memset(v84, 0, 20);
            v12 = 0;
            v13 = 0;
            v7 = 0;
            v14 = 0;
            v15 = 0;
            v9 = 0;
            v8 = 0;
            v84[3] = 0x100000001;
            HIDWORD(v84[2]) = 1;
          }
        }

        else
        {
          memset(v84, 0, 24);
          v10 = 0;
          v11 = 0;
          v83 = 0;
          v82 = 0;
          v79 = 0;
          v80 = 0;
          memset(v81, 0, sizeof(v81));
          v12 = 0;
          v13 = 0;
          v7 = 0;
          v14 = 0;
          v15 = 0;
          v9 = 0;
          v8 = 0;
          v84[3] = 0x100000001;
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v83 = 0;
        v82 = 0;
        v79 = 0;
        v80 = 0;
        memset(v81, 0, sizeof(v81));
        memset(v84, 0, 28);
        v12 = 0;
        v13 = 0;
        v7 = 0;
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v8 = 0;
        HIDWORD(v84[3]) = 1;
      }
    }

    else
    {
      memset(v84, 0, sizeof(v84));
      v10 = 0;
      v11 = 0;
      v83 = 0;
      v82 = 0;
      v79 = 0;
      v80 = 0;
      memset(v81, 0, sizeof(v81));
      v12 = 0;
      v13 = 0;
      v7 = 0;
      v14 = 0;
      v15 = 0;
      v9 = 0;
      v8 = 0;
    }
  }

  else
  {
    memset(v84, 0, sizeof(v84));
    v10 = 0;
    v11 = 0;
    v83 = 0;
    v82 = 0;
    v79 = 0;
    v80 = 0;
    memset(v81, 0, sizeof(v81));
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v9 = 0;
    v8 = 0;
  }

  if (v9)
  {
    v16 = v11;
    v17 = v12;
    v18 = v10;
    v19 = v13;
    v20 = v7;
    v21 = v14;
    v22 = v15;

    v15 = v22;
    v14 = v21;
    v7 = v20;
    v13 = v19;
    v10 = v18;
    v12 = v17;
    v11 = v16;
  }

  if (v15)
  {
  }

  if (v14)
  {

    if (!v7)
    {
      goto LABEL_42;
    }
  }

  else if (!v7)
  {
LABEL_42:
    if (v13)
    {
      goto LABEL_43;
    }

LABEL_47:
    if (!v12)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (!v13)
  {
    goto LABEL_47;
  }

LABEL_43:

  if (v12)
  {
LABEL_48:
  }

LABEL_49:
  if (LODWORD(v84[0]))
  {
  }

  if (v83)
  {
  }

  if (v82)
  {
  }

  if (*&v81[4])
  {
  }

  if (*v81)
  {
  }

  if (v80)
  {
  }

  if (v79)
  {
  }

  if (HIDWORD(v79))
  {
  }

  if (HIDWORD(v80))
  {
  }

  if (*&v81[8])
  {
  }

  if (HIDWORD(v82))
  {
  }

  if (HIDWORD(v83))
  {

    if (!v11)
    {
      goto LABEL_73;
    }

LABEL_94:

    if (!v10)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (v11)
  {
    goto LABEL_94;
  }

LABEL_73:
  if (v10)
  {
LABEL_74:
  }

LABEL_75:
  if (HIDWORD(v84[0]))
  {
  }

  if (LODWORD(v84[1]))
  {
  }

  if (HIDWORD(v84[1]))
  {
  }

  if (LODWORD(v84[2]))
  {
  }

  if (HIDWORD(v84[2]))
  {
  }

  if (LODWORD(v84[3]))
  {
  }

  if (HIDWORD(v84[3]))
  {
  }

  if (v85)
  {
  }

LABEL_92:
  return v8;
}

- (unint64_t)hash
{
  v3 = [(EMMessageListItemChange *)self date];
  v4 = [v3 hash];

  v5 = [(EMMessageListItemChange *)self readLater];
  v6 = [v5 hash];

  v7 = [(EMMessageListItemChange *)self sendLaterDate];
  v8 = [v7 hash];

  v9 = [(EMMessageListItemChange *)self followUp];
  v10 = [v9 hash];

  v11 = [(EMMessageListItemChange *)self subject];
  v12 = [v11 hash];

  v13 = [(EMMessageListItemChange *)self summary];
  v14 = [v13 hash];

  v15 = [(EMMessageListItemChange *)self generatedSummary];
  v16 = [v15 hash];

  v17 = [(EMMessageListItemChange *)self senderList];
  v18 = [v17 hash];

  v19 = [(EMMessageListItemChange *)self toList];
  v61 = [v19 hash];

  v20 = [(EMMessageListItemChange *)self ccList];
  v60 = [v20 hash];

  v21 = [(EMMessageListItemChange *)self flags];
  v59 = [v21 hash];

  v22 = [(EMMessageListItemChange *)self hasUnflagged];
  v58 = [v22 hash];

  v23 = [(EMMessageListItemChange *)self flagColors];
  v57 = [v23 hash];

  v24 = [(EMMessageListItemChange *)self isVIP];
  v56 = [v24 hash];

  v25 = [(EMMessageListItemChange *)self isBlocked];
  v55 = [v25 hash];

  v26 = [(EMMessageListItemChange *)self searchResultType];
  v54 = [v26 hash];

  v27 = [(EMMessageListItemChange *)self searchRelevanceScore];
  v53 = [v27 hash];

  v28 = [(EMMessageListItemChange *)self unsubscribeType];
  v52 = [v28 hash];

  v29 = [(EMMessageListItemChange *)self hasAttachments];
  v51 = [v29 hash];

  v30 = [(EMMessageListItemChange *)self conversationNotificationLevel];
  v50 = [v30 hash];

  v31 = [(EMMessageListItemChange *)self count];
  v49 = [v31 hash];

  v32 = [(EMMessageListItemChange *)self conversationID];
  v48 = [v32 hash];

  v33 = [(EMMessageListItemChange *)self mailboxObjectIDs];
  v47 = [v33 hash];

  v34 = [(EMMessageListItemChange *)self mailboxes];
  v46 = [v34 hash];

  v35 = [(EMMessageListItemChange *)self displayMessageItemID];
  v45 = [v35 hash];

  v36 = [(EMMessageListItemChange *)self businessID];
  v44 = [v36 hash];

  v37 = [(EMMessageListItemChange *)self businessLogoID];
  v43 = [v37 hash];

  v38 = [(EMMessageListItemChange *)self brandIndicatorLocation];
  v42 = [v38 hash];

  v39 = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
  v40 = [v39 hash] + 0x68F7EB249482FF25;

  return 33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * v4 + v6) + v8) + v10) + v12) + v14) + v16) + v18) + v61) + v60) + v59) + v58) + v57) + v56) + v55) + v54) + v53) + v52) + v51) + v50) + v49) + v48) + v47) + v46) + v45) + v44) + v43) + v42) + v40;
}

- (void)setMailboxObjectIDs:(id)a3
{
  v4 = a3;
  mailboxObjectIDs = self->_mailboxObjectIDs;
  v9 = v4;
  if ((EFArraysAreEqual() & 1) == 0)
  {
    mailboxes = self->_mailboxes;
    self->_mailboxes = 0;

    v7 = [v9 copy];
    v8 = self->_mailboxObjectIDs;
    self->_mailboxObjectIDs = v7;
  }
}

- (void)setMailboxes:(id)a3
{
  v8 = a3;
  v4 = [v8 copy];
  mailboxes = self->_mailboxes;
  self->_mailboxes = v4;

  v6 = [v8 ef_mapSelector:sel_objectID];
  mailboxObjectIDs = self->_mailboxObjectIDs;
  self->_mailboxObjectIDs = v6;
}

+ (id)changeFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(EMMessageListItemChange);
  v9 = [a1 changeFrom:v6 to:v7 with:v8 hasChanges:0];

  return v9;
}

+ (id)changeFrom:(id)a3 to:(id)a4 with:(id)a5 hasChanges:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v107 = [v10 date];
  v12 = [v9 date];
  v13 = EFObjectsAreEqual();

  if ((v13 & 1) == 0)
  {
    [v11 setDate:v107];
    v6 = 1;
  }

  v106 = [v10 displayDate];
  v14 = [v9 displayDate];
  v15 = EFObjectsAreEqual();

  if ((v15 & 1) == 0)
  {
    [v11 setDisplayDate:v106];
    v6 = 1;
  }

  v105 = [v10 sendLaterDate];
  v16 = [v9 sendLaterDate];
  v17 = EFObjectsAreEqual();

  if ((v17 & 1) == 0)
  {
    v18 = v105;
    if (!v105)
    {
      v18 = [MEMORY[0x1E695DFB0] null];
    }

    [v11 setSendLaterDate:v18];
    if (!v105)
    {
    }

    v6 = 1;
  }

  v104 = [v10 readLater];
  v19 = [v9 readLater];
  v20 = EFObjectsAreEqual();

  if ((v20 & 1) == 0)
  {
    v21 = v104;
    if (!v104)
    {
      v21 = [MEMORY[0x1E695DFB0] null];
    }

    [v11 setReadLater:v21];
    if (!v104)
    {
    }

    v6 = 1;
  }

  v103 = [v10 followUp];
  v22 = [v9 followUp];
  v23 = EFObjectsAreEqual();

  if ((v23 & 1) == 0)
  {
    v24 = v103;
    if (!v103)
    {
      v24 = [MEMORY[0x1E695DFB0] null];
    }

    [v11 setFollowUp:v24];
    if (!v103)
    {
    }

    v6 = 1;
  }

  v102 = [v10 category];
  v25 = [v9 category];
  v26 = EFObjectsAreEqual();

  if ((v26 & 1) == 0)
  {
    v27 = v102;
    if (!v102)
    {
      v27 = [MEMORY[0x1E695DFB0] null];
    }

    [v11 setCategory:v27];
    if (!v102)
    {
    }

    v6 = 1;
  }

  v101 = [v10 groupedSenderMessageListItems];
  v28 = [v9 groupedSenderMessageListItems];
  v29 = _groupedSenderMessageListItemsPropertiesAreEqual(v101, v28);

  if ((v29 & 1) == 0)
  {
    v30 = v101;
    if (!v101)
    {
      v30 = [MEMORY[0x1E695DFB0] null];
    }

    [v11 setGroupedSenderMessageListItems:v30];
    if (!v101)
    {
    }

    v6 = 1;
  }

  v31 = [v10 businessID];
  if (v31 != [v9 businessID])
  {
    v32 = [MEMORY[0x1E696AD98] numberWithLongLong:v31];
    [v11 setBusinessID:v32];

    v6 = 1;
  }

  v100 = [v10 businessLogoID];
  v33 = [v9 businessLogoID];
  v34 = EFObjectsAreEqual();

  if ((v34 & 1) == 0)
  {
    v35 = v100;
    if (!v100)
    {
      v35 = [MEMORY[0x1E695DFB0] null];
    }

    [v11 setBusinessLogoID:v35];
    if (!v100)
    {
    }

    v6 = 1;
  }

  v99 = [v10 brandIndicatorLocation];
  v36 = [v9 brandIndicatorLocation];
  v37 = EFObjectsAreEqual();

  if ((v37 & 1) == 0)
  {
    v38 = v99;
    if (!v99)
    {
      v38 = [MEMORY[0x1E695DFB0] null];
    }

    [v11 setBrandIndicatorLocation:v38];
    if (!v99)
    {
    }

    v6 = 1;
  }

  v98 = [v10 subject];
  v39 = [v9 subject];
  v40 = EFObjectsAreEqual();

  if ((v40 & 1) == 0)
  {
    v41 = v98;
    if (!v98)
    {
      v41 = [MEMORY[0x1E695DFB0] null];
    }

    [v11 setSubject:v41];
    if (!v98)
    {
    }

    v6 = 1;
  }

  v111 = [v10 summary];
  v42 = [v9 summary];
  v43 = EFObjectsAreEqual();

  if ((v43 & 1) == 0)
  {
    v44 = v111;
    if (!v111)
    {
      v44 = [MEMORY[0x1E695DFB0] null];
    }

    [v11 setSummary:v44];
    if (!v111)
    {
    }

    v6 = 1;
  }

  if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    v45 = [v10 generatedSummary];
    v46 = [v9 generatedSummary];
    v47 = EFObjectsAreEqual();

    if ((v47 & 1) == 0)
    {
      v48 = v45;
      if (!v45)
      {
        v48 = [MEMORY[0x1E695DFB0] null];
      }

      [v11 setGeneratedSummary:v48];
      if (!v45)
      {
      }

      v6 = 1;
    }
  }

  v97 = [v10 senderList];
  v49 = [v9 senderList];
  v50 = EFArraysAreEqual();

  if ((v50 & 1) == 0)
  {
    [v11 setSenderList:v97];
    v6 = 1;
  }

  v96 = [v10 toList];
  v51 = [v9 toList];
  v52 = EFArraysAreEqual();

  if ((v52 & 1) == 0)
  {
    [v11 setToList:v96];
    v6 = 1;
  }

  v109 = [v10 ccList];
  v53 = [v9 ccList];
  v54 = EFArraysAreEqual();

  if ((v54 & 1) == 0)
  {
    [v11 setCcList:v109];
    v6 = 1;
  }

  v108 = [v10 flags];
  v55 = [v9 flags];
  v56 = EFObjectsAreEqual();

  if ((v56 & 1) == 0)
  {
    [v11 setFlags:v108];
    v6 = 1;
  }

  v57 = [v10 hasUnflagged];
  if (v57 != [v9 hasUnflagged])
  {
    v58 = [MEMORY[0x1E696AD98] numberWithBool:v57];
    [v11 setHasUnflagged:v58];

    v6 = 1;
  }

  v110 = [v10 flagColors];
  v59 = [v9 flagColors];
  v60 = EFObjectsAreEqual();

  if ((v60 & 1) == 0)
  {
    v61 = v110;
    if (!v110)
    {
      v61 = [MEMORY[0x1E695DFB0] null];
    }

    [v11 setFlagColors:v61];
    if (!v110)
    {
    }

    v6 = 1;
  }

  v62 = [v10 isVIP];
  if (v62 != [v9 isVIP])
  {
    v63 = [MEMORY[0x1E696AD98] numberWithBool:v62];
    [v11 setIsVIP:v63];

    v6 = 1;
  }

  v64 = [v10 isBlocked];
  if (v64 != [v9 isBlocked])
  {
    v65 = [MEMORY[0x1E696AD98] numberWithBool:v64];
    [v11 setIsBlocked:v65];

    v6 = 1;
  }

  v66 = [v10 searchResultType];
  if (v66 != [v9 searchResultType])
  {
    v67 = [MEMORY[0x1E696AD98] numberWithInteger:v66];
    [v11 setSearchResultType:v67];

    v6 = 1;
  }

  v68 = [v10 searchRelevanceScore];
  v69 = [v9 searchRelevanceScore];
  v70 = EFObjectsAreEqual();

  if ((v70 & 1) == 0)
  {
    [v11 setSearchRelevanceScore:v68];
    v6 = 1;
  }

  v71 = [v10 unsubscribeType];
  if (v71 != [v9 unsubscribeType])
  {
    v72 = [MEMORY[0x1E696AD98] numberWithInteger:v71];
    [v11 setUnsubscribeType:v72];

    v6 = 1;
  }

  v73 = [v10 hasAttachments];
  if (v73 != [v9 hasAttachments])
  {
    v74 = [MEMORY[0x1E696AD98] numberWithBool:v73];
    [v11 setHasAttachments:v74];

    v6 = 1;
  }

  v75 = [v10 isAuthenticated];
  if (v75 != [v9 isAuthenticated])
  {
    v76 = [MEMORY[0x1E696AD98] numberWithBool:v75];
    [v11 setIsAuthenticated:v76];

    v6 = 1;
  }

  v77 = [v10 isUrgent];
  if (v77 != [v9 isUrgent])
  {
    v78 = [MEMORY[0x1E696AD98] numberWithBool:v77];
    [v11 setIsUrgent:v78];

    v6 = 1;
  }

  v79 = [v10 allowAuthenticationWarning];
  if (v79 != [v9 allowAuthenticationWarning])
  {
    v80 = [MEMORY[0x1E696AD98] numberWithBool:v79];
    [v11 setAllowAuthenticationWarning:v80];

    v6 = 1;
  }

  v81 = [v10 conversationNotificationLevel];
  if (v81 != [v9 conversationNotificationLevel])
  {
    v82 = [MEMORY[0x1E696AD98] numberWithInteger:v81];
    [v11 setConversationNotificationLevel:v82];

    v6 = 1;
  }

  v83 = [v10 count];
  if (v83 != [v9 count])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v83];
    [v11 setCount:v84];

    v6 = 1;
  }

  v85 = [v10 mailboxObjectIDs];
  v86 = [v9 mailboxObjectIDs];
  if ((EFArraysAreEqual() & 1) == 0)
  {
    v87 = [v10 mailboxes];
    v88 = [v9 mailboxes];
    v89 = [v87 count];
    if (v89 == [v85 count] && (v90 = objc_msgSend(v88, "count"), v90 == objc_msgSend(v86, "count")) && (EFArraysAreEqual() & 1) == 0)
    {
      [v11 setMailboxes:v87];
    }

    else
    {
      [v11 setMailboxObjectIDs:v85];
    }

    v6 = 1;
  }

  v91 = [v10 displayMessageItemID];
  v92 = [v9 displayMessageItemID];
  v93 = EFObjectsAreEqual();

  if (v93)
  {
    if (!v6)
    {
      v94 = 0;
      goto LABEL_119;
    }
  }

  else
  {
    [v11 setDisplayMessageItemID:v91];
  }

  v94 = v11;
LABEL_119:

  return v94;
}

+ (id)changeForKeyPaths:(id)a3 ofItem:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v23 = v6;
  if ([v6 count])
  {
    v25 = objc_alloc_init(EMMessageListItemChange);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (!v9)
    {
      goto LABEL_39;
    }

    v10 = *v27;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v12 isEqualToString:@"readLater.date"])
          {
            v13 = [v7 readLater];
            v14 = v13;
            if (!v13)
            {
              a4 = [MEMORY[0x1E695DFB0] null];
              v14 = a4;
            }

            [(EMMessageListItemChange *)v25 setReadLater:v14];
            v15 = a4;
            if (!v13)
            {
              goto LABEL_18;
            }
          }

          else
          {
            if (([v12 isEqualToString:@"followUp.startDate"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"followUp.endDate"))
            {
              v13 = [v7 followUp];
              v16 = v13;
              if (!v13)
              {
                v4 = [MEMORY[0x1E695DFB0] null];
                v16 = v4;
              }

              [(EMMessageListItemChange *)v25 setFollowUp:v16];
              v15 = v4;
              if (v13)
              {
                goto LABEL_19;
              }
            }

            else if (([v12 isEqualToString:@"category.type"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"category.isHighImpact"))
            {
              v13 = [v7 category];
              v17 = v13;
              if (!v13)
              {
                v24 = [MEMORY[0x1E695DFB0] null];
                v17 = v24;
              }

              [(EMMessageListItemChange *)v25 setCategory:v17];
              v15 = v24;
              if (v13)
              {
                goto LABEL_19;
              }
            }

            else
            {
              if ([v12 isEqualToString:@"AuthenticationState"])
              {
                v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "isAuthenticated")}];
                [(EMMessageListItemChange *)v25 setIsAuthenticated:v13];
                goto LABEL_19;
              }

              if ([v12 isEqualToString:@"businessID"])
              {
                v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v7, "businessID")}];
                [(EMMessageListItemChange *)v25 setBusinessID:v13];
                goto LABEL_19;
              }

              if (![v12 isEqualToString:@"businessLogoID"])
              {
                v13 = [v7 valueForKeyPath:v12];
                [(EMMessageListItemChange *)v25 setValue:v13 forKeyPath:v12];
                goto LABEL_19;
              }

              v13 = [v7 businessLogoID];
              v18 = v13;
              if (!v13)
              {
                v22 = [MEMORY[0x1E695DFB0] null];
                v18 = v22;
              }

              [(EMMessageListItemChange *)v25 setBusinessLogoID:v18, v22];
              v15 = v22;
              if (v13)
              {
                goto LABEL_19;
              }
            }

LABEL_18:
          }

LABEL_19:
        }

        ++v11;
      }

      while (v9 != v11);
      v19 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      v9 = v19;
      if (!v19)
      {
LABEL_39:

        goto LABEL_41;
      }
    }
  }

  v25 = 0;
LABEL_41:

  v20 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)changesForKeyPaths:(id)a3 ofItems:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [a1 changeForKeyPaths:v6 ofItem:{v13, v18}];
        if (v13)
        {
          v15 = [v13 objectID];
          [v8 setObject:v14 forKeyedSubscript:v15];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)changeForFlags:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(EMMessageListItemChange);
  [(EMMessageListItemChange *)v4 setFlags:v3];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "flagged") ^ 1}];
  [(EMMessageListItemChange *)v4 setHasUnflagged:v5];

  if ([v3 flagged])
  {
    v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v3, "flagColor")}];
    [(EMMessageListItemChange *)v4 setFlagColors:v6];
  }

  return v4;
}

+ (id)changeForUnsubscribeType:(int64_t)a3
{
  v4 = objc_alloc_init(EMMessageListItemChange);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(EMMessageListItemChange *)v4 setUnsubscribeType:v5];

  return v4;
}

- (void)addChange:(id)a3
{
  v64 = a3;
  v4 = [v64 date];

  if (v4)
  {
    v5 = [v64 date];
    [(EMMessageListItemChange *)self setDate:v5];
  }

  v6 = [v64 displayDate];

  if (v6)
  {
    v7 = [v64 displayDate];
    [(EMMessageListItemChange *)self setDisplayDate:v7];
  }

  v8 = [v64 readLater];

  if (v8)
  {
    v9 = [v64 readLater];
    [(EMMessageListItemChange *)self setReadLater:v9];
  }

  v10 = [v64 sendLaterDate];

  if (v10)
  {
    v11 = [v64 sendLaterDate];
    [(EMMessageListItemChange *)self setSendLaterDate:v11];
  }

  v12 = [v64 followUp];

  if (v12)
  {
    v13 = [v64 followUp];
    [(EMMessageListItemChange *)self setFollowUp:v13];
  }

  v14 = [v64 subject];

  if (v14)
  {
    v15 = [v64 subject];
    [(EMMessageListItemChange *)self setSubject:v15];
  }

  v16 = [v64 summary];

  if (v16)
  {
    v17 = [v64 summary];
    [(EMMessageListItemChange *)self setSummary:v17];
  }

  v18 = [v64 generatedSummary];

  if (v18)
  {
    v19 = [v64 generatedSummary];
    [(EMMessageListItemChange *)self setGeneratedSummary:v19];
  }

  v20 = [v64 senderList];

  if (v20)
  {
    v21 = [v64 senderList];
    [(EMMessageListItemChange *)self setSenderList:v21];
  }

  v22 = [v64 toList];

  if (v22)
  {
    v23 = [v64 toList];
    [(EMMessageListItemChange *)self setToList:v23];
  }

  v24 = [v64 ccList];

  if (v24)
  {
    v25 = [v64 ccList];
    [(EMMessageListItemChange *)self setCcList:v25];
  }

  v26 = [v64 flags];

  if (v26)
  {
    v27 = [v64 flags];
    [(EMMessageListItemChange *)self setFlags:v27];
  }

  v28 = [v64 hasUnflagged];

  if (v28)
  {
    v29 = [v64 hasUnflagged];
    [(EMMessageListItemChange *)self setHasUnflagged:v29];
  }

  v30 = [v64 flagColors];

  if (v30)
  {
    v31 = [v64 flagColors];
    [(EMMessageListItemChange *)self setFlagColors:v31];
  }

  v32 = [v64 isVIP];

  if (v32)
  {
    v33 = [v64 isVIP];
    [(EMMessageListItemChange *)self setIsVIP:v33];
  }

  v34 = [v64 isBlocked];

  if (v34)
  {
    v35 = [v64 isBlocked];
    [(EMMessageListItemChange *)self setIsBlocked:v35];
  }

  v36 = [v64 searchResultType];

  if (v36)
  {
    v37 = [v64 searchResultType];
    [(EMMessageListItemChange *)self setSearchResultType:v37];
  }

  v38 = [v64 searchRelevanceScore];

  if (v38)
  {
    v39 = [v64 searchRelevanceScore];
    [(EMMessageListItemChange *)self setSearchRelevanceScore:v39];
  }

  v40 = [v64 unsubscribeType];

  if (v40)
  {
    v41 = [v64 unsubscribeType];
    [(EMMessageListItemChange *)self setUnsubscribeType:v41];
  }

  v42 = [v64 hasAttachments];

  if (v42)
  {
    v43 = [v64 hasAttachments];
    [(EMMessageListItemChange *)self setHasAttachments:v43];
  }

  v44 = [v64 conversationNotificationLevel];

  if (v44)
  {
    v45 = [v64 conversationNotificationLevel];
    [(EMMessageListItemChange *)self setConversationNotificationLevel:v45];
  }

  v46 = [v64 count];

  if (v46)
  {
    v47 = [v64 count];
    [(EMMessageListItemChange *)self setCount:v47];
  }

  v48 = [v64 conversationID];

  if (v48)
  {
    v49 = [v64 conversationID];
    [(EMMessageListItemChange *)self setConversationID:v49];
  }

  v50 = [v64 mailboxObjectIDs];

  if (v50)
  {
    v51 = [v64 mailboxObjectIDs];
    [(EMMessageListItemChange *)self setMailboxObjectIDs:v51];
  }

  v52 = [v64 mailboxes];

  if (v52)
  {
    v53 = [v64 mailboxes];
    [(EMMessageListItemChange *)self setMailboxes:v53];
  }

  v54 = [v64 displayMessageItemID];

  if (v54)
  {
    v55 = [v64 displayMessageItemID];
    [(EMMessageListItemChange *)self setDisplayMessageItemID:v55];
  }

  v56 = [v64 groupedSenderMessageListItems];

  if (v56)
  {
    v57 = [v64 groupedSenderMessageListItems];
    [(EMMessageListItemChange *)self setGroupedSenderMessageListItems:v57];
  }

  v58 = [v64 businessID];

  if (v58)
  {
    v59 = [v64 businessID];
    [(EMMessageListItemChange *)self setBusinessID:v59];
  }

  v60 = [v64 businessLogoID];

  if (v60)
  {
    v61 = [v64 businessLogoID];
    [(EMMessageListItemChange *)self setBusinessLogoID:v61];
  }

  v62 = [v64 brandIndicatorLocation];

  if (v62)
  {
    v63 = [v64 brandIndicatorLocation];
    [(EMMessageListItemChange *)self setBrandIndicatorLocation:v63];
  }
}

- (BOOL)applyToMessageListItem:(id)a3
{
  v4 = a3;
  v5 = [(EMMessageListItemChange *)self date];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = [(EMMessageListItemChange *)self date];
  v7 = [v4 date];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v10 = [(EMMessageListItemChange *)self date];
    [v4 setDate:v10];

    v9 = 1;
  }

  else
  {
LABEL_3:
    v9 = 0;
  }

  v11 = [(EMMessageListItemChange *)self displayDate];
  if (v11)
  {
    v12 = [(EMMessageListItemChange *)self displayDate];
    v13 = [v4 displayDate];
    v14 = [v12 isEqual:v13];

    if ((v14 & 1) == 0)
    {
      v15 = [(EMMessageListItemChange *)self displayDate];
      [v4 setDisplayDate:v15];

      v9 = 1;
    }
  }

  v16 = [(EMMessageListItemChange *)self readLater];

  if (v16)
  {
    v17 = [(EMMessageListItemChange *)self readLater];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [(EMMessageListItemChange *)self readLater];
    }

    else
    {
      v18 = 0;
    }

    v19 = [v4 readLater];
    v20 = v19;
    if (v18 == v19)
    {
    }

    else
    {
      v21 = [v4 readLater];
      v22 = [v18 isEqual:v21];

      if ((v22 & 1) == 0)
      {
        [v4 setReadLater:v18];
        v9 = 1;
      }
    }
  }

  v23 = [(EMMessageListItemChange *)self sendLaterDate];

  if (v23)
  {
    v24 = [(EMMessageListItemChange *)self sendLaterDate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [(EMMessageListItemChange *)self sendLaterDate];
    }

    else
    {
      v25 = 0;
    }

    v26 = [v4 sendLaterDate];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [v4 sendLaterDate];
      v29 = [v25 isEqual:v28];

      if ((v29 & 1) == 0)
      {
        [v4 setSendLaterDate:v25];
        v9 = 1;
      }
    }
  }

  v30 = [(EMMessageListItemChange *)self followUp];

  if (v30)
  {
    v31 = [(EMMessageListItemChange *)self followUp];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [(EMMessageListItemChange *)self followUp];
    }

    else
    {
      v32 = 0;
    }

    v33 = [v4 followUp];
    v34 = v33;
    if (v32 == v33)
    {
    }

    else
    {
      v35 = [v4 followUp];
      v36 = [v32 isEqual:v35];

      if ((v36 & 1) == 0)
      {
        [v4 setFollowUp:v32];
        v9 = 1;
      }
    }
  }

  v37 = [(EMMessageListItemChange *)self businessID];
  if (v37)
  {
    v38 = [(EMMessageListItemChange *)self businessID];
    v39 = [v38 longLongValue];
    v40 = [v4 businessID];

    if (v39 != v40)
    {
      v41 = [(EMMessageListItemChange *)self businessID];
      [v4 setBusinessID:{objc_msgSend(v41, "longLongValue")}];

      v9 = 1;
    }
  }

  v42 = [(EMMessageListItemChange *)self businessLogoID];

  if (v42)
  {
    v43 = [(EMMessageListItemChange *)self businessLogoID];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [(EMMessageListItemChange *)self businessLogoID];
    }

    else
    {
      v44 = 0;
    }

    v45 = [v4 businessLogoID];
    v46 = v45;
    if (v44 == v45)
    {
    }

    else
    {
      v47 = [v4 businessLogoID];
      v48 = [v44 isEqual:v47];

      if ((v48 & 1) == 0)
      {
        [v4 setBusinessLogoID:v44];
        v9 = 1;
      }
    }
  }

  v49 = [(EMMessageListItemChange *)self brandIndicatorLocation];

  if (v49)
  {
    v50 = [(EMMessageListItemChange *)self brandIndicatorLocation];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [(EMMessageListItemChange *)self brandIndicatorLocation];
    }

    else
    {
      v51 = 0;
    }

    v52 = [v4 brandIndicatorLocation];
    v53 = v52;
    if (v51 == v52)
    {
    }

    else
    {
      v54 = [v4 brandIndicatorLocation];
      v55 = [v51 isEqual:v54];

      if ((v55 & 1) == 0)
      {
        [v4 setBrandIndicatorLocation:v51];
        v9 = 1;
      }
    }
  }

  v56 = [(EMMessageListItemChange *)self category];

  if (v56)
  {
    v57 = [(EMMessageListItemChange *)self category];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = [(EMMessageListItemChange *)self category];
    }

    else
    {
      v58 = 0;
    }

    v59 = [v4 category];
    v60 = v59;
    if (v58 == v59)
    {
    }

    else
    {
      v61 = [v4 category];
      v62 = [v58 isEqual:v61];

      if ((v62 & 1) == 0)
      {
        [v4 setCategory:v58];
        v9 = 1;
      }
    }
  }

  v63 = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
  if (v63)
  {
    v64 = [v4 groupedSenderMessageListItems];
    v65 = _groupedSenderMessageListItemsPropertiesAreEqual(v63, v64);

    if ((v65 & 1) == 0)
    {
      [v4 setGroupedSenderMessageListItems:v63];
      v9 = 1;
    }
  }

  v66 = [(EMMessageListItemChange *)self subject];

  if (v66)
  {
    v67 = [(EMMessageListItemChange *)self subject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v68 = [(EMMessageListItemChange *)self subject];
    }

    else
    {
      v68 = 0;
    }

    v69 = [v4 subject];
    v70 = v69;
    if (v68 == v69)
    {
    }

    else
    {
      v71 = [v4 subject];
      v72 = [v68 isEqual:v71];

      if ((v72 & 1) == 0)
      {
        [v4 setSubject:v68];
        v9 = 1;
      }
    }
  }

  v73 = [(EMMessageListItemChange *)self summary];

  if (v73)
  {
    v74 = [(EMMessageListItemChange *)self summary];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v75 = [(EMMessageListItemChange *)self summary];
    }

    else
    {
      v75 = 0;
    }

    v76 = [v4 summary];
    v77 = v76;
    if (v75 == v76)
    {
    }

    else
    {
      v78 = [v4 summary];
      v79 = [v75 isEqual:v78];

      if ((v79 & 1) == 0)
      {
        [v4 setSummary:v75];
        v9 = 1;
      }
    }
  }

  v80 = [(EMMessageListItemChange *)self generatedSummary];

  if (v80)
  {
    v81 = [(EMMessageListItemChange *)self generatedSummary];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v82 = [(EMMessageListItemChange *)self generatedSummary];
    }

    else
    {
      v82 = 0;
    }

    v83 = [v4 generatedSummary];
    v84 = v83;
    if (v82 == v83)
    {
    }

    else
    {
      v85 = [v4 generatedSummary];
      v86 = [v82 isEqual:v85];

      if ((v86 & 1) == 0)
      {
        [v4 setGeneratedSummary:v82];
        v9 = 1;
      }
    }
  }

  v87 = [(EMMessageListItemChange *)self senderList];
  if (v87)
  {
    v88 = [(EMMessageListItemChange *)self senderList];
    v89 = [v4 senderList];
    v90 = [v88 isEqual:v89];

    if ((v90 & 1) == 0)
    {
      v91 = [(EMMessageListItemChange *)self senderList];
      [v4 setSenderList:v91];

      v9 = 1;
    }
  }

  v92 = [(EMMessageListItemChange *)self toList];
  if (v92)
  {
    v93 = [(EMMessageListItemChange *)self toList];
    v94 = [v4 toList];
    v95 = [v93 isEqual:v94];

    if ((v95 & 1) == 0)
    {
      v96 = [(EMMessageListItemChange *)self toList];
      [v4 setToList:v96];

      v9 = 1;
    }
  }

  v97 = [(EMMessageListItemChange *)self ccList];
  if (v97)
  {
    v98 = [(EMMessageListItemChange *)self ccList];
    v99 = [v4 ccList];
    v100 = [v98 isEqual:v99];

    if ((v100 & 1) == 0)
    {
      v101 = [(EMMessageListItemChange *)self ccList];
      [v4 setCcList:v101];

      v9 = 1;
    }
  }

  v102 = [(EMMessageListItemChange *)self flags];
  if (v102)
  {
    v103 = [(EMMessageListItemChange *)self flags];
    v104 = [v4 flags];
    v105 = [v103 isEqual:v104];

    if ((v105 & 1) == 0)
    {
      v106 = [(EMMessageListItemChange *)self flags];
      [v4 setFlags:v106];

      v9 = 1;
    }
  }

  v107 = [(EMMessageListItemChange *)self hasUnflagged];
  if (v107)
  {
    v108 = [(EMMessageListItemChange *)self hasUnflagged];
    v109 = [v108 BOOLValue];
    v110 = [v4 hasUnflagged];

    if (v109 != v110)
    {
      v111 = [(EMMessageListItemChange *)self hasUnflagged];
      [v4 setHasUnflagged:{objc_msgSend(v111, "BOOLValue")}];

      v9 = 1;
    }
  }

  v112 = [(EMMessageListItemChange *)self flagColors];

  if (v112)
  {
    v113 = [(EMMessageListItemChange *)self flagColors];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v114 = [(EMMessageListItemChange *)self flagColors];
    }

    else
    {
      v114 = 0;
    }

    v115 = [v4 flagColors];
    v116 = v115;
    if (v114 == v115)
    {
    }

    else
    {
      v117 = [v4 flagColors];
      v118 = [v114 isEqual:v117];

      if ((v118 & 1) == 0)
      {
        [v4 setFlagColors:v114];
        v9 = 1;
      }
    }
  }

  v119 = [(EMMessageListItemChange *)self isVIP];
  if (v119)
  {
    v120 = [(EMMessageListItemChange *)self isVIP];
    v121 = [v120 BOOLValue];
    v122 = [v4 isVIP];

    if (v121 != v122)
    {
      v123 = [(EMMessageListItemChange *)self isVIP];
      [v4 setIsVIP:{objc_msgSend(v123, "BOOLValue")}];

      v9 = 1;
    }
  }

  v124 = [(EMMessageListItemChange *)self isBlocked];
  if (v124)
  {
    v125 = [(EMMessageListItemChange *)self isBlocked];
    v126 = [v125 BOOLValue];
    v127 = [v4 isBlocked];

    if (v126 != v127)
    {
      v128 = [(EMMessageListItemChange *)self isBlocked];
      [v4 setIsBlocked:{objc_msgSend(v128, "BOOLValue")}];

      v9 = 1;
    }
  }

  v129 = [(EMMessageListItemChange *)self searchResultType];
  if (v129)
  {
    v130 = [(EMMessageListItemChange *)self searchResultType];
    v131 = [v130 integerValue];
    v132 = [v4 searchResultType];

    if (v131 != v132)
    {
      v133 = [(EMMessageListItemChange *)self searchResultType];
      [v4 setSearchResultType:{objc_msgSend(v133, "integerValue")}];

      v9 = 1;
    }
  }

  v134 = [(EMMessageListItemChange *)self searchRelevanceScore];
  if (v134)
  {
    v135 = [(EMMessageListItemChange *)self searchRelevanceScore];
    v136 = [v4 searchRelevanceScore];
    v137 = [v135 isEqual:v136];

    if ((v137 & 1) == 0)
    {
      v138 = [(EMMessageListItemChange *)self searchRelevanceScore];
      [v4 setSearchRelevanceScore:v138];

      v9 = 1;
    }
  }

  v139 = [(EMMessageListItemChange *)self isUrgent];
  if (v139)
  {
    v140 = [(EMMessageListItemChange *)self isUrgent];
    v141 = [v140 BOOLValue];
    v142 = [v4 isUrgent];

    if (v141 != v142)
    {
      v143 = [(EMMessageListItemChange *)self isUrgent];
      [v4 setIsUrgent:{objc_msgSend(v143, "BOOLValue")}];

      v9 = 1;
    }
  }

  v144 = [(EMMessageListItemChange *)self unsubscribeType];
  if (v144)
  {
    v145 = [(EMMessageListItemChange *)self unsubscribeType];
    v146 = [v145 integerValue];
    v147 = [v4 unsubscribeType];

    if (v146 != v147)
    {
      v148 = [(EMMessageListItemChange *)self unsubscribeType];
      [v4 setUnsubscribeType:{objc_msgSend(v148, "integerValue")}];

      v9 = 1;
    }
  }

  v149 = [(EMMessageListItemChange *)self hasAttachments];
  if (v149)
  {
    v150 = [(EMMessageListItemChange *)self hasAttachments];
    v151 = [v150 BOOLValue];
    v152 = [v4 hasAttachments];

    if (v151 != v152)
    {
      v153 = [(EMMessageListItemChange *)self hasAttachments];
      [v4 setHasAttachments:{objc_msgSend(v153, "BOOLValue")}];

      v9 = 1;
    }
  }

  v154 = [(EMMessageListItemChange *)self conversationNotificationLevel];
  if (v154)
  {
    v155 = [(EMMessageListItemChange *)self conversationNotificationLevel];
    v156 = [v155 integerValue];
    v157 = [v4 conversationNotificationLevel];

    if (v156 != v157)
    {
      v158 = [(EMMessageListItemChange *)self conversationNotificationLevel];
      [v4 setConversationNotificationLevel:{objc_msgSend(v158, "integerValue")}];

      v9 = 1;
    }
  }

  v159 = [(EMMessageListItemChange *)self count];
  if (v159)
  {
    v160 = [(EMMessageListItemChange *)self count];
    v161 = [v160 unsignedIntegerValue];
    v162 = [v4 count];

    if (v161 != v162)
    {
      v163 = [(EMMessageListItemChange *)self count];
      [v4 setCount:{objc_msgSend(v163, "unsignedIntegerValue")}];

      v9 = 1;
    }
  }

  v164 = [(EMMessageListItemChange *)self conversationID];
  if (v164)
  {
    v165 = [(EMMessageListItemChange *)self conversationID];
    v166 = [v165 longLongValue];
    v167 = [v4 conversationID];

    if (v166 != v167)
    {
      v168 = [(EMMessageListItemChange *)self conversationID];
      [v4 setConversationID:{objc_msgSend(v168, "longLongValue")}];

      v9 = 1;
    }
  }

  v169 = [(EMMessageListItemChange *)self mailboxObjectIDs];
  if (v169)
  {
    v170 = [(EMMessageListItemChange *)self mailboxObjectIDs];
    v171 = [v4 mailboxObjectIDs];
    v172 = [v170 isEqual:v171];

    if ((v172 & 1) == 0)
    {
      v173 = [(EMMessageListItemChange *)self mailboxObjectIDs];
      [v4 setMailboxObjectIDs:v173];

      v9 = 1;
    }
  }

  v174 = [(EMMessageListItemChange *)self mailboxes];
  if (v174)
  {
    v175 = [(EMMessageListItemChange *)self mailboxes];
    v176 = [v4 mailboxes];
    v177 = [v175 isEqual:v176];

    if ((v177 & 1) == 0)
    {
      v178 = [(EMMessageListItemChange *)self mailboxes];
      [v4 setMailboxes:v178];

      v9 = 1;
    }
  }

  v179 = [(EMMessageListItemChange *)self displayMessageItemID];
  if (v179)
  {
    v180 = [(EMMessageListItemChange *)self displayMessageItemID];
    v181 = [v4 displayMessageItemID];
    v182 = [v180 isEqual:v181];

    if ((v182 & 1) == 0)
    {
      v183 = [(EMMessageListItemChange *)self displayMessageItemID];
      [v4 setDisplayMessageItemID:v183];

      v9 = 1;
    }
  }

  return v9;
}

- (EMMessageListItemChange)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(EMMessageListItemChange *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_displayDate"];
    displayDate = v5->_displayDate;
    v5->_displayDate = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"EFPropertyKey_readLater"];
    readLater = v5->_readLater;
    v5->_readLater = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"EFPropertyKey_followUp"];
    followUp = v5->_followUp;
    v5->_followUp = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_businessID"];
    businessID = v5->_businessID;
    v5->_businessID = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"EFPropertyKey_businessLogoID"];
    businessLogoID = v5->_businessLogoID;
    v5->_businessLogoID = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"EFPropertyKey_brandIndicatorLocation"];
    brandIndicatorLocation = v5->_brandIndicatorLocation;
    v5->_brandIndicatorLocation = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"EFPropertyKey_category"];
    category = v5->_category;
    v5->_category = v35;

    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = [v37 setWithObjects:{v38, v39, objc_opt_class(), 0}];
    v41 = [v4 decodeObjectOfClasses:v40 forKey:@"EFPropertyKey_groupedSenderMessageListItems"];
    groupedSenderMessageListItems = v5->_groupedSenderMessageListItems;
    v5->_groupedSenderMessageListItems = v41;

    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
    v46 = [v4 decodeObjectOfClasses:v45 forKey:@"EFPropertyKey_subject"];
    subject = v5->_subject;
    v5->_subject = v46;

    v48 = MEMORY[0x1E695DFD8];
    v49 = objc_opt_class();
    v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
    v51 = [v4 decodeObjectOfClasses:v50 forKey:@"EFPropertyKey_sendLaterDate"];
    sendLaterDate = v5->_sendLaterDate;
    v5->_sendLaterDate = v51;

    v53 = MEMORY[0x1E695DFD8];
    v54 = objc_opt_class();
    v55 = [v53 setWithObjects:{v54, objc_opt_class(), 0}];
    v56 = [v4 decodeObjectOfClasses:v55 forKey:@"EFPropertyKey_summary"];
    summary = v5->_summary;
    v5->_summary = v56;

    v58 = MEMORY[0x1E695DFD8];
    v59 = objc_opt_class();
    v60 = [v58 setWithObjects:{v59, objc_opt_class(), 0}];
    v61 = [v4 decodeObjectOfClasses:v60 forKey:@"EFPropertyKey_generatedSummary"];
    generatedSummary = v5->_generatedSummary;
    v5->_generatedSummary = v61;

    v63 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_isUrgent"];
    isUrgent = v5->_isUrgent;
    v5->_isUrgent = v63;

    v65 = MEMORY[0x1E695DFD8];
    v66 = objc_opt_class();
    v67 = objc_opt_class();
    v68 = [v65 setWithObjects:{v66, v67, objc_opt_class(), 0}];
    v69 = [v4 decodeObjectOfClasses:v68 forKey:@"EFPropertyKey_senderList"];
    senderList = v5->_senderList;
    v5->_senderList = v69;

    v71 = MEMORY[0x1E695DFD8];
    v72 = objc_opt_class();
    v73 = objc_opt_class();
    v74 = [v71 setWithObjects:{v72, v73, objc_opt_class(), 0}];
    v75 = [v4 decodeObjectOfClasses:v74 forKey:@"EFPropertyKey_toList"];
    toList = v5->_toList;
    v5->_toList = v75;

    v77 = MEMORY[0x1E695DFD8];
    v78 = objc_opt_class();
    v79 = objc_opt_class();
    v80 = [v77 setWithObjects:{v78, v79, objc_opt_class(), 0}];
    v81 = [v4 decodeObjectOfClasses:v80 forKey:@"EFPropertyKey_ccList"];
    ccList = v5->_ccList;
    v5->_ccList = v81;

    v83 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_flags"];
    flags = v5->_flags;
    v5->_flags = v83;

    v85 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_hasUnflagged"];
    hasUnflagged = v5->_hasUnflagged;
    v5->_hasUnflagged = v85;

    v87 = MEMORY[0x1E695DFD8];
    v88 = objc_opt_class();
    v89 = [v87 setWithObjects:{v88, objc_opt_class(), 0}];
    v90 = [v4 decodeObjectOfClasses:v89 forKey:@"EFPropertyKey_flagColors"];
    flagColors = v5->_flagColors;
    v5->_flagColors = v90;

    v92 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_isVIP"];
    isVIP = v5->_isVIP;
    v5->_isVIP = v92;

    v94 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_isBlocked"];
    isBlocked = v5->_isBlocked;
    v5->_isBlocked = v94;

    v96 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_searchResultType"];
    searchResultType = v5->_searchResultType;
    v5->_searchResultType = v96;

    v98 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_searchRelevanceScore"];
    searchRelevanceScore = v5->_searchRelevanceScore;
    v5->_searchRelevanceScore = v98;

    v100 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_unsubscribeType"];
    unsubscribeType = v5->_unsubscribeType;
    v5->_unsubscribeType = v100;

    v102 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_hasAttachments"];
    hasAttachments = v5->_hasAttachments;
    v5->_hasAttachments = v102;

    v104 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_conversationNotificationLevel"];
    conversationNotificationLevel = v5->_conversationNotificationLevel;
    v5->_conversationNotificationLevel = v104;

    v106 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_count"];
    count = v5->_count;
    v5->_count = v106;

    v108 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_conversationID"];
    conversationID = v5->_conversationID;
    v5->_conversationID = v108;

    v110 = MEMORY[0x1E695DFD8];
    v111 = objc_opt_class();
    v112 = [v110 setWithObjects:{v111, objc_opt_class(), 0}];
    v113 = [v4 decodeObjectOfClasses:v112 forKey:@"EFPropertyKey_mailboxObjectIDs"];
    mailboxObjectIDs = v5->_mailboxObjectIDs;
    v5->_mailboxObjectIDs = v113;

    v115 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_displayMessageItemID"];
    displayMessageItemID = v5->_displayMessageItemID;
    v5->_displayMessageItemID = v115;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v35 = a3;
  v4 = [(EMMessageListItemChange *)self date];
  [v35 encodeObject:v4 forKey:@"EFPropertyKey_date"];

  v5 = [(EMMessageListItemChange *)self displayDate];
  [v35 encodeObject:v5 forKey:@"EFPropertyKey_displayDate"];

  v6 = [(EMMessageListItemChange *)self readLater];
  [v35 encodeObject:v6 forKey:@"EFPropertyKey_readLater"];

  v7 = [(EMMessageListItemChange *)self followUp];
  [v35 encodeObject:v7 forKey:@"EFPropertyKey_followUp"];

  v8 = [(EMMessageListItemChange *)self businessID];
  [v35 encodeObject:v8 forKey:@"EFPropertyKey_businessID"];

  v9 = [(EMMessageListItemChange *)self businessLogoID];
  [v35 encodeObject:v9 forKey:@"EFPropertyKey_businessLogoID"];

  v10 = [(EMMessageListItemChange *)self brandIndicatorLocation];
  [v35 encodeObject:v10 forKey:@"EFPropertyKey_brandIndicatorLocation"];

  v11 = [(EMMessageListItemChange *)self category];
  [v35 encodeObject:v11 forKey:@"EFPropertyKey_category"];

  v12 = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
  [v35 encodeObject:v12 forKey:@"EFPropertyKey_groupedSenderMessageListItems"];

  v13 = [(EMMessageListItemChange *)self subject];
  [v35 encodeObject:v13 forKey:@"EFPropertyKey_subject"];

  v14 = [(EMMessageListItemChange *)self sendLaterDate];
  [v35 encodeObject:v14 forKey:@"EFPropertyKey_sendLaterDate"];

  v15 = [(EMMessageListItemChange *)self summary];
  [v35 encodeObject:v15 forKey:@"EFPropertyKey_summary"];

  v16 = [(EMMessageListItemChange *)self generatedSummary];
  [v35 encodeObject:v16 forKey:@"EFPropertyKey_generatedSummary"];

  v17 = [(EMMessageListItemChange *)self isUrgent];
  [v35 encodeObject:v17 forKey:@"EFPropertyKey_isUrgent"];

  v18 = [(EMMessageListItemChange *)self senderList];
  [v35 encodeObject:v18 forKey:@"EFPropertyKey_senderList"];

  v19 = [(EMMessageListItemChange *)self toList];
  [v35 encodeObject:v19 forKey:@"EFPropertyKey_toList"];

  v20 = [(EMMessageListItemChange *)self ccList];
  [v35 encodeObject:v20 forKey:@"EFPropertyKey_ccList"];

  v21 = [(EMMessageListItemChange *)self flags];
  [v35 encodeObject:v21 forKey:@"EFPropertyKey_flags"];

  v22 = [(EMMessageListItemChange *)self hasUnflagged];
  [v35 encodeObject:v22 forKey:@"EFPropertyKey_hasUnflagged"];

  v23 = [(EMMessageListItemChange *)self flagColors];
  [v35 encodeObject:v23 forKey:@"EFPropertyKey_flagColors"];

  v24 = [(EMMessageListItemChange *)self isVIP];
  [v35 encodeObject:v24 forKey:@"EFPropertyKey_isVIP"];

  v25 = [(EMMessageListItemChange *)self isBlocked];
  [v35 encodeObject:v25 forKey:@"EFPropertyKey_isBlocked"];

  v26 = [(EMMessageListItemChange *)self searchResultType];
  [v35 encodeObject:v26 forKey:@"EFPropertyKey_searchResultType"];

  v27 = [(EMMessageListItemChange *)self searchRelevanceScore];
  [v35 encodeObject:v27 forKey:@"EFPropertyKey_searchRelevanceScore"];

  v28 = [(EMMessageListItemChange *)self unsubscribeType];
  [v35 encodeObject:v28 forKey:@"EFPropertyKey_unsubscribeType"];

  v29 = [(EMMessageListItemChange *)self hasAttachments];
  [v35 encodeObject:v29 forKey:@"EFPropertyKey_hasAttachments"];

  v30 = [(EMMessageListItemChange *)self conversationNotificationLevel];
  [v35 encodeObject:v30 forKey:@"EFPropertyKey_conversationNotificationLevel"];

  v31 = [(EMMessageListItemChange *)self count];
  [v35 encodeObject:v31 forKey:@"EFPropertyKey_count"];

  v32 = [(EMMessageListItemChange *)self conversationID];
  [v35 encodeObject:v32 forKey:@"EFPropertyKey_conversationID"];

  v33 = [(EMMessageListItemChange *)self mailboxObjectIDs];
  [v35 encodeObject:v33 forKey:@"EFPropertyKey_mailboxObjectIDs"];

  v34 = [(EMMessageListItemChange *)self displayMessageItemID];
  [v35 encodeObject:v34 forKey:@"EFPropertyKey_displayMessageItemID"];
}

@end