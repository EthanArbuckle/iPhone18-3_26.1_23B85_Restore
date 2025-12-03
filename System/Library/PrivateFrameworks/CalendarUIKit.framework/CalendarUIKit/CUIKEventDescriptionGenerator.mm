@interface CUIKEventDescriptionGenerator
+ (id)sharedGenerator;
- (BOOL)_virtualConferenceUsesShortRepresentation:(id)representation;
- (id)_attributedStringWithURL:(id)l title:(id)title;
- (id)_basicTextAttributes;
- (id)_boldBasicTextAttributes;
- (id)_htmlStringWithURL:(id)l title:(id)title;
- (id)_showEventURLStringForEvent:(id)event;
- (id)_textRepresentationForAttendee:(id)attendee includeEmailAddress:(BOOL)address;
- (id)_urlAttributes:(id)attributes;
- (id)_virtualConferenceHTMLRepresentation:(id)representation isForEmail:(BOOL)email;
- (id)dateStringRepresentationForEvent:(id)event;
- (id)textRepresentationForEvent:(id)event withTextFormat:(unint64_t)format showURI:(BOOL)i;
@end

@implementation CUIKEventDescriptionGenerator

+ (id)sharedGenerator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CUIKEventDescriptionGenerator_sharedGenerator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedGenerator_onceToken_2 != -1)
  {
    dispatch_once(&sharedGenerator_onceToken_2, block);
  }

  v2 = sharedGenerator___sharedInstance_2;

  return v2;
}

uint64_t __48__CUIKEventDescriptionGenerator_sharedGenerator__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedGenerator___sharedInstance_2;
  sharedGenerator___sharedInstance_2 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)textRepresentationForEvent:(id)event withTextFormat:(unint64_t)format showURI:(BOOL)i
{
  iCopy = i;
  v168 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  title = [eventCopy title];
  location = [eventCopy location];
  v152 = [eventCopy URL];
  attendees = [eventCopy attendees];
  displayNotes = [eventCopy displayNotes];
  virtualConference = [eventCopy virtualConference];
  obj = [(CUIKEventDescriptionGenerator *)self _virtualConferenceUsesShortRepresentation:virtualConference];
  formatCopy = format;
  if (format == 1)
  {
    v12 = &stru_1F4AA8958;
LABEL_6:
    v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v12];
    v146 = formatCopy == 3;
LABEL_7:
    v14 = objc_alloc(MEMORY[0x1E696AAB0]);
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", title];
    _boldBasicTextAttributes = [(CUIKEventDescriptionGenerator *)self _boldBasicTextAttributes];
    v136 = [v14 initWithString:v15 attributes:_boldBasicTextAttributes];

    [v13 appendAttributedString:v136];
LABEL_8:

    format = formatCopy;
    goto LABEL_9;
  }

  if ((format & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (format == 3)
    {
      v12 = @"\n\n\n";
      goto LABEL_6;
    }

    v13 = 0;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F4AA8958];
  }

  if (format <= 1)
  {
    if (format)
    {
      v146 = format == 3;
      goto LABEL_9;
    }

    v136 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", title];
    [v13 appendString:v136];
LABEL_135:
    v146 = 0;
    goto LABEL_8;
  }

  if (format == 2)
  {
    stringByTrimmingWhitespaceAndRemovingNewlines = [title stringByTrimmingWhitespaceAndRemovingNewlines];
    v136 = stringByTrimmingWhitespaceAndRemovingNewlines;
    v137 = MEMORY[0x1E696AEC0];
    if (iCopy)
    {
      v138 = [(CUIKEventDescriptionGenerator *)self _showEventURLStringForEvent:eventCopy];
      v136 = [v137 stringWithFormat:@"<b><a href = %@>%@</a></b><br />", v138, v136];
    }

    else
    {
      v136 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<b>%@</b><br />", stringByTrimmingWhitespaceAndRemovingNewlines];
    }

    [v13 appendString:v136];

    goto LABEL_135;
  }

  v146 = format == 3;
  if (format == 3)
  {
    goto LABEL_7;
  }

