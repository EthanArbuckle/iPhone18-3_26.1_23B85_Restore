@interface SUUIAdornedImageViewReuseView
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForButton:(id)a3 context:(id)a4;
+ (id)_attributedStringForButtonText:(id)a3 type:(int64_t)a4 style:(id)a5 context:(id)a6;
+ (id)_attributedStringForLabel:(id)a3 context:(id)a4;
+ (id)_attributedStringForMenuItem:(id)a3 context:(id)a4;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (CGRect)frameForView:(id)a3;
- (SUUIAdornedImageViewReuseView)init;
- (id)viewForElementIdentifier:(id)a3;
- (void)_buttonAction:(id)a3;
- (void)layoutSubviews;
- (void)mediaPlayer:(id)a3 itemStateChanged:(id)a4;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SUUIAdornedImageViewReuseView

- (SUUIAdornedImageViewReuseView)init
{
  v6.receiver = self;
  v6.super_class = SUUIAdornedImageViewReuseView;
  v2 = [(SUUIAdornedImageViewReuseView *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    viewElementViews = v2->_viewElementViews;
    v2->_viewElementViews = v3;
  }

  return v2;
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__SUUIAdornedImageViewReuseView_prefetchResourcesForViewElement_reason_context___block_invoke;
  v11[3] = &unk_2798F5E50;
  v9 = v8;
  v13 = &v15;
  v14 = a4;
  v12 = v9;
  [v7 enumerateChildrenUsingBlock:v11];
  LOBYTE(a4) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return a4;
}

uint64_t __80__SUUIAdornedImageViewReuseView_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) prefetchResourcesForViewElement:a2 reason:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | result) & 1;
  return result;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 defaultItemWidthForViewElement:v7];
  [a1 sizeThatFitsWidth:v7 viewElement:v6 context:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  [v9 size];
  if (v10 <= a4)
  {
    a4 = v10;
  }

  v11 = [v8 labelLayoutCache];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__SUUIAdornedImageViewReuseView_requestLayoutForViewElement_width_context___block_invoke;
  v14[3] = &unk_2798F5E78;
  v17 = a4;
  v18 = a1;
  v15 = v11;
  v16 = v8;
  v12 = v8;
  v13 = v11;
  [v9 enumerateChildrenUsingBlock:v14];
}

