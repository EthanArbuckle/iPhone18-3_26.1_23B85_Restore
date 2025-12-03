@interface IKTextParser
+ (id)textWithAttributedString:(id)string;
+ (id)textWithDOMElement:(id)element usingParseBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (NSString)string;
- (id)_attributedStringFromDomElement:(id)element usingParseBlock:(id)block;
- (id)_attributedStringWithDefaultAttributes:(id)attributes fontHandler:(id)handler style:(id)style;
- (id)_attributesWithFont:(id)font style:(id)style;
- (id)_attributesWithFont:(id)font style:(id)style foregroundColor:(id)color textAlignment:(int64_t)alignment;
- (id)_stringFromDateElement:(id)element unformattedString:(id)string;
- (id)_stringFromDurationElement:(id)element unformattedString:(id)string;
- (id)_stringFromNumberElement:(id)element unformattedString:(id)string;
- (id)attributedStringWithFont:(id)font foregroundColor:(id)color textAlignment:(int64_t)alignment style:(id)style;
- (id)attributedStringWithFont:(id)font style:(id)style;
- (id)attributedStringWithFontHandler:(id)handler style:(id)style defaultAttributes:(id *)attributes;
- (id)attributedStringWithFontHandler:(id)handler style:(id)style foregroundColor:(id)color textAlignment:(int64_t)alignment defaultAttributes:(id *)attributes;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IKTextParser

+ (id)textWithDOMElement:(id)element usingParseBlock:(id)block
{
  blockCopy = block;
  elementCopy = element;
  v8 = objc_alloc_init(self);
  v9 = [v8 _attributedStringFromDomElement:elementCopy usingParseBlock:blockCopy];

  v10 = v8[1];
  v8[1] = v9;

  return v8;
}

+ (id)textWithAttributedString:(id)string
{
  stringCopy = string;
  v5 = objc_alloc_init(self);
  v6 = v5[1];
  v5[1] = stringCopy;

  return v5;
}

- (NSString)string
{
  attributedString = [(IKTextParser *)self attributedString];
  string = [attributedString string];

  return string;
}

- (id)attributedStringWithFont:(id)font style:(id)style
{
  styleCopy = style;
  v7 = [(IKTextParser *)self _attributesWithFont:font style:styleCopy];
  v8 = [(IKTextParser *)self _attributedStringWithDefaultAttributes:v7 fontHandler:0 style:styleCopy];

  return v8;
}

- (id)attributedStringWithFont:(id)font foregroundColor:(id)color textAlignment:(int64_t)alignment style:(id)style
{
  styleCopy = style;
  v11 = [(IKTextParser *)self _attributesWithFont:font style:styleCopy foregroundColor:color textAlignment:alignment];
  v12 = [(IKTextParser *)self _attributedStringWithDefaultAttributes:v11 fontHandler:0 style:styleCopy];

  return v12;
}

- (id)attributedStringWithFontHandler:(id)handler style:(id)style defaultAttributes:(id *)attributes
{
  v8 = *(handler + 2);
  styleCopy = style;
  handlerCopy = handler;
  v11 = v8();
  v12 = [(IKTextParser *)self _attributesWithFont:v11 style:styleCopy];

  if (attributes)
  {
    v13 = v12;
    *attributes = v12;
  }

  v14 = [(IKTextParser *)self _attributedStringWithDefaultAttributes:v12 fontHandler:handlerCopy style:styleCopy];

  return v14;
}

- (id)attributedStringWithFontHandler:(id)handler style:(id)style foregroundColor:(id)color textAlignment:(int64_t)alignment defaultAttributes:(id *)attributes
{
  v12 = *(handler + 2);
  colorCopy = color;
  styleCopy = style;
  v15 = v12(handler, styleCopy);
  v16 = [(IKTextParser *)self _attributesWithFont:v15 style:styleCopy foregroundColor:colorCopy textAlignment:alignment];

  if (attributes)
  {
    v17 = v16;
    *attributes = v16;
  }

  v18 = [(IKTextParser *)self _attributedStringWithDefaultAttributes:v16 fontHandler:0 style:styleCopy];

  return v18;
}

