@interface CKUIThemeNano
- (UIColor)filledGrayBalloonColor;
- (double)transcriptTypingIndicatorOpacity;
- (id)attachmentBalloonSubtitleTextColor;
- (id)attachmentBalloonTitleTextColor;
- (id)background_balloonColors;
- (id)blue_balloonColors;
- (id)blue_sendButtonColor;
- (id)browserBackgroundColor;
- (id)conversationListDateColor;
- (id)conversationListGroupCountColor;
- (id)conversationListSenderColor;
- (id)conversationListSummaryColor;
- (id)gray_balloonColors;
- (id)gray_unfilledBalloonColor;
- (id)messageAcknowledgmentBalloonBorderColor;
- (id)messageAcknowledgmentBalloonColorForStyle:(int64_t)a3;
- (id)messageAcknowledgmentGrayColor;
- (id)messageAcknowledgmentRedColor;
- (id)messageAcknowledgmentWhiteColor;
- (id)messagesControllerBackgroundColor;
- (id)notificationSubtitleColor;
- (id)progressBarTrackTintColor;
- (id)replyLineColor;
- (id)reply_gray_balloonColors;
- (id)reply_gray_balloonTextLinkColor;
- (id)reply_gray_nonMaterialBalloonTextColor;
- (id)reply_gray_unfilledBalloonColor;
- (id)transcriptBackgroundColor;
- (id)transcriptBigEmojiColor;
- (id)transcriptDeemphasizedTextColor;
- (id)transcriptNavBarTextColor;
- (id)transcriptNicknameTextColor;
- (id)transcriptReplyCountColor;
- (id)transcriptTypingIndicatorBubbleColor;
- (id)transcriptTypingIndicatorDotColor;
@end

@implementation CKUIThemeNano

- (id)messagesControllerBackgroundColor
{
  if (messagesControllerBackgroundColor_once_2143 != -1)
  {
    [CKUIThemeNano messagesControllerBackgroundColor];
  }

  v3 = messagesControllerBackgroundColor_sBehavior_2142;

  return v3;
}

void __50__CKUIThemeNano_messagesControllerBackgroundColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] blackColor];
  v1 = messagesControllerBackgroundColor_sBehavior_2142;
  messagesControllerBackgroundColor_sBehavior_2142 = v0;
}

- (id)notificationSubtitleColor
{
  if (notificationSubtitleColor_once_2147 != -1)
  {
    [CKUIThemeNano notificationSubtitleColor];
  }

  v3 = notificationSubtitleColor_sBehavior_2146;

  return v3;
}

void __42__CKUIThemeNano_notificationSubtitleColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.298039216 green:0.850980392 blue:0.392156863 alpha:1.0];
  v1 = notificationSubtitleColor_sBehavior_2146;
  notificationSubtitleColor_sBehavior_2146 = v0;
}

- (id)conversationListSenderColor
{
  if (conversationListSenderColor_once_2151 != -1)
  {
    [CKUIThemeNano conversationListSenderColor];
  }

  v3 = conversationListSenderColor_sBehavior_2150;

  return v3;
}

void __44__CKUIThemeNano_conversationListSenderColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] whiteColor];
  v1 = conversationListSenderColor_sBehavior_2150;
  conversationListSenderColor_sBehavior_2150 = v0;
}

- (id)conversationListSummaryColor
{
  if (conversationListSummaryColor_once != -1)
  {
    [CKUIThemeNano conversationListSummaryColor];
  }

  v3 = conversationListSummaryColor_sBehavior_2154;

  return v3;
}

void __45__CKUIThemeNano_conversationListSummaryColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.560784314 green:0.560784314 blue:0.560784314 alpha:1.0];
  v1 = conversationListSummaryColor_sBehavior_2154;
  conversationListSummaryColor_sBehavior_2154 = v0;
}

- (id)conversationListDateColor
{
  if (conversationListDateColor_once != -1)
  {
    [CKUIThemeNano conversationListDateColor];
  }

  v3 = conversationListDateColor_sBehavior_2157;

  return v3;
}

void __42__CKUIThemeNano_conversationListDateColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.560784314 green:0.560784314 blue:0.560784314 alpha:1.0];
  v1 = conversationListDateColor_sBehavior_2157;
  conversationListDateColor_sBehavior_2157 = v0;
}

