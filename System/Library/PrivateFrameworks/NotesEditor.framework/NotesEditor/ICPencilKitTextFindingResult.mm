@interface ICPencilKitTextFindingResult
- (CGSize)drawingSize;
- (id)framesForHighlightInTextView:(id)a3;
- (int64_t)compare:(id)a3;
- (void)selectInTextView:(id)a3;
@end

@implementation ICPencilKitTextFindingResult

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ICPencilKitTextFindingResult;
  v5 = [(ICTextFindingResult *)&v10 compare:v4];
  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = [(ICPencilKitTextFindingResult *)self order];
      v8 = [v6 order];

      if (v7 < v8)
      {
        v5 = -1;
      }

      else
      {
        v5 = v7 != v8;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)framesForHighlightInTextView:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 textStorage];
  v6 = [v5 attribute:*MEMORY[0x277D74060] atIndex:-[ICTextFindingResult range](self effectiveRange:{"range"), 0}];

  if (v6)
  {
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v7 = [v4 _pk_viewProviderForAttachment:v6 atCharacterIndex:-[ICTextFindingResult range](self createIfNeeded:{"range"), 0}];
    }

    else
    {
      v10 = [v4 layoutManager];
      v7 = [v10 viewProviderForTextAttachment:v6 characterIndex:{-[ICTextFindingResult range](self, "range")}];
    }

    v8 = [v7 view];
    v11 = [v8 window];

    if (v11)
    {
      [v8 bounds];
      v13 = v12;
      v15 = v14;
      Width = v16;
      v19 = v18;
    }

    else
    {
      v20 = [(ICTextFindingResult *)self range];
      [v4 ic_rectForRange:{v20, v21}];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      [v4 ic_textContainerOrigin];
      v31 = v30;
      v33 = v32;
      v77.origin.x = v23;
      v77.origin.y = v25;
      v77.size.width = v27;
      v77.size.height = v29;
      v78 = CGRectOffset(v77, v31, v33);
      height = v78.size.height;
      v13 = floor(v78.origin.x);
      v15 = floor(v78.origin.y);
      [v4 bounds];
      Width = CGRectGetWidth(v79);
      v19 = ceil(height);
    }

    v35 = v13;
    v72 = v15;
    [ICPaperKitTextFindingResult scaleForDrawingBounds:v13, v15, Width, v19];
    v37 = v36;
    v38 = [(ICPencilKitTextFindingResult *)self searchQueryItem];
    [v38 bounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    CGAffineTransformMakeScale(&buf, v37, v37);
    v80.origin.x = v40;
    v80.origin.y = v42;
    v80.size.width = v44;
    v80.size.height = v46;
    v81 = CGRectApplyAffineTransform(v80, &buf);
    v82 = CGRectIntegral(v81);
    x = v82.origin.x;
    y = v82.origin.y;
    v49 = v82.size.width;
    v50 = v82.size.height;
    v51 = [v8 window];
    if (v51)
    {
      [v8 convertRect:v4 toView:x, y, v49, v50];
    }

    else
    {
      v83.origin.x = v35;
      v83.origin.y = v72;
      v83.size.width = Width;
      v83.size.height = v19;
      dx = CGRectGetMinX(v83);
      v84.origin.x = v35;
      v84.origin.y = v72;
      v84.size.width = Width;
      v84.size.height = v19;
      MinY = CGRectGetMinY(v84);
      v85.origin.x = x;
      v85.origin.y = y;
      v85.size.width = v49;
      v85.size.height = v50;
      *&v52 = CGRectOffset(v85, dx, MinY);
    }

    v57 = v52;
    v58 = v53;
    v59 = v54;
    v60 = v55;

    v86.origin.x = v57;
    v86.origin.y = v58;
    v86.size.width = v59;
    v86.size.height = v60;
    v87 = CGRectInset(v86, -8.0, -8.0);
    v61 = v87.origin.x;
    v62 = v87.origin.y;
    v63 = v87.size.width;
    v64 = v87.size.height;
    v65 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      v68 = [(ICPencilKitTextFindingResult *)self searchQueryItem];
      [v68 bounds];
      v69 = NSStringFromRect(v88);
      v89.origin.x = v61;
      v89.origin.y = v62;
      v89.size.width = v63;
      v89.size.height = v64;
      v70 = NSStringFromRect(v89);
      LODWORD(buf.a) = 138412546;
      *(&buf.a + 4) = v69;
      WORD2(buf.b) = 2112;
      *(&buf.b + 6) = v70;
      _os_log_debug_impl(&dword_2151A1000, v65, OS_LOG_TYPE_DEBUG, "Converted frame for PencilKit find result from %@ to %@", &buf, 0x16u);
    }

    v66 = [MEMORY[0x277CCAE60] ic_valueWithRect:{v61, v62, v63, v64}];
    v73 = v66;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.a) = 134217984;
      *(&buf.a + 4) = [(ICTextFindingResult *)self range];
      _os_log_impl(&dword_2151A1000, v8, OS_LOG_TYPE_DEFAULT, "Couldn't find text attachment for PencilKit text finding result at %ld", &buf, 0xCu);
    }

    v9 = MEMORY[0x277CBEBF8];
    v7 = v8;
  }

  return v9;
}

- (void)selectInTextView:(id)a3
{
  v4 = a3;
  [v4 setSelectedRange:{-[ICTextFindingResult range](self, "range"), 0}];
}

- (CGSize)drawingSize
{
  width = self->_drawingSize.width;
  height = self->_drawingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end