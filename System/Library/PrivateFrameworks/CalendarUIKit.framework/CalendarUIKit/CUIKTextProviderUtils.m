@interface CUIKTextProviderUtils
+ (BOOL)designatorRequiresWhitespace;
+ (BOOL)dropLeftRedundantDesignator;
+ (BOOL)smallCapsAllowed;
+ (id)timeFormatByRemovingWhitespaceAroundDesignatorOfTimeFormat:(id)a3 designatorRequiresWhitespace:(BOOL)a4;
- (CUIKTextProviderUtils)init;
@end

@implementation CUIKTextProviderUtils

- (CUIKTextProviderUtils)init
{
  v4.receiver = self;
  v4.super_class = CUIKTextProviderUtils;
  v2 = [(CUIKTextProviderUtils *)&v4 init];
  if (v2)
  {
    v2->_designatorRequiresWhitespace = +[CUIKTextProviderUtils designatorRequiresWhitespace];
    v2->_dropLeftRedundantDesignator = +[CUIKTextProviderUtils dropLeftRedundantDesignator];
    *&v2->_keepRedundantDesignator = 0;
    v2->_smallCapsAllowed = +[CUIKTextProviderUtils smallCapsAllowed];
  }

  return v2;
}

+ (BOOL)designatorRequiresWhitespace
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"DESIGNATOR_REQUIRES_WHITESPACE" value:@"0" table:0];

  LOBYTE(v2) = [v3 isEqualToString:@"1"];
  return v2;
}

+ (BOOL)dropLeftRedundantDesignator
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"INTERVAL_DROP_LEFTMOST_REDUNDANT_DESIGNATOR" value:@"1" table:0];

  LOBYTE(v2) = [v3 isEqualToString:@"1"];
  return v2;
}

+ (BOOL)smallCapsAllowed
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"SMALL_CAPS_FONT_ALLOWED" value:@"1" table:0];

  LOBYTE(v2) = [v3 isEqualToString:@"1"];
  return v2;
}

+ (id)timeFormatByRemovingWhitespaceAroundDesignatorOfTimeFormat:(id)a3 designatorRequiresWhitespace:(BOOL)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [MEMORY[0x1E696AB78] _componentsFromFormatString:v5];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = v43 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v36 = a4;
    v37 = v5;
    v9 = 0;
    v10 = *v41;
    v11 = *MEMORY[0x1E695D900];
    v12 = *MEMORY[0x1E695D910];
LABEL_3:
    v13 = 0;
    v38 = v9;
    v39 = v9 + v8;
    while (1)
    {
      if (*v41 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v40 + 1) + 8 * v13);
      v15 = [v14 objectForKeyedSubscript:v11];
      if (([v15 BOOLValue] & 1) == 0)
      {
        v16 = [v14 objectForKeyedSubscript:v12];
        v17 = [v16 hasPrefix:@"a"];

        if (v17)
        {
          break;
        }
      }

      if (v8 == ++v13)
      {
        v8 = [v6 countByEnumeratingWithState:&v40 objects:v44 count:16];
        v9 = v39;
        if (v8)
        {
          goto LABEL_3;
        }

        v18 = v6;
        v5 = v37;
        goto LABEL_35;
      }
    }

    v19 = v38;
    if ((v38 ^ 0x7FFFFFFFFFFFFFFFLL) == v13)
    {
      goto LABEL_29;
    }

    if (v36)
    {
      v20 = 0;
    }

    else
    {
      if (v38 + v13)
      {
        v21 = [v6 objectAtIndexedSubscript:v38 + v13 - 1];
        v22 = [v21 objectForKeyedSubscript:v11];
        if ([v22 BOOLValue])
        {
          v23 = [v21 objectForKeyedSubscript:v12];
          v24 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v25 = [v23 stringByTrimmingCharactersInSet:v24];

          v20 = [v25 length] == 0;
          v19 = v38;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }

      if (v38 + v13 < ([v6 count] - 1))
      {
        v26 = [v6 objectAtIndexedSubscript:v19 + v13 + 1];
        v27 = [v26 objectForKeyedSubscript:v11];
        if ([v27 BOOLValue])
        {
          v28 = [v26 objectForKeyedSubscript:v12];
          v29 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v30 = [v28 stringByTrimmingCharactersInSet:v29];

          v31 = [v30 length] == 0;
          v19 = v38;
        }

        else
        {
          v31 = 0;
        }

        if (v20)
        {
          goto LABEL_30;
        }

        goto LABEL_28;
      }
    }

    v31 = 0;
    if (v20)
    {
      goto LABEL_30;
    }

LABEL_28:
    if (v31)
    {
LABEL_30:
      v32 = [v6 mutableCopy];
      v33 = v32;
      if (v31)
      {
        [v32 removeObjectAtIndex:v19 + v13 + 1];
      }

      if (v20)
      {
        [v33 removeObjectAtIndex:v19 + v13 - 1];
      }

      v18 = v33;

      v5 = [MEMORY[0x1E696AB78] _formatStringFromComponents:v18];

      v6 = v37;
      goto LABEL_35;
    }

LABEL_29:
    v5 = v37;
    goto LABEL_36;
  }

  v18 = v6;
LABEL_35:

  v6 = v18;
LABEL_36:
  v34 = v5;

  return v5;
}

@end