- (id)conversationListGroupCountColor
{
  if (conversationListGroupCountColor_once_2161 != -1)
  {
    [CKUIThemeNano conversationListGroupCountColor];
  }

  v3 = conversationListGroupCountColor_sBehavior_2160;

  return v3;
}

void __48__CKUIThemeNano_conversationListGroupCountColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.560784314 green:0.560784314 blue:0.560784314 alpha:1.0];
  v1 = conversationListGroupCountColor_sBehavior_2160;
  conversationListGroupCountColor_sBehavior_2160 = v0;
}

- (id)progressBarTrackTintColor
{
  if (progressBarTrackTintColor_once_2165 != -1)
  {
    [CKUIThemeNano progressBarTrackTintColor];
  }

  v3 = progressBarTrackTintColor_sBehavior_2164;

  return v3;
}

void __42__CKUIThemeNano_progressBarTrackTintColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.121568627 green:0.121568627 blue:0.121568627 alpha:1.0];
  v1 = progressBarTrackTintColor_sBehavior_2164;
  progressBarTrackTintColor_sBehavior_2164 = v0;
}

- (id)transcriptNavBarTextColor
{
  if (transcriptNavBarTextColor_once != -1)
  {
    [CKUIThemeNano transcriptNavBarTextColor];
  }

  v3 = transcriptNavBarTextColor_sBehavior;

  return v3;
}

void __42__CKUIThemeNano_transcriptNavBarTextColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] blackColor];
  v1 = transcriptNavBarTextColor_sBehavior;
  transcriptNavBarTextColor_sBehavior = v0;
}

- (id)blue_sendButtonColor
{
  if (blue_sendButtonColor_once != -1)
  {
    [CKUIThemeNano blue_sendButtonColor];
  }

  v3 = blue_sendButtonColor_sBehavior_2170;

  return v3;
}

void __37__CKUIThemeNano_blue_sendButtonColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKNanoDefaultBlueColor"];
  v1 = blue_sendButtonColor_sBehavior_2170;
  blue_sendButtonColor_sBehavior_2170 = v0;
}

- (id)transcriptBackgroundColor
{
  if (transcriptBackgroundColor_once != -1)
  {
    [CKUIThemeNano transcriptBackgroundColor];
  }

  v3 = transcriptBackgroundColor_sBehavior;

  return v3;
}

void __42__CKUIThemeNano_transcriptBackgroundColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] clearColor];
  v1 = transcriptBackgroundColor_sBehavior;
  transcriptBackgroundColor_sBehavior = v0;
}

- (id)transcriptNicknameTextColor
{
  if (transcriptNicknameTextColor_once_2179 != -1)
  {
    [CKUIThemeNano transcriptNicknameTextColor];
  }

  v3 = transcriptNicknameTextColor_sBehavior_2178;

  return v3;
}

void __44__CKUIThemeNano_transcriptNicknameTextColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKNanoDefaultBlueColor"];
  v1 = transcriptNicknameTextColor_sBehavior_2178;
  transcriptNicknameTextColor_sBehavior_2178 = v0;
}

- (id)transcriptBigEmojiColor
{
  if (transcriptBigEmojiColor_once_2183 != -1)
  {
    [CKUIThemeNano transcriptBigEmojiColor];
  }

  v3 = transcriptBigEmojiColor_sBehavior_2182;

  return v3;
}

void __40__CKUIThemeNano_transcriptBigEmojiColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] whiteColor];
  v1 = transcriptBigEmojiColor_sBehavior_2182;
  transcriptBigEmojiColor_sBehavior_2182 = v0;
}

- (id)transcriptDeemphasizedTextColor
{
  v3 = UIAccessibilityDarkerSystemColorsEnabled();
  v4 = transcriptDeemphasizedTextColor_sBehavior_2187;
  if (transcriptDeemphasizedTextColor_sBehavior_2187)
  {
    v5 = transcriptDeemphasizedTextColor_sIsIncreaseContrastEnabled_transcriptDeemphasizedTextColor_2186 == v3;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = [(CKUITheme *)self grayTextColor];
    v7 = transcriptDeemphasizedTextColor_sBehavior_2187;
    transcriptDeemphasizedTextColor_sBehavior_2187 = v6;

    transcriptDeemphasizedTextColor_sIsIncreaseContrastEnabled_transcriptDeemphasizedTextColor_2186 = v3;
    v4 = transcriptDeemphasizedTextColor_sBehavior_2187;
  }

  return v4;
}

