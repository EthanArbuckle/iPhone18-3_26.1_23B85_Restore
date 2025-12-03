@interface ICNote(HTML)
+ (BOOL)isDefaultColor:()HTML;
+ (id)attributedStringFromHTMLString:()HTML baseURL:readerDelegate:;
+ (id)htmlStringByFixingDashedListsInHTMLString:()HTML;
+ (id)htmlStringFromAttributedString:()HTML attachmentConversionHandler:;
+ (id)mutableAttributedStringFromHTMLString:()HTML baseURL:;
+ (id)mutableAttributedStringFromHTMLString:()HTML readerDelegate:;
+ (id)tagDictionariesForAttributes:()HTML attachmentConversionHandler:;
+ (id)tagDictionaryForWrapperAroundParagraphStyle:()HTML;
+ (void)fixDashedListsInAttributedString:()HTML;
+ (void)fixFontsInAttributedString:()HTML;
+ (void)fixTextColorsInAttributedString:()HTML;
+ (void)fixUnwantedCharactersInAttributedString:()HTML;
- (id)htmlStringWithAttachmentConversionHandler:()HTML;
- (id)htmlStringWithAttachments:()HTML;
- (id)htmlStringWithHTMLAttachments;
@end

@implementation ICNote(HTML)

- (id)htmlStringWithAttachments:()HTML
{
  if (a3)
  {
    [self htmlString];
  }

  else
  {
    [self htmlStringWithAttachmentConversionHandler:0];
  }
  v3 = ;

  return v3;
}

- (id)htmlStringWithAttachmentConversionHandler:()HTML
{
  v4 = a3;
  uiAttributedString = [self uiAttributedString];
  managedObjectContext = [self managedObjectContext];
  v7 = [uiAttributedString ic_attributedStringByFlatteningInlineAttachmentsWithContext:managedObjectContext];

  v8 = [objc_opt_class() htmlStringFromAttributedString:v7 attachmentConversionHandler:v4];

  return v8;
}

- (id)htmlStringWithHTMLAttachments
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__ICNote_HTML__htmlStringWithHTMLAttachments__block_invoke;
  v3[3] = &unk_1E8469408;
  v3[4] = self;
  v1 = [self htmlStringWithAttachmentConversionHandler:v3];

  return v1;
}

+ (id)attributedStringFromHTMLString:()HTML baseURL:readerDelegate:
{
  v8 = a4;
  v9 = a5;
  v10 = [self htmlStringByFixingDashedListsInHTMLString:a3];
  if (v9)
  {
    [self mutableAttributedStringFromHTMLString:v10 readerDelegate:v9];
  }

  else
  {
    [self mutableAttributedStringFromHTMLString:v10 baseURL:v8];
  }
  v11 = ;
  [self fixDashedListsInAttributedString:v11];
  [self fixUnwantedCharactersInAttributedString:v11];
  [self fixFontsInAttributedString:v11];
  [self fixTextColorsInAttributedString:v11];

  return v11;
}

+ (id)mutableAttributedStringFromHTMLString:()HTML baseURL:
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_semaphore_create(0);
  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:60.0];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v9 = +[ICHTMLConverterClient sharedClient];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__ICNote_HTML__mutableAttributedStringFromHTMLString_baseURL___block_invoke;
  v15[3] = &unk_1E8469430;
  v17 = &v23;
  v18 = &v19;
  v10 = v7;
  v16 = v10;
  [v9 attributedStringFromHTMLString:v5 baseURL:v6 timeoutDate:v8 completionBlock:v15];

  v11 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v10, v11);
  if ((v20[3] & 1) == 0)
  {
    v12 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICNote(HTML) mutableAttributedStringFromHTMLString:v12 baseURL:?];
    }
  }

  v13 = v24[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

+ (id)mutableAttributedStringFromHTMLString:()HTML readerDelegate:
{
  v5 = a4;
  v6 = [a3 dataUsingEncoding:4];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:*MEMORY[0x1E69DB658] forKeyedSubscript:*MEMORY[0x1E69DB628]];
  [dictionary setObject:&unk_1F4FC3C18 forKeyedSubscript:*MEMORY[0x1E69DB618]];
  if (v5)
  {
    [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x1E69B7650]];
  }

  v12 = 0;
  v8 = [objc_alloc(MEMORY[0x1E696AD40]) initWithData:v6 options:dictionary documentAttributes:0 error:&v12];
  v9 = v12;
  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ICNote(HTML) mutableAttributedStringFromHTMLString:v9 readerDelegate:v10];
    }
  }

  return v8;
}

