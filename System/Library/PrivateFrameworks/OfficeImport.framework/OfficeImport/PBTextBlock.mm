@interface PBTextBlock
+ (void)applyTextRuler:(void *)ruler toTextBlock:(id)block;
+ (void)readClientTextBox:(id)box textBody:(id)body state:(id)state;
+ (void)readFromStyledText:(__CFAttributedString *)text toStyledPargraphs:(__CFArray *)pargraphs;
+ (void)readFromTextBlock:(id)block toStyledText:(__CFAttributedString *)text;
+ (void)readParagraph:(id)paragraph paragraph:(__CFAttributedString *)a4 textType:(int)type state:(id)state;
@end

@implementation PBTextBlock

+ (void)readClientTextBox:(id)box textBody:(id)body state:(id)state
{
  boxCopy = box;
  bodyCopy = body;
  stateCopy = state;
  v10 = objc_alloc_init(PptTextBlock);
  [(PptTextBlock *)v10 readTextBlock:boxCopy];
  textRuler = [(PptTextBlock *)v10 textRuler];
  if (textRuler)
  {
    [self applyTextRuler:textRuler toTextBlock:v10];
  }

  textType = [(PptTextBlock *)v10 textType];
  text = [(PptTextBlock *)v10 text];
  v14 = [text stringByAppendingString:@"\r"];

  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  v16 = *MEMORY[0x277CBECE8];
  v17 = CFAttributedStringCreate(*MEMORY[0x277CBECE8], v14, dictionary);

  MutableCopy = CFAttributedStringCreateMutableCopy(v16, 0, v17);
  CFRelease(v17);
  CFAttributedStringBeginEditing(MutableCopy);
  [self readFromTextBlock:v10 toStyledText:MutableCopy];
  CFAttributedStringEndEditing(MutableCopy);
  Mutable = CFArrayCreateMutable(v16, 0, MEMORY[0x277CBF128]);
  [self readFromStyledText:MutableCopy toStyledPargraphs:Mutable];
  for (i = 0; i < CFArrayGetCount(Mutable); ++i)
  {
    addParagraph = [bodyCopy addParagraph];
    [self readParagraph:addParagraph paragraph:CFArrayGetValueAtIndex(Mutable textType:i) state:{textType, stateCopy}];
  }

  CFRelease(Mutable);
  CFRelease(MutableCopy);
}

