@interface HTTP
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
@end

@implementation HTTP

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  selfCopy = self;
  sessionCopy = session;
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  v19 = sub_25B93C1F8;
  v24 = sub_25B946AD8();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v16 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](sessionCopy);
  v23 = &v16 - v16;
  MEMORY[0x277D82BE0](v8);
  MEMORY[0x277D82BE0](taskCopy);
  MEMORY[0x277D82BE0](redirectionCopy);
  MEMORY[0x277D82BE0](requestCopy);
  v18 = _Block_copy(handlerCopy);
  MEMORY[0x277D82BE0](self);
  sub_25B946AB8();
  v9 = swift_allocObject();
  v10 = v19;
  v11 = v23;
  v12 = redirectionCopy;
  v13 = taskCopy;
  v14 = v9;
  v15 = sessionCopy;
  v20 = v14;
  *(v14 + 16) = v18;
  sub_25B93BC4C(v15, v13, v12, v11, v10, v14);

  (*(v21 + 8))(v23, v24);
  MEMORY[0x277D82BD8](requestCopy);
  MEMORY[0x277D82BD8](selfCopy);
  MEMORY[0x277D82BD8](redirectionCopy);
  MEMORY[0x277D82BD8](taskCopy);
  MEMORY[0x277D82BD8](sessionCopy);
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  MEMORY[0x277D82BE0](session);
  MEMORY[0x277D82BE0](task);
  MEMORY[0x277D82BE0](metrics);
  MEMORY[0x277D82BE0](self);
  sub_25B93C200(session, task, metrics);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](metrics);
  MEMORY[0x277D82BD8](task);
  MEMORY[0x277D82BD8](session);
}

@end