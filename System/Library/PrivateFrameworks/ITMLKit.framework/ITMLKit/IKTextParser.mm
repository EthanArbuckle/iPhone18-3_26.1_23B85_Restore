@interface IKTextParser
+ (id)textWithAttributedString:(id)a3;
+ (id)textWithDOMElement:(id)a3 usingParseBlock:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)string;
- (id)_attributedStringFromDomElement:(id)a3 usingParseBlock:(id)a4;
- (id)_attributedStringWithDefaultAttributes:(id)a3 fontHandler:(id)a4 style:(id)a5;
- (id)_attributesWithFont:(id)a3 style:(id)a4;
- (id)_attributesWithFont:(id)a3 style:(id)a4 foregroundColor:(id)a5 textAlignment:(int64_t)a6;
- (id)_stringFromDateElement:(id)a3 unformattedString:(id)a4;
- (id)_stringFromDurationElement:(id)a3 unformattedString:(id)a4;
- (id)_stringFromNumberElement:(id)a3 unformattedString:(id)a4;
- (id)attributedStringWithFont:(id)a3 foregroundColor:(id)a4 textAlignment:(int64_t)a5 style:(id)a6;
- (id)attributedStringWithFont:(id)a3 style:(id)a4;
- (id)attributedStringWithFontHandler:(id)a3 style:(id)a4 defaultAttributes:(id *)a5;
- (id)attributedStringWithFontHandler:(id)a3 style:(id)a4 foregroundColor:(id)a5 textAlignment:(int64_t)a6 defaultAttributes:(id *)a7;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IKTextParser

+ (id)textWithDOMElement:(id)a3 usingParseBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  v9 = [v8 _attributedStringFromDomElement:v7 usingParseBlock:v6];

  v10 = v8[1];
  v8[1] = v9;

  return v8;
}

+ (id)textWithAttributedString:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = v5[1];
  v5[1] = v4;

  return v5;
}

- (NSString)string
{
  v2 = [(IKTextParser *)self attributedString];
  v3 = [v2 string];

  return v3;
}

- (id)attributedStringWithFont:(id)a3 style:(id)a4
{
  v6 = a4;
  v7 = [(IKTextParser *)self _attributesWithFont:a3 style:v6];
  v8 = [(IKTextParser *)self _attributedStringWithDefaultAttributes:v7 fontHandler:0 style:v6];

  return v8;
}

- (id)attributedStringWithFont:(id)a3 foregroundColor:(id)a4 textAlignment:(int64_t)a5 style:(id)a6
{
  v10 = a6;
  v11 = [(IKTextParser *)self _attributesWithFont:a3 style:v10 foregroundColor:a4 textAlignment:a5];
  v12 = [(IKTextParser *)self _attributedStringWithDefaultAttributes:v11 fontHandler:0 style:v10];

  return v12;
}

- (id)attributedStringWithFontHandler:(id)a3 style:(id)a4 defaultAttributes:(id *)a5
{
  v8 = *(a3 + 2);
  v9 = a4;
  v10 = a3;
  v11 = v8();
  v12 = [(IKTextParser *)self _attributesWithFont:v11 style:v9];

  if (a5)
  {
    v13 = v12;
    *a5 = v12;
  }

  v14 = [(IKTextParser *)self _attributedStringWithDefaultAttributes:v12 fontHandler:v10 style:v9];

  return v14;
}

- (id)attributedStringWithFontHandler:(id)a3 style:(id)a4 foregroundColor:(id)a5 textAlignment:(int64_t)a6 defaultAttributes:(id *)a7
{
  v12 = *(a3 + 2);
  v13 = a5;
  v14 = a4;
  v15 = v12(a3, v14);
  v16 = [(IKTextParser *)self _attributesWithFont:v15 style:v14 foregroundColor:v13 textAlignment:a6];

  if (a7)
  {
    v17 = v16;
    *a7 = v16;
  }

  v18 = [(IKTextParser *)self _attributedStringWithDefaultAttributes:v16 fontHandler:0 style:v14];

  return v18;
}

