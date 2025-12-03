@interface EMMessageListItemChange
+ (id)changeForFlags:(id)flags;
+ (id)changeForKeyPaths:(id)paths ofItem:(id)item;
+ (id)changeForUnsubscribeType:(int64_t)type;
+ (id)changeFrom:(id)from to:(id)to;
+ (id)changeFrom:(id)from to:(id)to with:(id)with hasChanges:(BOOL)changes;
+ (id)changesForKeyPaths:(id)paths ofItems:(id)items;
- (BOOL)applyToMessageListItem:(id)item;
- (BOOL)isEqual:(id)equal;
- (EMMessageListItemChange)initWithCoder:(id)coder;
- (NSString)ef_publicDescription;
- (id)changeDescriptionsForInternal:(BOOL)internal useDebugDescriptions:(BOOL)descriptions;
- (unint64_t)hash;
- (void)addChange:(id)change;
- (void)encodeWithCoder:(id)coder;
- (void)setMailboxObjectIDs:(id)ds;
- (void)setMailboxes:(id)mailboxes;
@end

@implementation EMMessageListItemChange

- (NSString)ef_publicDescription
{
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  v4 = -[EMMessageListItemChange _descriptionForInternal:useDebugDescriptions:](self, "_descriptionForInternal:useDebugDescriptions:", [currentDevice isInternal], 0);

  return v4;
}

- (id)changeDescriptionsForInternal:(BOOL)internal useDebugDescriptions:(BOOL)descriptions
{
  descriptionsCopy = descriptions;
  internalCopy = internal;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  date = [(EMMessageListItemChange *)self date];

  if (date)
  {
    if (descriptionsCopy)
    {
      date2 = [(EMMessageListItemChange *)self date];
      v10 = [date2 debugDescription];
    }

    else
    {
      date3 = [(EMMessageListItemChange *)self date];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = MEMORY[0x1E699B858];
        date2 = [(EMMessageListItemChange *)self date];
        v10 = [v13 partiallyRedactedStringForString:date2];
      }

      else
      {
        date4 = [(EMMessageListItemChange *)self date];
        objc_opt_class();
        v15 = objc_opt_isKindOfClass();

        if (v15)
        {
          date2 = [(EMMessageListItemChange *)self date];
          if ([EMInternalPreferences preferenceEnabled:10])
          {
            absoluteString = [date2 absoluteString];
          }

          else
          {
            v67 = MEMORY[0x1E699B858];
            absoluteString2 = [date2 absoluteString];
            absoluteString = [v67 fullyRedactedStringForString:absoluteString2];
          }

          goto LABEL_11;
        }

        date2 = [(EMMessageListItemChange *)self date];
        v10 = [date2 description];
      }
    }

    absoluteString = v10;
LABEL_11:

    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"date: %@", absoluteString];
    [v7 addObject:v17];
  }

  displayDate = [(EMMessageListItemChange *)self displayDate];

  if (!displayDate)
  {
    goto LABEL_23;
  }

  if (descriptionsCopy)
  {
    displayDate2 = [(EMMessageListItemChange *)self displayDate];
    v20 = [displayDate2 debugDescription];
  }

  else
  {
    displayDate3 = [(EMMessageListItemChange *)self displayDate];
    objc_opt_class();
    v22 = objc_opt_isKindOfClass();

    if (v22)
    {
      v23 = MEMORY[0x1E699B858];
      displayDate2 = [(EMMessageListItemChange *)self displayDate];
      v20 = [v23 partiallyRedactedStringForString:displayDate2];
    }

    else
    {
      displayDate4 = [(EMMessageListItemChange *)self displayDate];
      objc_opt_class();
      v25 = objc_opt_isKindOfClass();

      if (v25)
      {
        displayDate2 = [(EMMessageListItemChange *)self displayDate];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString3 = [displayDate2 absoluteString];
        }

        else
        {
          v69 = MEMORY[0x1E699B858];
          absoluteString4 = [displayDate2 absoluteString];
          absoluteString3 = [v69 fullyRedactedStringForString:absoluteString4];
        }

        goto LABEL_22;
      }

      displayDate2 = [(EMMessageListItemChange *)self displayDate];
      v20 = [displayDate2 description];
    }
  }

  absoluteString3 = v20;
LABEL_22:

  v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"displayDate: %@", absoluteString3];
  [v7 addObject:v27];

LABEL_23:
  readLater = [(EMMessageListItemChange *)self readLater];

  if (!readLater)
  {
    goto LABEL_34;
  }

  if (descriptionsCopy)
  {
    readLater2 = [(EMMessageListItemChange *)self readLater];
    v30 = [readLater2 debugDescription];
  }

  else
  {
    readLater3 = [(EMMessageListItemChange *)self readLater];
    objc_opt_class();
    v32 = objc_opt_isKindOfClass();

    if (v32)
    {
      v33 = MEMORY[0x1E699B858];
      readLater2 = [(EMMessageListItemChange *)self readLater];
      v30 = [v33 partiallyRedactedStringForString:readLater2];
    }

    else
    {
      readLater4 = [(EMMessageListItemChange *)self readLater];
      objc_opt_class();
      v35 = objc_opt_isKindOfClass();

      if (v35)
      {
        readLater2 = [(EMMessageListItemChange *)self readLater];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString5 = [readLater2 absoluteString];
        }

        else
        {
          v71 = MEMORY[0x1E699B858];
          absoluteString6 = [readLater2 absoluteString];
          absoluteString5 = [v71 fullyRedactedStringForString:absoluteString6];
        }

        goto LABEL_33;
      }

      readLater2 = [(EMMessageListItemChange *)self readLater];
      v30 = [readLater2 description];
    }
  }

  absoluteString5 = v30;
LABEL_33:

  v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"readLater: %@", absoluteString5];
  [v7 addObject:v37];

LABEL_34:
  sendLaterDate = [(EMMessageListItemChange *)self sendLaterDate];

  if (!sendLaterDate)
  {
    goto LABEL_45;
  }

  if (descriptionsCopy)
  {
    sendLaterDate2 = [(EMMessageListItemChange *)self sendLaterDate];
    v40 = [sendLaterDate2 debugDescription];
  }

  else
  {
    sendLaterDate3 = [(EMMessageListItemChange *)self sendLaterDate];
    objc_opt_class();
    v42 = objc_opt_isKindOfClass();

    if (v42)
    {
      v43 = MEMORY[0x1E699B858];
      sendLaterDate2 = [(EMMessageListItemChange *)self sendLaterDate];
      v40 = [v43 partiallyRedactedStringForString:sendLaterDate2];
    }

    else
    {
      sendLaterDate4 = [(EMMessageListItemChange *)self sendLaterDate];
      objc_opt_class();
      v45 = objc_opt_isKindOfClass();

      if (v45)
      {
        sendLaterDate2 = [(EMMessageListItemChange *)self sendLaterDate];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString7 = [sendLaterDate2 absoluteString];
        }

        else
        {
          v73 = MEMORY[0x1E699B858];
          absoluteString8 = [sendLaterDate2 absoluteString];
          absoluteString7 = [v73 fullyRedactedStringForString:absoluteString8];
        }

        goto LABEL_44;
      }

      sendLaterDate2 = [(EMMessageListItemChange *)self sendLaterDate];
      v40 = [sendLaterDate2 description];
    }
  }

  absoluteString7 = v40;
LABEL_44:

  v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"sendLaterDate: %@", absoluteString7];
  [v7 addObject:v47];

LABEL_45:
  followUp = [(EMMessageListItemChange *)self followUp];

  if (!followUp)
  {
    goto LABEL_56;
  }

  if (descriptionsCopy)
  {
    followUp2 = [(EMMessageListItemChange *)self followUp];
    v50 = [followUp2 debugDescription];
  }

  else
  {
    followUp3 = [(EMMessageListItemChange *)self followUp];
    objc_opt_class();
    v52 = objc_opt_isKindOfClass();

    if (v52)
    {
      v53 = MEMORY[0x1E699B858];
      followUp2 = [(EMMessageListItemChange *)self followUp];
      v50 = [v53 partiallyRedactedStringForString:followUp2];
    }

    else
    {
      followUp4 = [(EMMessageListItemChange *)self followUp];
      objc_opt_class();
      v55 = objc_opt_isKindOfClass();

      if (v55)
      {
        followUp2 = [(EMMessageListItemChange *)self followUp];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString9 = [followUp2 absoluteString];
        }

        else
        {
          v75 = MEMORY[0x1E699B858];
          absoluteString10 = [followUp2 absoluteString];
          absoluteString9 = [v75 fullyRedactedStringForString:absoluteString10];
        }

        goto LABEL_55;
      }

      followUp2 = [(EMMessageListItemChange *)self followUp];
      v50 = [followUp2 description];
    }
  }

  absoluteString9 = v50;
LABEL_55:

  v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"followUp: %@", absoluteString9];
  [v7 addObject:v57];

LABEL_56:
  subject = [(EMMessageListItemChange *)self subject];

  if (!subject)
  {
    goto LABEL_79;
  }

  if (!internalCopy)
  {
    [v7 addObject:@"subject"];
    goto LABEL_79;
  }

  if (descriptionsCopy)
  {
    subject2 = [(EMMessageListItemChange *)self subject];
    v60 = [subject2 debugDescription];
  }

  else
  {
    subject3 = [(EMMessageListItemChange *)self subject];
    objc_opt_class();
    v62 = objc_opt_isKindOfClass();

    if (v62)
    {
      v63 = MEMORY[0x1E699B858];
      subject2 = [(EMMessageListItemChange *)self subject];
      v60 = [v63 partiallyRedactedStringForString:subject2];
    }

    else
    {
      subject4 = [(EMMessageListItemChange *)self subject];
      objc_opt_class();
      v65 = objc_opt_isKindOfClass();

      if (v65)
      {
        subject2 = [(EMMessageListItemChange *)self subject];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString11 = [subject2 absoluteString];
        }

        else
        {
          v142 = MEMORY[0x1E699B858];
          absoluteString12 = [subject2 absoluteString];
          absoluteString11 = [v142 fullyRedactedStringForString:absoluteString12];
        }

        goto LABEL_78;
      }

      subject2 = [(EMMessageListItemChange *)self subject];
      v60 = [subject2 description];
    }
  }

  absoluteString11 = v60;
LABEL_78:

  v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"subject: %@", absoluteString11];
  [v7 addObject:v77];

LABEL_79:
  businessID = [(EMMessageListItemChange *)self businessID];

  if (!businessID)
  {
    goto LABEL_90;
  }

  if (descriptionsCopy)
  {
    businessID2 = [(EMMessageListItemChange *)self businessID];
    v80 = [businessID2 debugDescription];
  }

  else
  {
    businessID3 = [(EMMessageListItemChange *)self businessID];
    objc_opt_class();
    v82 = objc_opt_isKindOfClass();

    if (v82)
    {
      v83 = MEMORY[0x1E699B858];
      businessID2 = [(EMMessageListItemChange *)self businessID];
      v80 = [v83 partiallyRedactedStringForString:businessID2];
    }

    else
    {
      businessID4 = [(EMMessageListItemChange *)self businessID];
      objc_opt_class();
      v85 = objc_opt_isKindOfClass();

      if (v85)
      {
        businessID2 = [(EMMessageListItemChange *)self businessID];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString13 = [businessID2 absoluteString];
        }

        else
        {
          v127 = MEMORY[0x1E699B858];
          absoluteString14 = [businessID2 absoluteString];
          absoluteString13 = [v127 fullyRedactedStringForString:absoluteString14];
        }

        goto LABEL_89;
      }

      businessID2 = [(EMMessageListItemChange *)self businessID];
      v80 = [businessID2 description];
    }
  }

  absoluteString13 = v80;
LABEL_89:

  v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"businessID: %@", absoluteString13];
  [v7 addObject:v87];

LABEL_90:
  businessLogoID = [(EMMessageListItemChange *)self businessLogoID];

  if (!businessLogoID)
  {
    goto LABEL_101;
  }

  if (descriptionsCopy)
  {
    businessLogoID2 = [(EMMessageListItemChange *)self businessLogoID];
    v90 = [businessLogoID2 debugDescription];
  }

  else
  {
    businessLogoID3 = [(EMMessageListItemChange *)self businessLogoID];
    objc_opt_class();
    v92 = objc_opt_isKindOfClass();

    if (v92)
    {
      v93 = MEMORY[0x1E699B858];
      businessLogoID2 = [(EMMessageListItemChange *)self businessLogoID];
      v90 = [v93 partiallyRedactedStringForString:businessLogoID2];
    }

    else
    {
      businessLogoID4 = [(EMMessageListItemChange *)self businessLogoID];
      objc_opt_class();
      v95 = objc_opt_isKindOfClass();

      if (v95)
      {
        businessLogoID2 = [(EMMessageListItemChange *)self businessLogoID];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString15 = [businessLogoID2 absoluteString];
        }

        else
        {
          v129 = MEMORY[0x1E699B858];
          absoluteString16 = [businessLogoID2 absoluteString];
          absoluteString15 = [v129 fullyRedactedStringForString:absoluteString16];
        }

        goto LABEL_100;
      }

      businessLogoID2 = [(EMMessageListItemChange *)self businessLogoID];
      v90 = [businessLogoID2 description];
    }
  }

  absoluteString15 = v90;
LABEL_100:

  v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"businessLogoID: %@", absoluteString15];
  [v7 addObject:v97];