LABEL_9:
  v18 = [(CUIKEventDescriptionGenerator *)self dateStringRepresentationForEvent:eventCopy];
  if (!v18)
  {
    v149 = 0;
    goto LABEL_29;
  }

  v149 = v18;
  if (format > 1)
  {
    if (format != 2)
    {
      if (format != 3)
      {
        goto LABEL_29;
      }

      goto LABEL_17;
    }

    v23 = v18;
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@<br />", v18];
    v24 = LABEL_28:;

    [v13 appendString:v24];
    v149 = v24;
    goto LABEL_29;
  }

  if (!format)
  {
    v23 = v18;
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v18];
    goto LABEL_28;
  }

  if (format == 1)
  {
LABEL_17:
    v19 = objc_alloc(MEMORY[0x1E696AAB0]);
    v149 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v149];
    _basicTextAttributes = [(CUIKEventDescriptionGenerator *)self _basicTextAttributes];
    v22 = [v19 initWithString:v149 attributes:_basicTextAttributes];

    [v13 appendAttributedString:v22];
  }

LABEL_29:
  v150 = virtualConference;
  selfCopy = self;
  if (![location length])
  {
    goto LABEL_42;
  }

  v25 = MEMORY[0x1E696AEC0];
  v26 = CUIKBundle();
  v27 = [v26 localizedStringForKey:@"Location: %@" value:&stru_1F4AA8958 table:0];
  v28 = [v25 localizedStringWithFormat:v27, location];

  if (formatCopy <= 1)
  {
    virtualConference = v150;
    if (formatCopy)
    {
      if (formatCopy != 1)
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v28];
    v30 = LABEL_39:;
    [v13 appendString:v30];
    goto LABEL_40;
  }

  virtualConference = v150;
  if (formatCopy == 2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@<br />", v28];
    goto LABEL_39;
  }

  if (formatCopy == 3)
  {
LABEL_36:
    v29 = objc_alloc(MEMORY[0x1E696AAB0]);
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v28];
    _basicTextAttributes2 = [(CUIKEventDescriptionGenerator *)self _basicTextAttributes];
    v32 = [v29 initWithString:v30 attributes:_basicTextAttributes2];
    [v13 appendAttributedString:v32];

    virtualConference = v150;
LABEL_40:
  }

LABEL_41:

LABEL_42:
  v33 = !obj;
  if (!virtualConference)
  {
    v33 = 1;
  }

  if ((v33 & 1) == 0)
  {
    v34 = CUIKBundle();
    v35 = [v34 localizedStringForKey:@"Video Call: %@" value:&stru_1F4AA8958 table:0];

    joinMethods = [virtualConference joinMethods];
    firstObject = [joinMethods firstObject];
    v38 = [firstObject URL];

    if (formatCopy > 1)
    {
      if (formatCopy == 2)
      {
        v41 = [(CUIKEventDescriptionGenerator *)self _virtualConferenceHTMLRepresentation:eventCopy isForEmail:0];
        [v13 appendString:v41];
        goto LABEL_54;
      }

      if (formatCopy == 3)
      {
LABEL_51:
        v39 = objc_alloc(MEMORY[0x1E696AAB0]);
        _basicTextAttributes3 = [(CUIKEventDescriptionGenerator *)self _basicTextAttributes];
        v41 = [v39 initWithString:v35 attributes:_basicTextAttributes3];

        absoluteString = [v38 absoluteString];
        [(CUIKEventDescriptionGenerator *)self _attributedStringWithURL:v38 title:absoluteString];
        v44 = v43 = location;

        v45 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v41, v44];
        [v13 appendAttributedString:v45];

        location = v43;
        self = selfCopy;
LABEL_54:
      }
    }

    else
    {
      if (formatCopy)
      {
        if (formatCopy != 1)
        {
          goto LABEL_55;
        }

        goto LABEL_51;
      }

      v46 = MEMORY[0x1E696AEC0];
      absoluteString2 = [v38 absoluteString];
      v48 = [v46 localizedStringWithFormat:v35, absoluteString2];
      [v13 appendString:v48];

      [v13 appendString:@"\n"];
    }