- (id)_attributesWithFont:(id)a3 style:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 ikColor];
  v9 = [v8 color];

  v10 = [v6 textAlignment];
  if ((v10 - 1) >= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10 - 1;
  }

  v12 = [(IKTextParser *)self _attributesWithFont:v7 style:v6 foregroundColor:v9 textAlignment:v11];

  return v12;
}

- (id)_attributesWithFont:(id)a3 style:(id)a4 foregroundColor:(id)a5 textAlignment:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x277CBEB38] dictionary];
  v13 = v12;
  if (v9)
  {
    [v12 setObject:v9 forKeyedSubscript:*MEMORY[0x277D740A8]];
  }

  if (v11)
  {
    [v13 setObject:v11 forKeyedSubscript:*MEMORY[0x277D740C0]];
  }

  v14 = [v10 textShadow];
  v15 = [v10 letterSpacing];
  if (v14)
  {
    [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x277D74138]];
  }

  if (v15)
  {
    [v13 setObject:v15 forKeyedSubscript:*MEMORY[0x277D740D0]];
  }

  v16 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v17 = [v16 mutableCopy];

  [v17 ik_applyViewElementStyle:v10];
  [v17 setAlignment:a6];
  [v17 setLineBreakMode:4];
  [v13 setObject:v17 forKeyedSubscript:*MEMORY[0x277D74118]];
  v18 = [v13 copy];

  return v18;
}

- (id)_attributedStringWithDefaultAttributes:(id)a3 fontHandler:(id)a4 style:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(IKTextParser *)self attributedString];
  v12 = [v11 mutableCopy];

  v13 = [v12 length];
  [v12 addAttributes:v10 range:{0, v13}];
  v14 = [v10 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
  v15 = [v10 objectForKeyedSubscript:*MEMORY[0x277D740C0]];

  if (v14)
  {
    attributedString = self->_attributedString;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __73__IKTextParser__attributedStringWithDefaultAttributes_fontHandler_style___block_invoke;
    v19[3] = &unk_27979B4C8;
    v20 = v9;
    v21 = v14;
    v24 = v8;
    v22 = v15;
    v23 = v12;
    [(NSAttributedString *)attributedString enumerateAttributesInRange:0 options:v13 usingBlock:0, v19];
  }

  [v12 removeAttribute:@"bold" range:{0, v13}];
  [v12 removeAttribute:@"italic" range:{0, v13}];
  [v12 removeAttribute:@"span" range:{0, v13}];
  v17 = [v12 copy];

  return v17;
}

void __73__IKTextParser__attributedStringWithDefaultAttributes_fontHandler_style___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  [*(a1 + 32) fontSize];
  v8 = v7;
  v9 = *MEMORY[0x277D740A8];
  v10 = [v37 valueForKey:*MEMORY[0x277D740A8]];
  v11 = v10;
  if (!v10)
  {
    v11 = *(a1 + 40);
  }

  v12 = v11;

  v13 = [v37 objectForKeyedSubscript:@"styleableElement"];
  v14 = [v13 textElement];
  v15 = [v14 style];

  if (v15 && (v16 = *(a1 + 64)) != 0)
  {
    v17 = (*(v16 + 16))(v16, v15);
    v18 = v17;
    if (v17)
    {
      v19 = v17;

      v8 = 0.0;
      v12 = v19;
    }
  }

  else
  {
    [v12 pointSize];
    if (v8 == v20)
    {
      v8 = 0.0;
    }
  }

  v21 = [v12 fontDescriptor];
  v22 = *MEMORY[0x277D740C0];
  v23 = [v37 valueForKey:*MEMORY[0x277D740C0]];
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v25 = [v15 ikColor];
    v24 = [v25 color];

    if (!v24)
    {
      goto LABEL_15;
    }
  }

  if (v24 != *(a1 + 48))
  {
    [*(a1 + 56) addAttribute:v22 value:v24 range:{a3, a4}];
  }