LABEL_101:
  brandIndicatorLocation = [(EMMessageListItemChange *)self brandIndicatorLocation];

  if (!brandIndicatorLocation)
  {
    goto LABEL_112;
  }

  if (descriptionsCopy)
  {
    brandIndicatorLocation2 = [(EMMessageListItemChange *)self brandIndicatorLocation];
    v100 = [brandIndicatorLocation2 debugDescription];
  }

  else
  {
    brandIndicatorLocation3 = [(EMMessageListItemChange *)self brandIndicatorLocation];
    objc_opt_class();
    v102 = objc_opt_isKindOfClass();

    if (v102)
    {
      v103 = MEMORY[0x1E699B858];
      brandIndicatorLocation2 = [(EMMessageListItemChange *)self brandIndicatorLocation];
      v100 = [v103 partiallyRedactedStringForString:brandIndicatorLocation2];
    }

    else
    {
      brandIndicatorLocation4 = [(EMMessageListItemChange *)self brandIndicatorLocation];
      objc_opt_class();
      v105 = objc_opt_isKindOfClass();

      if (v105)
      {
        brandIndicatorLocation2 = [(EMMessageListItemChange *)self brandIndicatorLocation];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString17 = [brandIndicatorLocation2 absoluteString];
        }

        else
        {
          v131 = MEMORY[0x1E699B858];
          absoluteString18 = [brandIndicatorLocation2 absoluteString];
          absoluteString17 = [v131 fullyRedactedStringForString:absoluteString18];
        }

        goto LABEL_111;
      }

      brandIndicatorLocation2 = [(EMMessageListItemChange *)self brandIndicatorLocation];
      v100 = [brandIndicatorLocation2 description];
    }
  }

  absoluteString17 = v100;
LABEL_111:

  v106 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"brandIndicatorLocation: %@", absoluteString17];
  [v7 addObject:v106];

LABEL_112:
  category = [(EMMessageListItemChange *)self category];

  if (!category)
  {
    goto LABEL_123;
  }

  if (descriptionsCopy)
  {
    category2 = [(EMMessageListItemChange *)self category];
    v110 = [category2 debugDescription];
  }

  else
  {
    category3 = [(EMMessageListItemChange *)self category];
    objc_opt_class();
    v112 = objc_opt_isKindOfClass();

    if (v112)
    {
      v113 = MEMORY[0x1E699B858];
      category2 = [(EMMessageListItemChange *)self category];
      v110 = [v113 partiallyRedactedStringForString:category2];
    }

    else
    {
      category4 = [(EMMessageListItemChange *)self category];
      objc_opt_class();
      v115 = objc_opt_isKindOfClass();

      if (v115)
      {
        category2 = [(EMMessageListItemChange *)self category];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString19 = [category2 absoluteString];
        }

        else
        {
          v133 = MEMORY[0x1E699B858];
          absoluteString20 = [category2 absoluteString];
          absoluteString19 = [v133 fullyRedactedStringForString:absoluteString20];
        }

        goto LABEL_122;
      }

      category2 = [(EMMessageListItemChange *)self category];
      v110 = [category2 description];
    }
  }

  absoluteString19 = v110;
LABEL_122:

  v116 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"category: %@", absoluteString19];
  [v7 addObject:v116];

LABEL_123:
  summary = [(EMMessageListItemChange *)self summary];

  if (summary)
  {
    if (internalCopy)
    {
      if (descriptionsCopy)
      {
        summary2 = [(EMMessageListItemChange *)self summary];
        v120 = [summary2 debugDescription];
      }

      else
      {
        summary3 = [(EMMessageListItemChange *)self summary];
        objc_opt_class();
        v122 = objc_opt_isKindOfClass();

        if (v122)
        {
          v123 = MEMORY[0x1E699B858];
          summary2 = [(EMMessageListItemChange *)self summary];
          v120 = [v123 partiallyRedactedStringForString:summary2];
        }

        else
        {
          summary4 = [(EMMessageListItemChange *)self summary];
          objc_opt_class();
          v125 = objc_opt_isKindOfClass();

          if (v125)
          {
            summary2 = [(EMMessageListItemChange *)self summary];
            if ([EMInternalPreferences preferenceEnabled:10])
            {
              absoluteString21 = [summary2 absoluteString];
            }

            else
            {
              v144 = MEMORY[0x1E699B858];
              absoluteString22 = [summary2 absoluteString];
              absoluteString21 = [v144 fullyRedactedStringForString:absoluteString22];
            }

            goto LABEL_143;
          }

          summary2 = [(EMMessageListItemChange *)self summary];
          v120 = [summary2 description];
        }
      }

      absoluteString21 = v120;
LABEL_143:

      v126 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"summary: %@", absoluteString21];
      [v7 addObject:v126];

      goto LABEL_144;
    }

    [v7 addObject:@"summary"];
  }

LABEL_144:
  if (_os_feature_enabled_impl())
  {
    if (EMIsGreymatterSupported())
    {
      generatedSummary = [(EMMessageListItemChange *)self generatedSummary];

      if (generatedSummary)
      {
        if (!internalCopy)
        {
          [v7 addObject:@"generatedSummary"];
          goto LABEL_163;
        }

        if (descriptionsCopy)
        {
          generatedSummary2 = [(EMMessageListItemChange *)self generatedSummary];
          v138 = [generatedSummary2 debugDescription];
        }

        else
        {
          generatedSummary3 = [(EMMessageListItemChange *)self generatedSummary];
          objc_opt_class();
          v140 = objc_opt_isKindOfClass();

          if (v140)
          {
            v141 = MEMORY[0x1E699B858];
            generatedSummary2 = [(EMMessageListItemChange *)self generatedSummary];
            v138 = [v141 partiallyRedactedStringForString:generatedSummary2];
          }

          else
          {
            generatedSummary4 = [(EMMessageListItemChange *)self generatedSummary];
            objc_opt_class();
            v147 = objc_opt_isKindOfClass();

            if (v147)
            {
              generatedSummary2 = [(EMMessageListItemChange *)self generatedSummary];
              if ([EMInternalPreferences preferenceEnabled:10])
              {
                absoluteString23 = [generatedSummary2 absoluteString];
              }

              else
              {
                v368 = MEMORY[0x1E699B858];
                absoluteString24 = [generatedSummary2 absoluteString];
                absoluteString23 = [v368 fullyRedactedStringForString:absoluteString24];
              }

              goto LABEL_162;
            }

            generatedSummary2 = [(EMMessageListItemChange *)self generatedSummary];
            v138 = [generatedSummary2 description];
          }
        }

        absoluteString23 = v138;
LABEL_162:

        v148 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"generatedSummary: %@", absoluteString23];
        [v7 addObject:v148];
      }
    }
  }

LABEL_163:
  senderList = [(EMMessageListItemChange *)self senderList];

  if (!senderList)
  {
    goto LABEL_176;
  }

  if (!internalCopy)
  {
    [v7 addObject:@"senderList"];
    goto LABEL_176;
  }

  if (descriptionsCopy)
  {
    senderList2 = [(EMMessageListItemChange *)self senderList];
    v152 = [senderList2 debugDescription];
  }

  else
  {
    senderList3 = [(EMMessageListItemChange *)self senderList];
    objc_opt_class();
    v154 = objc_opt_isKindOfClass();

    if (v154)
    {
      v155 = MEMORY[0x1E699B858];
      senderList2 = [(EMMessageListItemChange *)self senderList];
      v152 = [v155 partiallyRedactedStringForString:senderList2];
    }

    else
    {
      senderList4 = [(EMMessageListItemChange *)self senderList];
      objc_opt_class();
      v157 = objc_opt_isKindOfClass();

      if (v157)
      {
        senderList2 = [(EMMessageListItemChange *)self senderList];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString25 = [senderList2 absoluteString];
        }

        else
        {
          v358 = MEMORY[0x1E699B858];
          absoluteString26 = [senderList2 absoluteString];
          absoluteString25 = [v358 fullyRedactedStringForString:absoluteString26];
        }

        goto LABEL_175;
      }

      senderList2 = [(EMMessageListItemChange *)self senderList];
      v152 = [senderList2 description];
    }
  }

  absoluteString25 = v152;
LABEL_175:

  v158 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"senderList: %@", absoluteString25];
  [v7 addObject:v158];

LABEL_176:
  toList = [(EMMessageListItemChange *)self toList];

  if (!toList)
  {
    goto LABEL_189;
  }

  if (!internalCopy)
  {
    [v7 addObject:@"toList"];
    goto LABEL_189;
  }

  if (descriptionsCopy)
  {
    toList2 = [(EMMessageListItemChange *)self toList];
    v162 = [toList2 debugDescription];
  }

  else
  {
    toList3 = [(EMMessageListItemChange *)self toList];
    objc_opt_class();
    v164 = objc_opt_isKindOfClass();

    if (v164)
    {
      v165 = MEMORY[0x1E699B858];
      toList2 = [(EMMessageListItemChange *)self toList];
      v162 = [v165 partiallyRedactedStringForString:toList2];
    }

    else
    {
      toList4 = [(EMMessageListItemChange *)self toList];
      objc_opt_class();
      v167 = objc_opt_isKindOfClass();

      if (v167)
      {
        toList2 = [(EMMessageListItemChange *)self toList];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString27 = [toList2 absoluteString];
        }

        else
        {
          v360 = MEMORY[0x1E699B858];
          absoluteString28 = [toList2 absoluteString];
          absoluteString27 = [v360 fullyRedactedStringForString:absoluteString28];
        }

        goto LABEL_188;
      }

      toList2 = [(EMMessageListItemChange *)self toList];
      v162 = [toList2 description];
    }
  }

  absoluteString27 = v162;
LABEL_188:

  v168 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"toList: %@", absoluteString27];
  [v7 addObject:v168];

LABEL_189:
  ccList = [(EMMessageListItemChange *)self ccList];

  if (!ccList)
  {
    goto LABEL_202;
  }

  if (!internalCopy)
  {
    [v7 addObject:@"ccList"];
    goto LABEL_202;
  }

  if (descriptionsCopy)
  {
    ccList2 = [(EMMessageListItemChange *)self ccList];
    v172 = [ccList2 debugDescription];
  }

  else
  {
    ccList3 = [(EMMessageListItemChange *)self ccList];
    objc_opt_class();
    v174 = objc_opt_isKindOfClass();

    if (v174)
    {
      v175 = MEMORY[0x1E699B858];
      ccList2 = [(EMMessageListItemChange *)self ccList];
      v172 = [v175 partiallyRedactedStringForString:ccList2];
    }

    else
    {
      ccList4 = [(EMMessageListItemChange *)self ccList];
      objc_opt_class();
      v177 = objc_opt_isKindOfClass();

      if (v177)
      {
        ccList2 = [(EMMessageListItemChange *)self ccList];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString29 = [ccList2 absoluteString];
        }

        else
        {
          v362 = MEMORY[0x1E699B858];
          absoluteString30 = [ccList2 absoluteString];
          absoluteString29 = [v362 fullyRedactedStringForString:absoluteString30];
        }

        goto LABEL_201;
      }

      ccList2 = [(EMMessageListItemChange *)self ccList];
      v172 = [ccList2 description];
    }
  }

  absoluteString29 = v172;
LABEL_201:

  v178 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ccList: %@", absoluteString29];
  [v7 addObject:v178];

LABEL_202:
  flags = [(EMMessageListItemChange *)self flags];

  if (!flags)
  {
    goto LABEL_213;
  }

  if (descriptionsCopy)
  {
    flags2 = [(EMMessageListItemChange *)self flags];
    v182 = [flags2 debugDescription];
  }

  else
  {
    flags3 = [(EMMessageListItemChange *)self flags];
    objc_opt_class();
    v184 = objc_opt_isKindOfClass();

    if (v184)
    {
      v185 = MEMORY[0x1E699B858];
      flags2 = [(EMMessageListItemChange *)self flags];
      v182 = [v185 partiallyRedactedStringForString:flags2];
    }

    else
    {
      flags4 = [(EMMessageListItemChange *)self flags];
      objc_opt_class();
      v187 = objc_opt_isKindOfClass();

      if (v187)
      {
        flags2 = [(EMMessageListItemChange *)self flags];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString31 = [flags2 absoluteString];
        }

        else
        {
          v309 = MEMORY[0x1E699B858];
          absoluteString32 = [flags2 absoluteString];
          absoluteString31 = [v309 fullyRedactedStringForString:absoluteString32];
        }

        goto LABEL_212;
      }

      flags2 = [(EMMessageListItemChange *)self flags];
      v182 = [flags2 description];
    }
  }

  absoluteString31 = v182;
LABEL_212:

  v188 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"flags: %@", absoluteString31];
  [v7 addObject:v188];

LABEL_213:
  hasUnflagged = [(EMMessageListItemChange *)self hasUnflagged];

  if (!hasUnflagged)
  {
    goto LABEL_224;
  }

  if (descriptionsCopy)
  {
    hasUnflagged2 = [(EMMessageListItemChange *)self hasUnflagged];
    v192 = [hasUnflagged2 debugDescription];
  }

  else
  {
    hasUnflagged3 = [(EMMessageListItemChange *)self hasUnflagged];
    objc_opt_class();
    v194 = objc_opt_isKindOfClass();

    if (v194)
    {
      v195 = MEMORY[0x1E699B858];
      hasUnflagged2 = [(EMMessageListItemChange *)self hasUnflagged];
      v192 = [v195 partiallyRedactedStringForString:hasUnflagged2];
    }

    else
    {
      hasUnflagged4 = [(EMMessageListItemChange *)self hasUnflagged];
      objc_opt_class();
      v197 = objc_opt_isKindOfClass();

      if (v197)
      {
        hasUnflagged2 = [(EMMessageListItemChange *)self hasUnflagged];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString33 = [hasUnflagged2 absoluteString];
        }

        else
        {
          v311 = MEMORY[0x1E699B858];
          absoluteString34 = [hasUnflagged2 absoluteString];
          absoluteString33 = [v311 fullyRedactedStringForString:absoluteString34];
        }

        goto LABEL_223;
      }

      hasUnflagged2 = [(EMMessageListItemChange *)self hasUnflagged];
      v192 = [hasUnflagged2 description];
    }
  }

  absoluteString33 = v192;
LABEL_223:

  v198 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"hasUnflagged: %@", absoluteString33];
  [v7 addObject:v198];

