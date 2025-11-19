@interface CalConferencePersistence
+ (id)_htmlSerializedConference:(id)a3 serializationBlockTitle:(id)a4;
+ (id)_knownPersistenceFormats;
+ (id)deserializeConference:(id)a3;
+ (id)serializeConference:(id)a3 serializationBlockTitle:(id)a4;
+ (id)updateHTML:(id)a3 withEventNotes:(id)a4;
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

+ (id)serializeConference:(id)a3 serializationBlockTitle:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 isWritable])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [a1 _knownPersistenceFormats];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 supportsSerializingConferenceWithSource:{objc_msgSend(v6, "source")}])
          {
            v9 = [v12 serializeConference:v6 serializationBlockTitle:v7];
            goto LABEL_13;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

+ (id)deserializeConference:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a1 _knownPersistenceFormats];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) deserializeConferences:v4];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 firstObject];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)_htmlSerializedConference:(id)a3 serializationBlockTitle:(id)a4
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [a1 serializeConference:a3 serializationBlockTitle:a4];
  v6 = [v4 stringWithFormat:@"<pre>\n%@\n</pre>", v5];

  return v6;
}

+ (id)updateHTML:(id)a3 withEventNotes:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!(v6 | v7))
  {
    v16 = 0;
    goto LABEL_31;
  }

  v8 = [v6 CDVStringByXMLUnquoting];

  v9 = [a1 deserializeConference:v7];
  v10 = [v9 conference];
  v11 = [a1 deserializeConference:v8];
  v12 = [v11 conference];
  if (v10 && ![v10 isWritable] || v12 && (objc_msgSend(v12, "isWritable") & 1) == 0)
  {
    v16 = v8;
  }

  else
  {
    v13 = [v8 mutableCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [MEMORY[0x1E696AD60] string];
    }

    v16 = v15;

    if (v10 && v12)
    {
      if (([v10 isEqual:v12] & 1) == 0)
      {
        v17 = [v9 range];
        v19 = [v7 substringWithRange:{v17, v18}];
        v20 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v21 = [v19 stringByTrimmingCharactersInSet:v20];

        v22 = [v21 stringByAppendingString:@"\n"];

        v23 = [v11 range];
        [v16 replaceCharactersInRange:v23 withString:{v24, v22}];
LABEL_29:
      }
    }

    else
    {
      if (v10 && !v12)
      {
        v25 = [v9 blockTitle];
        v22 = [a1 _htmlSerializedConference:v10 serializationBlockTitle:v25];

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

      if (!v12 || v10)
      {
        goto LABEL_30;
      }

      v29 = [v11 range];
      v31 = v30;
      v32 = [v16 rangeOfString:@"<pre>" options:5 range:{0, v29}];
      range1 = v33;
      v45 = v31;
      v34 = [v16 rangeOfString:@"</pre>" options:1 range:{v29 + v31, objc_msgSend(v16, "length") - (v29 + v31)}];
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
          v40 = [v39 stringByReplacingCharactersInRange:v29 - v38 withString:{v45, &stru_1F379FFA8}];

          v41 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
          v43 = [v40 stringByTrimmingCharactersInSet:v41];

          if (![v43 length])
          {
            [v16 replaceCharactersInRange:v37.location withString:{v37.length, &stru_1F379FFA8}];

            goto LABEL_30;
          }
        }
      }

      [v16 replaceCharactersInRange:v29 withString:{v45, &stru_1F379FFA8}];
    }
  }

LABEL_30:

LABEL_31:

  return v16;
}

@end