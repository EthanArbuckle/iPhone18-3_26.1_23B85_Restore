@interface ICChecklistDragUtilities
+ (BOOL)shouldDropAboveForTrackedTodoParagraph:(id)paragraph forPoint:(CGPoint)point textView:(id)view;
+ (CGRect)insertionRectForTrackedTodoParagraph:(id)paragraph drawAbove:(BOOL)above inTextView:(id)view;
+ (unint64_t)tabIndentationEqualivantForString:(id)string;
@end

@implementation ICChecklistDragUtilities

+ (BOOL)shouldDropAboveForTrackedTodoParagraph:(id)paragraph forPoint:(CGPoint)point textView:(id)view
{
  y = point.y;
  viewCopy = view;
  paragraphCopy = paragraph;
  characterRange = [paragraphCopy characterRange];
  v11 = v10;
  characterRange2 = [paragraphCopy characterRange];
  v14 = v13;

  v15 = characterRange + v11;
  textStorage = [viewCopy textStorage];
  v17 = [textStorage length];

  v18 = v14 - (v15 >= v17);
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    [viewCopy ic_rectForRange:{characterRange2, v18}];
  }

  else
  {
    icLayoutManager = [viewCopy icLayoutManager];
    v20 = [icLayoutManager glyphRangeForCharacterRange:characterRange2 actualCharacterRange:{v18, 0}];
    v22 = v21;
    textContainer = [viewCopy textContainer];
    [icLayoutManager boundingRectForGlyphRange:v20 inTextContainer:{v22, textContainer}];
  }

  [viewCopy textContainerInset];
  TSDCenterOfRect();
  v25 = y <= v24;

  return v25;
}

+ (CGRect)insertionRectForTrackedTodoParagraph:(id)paragraph drawAbove:(BOOL)above inTextView:(id)view
{
  aboveCopy = above;
  paragraphCopy = paragraph;
  viewCopy = view;
  v10 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v11 = *(MEMORY[0x277CBF3A0] + 16);
  v12 = *(MEMORY[0x277CBF3A0] + 24);
  if ([viewCopy isDraggingChecklistItem] && objc_msgSend(viewCopy, "isDraggingOverChecklistItem"))
  {
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      objc_opt_class();
      textLayoutManager = [viewCopy textLayoutManager];
      icLayoutManager = ICCheckedDynamicCast();

      v15 = [icLayoutManager todoButtonForTrackedParagraph:paragraphCopy];
      [v15 imageFrame];
      [viewCopy convertRect:v15 fromView:?];
      v17 = v16;
      v65 = v18;
      v66 = v19;
      v67 = v20;
      characterRange = [paragraphCopy characterRange];
      v23 = characterRange;
      v24 = v22;
      if (aboveCopy)
      {
        v25 = -1;
      }

      else
      {
        v25 = v22;
      }

      v26 = [icLayoutManager trackedTodoParagraphAtIndex:characterRange + v25];
      v27 = [icLayoutManager todoButtonForTrackedParagraph:v26];
      [v27 imageFrame];
      [viewCopy convertRect:v27 fromView:?];
    }

    else
    {
      icLayoutManager = [viewCopy icLayoutManager];
      v15 = [icLayoutManager todoButtonForTrackedParagraphIfExists:paragraphCopy];
      [v15 imageFrame];
      v17 = v32;
      v65 = v33;
      v66 = v34;
      v67 = v35;
      characterRange2 = [paragraphCopy characterRange];
      v23 = characterRange2;
      v24 = v37;
      if (aboveCopy)
      {
        v38 = -1;
      }

      else
      {
        v38 = v37;
      }

      v26 = [icLayoutManager trackedTodoParagraphAtIndexIfExists:characterRange2 + v38];
      v27 = [icLayoutManager todoButtonForTrackedParagraphIfExists:v26];
      [v27 imageFrame];
    }

    v39 = v28;
    v40 = v29;
    v41 = v30;
    v42 = v31;
    v43 = [icLayoutManager lineCountForCharacterRange:{v23, v24}];
    if (v26)
    {
      characterRange3 = [v26 characterRange];
      v46 = ([icLayoutManager lineCountForCharacterRange:{characterRange3, v45}] - 3) < 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      v46 = 0;
    }

    v47 = (v43 - 3) < 0xFFFFFFFFFFFFFFFELL;

    if (!v15)
    {
      goto LABEL_56;
    }

    if (v27)
    {
      if (!v47 && !v46)
      {
        if (aboveCopy)
        {
          v54 = v39;
        }

        else
        {
          v54 = v17;
        }

        if (aboveCopy)
        {
          v55 = v40;
        }

        else
        {
          v55 = v65;
        }

        v11 = v67;
        if (aboveCopy)
        {
          v56 = v41;
        }

        else
        {
          v56 = v67;
        }

        if (aboveCopy)
        {
          v57 = v42;
        }

        else
        {
          v57 = v66;
        }

        if (aboveCopy)
        {
          v58 = v17;
        }

        else
        {
          v58 = v39;
        }

        if (aboveCopy)
        {
          v59 = v65;
        }

        else
        {
          v59 = v40;
        }

        if (aboveCopy)
        {
          v41 = v67;
          v42 = v66;
        }

        MaxY = CGRectGetMaxY(*&v54);
        v68.origin.x = v58;
        v68.origin.y = v59;
        v68.size.width = v41;
        v68.size.height = v42;
        MinY = MaxY + (CGRectGetMinY(v68) - MaxY) * 0.5;
        v53 = -1.0;
        goto LABEL_55;
      }

      if (aboveCopy)
      {
        v48 = v17;
      }

      else
      {
        v48 = v39;
      }

      v49 = v65;
      v50 = v66;
      if (!aboveCopy)
      {
        v49 = v40;
      }

      v11 = v67;
      if (aboveCopy)
      {
        v51 = v67;
      }

      else
      {
        v51 = v41;
      }

      if (!aboveCopy)
      {
        v50 = v42;
      }
    }

    else
    {
      if ((v47 || v46) && !aboveCopy || !aboveCopy)
      {
        v69.origin.x = v17;
        v69.origin.y = v65;
        v69.size.height = v66;
        v11 = v67;
        v69.size.width = v67;
        MinY = CGRectGetMaxY(v69);
        v53 = 3.0;
        goto LABEL_55;
      }

      v48 = v17;
      v49 = v65;
      v50 = v66;
      v11 = v67;
      v51 = v67;
    }

    MinY = CGRectGetMinY(*&v48);
    v53 = -3.0;
LABEL_55:
    v9 = MinY + v53;
    v10 = v17;
LABEL_56:

    v12 = 2.0;
  }

  v61 = v10;
  v62 = v9;
  v63 = v11;
  v64 = v12;
  result.size.height = v64;
  result.size.width = v63;
  result.origin.y = v62;
  result.origin.x = v61;
  return result;
}

+ (unint64_t)tabIndentationEqualivantForString:(id)string
{
  stringCopy = string;
  ic_trimmedString = [stringCopy ic_trimmedString];
  v5 = [ic_trimmedString length];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    if ([stringCopy ic_isLastCharacterANewline])
    {
      v7 = [stringCopy ic_substringWithRange:{0, objc_msgSend(stringCopy, "length") - 1}];

      stringCopy = v7;
    }

    v8 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"\t"];
    v6 = [stringCopy ic_countOfCharactersInSet:v8];
  }

  return v6;
}

@end