LABEL_224:
  flagColors = [(EMMessageListItemChange *)self flagColors];

  if (!flagColors)
  {
    goto LABEL_235;
  }

  if (descriptionsCopy)
  {
    flagColors2 = [(EMMessageListItemChange *)self flagColors];
    v202 = [flagColors2 debugDescription];
  }

  else
  {
    flagColors3 = [(EMMessageListItemChange *)self flagColors];
    objc_opt_class();
    v204 = objc_opt_isKindOfClass();

    if (v204)
    {
      v205 = MEMORY[0x1E699B858];
      flagColors2 = [(EMMessageListItemChange *)self flagColors];
      v202 = [v205 partiallyRedactedStringForString:flagColors2];
    }

    else
    {
      flagColors4 = [(EMMessageListItemChange *)self flagColors];
      objc_opt_class();
      v207 = objc_opt_isKindOfClass();

      if (v207)
      {
        flagColors2 = [(EMMessageListItemChange *)self flagColors];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString35 = [flagColors2 absoluteString];
        }

        else
        {
          v313 = MEMORY[0x1E699B858];
          absoluteString36 = [flagColors2 absoluteString];
          absoluteString35 = [v313 fullyRedactedStringForString:absoluteString36];
        }

        goto LABEL_234;
      }

      flagColors2 = [(EMMessageListItemChange *)self flagColors];
      v202 = [flagColors2 description];
    }
  }

  absoluteString35 = v202;
LABEL_234:

  v208 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"flagColors: %@", absoluteString35];
  [v7 addObject:v208];

LABEL_235:
  isVIP = [(EMMessageListItemChange *)self isVIP];

  if (!isVIP)
  {
    goto LABEL_246;
  }

  if (descriptionsCopy)
  {
    isVIP2 = [(EMMessageListItemChange *)self isVIP];
    v212 = [isVIP2 debugDescription];
  }

  else
  {
    isVIP3 = [(EMMessageListItemChange *)self isVIP];
    objc_opt_class();
    v214 = objc_opt_isKindOfClass();

    if (v214)
    {
      v215 = MEMORY[0x1E699B858];
      isVIP2 = [(EMMessageListItemChange *)self isVIP];
      v212 = [v215 partiallyRedactedStringForString:isVIP2];
    }

    else
    {
      isVIP4 = [(EMMessageListItemChange *)self isVIP];
      objc_opt_class();
      v217 = objc_opt_isKindOfClass();

      if (v217)
      {
        isVIP2 = [(EMMessageListItemChange *)self isVIP];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString37 = [isVIP2 absoluteString];
        }

        else
        {
          v315 = MEMORY[0x1E699B858];
          absoluteString38 = [isVIP2 absoluteString];
          absoluteString37 = [v315 fullyRedactedStringForString:absoluteString38];
        }

        goto LABEL_245;
      }

      isVIP2 = [(EMMessageListItemChange *)self isVIP];
      v212 = [isVIP2 description];
    }
  }

  absoluteString37 = v212;
LABEL_245:

  v218 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"isVIP: %@", absoluteString37];
  [v7 addObject:v218];

LABEL_246:
  isBlocked = [(EMMessageListItemChange *)self isBlocked];

  if (!isBlocked)
  {
    goto LABEL_257;
  }

  if (descriptionsCopy)
  {
    isBlocked2 = [(EMMessageListItemChange *)self isBlocked];
    v222 = [isBlocked2 debugDescription];
  }

  else
  {
    isBlocked3 = [(EMMessageListItemChange *)self isBlocked];
    objc_opt_class();
    v224 = objc_opt_isKindOfClass();

    if (v224)
    {
      v225 = MEMORY[0x1E699B858];
      isBlocked2 = [(EMMessageListItemChange *)self isBlocked];
      v222 = [v225 partiallyRedactedStringForString:isBlocked2];
    }

    else
    {
      isBlocked4 = [(EMMessageListItemChange *)self isBlocked];
      objc_opt_class();
      v227 = objc_opt_isKindOfClass();

      if (v227)
      {
        isBlocked2 = [(EMMessageListItemChange *)self isBlocked];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString39 = [isBlocked2 absoluteString];
        }

        else
        {
          v317 = MEMORY[0x1E699B858];
          absoluteString40 = [isBlocked2 absoluteString];
          absoluteString39 = [v317 fullyRedactedStringForString:absoluteString40];
        }

        goto LABEL_256;
      }

      isBlocked2 = [(EMMessageListItemChange *)self isBlocked];
      v222 = [isBlocked2 description];
    }
  }

  absoluteString39 = v222;
LABEL_256:

  v228 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"isBlocked: %@", absoluteString39];
  [v7 addObject:v228];

LABEL_257:
  searchResultType = [(EMMessageListItemChange *)self searchResultType];

  if (!searchResultType)
  {
    goto LABEL_268;
  }

  if (descriptionsCopy)
  {
    searchResultType2 = [(EMMessageListItemChange *)self searchResultType];
    v232 = [searchResultType2 debugDescription];
  }

  else
  {
    searchResultType3 = [(EMMessageListItemChange *)self searchResultType];
    objc_opt_class();
    v234 = objc_opt_isKindOfClass();

    if (v234)
    {
      v235 = MEMORY[0x1E699B858];
      searchResultType2 = [(EMMessageListItemChange *)self searchResultType];
      v232 = [v235 partiallyRedactedStringForString:searchResultType2];
    }

    else
    {
      searchResultType4 = [(EMMessageListItemChange *)self searchResultType];
      objc_opt_class();
      v237 = objc_opt_isKindOfClass();

      if (v237)
      {
        searchResultType2 = [(EMMessageListItemChange *)self searchResultType];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString41 = [searchResultType2 absoluteString];
        }

        else
        {
          v319 = MEMORY[0x1E699B858];
          absoluteString42 = [searchResultType2 absoluteString];
          absoluteString41 = [v319 fullyRedactedStringForString:absoluteString42];
        }

        goto LABEL_267;
      }

      searchResultType2 = [(EMMessageListItemChange *)self searchResultType];
      v232 = [searchResultType2 description];
    }
  }

  absoluteString41 = v232;
LABEL_267:

  v238 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"searchResultType: %@", absoluteString41];
  [v7 addObject:v238];

LABEL_268:
  searchRelevanceScore = [(EMMessageListItemChange *)self searchRelevanceScore];

  if (!searchRelevanceScore)
  {
    goto LABEL_279;
  }

  if (descriptionsCopy)
  {
    searchRelevanceScore2 = [(EMMessageListItemChange *)self searchRelevanceScore];
    v242 = [searchRelevanceScore2 debugDescription];
  }

  else
  {
    searchRelevanceScore3 = [(EMMessageListItemChange *)self searchRelevanceScore];
    objc_opt_class();
    v244 = objc_opt_isKindOfClass();

    if (v244)
    {
      v245 = MEMORY[0x1E699B858];
      searchRelevanceScore2 = [(EMMessageListItemChange *)self searchRelevanceScore];
      v242 = [v245 partiallyRedactedStringForString:searchRelevanceScore2];
    }

    else
    {
      searchRelevanceScore4 = [(EMMessageListItemChange *)self searchRelevanceScore];
      objc_opt_class();
      v247 = objc_opt_isKindOfClass();

      if (v247)
      {
        searchRelevanceScore2 = [(EMMessageListItemChange *)self searchRelevanceScore];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString43 = [searchRelevanceScore2 absoluteString];
        }

        else
        {
          v321 = MEMORY[0x1E699B858];
          absoluteString44 = [searchRelevanceScore2 absoluteString];
          absoluteString43 = [v321 fullyRedactedStringForString:absoluteString44];
        }

        goto LABEL_278;
      }

      searchRelevanceScore2 = [(EMMessageListItemChange *)self searchRelevanceScore];
      v242 = [searchRelevanceScore2 description];
    }
  }

  absoluteString43 = v242;
LABEL_278:

  v248 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"searchRelevanceScore: %@", absoluteString43];
  [v7 addObject:v248];

LABEL_279:
  unsubscribeType = [(EMMessageListItemChange *)self unsubscribeType];

  if (!unsubscribeType)
  {
    goto LABEL_290;
  }

  if (descriptionsCopy)
  {
    unsubscribeType2 = [(EMMessageListItemChange *)self unsubscribeType];
    v252 = [unsubscribeType2 debugDescription];
  }

  else
  {
    unsubscribeType3 = [(EMMessageListItemChange *)self unsubscribeType];
    objc_opt_class();
    v254 = objc_opt_isKindOfClass();

    if (v254)
    {
      v255 = MEMORY[0x1E699B858];
      unsubscribeType2 = [(EMMessageListItemChange *)self unsubscribeType];
      v252 = [v255 partiallyRedactedStringForString:unsubscribeType2];
    }

    else
    {
      unsubscribeType4 = [(EMMessageListItemChange *)self unsubscribeType];
      objc_opt_class();
      v257 = objc_opt_isKindOfClass();

      if (v257)
      {
        unsubscribeType2 = [(EMMessageListItemChange *)self unsubscribeType];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString45 = [unsubscribeType2 absoluteString];
        }

        else
        {
          v323 = MEMORY[0x1E699B858];
          absoluteString46 = [unsubscribeType2 absoluteString];
          absoluteString45 = [v323 fullyRedactedStringForString:absoluteString46];
        }

        goto LABEL_289;
      }

      unsubscribeType2 = [(EMMessageListItemChange *)self unsubscribeType];
      v252 = [unsubscribeType2 description];
    }
  }

  absoluteString45 = v252;
LABEL_289:

  v258 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unsubscribeType: %@", absoluteString45];
  [v7 addObject:v258];

LABEL_290:
  hasAttachments = [(EMMessageListItemChange *)self hasAttachments];

  if (!hasAttachments)
  {
    goto LABEL_301;
  }

  if (descriptionsCopy)
  {
    hasAttachments2 = [(EMMessageListItemChange *)self hasAttachments];
    v262 = [hasAttachments2 debugDescription];
  }

  else
  {
    hasAttachments3 = [(EMMessageListItemChange *)self hasAttachments];
    objc_opt_class();
    v264 = objc_opt_isKindOfClass();

    if (v264)
    {
      v265 = MEMORY[0x1E699B858];
      hasAttachments2 = [(EMMessageListItemChange *)self hasAttachments];
      v262 = [v265 partiallyRedactedStringForString:hasAttachments2];
    }

    else
    {
      hasAttachments4 = [(EMMessageListItemChange *)self hasAttachments];
      objc_opt_class();
      v267 = objc_opt_isKindOfClass();

      if (v267)
      {
        hasAttachments2 = [(EMMessageListItemChange *)self hasAttachments];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString47 = [hasAttachments2 absoluteString];
        }

        else
        {
          v325 = MEMORY[0x1E699B858];
          absoluteString48 = [hasAttachments2 absoluteString];
          absoluteString47 = [v325 fullyRedactedStringForString:absoluteString48];
        }

        goto LABEL_300;
      }

      hasAttachments2 = [(EMMessageListItemChange *)self hasAttachments];
      v262 = [hasAttachments2 description];
    }
  }

  absoluteString47 = v262;
LABEL_300:

  v268 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"hasAttachments: %@", absoluteString47];
  [v7 addObject:v268];

LABEL_301:
  conversationNotificationLevel = [(EMMessageListItemChange *)self conversationNotificationLevel];

  if (!conversationNotificationLevel)
  {
    goto LABEL_312;
  }

  if (descriptionsCopy)
  {
    conversationNotificationLevel2 = [(EMMessageListItemChange *)self conversationNotificationLevel];
    v272 = [conversationNotificationLevel2 debugDescription];
  }

  else
  {
    conversationNotificationLevel3 = [(EMMessageListItemChange *)self conversationNotificationLevel];
    objc_opt_class();
    v274 = objc_opt_isKindOfClass();

    if (v274)
    {
      v275 = MEMORY[0x1E699B858];
      conversationNotificationLevel2 = [(EMMessageListItemChange *)self conversationNotificationLevel];
      v272 = [v275 partiallyRedactedStringForString:conversationNotificationLevel2];
    }

    else
    {
      conversationNotificationLevel4 = [(EMMessageListItemChange *)self conversationNotificationLevel];
      objc_opt_class();
      v277 = objc_opt_isKindOfClass();

      if (v277)
      {
        conversationNotificationLevel2 = [(EMMessageListItemChange *)self conversationNotificationLevel];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString49 = [conversationNotificationLevel2 absoluteString];
        }

        else
        {
          v327 = MEMORY[0x1E699B858];
          absoluteString50 = [conversationNotificationLevel2 absoluteString];
          absoluteString49 = [v327 fullyRedactedStringForString:absoluteString50];
        }

        goto LABEL_311;
      }

      conversationNotificationLevel2 = [(EMMessageListItemChange *)self conversationNotificationLevel];
      v272 = [conversationNotificationLevel2 description];
    }
  }

  absoluteString49 = v272;
LABEL_311:

  v278 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"conversationNotificationLevel: %@", absoluteString49];
  [v7 addObject:v278];

LABEL_312:
  v280 = [(EMMessageListItemChange *)self count];

  if (!v280)
  {
    goto LABEL_323;
  }

  if (descriptionsCopy)
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
          absoluteString51 = [v281 absoluteString];
        }

        else
        {
          v329 = MEMORY[0x1E699B858];
          absoluteString52 = [v281 absoluteString];
          absoluteString51 = [v329 fullyRedactedStringForString:absoluteString52];
        }

        goto LABEL_322;
      }

      v281 = [(EMMessageListItemChange *)self count];
      v282 = [v281 description];
    }
  }

  absoluteString51 = v282;
LABEL_322:

  v288 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"count: %@", absoluteString51];
  [v7 addObject:v288];