- (id)gray_balloonColors
{
  if (gray_balloonColors_once_2189 != -1)
  {
    [CKUIThemeNano gray_balloonColors];
  }

  v3 = gray_balloonColors_sBehavior_2188;

  return v3;
}

void __35__CKUIThemeNano_gray_balloonColors__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKNanoReplyGrayBalloonColor"];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  v2 = gray_balloonColors_sBehavior_2188;
  gray_balloonColors_sBehavior_2188 = v1;
}

- (id)blue_balloonColors
{
  if (blue_balloonColors_once_2196 != -1)
  {
    [CKUIThemeNano blue_balloonColors];
  }

  v3 = blue_balloonColors_sBehavior_2195;

  return v3;
}

void __35__CKUIThemeNano_blue_balloonColors__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.125490196 green:0.580392157 blue:0.941176471 alpha:1.0];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  v2 = blue_balloonColors_sBehavior_2195;
  blue_balloonColors_sBehavior_2195 = v1;
}

- (id)gray_unfilledBalloonColor
{
  if (gray_unfilledBalloonColor_once_2200 != -1)
  {
    [CKUIThemeNano gray_unfilledBalloonColor];
  }

  v3 = gray_unfilledBalloonColor_sBehavior_2199;

  return v3;
}

void __42__CKUIThemeNano_gray_unfilledBalloonColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.301960784 green:0.311764706 blue:0.331372549 alpha:1.0];
  v1 = gray_unfilledBalloonColor_sBehavior_2199;
  gray_unfilledBalloonColor_sBehavior_2199 = v0;
}

- (id)background_balloonColors
{
  if (background_balloonColors_once_2204 != -1)
  {
    [CKUIThemeNano background_balloonColors];
  }

  v3 = background_balloonColors_sBehavior_2203;

  return v3;
}

void __41__CKUIThemeNano_background_balloonColors__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKNanoReplyGrayBalloonColor"];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  v2 = background_balloonColors_sBehavior_2203;
  background_balloonColors_sBehavior_2203 = v1;
}

- (id)reply_gray_balloonColors
{
  if (reply_gray_balloonColors_once_2208 != -1)
  {
    [CKUIThemeNano reply_gray_balloonColors];
  }

  v3 = reply_gray_balloonColors_sBehavior_2207;

  return v3;
}

void __41__CKUIThemeNano_reply_gray_balloonColors__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKNanoReplyGrayBalloonColor"];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  v2 = reply_gray_balloonColors_sBehavior_2207;
  reply_gray_balloonColors_sBehavior_2207 = v1;
}

- (id)reply_gray_unfilledBalloonColor
{
  if (reply_gray_unfilledBalloonColor_once_2212 != -1)
  {
    [CKUIThemeNano reply_gray_unfilledBalloonColor];
  }

  v3 = reply_gray_unfilledBalloonColor_sBehavior_2211;

  return v3;
}

void __48__CKUIThemeNano_reply_gray_unfilledBalloonColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKNanoReplyGrayUnfilledBalloonColor"];
  v1 = reply_gray_unfilledBalloonColor_sBehavior_2211;
  reply_gray_unfilledBalloonColor_sBehavior_2211 = v0;
}

- (id)replyLineColor
{
  if (replyLineColor_once_2219 != -1)
  {
    [CKUIThemeNano replyLineColor];
  }

  v3 = replyLineColor_sBehavior_2218;

  return v3;
}

void __31__CKUIThemeNano_replyLineColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKNanoReplyLineColor"];
  v1 = replyLineColor_sBehavior_2218;
  replyLineColor_sBehavior_2218 = v0;
}

- (id)transcriptReplyCountColor
{
  if (transcriptReplyCountColor_once != -1)
  {
    [CKUIThemeNano transcriptReplyCountColor];
  }

  v3 = transcriptReplyCountColor_sBehavior;

  return v3;
}

void __42__CKUIThemeNano_transcriptReplyCountColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKNanoDefaultBlueColor"];
  v1 = transcriptReplyCountColor_sBehavior;
  transcriptReplyCountColor_sBehavior = v0;
}