+ (id)htmlStringByFixingDashedListsInHTMLString:()HTML
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<style>ul.Apple-dash-list, ul.Apple-dash-list ul { list-style-type: %@ }</style>", @"upper-roman"];;
  v6 = [v3 rangeOfString:@"<head>"];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v4, v3];
  }

  else
  {
    v8 = v5;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<head>%@", v4];
    v7 = [v3 stringByReplacingCharactersInRange:v6 withString:{v8, v9}];
  }

  return v7;
}

+ (void)fixDashedListsInAttributedString:()HTML
{
  v3 = a3;
  if (!fixDashedListsInAttributedString__NSTextListClass)
  {
    fixDashedListsInAttributedString__NSTextListClass = NSClassFromString(&cfstr_Nstextlist.isa);
  }

  v4 = *MEMORY[0x1E69DB688];
  v5 = [v3 length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__ICNote_HTML__fixDashedListsInAttributedString___block_invoke;
  v7[3] = &unk_1E8469458;
  v8 = v3;
  v6 = v3;
  [v6 enumerateAttribute:v4 inRange:0 options:v5 usingBlock:{0, v7}];
}

+ (void)fixUnwantedCharactersInAttributedString:()HTML
{
  v3 = a3;
  mutableString = [v3 mutableString];
  v4 = [v3 length];

  [mutableString replaceOccurrencesOfString:@" " withString:@" " options:0 range:{0, v4}];
}

+ (void)fixFontsInAttributedString:()HTML
{
  v3 = a3;
  ic_preferredFontForBodyText = [MEMORY[0x1E69DB878] ic_preferredFontForBodyText];
  fontDescriptor = [ic_preferredFontForBodyText fontDescriptor];
  v6 = *MEMORY[0x1E69DB648];
  v7 = [v3 length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__ICNote_HTML__fixFontsInAttributedString___block_invoke;
  v11[3] = &unk_1E8469480;
  v12 = v3;
  v13 = ic_preferredFontForBodyText;
  v14 = fontDescriptor;
  v8 = fontDescriptor;
  v9 = ic_preferredFontForBodyText;
  v10 = v3;
  [v10 enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0x100000, v11}];
}

+ (void)fixTextColorsInAttributedString:()HTML
{
  v3 = a3;
  v4 = [v3 copy];
  v5 = *MEMORY[0x1E69DB650];
  v6 = [v3 length];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__ICNote_HTML__fixTextColorsInAttributedString___block_invoke;
  v8[3] = &unk_1E84694A8;
  v9 = v3;
  v7 = v3;
  [v4 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, v8}];
}

