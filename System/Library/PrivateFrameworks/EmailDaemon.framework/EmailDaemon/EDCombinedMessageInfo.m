@interface EDCombinedMessageInfo
@end

@implementation EDCombinedMessageInfo

void __45___EDCombinedMessageInfo_deduplicatedMessage__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) combinedDate];
  [v3 setDate:v4];

  v5 = [*(a1 + 40) displayDate];
  [v3 setDisplayDate:v5];

  v6 = [*(a1 + 40) readLater];
  [v3 setReadLater:v6];

  v7 = [*(a1 + 40) sendLaterDate];
  [v3 setSendLaterDate:v7];

  v8 = [*(a1 + 40) followUp];
  [v3 setFollowUp:v8];

  v9 = [*(a1 + 40) category];
  [v3 setCategory:v9];

  [v3 setBusinessID:{objc_msgSend(*(a1 + 40), "businessID")}];
  v10 = [*(a1 + 40) businessLogoID];
  [v3 setBusinessLogoID:v10];

  v11 = [*(a1 + 40) subject];
  [v3 setSubject:v11];

  v12 = [*(a1 + 40) summary];
  [v3 setSummary:v12];

  v13 = [*(a1 + 40) senderList];
  [v3 setSenderList:v13];

  v14 = [*(a1 + 40) toList];
  [v3 setToList:v14];

  v15 = [*(a1 + 40) ccList];
  [v3 setCcList:v15];

  v16 = [*(a1 + 40) bccList];
  [v3 setBccList:v16];

  v17 = [*(a1 + 32) combinedMessageFlags];
  [v3 setFlags:v17];

  [v3 setIsBlocked:{objc_msgSend(*(a1 + 40), "isBlocked")}];
  [v3 setSearchResultType:{objc_msgSend(*(a1 + 40), "searchResultType")}];
  v18 = [*(a1 + 40) searchRelevanceScore];
  [v3 setSearchRelevanceScore:v18];

  [v3 setUnsubscribeType:{objc_msgSend(*(a1 + 40), "unsubscribeType")}];
  [v3 setHasAttachments:{objc_msgSend(*(a1 + 40), "hasAttachments")}];
  [v3 setIsAuthenticated:{objc_msgSend(*(a1 + 40), "isAuthenticated")}];
  [v3 setAllowAuthenticationWarning:{objc_msgSend(*(a1 + 40), "allowAuthenticationWarning")}];
  [v3 setConversationNotificationLevel:{objc_msgSend(*(a1 + 40), "conversationNotificationLevel")}];
  v19 = [*(a1 + 40) brandIndicatorLocation];
  [v3 setBrandIndicatorLocation:v19];

  [v3 setConversationID:{objc_msgSend(*(a1 + 40), "conversationID")}];
  v20 = [*(a1 + 40) documentID];
  [v3 setDocumentID:v20];

  v21 = [*(a1 + 40) searchableMessageID];
  [v3 setSearchableMessageID:v21];

  v22 = [*(a1 + 32) combinedMailboxes];
  if (![v22 count])
  {
    v23 = +[EDMessagePersistence log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __45___EDCombinedMessageInfo_deduplicatedMessage__block_invoke_cold_1(v26, [*(a1 + 32) lowestDatabaseID], v23);
    }
  }

  [v3 setMailboxes:v22];
  [v3 setIsToMe:{objc_msgSend(*(a1 + 40), "isToMe")}];
  [v3 setIsCCMe:{objc_msgSend(*(a1 + 40), "isCCMe")}];
  [v3 setIsVIP:{objc_msgSend(*(a1 + 40), "isVIP")}];
  v24 = [*(a1 + 40) loaderBlock];
  [v3 setLoaderBlock:v24];

  v25 = *MEMORY[0x1E69E9840];
}

id __38___EDCombinedMessageInfo_combinedDate__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 laterDate:?];

  return v2;
}

void __45___EDCombinedMessageInfo_deduplicatedMessage__block_invoke_cold_1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "No mailboxes were found for legacy message database id: %lld", buf, 0xCu);
}

@end