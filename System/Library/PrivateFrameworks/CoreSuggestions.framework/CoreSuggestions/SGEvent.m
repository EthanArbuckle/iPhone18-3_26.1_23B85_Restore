@interface SGEvent
+ (SGEvent)eventWithRecordId:(id)a3 origin:(id)a4 uniqueKey:(id)a5 opaqueKey:(id)a6 title:(id)a7 notes:(id)a8 start:(id)a9 startTimeZone:(id)a10 end:(id)a11 endTimeZone:(id)a12 isAllDay:(BOOL)a13 creationDate:(id)a14 lastModifiedDate:(id)a15 locations:(id)a16 tags:(id)a17 URL:(id)a18;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEvent:(id)a3;
- (BOOL)isNaturalLanguageEvent;
- (BOOL)shouldAllowNotificationsInCalendarForBundleId:(id)a3 appIsInForeground:(BOOL)a4 allowListOverride:(id)a5;
- (BOOL)shouldAllowNotificationsInCalendarWithAllowListOverride:(id)a3;
- (SGEvent)initWithCoder:(id)a3;
- (SGEvent)initWithRecordId:(id)a3 origin:(id)a4 uniqueKey:(id)a5 opaqueKey:(id)a6 title:(id)a7 notes:(id)a8 start:(id)a9 startTimeZone:(id)a10 end:(id)a11 endTimeZone:(id)a12 isAllDay:(BOOL)a13 creationDate:(id)a14 lastModifiedDate:(id)a15 locations:(id)a16 tagStrings:(id)a17 URL:(id)a18 naturalLanguageEventIdentifier:(id)a19 naturalLanguageEventAttributes:(unint64_t)a20 schemaOrg:(id)a21;
- (SGEvent)initWithRecordId:(id)a3 origin:(id)a4 uniqueKey:(id)a5 opaqueKey:(id)a6 title:(id)a7 notes:(id)a8 start:(id)a9 startTimeZone:(id)a10 end:(id)a11 endTimeZone:(id)a12 isAllDay:(BOOL)a13 creationDate:(id)a14 lastModifiedDate:(id)a15 locations:(id)a16 tags:(id)a17 URL:(id)a18;
- (double)duration;
- (id)_componentsForDate:(id)a3 timeZone:(id)a4 isEnd:(BOOL)a5 calendar:(id)a6;
- (id)_naturalLanguageEventTagsInTags:(id)a3;
- (id)dateForUTCDate:(id)a3 withTimeZone:(id)a4;
- (id)endDateComponents;
- (id)firstLocationForType:(unint64_t)a3;
- (id)geocodedEventWithStartDate:(id)a3 startTimeZone:(id)a4 endDate:(id)a5 endTimeZone:(id)a6 locations:(id)a7;
- (id)loggingIdentifier;
- (id)poiFilters;
- (id)startDateComponents;
- (id)toEKEventWithStore:(id)a3;
- (int64_t)ekEventAvailabilityState;
- (unint64_t)geocodingMode;
- (void)_applyTimeRangeToEKEvent:(id)a3 withTZID:(id)a4;
- (void)_mergeTagsIntoEKEvent:(id)a3 withStore:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)mergeIntoEKEvent:(id)a3;
- (void)mergeIntoEKEvent:(id)a3 withStore:(id)a4 preservingValuesDifferentFrom:(id)a5;
- (void)setAttributeSetForEvent:(id)a3;
@end

@implementation SGEvent