void __75__SUUIAdornedImageViewReuseView_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0;
  v4 = [v3 style];
  SUUIViewElementMarginForStyle(v4, &v13);
  v6 = v5;
  v8 = v7;

  v9 = v6 + v8;
  if (!v13)
  {
    v9 = 16.0;
  }

  v10 = *(a1 + 48) - v9;
  v11 = [v3 elementType];
  if (v11 > 137)
  {
    if (v11 == 138)
    {
      v12 = [*(a1 + 56) _attributedStringForLabel:v3 context:*(a1 + 40)];
      [*(a1 + 32) requestLayoutForLabel:v3 attributedString:v12 width:v10];
      goto LABEL_12;
    }

    if (v11 == 141)
    {
LABEL_9:
      v12 = [*(a1 + 56) _attributedStringForButton:v3 context:*(a1 + 40)];
      [*(a1 + 32) requestLayoutForButton:v3 attributedString:v12 width:v10];
LABEL_12:
    }
  }

  else
  {
    if (v11 != 8)
    {
      if (v11 != 12)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    [*(a1 + 32) requestLayoutForBadge:v3 width:v10];
  }

LABEL_13:
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  [a5 sizeForViewElement:a4 width:a3];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v9 = a3;
  v10 = a5;
  [(NSMapTable *)self->_viewElementViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  objc_storeStrong(&self->_imageViewElement, a3);
  playButton = self->_playButton;
  self->_playButton = 0;

  self->_playButtonPosition = 0;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __69__SUUIAdornedImageViewReuseView_reloadWithViewElement_width_context___block_invoke;
  v32 = &unk_2798F5EF0;
  v12 = v9;
  v33 = v12;
  v36 = a4;
  v13 = v10;
  v34 = v13;
  v35 = self;
  [(SUUIViewReuseView *)self modifyUsingBlock:&v29];
  v14 = [SUUIMediaPlayerInterface sharedInstance:v29];
  [v14 removeObserver:self];

  v15 = self->_playButton;
  if (v15)
  {
    v16 = [(SUUIPlayButton *)v15 playItemIdentifier];

    if (v16)
    {
      v17 = +[SUUIMediaPlayerInterface sharedInstance];
      v18 = [(SUUIPlayButton *)self->_playButton playItemIdentifier];
      v19 = [v17 playerForItemWithIdentifier:v18];

      v20 = [(SUUIPlayButton *)self->_playButton playItemIdentifier];
      if ([v17 identifierIsOnDeck:v20])
      {
        v21 = [(SUUIPlayButtonControl *)self->_playButton isIndeterminate];

        if (!v21)
        {
          [(SUUIPlayButtonControl *)self->_playButton beginIndeterminateAnimation];
          v22 = self->_playButton;
          v23 = 0;
          goto LABEL_16;
        }
      }

      else
      {
      }

      if (!v19)
      {
        [(SUUIPlayButtonControl *)self->_playButton hideProgressAnimated:1];
        if ([(SUUIPlayButton *)self->_playButton showOnDemand])
        {
          [(SUUIPlayButton *)self->_playButton setHidden:1];
        }

        goto LABEL_17;
      }

      v24 = [v19 playerItem];
      v25 = [v24 playState];

      if ([(SUUIPlayButton *)self->_playButton showOnDemand])
      {
        [(SUUIPlayButton *)self->_playButton setHidden:0];
      }

      if (v25 <= 5 && ((1 << v25) & 0x31) != 0)
      {
        [(SUUIPlayButtonControl *)self->_playButton hideProgressAnimated:1];
LABEL_17:
        v28 = +[SUUIMediaPlayerInterface sharedInstance];
        [v28 addObserver:self];

        goto LABEL_18;
      }

      v26 = self->_playButton;
      v27 = [v19 playerItem];
      [(SUUIPlayButton *)v26 reloadWithItemStatus:v27 animated:0];

      v22 = self->_playButton;
      v23 = v25 == 3;
LABEL_16:
      [(SUUIPlayButtonControl *)v22 showPlayIndicator:v23];
      goto LABEL_17;
    }
  }

LABEL_18:
}

void __69__SUUIAdornedImageViewReuseView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__SUUIAdornedImageViewReuseView_reloadWithViewElement_width_context___block_invoke_2;
  v10[3] = &unk_2798F6DF8;
  v15 = *(a1 + 56);
  v11 = v4;
  v12 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v13 = v6;
  v14 = v7;
  v8 = v3;
  v9 = v4;
  [v5 enumerateChildrenUsingBlock:v10];
}

void __69__SUUIAdornedImageViewReuseView_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 style];
  v5 = [v4 elementPosition];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 9;
  }

  for (i = [*(a1 + 32) count]; i <= v6; i = objc_msgSend(*(a1 + 32), "count"))
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [v8 addObject:v9];
  }

  v10 = [*(a1 + 32) objectAtIndex:v6];
  v11 = [v10 BOOLValue];

  if ((v11 & 1) == 0)
  {
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v12 replaceObjectAtIndex:v6 withObject:v13];

    v32 = 0;
    SUUIViewElementMarginForStyle(v4, &v32);
    v16 = v14 + v15;
    if (!v32)
    {
      v16 = 16.0;
    }

    v17 = *(a1 + 64) - v16;
    v18 = [v3 elementType];
    v19 = 0;
    if (v18 <= 48)
    {
      if (v18 == 8)
      {
        v23 = [*(a1 + 40) addBadgeViewWithElement:v3 width:*(a1 + 48) context:v17];
LABEL_29:
        v19 = v23;
        v20 = v23;
        if (!v23)
        {
          goto LABEL_35;
        }

        goto LABEL_30;
      }

      if (v18 == 12)
      {
        goto LABEL_21;
      }

      v20 = 0;
      if (v18 != 29)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v18 > 137)
      {
        if (v18 == 138)
        {
          v19 = [*(a1 + 40) addLabelViewWithElement:v3 width:*(a1 + 48) context:v17];
          v20 = 0;
          if (!v19)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }

        v20 = 0;
        if (v18 != 141)
        {
LABEL_37:

          goto LABEL_38;
        }

LABEL_21:
        v24 = [*(a1 + 40) addButtonWithElement:v3 width:*(a1 + 48) context:v17];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong((*(a1 + 56) + 440), v24);
          v25 = [v3 style];
          *(*(a1 + 56) + 448) = [v25 elementPosition];
        }

        [v24 addTarget:*(a1 + 56) action:sel__buttonAction_ forControlEvents:64];
        LODWORD(v26) = -0.5;
        [v24 setCharge:v26];
        v19 = v24;
        if ([v3 elementType] == 50)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        if (!v20)
        {
LABEL_35:
          if (v19)
          {
LABEL_36:
            [*(*(a1 + 56) + 456) setObject:v19 forKey:v3];
            [*(*(a1 + 56) + 456) setObject:v3 forKey:v19];
            goto LABEL_37;
          }

          goto LABEL_37;
        }

