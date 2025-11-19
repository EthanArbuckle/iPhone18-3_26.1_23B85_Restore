@interface OIXMLNode
+ (void)_escapeCharacters:(const unsigned __int16 *)a3 amount:(unsigned int)a4 escapeWhiteSpaces:(BOOL)a5 inString:(id)a6 appendingToString:(__CFString *)a7;
+ (void)_escapeHTMLAttributeCharacters:(id)a3 withQuote:(unsigned __int16)a4 appendingToString:(__CFString *)a5;
- (NSString)XMLString;
- (NSString)name;
- (NSString)stringValue;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_appendXMLStringToString:(__CFString *)a3 level:(int)a4;
- (void)setStringValue:(id)a3;
@end

@implementation OIXMLNode

- (NSString)name
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"OIXMLNode.m" lineNumber:26 description:{@"Please override -[%@ %@]", v5, v6}];

  return 0;
}

- (NSString)XMLString
{
  v3 = [MEMORY[0x277CCAB68] string];
  [(OIXMLNode *)self _appendXMLStringToString:v3 level:0];

  return v3;
}

- (NSString)stringValue
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"OIXMLNode.m" lineNumber:32 description:{@"Please override -[%@ %@]", v5, v6}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"OIXMLNode.m" lineNumber:20 description:{@"Please override -[%@ %@]", v6, v7}];

  return 0;
}

- (void)setStringValue:(id)a3
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:self file:@"OIXMLNode.m" lineNumber:38 description:{@"Please override -[%@ %@]", v5, v6}];
}

+ (void)_escapeHTMLAttributeCharacters:(id)a3 withQuote:(unsigned __int16)a4 appendingToString:(__CFString *)a5
{
  v7 = a3;
  Length = CFStringGetLength(a5);
  v9[0] = 38;
  v9[1] = a4;
  [OIXMLNode _escapeCharacters:v9 amount:2 escapeWhiteSpaces:0 inString:v7 appendingToString:a5];

  v10.length = CFStringGetLength(a5) - Length;
  v10.location = Length;
  CFStringFindAndReplace(a5, @"&amp;{", @"&{", v10, 0);
}

+ (void)_escapeCharacters:(const unsigned __int16 *)a3 amount:(unsigned int)a4 escapeWhiteSpaces:(BOOL)a5 inString:(id)a6 appendingToString:(__CFString *)a7
{
  v8 = a5;
  theString = a6;
  if (!theString)
  {
    goto LABEL_42;
  }

  if (qword_27FC69A70 != -1)
  {
    dispatch_once(&qword_27FC69A70, &__block_literal_global_110);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  *buffer = 0u;
  v31 = 0u;
  v11 = [(__CFString *)theString length];
  v38 = theString;
  v41 = 0;
  v42 = v11;
  CharactersPtr = CFStringGetCharactersPtr(theString);
  CStringPtr = 0;
  v39 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
  }

  v43 = 0;
  v44 = 0;
  v40 = CStringPtr;
  if (!v11)
  {
    v15 = 0;
    goto LABEL_40;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  do
  {
    if (v14 < 0 || (v17 = v42, v42 <= v14))
    {
      v18 = 0;
    }

    else if (v39)
    {
      v18 = v39[v41 + v14];
    }

    else if (v40)
    {
      v18 = v40[v41 + v14];
    }

    else
    {
      if (v44 <= v14 || (v25 = v43, v43 > v14))
      {
        v26 = v14 - 4;
        if (v14 < 4)
        {
          v26 = 0;
        }

        if (v26 + 64 < v42)
        {
          v17 = v26 + 64;
        }

        v43 = v26;
        v44 = v17;
        v45.length = v17 - v26;
        v45.location = v41 + v26;
        CFStringGetCharacters(v38, v45, buffer);
        v25 = v43;
      }

      v18 = buffer[v14 - v25];
    }

    if (!v8)
    {
      goto LABEL_18;
    }

    if (v18 != 32)
    {
      v16 = 0;
LABEL_18:
      v20 = a4;
      v21 = a3;
      if (!a4)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v22 = *v21++;
        if (v22 == v18)
        {
          break;
        }

        if (!--v20)
        {
          goto LABEL_25;
        }
      }

      v47.length = v14 - v15;
      v47.location = v15;
      v23 = CFStringCreateWithSubstring(0, theString, v47);
      CFStringAppend(a7, v23);
      CFRelease(v23);
      v24 = NSMapGet(_MergedGlobals_1, v18);
      CFStringAppend(a7, v24);
LABEL_23:
      v15 = v14 + 1;
      goto LABEL_25;
    }

    if (v16)
    {
      v46.length = v14 - v15;
      v46.location = v15;
      v19 = CFStringCreateWithSubstring(0, theString, v46);
      CFStringAppend(a7, v19);
      CFRelease(v19);
      CFStringAppend(a7, @"&nbsp;");
      v16 = 0;
      goto LABEL_23;
    }

    v16 = 1;
LABEL_25:
    ++v14;
  }

  while (v14 != v11);
  if (!v15)
  {
    CFStringAppend(a7, theString);
    goto LABEL_42;
  }

LABEL_40:
  v48.length = v11 - v15;
  v48.location = v15;
  v27 = CFStringCreateWithSubstring(0, theString, v48);
  if (v27)
  {
    v28 = v27;
    CFStringAppend(a7, v27);
    CFRelease(v28);
  }

LABEL_42:
}

void __83__OIXMLNode__escapeCharacters_amount_escapeWhiteSpaces_inString_appendingToString___block_invoke()
{
  memset(&keyCallBacks, 0, 40);
  keyCallBacks.notAKeyMarker = 0x8000000000000000;
  v2 = **&MEMORY[0x277CCA5A8];
  v0 = NSCreateMapTable(&keyCallBacks, &v2, 4uLL);
  v1 = _MergedGlobals_1;
  _MergedGlobals_1 = v0;

  NSMapInsert(_MergedGlobals_1, 0x3C, @"&lt;");
  NSMapInsert(_MergedGlobals_1, 0x26, @"&amp;");
  NSMapInsert(_MergedGlobals_1, 0x27, @"&apos;");
  NSMapInsert(_MergedGlobals_1, 9, @" &nbsp; &nbsp;");
  NSMapInsert(_MergedGlobals_1, 0x22, @"&quot;");
  NSMapInsert(_MergedGlobals_1, 0xA0, @"&nbsp;");
  NSMapInsert(_MergedGlobals_1, 0x7EC, @"<br>");
  NSMapInsert(_MergedGlobals_1, 0x7ED, @"<br>");
  NSMapInsert(_MergedGlobals_1, 0xB, @"<br>");
  NSMapInsert(_MergedGlobals_1, 0xD, @"<br>");
  NSMapInsert(_MergedGlobals_1, 0xE, @"<br>");
  NSMapInsert(_MergedGlobals_1, 0xF0A7, @"&bull;");
  NSMapInsert(_MergedGlobals_1, 0xF0B7, @"&bull;");
}

- (void)_appendXMLStringToString:(__CFString *)a3 level:(int)a4
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"OIXMLNode.m" lineNumber:158 description:{@"Please override -[%@ %@]", v6, v7}];
}

@end