+ (id)htmlStringFromAttributedString:()HTML attachmentConversionHandler:
{
  v5 = a3;
  v49 = a4;
  v48 = [MEMORY[0x1E695DFD8] setWithObjects:{@"img", 0}];
  if (![v5 length])
  {
    v42 = objc_opt_new();
    goto LABEL_29;
  }

  v6 = objc_opt_new();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = *MEMORY[0x1E69DB5F0];
  ic_range = [v5 ic_range];
  v11 = v10;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __75__ICNote_HTML__htmlStringFromAttributedString_attachmentConversionHandler___block_invoke;
  v61[3] = &unk_1E84694D0;
  v47 = dictionary;
  v62 = v47;
  [v5 enumerateAttribute:v8 inRange:ic_range options:v11 usingBlock:{0, v61}];
  v12 = [v5 mutableCopy];
  ic_range2 = [v5 ic_range];
  [v12 removeAttribute:v8 range:{ic_range2, v14}];
  v51 = v12;
  string = [v12 string];
  v16 = [string paragraphRangeForRange:{0, 0}];
  v18 = v17;

  array = [MEMORY[0x1E695DF70] array];
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  v50 = v18;
  v20 = 0;
  v45 = v5;
  do
  {
    v21 = [v51 attribute:*MEMORY[0x1E69B7600] atIndex:v16 effectiveRange:0];
    v22 = 0;
    if ([v21 isList] && (v23 = objc_msgSend(v21, "indent"), v22 = v23 + 1, v23 + 1 > v20))
    {
      v24 = v23 - v20 + 1;
      do
      {
        style = [v21 style];
        if ([v21 style] == 102)
        {
          v26 = @"ol";
        }

        else
        {
          v26 = @"ul";
        }

        v27 = v26;
        [array addObject:v27];
        if (style == 101)
        {
          [v6 appendFormat:@"<%@ class=%@>\n", v27, @"Apple-dash-list"];
        }

        else
        {
          [v6 appendFormat:@"<%@>\n", v27, v44];
        }

        --v24;
      }

      while (v24);
    }

    else
    {
      if (v22 >= v20)
      {
        goto LABEL_18;
      }

      do
      {
        --v20;
        lastObject = [array lastObject];
        [array removeLastObject];
        [v6 appendFormat:@"</%@>\n", lastObject];
      }

      while (v22 < v20);
    }

    v20 = v22;
LABEL_18:
    v29 = [self tagDictionaryForWrapperAroundParagraphStyle:v21];
    v30 = [v29 objectForKeyedSubscript:@"TagName"];
    v31 = [v29 objectForKeyedSubscript:@"Attributes"];
    v32 = v31;
    v33 = &stru_1F4F94F00;
    if (v31)
    {
      v33 = v31;
    }

    v34 = v33;

    v44 = v34;
    [v6 appendFormat:@"<%@%@>", v30];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __75__ICNote_HTML__htmlStringFromAttributedString_attachmentConversionHandler___block_invoke_2;
    v52[3] = &unk_1E8469520;
    selfCopy = self;
    v57 = v49;
    v35 = v6;
    v53 = v35;
    v54 = v48;
    v36 = v51;
    v55 = v36;
    v56 = v47;
    v59 = v16;
    v60 = v50;
    [v36 enumerateAttributesInRange:v16 options:v50 usingBlock:{0, v52}];
    [v35 appendFormat:@"</%@>", v30];
    [v35 appendString:@"\n"];
    v37 = v16 + v50;
    if (v37 >= [v36 length])
    {
      v50 = 0;
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      string2 = [v36 string];
      v16 = [string2 paragraphRangeForRange:{v37, 0}];
      v50 = v39;
    }
  }

  while (v16 != 0x7FFFFFFFFFFFFFFFLL);
  v5 = v45;
  if (v20 >= 1)
  {
    v40 = v20 + 1;
    do
    {
      lastObject2 = [array lastObject];
      [array removeLastObject];
      [v35 appendFormat:@"</%@>\n", lastObject2];

      --v40;
    }

    while (v40 > 1);
  }

LABEL_27:
  v42 = v6;

LABEL_29:

  return v42;
}

+ (id)tagDictionaryForWrapperAroundParagraphStyle:()HTML
{
  v3 = a3;
  v4 = objc_opt_new();
  isList = [v3 isList];

  if (isList)
  {
    v6 = @"li";
  }

  else
  {
    v6 = @"div";
  }

  [v4 setObject:v6 forKeyedSubscript:@"TagName"];

  return v4;
}