- (void)setAttributeSetForEvent:(id)a3
{
  v4 = [a3 copy];
  attributeSetForEvent = self->_attributeSetForEvent;
  self->_attributeSetForEvent = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)loggingIdentifier
{
  p_opaqueKey = &self->_opaqueKey;
  if (self->_opaqueKey || (p_opaqueKey = &self->_uniqueKey, self->_uniqueKey))
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%tu", -[NSString hash](*p_opaqueKey, "hash")];
  }

  else
  {
    v3 = &stru_1F385B250;
  }

  if ([(__CFString *)v3 length]> 0xC)
  {
    v4 = [(__CFString *)v3 substringWithRange:0, 12];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (id)_naturalLanguageEventTagsInTags:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 isNaturalLanguageEventTypeIdentifier])
        {
          v11 = [v10 value];

          v6 = v11;
        }

        if ([v10 isNaturalLanguageEventAttributes])
        {
          v12 = [v10 value];
          v7 = [v12 longLongValue];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v13 = MEMORY[0x1E69C5D98];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  v15 = [v13 tupleWithFirst:v6 second:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)isNaturalLanguageEvent
{
  tags = self->_tags;
  v3 = +[SGEntityTag naturalLanguageEvent];
  v4 = [v3 name];
  LOBYTE(tags) = [(NSArray *)tags containsObject:v4];

  return tags;
}

- (id)geocodedEventWithStartDate:(id)a3 startTimeZone:(id)a4 endDate:(id)a5 endTimeZone:(id)a6 locations:(id)a7
{
  v32 = a7;
  v12 = a6;
  v31 = a5;
  v30 = a4;
  v29 = a3;
  v28 = [SGEvent alloc];
  v27 = [(SGObject *)self recordId];
  v13 = [(SGObject *)self origin];
  uniqueKey = self->_uniqueKey;
  v26 = v13;
  opaqueKey = self->_opaqueKey;
  title = self->_title;
  notes = self->_notes;
  LOBYTE(a4) = self->_isAllDay;
  creationDate = self->_creationDate;
  lastModifiedDate = self->_lastModifiedDate;
  tags = self->_tags;
  v19 = [(SGEvent *)self URL];
  naturalLanguageEventAttributes = self->_naturalLanguageEventAttributes;
  LOBYTE(v23) = a4;
  v21 = [(SGEvent *)v28 initWithRecordId:v27 origin:v26 uniqueKey:uniqueKey opaqueKey:opaqueKey title:title notes:notes start:v29 startTimeZone:v30 end:v31 endTimeZone:v12 isAllDay:v23 creationDate:creationDate lastModifiedDate:lastModifiedDate locations:v32 tagStrings:tags URL:v19 naturalLanguageEventIdentifier:self->_naturalLanguageEventTypeIdentifier naturalLanguageEventAttributes:naturalLanguageEventAttributes schemaOrg:self->_schemaOrg];

  return v21;
}

- (id)poiFilters
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_tags;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [SGEntityTag resolveName:*(*(&v9 + 1) + 8 * i), v9];
        if ([v6 isPOIFilters])
        {
          v3 = [v6 value];

          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)geocodingMode
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = self->_tags;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v3)
  {
    v14 = 0;
    goto LABEL_17;
  }

  v4 = v3;
  v5 = *v18;
  while (2)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [SGEntityTag resolveName:*(*(&v17 + 1) + 8 * i), v17];
      v8 = +[SGEntityTag geocodingModeAddressOnly];
      v9 = [v7 isEqualToEntityTag:v8];

      if (v9)
      {
        v14 = 1;
LABEL_15:

        goto LABEL_17;
      }

      v10 = +[SGEntityTag geocodingModePOIOnly];
      v11 = [v7 isEqualToEntityTag:v10];

      if (v11)
      {
        v14 = 2;
        goto LABEL_15;
      }

      v12 = +[SGEntityTag geocodingModeAddressThenPOI];
      v13 = [v7 isEqualToEntityTag:v12];

      if (v13)
      {
        v14 = 3;
        goto LABEL_17;
      }
    }

    v4 = [(NSArray *)v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    v14 = 0;
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_17:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)firstLocationForType:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_locations;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 locationType] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)mergeIntoEKEvent:(id)a3 withStore:(id)a4 preservingValuesDifferentFrom:(id)a5
{
  v194[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 objectForKeyedSubscript:@"summary"];
  if (!v12 || ([v9 title], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqualToString:", v13), v13, v14))
  {
    [v9 setTitle:self->_title];
  }

  v15 = [v11 objectForKeyedSubscript:@"description"];
  if (!v15 || ([v9 notes], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqual:", v16), v16, v17))
  {
    [v9 setNotes:self->_notes];
  }

  v18 = objc_opt_new();
  v19 = [MEMORY[0x1E695DF00] date];
  [v18 addObject:v19];

  if (self->_creationDate)
  {
    [v18 addObject:?];
  }

  v20 = [v18 sortedArrayUsingSelector:sel_compare_];
  v21 = [v20 firstObject];

  v176 = v21;
  [v9 setCreationDate:v21];
  [v9 setLastModifiedDate:self->_lastModifiedDate];
  v22 = [(SGObject *)self origin];
  v178 = v15;
  v179 = v12;
  v177 = v18;
  if ([v22 type] == 1)
  {
    goto LABEL_14;
  }

  v23 = [(SGObject *)self origin];
  if ([v23 type] == 4)
  {
    goto LABEL_13;
  }

  v24 = [(SGObject *)self origin];
  if ([v24 type] == 6)
  {

LABEL_13:
LABEL_14:

    goto LABEL_15;
  }

  [(SGObject *)self origin];
  v163 = v162 = self;
  if ([v163 type] == 5)
  {

    self = v162;
    goto LABEL_14;
  }

  v164 = [(SGObject *)v162 origin];
  v173 = v11;
  v165 = [v164 type];

  v166 = v165 == 7;
  v11 = v173;
  self = v162;
  if (!v166)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:v162 file:@"SGEvent.m" lineNumber:534 description:{@"Suggested events can only come from Mail, Messages, Safari, Interactions or schema.org"}];
    goto LABEL_14;
  }

LABEL_15:
  v25 = [(SGObject *)self origin];
  if ([v25 type] == 1)
  {
  }

  else
  {
    v26 = [(SGObject *)self origin];
    v27 = [v26 type];

    if (v27 != 4)
    {
      goto LABEL_29;
    }
  }

  v28 = [(SGEvent *)self URL];
  v29 = self;
  if (!v28)
  {
    goto LABEL_21;
  }

  v30 = v28;
  v31 = [(SGEvent *)self tags];
  v32 = +[SGEntityTag fromCalendarAttachment];
  v33 = [v32 name];
  v34 = [v31 containsObject:v33];

  if (!v34)
  {
LABEL_21:
    v36 = [(SGObject *)v29 origin];
    self = v29;
    if ([v36 type] == 1)
    {
      opaqueKey = v29->_opaqueKey;

      if (opaqueKey)
      {
        v35 = [(SGObject *)v29 origin];
        v38 = [v35 externalKey];
        v39 = [SGEKEventConversions urlForEKEventFromMailMessageWithId:v38 sentAt:v29->_creationDate opaqueKey:v29->_opaqueKey];
LABEL_27:
        v42 = v39;
        [v9 setURL:v39];

        goto LABEL_28;
      }
    }

    else
    {
    }

    v40 = [(SGObject *)v29 origin];
    v41 = [v40 type];

    if (v41 != 4)
    {
      goto LABEL_29;
    }

    v35 = [(SGObject *)v29 origin];
    v38 = [v35 externalKey];
    v39 = [SGEKEventConversions urlForEKEventFromTextMessageWithUniqueIdentifier:v38];
    goto LABEL_27;
  }

  v35 = [(SGEvent *)v29 URL];
  [v9 setURL:v35];
  self = v29;
LABEL_28:

LABEL_29:
  v43 = [(SGEvent *)self firstLocationForType:0];
  v180 = self;
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = [(SGEvent *)self firstLocationForType:2];

    if (!v44)
    {
      goto LABEL_49;
    }
  }

  if (([v44 isGeocoded] & 1) == 0)
  {
    v45 = [v44 handle];

    if (!v45)
    {
      v151 = [v44 label];
      if (v151)
      {
        v152 = v151;
        v153 = [v44 address];
        if (v153)
        {
          v154 = v153;
          v155 = [v44 label];
          v156 = [v44 address];
          v157 = [v155 isEqualToString:v156];

          if ((v157 & 1) == 0)
          {
            v158 = [v44 label];
            v194[0] = v158;
            v159 = [v44 address];
            v194[1] = v159;
            v160 = [MEMORY[0x1E695DEC8] arrayWithObjects:v194 count:2];
            v161 = [v160 _pas_componentsJoinedByString:@"\n"];
            [v9 setLocation:v161];

            self = v180;
            goto LABEL_49;
          }
        }

        else
        {
        }
      }

      v167 = [v44 address];
      if ([v167 length])
      {

        self = v180;
      }

      else
      {
        v168 = [v44 label];
        v169 = [v168 length];

        self = v180;
        if (!v169)
        {
          goto LABEL_49;
        }
      }

      v62 = [v44 address];
      if (v62)
      {
        [v9 setLocation:v62];
        goto LABEL_48;
      }

      v63 = [v44 label];
      [v9 setLocation:v63];
LABEL_47:

LABEL_48:
      goto LABEL_49;
    }
  }

  v46 = [v44 label];
  if (v46)
  {
    [v9 setLocation:v46];
  }

  else
  {
    v47 = [v44 address];
    [v9 setLocation:v47];
  }

  v48 = SGWeakLinkClass(@"EKStructuredLocation", 0);
  v49 = [v44 label];
  v50 = v49;
  if (!v49)
  {
    v50 = [v44 address];
  }

  v51 = [(objc_class *)v48 locationWithTitle:v50];
  [v9 setStructuredLocation:v51];

  if (!v49)
  {
  }

  v52 = [v44 address];

  if (v52)
  {
    v53 = [v44 address];
    v54 = [v9 structuredLocation];
    [v54 setAddress:v53];
  }

  if ([v44 isGeocoded])
  {
    v55 = objc_alloc(MEMORY[0x1E6985C40]);
    [v44 latitude];
    v57 = v56;
    [v44 longitude];
    v59 = [v55 initWithLatitude:v57 longitude:v58];
    v60 = [v9 structuredLocation];
    [v60 setGeoLocation:v59];
  }

  v61 = [v44 handle];

  if (v61)
  {
    v62 = [v44 handle];
    v63 = [v9 structuredLocation];
    [v63 setMapKitHandle:v62];
    goto LABEL_47;
  }

LABEL_49:
  v64 = [(SGEvent *)self firstLocationForType:3];
  v65 = v64;
  if (v64)
  {
    if (([v64 isGeocoded] & 1) != 0 || (objc_msgSend(v65, "handle"), v66 = objc_claimAutoreleasedReturnValue(), v66, v66))
    {
      v67 = SGWeakLinkClass(@"EKStructuredLocation", 0);
      v68 = [v65 label];
      v69 = v68;
      if (!v68)
      {
        v69 = [v65 address];
      }

      v70 = [(objc_class *)v67 locationWithTitle:v69];
      [v9 setEndLocation:v70];

      if (!v68)
      {
      }

      v71 = [v65 address];

      if (v71)
      {
        v72 = [v65 address];
        v73 = [v9 endLocation];
        [v73 setAddress:v72];
      }

      if ([v65 isGeocoded])
      {
        v74 = objc_alloc(MEMORY[0x1E6985C40]);
        [v65 latitude];
        v76 = v75;
        [v65 longitude];
        v78 = [v74 initWithLatitude:v76 longitude:v77];
        v79 = [v9 endLocation];
        [v79 setGeoLocation:v78];
      }

      v80 = [v65 handle];

      if (v80)
      {
        v81 = [v65 handle];
        v82 = [v9 endLocation];
        [v82 setMapKitHandle:v81];
      }
    }
  }

  v175 = v44;
  tags = self->_tags;
  v84 = +[SGEntityTag extractedFlight];
  v85 = [v84 name];
  LODWORD(tags) = [(NSArray *)tags containsObject:v85];

  if (tags)
  {
    [v9 setTravelAdvisoryBehavior:2];
  }

  v86 = self->_tags;
  v87 = +[SGEntityTag fromSync];
  v88 = [v87 name];
  LODWORD(v86) = [(NSArray *)v86 containsObject:v88];

  if (v86)
  {
    [v9 setLocalCustomObject:MEMORY[0x1E695E118] forKey:@"EKEventSuggestedEventSavedFromSyncKey"];
  }

  v89 = [(SGEvent *)self ekEventAvailabilityState];
  v90 = sgEventsLogHandle();
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v193 = v89;
    _os_log_debug_impl(&dword_1BA729000, v90, OS_LOG_TYPE_DEBUG, "EKEvent Availability: %ld", buf, 0xCu);
  }

  v174 = v65;

  v91 = [MEMORY[0x1E696AD98] numberWithInteger:v89];
  [v9 setLocalCustomObject:v91 forKey:@"EKEventAvailabilityState"];

  schemaOrg = self->_schemaOrg;
  if (schemaOrg)
  {
    [v9 setCustomObject:schemaOrg forKey:@"SuggestionsSchemaOrg"];
  }

  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v93 = self->_tags;
  v94 = [(NSArray *)v93 countByEnumeratingWithState:&v186 objects:v191 count:16];
  if (v94)
  {
    v95 = v94;
    v96 = *v187;
    while (2)
    {
      for (i = 0; i != v95; ++i)
      {
        if (*v187 != v96)
        {
          objc_enumerationMutation(v93);
        }

        v98 = [SGEntityTag resolveName:*(*(&v186 + 1) + 8 * i)];
        if ([v98 isEventMetadata])
        {
          v99 = [v98 eventMetadata];
          if (v99)
          {
            [v9 setCustomObject:v99 forKey:@"SGEventMetadataKey"];
          }

          self = v180;
          goto LABEL_82;
        }
      }

      v95 = [(NSArray *)v93 countByEnumeratingWithState:&v186 objects:v191 count:16];
      self = v180;
      if (v95)
      {
        continue;
      }

      break;
    }
  }

LABEL_82:

  if ([(SGEvent *)self isNaturalLanguageEvent])
  {
    v171 = v9;
    v172 = v11;
    v170 = v10;
    v181 = objc_opt_new();
    v100 = objc_opt_new();
    [v100 setObject:self->_naturalLanguageEventTypeIdentifier forKeyedSubscript:@"SuggestionsNLEventDictionaryEventTypeKey"];
    v101 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_naturalLanguageEventAttributes];
    [v100 setObject:v101 forKeyedSubscript:@"SuggestionsNLEventDictionaryEventAttributesKey"];

    v102 = MEMORY[0x1E696AD98];
    v103 = self->_tags;
    v104 = 0x1E7EFA000uLL;
    v105 = +[SGEntityTag significantSender];
    v106 = [v105 name];
    v107 = [v102 numberWithBool:{-[NSArray containsObject:](v103, "containsObject:", v106)}];
    [v100 setObject:v107 forKeyedSubscript:@"SuggestionsNLEventDictionaryEventSignificantSenderKey"];

    v108 = v180->_tags;
    v109 = +[SGEntityTag titleGeneratedFromTemplate];
    v110 = [v109 name];
    LOBYTE(v108) = [(NSArray *)v108 containsObject:v110];

    if (v108)
    {
      v111 = kSuggestionsEkEventNLEventDictionaryEventTitleSourceTemplateValue;
    }

    else
    {
      v112 = v180->_tags;
      v113 = +[SGEntityTag titleGeneratedFromSubject];
      v114 = [v113 name];
      LODWORD(v112) = [(NSArray *)v112 containsObject:v114];

      if (!v112)
      {
LABEL_88:
        v184 = 0u;
        v185 = 0u;
        v182 = 0u;
        v183 = 0u;
        v115 = v180->_tags;
        v116 = [(NSArray *)v115 countByEnumeratingWithState:&v182 objects:v190 count:16];
        if (!v116)
        {
          goto LABEL_112;
        }

        v117 = v116;
        v118 = *v183;
        while (1)
        {
          v119 = 0;
          do
          {
            if (*v183 != v118)
            {
              objc_enumerationMutation(v115);
            }

            v120 = [*(v104 + 1224) resolveName:{*(*(&v182 + 1) + 8 * v119), v170}];
            if ([v120 isConfidenceScore])
            {
              v121 = MEMORY[0x1E696AD98];
              v122 = [v120 value];
              [v122 doubleValue];
              v123 = [v121 numberWithDouble:?];
              v124 = v100;
              v125 = v123;
              v126 = @"SuggestionsNLEventDictionaryEventConfidenceScoreKey";
              goto LABEL_97;
            }

            if ([v120 isParticipantCount])
            {
              v127 = MEMORY[0x1E696AD98];
              v122 = [v120 value];
              v123 = [v127 numberWithInteger:{objc_msgSend(v122, "integerValue")}];
              v124 = v100;
              v125 = v123;
              v126 = @"SuggestionsNLEventDictionaryEventParticipantCountKey";
              goto LABEL_97;
            }

            if ([v120 isNaturalLanguageEventLanguageID])
            {
              v122 = [v120 value];
              [v100 setObject:v122 forKeyedSubscript:@"SuggestionsNLEventDictionaryEventLanguageIDKey"];
              goto LABEL_98;
            }

            if ([v120 isCalendarAppUsageLevel])
            {
              v128 = MEMORY[0x1E696AD98];
              v122 = [v120 value];
              [v122 floatValue];
              v123 = [v128 numberWithFloat:?];
              v124 = v181;
              v125 = v123;
              v126 = @"SuggestionsNLEventDictionaryCalendarAppUsageLevelKey";
              goto LABEL_97;
            }

            if ([v120 isMailAppUsageLevel])
            {
              v129 = MEMORY[0x1E696AD98];
              v122 = [v120 value];
              v123 = [v129 numberWithInteger:{objc_msgSend(v122, "integerValue")}];
              v124 = v181;
              v125 = v123;
              v126 = @"SuggestionsNLEventDictionaryMailAppUsageLevelKey";
              goto LABEL_97;
            }

            if ([v120 isMessagesAppUsageLevel])
            {
              v130 = MEMORY[0x1E696AD98];
              v122 = [v120 value];
              v123 = [v130 numberWithInteger:{objc_msgSend(v122, "integerValue")}];
              v124 = v181;
              v125 = v123;
              v126 = @"SuggestionsNLEventDictionaryMessagesAppUsageLevelKey";
              goto LABEL_97;
            }

            if ([v120 isUsedBubblesCount])
            {
              v131 = MEMORY[0x1E696AD98];
              v122 = [v120 value];
              v123 = [v131 numberWithInteger:{objc_msgSend(v122, "integerValue")}];
              v124 = v181;
              v125 = v123;
              v126 = @"SuggestionsNLEventDictionaryEventUsedBubblesCountKey";
LABEL_97:
              [v124 setObject:v125 forKeyedSubscript:v126];

              v104 = 0x1E7EFA000;
LABEL_98:
            }

            ++v119;
          }

          while (v117 != v119);
          v132 = [(NSArray *)v115 countByEnumeratingWithState:&v182 objects:v190 count:16];
          v117 = v132;
          if (!v132)
          {
LABEL_112:

            v133 = [v181 copy];
            v9 = v171;
            [v171 setLocalCustomObject:v133 forKey:@"SuggestionsNLEventDictionaryKey"];

            v134 = [v100 copy];
            [v171 setCustomObject:v134 forKey:@"SuggestionsNLEventDictionaryKey"];

            v10 = v170;
            v11 = v172;
            self = v180;
            goto LABEL_113;
          }
        }
      }

      v111 = kSuggestionsEkEventNLEventDictionaryEventTitleSourceSubjectValue;
    }

    [v100 setObject:*v111 forKeyedSubscript:{@"SuggestionsNLEventDictionaryEventTitleSourceKey", v10}];
    goto LABEL_88;
  }