LABEL_55:

    virtualConference = v150;
  }

  v157 = v13;
  if (!v152)
  {
    goto LABEL_64;
  }

  if (formatCopy <= 1)
  {
    if (!formatCopy)
    {
      v78 = MEMORY[0x1E696AEC0];
      absoluteString3 = [v152 absoluteString];
      v80 = [v78 stringWithFormat:@"%@\n", absoluteString3];
      [v13 appendString:v80];

      goto LABEL_89;
    }

    if (formatCopy != 1)
    {
      goto LABEL_89;
    }

    goto LABEL_63;
  }

  if (formatCopy == 2)
  {
    absoluteString4 = [v152 absoluteString];
    v82 = [(CUIKEventDescriptionGenerator *)self _htmlStringWithURL:v152 title:absoluteString4];
    [v13 appendString:v82];

    goto LABEL_89;
  }

  if (formatCopy == 3)
  {
LABEL_63:
    absoluteString5 = [v152 absoluteString];
    v50 = [(CUIKEventDescriptionGenerator *)self _attributedStringWithURL:v152 title:absoluteString5];

    [v13 appendAttributedString:v50];
LABEL_64:
    if ((formatCopy | 2) != 3 || ![attendees count])
    {
      goto LABEL_89;
    }

    v142 = eventCopy;
    v144 = title;
    v139 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F4AA8958];
    v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v52 = attendees;
    v53 = [v52 countByEnumeratingWithState:&v162 objects:v167 count:16];
    v54 = v51;
    if (!v53)
    {
      goto LABEL_79;
    }

    v55 = v53;
    v56 = *v163;
    while (1)
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v163 != v56)
        {
          objc_enumerationMutation(v52);
        }

        v58 = *(*(&v162 + 1) + 8 * i);
        name = [v58 name];
        if (name)
        {
          v60 = name;
          if (!location)
          {

LABEL_76:
            [v51 addObject:v58];
            continue;
          }

          name2 = [v58 name];
          v62 = location;
          v63 = [location rangeOfString:name2];

          v13 = v157;
          v64 = v63 == 0x7FFFFFFFFFFFFFFFLL;
          location = v62;
          v51 = v54;
          if (v64)
          {
            goto LABEL_76;
          }
        }
      }

      v55 = [v52 countByEnumeratingWithState:&v162 objects:v167 count:16];
      if (!v55)
      {
LABEL_79:

        title = v144;
        v65 = v139;
        if ([v51 count])
        {
          v66 = [v51 objectAtIndex:0];
          v67 = [(CUIKEventDescriptionGenerator *)selfCopy _textRepresentationForAttendee:v66 includeEmailAddress:!v146];

          [v139 appendAttributedString:v67];
          v68 = [v51 count];
          v140 = location;
          if (v68 < 2)
          {
            v74 = v67;
            v71 = selfCopy;
            v72 = v139;
          }

          else
          {
            v69 = v68;
            v70 = 1;
            v71 = selfCopy;
            v72 = v139;
            do
            {
              v73 = [v54 objectAtIndex:v70];
              v74 = [(CUIKEventDescriptionGenerator *)selfCopy _textRepresentationForAttendee:v73 includeEmailAddress:!v146];

              v75 = objc_alloc(MEMORY[0x1E696AAB0]);
              _basicTextAttributes4 = [(CUIKEventDescriptionGenerator *)selfCopy _basicTextAttributes];
              v77 = [v75 initWithString:@" attributes:{", _basicTextAttributes4}];
              [v139 appendAttributedString:v77];

              [v139 appendAttributedString:v74];
              ++v70;
              v67 = v74;
            }

            while (v69 != v70);
          }

          v83 = objc_alloc(MEMORY[0x1E696AAB0]);
          v84 = CUIKBundle();
          v85 = [v84 localizedStringForKey:@"Invitees: " value:&stru_1F4AA8958 table:0];
          _basicTextAttributes5 = [(CUIKEventDescriptionGenerator *)v71 _basicTextAttributes];
          v87 = [v83 initWithString:v85 attributes:_basicTextAttributes5];
          [v157 appendAttributedString:v87];

          [v157 appendAttributedString:v72];
          v88 = objc_alloc(MEMORY[0x1E696AAB0]);
          _basicTextAttributes6 = [(CUIKEventDescriptionGenerator *)v71 _basicTextAttributes];
          v90 = [v88 initWithString:@"\n" attributes:_basicTextAttributes6];
          [v157 appendAttributedString:v90];

          v13 = v157;
          location = v140;
          title = v144;
          v65 = v72;
          v51 = v54;
        }

        eventCopy = v142;
        virtualConference = v150;
        self = selfCopy;
        break;
      }
    }
  }