+ (id)tagDictionariesForAttributes:()HTML attachmentConversionHandler:
{
  v70[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B75E8]];
  intValue = [v9 intValue];

  if (intValue)
  {
    v69 = @"TagName";
    v70[0] = @"b";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v69 count:1];
    [v8 addObject:v11];
  }

  if ((intValue & 2) != 0)
  {
    v67 = @"TagName";
    v68 = @"i";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    [v8 addObject:v12];
  }

  v13 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B7620]];

  if (v13)
  {
    v65 = @"TagName";
    v66 = @"u";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    [v8 addObject:v14];
  }

  v15 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B7608]];

  if (v15)
  {
    v63 = @"TagName";
    v64 = @"strike";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    [v8 addObject:v16];
  }

  v17 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B75E0]];
  v18 = objc_alloc_init(MEMORY[0x1E696AD60]);
  fontName = [v17 fontName];
  v20 = [fontName length];

  if (v20)
  {
    fontName2 = [v17 fontName];
    [v18 appendFormat:@" face=%@", fontName2];
  }

  v22 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B75F0]];

  if (v22)
  {
    v23 = [MEMORY[0x1E69DC888] colorWithCGColor:v22];
    if (([self isDefaultColor:v23] & 1) == 0)
    {
      v24 = [self hexStringForColor:v23];
      [v18 appendFormat:@" color=#%@", v24];
    }
  }

  if ([v18 length])
  {
    v61[0] = @"TagName";
    v61[1] = @"Attributes";
    v62[0] = @"font";
    v62[1] = v18;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
    [v8 addObject:v25];
  }

  [v17 pointSize];
  if (v26 > 0.0)
  {
    v59[1] = @"Attributes";
    v60[0] = @"span";
    v59[0] = @"TagName";
    v27 = MEMORY[0x1E696AEC0];
    [v17 pointSize];
    v29 = [v27 stringWithFormat:@" style=font-size: %.0Fpx", v28];
    v60[1] = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
    [v8 addObject:v30];
  }

  v31 = MEMORY[0x1E69DB5F8];
  if (v7)
  {
    v32 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];
    v33 = v32;
    if (v32)
    {
      attachmentIdentifier = [v32 attachmentIdentifier];
      v49 = 0;
      v50 = @"object";
      v48 = v7;
      v35 = v7[2](v7, attachmentIdentifier, &v50, &v49);
      v36 = v50;
      v37 = v49;
      if (v35 && v36)
      {
        v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v38 setObject:v36 forKeyedSubscript:@"TagName"];
        [v38 setObject:v35 forKeyedSubscript:@"Attributes"];
        if (v37)
        {
          [v38 setObject:v37 forKeyedSubscript:@"TextContent"];
        }

        [v8 addObject:v38];
      }

      v7 = v48;
      v31 = MEMORY[0x1E69DB5F8];
    }
  }

  v39 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
  style = [v39 style];
  if (v39)
  {
    v41 = style;
    v42 = [v6 objectForKeyedSubscript:*v31];

    if (!v42)
    {
      if (v41 > 1)
      {
        if (v41 == 2)
        {
          v53 = @"TagName";
          v54 = @"h3";
          v43 = MEMORY[0x1E695DF20];
          v44 = &v54;
          v45 = &v53;
        }

        else
        {
          if (v41 != 4)
          {
            goto LABEL_40;
          }

          v51 = @"TagName";
          v52 = @"tt";
          v43 = MEMORY[0x1E695DF20];
          v44 = &v52;
          v45 = &v51;
        }
      }

      else if (v41)
      {
        if (v41 != 1)
        {
          goto LABEL_40;
        }

        v55 = @"TagName";
        v56 = @"h2";
        v43 = MEMORY[0x1E695DF20];
        v44 = &v56;
        v45 = &v55;
      }

      else
      {
        v57 = @"TagName";
        v58 = @"h1";
        v43 = MEMORY[0x1E695DF20];
        v44 = &v58;
        v45 = &v57;
      }

      v46 = [v43 dictionaryWithObjects:v44 forKeys:v45 count:1];
      [v8 addObject:v46];
    }
  }

LABEL_40:

  return v8;
}

+ (BOOL)isDefaultColor:()HTML
{
  v3 = a3;
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v5 = [v3 isEqual:blackColor];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    Components = CGColorGetComponents([v3 CGColor]);
    v6 = 0;
    if (*Components == 0.0 && Components[1] == 0.0)
    {
      v6 = Components[2] == 0.0;
    }
  }

  return v6;
}

+ (void)mutableAttributedStringFromHTMLString:()HTML readerDelegate:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Error converting HTML to attributed string: %@", &v2, 0xCu);
}

@end