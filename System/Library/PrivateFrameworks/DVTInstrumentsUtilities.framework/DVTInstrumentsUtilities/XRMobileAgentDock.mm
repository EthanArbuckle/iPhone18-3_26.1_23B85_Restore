@interface XRMobileAgentDock
- (BOOL)waitForAgentToDock;
- (XRMobileAgentDock)init;
- (void)abandon;
- (void)dealloc;
- (void)executeDockedAgent;
- (void)receiveMobileAgent:(id)agent;
- (void)releaseDockedAgent;
@end

@implementation XRMobileAgentDock

- (XRMobileAgentDock)init
{
  v6.receiver = self;
  v6.super_class = XRMobileAgentDock;
  v2 = [(XRMobileAgentDock *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    waitingAgents = v2->_waitingAgents;
    v2->_waitingAgents = v3;

    pthread_mutex_init(&v2->_mutex, 0);
    pthread_cond_init(&v2->_cond, 0);
  }

  return v2;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_mutex);
  pthread_cond_destroy(&self->_cond);
  v3.receiver = self;
  v3.super_class = XRMobileAgentDock;
  [(XRMobileAgentDock *)&v3 dealloc];
}

- (void)abandon
{
  pthread_mutex_lock(&self->_mutex);
  self->_abandoned = 1;
  objc_msgSend_removeAllObjects(self->_waitingAgents, v3, v4, v5, v6);
  dockedAgent = self->_dockedAgent;
  self->_dockedAgent = 0;

  pthread_cond_signal(&self->_cond);

  pthread_mutex_unlock(&self->_mutex);
}

- (void)receiveMobileAgent:(id)agent
{
  if (agent)
  {
    agentCopy = agent;
    pthread_mutex_lock(&self->_mutex);
    objc_msgSend_addObject_(self->_waitingAgents, v5, agentCopy, v6, v7);

    pthread_cond_signal(&self->_cond);

    pthread_mutex_unlock(&self->_mutex);
  }
}

- (BOOL)waitForAgentToDock
{
  pthread_mutex_lock(&self->_mutex);
  do
  {
    v7 = objc_msgSend_firstObject(self->_waitingAgents, v3, v4, v5, v6);
    dockedAgent = self->_dockedAgent;
    self->_dockedAgent = v7;

    if (self->_dockedAgent)
    {
      objc_msgSend_removeObjectAtIndex_(self->_waitingAgents, v9, 0, v10, v11);
    }

    else
    {
      pthread_cond_wait(&self->_cond, &self->_mutex);
    }
  }

  while (!self->_dockedAgent);
  pthread_mutex_unlock(&self->_mutex);
  self->_agentExecuted = 0;
  return self->_dockedAgent != 0;
}

- (void)executeDockedAgent
{
  if (!self->_agentExecuted)
  {
    dockedAgent = self->_dockedAgent;
    if (dockedAgent)
    {
      objc_msgSend_hello(dockedAgent, a2, v2, v3, v4);
      self->_agentExecuted = 1;
    }
  }
}

- (void)releaseDockedAgent
{
  if (self->_dockedAgent)
  {
    objc_msgSend_executeDockedAgent(self, a2, v2, v3, v4);
    objc_msgSend_goodbye(self->_dockedAgent, v6, v7, v8, v9);
    self->_agentExecuted = 0;
    dockedAgent = self->_dockedAgent;
    self->_dockedAgent = 0;
  }
}

@end