@interface ICSEvent(SGCalendarAttachmentDissector)
- (SGPipelineEnrichment)enrichmentWithParentEntity:()SGCalendarAttachmentDissector withCalendar:withCorrectnessFlag:;
- (id)attendeeEmailAddresses;
- (id)enrichmentWithParentEntity:()SGCalendarAttachmentDissector withCalendar:;
- (uint64_t)method;
@end

@implementation ICSEvent(SGCalendarAttachmentDissector)

- (SGPipelineEnrichment)enrichmentWithParentEntity:()SGCalendarAttachmentDissector withCalendar:withCorrectnessFlag:
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 dtstart];
  if (v10)
  {
    v11 = [a1 dtstart];
    v12 = [v11 validatedCompleteDateTime];
  }

  else
  {
    v12 = 0;
  }

  v13 = [a1 dtend];
  if (v13 && (v14 = v13, [a1 dtend], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "validatedCompleteDateTime"), v16 = objc_claimAutoreleasedReturnValue(), v15, v14, v16))
  {
    v17 = 0;
  }

  else
  {
    v16 = v12;
    v17 = 1;
  }

  v18 = 0;
  if (v12)
  {
    if (v16)
    {
      v18 = [v12 components];
      if (v18)
      {
        v19 = [v16 components];

        if (!v19)
        {
          v18 = 0;
          goto LABEL_90;
        }

        v20 = [a1 uid];
        v21 = v20;
        v113 = v9;
        v108 = v8;
        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v23 = objc_alloc(MEMORY[0x277CCACA8]);
          v24 = [a1 dtstart];
          [v24 value];
          v111 = a5;
          v26 = v25 = v17;
          v27 = [a1 summary];
          v28 = [v23 initWithFormat:@"%@;%@", v26, v27];
          v29 = SGSha256ForString(v28, 0);

          v17 = v25;
          a5 = v111;

          v22 = v29;
          v8 = v108;
        }

        v30 = [v8 duplicateKey];
        v31 = [SGDuplicateKey duplicateKeyForPseudoEventWithGroupId:v22 parentKey:v30];

        v32 = [SGPipelineEnrichment alloc];
        v33 = [a1 summary];
        v107 = v31;
        v34 = [(SGPipelineEnrichment *)v32 initWithDuplicateKey:v31 title:v33 parent:v8];

        v35 = [a1 description];
        [(SGEntity *)v34 setContent:v35];

        v36 = [MEMORY[0x277D01FD8] extractionInfoWithExtractionType:32 modelVersion:0 confidence:0];
        [(SGEntity *)v34 setExtractionInfo:v36];

        v37 = [MEMORY[0x277D01FA0] fromCalendarAttachment];
        [(SGEntity *)v34 addTag:v37];

        v38 = [a1 url];

        if (v38)
        {
          v39 = MEMORY[0x277D01FA0];
          v40 = [a1 url];
          v41 = [v39 url:v40];
          [(SGEntity *)v34 addTag:v41];
        }

        v112 = v34;
        v109 = [v12 components];
        v42 = [v16 components];
        v43 = [a1 firstValueOfPropertyForName:*MEMORY[0x277D7F1D0]];
        v106 = v22;
        if (v43)
        {
          v44 = 1;
        }

        else
        {
          v45 = [a1 firstValueOfPropertyForName:*MEMORY[0x277D7F1D8]];
          if (v45)
          {
            v44 = 1;
          }

          else
          {
            v46 = [v113 x_wr_timezone];
            v44 = v46 != 0;
          }
        }

        v47 = [v12 tzid];

        v48 = MEMORY[0x277D02368];
        if (v47 || v44)
        {
          v49 = [v12 systemTimeZoneWithCalendar:v113 withEvent:a1 withCorrectnessFlag:a5];
          [v109 setTimeZone:v49];

          v50 = [v109 timeZone];

          if (v50)
          {
            v51 = MEMORY[0x277D02380];
          }

          else
          {
            v51 = MEMORY[0x277D02370];
          }

          [MEMORY[0x277D02110] recordWithTimezoneValue:*v51 datetimeType:*v48];
        }

        else
        {
          [MEMORY[0x277D02110] recordWithTimezoneValue:*MEMORY[0x277D02378] datetimeType:*MEMORY[0x277D02368]];
        }

        v52 = [v16 tzid];
        v53 = v52 != 0 || v44;

        v54 = MEMORY[0x277D02360];
        if (v53)
        {
          v9 = v113;
          v55 = [v16 systemTimeZoneWithCalendar:v113 withEvent:a1 withCorrectnessFlag:a5];
          [v42 setTimeZone:v55];

          v56 = [v42 timeZone];

          if (v56)
          {
            v57 = MEMORY[0x277D02380];
          }

          else
          {
            v57 = MEMORY[0x277D02370];
          }

          [MEMORY[0x277D02110] recordWithTimezoneValue:*v57 datetimeType:*v54];
        }

        else
        {
          [MEMORY[0x277D02110] recordWithTimezoneValue:*MEMORY[0x277D02378] datetimeType:*MEMORY[0x277D02360]];
          v9 = v113;
        }

        v58 = v109;
        v59 = [v109 timeZone];
        if (!v59)
        {
          v60 = [v12 tzid];

          if (!v60)
          {
            goto LABEL_41;
          }

          v59 = [MEMORY[0x277CBEBB0] defaultTimeZone];
          [v109 setTimeZone:v59];
        }

LABEL_41:
        v61 = [v42 timeZone];
        if (!v61)
        {
          v62 = [v16 tzid];

          if (!v62)
          {
            goto LABEL_45;
          }

          v61 = [MEMORY[0x277CBEBB0] defaultTimeZone];
          [v42 setTimeZone:v61];
        }

LABEL_45:
        v63 = [v12 tzid];
        if (!v63)
        {
          if ([v12 hasFloatingTimeZone])
          {
            goto LABEL_49;
          }

          v64 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
          [v109 setTimeZone:v64];

          v65 = convertDateComponentsToLocalTimeZone(v109);
          v63 = v109;
          v58 = v65;
        }

LABEL_49:
        v66 = [v16 tzid];
        if (!v66)
        {
          if ([v16 hasFloatingTimeZone])
          {
LABEL_53:
            v18 = 0;
            if (!v58 || !v42)
            {
              goto LABEL_89;
            }

            if (!v17)
            {
              goto LABEL_76;
            }

            v69 = [a1 duration];
            [v69 timeInterval];
            if (v70 == 0.0)
            {
            }

            else if (v69)
            {
              goto LABEL_65;
            }

            v71 = [a1 dtend];
            if (v71)
            {
              v72 = v71;
              v73 = [v71 hasTimeComponent];

              if (v73)
              {
                goto LABEL_76;
              }
            }

            else
            {
              v74 = [a1 dtstart];
              v75 = [v74 hasTimeComponent];

              if (v75)
              {
                goto LABEL_76;
              }
            }

            v69 = [objc_alloc(MEMORY[0x277D7F110]) initWithWeeks:0 days:1 hours:0 minutes:0 seconds:0];
            if (!v69)
            {
              goto LABEL_76;
            }

LABEL_65:
            v76 = v42;
            v77 = v58;
            v78 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
            v79 = v76;
            v80 = v76;
            v81 = v78;
            v82 = [v78 dateFromComponents:v80];
            if (!v82)
            {
              goto LABEL_86;
            }

            v83 = v82;
            v84 = [v81 dateByAddingUnit:16 value:7 * objc_msgSend(v69 toDate:"weeks") options:{v82, 0}];

            if (!v84)
            {
              goto LABEL_86;
            }

            v85 = [v81 dateByAddingUnit:16 value:objc_msgSend(v69 toDate:"days") options:{v84, 0}];

            if (!v85)
            {
              goto LABEL_86;
            }

            v86 = [v81 dateByAddingUnit:32 value:objc_msgSend(v69 toDate:"hours") options:{v85, 0}];

            if (!v86 || ([v81 dateByAddingUnit:64 value:objc_msgSend(v69 toDate:"minutes") options:{v86, 0}], v87 = objc_claimAutoreleasedReturnValue(), v86, !v87) || (objc_msgSend(v81, "dateByAddingUnit:value:toDate:options:", 128, objc_msgSend(v69, "seconds"), v87, 0), v88 = objc_claimAutoreleasedReturnValue(), v87, !v88))
            {
LABEL_86:

              v18 = 0;
              goto LABEL_87;
            }

            v110 = v88;
            v89 = [v79 timeZone];
            v90 = v89;
            if (!v89)
            {
              v90 = [MEMORY[0x277CBEBB0] defaultTimeZone];
            }

            v105 = [v81 componentsInTimeZone:v90 fromDate:v110];

            if (!v89)
            {
            }

            v58 = v77;
            v42 = v105;
LABEL_76:
            v69 = [MEMORY[0x277D020E8] rangeWithGregorianStartComponents:v58 endComponents:v42];
            if (!v69)
            {
              v18 = 0;
LABEL_88:

LABEL_89:
              v8 = v108;
              goto LABEL_90;
            }

            v79 = v42;
            v77 = v58;
            [(SGEntity *)v112 setTimeRange:v69];
            v91 = [a1 location];

            if (v91)
            {
              v92 = [SGStorageLocation alloc];
              v93 = [a1 location];
              v94 = [(SGStorageLocation *)v92 initWithType:0 label:v93 address:0 airportCode:0 accuracy:0.0 quality:0.0];

              v95 = [(SGEntity *)v112 locations];
              [v95 addObject:v94];
            }

            v96 = [a1 dtstamp];
            if (v96)
            {
              v97 = v96;
              v98 = [a1 dtstamp];
              v99 = [v98 validatedCompleteDateTime];

              if (v99)
              {
                v100 = objc_alloc(MEMORY[0x277CBEA80]);
                v101 = [v100 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
                v102 = [v99 components];
                v103 = [v101 dateFromComponents:v102];

                if (v103)
                {
                  [v103 timeIntervalSince1970];
                  [(SGPipelineEnrichment *)v112 setCreationTimestamp:?];
                }
              }
            }

            v18 = v112;
LABEL_87:
            v58 = v77;
            v42 = v79;
            goto LABEL_88;
          }

          v67 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
          [v42 setTimeZone:v67];

          v68 = convertDateComponentsToLocalTimeZone(v42);
          v66 = v42;
          v42 = v68;
        }

        goto LABEL_53;
      }
    }
  }

LABEL_90:

  return v18;
}

- (id)enrichmentWithParentEntity:()SGCalendarAttachmentDissector withCalendar:
{
  v6 = 0;
  v4 = [a1 enrichmentWithParentEntity:a3 withCalendar:a4 withCorrectnessFlag:&v6];

  return v4;
}

- (uint64_t)method
{
  v1 = [a1 firstValueOfPropertyForName:*MEMORY[0x277D7F1A0]];
  v2 = [v1 longValue];

  return v2;
}

- (id)attendeeEmailAddresses
{
  v1 = [a1 attendee];
  v2 = sgMapAndFilter();

  return v2;
}

@end