+ (void)readFromTextBlock:(id)block toStyledText:(__CFAttributedString *)text
{
  blockCopy = block;
  Length = CFAttributedStringGetLength(text);
  paragraphRunCount = [blockCopy paragraphRunCount];
  v7 = 0x277CCA000uLL;
  if (paragraphRunCount >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = [blockCopy paragraphRunAtIndex:v9];
      v11 = *v10;
      verifyRangeValidity(v8, *v10, Length);
      v12 = [MEMORY[0x277CCAE60] valueWithPointer:v10];
      v49.location = v8;
      v49.length = v11;
      CFAttributedStringSetAttribute(text, v49, @"PptParagraphPropertyRunAttribute", v12);

      v8 += v11;
      v9 = (v9 + 1);
    }

    while (paragraphRunCount != v9);
  }

  characterRunCount = [blockCopy characterRunCount];
  if (characterRunCount >= 1)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = [blockCopy characterRunAtIndex:v15];
      v17 = *v16;
      verifyRangeValidity(v14, *v16, Length);
      v18 = [MEMORY[0x277CCAE60] valueWithPointer:v16];
      v50.location = v14;
      v50.length = v17;
      CFAttributedStringSetAttribute(text, v50, @"PptCharacterPropertyRunAttribute", v18);

      v14 += v17;
      v15 = (v15 + 1);
    }

    while (characterRunCount != v15);
  }

  specialInfoRunCount = [blockCopy specialInfoRunCount];
  if (specialInfoRunCount >= 1)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = [blockCopy specialInfoRunAtIndex:v21];
      v23 = *v22;
      verifyRangeValidity(v20, *v22, Length);
      v24 = [MEMORY[0x277CCAE60] valueWithPointer:v22];
      v51.location = v20;
      v51.length = v23;
      CFAttributedStringSetAttribute(text, v51, @"PptSpecialInfoRunAttribute", v24);

      v20 += v23;
      v21 = (v21 + 1);
    }

    while (specialInfoRunCount != v21);
  }

  hyperlinks = [blockCopy hyperlinks];
  v46 = hyperlinks;
  v26 = [hyperlinks count];
  if (v26)
  {
    v27 = 0;
    v45 = @"PptClickHyperlinkRunAttribute";
    do
    {
      v28 = [hyperlinks objectAtIndex:{v27, v45}];
      txtInteractiveInfoAtom = [v28 txtInteractiveInfoAtom];
      v30 = txtInteractiveInfoAtom[12];
      if (txtInteractiveInfoAtom[13] >= Length)
      {
        v31 = Length;
      }

      else
      {
        v31 = txtInteractiveInfoAtom[13];
      }

      if ((v30 & 0x80000000) == 0 && v31 > v30)
      {
        v32 = v7;
        Instance = EshRecord::getInstance(txtInteractiveInfoAtom);
        v34 = @"PptHoverHyperlinkRunAttribute";
        if (Instance != 1)
        {
          v34 = v45;
        }

        v35 = v34;
        v36 = v31 - v30;
        verifyRangeValidity(v30, v31 - v30, Length);
        v37 = [*(v32 + 3680) valueWithPointer:v28];
        v52.length = v36;
        v52.location = v30;
        CFAttributedStringSetAttribute(text, v52, v35, v37);

        v7 = v32;
        hyperlinks = v46;
      }

      ++v27;
    }

    while (v26 != v27);
  }

  metaCharacterFields = [blockCopy metaCharacterFields];
  v39 = [metaCharacterFields count];
  if (v39)
  {
    v40 = 0;
    while (1)
    {
      v41 = [metaCharacterFields objectAtIndex:v40];
      position = [v41 position];
      v43 = position;
      if (position > Length)
      {
        break;
      }

      verifyRangeValidity(position, 1, Length);
      v44 = [*(v7 + 3680) valueWithPointer:v41];
      v53.location = v43;
      v53.length = 1;
      CFAttributedStringSetAttribute(text, v53, @"PptMetaCharacterRunAttribute", v44);

      if (v39 == ++v40)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_27:
}

+ (void)readFromStyledText:(__CFAttributedString *)text toStyledPargraphs:(__CFArray *)pargraphs
{
  v15 = CFAttributedStringGetString(text);
  v6 = [v15 componentsSeparatedByString:@"\r"];
  v7 = [v6 count];
  v8 = v7 - 1;
  if (v7 != 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = *MEMORY[0x277CBECE8];
    do
    {
      v12 = [v6 objectAtIndex:v10];
      v13 = [v12 length] + 1;
      v17.location = v9;
      v17.length = v13;
      v14 = CFAttributedStringCreateWithSubstring(v11, text, v17);
      CFArrayAppendValue(pargraphs, v14);
      CFRelease(v14);
      v9 += v13;

      ++v10;
    }

    while (v8 != v10);
  }
}

+ (void)readParagraph:(id)paragraph paragraph:(__CFAttributedString *)a4 textType:(int)type state:(id)state
{
  v7 = *&type;
  paragraphCopy = paragraph;
  stateCopy = state;
  if ([stateCopy hasCurrentSourceMasterStyleInfoVector])
  {
    v9 = [stateCopy currentSourceMasterStyleInfoOfType:v7];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277CBECE8];
  Copy = CFAttributedStringCreateCopy(*MEMORY[0x277CBECE8], a4);
  effectiveRange.location = 0;
  effectiveRange.length = 0;
  String = CFAttributedStringGetString(Copy);
  Length = CFStringGetLength(String);
  currentBulletStyle = [stateCopy currentBulletStyle];
  eshObject = [currentBulletStyle eshObject];
  if (eshObject)
  {
  }

  else
  {
    v15 = 0;
  }

  v45 = CFAttributedStringGetAttributes(Copy, 0, &effectiveRange);
  v46 = [v45 objectForKey:@"PptParagraphPropertyRunAttribute"];
  aStr = a4;
  v44 = currentBulletStyle;
  if (v46)
  {
    properties = [paragraphCopy properties];
    pointerValue = [v46 pointerValue];
    v18 = pointerValue;
    if (v9 && pointerValue)
    {
      if (*v9)
      {
        v19 = *(pointerValue + 4);
        LevelReference = PptTextMasterStyleAtom::getLevelReference(*v9, v19);
        PptParaProperty::copyValuesOfNonOverriddenPropertiesFromParent((v18 + 8), LevelReference);
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    v21 = *(v9 + 8);
    if (v21)
    {
      v22 = PptTextMasterStyleAtom::getLevelReference(v21, v19);
      if (!v15)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }

LABEL_19:
    v22 = 0;
    if (!v15)
    {
LABEL_26:
      if (v15)
      {
        v27 = v15;
      }

      else
      {
        v27 = v22;
      }

      [PBParagraphProperties readParagraphProperties:properties paragraphPropertyRun:v18 bulletStyle:v27 state:stateCopy];

      goto LABEL_30;
    }

LABEL_20:
    v23 = [v45 objectForKey:{@"PptCharacterPropertyRunAttribute", properties, aStr, currentBulletStyle}];
    pointerValue2 = [v23 pointerValue];

    if (pointerValue2)
    {
      v25 = (*(pointerValue2 + 8) >> 10) & 0xF;
      v26 = *&v15[4].var0;
      properties = v41;
      if (v25 >= ((*&v15[4].var3 - v26) >> 3))
      {
        v15 = 0;
      }

      else
      {
        v15 = *(v26 + 8 * v25);
        if (v22)
        {
          PptParaProperty9::copyOverridesFromParent(*(v26 + 8 * v25), v22);
        }
      }
    }

    else
    {
      v15 = 0;
      properties = v41;
    }

    goto LABEL_26;
  }

  v19 = 0;
LABEL_30:
  if (v9 && *v9)
  {
    v28 = PptTextMasterStyleAtom::getLevelReference(*v9, v19);
    properties2 = [paragraphCopy properties];
    v30 = (v28 + 48);
    [PBCharacterProperties readCharacterProperties:properties2 characterProperty:v30 state:stateCopy];
  }

  else
  {
    v30 = 0;
  }

  v42 = CFAttributedStringGetAttribute(Copy, Length - 1, @"PptCharacterPropertyRunAttribute", 0);
  pointerValue3 = [v42 pointerValue];
  v32 = pointerValue3;
  if (pointerValue3)
  {
    if (v30)
    {
      PptCharProperty::copyValuesOfNonOverriddenPropertiesFromParent((pointerValue3 + 4), v30);
    }

    paragraphEndCharacterProperties = [paragraphCopy paragraphEndCharacterProperties];
    [PBCharacterProperties readCharacterProperties:paragraphEndCharacterProperties characterProperty:v32 + 4 state:stateCopy];
  }

  CFRelease(Copy);
  v52.location = 0;
  v52.length = Length - 1;
  v34 = CFAttributedStringCreateWithSubstring(v10, aStr, v52);
  if (Length >= 2)
  {
    v35 = 0;
    do
    {
      longestEffectiveRange.location = 0;
      longestEffectiveRange.length = 0;
      v53.location = 0;
      v53.length = Length - 1;
      v36 = CFAttributedStringGetAttributesAndLongestEffectiveRange(v34, v35, v53, &longestEffectiveRange);
      v37 = [v36 objectForKey:@"PptCharacterPropertyRunAttribute"];
      pointerValue4 = [v37 pointerValue];

      if (v30 && pointerValue4)
      {
        PptCharProperty::copyValuesOfNonOverriddenPropertiesFromParent((pointerValue4 + 4), v30);
      }

      v39 = CFAttributedStringCreateWithSubstring(v10, v34, longestEffectiveRange);
      [PBTextRun readTextRun:paragraphCopy plainText:CFAttributedStringGetString(v39) characterAttributes:v36 state:stateCopy];
      v40 = longestEffectiveRange.length;
      CFRelease(v39);
      v35 += v40;
    }

    while (v35 < Length - 1);
  }

  [stateCopy setHasCharacterPropertyBulletIndex:0];
  CFRelease(v34);
}

+ (void)applyTextRuler:(void *)ruler toTextBlock:(id)block
{
  blockCopy = block;
  for (i = 0; i < [blockCopy paragraphRunCount]; i = (i + 1))
  {
    v6 = [blockCopy paragraphRunAtIndex:i];
    v7 = *(ruler + 38);
    if (v7 != 0xFFFF)
    {
      v6[21] = v7;
      v6[4] |= 0x4000u;
    }

    if (*(ruler + 6) && (v6[4] & 0x80000000) == 0)
    {
      operator new();
    }

    v8 = v6[2];
    if (v8 <= 4)
    {
      v9 = *(ruler + v8 + 28);
      if (v9 != 0xFFFF)
      {
        v6[19] = v9;
        v6[4] |= 0x100u;
      }

      v10 = *(ruler + v8 + 33);
      if (v10 != 0xFFFF)
      {
        v6[20] = v10;
        v6[4] |= 0x200u;
      }
    }
  }
}

@end