- (id)reply_gray_nonMaterialBalloonTextColor
{
  if (reply_gray_nonMaterialBalloonTextColor_once_2228 != -1)
  {
    [CKUIThemeNano reply_gray_nonMaterialBalloonTextColor];
  }

  v3 = reply_gray_nonMaterialBalloonTextColor_sBehavior_2227;

  return v3;
}

void __55__CKUIThemeNano_reply_gray_nonMaterialBalloonTextColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKNanoReplyGrayTextColor"];
  v1 = reply_gray_nonMaterialBalloonTextColor_sBehavior_2227;
  reply_gray_nonMaterialBalloonTextColor_sBehavior_2227 = v0;
}

- (id)reply_gray_balloonTextLinkColor
{
  if (reply_gray_balloonTextLinkColor_once_2235 != -1)
  {
    [CKUIThemeNano reply_gray_balloonTextLinkColor];
  }

  v3 = reply_gray_balloonTextLinkColor_sBehavior_2234;

  return v3;
}

void __48__CKUIThemeNano_reply_gray_balloonTextLinkColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKNanoReplyGrayTextColor"];
  v1 = reply_gray_balloonTextLinkColor_sBehavior_2234;
  reply_gray_balloonTextLinkColor_sBehavior_2234 = v0;
}

- (UIColor)filledGrayBalloonColor
{
  if (filledGrayBalloonColor_once != -1)
  {
    [CKUIThemeNano filledGrayBalloonColor];
  }

  v3 = filledGrayBalloonColor_sBehavior;

  return v3;
}

void __39__CKUIThemeNano_filledGrayBalloonColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKNanoReplyGrayBalloonColorFilled"];
  v1 = filledGrayBalloonColor_sBehavior;
  filledGrayBalloonColor_sBehavior = v0;
}

- (id)transcriptTypingIndicatorBubbleColor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CKUIThemeNano_transcriptTypingIndicatorBubbleColor__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (transcriptTypingIndicatorBubbleColor_once_2244 != -1)
  {
    dispatch_once(&transcriptTypingIndicatorBubbleColor_once_2244, block);
  }

  return transcriptTypingIndicatorBubbleColor_sBehavior_2243;
}

void __53__CKUIThemeNano_transcriptTypingIndicatorBubbleColor__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = CKUIThemeNano;
  v1 = objc_msgSendSuper2(&v3, sel_transcriptTypingIndicatorBubbleColor);
  v2 = transcriptTypingIndicatorBubbleColor_sBehavior_2243;
  transcriptTypingIndicatorBubbleColor_sBehavior_2243 = v1;
}

- (id)transcriptTypingIndicatorDotColor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CKUIThemeNano_transcriptTypingIndicatorDotColor__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (transcriptTypingIndicatorDotColor_once_2248 != -1)
  {
    dispatch_once(&transcriptTypingIndicatorDotColor_once_2248, block);
  }

  return transcriptTypingIndicatorDotColor_sBehavior_2247;
}

void __50__CKUIThemeNano_transcriptTypingIndicatorDotColor__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = CKUIThemeNano;
  v1 = objc_msgSendSuper2(&v3, sel_transcriptTypingIndicatorDotColor);
  v2 = transcriptTypingIndicatorDotColor_sBehavior_2247;
  transcriptTypingIndicatorDotColor_sBehavior_2247 = v1;
}

- (double)transcriptTypingIndicatorOpacity
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CKUIThemeNano_transcriptTypingIndicatorOpacity__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (transcriptTypingIndicatorOpacity_once_2251 != -1)
  {
    dispatch_once(&transcriptTypingIndicatorOpacity_once_2251, block);
  }

  return *&transcriptTypingIndicatorOpacity_sBehavior_2250;
}

id __49__CKUIThemeNano_transcriptTypingIndicatorOpacity__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = CKUIThemeNano;
  result = objc_msgSendSuper2(&v3, sel_transcriptTypingIndicatorOpacity);
  transcriptTypingIndicatorOpacity_sBehavior_2250 = v2;
  return result;
}