LABEL_89:
  if (virtualConference && !obj)
  {
    v91 = CUIKBundle();
    v92 = [v91 localizedStringForKey:@"Video Call:" value:&stru_1F4AA8958 table:0];

    if (formatCopy > 1)
    {
      if (formatCopy != 2)
      {
        if (formatCopy != 3)
        {
LABEL_113:

          goto LABEL_114;
        }

        goto LABEL_97;
      }

      virtualConferenceTextRepresentation = [(CUIKEventDescriptionGenerator *)self _virtualConferenceHTMLRepresentation:eventCopy isForEmail:0];
      [v13 appendString:virtualConferenceTextRepresentation];
    }

    else
    {
      if (formatCopy)
      {
        if (formatCopy != 1)
        {
          goto LABEL_113;
        }

LABEL_97:
        v141 = location;
        v143 = eventCopy;
        v145 = title;
        v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@\n", v92];

        v94 = objc_alloc(MEMORY[0x1E696AAB0]);
        _basicTextAttributes7 = [(CUIKEventDescriptionGenerator *)self _basicTextAttributes];
        v147 = v93;
        v96 = [v94 initWithString:v93 attributes:_basicTextAttributes7];
        [v13 appendAttributedString:v96];

        title2 = [virtualConference title];

        if (title2)
        {
          v98 = objc_alloc(MEMORY[0x1E696AAB0]);
          v99 = objc_alloc(MEMORY[0x1E696AEC0]);
          title3 = [virtualConference title];
          v100 = [v99 initWithFormat:@"%@\n\n", title3];
          _basicTextAttributes8 = [(CUIKEventDescriptionGenerator *)self _basicTextAttributes];
          v103 = [v98 initWithString:v100 attributes:_basicTextAttributes8];

          virtualConference = v150;
          [v13 appendAttributedString:v103];
        }

        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        obja = [virtualConference joinMethods];
        v104 = [obja countByEnumeratingWithState:&v158 objects:v166 count:16];
        if (v104)
        {
          v105 = v104;
          v106 = *v159;
          do
          {
            for (j = 0; j != v105; ++j)
            {
              if (*v159 != v106)
              {
                objc_enumerationMutation(obja);
              }

              v108 = *(*(&v158 + 1) + 8 * j);
              title4 = [v108 title];

              if (title4)
              {
                v110 = objc_alloc(MEMORY[0x1E696AAB0]);
                v111 = objc_alloc(MEMORY[0x1E696AEC0]);
                title5 = [v108 title];
                v112 = [v111 initWithFormat:@"%@\n", title5];
                _basicTextAttributes9 = [(CUIKEventDescriptionGenerator *)selfCopy _basicTextAttributes];
                v115 = [v110 initWithString:v112 attributes:_basicTextAttributes9];

                v13 = v157;
                [v157 appendAttributedString:v115];
              }

              v116 = [v108 URL];
              absoluteString6 = [v116 absoluteString];
              v118 = [(CUIKEventDescriptionGenerator *)selfCopy _attributedStringWithURL:v116 title:absoluteString6];

              [v13 appendAttributedString:v118];
              v119 = objc_alloc(MEMORY[0x1E696AAB0]);
              _basicTextAttributes10 = [(CUIKEventDescriptionGenerator *)selfCopy _basicTextAttributes];
              v121 = [v119 initWithString:@"\n" attributes:_basicTextAttributes10];
              [v13 appendAttributedString:v121];
            }

            v105 = [obja countByEnumeratingWithState:&v158 objects:v166 count:16];
          }

          while (v105);
        }

        virtualConference = v150;
        conferenceDetails = [v150 conferenceDetails];

        if (!conferenceDetails)
        {
          title = v145;
          v92 = v93;
          location = v141;
          eventCopy = v143;
          self = selfCopy;
          goto LABEL_113;
        }

        v123 = objc_alloc(MEMORY[0x1E696AAB0]);
        v124 = objc_alloc(MEMORY[0x1E696AEC0]);
        conferenceDetails2 = [v150 conferenceDetails];
        v125 = [v124 initWithFormat:@"%@\n\n", conferenceDetails2];
        _basicTextAttributes11 = [(CUIKEventDescriptionGenerator *)selfCopy _basicTextAttributes];
        virtualConferenceTextRepresentation = [v123 initWithString:v125 attributes:_basicTextAttributes11];

        self = selfCopy;
        [v13 appendAttributedString:virtualConferenceTextRepresentation];
        eventCopy = v143;
        title = v145;
        location = v141;
        v92 = v147;
        goto LABEL_112;
      }

      v129 = MEMORY[0x1E696AEC0];
      virtualConferenceTextRepresentation = [eventCopy virtualConferenceTextRepresentation];
      v128 = [v129 stringWithFormat:@"\n%@\n%@\n\n", v92, virtualConferenceTextRepresentation];
      [v13 appendString:v128];

      self = selfCopy;
    }

LABEL_112:

    goto LABEL_113;
  }