LABEL_30:
        v27 = [*(a1 + 48) imageResourceCacheKeyForViewElement:v3];
        if (v27)
        {
          v28 = *(*(a1 + 56) + 424);
          if (!v28)
          {
            v29 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
            v30 = *(a1 + 56);
            v31 = *(v30 + 424);
            *(v30 + 424) = v29;

            v28 = *(*(a1 + 56) + 424);
          }

          [v28 setObject:v27 forKey:v20];
        }

        goto LABEL_35;
      }

      if (v18 != 49)
      {
        v20 = 0;
        if (v18 != 50)
        {
          goto LABEL_37;
        }

        goto LABEL_21;
      }
    }

    v21 = [*(a1 + 40) addImageViewWithElement:v3 context:*(a1 + 48)];
    v22 = [v21 tapRecognizer];
    [v22 addTarget:*(a1 + 56) action:sel__buttonAction_];

    v23 = v21;
    goto LABEL_29;
  }

LABEL_38:
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [a4 requestIdentifier];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_imageViewToImageResourceCacheKey;
  v11 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v22 = v8;
    v13 = *v25;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [(NSMapTable *)self->_imageViewToImageResourceCacheKey objectForKey:v15, v22];
        v17 = [v9 requestIdentifierForResourceCacheKey:v16];
        v18 = v17;
        if (v17 && [v17 unsignedIntegerValue] == v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [v15 imageView];
            v8 = v22;
            [v20 setImage:v22];
          }

          else
          {
            v8 = v22;
            [v15 setImage:v22];
          }

          v19 = 1;
          goto LABEL_16;
        }
      }

      v12 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v19 = 0;
    v8 = v22;
  }

  else
  {
    v19 = 0;
  }

LABEL_16:

  return v19;
}

- (id)viewForElementIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SUUIViewElement *)self->_imageViewElement flattenedChildren];
  v6 = [(SUUIViewReuseView *)self allExistingViews];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__12;
  v19 = __Block_byref_object_dispose__12;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SUUIAdornedImageViewReuseView_viewForElementIdentifier___block_invoke;
  v11[3] = &unk_2798F6E20;
  v7 = v4;
  v12 = v7;
  v8 = v6;
  v13 = v8;
  v14 = &v15;
  [v5 enumerateObjectsUsingBlock:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __58__SUUIAdornedImageViewReuseView_viewForElementIdentifier___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v11 = [a2 itmlID];
  if ([v11 isEqualToString:*(a1 + 32)])
  {
    v7 = [*(a1 + 40) count];

    if (v7 > a3)
    {
      v8 = [*(a1 + 40) objectAtIndex:a3];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      *a4 = 1;
    }
  }

  else
  {
  }
}

