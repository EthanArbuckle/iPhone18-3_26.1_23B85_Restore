@interface PBTextBlock
+ (void)applyTextRuler:(void *)a3 toTextBlock:(id)a4;
+ (void)readClientTextBox:(id)a3 textBody:(id)a4 state:(id)a5;
+ (void)readFromStyledText:(__CFAttributedString *)a3 toStyledPargraphs:(__CFArray *)a4;
+ (void)readFromTextBlock:(id)a3 toStyledText:(__CFAttributedString *)a4;
+ (void)readParagraph:(id)a3 paragraph:(__CFAttributedString *)a4 textType:(int)a5 state:(id)a6;
@end

@implementation PBTextBlock

+ (void)readClientTextBox:(id)a3 textBody:(id)a4 state:(id)a5
{
  v22 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(PptTextBlock);
  [(PptTextBlock *)v10 readTextBlock:v22];
  v11 = [(PptTextBlock *)v10 textRuler];
  if (v11)
  {
    [a1 applyTextRuler:v11 toTextBlock:v10];
  }

  v12 = [(PptTextBlock *)v10 textType];
  v13 = [(PptTextBlock *)v10 text];
  v14 = [v13 stringByAppendingString:@"\r"];

  v15 = [MEMORY[0x277CBEAC0] dictionary];
  v16 = *MEMORY[0x277CBECE8];
  v17 = CFAttributedStringCreate(*MEMORY[0x277CBECE8], v14, v15);

  MutableCopy = CFAttributedStringCreateMutableCopy(v16, 0, v17);
  CFRelease(v17);
  CFAttributedStringBeginEditing(MutableCopy);
  [a1 readFromTextBlock:v10 toStyledText:MutableCopy];
  CFAttributedStringEndEditing(MutableCopy);
  Mutable = CFArrayCreateMutable(v16, 0, MEMORY[0x277CBF128]);
  [a1 readFromStyledText:MutableCopy toStyledPargraphs:Mutable];
  for (i = 0; i < CFArrayGetCount(Mutable); ++i)
  {
    v21 = [v8 addParagraph];
    [a1 readParagraph:v21 paragraph:CFArrayGetValueAtIndex(Mutable textType:i) state:{v12, v9}];
  }

  CFRelease(Mutable);
  CFRelease(MutableCopy);
}

+ (void)readFromTextBlock:(id)a3 toStyledText:(__CFAttributedString *)a4
{
  v47 = a3;
  Length = CFAttributedStringGetLength(a4);
  v6 = [v47 paragraphRunCount];
  v7 = 0x277CCA000uLL;
  if (v6 >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = [v47 paragraphRunAtIndex:v9];
      v11 = *v10;
      verifyRangeValidity(v8, *v10, Length);
      v12 = [MEMORY[0x277CCAE60] valueWithPointer:v10];
      v49.location = v8;
      v49.length = v11;
      CFAttributedStringSetAttribute(a4, v49, @"PptParagraphPropertyRunAttribute", v12);

      v8 += v11;
      v9 = (v9 + 1);
    }

    while (v6 != v9);
  }

  v13 = [v47 characterRunCount];
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = [v47 characterRunAtIndex:v15];
      v17 = *v16;
      verifyRangeValidity(v14, *v16, Length);
      v18 = [MEMORY[0x277CCAE60] valueWithPointer:v16];
      v50.location = v14;
      v50.length = v17;
      CFAttributedStringSetAttribute(a4, v50, @"PptCharacterPropertyRunAttribute", v18);

      v14 += v17;
      v15 = (v15 + 1);
    }

    while (v13 != v15);
  }

  v19 = [v47 specialInfoRunCount];
  if (v19 >= 1)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = [v47 specialInfoRunAtIndex:v21];
      v23 = *v22;
      verifyRangeValidity(v20, *v22, Length);
      v24 = [MEMORY[0x277CCAE60] valueWithPointer:v22];
      v51.location = v20;
      v51.length = v23;
      CFAttributedStringSetAttribute(a4, v51, @"PptSpecialInfoRunAttribute", v24);

      v20 += v23;
      v21 = (v21 + 1);
    }

    while (v19 != v21);
  }

  v25 = [v47 hyperlinks];
  v46 = v25;
  v26 = [v25 count];
  if (v26)
  {
    v27 = 0;
    v45 = @"PptClickHyperlinkRunAttribute";
    do
    {
      v28 = [v25 objectAtIndex:{v27, v45}];
      v29 = [v28 txtInteractiveInfoAtom];
      v30 = v29[12];
      if (v29[13] >= Length)
      {
        v31 = Length;
      }

      else
      {
        v31 = v29[13];
      }

      if ((v30 & 0x80000000) == 0 && v31 > v30)
      {
        v32 = v7;
        Instance = EshRecord::getInstance(v29);
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
        CFAttributedStringSetAttribute(a4, v52, v35, v37);

        v7 = v32;
        v25 = v46;
      }

      ++v27;
    }

    while (v26 != v27);
  }

  v38 = [v47 metaCharacterFields];
  v39 = [v38 count];
  if (v39)
  {
    v40 = 0;
    while (1)
    {
      v41 = [v38 objectAtIndex:v40];
      v42 = [v41 position];
      v43 = v42;
      if (v42 > Length)
      {
        break;
      }

      verifyRangeValidity(v42, 1, Length);
      v44 = [*(v7 + 3680) valueWithPointer:v41];
      v53.location = v43;
      v53.length = 1;
      CFAttributedStringSetAttribute(a4, v53, @"PptMetaCharacterRunAttribute", v44);

      if (v39 == ++v40)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_27:
}

+ (void)readFromStyledText:(__CFAttributedString *)a3 toStyledPargraphs:(__CFArray *)a4
{
  v15 = CFAttributedStringGetString(a3);
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
      v14 = CFAttributedStringCreateWithSubstring(v11, a3, v17);
      CFArrayAppendValue(a4, v14);
      CFRelease(v14);
      v9 += v13;

      ++v10;
    }

    while (v8 != v10);
  }
}

