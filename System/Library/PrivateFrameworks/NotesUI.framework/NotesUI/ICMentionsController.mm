@interface ICMentionsController
@end

@implementation ICMentionsController

void __66__ICMentionsController_UI__registerForContactsChangedNotification__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v4, (a1 + 32));
  performBlockOnMainThread();
  objc_destroyWeak(&v4);
}

void __66__ICMentionsController_UI__registerForContactsChangedNotification__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateNoteParticipants];
}

uint64_t __67__ICMentionsController_UI__rangeOfUnconfirmedMentionInTextStorage___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    v5 = *(*(result + 32) + 8);
    *(v5 + 32) = a3;
    *(v5 + 40) = a4;
    *a5 = 1;
  }

  return result;
}

void __71__ICMentionsController_UI__sendPendingNotificationsAfterDelay_forNote___block_invoke(uint64_t a1)
{
  v2 = +[ICMentionNotificationController sharedController];
  [v2 sendPendingNotificationsCreatedBefore:*(a1 + 32)];
}

void __60__ICMentionsController_UI__hasMentionInTextStorage_inRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69B7958]];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }
}

void __60__ICMentionsController_UI__hasMentionInTextStorage_inRange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  v12 = ICDynamicCast();

  v8 = v12;
  if (v12)
  {
    v9 = [v12 attachment];
    v10 = [v9 typeUTI];
    v11 = [v10 isEqualToString:*MEMORY[0x1E69B7560]];

    if (v11)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a5 = 1;
    }

    v8 = v12;
  }
}

@end