LABEL_323:
  mailboxObjectIDs = [(EMMessageListItemChange *)self mailboxObjectIDs];

  if (!mailboxObjectIDs)
  {
    goto LABEL_334;
  }

  if (descriptionsCopy)
  {
    mailboxObjectIDs2 = [(EMMessageListItemChange *)self mailboxObjectIDs];
    v292 = [mailboxObjectIDs2 debugDescription];
  }

  else
  {
    mailboxObjectIDs3 = [(EMMessageListItemChange *)self mailboxObjectIDs];
    objc_opt_class();
    v294 = objc_opt_isKindOfClass();

    if (v294)
    {
      v295 = MEMORY[0x1E699B858];
      mailboxObjectIDs2 = [(EMMessageListItemChange *)self mailboxObjectIDs];
      v292 = [v295 partiallyRedactedStringForString:mailboxObjectIDs2];
    }

    else
    {
      mailboxObjectIDs4 = [(EMMessageListItemChange *)self mailboxObjectIDs];
      objc_opt_class();
      v297 = objc_opt_isKindOfClass();

      if (v297)
      {
        mailboxObjectIDs2 = [(EMMessageListItemChange *)self mailboxObjectIDs];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString53 = [mailboxObjectIDs2 absoluteString];
        }

        else
        {
          v331 = MEMORY[0x1E699B858];
          absoluteString54 = [mailboxObjectIDs2 absoluteString];
          absoluteString53 = [v331 fullyRedactedStringForString:absoluteString54];
        }

        goto LABEL_333;
      }

      mailboxObjectIDs2 = [(EMMessageListItemChange *)self mailboxObjectIDs];
      v292 = [mailboxObjectIDs2 description];
    }
  }

  absoluteString53 = v292;
LABEL_333:

  v298 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"mailboxObjectIDs: %@", absoluteString53];
  [v7 addObject:v298];

LABEL_334:
  mailboxes = [(EMMessageListItemChange *)self mailboxes];

  if (!mailboxes)
  {
    goto LABEL_371;
  }

  if (!internalCopy)
  {
    [v7 addObject:@"mailboxes"];
    goto LABEL_371;
  }

  if (descriptionsCopy)
  {
    mailboxes2 = [(EMMessageListItemChange *)self mailboxes];
    v302 = [mailboxes2 debugDescription];
  }

  else
  {
    mailboxes3 = [(EMMessageListItemChange *)self mailboxes];
    objc_opt_class();
    v304 = objc_opt_isKindOfClass();

    if (v304)
    {
      v305 = MEMORY[0x1E699B858];
      mailboxes2 = [(EMMessageListItemChange *)self mailboxes];
      v302 = [v305 partiallyRedactedStringForString:mailboxes2];
    }

    else
    {
      mailboxes4 = [(EMMessageListItemChange *)self mailboxes];
      objc_opt_class();
      v307 = objc_opt_isKindOfClass();

      if (v307)
      {
        mailboxes2 = [(EMMessageListItemChange *)self mailboxes];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString55 = [mailboxes2 absoluteString];
        }

        else
        {
          v364 = MEMORY[0x1E699B858];
          absoluteString56 = [mailboxes2 absoluteString];
          absoluteString55 = [v364 fullyRedactedStringForString:absoluteString56];
        }

        goto LABEL_370;
      }

      mailboxes2 = [(EMMessageListItemChange *)self mailboxes];
      v302 = [mailboxes2 description];
    }
  }

  absoluteString55 = v302;
LABEL_370:

  v308 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"mailboxes: %@", absoluteString55];
  [v7 addObject:v308];

LABEL_371:
  displayMessageItemID = [(EMMessageListItemChange *)self displayMessageItemID];

  if (!displayMessageItemID)
  {
    goto LABEL_382;
  }

  if (descriptionsCopy)
  {
    displayMessageItemID2 = [(EMMessageListItemChange *)self displayMessageItemID];
    v336 = [displayMessageItemID2 debugDescription];
  }

  else
  {
    displayMessageItemID3 = [(EMMessageListItemChange *)self displayMessageItemID];
    objc_opt_class();
    v338 = objc_opt_isKindOfClass();

    if (v338)
    {
      v339 = MEMORY[0x1E699B858];
      displayMessageItemID2 = [(EMMessageListItemChange *)self displayMessageItemID];
      v336 = [v339 partiallyRedactedStringForString:displayMessageItemID2];
    }

    else
    {
      displayMessageItemID4 = [(EMMessageListItemChange *)self displayMessageItemID];
      objc_opt_class();
      v341 = objc_opt_isKindOfClass();

      if (v341)
      {
        displayMessageItemID2 = [(EMMessageListItemChange *)self displayMessageItemID];
        if ([EMInternalPreferences preferenceEnabled:10])
        {
          absoluteString57 = [displayMessageItemID2 absoluteString];
        }

        else
        {
          v353 = MEMORY[0x1E699B858];
          absoluteString58 = [displayMessageItemID2 absoluteString];
          absoluteString57 = [v353 fullyRedactedStringForString:absoluteString58];
        }

        goto LABEL_381;
      }

      displayMessageItemID2 = [(EMMessageListItemChange *)self displayMessageItemID];
      v336 = [displayMessageItemID2 description];
    }
  }

  absoluteString57 = v336;
LABEL_381:

  v342 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"displayMessageItemID: %@", absoluteString57];
  [v7 addObject:v342];

LABEL_382:
  groupedSenderMessageListItems = [(EMMessageListItemChange *)self groupedSenderMessageListItems];

  if (groupedSenderMessageListItems)
  {
    if (internalCopy)
    {
      if (descriptionsCopy)
      {
        groupedSenderMessageListItems2 = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
        v346 = [groupedSenderMessageListItems2 debugDescription];
      }

      else
      {
        groupedSenderMessageListItems3 = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
        objc_opt_class();
        v348 = objc_opt_isKindOfClass();

        if (v348)
        {
          v349 = MEMORY[0x1E699B858];
          groupedSenderMessageListItems2 = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
          v346 = [v349 partiallyRedactedStringForString:groupedSenderMessageListItems2];
        }

        else
        {
          groupedSenderMessageListItems4 = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
          objc_opt_class();
          v351 = objc_opt_isKindOfClass();

          if (v351)
          {
            groupedSenderMessageListItems2 = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
            if ([EMInternalPreferences preferenceEnabled:10])
            {
              absoluteString59 = [groupedSenderMessageListItems2 absoluteString];
            }

            else
            {
              v366 = MEMORY[0x1E699B858];
              absoluteString60 = [groupedSenderMessageListItems2 absoluteString];
              absoluteString59 = [v366 fullyRedactedStringForString:absoluteString60];
            }

            goto LABEL_396;
          }

          groupedSenderMessageListItems2 = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
          v346 = [groupedSenderMessageListItems2 description];
        }
      }

      absoluteString59 = v346;
LABEL_396:

      v352 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"groupedSenderMessageListItems: %@", absoluteString59];
      [v7 addObject:v352];

      goto LABEL_397;
    }

    [v7 addObject:@"groupedSenderMessageListItems"];
  }

LABEL_397:
  v356 = v7;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
    goto LABEL_92;
  }

  if (([(EMMessageListItemChange *)equalCopy isMemberOfClass:objc_opt_class()]& 1) == 0)
  {
    v8 = 0;
    goto LABEL_92;
  }

  v5 = equalCopy;
  v88 = v5;
  date = [(EMMessageListItemChange *)self date];
  v87 = date;
  date2 = [(EMMessageListItemChange *)v5 date];
  v7 = EFObjectsAreEqual();
  v85 = v7;
  if (v7)
  {
    readLater = [(EMMessageListItemChange *)self readLater];
    readLater2 = [(EMMessageListItemChange *)v5 readLater];
    if (EFObjectsAreEqual())
    {
      sendLaterDate = [(EMMessageListItemChange *)self sendLaterDate];
      sendLaterDate2 = [(EMMessageListItemChange *)v5 sendLaterDate];
      if (EFObjectsAreEqual())
      {
        followUp = [(EMMessageListItemChange *)self followUp];
        followUp2 = [(EMMessageListItemChange *)v5 followUp];
        if (EFObjectsAreEqual())
        {
          subject = [(EMMessageListItemChange *)self subject];
          subject2 = [(EMMessageListItemChange *)v5 subject];
          if (EFObjectsAreEqual())
          {
            summary = [(EMMessageListItemChange *)self summary];
            summary2 = [(EMMessageListItemChange *)v5 summary];
            if (EFObjectsAreEqual())
            {
              generatedSummary = [(EMMessageListItemChange *)self generatedSummary];
              generatedSummary2 = [(EMMessageListItemChange *)v5 generatedSummary];
              if (EFObjectsAreEqual())
              {
                senderList = [(EMMessageListItemChange *)self senderList];
                senderList2 = [(EMMessageListItemChange *)v5 senderList];
                if (EFArraysAreEqual())
                {
                  toList = [(EMMessageListItemChange *)self toList];
                  toList2 = [(EMMessageListItemChange *)v5 toList];
                  if (EFArraysAreEqual())
                  {
                    ccList = [(EMMessageListItemChange *)self ccList];
                    ccList2 = [(EMMessageListItemChange *)v5 ccList];
                    if (EFArraysAreEqual())
                    {
                      flags = [(EMMessageListItemChange *)self flags];
                      flags2 = [(EMMessageListItemChange *)v5 flags];
                      if (EFObjectsAreEqual())
                      {
                        hasUnflagged = [(EMMessageListItemChange *)self hasUnflagged];
                        hasUnflagged2 = [(EMMessageListItemChange *)v5 hasUnflagged];
                        if (EFObjectsAreEqual())
                        {
                          flagColors = [(EMMessageListItemChange *)self flagColors];
                          flagColors2 = [(EMMessageListItemChange *)v5 flagColors];
                          if (EFObjectsAreEqual())
                          {
                            isVIP = [(EMMessageListItemChange *)self isVIP];
                            isVIP2 = [(EMMessageListItemChange *)v5 isVIP];
                            if (EFObjectsAreEqual())
                            {
                              isBlocked = [(EMMessageListItemChange *)self isBlocked];
                              isBlocked2 = [(EMMessageListItemChange *)v5 isBlocked];
                              if (EFObjectsAreEqual())
                              {
                                searchResultType = [(EMMessageListItemChange *)self searchResultType];
                                searchResultType2 = [(EMMessageListItemChange *)v5 searchResultType];
                                if (EFObjectsAreEqual())
                                {
                                  searchRelevanceScore = [(EMMessageListItemChange *)self searchRelevanceScore];
                                  searchRelevanceScore2 = [(EMMessageListItemChange *)v5 searchRelevanceScore];
                                  if (EFObjectsAreEqual())
                                  {
                                    unsubscribeType = [(EMMessageListItemChange *)self unsubscribeType];
                                    unsubscribeType2 = [(EMMessageListItemChange *)v5 unsubscribeType];
                                    if (EFObjectsAreEqual())
                                    {
                                      hasAttachments = [(EMMessageListItemChange *)self hasAttachments];
                                      hasAttachments2 = [(EMMessageListItemChange *)v5 hasAttachments];
                                      if (EFObjectsAreEqual())
                                      {
                                        conversationNotificationLevel = [(EMMessageListItemChange *)self conversationNotificationLevel];
                                        conversationNotificationLevel2 = [(EMMessageListItemChange *)v5 conversationNotificationLevel];
                                        if (EFObjectsAreEqual())
                                        {
                                          v40 = [(EMMessageListItemChange *)self count];
                                          v39 = [(EMMessageListItemChange *)v5 count];
                                          if (EFObjectsAreEqual())
                                          {
                                            conversationID = [(EMMessageListItemChange *)self conversationID];
                                            conversationID2 = [(EMMessageListItemChange *)v5 conversationID];
                                            if (EFObjectsAreEqual())
                                            {
                                              mailboxObjectIDs = [(EMMessageListItemChange *)self mailboxObjectIDs];
                                              mailboxObjectIDs2 = [(EMMessageListItemChange *)v5 mailboxObjectIDs];
                                              if (EFArraysAreEqual())
                                              {
                                                mailboxes = [(EMMessageListItemChange *)self mailboxes];
                                                mailboxes2 = [(EMMessageListItemChange *)v5 mailboxes];
                                                if (EFArraysAreEqual())
                                                {
                                                  displayMessageItemID = [(EMMessageListItemChange *)self displayMessageItemID];
                                                  displayMessageItemID2 = [(EMMessageListItemChange *)v5 displayMessageItemID];
                                                  if (EFObjectsAreEqual())
                                                  {
                                                    businessID = [(EMMessageListItemChange *)self businessID];
                                                    businessID2 = [(EMMessageListItemChange *)v5 businessID];
                                                    if (EFObjectsAreEqual())
                                                    {
                                                      businessLogoID = [(EMMessageListItemChange *)self businessLogoID];
                                                      businessLogoID2 = [(EMMessageListItemChange *)v5 businessLogoID];
                                                      if (EFObjectsAreEqual())
                                                      {
                                                        brandIndicatorLocation = [(EMMessageListItemChange *)self brandIndicatorLocation];
                                                        brandIndicatorLocation2 = [(EMMessageListItemChange *)self brandIndicatorLocation];
                                                        if (EFObjectsAreEqual())
                                                        {
                                                          groupedSenderMessageListItems = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
                                                          date = [(EMMessageListItemChange *)v5 groupedSenderMessageListItems];
                                                          v8 = _groupedSenderMessageListItemsPropertiesAreEqual(groupedSenderMessageListItems, date);
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
  date = [(EMMessageListItemChange *)self date];
  v4 = [date hash];

  readLater = [(EMMessageListItemChange *)self readLater];
  v6 = [readLater hash];

  sendLaterDate = [(EMMessageListItemChange *)self sendLaterDate];
  v8 = [sendLaterDate hash];

  followUp = [(EMMessageListItemChange *)self followUp];
  v10 = [followUp hash];

  subject = [(EMMessageListItemChange *)self subject];
  v12 = [subject hash];

  summary = [(EMMessageListItemChange *)self summary];
  v14 = [summary hash];

  generatedSummary = [(EMMessageListItemChange *)self generatedSummary];
  v16 = [generatedSummary hash];

  senderList = [(EMMessageListItemChange *)self senderList];
  v18 = [senderList hash];

  toList = [(EMMessageListItemChange *)self toList];
  v61 = [toList hash];

  ccList = [(EMMessageListItemChange *)self ccList];
  v60 = [ccList hash];

  flags = [(EMMessageListItemChange *)self flags];
  v59 = [flags hash];

  hasUnflagged = [(EMMessageListItemChange *)self hasUnflagged];
  v58 = [hasUnflagged hash];

  flagColors = [(EMMessageListItemChange *)self flagColors];
  v57 = [flagColors hash];

  isVIP = [(EMMessageListItemChange *)self isVIP];
  v56 = [isVIP hash];

  isBlocked = [(EMMessageListItemChange *)self isBlocked];
  v55 = [isBlocked hash];

  searchResultType = [(EMMessageListItemChange *)self searchResultType];
  v54 = [searchResultType hash];

  searchRelevanceScore = [(EMMessageListItemChange *)self searchRelevanceScore];
  v53 = [searchRelevanceScore hash];

  unsubscribeType = [(EMMessageListItemChange *)self unsubscribeType];
  v52 = [unsubscribeType hash];

  hasAttachments = [(EMMessageListItemChange *)self hasAttachments];
  v51 = [hasAttachments hash];

  conversationNotificationLevel = [(EMMessageListItemChange *)self conversationNotificationLevel];
  v50 = [conversationNotificationLevel hash];

  v31 = [(EMMessageListItemChange *)self count];
  v49 = [v31 hash];

  conversationID = [(EMMessageListItemChange *)self conversationID];
  v48 = [conversationID hash];

  mailboxObjectIDs = [(EMMessageListItemChange *)self mailboxObjectIDs];
  v47 = [mailboxObjectIDs hash];

  mailboxes = [(EMMessageListItemChange *)self mailboxes];
  v46 = [mailboxes hash];

  displayMessageItemID = [(EMMessageListItemChange *)self displayMessageItemID];
  v45 = [displayMessageItemID hash];

  businessID = [(EMMessageListItemChange *)self businessID];
  v44 = [businessID hash];

  businessLogoID = [(EMMessageListItemChange *)self businessLogoID];
  v43 = [businessLogoID hash];

  brandIndicatorLocation = [(EMMessageListItemChange *)self brandIndicatorLocation];
  v42 = [brandIndicatorLocation hash];

  groupedSenderMessageListItems = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
  v40 = [groupedSenderMessageListItems hash] + 0x68F7EB249482FF25;

  return 33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * v4 + v6) + v8) + v10) + v12) + v14) + v16) + v18) + v61) + v60) + v59) + v58) + v57) + v56) + v55) + v54) + v53) + v52) + v51) + v50) + v49) + v48) + v47) + v46) + v45) + v44) + v43) + v42) + v40;
}

