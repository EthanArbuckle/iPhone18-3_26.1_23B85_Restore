@interface CUIKEventDescriptionGenerator
+ (id)sharedGenerator;
- (BOOL)_virtualConferenceUsesShortRepresentation:(id)a3;
- (id)_attributedStringWithURL:(id)a3 title:(id)a4;
- (id)_basicTextAttributes;
- (id)_boldBasicTextAttributes;
- (id)_htmlStringWithURL:(id)a3 title:(id)a4;
- (id)_showEventURLStringForEvent:(id)a3;
- (id)_textRepresentationForAttendee:(id)a3 includeEmailAddress:(BOOL)a4;
- (id)_urlAttributes:(id)a3;
- (id)_virtualConferenceHTMLRepresentation:(id)a3 isForEmail:(BOOL)a4;
- (id)dateStringRepresentationForEvent:(id)a3;
- (id)textRepresentationForEvent:(id)a3 withTextFormat:(unint64_t)a4 showURI:(BOOL)a5;
@end

@implementation CUIKEventDescriptionGenerator

+ (id)sharedGenerator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CUIKEventDescriptionGenerator_sharedGenerator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (id)textRepresentationForEvent:(id)a3 withTextFormat:(unint64_t)a4 showURI:(BOOL)a5
{
  v5 = a5;
  v168 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [v8 title];
  v10 = [v8 location];
  v152 = [v8 URL];
  v148 = [v8 attendees];
  v151 = [v8 displayNotes];
  v11 = [v8 virtualConference];
  obj = [(CUIKEventDescriptionGenerator *)self _virtualConferenceUsesShortRepresentation:v11];
  v153 = a4;
  if (a4 == 1)
  {
    v12 = &stru_1F4AA8958;
LABEL_6:
    v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v12];
    v146 = v153 == 3;
LABEL_7:
    v14 = objc_alloc(MEMORY[0x1E696AAB0]);
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v9];
    v16 = [(CUIKEventDescriptionGenerator *)self _boldBasicTextAttributes];
    v17 = [v14 initWithString:v15 attributes:v16];

    [v13 appendAttributedString:v17];
LABEL_8:

    a4 = v153;
    goto LABEL_9;
  }

  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (a4 == 3)
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

  if (a4 <= 1)
  {
    if (a4)
    {
      v146 = a4 == 3;
      goto LABEL_9;
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v9];
    [v13 appendString:v17];
LABEL_135:
    v146 = 0;
    goto LABEL_8;
  }

  if (a4 == 2)
  {
    v135 = [v9 stringByTrimmingWhitespaceAndRemovingNewlines];
    v136 = v135;
    v137 = MEMORY[0x1E696AEC0];
    if (v5)
    {
      v138 = [(CUIKEventDescriptionGenerator *)self _showEventURLStringForEvent:v8];
      v17 = [v137 stringWithFormat:@"<b><a href = %@>%@</a></b><br />", v138, v136];
    }

    else
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<b>%@</b><br />", v135];
    }

    [v13 appendString:v17];

    goto LABEL_135;
  }

  v146 = a4 == 3;
  if (a4 == 3)
  {
    goto LABEL_7;
  }

LABEL_9:
  v18 = [(CUIKEventDescriptionGenerator *)self dateStringRepresentationForEvent:v8];
  if (!v18)
  {
    v149 = 0;
    goto LABEL_29;
  }

  v149 = v18;
  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
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

  if (!a4)
  {
    v23 = v18;
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v18];
    goto LABEL_28;
  }

  if (a4 == 1)
  {
LABEL_17:
    v19 = objc_alloc(MEMORY[0x1E696AAB0]);
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v149];
    v21 = [(CUIKEventDescriptionGenerator *)self _basicTextAttributes];
    v22 = [v19 initWithString:v20 attributes:v21];

    [v13 appendAttributedString:v22];
  }