LABEL_113:
  v135 = [(SGObject *)self origin];
  v136 = [v135 bundleId];
  [v9 setLocalCustomObject:v136 forKey:@"SuggestionsOriginBundleId"];

  v137 = [(SGObject *)self origin];
  v138 = [v137 fromPerson];
  v139 = [v138 displayName];
  [v9 setLocalCustomObject:v139 forKey:@"SuggestionsOriginDisplayName"];

  v140 = objc_alloc(SGWeakLinkClass(@"EKSuggestedEventInfo", 0));
  v141 = self->_opaqueKey;
  uniqueKey = self->_uniqueKey;
  v143 = [(SGObject *)self origin];
  [v143 externalKey];
  v145 = v144 = self;
  v146 = [v140 initWithEventStore:v10 opaqueKey:v141 uniqueKey:uniqueKey extractionGroupIdentifier:v145];

  [v9 setSuggestionInfo:v146];
  [(NSDate *)v144->_creationDate timeIntervalSince1970];
  v148 = v147;
  v149 = [v9 suggestionInfo];
  [v149 setTimestamp:v148];

  [(SGEvent *)v144 _mergeTagsIntoEKEvent:v9 withStore:v10];
  v150 = *MEMORY[0x1E69E9840];
}

- (void)_mergeTagsIntoEKEvent:(id)a3 withStore:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v17 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(SGEvent *)self tags];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [SGEntityTag resolveName:*(*(&v19 + 1) + 8 * i)];
        v13 = [v12 name];
        v14 = [v13 hasPrefix:@"TZID"];

        if (v14)
        {
          v15 = [v12 value];

          v9 = v15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  [(SGEvent *)self _applyTimeRangeToEKEvent:v18 withTZID:v9];
  v16 = *MEMORY[0x1E69E9840];
}