- (void)setMailboxObjectIDs:(id)ds
{
  dsCopy = ds;
  mailboxObjectIDs = self->_mailboxObjectIDs;
  v9 = dsCopy;
  if ((EFArraysAreEqual() & 1) == 0)
  {
    mailboxes = self->_mailboxes;
    self->_mailboxes = 0;

    v7 = [v9 copy];
    v8 = self->_mailboxObjectIDs;
    self->_mailboxObjectIDs = v7;
  }
}

- (void)setMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  v4 = [mailboxesCopy copy];
  mailboxes = self->_mailboxes;
  self->_mailboxes = v4;

  v6 = [mailboxesCopy ef_mapSelector:sel_objectID];
  mailboxObjectIDs = self->_mailboxObjectIDs;
  self->_mailboxObjectIDs = v6;
}

+ (id)changeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v8 = objc_alloc_init(EMMessageListItemChange);
  v9 = [self changeFrom:fromCopy to:toCopy with:v8 hasChanges:0];

  return v9;
}

+ (id)changeFrom:(id)from to:(id)to with:(id)with hasChanges:(BOOL)changes
{
  changesCopy = changes;
  fromCopy = from;
  toCopy = to;
  withCopy = with;
  date = [toCopy date];
  date2 = [fromCopy date];
  v13 = EFObjectsAreEqual();

  if ((v13 & 1) == 0)
  {
    [withCopy setDate:date];
    changesCopy = 1;
  }

  displayDate = [toCopy displayDate];
  displayDate2 = [fromCopy displayDate];
  v15 = EFObjectsAreEqual();

  if ((v15 & 1) == 0)
  {
    [withCopy setDisplayDate:displayDate];
    changesCopy = 1;
  }

  sendLaterDate = [toCopy sendLaterDate];
  sendLaterDate2 = [fromCopy sendLaterDate];
  v17 = EFObjectsAreEqual();

  if ((v17 & 1) == 0)
  {
    null = sendLaterDate;
    if (!sendLaterDate)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    [withCopy setSendLaterDate:null];
    if (!sendLaterDate)
    {
    }

    changesCopy = 1;
  }

  readLater = [toCopy readLater];
  readLater2 = [fromCopy readLater];
  v20 = EFObjectsAreEqual();

  if ((v20 & 1) == 0)
  {
    null2 = readLater;
    if (!readLater)
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    [withCopy setReadLater:null2];
    if (!readLater)
    {
    }

    changesCopy = 1;
  }

  followUp = [toCopy followUp];
  followUp2 = [fromCopy followUp];
  v23 = EFObjectsAreEqual();

  if ((v23 & 1) == 0)
  {
    null3 = followUp;
    if (!followUp)
    {
      null3 = [MEMORY[0x1E695DFB0] null];
    }

    [withCopy setFollowUp:null3];
    if (!followUp)
    {
    }

    changesCopy = 1;
  }

  category = [toCopy category];
  category2 = [fromCopy category];
  v26 = EFObjectsAreEqual();

  if ((v26 & 1) == 0)
  {
    null4 = category;
    if (!category)
    {
      null4 = [MEMORY[0x1E695DFB0] null];
    }

    [withCopy setCategory:null4];
    if (!category)
    {
    }

    changesCopy = 1;
  }

  groupedSenderMessageListItems = [toCopy groupedSenderMessageListItems];
  groupedSenderMessageListItems2 = [fromCopy groupedSenderMessageListItems];
  v29 = _groupedSenderMessageListItemsPropertiesAreEqual(groupedSenderMessageListItems, groupedSenderMessageListItems2);

  if ((v29 & 1) == 0)
  {
    null5 = groupedSenderMessageListItems;
    if (!groupedSenderMessageListItems)
    {
      null5 = [MEMORY[0x1E695DFB0] null];
    }

    [withCopy setGroupedSenderMessageListItems:null5];
    if (!groupedSenderMessageListItems)
    {
    }

    changesCopy = 1;
  }

  businessID = [toCopy businessID];
  if (businessID != [fromCopy businessID])
  {
    v32 = [MEMORY[0x1E696AD98] numberWithLongLong:businessID];
    [withCopy setBusinessID:v32];

    changesCopy = 1;
  }

  businessLogoID = [toCopy businessLogoID];
  businessLogoID2 = [fromCopy businessLogoID];
  v34 = EFObjectsAreEqual();

  if ((v34 & 1) == 0)
  {
    null6 = businessLogoID;
    if (!businessLogoID)
    {
      null6 = [MEMORY[0x1E695DFB0] null];
    }

    [withCopy setBusinessLogoID:null6];
    if (!businessLogoID)
    {
    }

    changesCopy = 1;
  }

  brandIndicatorLocation = [toCopy brandIndicatorLocation];
  brandIndicatorLocation2 = [fromCopy brandIndicatorLocation];
  v37 = EFObjectsAreEqual();

  if ((v37 & 1) == 0)
  {
    null7 = brandIndicatorLocation;
    if (!brandIndicatorLocation)
    {
      null7 = [MEMORY[0x1E695DFB0] null];
    }

    [withCopy setBrandIndicatorLocation:null7];
    if (!brandIndicatorLocation)
    {
    }

    changesCopy = 1;
  }

  subject = [toCopy subject];
  subject2 = [fromCopy subject];
  v40 = EFObjectsAreEqual();

  if ((v40 & 1) == 0)
  {
    null8 = subject;
    if (!subject)
    {
      null8 = [MEMORY[0x1E695DFB0] null];
    }

    [withCopy setSubject:null8];
    if (!subject)
    {
    }

    changesCopy = 1;
  }

  summary = [toCopy summary];
  summary2 = [fromCopy summary];
  v43 = EFObjectsAreEqual();

  if ((v43 & 1) == 0)
  {
    null9 = summary;
    if (!summary)
    {
      null9 = [MEMORY[0x1E695DFB0] null];
    }

    [withCopy setSummary:null9];
    if (!summary)
    {
    }

    changesCopy = 1;
  }

  if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    generatedSummary = [toCopy generatedSummary];
    generatedSummary2 = [fromCopy generatedSummary];
    v47 = EFObjectsAreEqual();

    if ((v47 & 1) == 0)
    {
      null10 = generatedSummary;
      if (!generatedSummary)
      {
        null10 = [MEMORY[0x1E695DFB0] null];
      }

      [withCopy setGeneratedSummary:null10];
      if (!generatedSummary)
      {
      }

      changesCopy = 1;
    }
  }

  senderList = [toCopy senderList];
  senderList2 = [fromCopy senderList];
  v50 = EFArraysAreEqual();

  if ((v50 & 1) == 0)
  {
    [withCopy setSenderList:senderList];
    changesCopy = 1;
  }

  toList = [toCopy toList];
  toList2 = [fromCopy toList];
  v52 = EFArraysAreEqual();

  if ((v52 & 1) == 0)
  {
    [withCopy setToList:toList];
    changesCopy = 1;
  }

  ccList = [toCopy ccList];
  ccList2 = [fromCopy ccList];
  v54 = EFArraysAreEqual();

  if ((v54 & 1) == 0)
  {
    [withCopy setCcList:ccList];
    changesCopy = 1;
  }

  flags = [toCopy flags];
  flags2 = [fromCopy flags];
  v56 = EFObjectsAreEqual();

  if ((v56 & 1) == 0)
  {
    [withCopy setFlags:flags];
    changesCopy = 1;
  }

  hasUnflagged = [toCopy hasUnflagged];
  if (hasUnflagged != [fromCopy hasUnflagged])
  {
    v58 = [MEMORY[0x1E696AD98] numberWithBool:hasUnflagged];
    [withCopy setHasUnflagged:v58];

    changesCopy = 1;
  }

  flagColors = [toCopy flagColors];
  flagColors2 = [fromCopy flagColors];
  v60 = EFObjectsAreEqual();

  if ((v60 & 1) == 0)
  {
    null11 = flagColors;
    if (!flagColors)
    {
      null11 = [MEMORY[0x1E695DFB0] null];
    }

    [withCopy setFlagColors:null11];
    if (!flagColors)
    {
    }

    changesCopy = 1;
  }

  isVIP = [toCopy isVIP];
  if (isVIP != [fromCopy isVIP])
  {
    v63 = [MEMORY[0x1E696AD98] numberWithBool:isVIP];
    [withCopy setIsVIP:v63];

    changesCopy = 1;
  }

  isBlocked = [toCopy isBlocked];
  if (isBlocked != [fromCopy isBlocked])
  {
    v65 = [MEMORY[0x1E696AD98] numberWithBool:isBlocked];
    [withCopy setIsBlocked:v65];

    changesCopy = 1;
  }

  searchResultType = [toCopy searchResultType];
  if (searchResultType != [fromCopy searchResultType])
  {
    v67 = [MEMORY[0x1E696AD98] numberWithInteger:searchResultType];
    [withCopy setSearchResultType:v67];

    changesCopy = 1;
  }

  searchRelevanceScore = [toCopy searchRelevanceScore];
  searchRelevanceScore2 = [fromCopy searchRelevanceScore];
  v70 = EFObjectsAreEqual();

  if ((v70 & 1) == 0)
  {
    [withCopy setSearchRelevanceScore:searchRelevanceScore];
    changesCopy = 1;
  }

  unsubscribeType = [toCopy unsubscribeType];
  if (unsubscribeType != [fromCopy unsubscribeType])
  {
    v72 = [MEMORY[0x1E696AD98] numberWithInteger:unsubscribeType];
    [withCopy setUnsubscribeType:v72];

    changesCopy = 1;
  }

  hasAttachments = [toCopy hasAttachments];
  if (hasAttachments != [fromCopy hasAttachments])
  {
    v74 = [MEMORY[0x1E696AD98] numberWithBool:hasAttachments];
    [withCopy setHasAttachments:v74];

    changesCopy = 1;
  }

  isAuthenticated = [toCopy isAuthenticated];
  if (isAuthenticated != [fromCopy isAuthenticated])
  {
    v76 = [MEMORY[0x1E696AD98] numberWithBool:isAuthenticated];
    [withCopy setIsAuthenticated:v76];

    changesCopy = 1;
  }

  isUrgent = [toCopy isUrgent];
  if (isUrgent != [fromCopy isUrgent])
  {
    v78 = [MEMORY[0x1E696AD98] numberWithBool:isUrgent];
    [withCopy setIsUrgent:v78];

    changesCopy = 1;
  }

  allowAuthenticationWarning = [toCopy allowAuthenticationWarning];
  if (allowAuthenticationWarning != [fromCopy allowAuthenticationWarning])
  {
    v80 = [MEMORY[0x1E696AD98] numberWithBool:allowAuthenticationWarning];
    [withCopy setAllowAuthenticationWarning:v80];

    changesCopy = 1;
  }

  conversationNotificationLevel = [toCopy conversationNotificationLevel];
  if (conversationNotificationLevel != [fromCopy conversationNotificationLevel])
  {
    v82 = [MEMORY[0x1E696AD98] numberWithInteger:conversationNotificationLevel];
    [withCopy setConversationNotificationLevel:v82];

    changesCopy = 1;
  }

  v83 = [toCopy count];
  if (v83 != [fromCopy count])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v83];
    [withCopy setCount:v84];

    changesCopy = 1;
  }

  mailboxObjectIDs = [toCopy mailboxObjectIDs];
  mailboxObjectIDs2 = [fromCopy mailboxObjectIDs];
  if ((EFArraysAreEqual() & 1) == 0)
  {
    mailboxes = [toCopy mailboxes];
    mailboxes2 = [fromCopy mailboxes];
    v89 = [mailboxes count];
    if (v89 == [mailboxObjectIDs count] && (v90 = objc_msgSend(mailboxes2, "count"), v90 == objc_msgSend(mailboxObjectIDs2, "count")) && (EFArraysAreEqual() & 1) == 0)
    {
      [withCopy setMailboxes:mailboxes];
    }

    else
    {
      [withCopy setMailboxObjectIDs:mailboxObjectIDs];
    }

    changesCopy = 1;
  }

  displayMessageItemID = [toCopy displayMessageItemID];
  displayMessageItemID2 = [fromCopy displayMessageItemID];
  v93 = EFObjectsAreEqual();

  if (v93)
  {
    if (!changesCopy)
    {
      v94 = 0;
      goto LABEL_119;
    }
  }

  else
  {
    [withCopy setDisplayMessageItemID:displayMessageItemID];
  }

  v94 = withCopy;