LABEL_15:
  v26 = [v37 objectForKey:@"strike"];

  if (v26)
  {
    [*(a1 + 56) addAttribute:*MEMORY[0x277D74150] value:&unk_2866F0FC0 range:{a3, a4}];
  }

  v27 = [v37 objectForKey:@"bold"];
  v28 = v27 != 0;

  v29 = [v37 objectForKey:@"italic"];

  v30 = (v29 != 0) | (2 * v28);
  if (v30 || v8 > 0.0)
  {
    v31 = v21;
    v32 = v31;
    if (v30)
    {
      v33 = [v31 fontDescriptorWithSymbolicTraits:v30];

      v32 = v33;
    }

    if (v8 == 0.0)
    {
      [v12 pointSize];
      v8 = v34;
    }

    v35 = *(a1 + 56);
    v36 = [MEMORY[0x277D74300] fontWithDescriptor:v32 size:v8];
    [v35 addAttribute:v9 value:v36 range:{a3, a4}];
  }

  else if (v12 != *(a1 + 40))
  {
    [*(a1 + 56) addAttribute:v9 value:v12 range:{a3, a4}];
  }
}

- (id)_attributedStringFromDomElement:(id)a3 usingParseBlock:(id)a4
{
  v46[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v37 = 1;
  v9 = [v6 childNodesAsArray];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = v7[2](v7, self, v6, &v37);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(__CFString *)v10 string];
      v10 = v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if ((v37 & 1) == 0)
    {

      v9 = 0;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v37 == 1)
  {
    v12 = [v6 textContent];

    v10 = v12;
  }

  v13 = [v6 nodeName];
  v32 = v6;
  v30 = v13;
  if ([v13 isEqualToString:@"b"])
  {
    v45 = @"bold";
    v46[0] = MEMORY[0x277CBEC38];
    v14 = MEMORY[0x277CBEAC0];
    v15 = v46;
    v16 = &v45;
LABEL_20:
    v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
    goto LABEL_21;
  }

  if ([v13 isEqualToString:@"i"])
  {
    v43 = @"italic";
    v44 = MEMORY[0x277CBEC38];
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v44;
    v16 = &v43;
    goto LABEL_20;
  }

  if ([v13 isEqualToString:@"span"])
  {
    v41 = @"span";
    v42 = MEMORY[0x277CBEC38];
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v42;
    v16 = &v41;
    goto LABEL_20;
  }

  if ([v13 isEqualToString:@"strike"])
  {
    v39 = @"strike";
    v40 = MEMORY[0x277CBEC38];
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v40;
    v16 = &v39;
    goto LABEL_20;
  }

  if ([v13 isEqualToString:@"date"])
  {
    v27 = [(IKTextParser *)self _stringFromDateElement:v6 unformattedString:v10];
  }

  else if ([v13 isEqualToString:@"duration"])
  {
    v27 = [(IKTextParser *)self _stringFromDurationElement:v6 unformattedString:v10];
  }

  else
  {
    if (![v13 isEqualToString:@"number"])
    {
      if ([v13 isEqualToString:@"br"])
      {

        v17 = 0;
        v10 = @"\n";
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_21;
    }

    v27 = [(IKTextParser *)self _stringFromNumberElement:v6 unformattedString:v10];
  }

  v28 = v27;
  if (v27)
  {
    v29 = v27;

    v10 = v29;
  }

  v17 = 0;
  v9 = 0;
LABEL_21:
  v31 = v10;
  if ([(__CFString *)v10 length])
  {
    if (!v11)
    {
      v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v10 attributes:0];
    }

    v18 = v11;
    [v8 appendAttributedString:v11];
  }

  else
  {
    v18 = v11;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = v9;
  v20 = [v19 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [(IKTextParser *)self _attributedStringFromDomElement:*(*(&v33 + 1) + 8 * i) usingParseBlock:v7];
        [v8 appendAttributedString:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v21);
  }

  if (v17)
  {
    [v8 addAttributes:v17 range:{0, objc_msgSend(v8, "length")}];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_stringFromDateElement:(id)a3 unformattedString:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!_stringFromDateElement_unformattedString__sSimpleInputFormatter)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCA968]);
    v8 = _stringFromDateElement_unformattedString__sSimpleInputFormatter;
    _stringFromDateElement_unformattedString__sSimpleInputFormatter = v7;

    [_stringFromDateElement_unformattedString__sSimpleInputFormatter setDateFormat:@"yyyy-MM-dd"];
  }

  v9 = [v5 getAttribute:@"locale"];
  if ([v9 length])
  {
    [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v9];
  }

  else
  {
    [MEMORY[0x277CBEAF8] currentLocale];
  }
  v10 = ;
  [_stringFromDateElement_unformattedString__sSimpleInputFormatter setLocale:v10];
  if (!v6)
  {
    v6 = [v5 textContent];
  }

  v11 = [_stringFromDateElement_unformattedString__sSimpleInputFormatter dateFromString:v6];
  if (v11)
  {
    v12 = v11;
LABEL_12:
    v15 = +[IKFormatting sharedInstance];
    v16 = [v5 getAttribute:@"format"];
    v17 = [v15 formatDate:v12 format:v16];

    goto LABEL_13;
  }

  v13 = +[IKFormatting isoDateFormatter];
  v12 = [v13 dateFromString:v6];

  if (v12)
  {
    goto LABEL_12;
  }

  v14 = +[IKFormatting rfc1123DateFormatter];
  v12 = [v14 dateFromString:v6];

  if (v12)
  {
    goto LABEL_12;
  }

  v17 = 0;