- (void)_applyTimeRangeToEKEvent:(id)a3 withTZID:(id)a4
{
  v20 = a4;
  v6 = MEMORY[0x1E695DEE8];
  v7 = *MEMORY[0x1E695D850];
  v8 = a3;
  v9 = [v6 calendarWithIdentifier:v7];
  v10 = [v20 isEqualToString:@"floating"];
  if (v20 && (v10 & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DFE8] timeZoneWithName:v20];
LABEL_6:
    v12 = v11;
    v13 = v12;
    endTimeZone = v12;
    goto LABEL_7;
  }

  if (v20)
  {
    v11 = 0;
    goto LABEL_6;
  }

  v12 = self->_startTimeZone;
  v13 = 0;
  endTimeZone = self->_endTimeZone;
LABEL_7:
  start = self->_start;
  v16 = endTimeZone;
  v17 = [(SGEvent *)self _componentsForDate:start timeZone:v12 isEnd:0 calendar:v9];
  v18 = [(SGEvent *)self _componentsForDate:self->_end timeZone:v16 isEnd:1 calendar:v9];

  v19 = [SGSimpleTimeRange rangeWithGregorianStartComponents:v17 endComponents:v18];
  [v19 applyToEKEvent:v8 isAllDay:-[SGEvent isAllDay](self isFloating:{"isAllDay"), v10}];
}