LABEL_119:

  return v94;
}

+ (id)changeForKeyPaths:(id)paths ofItem:(id)item
{
  v31 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  itemCopy = item;
  v23 = pathsCopy;
  if ([pathsCopy count])
  {
    v25 = objc_alloc_init(EMMessageListItemChange);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = pathsCopy;
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
            readLater = [itemCopy readLater];
            itemCopy2 = readLater;
            if (!readLater)
            {
              item = [MEMORY[0x1E695DFB0] null];
              itemCopy2 = item;
            }

            [(EMMessageListItemChange *)v25 setReadLater:itemCopy2];
            itemCopy3 = item;
            if (!readLater)
            {
              goto LABEL_18;
            }
          }

          else
          {
            if (([v12 isEqualToString:@"followUp.startDate"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"followUp.endDate"))
            {
              readLater = [itemCopy followUp];
              v16 = readLater;
              if (!readLater)
              {
                null = [MEMORY[0x1E695DFB0] null];
                v16 = null;
              }

              [(EMMessageListItemChange *)v25 setFollowUp:v16];
              itemCopy3 = null;
              if (readLater)
              {
                goto LABEL_19;
              }
            }

            else if (([v12 isEqualToString:@"category.type"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"category.isHighImpact"))
            {
              readLater = [itemCopy category];
              v17 = readLater;
              if (!readLater)
              {
                null2 = [MEMORY[0x1E695DFB0] null];
                v17 = null2;
              }

              [(EMMessageListItemChange *)v25 setCategory:v17];
              itemCopy3 = null2;
              if (readLater)
              {
                goto LABEL_19;
              }
            }

            else
            {
              if ([v12 isEqualToString:@"AuthenticationState"])
              {
                readLater = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(itemCopy, "isAuthenticated")}];
                [(EMMessageListItemChange *)v25 setIsAuthenticated:readLater];
                goto LABEL_19;
              }

              if ([v12 isEqualToString:@"businessID"])
              {
                readLater = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(itemCopy, "businessID")}];
                [(EMMessageListItemChange *)v25 setBusinessID:readLater];
                goto LABEL_19;
              }

              if (![v12 isEqualToString:@"businessLogoID"])
              {
                readLater = [itemCopy valueForKeyPath:v12];
                [(EMMessageListItemChange *)v25 setValue:readLater forKeyPath:v12];
                goto LABEL_19;
              }

              readLater = [itemCopy businessLogoID];
              v18 = readLater;
              if (!readLater)
              {
                null3 = [MEMORY[0x1E695DFB0] null];
                v18 = null3;
              }

              [(EMMessageListItemChange *)v25 setBusinessLogoID:v18, null3];
              itemCopy3 = null3;
              if (readLater)
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

+ (id)changesForKeyPaths:(id)paths ofItems:(id)items
{
  v23 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  itemsCopy = items;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = itemsCopy;
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
        v14 = [self changeForKeyPaths:pathsCopy ofItem:{v13, v18}];
        if (v13)
        {
          objectID = [v13 objectID];
          [v8 setObject:v14 forKeyedSubscript:objectID];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)changeForFlags:(id)flags
{
  flagsCopy = flags;
  v4 = objc_alloc_init(EMMessageListItemChange);
  [(EMMessageListItemChange *)v4 setFlags:flagsCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(flagsCopy, "flagged") ^ 1}];
  [(EMMessageListItemChange *)v4 setHasUnflagged:v5];

  if ([flagsCopy flagged])
  {
    v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(flagsCopy, "flagColor")}];
    [(EMMessageListItemChange *)v4 setFlagColors:v6];
  }

  return v4;
}

+ (id)changeForUnsubscribeType:(int64_t)type
{
  v4 = objc_alloc_init(EMMessageListItemChange);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(EMMessageListItemChange *)v4 setUnsubscribeType:v5];

  return v4;
}

- (void)addChange:(id)change
{
  changeCopy = change;
  date = [changeCopy date];

  if (date)
  {
    date2 = [changeCopy date];
    [(EMMessageListItemChange *)self setDate:date2];
  }

  displayDate = [changeCopy displayDate];

  if (displayDate)
  {
    displayDate2 = [changeCopy displayDate];
    [(EMMessageListItemChange *)self setDisplayDate:displayDate2];
  }

  readLater = [changeCopy readLater];

  if (readLater)
  {
    readLater2 = [changeCopy readLater];
    [(EMMessageListItemChange *)self setReadLater:readLater2];
  }

  sendLaterDate = [changeCopy sendLaterDate];

  if (sendLaterDate)
  {
    sendLaterDate2 = [changeCopy sendLaterDate];
    [(EMMessageListItemChange *)self setSendLaterDate:sendLaterDate2];
  }

  followUp = [changeCopy followUp];

  if (followUp)
  {
    followUp2 = [changeCopy followUp];
    [(EMMessageListItemChange *)self setFollowUp:followUp2];
  }

  subject = [changeCopy subject];

  if (subject)
  {
    subject2 = [changeCopy subject];
    [(EMMessageListItemChange *)self setSubject:subject2];
  }

  summary = [changeCopy summary];

  if (summary)
  {
    summary2 = [changeCopy summary];
    [(EMMessageListItemChange *)self setSummary:summary2];
  }

  generatedSummary = [changeCopy generatedSummary];

  if (generatedSummary)
  {
    generatedSummary2 = [changeCopy generatedSummary];
    [(EMMessageListItemChange *)self setGeneratedSummary:generatedSummary2];
  }

  senderList = [changeCopy senderList];

  if (senderList)
  {
    senderList2 = [changeCopy senderList];
    [(EMMessageListItemChange *)self setSenderList:senderList2];
  }

  toList = [changeCopy toList];

  if (toList)
  {
    toList2 = [changeCopy toList];
    [(EMMessageListItemChange *)self setToList:toList2];
  }

  ccList = [changeCopy ccList];

  if (ccList)
  {
    ccList2 = [changeCopy ccList];
    [(EMMessageListItemChange *)self setCcList:ccList2];
  }

  flags = [changeCopy flags];

  if (flags)
  {
    flags2 = [changeCopy flags];
    [(EMMessageListItemChange *)self setFlags:flags2];
  }

  hasUnflagged = [changeCopy hasUnflagged];

  if (hasUnflagged)
  {
    hasUnflagged2 = [changeCopy hasUnflagged];
    [(EMMessageListItemChange *)self setHasUnflagged:hasUnflagged2];
  }

  flagColors = [changeCopy flagColors];

  if (flagColors)
  {
    flagColors2 = [changeCopy flagColors];
    [(EMMessageListItemChange *)self setFlagColors:flagColors2];
  }

  isVIP = [changeCopy isVIP];

  if (isVIP)
  {
    isVIP2 = [changeCopy isVIP];
    [(EMMessageListItemChange *)self setIsVIP:isVIP2];
  }

  isBlocked = [changeCopy isBlocked];

  if (isBlocked)
  {
    isBlocked2 = [changeCopy isBlocked];
    [(EMMessageListItemChange *)self setIsBlocked:isBlocked2];
  }

  searchResultType = [changeCopy searchResultType];

  if (searchResultType)
  {
    searchResultType2 = [changeCopy searchResultType];
    [(EMMessageListItemChange *)self setSearchResultType:searchResultType2];
  }

  searchRelevanceScore = [changeCopy searchRelevanceScore];

  if (searchRelevanceScore)
  {
    searchRelevanceScore2 = [changeCopy searchRelevanceScore];
    [(EMMessageListItemChange *)self setSearchRelevanceScore:searchRelevanceScore2];
  }

  unsubscribeType = [changeCopy unsubscribeType];

  if (unsubscribeType)
  {
    unsubscribeType2 = [changeCopy unsubscribeType];
    [(EMMessageListItemChange *)self setUnsubscribeType:unsubscribeType2];
  }

  hasAttachments = [changeCopy hasAttachments];

  if (hasAttachments)
  {
    hasAttachments2 = [changeCopy hasAttachments];
    [(EMMessageListItemChange *)self setHasAttachments:hasAttachments2];
  }

  conversationNotificationLevel = [changeCopy conversationNotificationLevel];

  if (conversationNotificationLevel)
  {
    conversationNotificationLevel2 = [changeCopy conversationNotificationLevel];
    [(EMMessageListItemChange *)self setConversationNotificationLevel:conversationNotificationLevel2];
  }

  v46 = [changeCopy count];

  if (v46)
  {
    v47 = [changeCopy count];
    [(EMMessageListItemChange *)self setCount:v47];
  }

  conversationID = [changeCopy conversationID];

  if (conversationID)
  {
    conversationID2 = [changeCopy conversationID];
    [(EMMessageListItemChange *)self setConversationID:conversationID2];
  }

  mailboxObjectIDs = [changeCopy mailboxObjectIDs];

  if (mailboxObjectIDs)
  {
    mailboxObjectIDs2 = [changeCopy mailboxObjectIDs];
    [(EMMessageListItemChange *)self setMailboxObjectIDs:mailboxObjectIDs2];
  }

  mailboxes = [changeCopy mailboxes];

  if (mailboxes)
  {
    mailboxes2 = [changeCopy mailboxes];
    [(EMMessageListItemChange *)self setMailboxes:mailboxes2];
  }

  displayMessageItemID = [changeCopy displayMessageItemID];

  if (displayMessageItemID)
  {
    displayMessageItemID2 = [changeCopy displayMessageItemID];
    [(EMMessageListItemChange *)self setDisplayMessageItemID:displayMessageItemID2];
  }

  groupedSenderMessageListItems = [changeCopy groupedSenderMessageListItems];

  if (groupedSenderMessageListItems)
  {
    groupedSenderMessageListItems2 = [changeCopy groupedSenderMessageListItems];
    [(EMMessageListItemChange *)self setGroupedSenderMessageListItems:groupedSenderMessageListItems2];
  }

  businessID = [changeCopy businessID];

  if (businessID)
  {
    businessID2 = [changeCopy businessID];
    [(EMMessageListItemChange *)self setBusinessID:businessID2];
  }

  businessLogoID = [changeCopy businessLogoID];

  if (businessLogoID)
  {
    businessLogoID2 = [changeCopy businessLogoID];
    [(EMMessageListItemChange *)self setBusinessLogoID:businessLogoID2];
  }

  brandIndicatorLocation = [changeCopy brandIndicatorLocation];

  if (brandIndicatorLocation)
  {
    brandIndicatorLocation2 = [changeCopy brandIndicatorLocation];
    [(EMMessageListItemChange *)self setBrandIndicatorLocation:brandIndicatorLocation2];
  }
}