- (id)attachmentBalloonTitleTextColor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CKUIThemeNano_attachmentBalloonTitleTextColor__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (attachmentBalloonTitleTextColor_once != -1)
  {
    dispatch_once(&attachmentBalloonTitleTextColor_once, block);
  }

  return attachmentBalloonTitleTextColor_sBehavior_2253;
}

void __48__CKUIThemeNano_attachmentBalloonTitleTextColor__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) balloonTextColorForColorType:0xFFFFFFFFLL];
  v2 = attachmentBalloonTitleTextColor_sBehavior_2253;
  attachmentBalloonTitleTextColor_sBehavior_2253 = v1;
}

- (id)attachmentBalloonSubtitleTextColor
{
  if (attachmentBalloonSubtitleTextColor_once_2255 != -1)
  {
    [CKUIThemeNano attachmentBalloonSubtitleTextColor];
  }

  v3 = attachmentBalloonSubtitleTextColor_sBehavior_2254;

  return v3;
}

void __51__CKUIThemeNano_attachmentBalloonSubtitleTextColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v1 = attachmentBalloonSubtitleTextColor_sBehavior_2254;
  attachmentBalloonSubtitleTextColor_sBehavior_2254 = v0;
}

- (id)messageAcknowledgmentBalloonBorderColor
{
  if (messageAcknowledgmentBalloonBorderColor_once_2259 != -1)
  {
    [CKUIThemeNano messageAcknowledgmentBalloonBorderColor];
  }

  v3 = messageAcknowledgmentBalloonBorderColor_sBehavior_2258;

  return v3;
}

void __56__CKUIThemeNano_messageAcknowledgmentBalloonBorderColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] blackColor];
  v1 = messageAcknowledgmentBalloonBorderColor_sBehavior_2258;
  messageAcknowledgmentBalloonBorderColor_sBehavior_2258 = v0;
}

- (id)messageAcknowledgmentGrayColor
{
  if (messageAcknowledgmentGrayColor_once_2263 != -1)
  {
    [CKUIThemeNano messageAcknowledgmentGrayColor];
  }

  v3 = messageAcknowledgmentGrayColor_sBehavior_2262;

  return v3;
}

void __47__CKUIThemeNano_messageAcknowledgmentGrayColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] systemGrayColor];
  v1 = messageAcknowledgmentGrayColor_sBehavior_2262;
  messageAcknowledgmentGrayColor_sBehavior_2262 = v0;
}

- (id)messageAcknowledgmentRedColor
{
  if (messageAcknowledgmentRedColor_once_2267 != -1)
  {
    [CKUIThemeNano messageAcknowledgmentRedColor];
  }

  v3 = messageAcknowledgmentRedColor_sBehavior_2266;

  return v3;
}

void __46__CKUIThemeNano_messageAcknowledgmentRedColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.980392157 green:0.368627451 blue:0.588235294 alpha:1.0];
  v1 = messageAcknowledgmentRedColor_sBehavior_2266;
  messageAcknowledgmentRedColor_sBehavior_2266 = v0;
}

- (id)messageAcknowledgmentWhiteColor
{
  if (messageAcknowledgmentWhiteColor_once_2271 != -1)
  {
    [CKUIThemeNano messageAcknowledgmentWhiteColor];
  }

  v3 = messageAcknowledgmentWhiteColor_sBehavior_2270;

  return v3;
}

void __48__CKUIThemeNano_messageAcknowledgmentWhiteColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] whiteColor];
  v1 = messageAcknowledgmentWhiteColor_sBehavior_2270;
  messageAcknowledgmentWhiteColor_sBehavior_2270 = v0;
}

- (id)messageAcknowledgmentBalloonColorForStyle:(int64_t)a3
{
  v3 = [(CKUITheme *)self balloonColorsForColorType:[(CKUITheme *)self messageAcknowledgmentBalloonColorTypeForStyle:a3]];
  v4 = [v3 lastObject];

  return v4;
}

- (id)browserBackgroundColor
{
  if (browserBackgroundColor_once_2275 != -1)
  {
    [CKUIThemeNano browserBackgroundColor];
  }

  v3 = browserBackgroundColor_sBehavior_2274;

  return v3;
}

void __39__CKUIThemeNano_browserBackgroundColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] blackColor];
  v1 = browserBackgroundColor_sBehavior_2274;
  browserBackgroundColor_sBehavior_2274 = v0;
}

@end