LABEL_13:
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v6;
  }

  v19 = v18;

  return v18;
}

- (id)_stringFromDurationElement:(id)a3 unformattedString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (_stringFromDurationElement_unformattedString__sInputFormatter)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v12 = _stringFromDurationElement_unformattedString__sInputFormatter;
    _stringFromDurationElement_unformattedString__sInputFormatter = v11;

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v7 = [v5 textContent];
LABEL_3:
  v8 = [_stringFromDurationElement_unformattedString__sInputFormatter numberFromString:v7];
  if (v8)
  {
    v9 = +[IKFormatting sharedInstance];
    v10 = [v9 formatDuration:v8];
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v7;
  }

  v14 = v13;

  return v13;
}

- (id)_stringFromNumberElement:(id)a3 unformattedString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (_stringFromNumberElement_unformattedString__sInputFormatter)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v15 = _stringFromNumberElement_unformattedString__sInputFormatter;
    _stringFromNumberElement_unformattedString__sInputFormatter = v14;

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v7 = [v5 textContent];
LABEL_3:
  v8 = [_stringFromNumberElement_unformattedString__sInputFormatter numberFromString:v7];
  if (v8)
  {
    v9 = +[IKFormatting sharedInstance];
    v10 = [v5 getAttribute:@"style"];
    v11 = [v5 getAttribute:@"postiveFormat"];
    v12 = [v5 getAttribute:@"negativeFormat"];
    v13 = [v9 formatNumber:v8 style:v10 postiveFormat:v11 negativeFormat:v12];
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v7;
  }

  v17 = v16;

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_7;
  }

  attributedString = self->_attributedString;
  if (attributedString == v4->_attributedString)
  {
LABEL_5:
    v6 = 1;
  }

  else
  {
    v6 = [(NSAttributedString *)attributedString isEqualToAttributedString:?];
  }

LABEL_7:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(NSAttributedString *)self->_attributedString mutableCopyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

@end