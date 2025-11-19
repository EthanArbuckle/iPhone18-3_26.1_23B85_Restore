@interface ICPaperKitTextFindingResult
- (CGRect)frameForHighlightInTextView:(id)a3;
- (CGRect)searchResultRect;
- (id)framesForHighlightInTextView:(id)a3;
- (int64_t)compare:(id)a3;
- (void)generateFindPreviewImageForPaperKitAttachment:(id)a3 completion:(id)a4;
- (void)selectInTextView:(id)a3;
@end

@implementation ICPaperKitTextFindingResult

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ICPaperKitTextFindingResult;
  v5 = [(ICTextFindingResult *)&v10 compare:v4];
  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = [(ICPaperKitTextFindingResult *)self order];
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

- (CGRect)frameForHighlightInTextView:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 textStorage];
  v6 = [v5 attribute:*MEMORY[0x277D74060] atIndex:-[ICTextFindingResult range](self effectiveRange:{"range"), 0}];

  if (v6)
  {
    v7 = [v4 _pk_viewProviderForAttachment:v6 atCharacterIndex:-[ICTextFindingResult range](self createIfNeeded:{"range"), 0}];
    v8 = [v7 view];
    v9 = [v8 window];

    if (v9)
    {
      [v8 bounds];
      v11 = v10;
      v13 = v12;
      Width = v14;
      v17 = v16;
    }

    else
    {
      v22 = [(ICTextFindingResult *)self range];
      [v4 ic_rectForRange:{v22, v23}];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      [v4 ic_textContainerOrigin];
      v33 = v32;
      v35 = v34;
      v70.origin.x = v25;
      v70.origin.y = v27;
      v70.size.width = v29;
      v70.size.height = v31;
      v71 = CGRectOffset(v70, v33, v35);
      height = v71.size.height;
      v11 = floor(v71.origin.x);
      v13 = floor(v71.origin.y);
      [v4 bounds];
      Width = CGRectGetWidth(v72);
      v17 = ceil(height);
    }

    v37 = v11;
    v67 = v13;
    [ICPaperKitTextFindingResult scaleForDrawingBounds:v11, v13, Width, v17];
    v39 = v38;
    [(ICPaperKitTextFindingResult *)self searchResultRect];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    CGAffineTransformMakeScale(&buf, v39, v39);
    v73.origin.x = v41;
    v73.origin.y = v43;
    v73.size.width = v45;
    v73.size.height = v47;
    v74 = CGRectApplyAffineTransform(v73, &buf);
    v75 = CGRectIntegral(v74);
    x = v75.origin.x;
    y = v75.origin.y;
    v50 = v75.size.width;
    v51 = v75.size.height;
    v52 = [v8 window];
    if (v52)
    {
      [v4 convertRect:v8 fromCoordinateSpace:{x, y, v50, v51}];
    }

    else
    {
      v76.origin.x = v37;
      v76.origin.y = v67;
      v76.size.width = Width;
      v76.size.height = v17;
      dx = CGRectGetMinX(v76);
      v77.origin.x = v37;
      v77.origin.y = v67;
      v77.size.width = Width;
      v77.size.height = v17;
      MinY = CGRectGetMinY(v77);
      v78.origin.x = x;
      v78.origin.y = y;
      v78.size.width = v50;
      v78.size.height = v51;
      *&v53 = CGRectOffset(v78, dx, MinY);
    }

    v58 = v53;
    v59 = v54;
    v60 = v55;
    v61 = v56;

    v79.origin.x = v58;
    v79.origin.y = v59;
    v79.size.width = v60;
    v79.size.height = v61;
    v80 = CGRectInset(v79, -8.0, -8.0);
    v18 = v80.origin.x;
    v19 = v80.origin.y;
    v20 = v80.size.width;
    v21 = v80.size.height;
  }

  else
  {
    v18 = *MEMORY[0x277CBF3A0];
    v19 = *(MEMORY[0x277CBF3A0] + 8);
    v20 = *(MEMORY[0x277CBF3A0] + 16);
    v21 = *(MEMORY[0x277CBF3A0] + 24);
    v8 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.a) = 134217984;
      *(&buf.a + 4) = [(ICTextFindingResult *)self range];
      _os_log_impl(&dword_2151A1000, v8, OS_LOG_TYPE_DEFAULT, "Couldn't find text attachment for PaperKit text finding result at %ld", &buf, 0xCu);
    }

    v7 = v8;
  }

  v62 = v18;
  v63 = v19;
  v64 = v20;
  v65 = v21;
  result.size.height = v65;
  result.size.width = v64;
  result.origin.y = v63;
  result.origin.x = v62;
  return result;
}

- (id)framesForHighlightInTextView:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  [(ICPaperKitTextFindingResult *)self frameForHighlightInTextView:a3];
  v3 = [MEMORY[0x277CCAE60] ic_valueWithRect:?];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

- (void)generateFindPreviewImageForPaperKitAttachment:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ICPaperKitTextFindingResult *)self searchResultRect];
  v21 = CGRectInset(v20, -100.0, -100.0);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  v12 = [MEMORY[0x277D368E0] imageGeneratorWithPaperAttachment:v7 useActivePaper:1];

  [v12 setSixChannelBlendingEnabled:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__ICPaperKitTextFindingResult_generateFindPreviewImageForPaperKitAttachment_completion___block_invoke;
  v14[3] = &unk_2781AE3C0;
  v15 = v6;
  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  v13 = v6;
  [v12 imageWithBounds:v14 completion:{x, y, width, height}];
}

uint64_t __88__ICPaperKitTextFindingResult_generateFindPreviewImageForPaperKitAttachment_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  return result;
}

- (void)selectInTextView:(id)a3
{
  v4 = a3;
  [v4 setSelectedRange:{-[ICTextFindingResult range](self, "range"), 0}];
}

- (CGRect)searchResultRect
{
  x = self->_searchResultRect.origin.x;
  y = self->_searchResultRect.origin.y;
  width = self->_searchResultRect.size.width;
  height = self->_searchResultRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end