LABEL_29:
  v150 = v11;
  v156 = self;
  if (![v10 length])
  {
    goto LABEL_42;
  }

  v25 = MEMORY[0x1E696AEC0];
  v26 = CUIKBundle();
  v27 = [v26 localizedStringForKey:@"Location: %@" value:&stru_1F4AA8958 table:0];
  v28 = [v25 localizedStringWithFormat:v27, v10];

  if (v153 <= 1)
  {
    v11 = v150;
    if (v153)
    {
      if (v153 != 1)
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

  v11 = v150;
  if (v153 == 2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@<br />", v28];
    goto LABEL_39;
  }

  if (v153 == 3)
  {
LABEL_36:
    v29 = objc_alloc(MEMORY[0x1E696AAB0]);
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v28];
    v31 = [(CUIKEventDescriptionGenerator *)self _basicTextAttributes];
    v32 = [v29 initWithString:v30 attributes:v31];
    [v13 appendAttributedString:v32];

    v11 = v150;
LABEL_40:
  }

LABEL_41:

LABEL_42:
  v33 = !obj;
  if (!v11)
  {
    v33 = 1;
  }

  if ((v33 & 1) == 0)
  {
    v34 = CUIKBundle();
    v35 = [v34 localizedStringForKey:@"Video Call: %@" value:&stru_1F4AA8958 table:0];

    v36 = [v11 joinMethods];
    v37 = [v36 firstObject];
    v38 = [v37 URL];

    if (v153 > 1)
    {
      if (v153 == 2)
      {
        v41 = [(CUIKEventDescriptionGenerator *)self _virtualConferenceHTMLRepresentation:v8 isForEmail:0];
        [v13 appendString:v41];
        goto LABEL_54;
      }

      if (v153 == 3)
      {
LABEL_51:
        v39 = objc_alloc(MEMORY[0x1E696AAB0]);
        v40 = [(CUIKEventDescriptionGenerator *)self _basicTextAttributes];
        v41 = [v39 initWithString:v35 attributes:v40];

        v42 = [v38 absoluteString];
        [(CUIKEventDescriptionGenerator *)self _attributedStringWithURL:v38 title:v42];
        v44 = v43 = v10;

        v45 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v41, v44];
        [v13 appendAttributedString:v45];

        v10 = v43;
        self = v156;
LABEL_54:
      }
    }

    else
    {
      if (v153)
      {
        if (v153 != 1)
        {
          goto LABEL_55;
        }

        goto LABEL_51;
      }

      v46 = MEMORY[0x1E696AEC0];
      v47 = [v38 absoluteString];
      v48 = [v46 localizedStringWithFormat:v35, v47];
      [v13 appendString:v48];

      [v13 appendString:@"\n"];
    }

LABEL_55:

    v11 = v150;
  }

  v157 = v13;
  if (!v152)
  {
    goto LABEL_64;
  }

  if (v153 <= 1)
  {
    if (!v153)
    {
      v78 = MEMORY[0x1E696AEC0];
      v79 = [v152 absoluteString];
      v80 = [v78 stringWithFormat:@"%@\n", v79];
      [v13 appendString:v80];

      goto LABEL_89;
    }

    if (v153 != 1)
    {
      goto LABEL_89;
    }

    goto LABEL_63;
  }

  if (v153 == 2)
  {
    v81 = [v152 absoluteString];
    v82 = [(CUIKEventDescriptionGenerator *)self _htmlStringWithURL:v152 title:v81];
    [v13 appendString:v82];

    goto LABEL_89;
  }

  if (v153 == 3)
  {
LABEL_63:
    v49 = [v152 absoluteString];
    v50 = [(CUIKEventDescriptionGenerator *)self _attributedStringWithURL:v152 title:v49];

    [v13 appendAttributedString:v50];
LABEL_64:
    if ((v153 | 2) != 3 || ![v148 count])
    {
      goto LABEL_89;
    }

    v142 = v8;
    v144 = v9;
    v139 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F4AA8958];
    v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v52 = v148;
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
        v59 = [v58 name];
        if (v59)
        {
          v60 = v59;
          if (!v10)
          {

LABEL_76:
            [v51 addObject:v58];
            continue;
          }

          v61 = [v58 name];
          v62 = v10;
          v63 = [v10 rangeOfString:v61];

          v13 = v157;
          v64 = v63 == 0x7FFFFFFFFFFFFFFFLL;
          v10 = v62;
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

        v9 = v144;
        v65 = v139;
        if ([v51 count])
        {
          v66 = [v51 objectAtIndex:0];
          v67 = [(CUIKEventDescriptionGenerator *)v156 _textRepresentationForAttendee:v66 includeEmailAddress:!v146];

          [v139 appendAttributedString:v67];
          v68 = [v51 count];
          v140 = v10;
          if (v68 < 2)
          {
            v74 = v67;
            v71 = v156;
            v72 = v139;
          }

          else
          {
            v69 = v68;
            v70 = 1;
            v71 = v156;
            v72 = v139;
            do
            {
              v73 = [v54 objectAtIndex:v70];
              v74 = [(CUIKEventDescriptionGenerator *)v156 _textRepresentationForAttendee:v73 includeEmailAddress:!v146];

              v75 = objc_alloc(MEMORY[0x1E696AAB0]);
              v76 = [(CUIKEventDescriptionGenerator *)v156 _basicTextAttributes];
              v77 = [v75 initWithString:@" attributes:{", v76}];
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
          v86 = [(CUIKEventDescriptionGenerator *)v71 _basicTextAttributes];
          v87 = [v83 initWithString:v85 attributes:v86];
          [v157 appendAttributedString:v87];

          [v157 appendAttributedString:v72];
          v88 = objc_alloc(MEMORY[0x1E696AAB0]);
          v89 = [(CUIKEventDescriptionGenerator *)v71 _basicTextAttributes];
          v90 = [v88 initWithString:@"\n" attributes:v89];
          [v157 appendAttributedString:v90];

          v13 = v157;
          v10 = v140;
          v9 = v144;
          v65 = v72;
          v51 = v54;
        }

        v8 = v142;
        v11 = v150;
        self = v156;
        break;
      }
    }
  }