+ (void)readParagraph:(id)a3 paragraph:(__CFAttributedString *)a4 textType:(int)a5 state:(id)a6
{
  v7 = *&a5;
  v48 = a3;
  v49 = a6;
  if ([v49 hasCurrentSourceMasterStyleInfoVector])
  {
    v9 = [v49 currentSourceMasterStyleInfoOfType:v7];
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
  v13 = [v49 currentBulletStyle];
  v14 = [v13 eshObject];
  if (v14)
  {
  }

  else
  {
    v15 = 0;
  }

  v45 = CFAttributedStringGetAttributes(Copy, 0, &effectiveRange);
  v46 = [v45 objectForKey:@"PptParagraphPropertyRunAttribute"];
  aStr = a4;
  v44 = v13;
  if (v46)
  {
    v16 = [v48 properties];
    v17 = [v46 pointerValue];
    v18 = v17;
    if (v9 && v17)
    {
      if (*v9)
      {
        v19 = *(v17 + 4);
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

      [PBParagraphProperties readParagraphProperties:v16 paragraphPropertyRun:v18 bulletStyle:v27 state:v49];

      goto LABEL_30;
    }

LABEL_20:
    v23 = [v45 objectForKey:{@"PptCharacterPropertyRunAttribute", v16, aStr, v13}];
    v24 = [v23 pointerValue];

    if (v24)
    {
      v25 = (*(v24 + 8) >> 10) & 0xF;
      v26 = *&v15[4].var0;
      v16 = v41;
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
      v16 = v41;
    }

    goto LABEL_26;
  }

  v19 = 0;
LABEL_30:
  if (v9 && *v9)
  {
    v28 = PptTextMasterStyleAtom::getLevelReference(*v9, v19);
    v29 = [v48 properties];
    v30 = (v28 + 48);
    [PBCharacterProperties readCharacterProperties:v29 characterProperty:v30 state:v49];
  }

  else
  {
    v30 = 0;
  }

  v42 = CFAttributedStringGetAttribute(Copy, Length - 1, @"PptCharacterPropertyRunAttribute", 0);
  v31 = [v42 pointerValue];
  v32 = v31;
  if (v31)
  {
    if (v30)
    {
      PptCharProperty::copyValuesOfNonOverriddenPropertiesFromParent((v31 + 4), v30);
    }

    v33 = [v48 paragraphEndCharacterProperties];
    [PBCharacterProperties readCharacterProperties:v33 characterProperty:v32 + 4 state:v49];
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
      v38 = [v37 pointerValue];

      if (v30 && v38)
      {
        PptCharProperty::copyValuesOfNonOverriddenPropertiesFromParent((v38 + 4), v30);
      }

      v39 = CFAttributedStringCreateWithSubstring(v10, v34, longestEffectiveRange);
      [PBTextRun readTextRun:v48 plainText:CFAttributedStringGetString(v39) characterAttributes:v36 state:v49];
      v40 = longestEffectiveRange.length;
      CFRelease(v39);
      v35 += v40;
    }

    while (v35 < Length - 1);
  }

  [v49 setHasCharacterPropertyBulletIndex:0];
  CFRelease(v34);
}

+ (void)applyTextRuler:(void *)a3 toTextBlock:(id)a4
{
  v11 = a4;
  for (i = 0; i < [v11 paragraphRunCount]; i = (i + 1))
  {
    v6 = [v11 paragraphRunAtIndex:i];
    v7 = *(a3 + 38);
    if (v7 != 0xFFFF)
    {
      v6[21] = v7;
      v6[4] |= 0x4000u;
    }

    if (*(a3 + 6) && (v6[4] & 0x80000000) == 0)
    {
      operator new();
    }

    v8 = v6[2];
    if (v8 <= 4)
    {
      v9 = *(a3 + v8 + 28);
      if (v9 != 0xFFFF)
      {
        v6[19] = v9;
        v6[4] |= 0x100u;
      }

      v10 = *(a3 + v8 + 33);
      if (v10 != 0xFFFF)
      {
        v6[20] = v10;
        v6[4] |= 0x200u;
      }
    }
  }
}

@end