LABEL_114:
  if (!displayNotes)
  {
    goto LABEL_126;
  }

  if (formatCopy > 1)
  {
    if (formatCopy != 2)
    {
      if (formatCopy != 3)
      {
        goto LABEL_126;
      }

      goto LABEL_121;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@<br />", displayNotes];
    _basicTextAttributes12 = LABEL_124:;
    [v13 appendString:_basicTextAttributes12];
    goto LABEL_125;
  }

  if (!formatCopy)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", displayNotes];
    goto LABEL_124;
  }

  if (formatCopy == 1)
  {
LABEL_121:
    v131 = objc_alloc(MEMORY[0x1E696AAB0]);
    _basicTextAttributes12 = [(CUIKEventDescriptionGenerator *)self _basicTextAttributes];
    v133 = [v131 initWithString:displayNotes attributes:_basicTextAttributes12];
    [v13 appendAttributedString:v133];

LABEL_125:
  }

LABEL_126:

  return v13;
}

- (id)dateStringRepresentationForEvent:(id)event
{
  eventCopy = event;
  startDate = [eventCopy startDate];
  if (startDate)
  {
    if ([eventCopy isReminderIntegrationEvent])
    {
      v5 = MEMORY[0x1E6992F68];
      startDate2 = [eventCopy startDate];
      v7 = [v5 dateStringRepresentationForReminderStartDate:startDate2 allDay:{objc_msgSend(eventCopy, "isAllDay")}];
    }

    else
    {
      startDate2 = [eventCopy endDateUnadjustedForLegacyClients];
      if (startDate2)
      {
        isAllDay = [eventCopy isAllDay];
        timeZone = [eventCopy timeZone];
        v7 = [MEMORY[0x1E6992F68] dateStringRepresentationForEventCompontentsStartDate:startDate endDate:startDate2 allDay:isAllDay timeZone:timeZone];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_showEventURLStringForEvent:(id)event
{
  externalURL = [event externalURL];
  absoluteString = [externalURL absoluteString];

  return absoluteString;
}

- (BOOL)_virtualConferenceUsesShortRepresentation:(id)representation
{
  representationCopy = representation;
  joinMethods = [representationCopy joinMethods];
  if ([joinMethods count] == 1)
  {
    conferenceDetails = [representationCopy conferenceDetails];
    v6 = [conferenceDetails length] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_textRepresentationForAttendee:(id)attendee includeEmailAddress:(BOOL)address
{
  addressCopy = address;
  v6 = MEMORY[0x1E696AD40];
  attendeeCopy = attendee;
  v8 = [[v6 alloc] initWithString:&stru_1F4AA8958];
  name = [attendeeCopy name];
  emailAddress = [attendeeCopy emailAddress];

  if (emailAddress && addressCopy)
  {
    if (name)
    {
      v11 = objc_alloc(MEMORY[0x1E696AAB0]);
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ ", name];
      _basicTextAttributes = [(CUIKEventDescriptionGenerator *)self _basicTextAttributes];
      v14 = [v11 initWithString:v12 attributes:_basicTextAttributes];
      [v8 appendAttributedString:v14];
    }

    v15 = objc_alloc(MEMORY[0x1E696AAB0]);
    _basicTextAttributes2 = [(CUIKEventDescriptionGenerator *)self _basicTextAttributes];
    v17 = [v15 initWithString:@"<" attributes:_basicTextAttributes2];
    [v8 appendAttributedString:v17];

    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    v19 = [(CUIKEventDescriptionGenerator *)self _urlAttributes:0];
    v20 = [v18 initWithString:emailAddress attributes:v19];
    [v8 appendAttributedString:v20];

    v21 = @">";
  }

  else
  {
    v21 = name;
    if (!name)
    {
      goto LABEL_8;
    }
  }

  v22 = objc_alloc(MEMORY[0x1E696AAB0]);
  _basicTextAttributes3 = [(CUIKEventDescriptionGenerator *)self _basicTextAttributes];
  v24 = [v22 initWithString:v21 attributes:_basicTextAttributes3];
  [v8 appendAttributedString:v24];

LABEL_8:

  return v8;
}

- (id)_attributedStringWithURL:(id)l title:(id)title
{
  titleCopy = title;
  v7 = [(CUIKEventDescriptionGenerator *)self _urlAttributes:l];
  titleCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", titleCopy];

  v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:titleCopy attributes:v7];

  return v9;
}

- (id)_urlAttributes:(id)attributes
{
  v20[4] = *MEMORY[0x1E69E9840];
  if (attributes)
  {
    v3 = *MEMORY[0x1E69DB670];
    v20[0] = attributes;
    v4 = *MEMORY[0x1E69DB758];
    v19[0] = v3;
    v19[1] = v4;
    v5 = MEMORY[0x1E696AD98];
    attributesCopy = attributes;
    v7 = [v5 numberWithInteger:1];
    v20[1] = v7;
    v19[2] = *MEMORY[0x1E69DB650];
    linkColor = [MEMORY[0x1E69DC888] linkColor];
    v20[2] = linkColor;
    v19[3] = *MEMORY[0x1E69DB648];
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
    v20[3] = v9;
    v10 = MEMORY[0x1E695DF20];
    v11 = v20;
    v12 = v19;
    v13 = 4;
  }

  else
  {
    v17[0] = *MEMORY[0x1E69DB758];
    v14 = MEMORY[0x1E696AD98];
    attributesCopy = 0;
    v7 = [v14 numberWithInteger:1];
    v18[0] = v7;
    v17[1] = *MEMORY[0x1E69DB650];
    linkColor = [MEMORY[0x1E69DC888] linkColor];
    v18[1] = linkColor;
    v17[2] = *MEMORY[0x1E69DB648];
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
    v18[2] = v9;
    v10 = MEMORY[0x1E695DF20];
    v11 = v18;
    v12 = v17;
    v13 = 3;
  }

  v15 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:v13];

  return v15;
}

- (id)_basicTextAttributes
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69DB648];
  v2 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id)_boldBasicTextAttributes
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69DB648];
  v2 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:16.0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id)_htmlStringWithURL:(id)l title:(id)title
{
  v5 = MEMORY[0x1E696AEC0];
  titleCopy = title;
  absoluteString = [l absoluteString];
  titleCopy = [v5 stringWithFormat:@"<a href=%@>%@</a><br />", absoluteString, titleCopy];

  return titleCopy;
}