LABEL_89:
  if (v11 && !obj)
  {
    v91 = CUIKBundle();
    v92 = [v91 localizedStringForKey:@"Video Call:" value:&stru_1F4AA8958 table:0];

    if (v153 > 1)
    {
      if (v153 != 2)
      {
        if (v153 != 3)
        {
LABEL_113:

          goto LABEL_114;
        }

        goto LABEL_97;
      }

      v128 = [(CUIKEventDescriptionGenerator *)self _virtualConferenceHTMLRepresentation:v8 isForEmail:0];
      [v13 appendString:v128];
    }

    else
    {
      if (v153)
      {
        if (v153 != 1)
        {
          goto LABEL_113;
        }

LABEL_97:
        v141 = v10;
        v143 = v8;
        v145 = v9;
        v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@\n", v92];

        v94 = objc_alloc(MEMORY[0x1E696AAB0]);
        v95 = [(CUIKEventDescriptionGenerator *)self _basicTextAttributes];
        v147 = v93;
        v96 = [v94 initWithString:v93 attributes:v95];
        [v13 appendAttributedString:v96];

        v97 = [v11 title];

        if (v97)
        {
          v98 = objc_alloc(MEMORY[0x1E696AAB0]);
          v99 = objc_alloc(MEMORY[0x1E696AEC0]);
          v100 = [v11 title];
          v101 = [v99 initWithFormat:@"%@\n\n", v100];
          v102 = [(CUIKEventDescriptionGenerator *)self _basicTextAttributes];
          v103 = [v98 initWithString:v101 attributes:v102];

          v11 = v150;
          [v13 appendAttributedString:v103];
        }

        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        obja = [v11 joinMethods];
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
              v109 = [v108 title];

              if (v109)
              {
                v110 = objc_alloc(MEMORY[0x1E696AAB0]);
                v111 = objc_alloc(MEMORY[0x1E696AEC0]);
                v112 = [v108 title];
                v113 = [v111 initWithFormat:@"%@\n", v112];
                v114 = [(CUIKEventDescriptionGenerator *)v156 _basicTextAttributes];
                v115 = [v110 initWithString:v113 attributes:v114];

                v13 = v157;
                [v157 appendAttributedString:v115];
              }

              v116 = [v108 URL];
              v117 = [v116 absoluteString];
              v118 = [(CUIKEventDescriptionGenerator *)v156 _attributedStringWithURL:v116 title:v117];

              [v13 appendAttributedString:v118];
              v119 = objc_alloc(MEMORY[0x1E696AAB0]);
              v120 = [(CUIKEventDescriptionGenerator *)v156 _basicTextAttributes];
              v121 = [v119 initWithString:@"\n" attributes:v120];
              [v13 appendAttributedString:v121];
            }

            v105 = [obja countByEnumeratingWithState:&v158 objects:v166 count:16];
          }

          while (v105);
        }

        v11 = v150;
        v122 = [v150 conferenceDetails];

        if (!v122)
        {
          v9 = v145;
          v92 = v93;
          v10 = v141;
          v8 = v143;
          self = v156;
          goto LABEL_113;
        }

        v123 = objc_alloc(MEMORY[0x1E696AAB0]);
        v124 = objc_alloc(MEMORY[0x1E696AEC0]);
        v125 = [v150 conferenceDetails];
        v126 = [v124 initWithFormat:@"%@\n\n", v125];
        v127 = [(CUIKEventDescriptionGenerator *)v156 _basicTextAttributes];
        v128 = [v123 initWithString:v126 attributes:v127];

        self = v156;
        [v13 appendAttributedString:v128];
        v8 = v143;
        v9 = v145;
        v10 = v141;
        v92 = v147;
        goto LABEL_112;
      }

      v129 = MEMORY[0x1E696AEC0];
      v128 = [v8 virtualConferenceTextRepresentation];
      v130 = [v129 stringWithFormat:@"\n%@\n%@\n\n", v92, v128];
      [v13 appendString:v130];

      self = v156;
    }