- (CGRect)frameForView:(id)a3
{
  viewElementViews = self->_viewElementViews;
  v5 = a3;
  v6 = [(NSMapTable *)viewElementViews objectForKey:v5];
  v7 = [v6 style];
  v38 = 0;
  v8 = SUUIViewElementMarginForStyle(v7, &v38);
  if (v38)
  {
    v12 = v11;
  }

  else
  {
    v12 = 8.0;
  }

  if (v38)
  {
    v13 = v10;
  }

  else
  {
    v13 = 8.0;
  }

  if (v38)
  {
    v14 = v9;
  }

  else
  {
    v14 = 8.0;
  }

  if (v38)
  {
    v15 = v8;
  }

  else
  {
    v15 = 8.0;
  }

  [(SUUIAdornedImageViewReuseView *)self frame];
  v16 = CGRectGetWidth(v39) - (v12 + v14);
  [(SUUIAdornedImageViewReuseView *)self frame];
  Height = CGRectGetHeight(v40);
  v19 = *MEMORY[0x277CBF3A0];
  v18 = *(MEMORY[0x277CBF3A0] + 8);
  [v5 sizeThatFits:{v16, Height - (v13 + v15)}];
  v21 = v20;
  v23 = v22;

  v24 = [v7 elementPosition];
  if (v24 > 9)
  {
    v14 = v19;
  }

  else if (((1 << v24) & 0x2A1) != 0)
  {
    [(SUUIAdornedImageViewReuseView *)self bounds];
    Width = CGRectGetWidth(v43);
    v44.origin.x = v19;
    v44.origin.y = v18;
    v44.size.width = v21;
    v44.size.height = v23;
    v14 = Width - CGRectGetWidth(v44) - v12;
  }

  else if (((1 << v24) & 0xE) != 0)
  {
    [(SUUIAdornedImageViewReuseView *)self bounds];
    MidX = CGRectGetMidX(v41);
    v42.origin.x = v19;
    v42.origin.y = v18;
    v42.size.width = v21;
    v42.size.height = v23;
    v14 = MidX + CGRectGetWidth(v42) * -0.5;
  }

  v27 = [v7 elementPosition];
  if (v27 > 9)
  {
    v15 = v18;
  }

  else if (((1 << v27) & 0x309) != 0)
  {
    [(SUUIAdornedImageViewReuseView *)self bounds];
    v29 = CGRectGetHeight(v47);
    v48.origin.x = v14;
    v48.origin.y = v18;
    v48.size.width = v21;
    v48.size.height = v23;
    v15 = v29 - CGRectGetHeight(v48) - v13;
  }

  else if (((1 << v27) & 0x32) != 0)
  {
    [(SUUIAdornedImageViewReuseView *)self bounds];
    MidY = CGRectGetMidY(v45);
    v46.origin.x = v14;
    v46.origin.y = v18;
    v46.size.width = v21;
    v46.size.height = v23;
    v15 = MidY + CGRectGetHeight(v46) * -0.5;
  }

  v49.origin.x = v14;
  v49.origin.y = v15;
  v49.size.width = v21;
  v49.size.height = v23;
  v50 = CGRectIntegral(v49);
  x = v50.origin.x;
  y = v50.origin.y;
  v32 = v50.size.width;
  v33 = v50.size.height;

  v34 = x;
  v35 = y;
  v36 = v32;
  v37 = v33;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (void)layoutSubviews
{
  v15 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = SUUIAdornedImageViewReuseView;
  [(SUUIAdornedImageViewReuseView *)&v13 layoutSubviews];
  v3 = [(SUUIViewReuseView *)self allExistingViews];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [(SUUIAdornedImageViewReuseView *)self frameForView:v8];
        [v8 setFrame:?];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_buttonAction:(id)a3
{
  if (self->_playButton == a3)
  {
    v9 = +[SUUIMediaPlayerInterface sharedInstance];
    v5 = [(SUUIPlayButton *)self->_playButton playItemIdentifier];
    v6 = [v9 isItemWithIdentifierActive:v5];

    if (v6)
    {
      v7 = [(SUUIPlayButton *)self->_playButton playItemIdentifier];
      [v9 togglePlayStateForItemWithIdentifier:v7];
    }

    else
    {
      v7 = [(NSMapTable *)self->_viewElementViews objectForKey:self->_playButton];
      if (v7)
      {
        if ([(SUUIPlayButtonControl *)self->_playButton isDisabledButSelectable])
        {
          [v7 dispatchEvent:0x286AFEA60 eventAttribute:0x286AFEA80 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
        }

        else
        {
          v8 = [(SUUIPlayButton *)self->_playButton playItemIdentifier];
          [v9 notifyWillChangeToItemWithItemIdentifer:v8];

          if (![(SUUIPlayButtonControl *)self->_playButton isIndeterminate])
          {
            [(SUUIPlayButtonControl *)self->_playButton beginIndeterminateAnimation];
          }

          [v7 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
        }
      }
    }
  }

  else
  {
    v4 = [(NSMapTable *)self->_viewElementViews objectForKey:?];
    if (!v4)
    {
      goto LABEL_15;
    }

    v9 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v9 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
    }
  }

  v4 = v9;
LABEL_15:
}

- (void)mediaPlayer:(id)a3 itemStateChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  playButton = self->_playButton;
  if (playButton)
  {
    v9 = [(SUUIPlayButton *)playButton playItemIdentifier];
    v10 = [SUUIMediaPlayerInterface identifierMatches:v9 item:v7];

    if (v10)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__SUUIAdornedImageViewReuseView_mediaPlayer_itemStateChanged___block_invoke;
      block[3] = &unk_2798F5AF8;
      block[4] = self;
      v17 = v7;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v11 = v17;
LABEL_7:

      goto LABEL_8;
    }

    if ([(SUUIPlayButtonControl *)self->_playButton isIndeterminate]|| [(SUUIPlayButtonControl *)self->_playButton showingProgress])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __62__SUUIAdornedImageViewReuseView_mediaPlayer_itemStateChanged___block_invoke_2;
      v13[3] = &unk_2798F5AF8;
      v14 = v7;
      v15 = self;
      dispatch_async(MEMORY[0x277D85CD0], v13);
      v11 = v14;
      goto LABEL_7;
    }

    if ([(SUUIPlayButton *)self->_playButton showOnDemand])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __62__SUUIAdornedImageViewReuseView_mediaPlayer_itemStateChanged___block_invoke_3;
      v12[3] = &unk_2798F5BE8;
      v12[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], v12);
    }
  }

