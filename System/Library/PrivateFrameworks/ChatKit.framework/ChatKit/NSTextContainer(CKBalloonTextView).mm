@interface NSTextContainer(CKBalloonTextView)
- (CGFloat)sizeThatFits:()CKBalloonTextView textAlignmentInsets:isSingleLine:;
@end

@implementation NSTextContainer(CKBalloonTextView)

- (CGFloat)sizeThatFits:()CKBalloonTextView textAlignmentInsets:isSingleLine:
{
  v83 = *MEMORY[0x1E69E9840];
  layoutManager = [self layoutManager];
  textStorage = [layoutManager textStorage];
  [layoutManager ensureLayoutForTextContainer:self];
  [layoutManager glyphRangeForTextContainer:self];
  [layoutManager usedRectForTextContainer:self];
  size.width = v9;
  v11 = v10;
  if (![textStorage length] || !(a3 | a4))
  {
    goto LABEL_42;
  }

  v72[0] = 0;
  v72[1] = 0;
  [layoutManager lineFragmentUsedRectForGlyphAtIndex:0 effectiveRange:v72];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  mEMORY[0x1E69DB870] = [MEMORY[0x1E69DB870] sharedSystemTypesetter];
  [mEMORY[0x1E69DB870] baselineOffsetInLayoutManager:layoutManager glyphIndex:0];
  v22 = v21;

  v23 = [textStorage attribute:*MEMORY[0x1E69DB680] atIndex:0 effectiveRange:0];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = [textStorage attribute:*MEMORY[0x1E69DB648] atIndex:0 effectiveRange:0];
  }

  v26 = v25;

  v85.origin.x = v13;
  v85.origin.y = v15;
  v85.size.width = v17;
  v85.size.height = v19;
  MaxY = CGRectGetMaxY(v85);
  [v26 capHeight];
  v29 = MaxY - v22 - v28;
  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v86.origin.x = v13;
      v86.origin.y = v15;
      v86.size.width = v17;
      v86.size.height = v19;
      v31 = NSStringFromCGRect(v86);
      v87.origin.x = v13;
      v87.origin.y = v15;
      v87.size.width = v17;
      v87.size.height = v19;
      v32 = CGRectGetMaxY(v87);
      [v26 capHeight];
      *buf = 134219010;
      v74 = v29;
      v75 = 2112;
      v76 = v31;
      v77 = 2048;
      v78 = v32;
      v79 = 2048;
      v80 = v22;
      v81 = 2048;
      v82 = v33;
      _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "capOffsetFromBoundsTop (%f) = (CGRectGetMaxY(firstLine (%@)) (%f) - firstLineBaselineOffset (%f) - [font capHeight] (%f))", buf, 0x34u);
    }
  }

  numberOfGlyphs = [layoutManager numberOfGlyphs];
  if (numberOfGlyphs)
  {
    size.height = 0.0;
    v71 = 0;
    maximumNumberOfLines = [self maximumNumberOfLines];
    if (maximumNumberOfLines)
    {
      v36 = 0;
      v37 = *MEMORY[0x1E695F058];
      v38 = *(MEMORY[0x1E695F058] + 8);
      v39 = *(MEMORY[0x1E695F058] + 16);
      v40 = *(MEMORY[0x1E695F058] + 24);
      v41 = *MEMORY[0x1E695F060];
      v42 = *(MEMORY[0x1E695F060] + 8);
      v43 = 1;
      do
      {
        [layoutManager lineFragmentUsedRectForGlyphAtIndex:v36 effectiveRange:&size.height];
        if (v46 != v41 || v47 != v42)
        {
          v40 = v47;
          v39 = v46;
          v38 = v45;
          v37 = v44;
        }

        height = size.height;
        v36 = v71 + *&size.height;
      }

      while (v71 + *&size.height < numberOfGlyphs && v43++ < maximumNumberOfLines);
    }

    else
    {
      *&height = numberOfGlyphs - 1;
      [layoutManager lineFragmentUsedRectForGlyphAtIndex:numberOfGlyphs - 1 effectiveRange:&size.height];
      v37 = v52;
      v38 = v53;
      v39 = v54;
      v40 = v55;
    }

    mEMORY[0x1E69DB870]2 = [MEMORY[0x1E69DB870] sharedSystemTypesetter];
    [mEMORY[0x1E69DB870]2 baselineOffsetInLayoutManager:layoutManager glyphIndex:*&height];
    v58 = v57;

    v88.origin.x = v37;
    v88.origin.y = v38;
    v88.size.width = v39;
    v88.size.height = v40;
    v51 = CGRectGetMaxY(v88) - v58;
    if (IMOSLoggingEnabled())
    {
      v59 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        v89.origin.x = v37;
        v89.origin.y = v38;
        v89.size.width = v39;
        v89.size.height = v40;
        v60 = NSStringFromCGRect(v89);
        v90.origin.x = v37;
        v90.origin.y = v38;
        v90.size.width = v39;
        v90.size.height = v40;
        v61 = CGRectGetMaxY(v90);
        *buf = 134218754;
        v74 = v51;
        v75 = 2112;
        v76 = v60;
        v77 = 2048;
        v78 = v61;
        v79 = 2048;
        v80 = v58;
        _os_log_impl(&dword_19020E000, v59, OS_LOG_TYPE_INFO, "lastLineBaselineOffsetFromBoundsTop (%f) = (CGRectGetMaxY(lastLine (%@)) (%f) - lastLineBaselineOffset (%f))", buf, 0x2Au);
      }
    }

    LOBYTE(numberOfGlyphs) = v71 == numberOfGlyphs;
    if (!a3)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v51 = 0.0;
  if (a3)
  {
LABEL_32:
    [self lineFragmentPadding];
    *a3 = v29;
    *(a3 + 8) = v62;
    *(a3 + 16) = v11 - v51;
    *(a3 + 24) = v62;
    if (IMOSLoggingEnabled())
    {
      v63 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        v64 = NSStringFromUIEdgeInsets(*a3);
        *buf = 138412290;
        v74 = *&v64;
        _os_log_impl(&dword_19020E000, v63, OS_LOG_TYPE_INFO, "-> textAlignmentInsets: %@", buf, 0xCu);
      }
    }
  }

LABEL_36:
  if (a4)
  {
    *a4 = numberOfGlyphs;
    if (IMOSLoggingEnabled())
    {
      v65 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        v66 = *a4;
        *buf = 67109120;
        LODWORD(v74) = v66;
        _os_log_impl(&dword_19020E000, v65, OS_LOG_TYPE_INFO, "-> isSingleLine: %d", buf, 8u);
      }
    }
  }

LABEL_42:
  if (IMOSLoggingEnabled())
  {
    v67 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v84.width = size.width;
      v84.height = v11;
      v68 = NSStringFromCGSize(v84);
      *buf = 138412290;
      v74 = *&v68;
      _os_log_impl(&dword_19020E000, v67, OS_LOG_TYPE_INFO, "-> sizeThatFits %@", buf, 0xCu);
    }
  }

  return size.width;
}

@end