LABEL_112:

    goto LABEL_113;
  }

LABEL_114:
  if (!v151)
  {
    goto LABEL_126;
  }

  if (v153 > 1)
  {
    if (v153 != 2)
    {
      if (v153 != 3)
      {
        goto LABEL_126;
      }

      goto LABEL_121;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@<br />", v151];
    v132 = LABEL_124:;
    [v13 appendString:v132];
    goto LABEL_125;
  }

  if (!v153)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v151];
    goto LABEL_124;
  }

  if (v153 == 1)
  {
LABEL_121:
    v131 = objc_alloc(MEMORY[0x1E696AAB0]);
    v132 = [(CUIKEventDescriptionGenerator *)self _basicTextAttributes];
    v133 = [v131 initWithString:v151 attributes:v132];
    [v13 appendAttributedString:v133];

LABEL_125:
  }

LABEL_126:

  return v13;
}

- (id)dateStringRepresentationForEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 startDate];
  if (v4)
  {
    if ([v3 isReminderIntegrationEvent])
    {
      v5 = MEMORY[0x1E6992F68];
      v6 = [v3 startDate];
      v7 = [v5 dateStringRepresentationForReminderStartDate:v6 allDay:{objc_msgSend(v3, "isAllDay")}];
    }

    else
    {
      v6 = [v3 endDateUnadjustedForLegacyClients];
      if (v6)
      {
        v8 = [v3 isAllDay];
        v9 = [v3 timeZone];
        v7 = [MEMORY[0x1E6992F68] dateStringRepresentationForEventCompontentsStartDate:v4 endDate:v6 allDay:v8 timeZone:v9];
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

- (id)_showEventURLStringForEvent:(id)a3
{
  v3 = [a3 externalURL];
  v4 = [v3 absoluteString];

  return v4;
}

- (BOOL)_virtualConferenceUsesShortRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 joinMethods];
  if ([v4 count] == 1)
  {
    v5 = [v3 conferenceDetails];
    v6 = [v5 length] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_textRepresentationForAttendee:(id)a3 includeEmailAddress:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E696AD40];
  v7 = a3;
  v8 = [[v6 alloc] initWithString:&stru_1F4AA8958];
  v9 = [v7 name];
  v10 = [v7 emailAddress];

  if (v10 && v4)
  {
    if (v9)
    {
      v11 = objc_alloc(MEMORY[0x1E696AAB0]);
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ ", v9];
      v13 = [(CUIKEventDescriptionGenerator *)self _basicTextAttributes];
      v14 = [v11 initWithString:v12 attributes:v13];
      [v8 appendAttributedString:v14];
    }

    v15 = objc_alloc(MEMORY[0x1E696AAB0]);
    v16 = [(CUIKEventDescriptionGenerator *)self _basicTextAttributes];
    v17 = [v15 initWithString:@"<" attributes:v16];
    [v8 appendAttributedString:v17];

    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    v19 = [(CUIKEventDescriptionGenerator *)self _urlAttributes:0];
    v20 = [v18 initWithString:v10 attributes:v19];
    [v8 appendAttributedString:v20];

    v21 = @">";
  }

  else
  {
    v21 = v9;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v22 = objc_alloc(MEMORY[0x1E696AAB0]);
  v23 = [(CUIKEventDescriptionGenerator *)self _basicTextAttributes];
  v24 = [v22 initWithString:v21 attributes:v23];
  [v8 appendAttributedString:v24];

LABEL_8:

  return v8;
}

- (id)_attributedStringWithURL:(id)a3 title:(id)a4
{
  v6 = a4;
  v7 = [(CUIKEventDescriptionGenerator *)self _urlAttributes:a3];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v6];

  v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8 attributes:v7];

  return v9;
}