LABEL_8:
}

uint64_t __62__SUUIAdornedImageViewReuseView_mediaPlayer_itemStateChanged___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 440) showOnDemand])
  {
    [*(*(a1 + 32) + 440) setHidden:0];
  }

  v2 = [*(a1 + 40) playState];
  v3 = *(*(a1 + 32) + 440);
  if ((v2 - 6) > 0xFFFFFFFFFFFFFFFDLL)
  {

    return [v3 hideProgressAnimated:1];
  }

  else
  {
    [v3 reloadWithItemStatus:*(a1 + 40) animated:0];
    v4 = *(*(a1 + 32) + 440);

    return [v4 showPlayIndicator:v2 == 3];
  }
}

uint64_t __62__SUUIAdornedImageViewReuseView_mediaPlayer_itemStateChanged___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) playState];
  if (result != 5)
  {
    [*(*(a1 + 40) + 440) hideProgressAnimated:0];
    result = [*(*(a1 + 40) + 440) showOnDemand];
    if (result)
    {
      v3 = *(*(a1 + 40) + 440);

      return [v3 setHidden:1];
    }
  }

  return result;
}

+ (id)_attributedStringForButton:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 buttonText];
  v9 = [v6 buttonViewType];
  v10 = [v6 buttonTitleStyle];
  if (v10)
  {
    v11 = [a1 _attributedStringForButtonText:v8 type:v9 style:v10 context:v7];
  }

  else
  {
    v12 = [v6 style];
    v11 = [a1 _attributedStringForButtonText:v8 type:v9 style:v12 context:v7];
  }

  return v11;
}

+ (id)_attributedStringForButtonText:(id)a3 type:(int64_t)a4 style:(id)a5 context:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = SUUIViewElementFontWithStyle(v10);
  if (!v12)
  {
    if (a4)
    {
      v13 = 5;
    }

    else
    {
      v13 = 1;
    }

    v12 = SUUIFontPreferredFontForTextStyle(v13);
  }

  v14 = [v11 tintColor];
  v15 = SUUIViewElementPlainColorWithStyle(v10, v14);

  if (!v15)
  {
    v15 = [MEMORY[0x277D75348] blackColor];
  }

  v16 = [v9 attributedStringWithDefaultFont:v12 foregroundColor:v15 style:v10];

  return v16;
}

+ (id)_attributedStringForLabel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = SUUIViewElementFontWithStyle(v7);
  if (!v8)
  {
    v8 = SUUIFontPreferredFontForTextStyle(5);
  }

  v9 = [v6 tintColor];
  v10 = SUUIViewElementPlainColorWithStyle(v7, v9);

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  }

  v11 = SUUIViewElementAlignmentForStyle(v7);
  if (v11)
  {
    v12 = SUUIViewElementNSTextAlignmentForIKElementAlignment(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v5 text];
  v14 = [v13 attributedStringWithDefaultFont:v8 foregroundColor:v10 textAlignment:v12 style:v7];

  return v14;
}

+ (id)_attributedStringForMenuItem:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 itemText];
  v9 = [v7 style];

  v10 = [a1 _attributedStringForButtonText:v8 type:0 style:v9 context:v6];

  return v10;
}

@end