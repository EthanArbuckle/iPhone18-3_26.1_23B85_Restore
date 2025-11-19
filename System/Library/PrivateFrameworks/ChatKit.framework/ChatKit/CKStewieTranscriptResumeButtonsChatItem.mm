@interface CKStewieTranscriptResumeButtonsChatItem
- (BOOL)isEmergency;
- (BOOL)shouldShowStewieTextButton;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
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

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  if (a4)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 transcriptBoldTextAlignmentInsets];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    a4->top = v10;
    a4->left = v12;
    a4->bottom = v14;
    a4->right = v16;
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
  v2 = [(CKStewieTranscriptResumeButtonsChatItem *)self imStewieResumeItem];
  v3 = [v2 chatIdentifier];

  return v3;
}

- (BOOL)isEmergency
{
  v2 = [(CKStewieTranscriptResumeButtonsChatItem *)self chatIdentifier];
  v3 = IMIsStringStewieEmergency();

  return v3;
}

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 transcriptEmphasizedFontAttributes];

  v5 = [(CKStewieTranscriptResumeButtonsChatItem *)self isEmergency];
  v6 = objc_alloc(MEMORY[0x1E696AAB0]);
  v7 = CKFrameworkBundle();
  v8 = v7;
  if (v5)
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
  v12 = [v6 initWithString:v11 attributes:v4];

  return v12;
}

- (BOOL)shouldShowStewieTextButton
{
  v2 = [(CKStewieTranscriptResumeButtonsChatItem *)self isEmergency];
  v3 = [MEMORY[0x1E69A5B00] sharedInstance];
  v4 = v3;
  if (v2)
  {
    v5 = [v3 shouldShowTextEmergencyServicesButton];
  }

  else
  {
    v5 = [v3 shouldShowTextRoadsideProviderButton];
  }

  v6 = v5;

  return v6;
}

@end