- (id)_urlAttributes:(id)a3
{
  v20[4] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = *MEMORY[0x1E69DB670];
    v20[0] = a3;
    v4 = *MEMORY[0x1E69DB758];
    v19[0] = v3;
    v19[1] = v4;
    v5 = MEMORY[0x1E696AD98];
    v6 = a3;
    v7 = [v5 numberWithInteger:1];
    v20[1] = v7;
    v19[2] = *MEMORY[0x1E69DB650];
    v8 = [MEMORY[0x1E69DC888] linkColor];
    v20[2] = v8;
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
    v6 = 0;
    v7 = [v14 numberWithInteger:1];
    v18[0] = v7;
    v17[1] = *MEMORY[0x1E69DB650];
    v8 = [MEMORY[0x1E69DC888] linkColor];
    v18[1] = v8;
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

- (id)_htmlStringWithURL:(id)a3 title:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = [a3 absoluteString];
  v8 = [v5 stringWithFormat:@"<a href=%@>%@</a><br />", v7, v6];

  return v8;
}

- (id)_virtualConferenceHTMLRepresentation:(id)a3 isForEmail:(BOOL)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = [a3 virtualConference];
  if (v5)
  {
    if ([(CUIKEventDescriptionGenerator *)self _virtualConferenceUsesShortRepresentation:v5])
    {
      v6 = CUIKBundle();
      v7 = [v6 localizedStringForKey:@"Video Call: %@" value:&stru_1F4AA8958 table:0];

      v8 = [v5 joinMethods];
      v9 = [v8 firstObject];
      v10 = [v9 URL];

      v11 = [v10 absoluteString];
      v12 = [(CUIKEventDescriptionGenerator *)self _htmlStringWithURL:v10 title:v11];

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
      v17 = [v5 title];

      if (v17)
      {
        v18 = [v5 title];
        [v13 appendFormat:@"%@<br /><br />", v18];
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = v5;
      v19 = [v5 joinMethods];
      v20 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v35 + 1) + 8 * i);
            v25 = [v24 title];

            if (v25)
            {
              v26 = [v24 title];
              [v13 appendFormat:@"%@<br />", v26];
            }

            v27 = [v24 URL];
            v28 = [v27 absoluteString];
            v29 = [(CUIKEventDescriptionGenerator *)self _htmlStringWithURL:v27 title:v28];

            [v13 appendString:v29];
            [v13 appendString:@"<br />"];
          }

          v21 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v21);
      }

      v5 = v34;
      v30 = [v34 conferenceDetails];

      if (v30)
      {
        v31 = [v34 conferenceDetails];
        [v13 appendFormat:@"%@<br /><br />", v31];
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