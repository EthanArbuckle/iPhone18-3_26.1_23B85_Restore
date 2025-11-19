@interface CalDAVReplyToSharedCalendarInvitationTaskGroup
- (CalDAVReplyToSharedCalendarInvitationTaskGroup)initWithAccountInfoProvider:(id)a3 taskManager:(id)a4;
- (id)generateReply;
- (void)startTaskGroup;
- (void)task:(id)a3 didFinishWithError:(id)a4;
@end

@implementation CalDAVReplyToSharedCalendarInvitationTaskGroup

- (CalDAVReplyToSharedCalendarInvitationTaskGroup)initWithAccountInfoProvider:(id)a3 taskManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Initializing this class instance with an inherited initializer not allowed." userInfo:0];
  objc_exception_throw(v7);
}

- (void)startTaskGroup
{
  v3 = [CalDAVPostWithSharedAsResponse alloc];
  v4 = [(CalDAVReplyToSharedCalendarInvitationTaskGroup *)self generateReply];
  v5 = [(CalDAVReplyToSharedCalendarInvitationTaskGroup *)self calendarHomeURL];
  v8 = [(CoreDAVPostTask *)v3 initWithDataPayload:v4 dataContentType:@"text/xml" atURL:v5 previousETag:0];

  v6 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [(CalDAVPostWithSharedAsResponse *)v8 setAccountInfoProvider:v6];

  [(CalDAVPostWithSharedAsResponse *)v8 setDelegate:self];
  v7 = [(CoreDAVTaskGroup *)self taskManager];
  [v7 submitQueuedCoreDAVTask:v8];
}

- (id)generateReply
{
  v3 = objc_alloc_init(MEMORY[0x277CFDCA0]);
  v4 = *MEMORY[0x277CFDE90];
  [v3 startElement:? inNamespace:? withAttributeNamesAndValues:?];
  v5 = *MEMORY[0x277CFDF38];
  v6 = *MEMORY[0x277CFDEF8];
  v7 = [(CalDAVReplyToSharedCalendarInvitationTaskGroup *)self invitation];
  v8 = [v7 href];
  v9 = [v8 payloadAsString];
  [v3 appendElement:v5 inNamespace:v6 withStringContent:v9 withAttributeNamesAndValues:0];

  v10 = [(CalDAVReplyToSharedCalendarInvitationTaskGroup *)self acceptInvitation];
  v11 = cdXMLCalendarServerInviteAccepted;
  if (!v10)
  {
    v11 = cdXMLCalendarServerInviteDeclined;
  }

  [v3 appendElement:*v11 inNamespace:v4 withStringContent:0 withAttributeNamesAndValues:0];
  [v3 startElement:@"hosturl" inNamespace:v4 withAttributeNamesAndValues:0];
  v12 = [(CalDAVReplyToSharedCalendarInvitationTaskGroup *)self invitation];
  v13 = [v12 hostURL];
  v14 = [v13 href];
  v15 = [v14 payloadAsString];
  [v3 appendElement:v5 inNamespace:v6 withStringContent:v15 withAttributeNamesAndValues:0];

  [v3 endElement:@"hosturl" inNamespace:v4];
  v16 = [(CalDAVReplyToSharedCalendarInvitationTaskGroup *)self invitation];
  v17 = [v16 uid];
  v18 = [v17 payloadAsString];
  [v3 appendElement:@"in-reply-to" inNamespace:v4 withStringContent:v18 withAttributeNamesAndValues:0];

  v19 = [(CalDAVReplyToSharedCalendarInvitationTaskGroup *)self invitation];
  v20 = [v19 summary];

  if (v20)
  {
    v21 = [(CalDAVReplyToSharedCalendarInvitationTaskGroup *)self invitation];
    v22 = [v21 summary];
    v23 = [v22 payloadAsString];
    [v3 appendElement:@"summary" inNamespace:v4 withStringContent:v23 withAttributeNamesAndValues:0];
  }

  [v3 endElement:@"invite-reply" inNamespace:v4];
  v24 = [v3 data];

  return v24;
}

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v12 = a4;
  v6 = [a3 responseBodyParser];
  if (!v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 rootElement];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = [v6 rootElement];
        v10 = [v9 href];
        v11 = [v10 payloadAsFullURL];
        [(CalDAVReplyToSharedCalendarInvitationTaskGroup *)self setSharedAs:v11];
      }
    }
  }

  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v12 delegateCallbackBlock:0];
}

@end