- (id)_virtualConferenceHTMLRepresentation:(id)representation isForEmail:(BOOL)email
{
  v40 = *MEMORY[0x1E69E9840];
  virtualConference = [representation virtualConference];
  if (virtualConference)
  {
    if ([(CUIKEventDescriptionGenerator *)self _virtualConferenceUsesShortRepresentation:virtualConference])
    {
      v6 = CUIKBundle();
      v7 = [v6 localizedStringForKey:@"Video Call: %@" value:&stru_1F4AA8958 table:0];

      joinMethods = [virtualConference joinMethods];
      firstObject = [joinMethods firstObject];
      v10 = [firstObject URL];

      absoluteString = [v10 absoluteString];
      v12 = [(CUIKEventDescriptionGenerator *)self _htmlStringWithURL:v10 title:absoluteString];

      v13 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v7, v12];
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v14 = CUIKBundle();
      v15 = [v14 localizedStringForKey:@"Video Call:" value:&stru_1F4AA8958 table:0];

      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<br />%@<br />", v15];

      v33 = v16;
      [v13 appendString:v16];
      title = [virtualConference title];

      if (title)
      {
        title2 = [virtualConference title];
        [v13 appendFormat:@"%@<br /><br />", title2];
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = virtualConference;
      joinMethods2 = [virtualConference joinMethods];
      v20 = [joinMethods2 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v36;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v36 != v22)
            {
              objc_enumerationMutation(joinMethods2);
            }

            v24 = *(*(&v35 + 1) + 8 * i);
            title3 = [v24 title];

            if (title3)
            {
              title4 = [v24 title];
              [v13 appendFormat:@"%@<br />", title4];
            }

            v27 = [v24 URL];
            absoluteString2 = [v27 absoluteString];
            v29 = [(CUIKEventDescriptionGenerator *)self _htmlStringWithURL:v27 title:absoluteString2];

            [v13 appendString:v29];
            [v13 appendString:@"<br />"];
          }

          v21 = [joinMethods2 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v21);
      }

      virtualConference = v34;
      conferenceDetails = [v34 conferenceDetails];

      if (conferenceDetails)
      {
        conferenceDetails2 = [v34 conferenceDetails];
        [v13 appendFormat:@"%@<br /><br />", conferenceDetails2];
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end