- (BOOL)shouldAllowNotificationsInCalendarForBundleId:(id)a3 appIsInForeground:(BOOL)a4 allowListOverride:(id)a5
{
  v54[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if ([(SGEvent *)self isNaturalLanguageEvent])
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "SGEvent-shouldAllowNotificationsInCalendarForBundleId: Not allowing notification for NL event.";
LABEL_8:
      _os_log_impl(&dword_1BA729000, v10, OS_LOG_TYPE_INFO, v11, buf, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (!v8 || [v8 isEqualToString:&stru_1F385B250])
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "SGEvent-shouldAllowNotificationsInCalendarForBundleId: Not allowing notification for event without bundleid";
      goto LABEL_8;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  if (!a4)
  {
    v10 = sgLogHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v11 = "SGEvent-shouldAllowNotificationsInCalendarForBundleId: Not allowing notification for app not in foreground.";
    goto LABEL_8;
  }

  v15 = [@"com.apple.MobileSMS" lowercaseString];
  v54[0] = v15;
  v16 = [@"com.apple.mobilemail" lowercaseString];
  v54[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];

  v40 = v9;
  v41 = v8;
  if (v9)
  {
    v10 = [v17 mutableCopy];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v48;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v48 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v47 + 1) + 8 * i);
          v24 = [v23 lowercaseString];
          v25 = [v17 containsObject:v24];

          if (v25)
          {
            v26 = [v23 lowercaseString];
            [v10 removeObject:v26];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v20);
    }

    v8 = v41;
  }

  else
  {
    v10 = v17;
  }

  v27 = [v8 lowercaseString];
  v28 = [v10 containsObject:v27];

  if (v28)
  {
    v29 = sgLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA729000, v29, OS_LOG_TYPE_INFO, "SGEvent-shouldAllowNotificationsInCalendarForBundleId: Not allowing notification from excluded bundleId.", buf, 2u);
    }

    v12 = 0;
    v9 = v40;
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [(SGEvent *)self tags];
    v30 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v44;
      while (2)
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v44 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = [SGEntityTag resolveName:*(*(&v43 + 1) + 8 * j)];
          v35 = [v34 name];
          v36 = +[SGEntityTag fromSync];
          v37 = [v36 name];
          v38 = [v35 isEqualToString:v37];

          if (v38)
          {
            v39 = sgLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1BA729000, v39, OS_LOG_TYPE_INFO, "SGEvent-shouldAllowNotificationsInCalendarForBundleId: Not allowing notification from synced event.", buf, 2u);
            }

            v12 = 0;
            v9 = v40;
            v8 = v41;
            v29 = obj;
            goto LABEL_44;
          }
        }

        v31 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }
    }

    v29 = sgLogHandle();
    v12 = 1;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA729000, v29, OS_LOG_TYPE_INFO, "SGEvent-shouldAllowNotificationsInCalendarForBundleId: Allowing notification.", buf, 2u);
    }

    v9 = v40;
    v8 = v41;
  }

LABEL_44:

