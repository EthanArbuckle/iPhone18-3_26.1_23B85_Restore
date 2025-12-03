@interface NSString(BRCAdditions)
+ (id)br_newReadableFileSizeStringFromBytesCount:()BRCAdditions;
- (id)br_decodeIndexStringToIndexSet;
- (id)br_libnotifyPerPersonaNotificationName:()BRCAdditions;
- (id)br_obfuscateAliasTarget;
- (id)br_obfuscatedDotOrTildaSeparatedComponents;
- (id)br_stringByBackslashEscapingCharactersInString:()BRCAdditions;
- (id)br_stringByJSONEscaping;
- (uint64_t)br_isBoostableItemIdentifier;
- (void)br_obfuscateAliasTarget;
@end

@implementation NSString(BRCAdditions)

- (id)br_stringByBackslashEscapingCharactersInString:()BRCAdditions
{
  v4 = a3;
  if ([v4 length] && objc_msgSend(v4, "rangeOfString:", @"\\"") == 0x7FFFFFFFFFFFFFFFLL)
  {
    [NSString(BRCAdditions) br_stringByBackslashEscapingCharactersInString:];
  }

  selfCopy = self;
  v6 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:v4];
  v7 = [selfCopy rangeOfCharacterFromSet:v6];
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = [MEMORY[0x1E696AD60] stringWithString:selfCopy];
    do
    {
      [v11 insertString:@"\\"" atIndex:v9];
      if (v9 + v10 + 1 >= [v11 length])
      {
        break;
      }

      v9 = [v11 rangeOfCharacterFromSet:v6 options:0 range:?];
      v10 = v12;
    }

    while (v12);
  }

  else
  {
    v11 = selfCopy;
  }

  return v11;
}

- (id)br_libnotifyPerPersonaNotificationName:()BRCAdditions
{
  if (a3)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", self, a3];
  }

  else
  {
    v3 = [self copy];
  }

  return v3;
}

- (id)br_decodeIndexStringToIndexSet
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [self componentsSeparatedByString:{@", "}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = v27 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    v23 = v2;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v25 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v24 + 1) + 8 * v7);
      v9 = [v8 componentsSeparatedByString:@":"];
      if ([v9 count] == 2)
      {
        v10 = [v9 objectAtIndexedSubscript:0];
        longLongValue = [v10 longLongValue];

        v12 = [v9 objectAtIndexedSubscript:1];
        longLongValue2 = [v12 longLongValue];

        v14 = longLongValue2 - longLongValue;
        if (longLongValue2 < longLongValue || (longLongValue2 | longLongValue) < 0)
        {
          v18 = brc_bread_crumbs("[NSString(BRCAdditions) br_decodeIndexStringToIndexSet]", 77);
          v19 = brc_default_log(1, 0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v29 = v8;
            v30 = 2112;
            v31 = v18;
            _os_log_impl(&dword_1AE2A9000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Invalid range components %@%@", buf, 0x16u);
          }

          v2 = v23;
          goto LABEL_24;
        }

        v2 = v23;
        [v23 addIndexesInRange:{longLongValue, v14 + 1}];
      }

      else
      {
        if ([v9 count] != 1)
        {
          v18 = brc_bread_crumbs("[NSString(BRCAdditions) br_decodeIndexStringToIndexSet]", 94);
          v19 = brc_default_log(1, 0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v29 = v8;
            v30 = 2112;
            v31 = v18;
            v20 = "[WARNING] Invalid string range %@%@";
            goto LABEL_23;
          }

LABEL_24:

          v17 = 0;
          goto LABEL_25;
        }

        v15 = [v9 objectAtIndexedSubscript:0];
        longLongValue3 = [v15 longLongValue];

        if (longLongValue3 < 0)
        {
          v18 = brc_bread_crumbs("[NSString(BRCAdditions) br_decodeIndexStringToIndexSet]", 88);
          v19 = brc_default_log(1, 0);
          v2 = v23;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v29 = v8;
            v30 = 2112;
            v31 = v18;
            v20 = "[WARNING] Invalid string value %@%@";
LABEL_23:
            _os_log_impl(&dword_1AE2A9000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x16u);
          }

          goto LABEL_24;
        }

        v2 = v23;
        [v23 addIndex:longLongValue3];
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v17 = v2;
LABEL_25:

  v21 = *MEMORY[0x1E69E9840];

  return v17;
}

- (uint64_t)br_isBoostableItemIdentifier
{
  if ([self isEqualToString:*MEMORY[0x1E6967250]] & 1) != 0 || (objc_msgSend(self, "isEqualToString:", *MEMORY[0x1E6967278]))
  {
    return 0;
  }

  else
  {
    return [self isEqualToString:*MEMORY[0x1E6967290]] ^ 1;
  }
}

- (id)br_stringByJSONEscaping
{
  v1 = [self br_stringByBackslashEscapingCharactersInString:@"\\""];
  v2 = [v1 mutableCopy];

  [v2 replaceOccurrencesOfString:@"\n" withString:@"\\n" options:1 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"\r" withString:@"\\r" options:1 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"\t" withString:@"\\t" options:1 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"\b" withString:@"\\b" options:1 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"\f" withString:@"\\f" options:1 range:{0, objc_msgSend(v2, "length")}];

  return v2;
}

+ (id)br_newReadableFileSizeStringFromBytesCount:()BRCAdditions
{
  v5 = a5;
  if (a5 < 1025)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    self = 0.0009765625;
    a2 = 1024.0;
    do
    {
      v5 = v5 * 0.0009765625;
      ++v6;
    }

    while (v5 > 1024.0);
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = [&unk_1F23E63E8 objectAtIndexedSubscript:{v6, self, a2}];
  v9 = [v7 stringWithFormat:@"%.lf %@", *&v5, v8];

  return v9;
}

- (id)br_obfuscateAliasTarget
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (fp_shouldObfuscateFilenames())
  {
    v2 = [self componentsSeparatedByString:@":"];
    if ([v2 count] == 2)
    {
      v3 = [v2 objectAtIndexedSubscript:0];
      fp_obfuscatedDotSeparatedComponents = [v3 fp_obfuscatedDotSeparatedComponents];
      v12[0] = fp_obfuscatedDotSeparatedComponents;
      v5 = [v2 objectAtIndexedSubscript:1];
      v12[1] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
      selfCopy2 = [v6 componentsJoinedByString:@":"];
    }

    else
    {
      v8 = brc_bread_crumbs("[NSString(BRCAdditions) br_obfuscateAliasTarget]", 141);
      v9 = brc_default_log(0, 0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(NSString(BRCAdditions) *)self br_obfuscateAliasTarget];
      }

      selfCopy2 = self;
    }
  }

  else
  {
    selfCopy2 = self;
  }

  v10 = *MEMORY[0x1E69E9840];

  return selfCopy2;
}

- (id)br_obfuscatedDotOrTildaSeparatedComponents
{
  if (fp_shouldObfuscateFilenames())
  {
    v2 = [self stringByReplacingOccurrencesOfString:@"~" withString:@"."];
    selfCopy = [v2 fp_obfuscatedDotSeparatedComponents];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)br_stringByBackslashEscapingCharactersInString:()BRCAdditions .cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("[NSString(BRCAdditions) br_stringByBackslashEscapingCharactersInString:]", 31);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_1AE2A9000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: charactersToEscape.length == 0 || [charactersToEscape rangeOfString:@\\\\].location != NSNotFound%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)br_obfuscateAliasTarget
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  selfCopy = self;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: malformed alias target: %@%@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end