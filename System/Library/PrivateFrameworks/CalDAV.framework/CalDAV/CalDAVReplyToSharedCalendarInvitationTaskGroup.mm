@interface CalDAVReplyToSharedCalendarInvitationTaskGroup
- (CalDAVReplyToSharedCalendarInvitationTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager;
- (id)generateReply;
- (void)startTaskGroup;
- (void)task:(id)task didFinishWithError:(id)error;
@end

@implementation CalDAVReplyToSharedCalendarInvitationTaskGroup

- (CalDAVReplyToSharedCalendarInvitationTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager
{
  providerCopy = provider;
  managerCopy = manager;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Initializing this class instance with an inherited initializer not allowed." userInfo:0];
  objc_exception_throw(v7);
}

- (void)startTaskGroup
{
  v3 = [CalDAVPostWithSharedAsResponse alloc];
  generateReply = [(CalDAVReplyToSharedCalendarInvitationTaskGroup *)self generateReply];
  calendarHomeURL = [(CalDAVReplyToSharedCalendarInvitationTaskGroup *)self calendarHomeURL];
  v8 = [(CoreDAVPostTask *)v3 initWithDataPayload:generateReply dataContentType:@"text/xml" atURL:calendarHomeURL previousETag:0];

  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [(CalDAVPostWithSharedAsResponse *)v8 setAccountInfoProvider:accountInfoProvider];

  [(CalDAVPostWithSharedAsResponse *)v8 setDelegate:self];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskManager submitQueuedCoreDAVTask:v8];
}

- (id)generateReply
{
  v3 = objc_alloc_init(MEMORY[0x277CFDCA0]);
  v4 = *MEMORY[0x277CFDE90];
  [v3 startElement:? inNamespace:? withAttributeNamesAndValues:?];
  v5 = *MEMORY[0x277CFDF38];
  v6 = *MEMORY[0x277CFDEF8];
  invitation = [(CalDAVReplyToSharedCalendarInvitationTaskGroup *)self invitation];
  href = [invitation href];
  payloadAsString = [href payloadAsString];
  [v3 appendElement:v5 inNamespace:v6 withStringContent:payloadAsString withAttributeNamesAndValues:0];

  acceptInvitation = [(CalDAVReplyToSharedCalendarInvitationTaskGroup *)self acceptInvitation];
  v11 = cdXMLCalendarServerInviteAccepted;
  if (!acceptInvitation)
  {
    v11 = cdXMLCalendarServerInviteDeclined;
  }

  [v3 appendElement:*v11 inNamespace:v4 withStringContent:0 withAttributeNamesAndValues:0];
  [v3 startElement:@"hosturl" inNamespace:v4 withAttributeNamesAndValues:0];
  invitation2 = [(CalDAVReplyToSharedCalendarInvitationTaskGroup *)self invitation];
  hostURL = [invitation2 hostURL];
  href2 = [hostURL href];
  payloadAsString2 = [href2 payloadAsString];
  [v3 appendElement:v5 inNamespace:v6 withStringContent:payloadAsString2 withAttributeNamesAndValues:0];

  [v3 endElement:@"hosturl" inNamespace:v4];
  invitation3 = [(CalDAVReplyToSharedCalendarInvitationTaskGroup *)self invitation];
  v17 = [invitation3 uid];
  payloadAsString3 = [v17 payloadAsString];
  [v3 appendElement:@"in-reply-to" inNamespace:v4 withStringContent:payloadAsString3 withAttributeNamesAndValues:0];

  invitation4 = [(CalDAVReplyToSharedCalendarInvitationTaskGroup *)self invitation];
  summary = [invitation4 summary];

  if (summary)
  {
    invitation5 = [(CalDAVReplyToSharedCalendarInvitationTaskGroup *)self invitation];
    summary2 = [invitation5 summary];
    payloadAsString4 = [summary2 payloadAsString];
    [v3 appendElement:@"summary" inNamespace:v4 withStringContent:payloadAsString4 withAttributeNamesAndValues:0];
  }

  [v3 endElement:@"invite-reply" inNamespace:v4];
  data = [v3 data];

  return data;
}

- (void)task:(id)task didFinishWithError:(id)error
{
  errorCopy = error;
  responseBodyParser = [task responseBodyParser];
  if (!errorCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      rootElement = [responseBodyParser rootElement];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        rootElement2 = [responseBodyParser rootElement];
        href = [rootElement2 href];
        payloadAsFullURL = [href payloadAsFullURL];
        [(CalDAVReplyToSharedCalendarInvitationTaskGroup *)self setSharedAs:payloadAsFullURL];
      }
    }
  }

  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:errorCopy delegateCallbackBlock:0];
}

@end