- (BOOL)applyToMessageListItem:(id)item
{
  itemCopy = item;
  date = [(EMMessageListItemChange *)self date];
  if (!date)
  {
    goto LABEL_3;
  }

  date2 = [(EMMessageListItemChange *)self date];
  date3 = [itemCopy date];
  v8 = [date2 isEqual:date3];

  if ((v8 & 1) == 0)
  {
    date4 = [(EMMessageListItemChange *)self date];
    [itemCopy setDate:date4];

    v9 = 1;
  }

  else
  {
LABEL_3:
    v9 = 0;
  }

  displayDate = [(EMMessageListItemChange *)self displayDate];
  if (displayDate)
  {
    displayDate2 = [(EMMessageListItemChange *)self displayDate];
    displayDate3 = [itemCopy displayDate];
    v14 = [displayDate2 isEqual:displayDate3];

    if ((v14 & 1) == 0)
    {
      displayDate4 = [(EMMessageListItemChange *)self displayDate];
      [itemCopy setDisplayDate:displayDate4];

      v9 = 1;
    }
  }

  readLater = [(EMMessageListItemChange *)self readLater];

  if (readLater)
  {
    readLater2 = [(EMMessageListItemChange *)self readLater];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      readLater3 = [(EMMessageListItemChange *)self readLater];
    }

    else
    {
      readLater3 = 0;
    }

    readLater4 = [itemCopy readLater];
    v20 = readLater4;
    if (readLater3 == readLater4)
    {
    }

    else
    {
      readLater5 = [itemCopy readLater];
      v22 = [readLater3 isEqual:readLater5];

      if ((v22 & 1) == 0)
      {
        [itemCopy setReadLater:readLater3];
        v9 = 1;
      }
    }
  }

  sendLaterDate = [(EMMessageListItemChange *)self sendLaterDate];

  if (sendLaterDate)
  {
    sendLaterDate2 = [(EMMessageListItemChange *)self sendLaterDate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sendLaterDate3 = [(EMMessageListItemChange *)self sendLaterDate];
    }

    else
    {
      sendLaterDate3 = 0;
    }

    sendLaterDate4 = [itemCopy sendLaterDate];
    v27 = sendLaterDate4;
    if (sendLaterDate3 == sendLaterDate4)
    {
    }

    else
    {
      sendLaterDate5 = [itemCopy sendLaterDate];
      v29 = [sendLaterDate3 isEqual:sendLaterDate5];

      if ((v29 & 1) == 0)
      {
        [itemCopy setSendLaterDate:sendLaterDate3];
        v9 = 1;
      }
    }
  }

  followUp = [(EMMessageListItemChange *)self followUp];

  if (followUp)
  {
    followUp2 = [(EMMessageListItemChange *)self followUp];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      followUp3 = [(EMMessageListItemChange *)self followUp];
    }

    else
    {
      followUp3 = 0;
    }

    followUp4 = [itemCopy followUp];
    v34 = followUp4;
    if (followUp3 == followUp4)
    {
    }

    else
    {
      followUp5 = [itemCopy followUp];
      v36 = [followUp3 isEqual:followUp5];

      if ((v36 & 1) == 0)
      {
        [itemCopy setFollowUp:followUp3];
        v9 = 1;
      }
    }
  }

  businessID = [(EMMessageListItemChange *)self businessID];
  if (businessID)
  {
    businessID2 = [(EMMessageListItemChange *)self businessID];
    longLongValue = [businessID2 longLongValue];
    businessID3 = [itemCopy businessID];

    if (longLongValue != businessID3)
    {
      businessID4 = [(EMMessageListItemChange *)self businessID];
      [itemCopy setBusinessID:{objc_msgSend(businessID4, "longLongValue")}];

      v9 = 1;
    }
  }

  businessLogoID = [(EMMessageListItemChange *)self businessLogoID];

  if (businessLogoID)
  {
    businessLogoID2 = [(EMMessageListItemChange *)self businessLogoID];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      businessLogoID3 = [(EMMessageListItemChange *)self businessLogoID];
    }

    else
    {
      businessLogoID3 = 0;
    }

    businessLogoID4 = [itemCopy businessLogoID];
    v46 = businessLogoID4;
    if (businessLogoID3 == businessLogoID4)
    {
    }

    else
    {
      businessLogoID5 = [itemCopy businessLogoID];
      v48 = [businessLogoID3 isEqual:businessLogoID5];

      if ((v48 & 1) == 0)
      {
        [itemCopy setBusinessLogoID:businessLogoID3];
        v9 = 1;
      }
    }
  }

  brandIndicatorLocation = [(EMMessageListItemChange *)self brandIndicatorLocation];

  if (brandIndicatorLocation)
  {
    brandIndicatorLocation2 = [(EMMessageListItemChange *)self brandIndicatorLocation];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      brandIndicatorLocation3 = [(EMMessageListItemChange *)self brandIndicatorLocation];
    }

    else
    {
      brandIndicatorLocation3 = 0;
    }

    brandIndicatorLocation4 = [itemCopy brandIndicatorLocation];
    v53 = brandIndicatorLocation4;
    if (brandIndicatorLocation3 == brandIndicatorLocation4)
    {
    }

    else
    {
      brandIndicatorLocation5 = [itemCopy brandIndicatorLocation];
      v55 = [brandIndicatorLocation3 isEqual:brandIndicatorLocation5];

      if ((v55 & 1) == 0)
      {
        [itemCopy setBrandIndicatorLocation:brandIndicatorLocation3];
        v9 = 1;
      }
    }
  }

  category = [(EMMessageListItemChange *)self category];

  if (category)
  {
    category2 = [(EMMessageListItemChange *)self category];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      category3 = [(EMMessageListItemChange *)self category];
    }

    else
    {
      category3 = 0;
    }

    category4 = [itemCopy category];
    v60 = category4;
    if (category3 == category4)
    {
    }

    else
    {
      category5 = [itemCopy category];
      v62 = [category3 isEqual:category5];

      if ((v62 & 1) == 0)
      {
        [itemCopy setCategory:category3];
        v9 = 1;
      }
    }
  }

  groupedSenderMessageListItems = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
  if (groupedSenderMessageListItems)
  {
    groupedSenderMessageListItems2 = [itemCopy groupedSenderMessageListItems];
    v65 = _groupedSenderMessageListItemsPropertiesAreEqual(groupedSenderMessageListItems, groupedSenderMessageListItems2);

    if ((v65 & 1) == 0)
    {
      [itemCopy setGroupedSenderMessageListItems:groupedSenderMessageListItems];
      v9 = 1;
    }
  }

  subject = [(EMMessageListItemChange *)self subject];

  if (subject)
  {
    subject2 = [(EMMessageListItemChange *)self subject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      subject3 = [(EMMessageListItemChange *)self subject];
    }

    else
    {
      subject3 = 0;
    }

    subject4 = [itemCopy subject];
    v70 = subject4;
    if (subject3 == subject4)
    {
    }

    else
    {
      subject5 = [itemCopy subject];
      v72 = [subject3 isEqual:subject5];

      if ((v72 & 1) == 0)
      {
        [itemCopy setSubject:subject3];
        v9 = 1;
      }
    }
  }

  summary = [(EMMessageListItemChange *)self summary];

  if (summary)
  {
    summary2 = [(EMMessageListItemChange *)self summary];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      summary3 = [(EMMessageListItemChange *)self summary];
    }

    else
    {
      summary3 = 0;
    }

    summary4 = [itemCopy summary];
    v77 = summary4;
    if (summary3 == summary4)
    {
    }

    else
    {
      summary5 = [itemCopy summary];
      v79 = [summary3 isEqual:summary5];

      if ((v79 & 1) == 0)
      {
        [itemCopy setSummary:summary3];
        v9 = 1;
      }
    }
  }

  generatedSummary = [(EMMessageListItemChange *)self generatedSummary];

  if (generatedSummary)
  {
    generatedSummary2 = [(EMMessageListItemChange *)self generatedSummary];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      generatedSummary3 = [(EMMessageListItemChange *)self generatedSummary];
    }

    else
    {
      generatedSummary3 = 0;
    }

    generatedSummary4 = [itemCopy generatedSummary];
    v84 = generatedSummary4;
    if (generatedSummary3 == generatedSummary4)
    {
    }

    else
    {
      generatedSummary5 = [itemCopy generatedSummary];
      v86 = [generatedSummary3 isEqual:generatedSummary5];

      if ((v86 & 1) == 0)
      {
        [itemCopy setGeneratedSummary:generatedSummary3];
        v9 = 1;
      }
    }
  }

  senderList = [(EMMessageListItemChange *)self senderList];
  if (senderList)
  {
    senderList2 = [(EMMessageListItemChange *)self senderList];
    senderList3 = [itemCopy senderList];
    v90 = [senderList2 isEqual:senderList3];

    if ((v90 & 1) == 0)
    {
      senderList4 = [(EMMessageListItemChange *)self senderList];
      [itemCopy setSenderList:senderList4];

      v9 = 1;
    }
  }

  toList = [(EMMessageListItemChange *)self toList];
  if (toList)
  {
    toList2 = [(EMMessageListItemChange *)self toList];
    toList3 = [itemCopy toList];
    v95 = [toList2 isEqual:toList3];

    if ((v95 & 1) == 0)
    {
      toList4 = [(EMMessageListItemChange *)self toList];
      [itemCopy setToList:toList4];

      v9 = 1;
    }
  }

  ccList = [(EMMessageListItemChange *)self ccList];
  if (ccList)
  {
    ccList2 = [(EMMessageListItemChange *)self ccList];
    ccList3 = [itemCopy ccList];
    v100 = [ccList2 isEqual:ccList3];

    if ((v100 & 1) == 0)
    {
      ccList4 = [(EMMessageListItemChange *)self ccList];
      [itemCopy setCcList:ccList4];

      v9 = 1;
    }
  }

  flags = [(EMMessageListItemChange *)self flags];
  if (flags)
  {
    flags2 = [(EMMessageListItemChange *)self flags];
    flags3 = [itemCopy flags];
    v105 = [flags2 isEqual:flags3];

    if ((v105 & 1) == 0)
    {
      flags4 = [(EMMessageListItemChange *)self flags];
      [itemCopy setFlags:flags4];

      v9 = 1;
    }
  }

  hasUnflagged = [(EMMessageListItemChange *)self hasUnflagged];
  if (hasUnflagged)
  {
    hasUnflagged2 = [(EMMessageListItemChange *)self hasUnflagged];
    bOOLValue = [hasUnflagged2 BOOLValue];
    hasUnflagged3 = [itemCopy hasUnflagged];

    if (bOOLValue != hasUnflagged3)
    {
      hasUnflagged4 = [(EMMessageListItemChange *)self hasUnflagged];
      [itemCopy setHasUnflagged:{objc_msgSend(hasUnflagged4, "BOOLValue")}];

      v9 = 1;
    }
  }

  flagColors = [(EMMessageListItemChange *)self flagColors];

  if (flagColors)
  {
    flagColors2 = [(EMMessageListItemChange *)self flagColors];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      flagColors3 = [(EMMessageListItemChange *)self flagColors];
    }

    else
    {
      flagColors3 = 0;
    }

    flagColors4 = [itemCopy flagColors];
    v116 = flagColors4;
    if (flagColors3 == flagColors4)
    {
    }

    else
    {
      flagColors5 = [itemCopy flagColors];
      v118 = [flagColors3 isEqual:flagColors5];

      if ((v118 & 1) == 0)
      {
        [itemCopy setFlagColors:flagColors3];
        v9 = 1;
      }
    }
  }

  isVIP = [(EMMessageListItemChange *)self isVIP];
  if (isVIP)
  {
    isVIP2 = [(EMMessageListItemChange *)self isVIP];
    bOOLValue2 = [isVIP2 BOOLValue];
    isVIP3 = [itemCopy isVIP];

    if (bOOLValue2 != isVIP3)
    {
      isVIP4 = [(EMMessageListItemChange *)self isVIP];
      [itemCopy setIsVIP:{objc_msgSend(isVIP4, "BOOLValue")}];

      v9 = 1;
    }
  }

  isBlocked = [(EMMessageListItemChange *)self isBlocked];
  if (isBlocked)
  {
    isBlocked2 = [(EMMessageListItemChange *)self isBlocked];
    bOOLValue3 = [isBlocked2 BOOLValue];
    isBlocked3 = [itemCopy isBlocked];

    if (bOOLValue3 != isBlocked3)
    {
      isBlocked4 = [(EMMessageListItemChange *)self isBlocked];
      [itemCopy setIsBlocked:{objc_msgSend(isBlocked4, "BOOLValue")}];

      v9 = 1;
    }
  }

  searchResultType = [(EMMessageListItemChange *)self searchResultType];
  if (searchResultType)
  {
    searchResultType2 = [(EMMessageListItemChange *)self searchResultType];
    integerValue = [searchResultType2 integerValue];
    searchResultType3 = [itemCopy searchResultType];

    if (integerValue != searchResultType3)
    {
      searchResultType4 = [(EMMessageListItemChange *)self searchResultType];
      [itemCopy setSearchResultType:{objc_msgSend(searchResultType4, "integerValue")}];

      v9 = 1;
    }
  }

  searchRelevanceScore = [(EMMessageListItemChange *)self searchRelevanceScore];
  if (searchRelevanceScore)
  {
    searchRelevanceScore2 = [(EMMessageListItemChange *)self searchRelevanceScore];
    searchRelevanceScore3 = [itemCopy searchRelevanceScore];
    v137 = [searchRelevanceScore2 isEqual:searchRelevanceScore3];

    if ((v137 & 1) == 0)
    {
      searchRelevanceScore4 = [(EMMessageListItemChange *)self searchRelevanceScore];
      [itemCopy setSearchRelevanceScore:searchRelevanceScore4];

      v9 = 1;
    }
  }

  isUrgent = [(EMMessageListItemChange *)self isUrgent];
  if (isUrgent)
  {
    isUrgent2 = [(EMMessageListItemChange *)self isUrgent];
    bOOLValue4 = [isUrgent2 BOOLValue];
    isUrgent3 = [itemCopy isUrgent];

    if (bOOLValue4 != isUrgent3)
    {
      isUrgent4 = [(EMMessageListItemChange *)self isUrgent];
      [itemCopy setIsUrgent:{objc_msgSend(isUrgent4, "BOOLValue")}];

      v9 = 1;
    }
  }

  unsubscribeType = [(EMMessageListItemChange *)self unsubscribeType];
  if (unsubscribeType)
  {
    unsubscribeType2 = [(EMMessageListItemChange *)self unsubscribeType];
    integerValue2 = [unsubscribeType2 integerValue];
    unsubscribeType3 = [itemCopy unsubscribeType];

    if (integerValue2 != unsubscribeType3)
    {
      unsubscribeType4 = [(EMMessageListItemChange *)self unsubscribeType];
      [itemCopy setUnsubscribeType:{objc_msgSend(unsubscribeType4, "integerValue")}];

      v9 = 1;
    }
  }

  hasAttachments = [(EMMessageListItemChange *)self hasAttachments];
  if (hasAttachments)
  {
    hasAttachments2 = [(EMMessageListItemChange *)self hasAttachments];
    bOOLValue5 = [hasAttachments2 BOOLValue];
    hasAttachments3 = [itemCopy hasAttachments];

    if (bOOLValue5 != hasAttachments3)
    {
      hasAttachments4 = [(EMMessageListItemChange *)self hasAttachments];
      [itemCopy setHasAttachments:{objc_msgSend(hasAttachments4, "BOOLValue")}];

      v9 = 1;
    }
  }

  conversationNotificationLevel = [(EMMessageListItemChange *)self conversationNotificationLevel];
  if (conversationNotificationLevel)
  {
    conversationNotificationLevel2 = [(EMMessageListItemChange *)self conversationNotificationLevel];
    integerValue3 = [conversationNotificationLevel2 integerValue];
    conversationNotificationLevel3 = [itemCopy conversationNotificationLevel];

    if (integerValue3 != conversationNotificationLevel3)
    {
      conversationNotificationLevel4 = [(EMMessageListItemChange *)self conversationNotificationLevel];
      [itemCopy setConversationNotificationLevel:{objc_msgSend(conversationNotificationLevel4, "integerValue")}];

      v9 = 1;
    }
  }

  v159 = [(EMMessageListItemChange *)self count];
  if (v159)
  {
    v160 = [(EMMessageListItemChange *)self count];
    unsignedIntegerValue = [v160 unsignedIntegerValue];
    v162 = [itemCopy count];

    if (unsignedIntegerValue != v162)
    {
      v163 = [(EMMessageListItemChange *)self count];
      [itemCopy setCount:{objc_msgSend(v163, "unsignedIntegerValue")}];

      v9 = 1;
    }
  }

  conversationID = [(EMMessageListItemChange *)self conversationID];
  if (conversationID)
  {
    conversationID2 = [(EMMessageListItemChange *)self conversationID];
    longLongValue2 = [conversationID2 longLongValue];
    conversationID3 = [itemCopy conversationID];

    if (longLongValue2 != conversationID3)
    {
      conversationID4 = [(EMMessageListItemChange *)self conversationID];
      [itemCopy setConversationID:{objc_msgSend(conversationID4, "longLongValue")}];

      v9 = 1;
    }
  }

  mailboxObjectIDs = [(EMMessageListItemChange *)self mailboxObjectIDs];
  if (mailboxObjectIDs)
  {
    mailboxObjectIDs2 = [(EMMessageListItemChange *)self mailboxObjectIDs];
    mailboxObjectIDs3 = [itemCopy mailboxObjectIDs];
    v172 = [mailboxObjectIDs2 isEqual:mailboxObjectIDs3];

    if ((v172 & 1) == 0)
    {
      mailboxObjectIDs4 = [(EMMessageListItemChange *)self mailboxObjectIDs];
      [itemCopy setMailboxObjectIDs:mailboxObjectIDs4];

      v9 = 1;
    }
  }

  mailboxes = [(EMMessageListItemChange *)self mailboxes];
  if (mailboxes)
  {
    mailboxes2 = [(EMMessageListItemChange *)self mailboxes];
    mailboxes3 = [itemCopy mailboxes];
    v177 = [mailboxes2 isEqual:mailboxes3];

    if ((v177 & 1) == 0)
    {
      mailboxes4 = [(EMMessageListItemChange *)self mailboxes];
      [itemCopy setMailboxes:mailboxes4];

      v9 = 1;
    }
  }

  displayMessageItemID = [(EMMessageListItemChange *)self displayMessageItemID];
  if (displayMessageItemID)
  {
    displayMessageItemID2 = [(EMMessageListItemChange *)self displayMessageItemID];
    displayMessageItemID3 = [itemCopy displayMessageItemID];
    v182 = [displayMessageItemID2 isEqual:displayMessageItemID3];

    if ((v182 & 1) == 0)
    {
      displayMessageItemID4 = [(EMMessageListItemChange *)self displayMessageItemID];
      [itemCopy setDisplayMessageItemID:displayMessageItemID4];

      v9 = 1;
    }
  }

  return v9;
}