- (id)_attributesWithFont:(id)font style:(id)style
{
  styleCopy = style;
  fontCopy = font;
  ikColor = [styleCopy ikColor];
  color = [ikColor color];

  textAlignment = [styleCopy textAlignment];
  if ((textAlignment - 1) >= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = textAlignment - 1;
  }

  v12 = [(IKTextParser *)self _attributesWithFont:fontCopy style:styleCopy foregroundColor:color textAlignment:v11];

  return v12;
}

- (id)_attributesWithFont:(id)font style:(id)style foregroundColor:(id)color textAlignment:(int64_t)alignment
{
  fontCopy = font;
  styleCopy = style;
  colorCopy = color;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13 = dictionary;
  if (fontCopy)
  {
    [dictionary setObject:fontCopy forKeyedSubscript:*MEMORY[0x277D740A8]];
  }

  if (colorCopy)
  {
    [v13 setObject:colorCopy forKeyedSubscript:*MEMORY[0x277D740C0]];
  }

  textShadow = [styleCopy textShadow];
  letterSpacing = [styleCopy letterSpacing];
  if (textShadow)
  {
    [v13 setObject:textShadow forKeyedSubscript:*MEMORY[0x277D74138]];
  }

  if (letterSpacing)
  {
    [v13 setObject:letterSpacing forKeyedSubscript:*MEMORY[0x277D740D0]];
  }

  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v17 = [defaultParagraphStyle mutableCopy];

  [v17 ik_applyViewElementStyle:styleCopy];
  [v17 setAlignment:alignment];
  [v17 setLineBreakMode:4];
  [v13 setObject:v17 forKeyedSubscript:*MEMORY[0x277D74118]];
  v18 = [v13 copy];

  return v18;
}

- (id)_attributedStringWithDefaultAttributes:(id)attributes fontHandler:(id)handler style:(id)style
{
  handlerCopy = handler;
  styleCopy = style;
  attributesCopy = attributes;
  attributedString = [(IKTextParser *)self attributedString];
  v12 = [attributedString mutableCopy];

  v13 = [v12 length];
  [v12 addAttributes:attributesCopy range:{0, v13}];
  v14 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277D740A8]];
  v15 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277D740C0]];

  if (v14)
  {
    attributedString = self->_attributedString;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __73__IKTextParser__attributedStringWithDefaultAttributes_fontHandler_style___block_invoke;
    v19[3] = &unk_27979B4C8;
    v20 = styleCopy;
    v21 = v14;
    v24 = handlerCopy;
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

- (id)_attributedStringFromDomElement:(id)element usingParseBlock:(id)block
{
  v46[1] = *MEMORY[0x277D85DE8];
  elementCopy = element;
  blockCopy = block;
  v8 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v37 = 1;
  childNodesAsArray = [elementCopy childNodesAsArray];
  if (blockCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = blockCopy[2](blockCopy, self, elementCopy, &v37);
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

      childNodesAsArray = 0;
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
    textContent = [elementCopy textContent];

    v10 = textContent;
  }

  nodeName = [elementCopy nodeName];
  v32 = elementCopy;
  v30 = nodeName;
  if ([nodeName isEqualToString:@"b"])
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

  if ([nodeName isEqualToString:@"i"])
  {
    v43 = @"italic";
    v44 = MEMORY[0x277CBEC38];
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v44;
    v16 = &v43;
    goto LABEL_20;
  }

  if ([nodeName isEqualToString:@"span"])
  {
    v41 = @"span";
    v42 = MEMORY[0x277CBEC38];
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v42;
    v16 = &v41;
    goto LABEL_20;
  }

  if ([nodeName isEqualToString:@"strike"])
  {
    v39 = @"strike";
    v40 = MEMORY[0x277CBEC38];
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v40;
    v16 = &v39;
    goto LABEL_20;
  }

  if ([nodeName isEqualToString:@"date"])
  {
    v27 = [(IKTextParser *)self _stringFromDateElement:elementCopy unformattedString:v10];
  }

  else if ([nodeName isEqualToString:@"duration"])
  {
    v27 = [(IKTextParser *)self _stringFromDurationElement:elementCopy unformattedString:v10];
  }

  else
  {
    if (![nodeName isEqualToString:@"number"])
    {
      if ([nodeName isEqualToString:@"br"])
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

    v27 = [(IKTextParser *)self _stringFromNumberElement:elementCopy unformattedString:v10];
  }

  v28 = v27;
  if (v27)
  {
    v29 = v27;

    v10 = v29;
  }

  v17 = 0;
  childNodesAsArray = 0;
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
  v19 = childNodesAsArray;
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

        v24 = [(IKTextParser *)self _attributedStringFromDomElement:*(*(&v33 + 1) + 8 * i) usingParseBlock:blockCopy];
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

- (id)_stringFromDateElement:(id)element unformattedString:(id)string
{
  elementCopy = element;
  stringCopy = string;
  if (!_stringFromDateElement_unformattedString__sSimpleInputFormatter)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCA968]);
    v8 = _stringFromDateElement_unformattedString__sSimpleInputFormatter;
    _stringFromDateElement_unformattedString__sSimpleInputFormatter = v7;

    [_stringFromDateElement_unformattedString__sSimpleInputFormatter setDateFormat:@"yyyy-MM-dd"];
  }

  v9 = [elementCopy getAttribute:@"locale"];
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
  if (!stringCopy)
  {
    stringCopy = [elementCopy textContent];
  }

  v11 = [_stringFromDateElement_unformattedString__sSimpleInputFormatter dateFromString:stringCopy];
  if (v11)
  {
    v12 = v11;
LABEL_12:
    v15 = +[IKFormatting sharedInstance];
    v16 = [elementCopy getAttribute:@"format"];
    v17 = [v15 formatDate:v12 format:v16];

    goto LABEL_13;
  }

  v13 = +[IKFormatting isoDateFormatter];
  v12 = [v13 dateFromString:stringCopy];

  if (v12)
  {
    goto LABEL_12;
  }

  v14 = +[IKFormatting rfc1123DateFormatter];
  v12 = [v14 dateFromString:stringCopy];

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
    v18 = stringCopy;
  }

  v19 = v18;

  return v18;
}

