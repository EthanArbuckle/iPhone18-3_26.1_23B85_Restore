@interface CKStewieTranscriptResumeButtonsChatItem
- (BOOL)isEmergency;
- (BOOL)shouldShowStewieTextButton;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (Class)cellClass;
- (id)chatIdentifier;
- (id)loadTranscriptText;
@end

@implementation CKStewieTranscriptResumeButtonsChatItem

- (Class)cellClass
{
  [(CKStewieTranscriptResumeButtonsChatItem *)self isEmergency];
  v2 = objc_opt_class();

  return v2;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  if (insets)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 transcriptBoldTextAlignmentInsets];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    insets->top = v10;
    insets->left = v12;
    insets->bottom = v14;
    insets->right = v16;
  }

  [(objc_class *)[(CKStewieTranscriptResumeButtonsChatItem *)self cellClass] heightForChatItem:self fittingSize:width, height];
  v18 = v17;
  v19 = width;
  result.height = v18;
  result.width = v19;
  return result;
}

- (id)chatIdentifier
{
  imStewieResumeItem = [(CKStewieTranscriptResumeButtonsChatItem *)self imStewieResumeItem];
  chatIdentifier = [imStewieResumeItem chatIdentifier];

  return chatIdentifier;
}

- (BOOL)isEmergency
{
  chatIdentifier = [(CKStewieTranscriptResumeButtonsChatItem *)self chatIdentifier];
  v3 = IMIsStringStewieEmergency();

  return v3;
}

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v3 transcriptEmphasizedFontAttributes];

  isEmergency = [(CKStewieTranscriptResumeButtonsChatItem *)self isEmergency];
  v6 = objc_alloc(MEMORY[0x1E696AAB0]);
  v7 = CKFrameworkBundle();
  v8 = v7;
  if (isEmergency)
  {
    v9 = @"CALL_EMERGENCY_SERVICES_IF_YOU_NEED_HELP";
    v10 = @"ChatKit-SYDROB_FEATURES";
  }

  else
  {
    v9 = @"SATELLITE_CONNECTION_ENDED";
    v10 = @"ChatKit-Avocet";
  }

  v11 = [v7 localizedStringForKey:v9 value:&stru_1F04268F8 table:v10];
  v12 = [v6 initWithString:v11 attributes:transcriptEmphasizedFontAttributes];

  return v12;
}

- (BOOL)shouldShowStewieTextButton
{
  isEmergency = [(CKStewieTranscriptResumeButtonsChatItem *)self isEmergency];
  mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
  v4 = mEMORY[0x1E69A5B00];
  if (isEmergency)
  {
    shouldShowTextEmergencyServicesButton = [mEMORY[0x1E69A5B00] shouldShowTextEmergencyServicesButton];
  }

  else
  {
    shouldShowTextEmergencyServicesButton = [mEMORY[0x1E69A5B00] shouldShowTextRoadsideProviderButton];
  }

  v6 = shouldShowTextEmergencyServicesButton;

  return v6;
}

@end