- (EMMessageListItemChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(EMMessageListItemChange *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_displayDate"];
    displayDate = v5->_displayDate;
    v5->_displayDate = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"EFPropertyKey_readLater"];
    readLater = v5->_readLater;
    v5->_readLater = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"EFPropertyKey_followUp"];
    followUp = v5->_followUp;
    v5->_followUp = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_businessID"];
    businessID = v5->_businessID;
    v5->_businessID = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"EFPropertyKey_businessLogoID"];
    businessLogoID = v5->_businessLogoID;
    v5->_businessLogoID = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"EFPropertyKey_brandIndicatorLocation"];
    brandIndicatorLocation = v5->_brandIndicatorLocation;
    v5->_brandIndicatorLocation = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"EFPropertyKey_category"];
    category = v5->_category;
    v5->_category = v35;

    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = [v37 setWithObjects:{v38, v39, objc_opt_class(), 0}];
    v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"EFPropertyKey_groupedSenderMessageListItems"];
    groupedSenderMessageListItems = v5->_groupedSenderMessageListItems;
    v5->_groupedSenderMessageListItems = v41;

    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
    v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"EFPropertyKey_subject"];
    subject = v5->_subject;
    v5->_subject = v46;

    v48 = MEMORY[0x1E695DFD8];
    v49 = objc_opt_class();
    v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
    v51 = [coderCopy decodeObjectOfClasses:v50 forKey:@"EFPropertyKey_sendLaterDate"];
    sendLaterDate = v5->_sendLaterDate;
    v5->_sendLaterDate = v51;

    v53 = MEMORY[0x1E695DFD8];
    v54 = objc_opt_class();
    v55 = [v53 setWithObjects:{v54, objc_opt_class(), 0}];
    v56 = [coderCopy decodeObjectOfClasses:v55 forKey:@"EFPropertyKey_summary"];
    summary = v5->_summary;
    v5->_summary = v56;

    v58 = MEMORY[0x1E695DFD8];
    v59 = objc_opt_class();
    v60 = [v58 setWithObjects:{v59, objc_opt_class(), 0}];
    v61 = [coderCopy decodeObjectOfClasses:v60 forKey:@"EFPropertyKey_generatedSummary"];
    generatedSummary = v5->_generatedSummary;
    v5->_generatedSummary = v61;

    v63 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_isUrgent"];
    isUrgent = v5->_isUrgent;
    v5->_isUrgent = v63;

    v65 = MEMORY[0x1E695DFD8];
    v66 = objc_opt_class();
    v67 = objc_opt_class();
    v68 = [v65 setWithObjects:{v66, v67, objc_opt_class(), 0}];
    v69 = [coderCopy decodeObjectOfClasses:v68 forKey:@"EFPropertyKey_senderList"];
    senderList = v5->_senderList;
    v5->_senderList = v69;

    v71 = MEMORY[0x1E695DFD8];
    v72 = objc_opt_class();
    v73 = objc_opt_class();
    v74 = [v71 setWithObjects:{v72, v73, objc_opt_class(), 0}];
    v75 = [coderCopy decodeObjectOfClasses:v74 forKey:@"EFPropertyKey_toList"];
    toList = v5->_toList;
    v5->_toList = v75;

    v77 = MEMORY[0x1E695DFD8];
    v78 = objc_opt_class();
    v79 = objc_opt_class();
    v80 = [v77 setWithObjects:{v78, v79, objc_opt_class(), 0}];
    v81 = [coderCopy decodeObjectOfClasses:v80 forKey:@"EFPropertyKey_ccList"];
    ccList = v5->_ccList;
    v5->_ccList = v81;

    v83 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_flags"];
    flags = v5->_flags;
    v5->_flags = v83;

    v85 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_hasUnflagged"];
    hasUnflagged = v5->_hasUnflagged;
    v5->_hasUnflagged = v85;

    v87 = MEMORY[0x1E695DFD8];
    v88 = objc_opt_class();
    v89 = [v87 setWithObjects:{v88, objc_opt_class(), 0}];
    v90 = [coderCopy decodeObjectOfClasses:v89 forKey:@"EFPropertyKey_flagColors"];
    flagColors = v5->_flagColors;
    v5->_flagColors = v90;

    v92 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_isVIP"];
    isVIP = v5->_isVIP;
    v5->_isVIP = v92;

    v94 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_isBlocked"];
    isBlocked = v5->_isBlocked;
    v5->_isBlocked = v94;

    v96 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_searchResultType"];
    searchResultType = v5->_searchResultType;
    v5->_searchResultType = v96;

    v98 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_searchRelevanceScore"];
    searchRelevanceScore = v5->_searchRelevanceScore;
    v5->_searchRelevanceScore = v98;

    v100 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_unsubscribeType"];
    unsubscribeType = v5->_unsubscribeType;
    v5->_unsubscribeType = v100;

    v102 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_hasAttachments"];
    hasAttachments = v5->_hasAttachments;
    v5->_hasAttachments = v102;

    v104 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_conversationNotificationLevel"];
    conversationNotificationLevel = v5->_conversationNotificationLevel;
    v5->_conversationNotificationLevel = v104;

    v106 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_count"];
    count = v5->_count;
    v5->_count = v106;

    v108 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_conversationID"];
    conversationID = v5->_conversationID;
    v5->_conversationID = v108;

    v110 = MEMORY[0x1E695DFD8];
    v111 = objc_opt_class();
    v112 = [v110 setWithObjects:{v111, objc_opt_class(), 0}];
    v113 = [coderCopy decodeObjectOfClasses:v112 forKey:@"EFPropertyKey_mailboxObjectIDs"];
    mailboxObjectIDs = v5->_mailboxObjectIDs;
    v5->_mailboxObjectIDs = v113;

    v115 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_displayMessageItemID"];
    displayMessageItemID = v5->_displayMessageItemID;
    v5->_displayMessageItemID = v115;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  date = [(EMMessageListItemChange *)self date];
  [coderCopy encodeObject:date forKey:@"EFPropertyKey_date"];

  displayDate = [(EMMessageListItemChange *)self displayDate];
  [coderCopy encodeObject:displayDate forKey:@"EFPropertyKey_displayDate"];

  readLater = [(EMMessageListItemChange *)self readLater];
  [coderCopy encodeObject:readLater forKey:@"EFPropertyKey_readLater"];

  followUp = [(EMMessageListItemChange *)self followUp];
  [coderCopy encodeObject:followUp forKey:@"EFPropertyKey_followUp"];

  businessID = [(EMMessageListItemChange *)self businessID];
  [coderCopy encodeObject:businessID forKey:@"EFPropertyKey_businessID"];

  businessLogoID = [(EMMessageListItemChange *)self businessLogoID];
  [coderCopy encodeObject:businessLogoID forKey:@"EFPropertyKey_businessLogoID"];

  brandIndicatorLocation = [(EMMessageListItemChange *)self brandIndicatorLocation];
  [coderCopy encodeObject:brandIndicatorLocation forKey:@"EFPropertyKey_brandIndicatorLocation"];

  category = [(EMMessageListItemChange *)self category];
  [coderCopy encodeObject:category forKey:@"EFPropertyKey_category"];

  groupedSenderMessageListItems = [(EMMessageListItemChange *)self groupedSenderMessageListItems];
  [coderCopy encodeObject:groupedSenderMessageListItems forKey:@"EFPropertyKey_groupedSenderMessageListItems"];

  subject = [(EMMessageListItemChange *)self subject];
  [coderCopy encodeObject:subject forKey:@"EFPropertyKey_subject"];

  sendLaterDate = [(EMMessageListItemChange *)self sendLaterDate];
  [coderCopy encodeObject:sendLaterDate forKey:@"EFPropertyKey_sendLaterDate"];

  summary = [(EMMessageListItemChange *)self summary];
  [coderCopy encodeObject:summary forKey:@"EFPropertyKey_summary"];

  generatedSummary = [(EMMessageListItemChange *)self generatedSummary];
  [coderCopy encodeObject:generatedSummary forKey:@"EFPropertyKey_generatedSummary"];

  isUrgent = [(EMMessageListItemChange *)self isUrgent];
  [coderCopy encodeObject:isUrgent forKey:@"EFPropertyKey_isUrgent"];

  senderList = [(EMMessageListItemChange *)self senderList];
  [coderCopy encodeObject:senderList forKey:@"EFPropertyKey_senderList"];

  toList = [(EMMessageListItemChange *)self toList];
  [coderCopy encodeObject:toList forKey:@"EFPropertyKey_toList"];

  ccList = [(EMMessageListItemChange *)self ccList];
  [coderCopy encodeObject:ccList forKey:@"EFPropertyKey_ccList"];

  flags = [(EMMessageListItemChange *)self flags];
  [coderCopy encodeObject:flags forKey:@"EFPropertyKey_flags"];

  hasUnflagged = [(EMMessageListItemChange *)self hasUnflagged];
  [coderCopy encodeObject:hasUnflagged forKey:@"EFPropertyKey_hasUnflagged"];

  flagColors = [(EMMessageListItemChange *)self flagColors];
  [coderCopy encodeObject:flagColors forKey:@"EFPropertyKey_flagColors"];

  isVIP = [(EMMessageListItemChange *)self isVIP];
  [coderCopy encodeObject:isVIP forKey:@"EFPropertyKey_isVIP"];

  isBlocked = [(EMMessageListItemChange *)self isBlocked];
  [coderCopy encodeObject:isBlocked forKey:@"EFPropertyKey_isBlocked"];

  searchResultType = [(EMMessageListItemChange *)self searchResultType];
  [coderCopy encodeObject:searchResultType forKey:@"EFPropertyKey_searchResultType"];

  searchRelevanceScore = [(EMMessageListItemChange *)self searchRelevanceScore];
  [coderCopy encodeObject:searchRelevanceScore forKey:@"EFPropertyKey_searchRelevanceScore"];

  unsubscribeType = [(EMMessageListItemChange *)self unsubscribeType];
  [coderCopy encodeObject:unsubscribeType forKey:@"EFPropertyKey_unsubscribeType"];

  hasAttachments = [(EMMessageListItemChange *)self hasAttachments];
  [coderCopy encodeObject:hasAttachments forKey:@"EFPropertyKey_hasAttachments"];

  conversationNotificationLevel = [(EMMessageListItemChange *)self conversationNotificationLevel];
  [coderCopy encodeObject:conversationNotificationLevel forKey:@"EFPropertyKey_conversationNotificationLevel"];

  v31 = [(EMMessageListItemChange *)self count];
  [coderCopy encodeObject:v31 forKey:@"EFPropertyKey_count"];

  conversationID = [(EMMessageListItemChange *)self conversationID];
  [coderCopy encodeObject:conversationID forKey:@"EFPropertyKey_conversationID"];

  mailboxObjectIDs = [(EMMessageListItemChange *)self mailboxObjectIDs];
  [coderCopy encodeObject:mailboxObjectIDs forKey:@"EFPropertyKey_mailboxObjectIDs"];

  displayMessageItemID = [(EMMessageListItemChange *)self displayMessageItemID];
  [coderCopy encodeObject:displayMessageItemID forKey:@"EFPropertyKey_displayMessageItemID"];
}

@end