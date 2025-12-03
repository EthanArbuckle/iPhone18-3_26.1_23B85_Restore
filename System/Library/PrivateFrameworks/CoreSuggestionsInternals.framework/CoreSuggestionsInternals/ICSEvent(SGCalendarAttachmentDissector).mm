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
  dtstart = [self dtstart];
  if (dtstart)
  {
    dtstart2 = [self dtstart];
    validatedCompleteDateTime = [dtstart2 validatedCompleteDateTime];
  }

  else
  {
    validatedCompleteDateTime = 0;
  }

  dtend = [self dtend];
  if (dtend && (v14 = dtend, [self dtend], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "validatedCompleteDateTime"), v16 = objc_claimAutoreleasedReturnValue(), v15, v14, v16))
  {
    v17 = 0;
  }

  else
  {
    v16 = validatedCompleteDateTime;
    v17 = 1;
  }

  components = 0;
  if (validatedCompleteDateTime)
  {
    if (v16)
    {
      components = [validatedCompleteDateTime components];
      if (components)
      {
        components2 = [v16 components];

        if (!components2)
        {
          components = 0;
          goto LABEL_90;
        }

        v20 = [self uid];
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
          dtstart3 = [self dtstart];
          [dtstart3 value];
          v111 = a5;
          v26 = v25 = v17;
          summary = [self summary];
          v28 = [v23 initWithFormat:@"%@;%@", v26, summary];
          v29 = SGSha256ForString(v28, 0);

          v17 = v25;
          a5 = v111;

          v22 = v29;
          v8 = v108;
        }

        duplicateKey = [v8 duplicateKey];
        v31 = [SGDuplicateKey duplicateKeyForPseudoEventWithGroupId:v22 parentKey:duplicateKey];

        v32 = [SGPipelineEnrichment alloc];
        summary2 = [self summary];
        v107 = v31;
        v34 = [(SGPipelineEnrichment *)v32 initWithDuplicateKey:v31 title:summary2 parent:v8];

        v35 = [self description];
        [(SGEntity *)v34 setContent:v35];

        v36 = [MEMORY[0x277D01FD8] extractionInfoWithExtractionType:32 modelVersion:0 confidence:0];
        [(SGEntity *)v34 setExtractionInfo:v36];

        fromCalendarAttachment = [MEMORY[0x277D01FA0] fromCalendarAttachment];
        [(SGEntity *)v34 addTag:fromCalendarAttachment];

        v38 = [self url];

        if (v38)
        {
          v39 = MEMORY[0x277D01FA0];
          v40 = [self url];
          v41 = [v39 url:v40];
          [(SGEntity *)v34 addTag:v41];
        }

        v112 = v34;
        components3 = [validatedCompleteDateTime components];
        components4 = [v16 components];
        v43 = [self firstValueOfPropertyForName:*MEMORY[0x277D7F1D0]];
        v106 = v22;
        if (v43)
        {
          v44 = 1;
        }

        else
        {
          v45 = [self firstValueOfPropertyForName:*MEMORY[0x277D7F1D8]];
          if (v45)
          {
            v44 = 1;
          }

          else
          {
            x_wr_timezone = [v113 x_wr_timezone];
            v44 = x_wr_timezone != 0;
          }
        }

        tzid = [validatedCompleteDateTime tzid];

        v48 = MEMORY[0x277D02368];
        if (tzid || v44)
        {
          v49 = [validatedCompleteDateTime systemTimeZoneWithCalendar:v113 withEvent:self withCorrectnessFlag:a5];
          [components3 setTimeZone:v49];

          timeZone = [components3 timeZone];

          if (timeZone)
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

        tzid2 = [v16 tzid];
        v53 = tzid2 != 0 || v44;

        v54 = MEMORY[0x277D02360];
        if (v53)
        {
          v9 = v113;
          v55 = [v16 systemTimeZoneWithCalendar:v113 withEvent:self withCorrectnessFlag:a5];
          [components4 setTimeZone:v55];

          timeZone2 = [components4 timeZone];

          if (timeZone2)
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

        v58 = components3;
        timeZone3 = [components3 timeZone];
        if (!timeZone3)
        {
          tzid3 = [validatedCompleteDateTime tzid];

          if (!tzid3)
          {
            goto LABEL_41;
          }

          timeZone3 = [MEMORY[0x277CBEBB0] defaultTimeZone];
          [components3 setTimeZone:timeZone3];
        }

LABEL_41:
        timeZone4 = [components4 timeZone];
        if (!timeZone4)
        {
          tzid4 = [v16 tzid];

          if (!tzid4)
          {
            goto LABEL_45;
          }

          timeZone4 = [MEMORY[0x277CBEBB0] defaultTimeZone];
          [components4 setTimeZone:timeZone4];
        }

LABEL_45:
        tzid5 = [validatedCompleteDateTime tzid];
        if (!tzid5)
        {
          if ([validatedCompleteDateTime hasFloatingTimeZone])
          {
            goto LABEL_49;
          }

          v64 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
          [components3 setTimeZone:v64];

          v65 = convertDateComponentsToLocalTimeZone(components3);
          tzid5 = components3;
          v58 = v65;
        }

LABEL_49:
        tzid6 = [v16 tzid];
        if (!tzid6)
        {
          if ([v16 hasFloatingTimeZone])
          {
LABEL_53:
            components = 0;
            if (!v58 || !components4)
            {
              goto LABEL_89;
            }

            if (!v17)
            {
              goto LABEL_76;
            }

            duration = [self duration];
            [duration timeInterval];
            if (v70 == 0.0)
            {
            }

            else if (duration)
            {
              goto LABEL_65;
            }

            dtend2 = [self dtend];
            if (dtend2)
            {
              v72 = dtend2;
              hasTimeComponent = [dtend2 hasTimeComponent];

              if (hasTimeComponent)
              {
                goto LABEL_76;
              }
            }

            else
            {
              dtstart4 = [self dtstart];
              hasTimeComponent2 = [dtstart4 hasTimeComponent];

              if (hasTimeComponent2)
              {
                goto LABEL_76;
              }
            }

            duration = [objc_alloc(MEMORY[0x277D7F110]) initWithWeeks:0 days:1 hours:0 minutes:0 seconds:0];
            if (!duration)
            {
              goto LABEL_76;
            }

LABEL_65:
            v76 = components4;
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
            v84 = [v81 dateByAddingUnit:16 value:7 * objc_msgSend(duration toDate:"weeks") options:{v82, 0}];

            if (!v84)
            {
              goto LABEL_86;
            }

            v85 = [v81 dateByAddingUnit:16 value:objc_msgSend(duration toDate:"days") options:{v84, 0}];

            if (!v85)
            {
              goto LABEL_86;
            }

            v86 = [v81 dateByAddingUnit:32 value:objc_msgSend(duration toDate:"hours") options:{v85, 0}];

            if (!v86 || ([v81 dateByAddingUnit:64 value:objc_msgSend(duration toDate:"minutes") options:{v86, 0}], v87 = objc_claimAutoreleasedReturnValue(), v86, !v87) || (objc_msgSend(v81, "dateByAddingUnit:value:toDate:options:", 128, objc_msgSend(duration, "seconds"), v87, 0), v88 = objc_claimAutoreleasedReturnValue(), v87, !v88))
            {
LABEL_86:

              components = 0;
              goto LABEL_87;
            }

            v110 = v88;
            timeZone5 = [v79 timeZone];
            defaultTimeZone = timeZone5;
            if (!timeZone5)
            {
              defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
            }

            v105 = [v81 componentsInTimeZone:defaultTimeZone fromDate:v110];

            if (!timeZone5)
            {
            }

            v58 = v77;
            components4 = v105;
LABEL_76:
            duration = [MEMORY[0x277D020E8] rangeWithGregorianStartComponents:v58 endComponents:components4];
            if (!duration)
            {
              components = 0;
LABEL_88:

LABEL_89:
              v8 = v108;
              goto LABEL_90;
            }

            v79 = components4;
            v77 = v58;
            [(SGEntity *)v112 setTimeRange:duration];
            location = [self location];

            if (location)
            {
              v92 = [SGStorageLocation alloc];
              location2 = [self location];
              v94 = [(SGStorageLocation *)v92 initWithType:0 label:location2 address:0 airportCode:0 accuracy:0.0 quality:0.0];

              locations = [(SGEntity *)v112 locations];
              [locations addObject:v94];
            }

            dtstamp = [self dtstamp];
            if (dtstamp)
            {
              v97 = dtstamp;
              dtstamp2 = [self dtstamp];
              validatedCompleteDateTime2 = [dtstamp2 validatedCompleteDateTime];

              if (validatedCompleteDateTime2)
              {
                v100 = objc_alloc(MEMORY[0x277CBEA80]);
                v101 = [v100 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
                components5 = [validatedCompleteDateTime2 components];
                v103 = [v101 dateFromComponents:components5];

                if (v103)
                {
                  [v103 timeIntervalSince1970];
                  [(SGPipelineEnrichment *)v112 setCreationTimestamp:?];
                }
              }
            }

            components = v112;
LABEL_87:
            v58 = v77;
            components4 = v79;
            goto LABEL_88;
          }

          v67 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
          [components4 setTimeZone:v67];

          v68 = convertDateComponentsToLocalTimeZone(components4);
          tzid6 = components4;
          components4 = v68;
        }

        goto LABEL_53;
      }
    }
  }

LABEL_90:

  return components;
}

- (id)enrichmentWithParentEntity:()SGCalendarAttachmentDissector withCalendar:
{
  v6 = 0;
  v4 = [self enrichmentWithParentEntity:a3 withCalendar:a4 withCorrectnessFlag:&v6];

  return v4;
}

- (uint64_t)method
{
  v1 = [self firstValueOfPropertyForName:*MEMORY[0x277D7F1A0]];
  longValue = [v1 longValue];

  return longValue;
}

- (id)attendeeEmailAddresses
{
  attendee = [self attendee];
  v2 = sgMapAndFilter();

  return v2;
}

@end