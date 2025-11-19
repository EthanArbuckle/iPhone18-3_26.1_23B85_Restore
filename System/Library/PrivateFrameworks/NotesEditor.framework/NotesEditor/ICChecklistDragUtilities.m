@interface ICChecklistDragUtilities
+ (BOOL)shouldDropAboveForTrackedTodoParagraph:(id)a3 forPoint:(CGPoint)a4 textView:(id)a5;
+ (CGRect)insertionRectForTrackedTodoParagraph:(id)a3 drawAbove:(BOOL)a4 inTextView:(id)a5;
+ (unint64_t)tabIndentationEqualivantForString:(id)a3;
@end

@implementation ICChecklistDragUtilities

+ (BOOL)shouldDropAboveForTrackedTodoParagraph:(id)a3 forPoint:(CGPoint)a4 textView:(id)a5
{
  y = a4.y;
  v7 = a5;
  v8 = a3;
  v9 = [v8 characterRange];
  v11 = v10;
  v12 = [v8 characterRange];
  v14 = v13;

  v15 = v9 + v11;
  v16 = [v7 textStorage];
  v17 = [v16 length];

  v18 = v14 - (v15 >= v17);
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    [v7 ic_rectForRange:{v12, v18}];
  }

  else
  {
    v19 = [v7 icLayoutManager];
    v20 = [v19 glyphRangeForCharacterRange:v12 actualCharacterRange:{v18, 0}];
    v22 = v21;
    v23 = [v7 textContainer];
    [v19 boundingRectForGlyphRange:v20 inTextContainer:{v22, v23}];
  }

  [v7 textContainerInset];
  TSDCenterOfRect();
  v25 = y <= v24;

  return v25;
}

+ (CGRect)insertionRectForTrackedTodoParagraph:(id)a3 drawAbove:(BOOL)a4 inTextView:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v10 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v11 = *(MEMORY[0x277CBF3A0] + 16);
  v12 = *(MEMORY[0x277CBF3A0] + 24);
  if ([v8 isDraggingChecklistItem] && objc_msgSend(v8, "isDraggingOverChecklistItem"))
  {
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      objc_opt_class();
      v13 = [v8 textLayoutManager];
      v14 = ICCheckedDynamicCast();

      v15 = [v14 todoButtonForTrackedParagraph:v7];
      [v15 imageFrame];
      [v8 convertRect:v15 fromView:?];
      v17 = v16;
      v65 = v18;
      v66 = v19;
      v67 = v20;
      v21 = [v7 characterRange];
      v23 = v21;
      v24 = v22;
      if (v6)
      {
        v25 = -1;
      }

      else
      {
        v25 = v22;
      }

      v26 = [v14 trackedTodoParagraphAtIndex:v21 + v25];
      v27 = [v14 todoButtonForTrackedParagraph:v26];
      [v27 imageFrame];
      [v8 convertRect:v27 fromView:?];
    }

    else
    {
      v14 = [v8 icLayoutManager];
      v15 = [v14 todoButtonForTrackedParagraphIfExists:v7];
      [v15 imageFrame];
      v17 = v32;
      v65 = v33;
      v66 = v34;
      v67 = v35;
      v36 = [v7 characterRange];
      v23 = v36;
      v24 = v37;
      if (v6)
      {
        v38 = -1;
      }

      else
      {
        v38 = v37;
      }

      v26 = [v14 trackedTodoParagraphAtIndexIfExists:v36 + v38];
      v27 = [v14 todoButtonForTrackedParagraphIfExists:v26];
      [v27 imageFrame];
    }

    v39 = v28;
    v40 = v29;
    v41 = v30;
    v42 = v31;
    v43 = [v14 lineCountForCharacterRange:{v23, v24}];
    if (v26)
    {
      v44 = [v26 characterRange];
      v46 = ([v14 lineCountForCharacterRange:{v44, v45}] - 3) < 0xFFFFFFFFFFFFFFFELL;
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
        if (v6)
        {
          v54 = v39;
        }

        else
        {
          v54 = v17;
        }

        if (v6)
        {
          v55 = v40;
        }

        else
        {
          v55 = v65;
        }

        v11 = v67;
        if (v6)
        {
          v56 = v41;
        }

        else
        {
          v56 = v67;
        }

        if (v6)
        {
          v57 = v42;
        }

        else
        {
          v57 = v66;
        }

        if (v6)
        {
          v58 = v17;
        }

        else
        {
          v58 = v39;
        }

        if (v6)
        {
          v59 = v65;
        }

        else
        {
          v59 = v40;
        }

        if (v6)
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

      if (v6)
      {
        v48 = v17;
      }

      else
      {
        v48 = v39;
      }

      v49 = v65;
      v50 = v66;
      if (!v6)
      {
        v49 = v40;
      }

      v11 = v67;
      if (v6)
      {
        v51 = v67;
      }

      else
      {
        v51 = v41;
      }

      if (!v6)
      {
        v50 = v42;
      }
    }

    else
    {
      if ((v47 || v46) && !v6 || !v6)
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

+ (unint64_t)tabIndentationEqualivantForString:(id)a3
{
  v3 = a3;
  v4 = [v3 ic_trimmedString];
  v5 = [v4 length];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    if ([v3 ic_isLastCharacterANewline])
    {
      v7 = [v3 ic_substringWithRange:{0, objc_msgSend(v3, "length") - 1}];

      v3 = v7;
    }

    v8 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"\t"];
    v6 = [v3 ic_countOfCharactersInSet:v8];
  }

  return v6;
}

@end