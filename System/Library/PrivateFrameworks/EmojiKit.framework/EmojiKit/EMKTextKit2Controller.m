@interface EMKTextKit2Controller
@end

@implementation EMKTextKit2Controller

uint64_t __29___EMKTextKit2Controller_log__block_invoke()
{
  log_logger = os_log_create("com.apple.emojikit", "TK2Controller");

  return MEMORY[0x2821F96F8]();
}

uint64_t __57___EMKTextKit2Controller___startTextEffectBasedAnimation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) addRippleAnimationForRange_emk:?];
  [*(a1 + 40) addObject:v2];

  return 1;
}

void __57___EMKTextKit2Controller___startTextEffectBasedAnimation__block_invoke_46(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a3;
    _os_log_impl(&dword_2155E6000, v5, OS_LOG_TYPE_DEFAULT, "coordinator finished: %{BOOL}d", v7, 8u);
  }

  [*(a1 + 32) __rippleCoordinatorDidCompleteWithFinished:a3];
  v6 = [*(a1 + 40) emojiAnimationDelegate];
  [v6 textViewDidEndEmojiRippleAnimation:*(a1 + 40)];
}

uint64_t __55___EMKTextKit2Controller__updateEmojiAttributesOfText___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) addAttribute:@"EMKEmojiTokenList" value:a4 range:{a2, a3}];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  return [v7 addAttribute:@"EMKEmojiConversionLanguage" value:v8 range:{a2, a3}];
}

uint64_t __52___EMKTextKit2Controller_touchHasEmojiSignificance___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52___EMKTextKit2Controller_touchHasEmojiSignificance___block_invoke_2;
  v9[3] = &unk_2781C22C8;
  v12 = *(a1 + 64);
  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  result = [v7 enumerateTextSegmentsInRange:a3 type:0 options:0 usingBlock:v9];
  *a5 = *(*(*(a1 + 48) + 8) + 40) != 0;
  return result;
}

BOOL __52___EMKTextKit2Controller_touchHasEmojiSignificance___block_invoke_2(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v13 = [objc_opt_class() log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v23.origin.x = a3;
    v23.origin.y = a4;
    v23.size.width = a5;
    v23.size.height = a6;
    v14 = NSStringFromCGRect(v23);
    v18 = 138412546;
    v19 = v14;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_2155E6000, v13, OS_LOG_TYPE_DEFAULT, "touchHasEmojiSignificance: textSegmentFrame %@ touchedWordRange: %@", &v18, 0x16u);
  }

  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  v15 = CGRectContainsPoint(v24, *(a1 + 56));
  if (v15)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v16 = *(*(a1 + 48) + 8);
    v16[4] = a3;
    v16[5] = a4;
    v16[6] = a5;
    v16[7] = a6;
  }

  return !v15;
}

uint64_t __52___EMKTextKit2Controller_touchHasEmojiSignificance___block_invoke_57(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 rangeInElement];
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = v3;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_2155E6000, v5, OS_LOG_TYPE_DEFAULT, "layoutFragment: %@ - rangeInElement: %@", buf, 0x16u);
  }

  v6 = [v3 textElement];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [objc_opt_class() log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v7 elementRange];
        v10 = [v7 paragraphContentRange];
        v11 = [v7 paragraphSeparatorRange];
        *buf = 138412802;
        v25 = v9;
        v26 = 2112;
        v27 = v10;
        v28 = 2112;
        v29 = v11;
        _os_log_impl(&dword_2155E6000, v8, OS_LOG_TYPE_DEFAULT, "paragraph range: %@ - paragraphContentRange: %@ - paragraphSeparatorRange: %@", buf, 0x20u);
      }

      v12 = [v7 attributedString];
      v13 = [v12 length];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __52___EMKTextKit2Controller_touchHasEmojiSignificance___block_invoke_59;
      v17[3] = &unk_2781C2318;
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v14 = v4;
      v22 = *(a1 + 56);
      v23 = *(a1 + 72);
      v15 = *(a1 + 32);
      v20 = v14;
      v21 = v15;
      [v12 enumerateAttribute:@"EMKEmojiTokenList" inRange:0 options:v13 usingBlock:{0, v17}];
    }
  }

  return 1;
}

uint64_t __52___EMKTextKit2Controller_touchHasEmojiSignificance___block_invoke_59(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  if (v9)
  {
    v22 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v22;
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) location];
      v13 = [*(a1 + 48) location];
      v14 = [v11 offsetFromLocation:v12 toLocation:v13];

      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) location];
      v17 = [v15 locationFromLocation:v16 withOffset:v14 + a3];

      v18 = [*(a1 + 32) locationFromLocation:v17 withOffset:a4];
      v19 = [objc_alloc(MEMORY[0x277D742D0]) initWithLocation:v17 endLocation:v18];
      if ([v19 intersectsWithTextRange:*(*(*(a1 + 64) + 8) + 40)])
      {
        *a5 = 1;
        *(*(*(a1 + 72) + 8) + 24) = 1;
        v20 = objc_alloc_init(_EMKTouchInfo);
        [(_EMKTouchInfo *)v20 setTokenList:v10];
        [(_EMKTouchInfo *)v20 setFrame:*(*(*(a1 + 80) + 8) + 32), *(*(*(a1 + 80) + 8) + 40), *(*(*(a1 + 80) + 8) + 48), *(*(*(a1 + 80) + 8) + 56)];
        [(_EMKTouchInfo *)v20 setTokenListRange:v14 + a3, a4];
        [*(a1 + 56) setLastTouchInfo:v20];
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __51___EMKTextKit2Controller_textTapGestureRecognized___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setOverlayView:0];
  if (v7)
  {
    v4 = *(a1 + 72) + *(a1 + 64);
    if (v4 <= [*(a1 + 32) length])
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 32) substringWithRange:{*(a1 + 64), *(a1 + 72)}];
      LODWORD(v5) = [v5 isEqualToString:v6];

      if (v5)
      {
        [*(a1 + 48) replaceRange:*(a1 + 64) withEmojiToken:*(a1 + 72) language:{v7, @"en"}];
      }
    }
  }

  [WeakRetained setLastTouchInfo:0];
}

@end