- (id)_stringFromDurationElement:(id)element unformattedString:(id)string
{
  elementCopy = element;
  stringCopy = string;
  textContent = stringCopy;
  if (_stringFromDurationElement_unformattedString__sInputFormatter)
  {
    if (stringCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v12 = _stringFromDurationElement_unformattedString__sInputFormatter;
    _stringFromDurationElement_unformattedString__sInputFormatter = v11;

    if (textContent)
    {
      goto LABEL_3;
    }
  }

  textContent = [elementCopy textContent];
LABEL_3:
  v8 = [_stringFromDurationElement_unformattedString__sInputFormatter numberFromString:textContent];
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
    v13 = textContent;
  }

  v14 = v13;

  return v13;
}

- (id)_stringFromNumberElement:(id)element unformattedString:(id)string
{
  elementCopy = element;
  stringCopy = string;
  textContent = stringCopy;
  if (_stringFromNumberElement_unformattedString__sInputFormatter)
  {
    if (stringCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v15 = _stringFromNumberElement_unformattedString__sInputFormatter;
    _stringFromNumberElement_unformattedString__sInputFormatter = v14;

    if (textContent)
    {
      goto LABEL_3;
    }
  }

  textContent = [elementCopy textContent];
LABEL_3:
  v8 = [_stringFromNumberElement_unformattedString__sInputFormatter numberFromString:textContent];
  if (v8)
  {
    v9 = +[IKFormatting sharedInstance];
    v10 = [elementCopy getAttribute:@"style"];
    v11 = [elementCopy getAttribute:@"postiveFormat"];
    v12 = [elementCopy getAttribute:@"negativeFormat"];
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
    v16 = textContent;
  }

  v17 = v16;

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
  if (attributedString == equalCopy->_attributedString)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(NSAttributedString *)self->_attributedString mutableCopyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

@end