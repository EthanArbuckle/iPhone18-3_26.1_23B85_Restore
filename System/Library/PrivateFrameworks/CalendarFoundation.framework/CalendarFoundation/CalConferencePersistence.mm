@interface CalConferencePersistence
+ (id)_htmlSerializedConference:(id)conference serializationBlockTitle:(id)title;
+ (id)_knownPersistenceFormats;
+ (id)deserializeConference:(id)conference;
+ (id)serializeConference:(id)conference serializationBlockTitle:(id)title;
+ (id)updateHTML:(id)l withEventNotes:(id)notes;
@end

@implementation CalConferencePersistence

+ (id)_knownPersistenceFormats
{
  if (_knownPersistenceFormats_onceToken != -1)
  {
    +[CalConferencePersistence _knownPersistenceFormats];
  }

  v3 = _knownPersistenceFormats_formats;

  return v3;
}

void __52__CalConferencePersistence__knownPersistenceFormats__block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(CalAppleConferenceFormat);
  v5[0] = v0;
  v1 = objc_alloc_init(CalGoogleConferenceFormat);
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = _knownPersistenceFormats_formats;
  _knownPersistenceFormats_formats = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)serializeConference:(id)conference serializationBlockTitle:(id)title
{
  v20 = *MEMORY[0x1E69E9840];
  conferenceCopy = conference;
  titleCopy = title;
  if ([conferenceCopy isWritable])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    _knownPersistenceFormats = [self _knownPersistenceFormats];
    v9 = [_knownPersistenceFormats countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(_knownPersistenceFormats);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 supportsSerializingConferenceWithSource:{objc_msgSend(conferenceCopy, "source")}])
          {
            v9 = [v12 serializeConference:conferenceCopy serializationBlockTitle:titleCopy];
            goto LABEL_13;
          }
        }

        v9 = [_knownPersistenceFormats countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v9 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)deserializeConference:(id)conference
{
  v20 = *MEMORY[0x1E69E9840];
  conferenceCopy = conference;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  _knownPersistenceFormats = [self _knownPersistenceFormats];
  v7 = [_knownPersistenceFormats countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(_knownPersistenceFormats);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) deserializeConferences:conferenceCopy];
        [array addObjectsFromArray:v11];
      }

      v8 = [_knownPersistenceFormats countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  firstObject = [array firstObject];

  v13 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (id)_htmlSerializedConference:(id)conference serializationBlockTitle:(id)title
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [self serializeConference:conference serializationBlockTitle:title];
  v6 = [v4 stringWithFormat:@"<pre>\n%@\n</pre>", v5];

  return v6;
}

+ (id)updateHTML:(id)l withEventNotes:(id)notes
{
  lCopy = l;
  notesCopy = notes;
  if (!(lCopy | notesCopy))
  {
    v16 = 0;
    goto LABEL_31;
  }

  cDVStringByXMLUnquoting = [lCopy CDVStringByXMLUnquoting];

  v9 = [self deserializeConference:notesCopy];
  conference = [v9 conference];
  v11 = [self deserializeConference:cDVStringByXMLUnquoting];
  conference2 = [v11 conference];
  if (conference && ![conference isWritable] || conference2 && (objc_msgSend(conference2, "isWritable") & 1) == 0)
  {
    v16 = cDVStringByXMLUnquoting;
  }

  else
  {
    v13 = [cDVStringByXMLUnquoting mutableCopy];
    v14 = v13;
    if (v13)
    {
      string = v13;
    }

    else
    {
      string = [MEMORY[0x1E696AD60] string];
    }

    v16 = string;

    if (conference && conference2)
    {
      if (([conference isEqual:conference2] & 1) == 0)
      {
        range = [v9 range];
        v19 = [notesCopy substringWithRange:{range, v18}];
        whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v21 = [v19 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

        v22 = [v21 stringByAppendingString:@"\n"];

        range2 = [v11 range];
        [v16 replaceCharactersInRange:range2 withString:{v24, v22}];
LABEL_29:
      }
    }

    else
    {
      if (conference && !conference2)
      {
        blockTitle = [v9 blockTitle];
        v22 = [self _htmlSerializedConference:conference serializationBlockTitle:blockTitle];

        v26 = [v16 rangeOfString:@"</body>" options:1];
        if (v26 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = [v16 rangeOfString:@"<body>" options:1];
          if (v27 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v26 = [v16 length];
          }

          else
          {
            v26 = v27 + v28;
          }
        }

        [v16 insertString:v22 atIndex:v26];
        goto LABEL_29;
      }

      if (!conference2 || conference)
      {
        goto LABEL_30;
      }

      range3 = [v11 range];
      v31 = v30;
      v32 = [v16 rangeOfString:@"<pre>" options:5 range:{0, range3}];
      range1 = v33;
      v45 = v31;
      v34 = [v16 rangeOfString:@"</pre>" options:1 range:{range3 + v31, objc_msgSend(v16, "length") - (range3 + v31)}];
      if (v32 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v36.location = v34;
        if (v34 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v36.length = v35;
          v47.location = v32;
          v47.length = range1;
          v37 = NSUnionRange(v47, v36);
          v38 = v37.location + [@"<pre>" length];
          v39 = [v16 substringWithRange:{v38, v37.length - (objc_msgSend(@"<pre>", "length") + objc_msgSend(@"</pre>", "length"))}];
          v40 = [v39 stringByReplacingCharactersInRange:range3 - v38 withString:{v45, &stru_1F379FFA8}];

          whitespaceAndNewlineCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
          v43 = [v40 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

          if (![v43 length])
          {
            [v16 replaceCharactersInRange:v37.location withString:{v37.length, &stru_1F379FFA8}];

            goto LABEL_30;
          }
        }
      }

      [v16 replaceCharactersInRange:range3 withString:{v45, &stru_1F379FFA8}];
    }
  }

LABEL_30:

LABEL_31:

  return v16;
}

@end