LABEL_10:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)shouldAllowNotificationsInCalendarWithAllowListOverride:(id)a3
{
  v4 = a3;
  v5 = [(SGObject *)self origin];
  v6 = [v5 bundleId];

  if (v6 && ![v6 isEqualToString:&stru_1F385B250])
  {
    v7 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:v6];
    v16 = 0;
    v9 = [MEMORY[0x1E69C75D0] handleForPredicate:v7 error:&v16];
    v10 = v9;
    if (!v9 || v16)
    {
      v11 = sgLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_error_impl(&dword_1BA729000, v11, OS_LOG_TYPE_ERROR, "SGEvent-shouldAllowNotificationsInCalendar: Could not get handle for app.", v15, 2u);
      }

      v13 = 0;
    }

    else
    {
      v11 = [v9 currentState];
      v12 = [v11 endowmentNamespaces];
      v13 = [v12 containsObject:@"com.apple.frontboard.visibility"];
    }

    v8 = [(SGEvent *)self shouldAllowNotificationsInCalendarForBundleId:v6 appIsInForeground:v13 allowListOverride:v4];
  }

  else
  {
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA729000, v7, OS_LOG_TYPE_INFO, "SGEvent-shouldAllowNotificationsInCalendar: Not allowing notification for event without bundleid", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)mergeIntoEKEvent:(id)a3
{
  v4 = a3;
  SGWeakLinkClass(@"EKEventStore", 0);
  v5 = objc_opt_new();
  [(SGEvent *)self mergeIntoEKEvent:v4 withStore:v5];
}

- (id)toEKEventWithStore:(id)a3
{
  v4 = a3;
  v5 = [(objc_class *)SGWeakLinkClass(@"EKEvent" eventWithEventStore:"eventWithEventStore:", v4];
  [(SGEvent *)self mergeIntoEKEvent:v5 withStore:v4];

  return v5;
}

- (int64_t)ekEventAvailabilityState
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_tags;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v3)
  {
    v6 = 3;
    goto LABEL_26;
  }

  v4 = v3;
  v5 = *v15;
  v6 = 3;
  while (2)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v15 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v8 = [SGEntityTag resolveName:*(*(&v14 + 1) + 8 * i), v14];
      if ([v8 isEKEventAvailabilityState])
      {
        v9 = [v8 value];
        v10 = v9;
        if (v9)
        {
          if ([v9 isEqual:@"ekEventAvailabilityStateNotsupported"])
          {
            v6 = -1;
          }

          else if ([v10 isEqual:@"ekEventAvailabilityStateBusy"])
          {
            v6 = 0;
          }

          else if ([v10 isEqual:@"ekEventAvailabilityStateFree"])
          {
            v6 = 1;
          }

          else
          {
            if (([v10 isEqual:@"ekEventAvailabilityStateTentative"] & 1) == 0)
            {
              if ([v10 isEqual:@"ekEventAvailabilityStateUnavailable"])
              {
                goto LABEL_24;
              }

              goto LABEL_13;
            }

            v6 = 2;
          }

LABEL_24:

          goto LABEL_25;
        }

LABEL_13:
      }

      if ([v8 isExtractedEventCategory])
      {
        v11 = +[SGEntityTag extractedHotel];
        v6 = v8 == v11;

LABEL_25:
        goto LABEL_26;
      }
    }

    v4 = [(NSArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_26:

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqualToEvent:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = SGEvent;
  if (![(SGObject *)&v39 isEqualToSuggestion:v4])
  {
    goto LABEL_41;
  }

  v5 = self->_title;
  v6 = v5;
  if (v5 == v4[6])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v8 = self->_notes;
  v9 = v8;
  if (v8 == v4[7])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v11 = self->_start;
  v12 = v11;
  if (v11 == v4[8])
  {
  }

  else
  {
    v13 = [(NSDate *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v14 = self->_startTimeZone;
  v15 = v14;
  if (v14 == v4[9])
  {
  }

  else
  {
    v16 = [(NSTimeZone *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v17 = self->_end;
  v18 = v17;
  if (v17 == v4[10])
  {
  }

  else
  {
    v19 = [(NSDate *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v20 = self->_endTimeZone;
  v21 = v20;
  if (v20 == v4[11])
  {
  }

  else
  {
    v22 = [(NSTimeZone *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (self->_isAllDay != *(v4 + 40))
  {
LABEL_41:
    v35 = 0;
    goto LABEL_42;
  }

  v23 = self->_creationDate;
  v24 = v23;
  if (v23 == v4[12])
  {
  }

  else
  {
    v25 = [(NSDate *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v26 = self->_lastModifiedDate;
  v27 = v26;
  if (v26 == v4[13])
  {
  }

  else
  {
    v28 = [(NSDate *)v26 isEqual:?];

    if ((v28 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v29 = self->_locations;
  v30 = v29;
  if (v29 == v4[14])
  {
  }

  else
  {
    v31 = [(NSArray *)v29 isEqual:?];

    if ((v31 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v32 = self->_opaqueKey;
  v33 = v32;
  if (v32 == v4[15])
  {
  }

  else
  {
    v34 = [(NSString *)v32 isEqual:?];

    if ((v34 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v37 = self->_attributeSetForEvent;
  v38 = v37;
  if (v37 == v4[22])
  {
    v35 = 1;
  }

  else
  {
    v35 = [(CSSearchableItemAttributeSet *)v37 isEqual:?];
  }

LABEL_42:
  return v35;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGEvent *)self isEqualToEvent:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SGEvent;
  v4 = a3;
  [(SGObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_uniqueKey forKey:{@"uniqueKey", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_opaqueKey forKey:@"opaqueKey"];
  [v4 encodeObject:self->_URL forKey:@"URL"];
  [v4 encodeObject:self->_title forKey:@"title"];
  [v4 encodeObject:self->_notes forKey:@"notes"];
  [v4 encodeObject:self->_start forKey:@"start"];
  [v4 encodeObject:self->_startTimeZone forKey:@"startTimeZone"];
  [v4 encodeObject:self->_end forKey:@"end"];
  [v4 encodeObject:self->_endTimeZone forKey:@"endTimeZone"];
  [v4 encodeBool:self->_isAllDay forKey:@"isAllDay"];
  [v4 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v4 encodeObject:self->_lastModifiedDate forKey:@"lastModifiedDate"];
  [v4 encodeObject:self->_locations forKey:@"locations"];
  [v4 encodeObject:self->_tags forKey:@"tags"];
  [v4 encodeObject:self->_naturalLanguageEventTypeIdentifier forKey:@"naturalLanguageEventTypeIdentifier"];
  [v4 encodeInteger:self->_naturalLanguageEventAttributes forKey:@"naturalLanguageEventAttributes"];
  [v4 encodeObject:self->_schemaOrg forKey:@"schemaOrg"];
  [v4 encodeObject:self->_attributeSetForEvent forKey:@"attributeSetForEvent"];
}

- (SGEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v62.receiver = self;
  v62.super_class = SGEvent;
  v5 = [(SGObject *)&v62 initWithCoder:v4];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"uniqueKey"];
    uniqueKey = v5->_uniqueKey;
    v5->_uniqueKey = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"opaqueKey"];
    opaqueKey = v5->_opaqueKey;
    v5->_opaqueKey = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v13;

    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"title"];
    title = v5->_title;
    v5->_title = v16;

    v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"notes"];
    notes = v5->_notes;
    v5->_notes = v19;

    v21 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"start"];
    start = v5->_start;
    v5->_start = v22;

    v24 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"startTimeZone"];
    startTimeZone = v5->_startTimeZone;
    v5->_startTimeZone = v25;

    v27 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"end"];
    end = v5->_end;
    v5->_end = v28;

    v30 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"endTimeZone"];
    endTimeZone = v5->_endTimeZone;
    v5->_endTimeZone = v31;

    v5->_isAllDay = [v4 decodeBoolForKey:@"isAllDay"];
    v33 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v34;

    v36 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"lastModifiedDate"];
    lastModifiedDate = v5->_lastModifiedDate;
    v5->_lastModifiedDate = v37;

    v39 = objc_alloc(MEMORY[0x1E695DFD8]);
    v40 = objc_opt_class();
    v41 = [v39 initWithObjects:{v40, objc_opt_class(), 0}];
    v42 = [v4 decodeObjectOfClasses:v41 forKey:@"locations"];
    locations = v5->_locations;
    v5->_locations = v42;

    v44 = objc_alloc(MEMORY[0x1E695DFD8]);
    v45 = objc_opt_class();
    v46 = [v44 initWithObjects:{v45, objc_opt_class(), 0}];
    v47 = [v4 decodeObjectOfClasses:v46 forKey:@"tags"];
    tags = v5->_tags;
    v5->_tags = v47;

    v49 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v50 = [v4 decodeObjectOfClasses:v49 forKey:@"naturalLanguageEventTypeIdentifier"];
    naturalLanguageEventTypeIdentifier = v5->_naturalLanguageEventTypeIdentifier;
    v5->_naturalLanguageEventTypeIdentifier = v50;

    v5->_naturalLanguageEventAttributes = [v4 decodeIntegerForKey:@"naturalLanguageEventAttributes"];
    v52 = objc_alloc(MEMORY[0x1E695DFD8]);
    v53 = objc_opt_class();
    v54 = objc_opt_class();
    v55 = [v52 initWithObjects:{v53, v54, objc_opt_class(), 0}];
    v56 = [v4 decodeObjectOfClasses:v55 forKey:@"schemaOrg"];
    schemaOrg = v5->_schemaOrg;
    v5->_schemaOrg = v56;

    v58 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v59 = [v4 decodeObjectOfClasses:v58 forKey:@"attributeSetForEvent"];
    attributeSetForEvent = v5->_attributeSetForEvent;
    v5->_attributeSetForEvent = v59;
  }

  return v5;
}

- (id)dateForUTCDate:(id)a3 withTimeZone:(id)a4
{
  v5 = MEMORY[0x1E695DEE8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v10 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v9 setTimeZone:v10];

  v11 = [v9 components:1048828 fromDate:v7];

  [v11 setTimeZone:v6];
  v12 = [v9 dateFromComponents:v11];

  return v12;
}

- (double)duration
{
  v3 = [(SGEvent *)self end];
  v4 = [(SGEvent *)self start];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (id)endDateComponents
{
  end = self->_end;
  endTimeZone = self->_endTimeZone;
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [(SGEvent *)self _componentsForDate:end timeZone:endTimeZone isEnd:1 calendar:v5];

  return v6;
}

- (id)startDateComponents
{
  start = self->_start;
  startTimeZone = self->_startTimeZone;
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [(SGEvent *)self _componentsForDate:start timeZone:startTimeZone isEnd:0 calendar:v5];

  return v6;
}

- (id)_componentsForDate:(id)a3 timeZone:(id)a4 isEnd:(BOOL)a5 calendar:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = objc_autoreleasePoolPush();
  v13 = [a6 copy];
  v14 = v13;
  if (v11)
  {
    [v13 setTimeZone:v11];
  }

  else
  {
    v15 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v14 setTimeZone:v15];
  }

  v16 = 1048604;
  if (self->_isAllDay)
  {
    v17 = 1048604;
  }

  else
  {
    v17 = 1048828;
  }

  if (!self->_isAllDay || !v7)
  {
    v16 = v17;
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:v10 sinceDate:-1.0];

    v10 = v19;
  }

  v20 = [v14 components:v16 fromDate:v10];
  [v20 setTimeZone:v11];
  objc_autoreleasePoolPop(v12);

  return v20;
}

- (SGEvent)initWithRecordId:(id)a3 origin:(id)a4 uniqueKey:(id)a5 opaqueKey:(id)a6 title:(id)a7 notes:(id)a8 start:(id)a9 startTimeZone:(id)a10 end:(id)a11 endTimeZone:(id)a12 isAllDay:(BOOL)a13 creationDate:(id)a14 lastModifiedDate:(id)a15 locations:(id)a16 tags:(id)a17 URL:(id)a18
{
  v69 = *MEMORY[0x1E69E9840];
  v62 = a3;
  v61 = a4;
  v60 = a5;
  v23 = a6;
  v59 = a7;
  v24 = a8;
  v58 = a9;
  v25 = a10;
  v53 = a11;
  v52 = a12;
  v51 = a14;
  v50 = a15;
  v49 = a16;
  v26 = a17;
  v48 = a18;
  v47 = sgMapSelector(v26, sel_name);
  v27 = +[SGEntityTag naturalLanguageEvent];
  v28 = [v26 containsObject:v27];

  if (v28)
  {
    v29 = [(SGEvent *)self _naturalLanguageEventTagsInTags:v26];
    v30 = [v29 first];
    v31 = [v29 second];
    v32 = [v31 unsignedIntegerValue];
  }

  else
  {
    v32 = 0;
    v30 = 0;
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v33 = v26;
  v34 = [v33 countByEnumeratingWithState:&v64 objects:v68 count:16];
  v56 = v25;
  v57 = v24;
  if (v34)
  {
    v46 = v32;
    v35 = *v65;
    while (2)
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v65 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v37 = *(*(&v64 + 1) + 8 * i);
        if ([v37 isSchemaOrg])
        {
          v38 = MEMORY[0x1E696ACB0];
          v39 = [v37 value];
          v40 = [v39 dataUsingEncoding:4];
          v63 = 0;
          v41 = [v38 JSONObjectWithData:v40 options:0 error:&v63];
          v42 = v63;

          v34 = 0;
          if (!v42)
          {
            v34 = v41;
          }

          goto LABEL_16;
        }
      }

      v34 = [v33 countByEnumeratingWithState:&v64 objects:v68 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }

LABEL_16:
    v32 = v46;
  }

  LOBYTE(v45) = a13;
  v55 = [(SGEvent *)self initWithRecordId:v62 origin:v61 uniqueKey:v60 opaqueKey:v23 title:v59 notes:v57 start:v58 startTimeZone:v56 end:v53 endTimeZone:v52 isAllDay:v45 creationDate:v51 lastModifiedDate:v50 locations:v49 tagStrings:v47 URL:v48 naturalLanguageEventIdentifier:v30 naturalLanguageEventAttributes:v32 schemaOrg:v34];

  v43 = *MEMORY[0x1E69E9840];
  return v55;
}

- (SGEvent)initWithRecordId:(id)a3 origin:(id)a4 uniqueKey:(id)a5 opaqueKey:(id)a6 title:(id)a7 notes:(id)a8 start:(id)a9 startTimeZone:(id)a10 end:(id)a11 endTimeZone:(id)a12 isAllDay:(BOOL)a13 creationDate:(id)a14 lastModifiedDate:(id)a15 locations:(id)a16 tagStrings:(id)a17 URL:(id)a18 naturalLanguageEventIdentifier:(id)a19 naturalLanguageEventAttributes:(unint64_t)a20 schemaOrg:(id)a21
{
  v61 = a5;
  v62 = a6;
  v64 = a7;
  v60 = a8;
  v24 = a9;
  v58 = a10;
  v59 = a11;
  v57 = a12;
  v63 = a14;
  v25 = a15;
  v26 = a16;
  v27 = a17;
  v28 = a18;
  v29 = a19;
  v30 = a21;
  v65.receiver = self;
  v65.super_class = SGEvent;
  v31 = [(SGObject *)&v65 initWithRecordId:a3 origin:a4];
  if (v31)
  {
    v32 = [v62 copy];
    opaqueKey = v31->_opaqueKey;
    v31->_opaqueKey = v32;

    v34 = [v61 copy];
    uniqueKey = v31->_uniqueKey;
    v31->_uniqueKey = v34;

    v36 = [v64 copy];
    title = v31->_title;
    v31->_title = v36;

    v38 = [v60 copy];
    notes = v31->_notes;
    v31->_notes = v38;

    v40 = [v24 copy];
    start = v31->_start;
    v31->_start = v40;

    objc_storeStrong(&v31->_startTimeZone, a10);
    v42 = [v59 copy];
    end = v31->_end;
    v31->_end = v42;

    objc_storeStrong(&v31->_endTimeZone, a12);
    v31->_isAllDay = a13;
    v44 = [v63 copy];
    creationDate = v31->_creationDate;
    v31->_creationDate = v44;

    v46 = [v25 copy];
    lastModifiedDate = v31->_lastModifiedDate;
    v31->_lastModifiedDate = v46;

    v48 = [v26 sortedArrayWithOptions:16 usingComparator:&__block_literal_global_10611];
    locations = v31->_locations;
    v31->_locations = v48;

    objc_storeStrong(&v31->_tags, a17);
    v50 = [v28 copy];
    URL = v31->_URL;
    v31->_URL = v50;

    objc_storeStrong(&v31->_naturalLanguageEventTypeIdentifier, a19);
    v31->_naturalLanguageEventAttributes = a20;
    objc_storeStrong(&v31->_schemaOrg, a21);
    attributeSetForEvent = v31->_attributeSetForEvent;
    v31->_attributeSetForEvent = 0;
  }

  return v31;
}

+ (SGEvent)eventWithRecordId:(id)a3 origin:(id)a4 uniqueKey:(id)a5 opaqueKey:(id)a6 title:(id)a7 notes:(id)a8 start:(id)a9 startTimeZone:(id)a10 end:(id)a11 endTimeZone:(id)a12 isAllDay:(BOOL)a13 creationDate:(id)a14 lastModifiedDate:(id)a15 locations:(id)a16 tags:(id)a17 URL:(id)a18
{
  v36 = a18;
  v34 = a17;
  v31 = a16;
  v28 = a15;
  v25 = a14;
  v27 = a12;
  v41 = a11;
  v40 = a10;
  v39 = a9;
  v26 = a8;
  v30 = a7;
  v33 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  LOBYTE(v24) = a13;
  v22 = [[SGEvent alloc] initWithRecordId:v21 origin:v20 uniqueKey:v19 opaqueKey:v33 title:v30 notes:v26 start:v39 startTimeZone:v40 end:v41 endTimeZone:v27 isAllDay:v24 creationDate:v25 lastModifiedDate:v28 locations:v31 tags:v34 URL:v36];

  return v22;
}

@end