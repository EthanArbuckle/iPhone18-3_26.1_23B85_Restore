@interface XRMobileAgentQueueStop
+ (void)initialize;
- (XRMobileAgentQueueStop)init;
- (XRMobileAgentQueueStop)initWithDispatchQueue:(id)queue funnelTarget:(id)target;
- (XRMobileAgentQueueStop)initWithMainQueue;
- (void)_executeWelcomeForAgent:(id)agent;
- (void)_runAgentEpilogue:(id)epilogue;
- (void)_runAgentPrologue:(id)prologue;
- (void)_welcomeAgent:(id)agent;
- (void)_welcomeAgent:(id)agent followedByAgents:(id)agents;
- (void)_welcomeAgents:(id)agents;
- (void)receiveMobileAgent:(id)agent;
@end

@implementation XRMobileAgentQueueStop

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [XRMobileAgentQueueStop alloc];
    v3 = MEMORY[0x277D85CD0];
    v6 = objc_msgSend_initWithDispatchQueue_funnelTarget_(v2, v4, MEMORY[0x277D85CD0], MEMORY[0x277D85CD0], v5);
    v7 = qword_27EE86770;
    qword_27EE86770 = v6;

    v8 = [XRMobileAgentQueueStop alloc];
    v9 = dispatch_get_global_queue(25, 0);
    v13 = objc_msgSend_initWithDispatchQueue_(v8, v10, v9, v11, v12);
    v14 = qword_27EE86778;
    qword_27EE86778 = v13;

    v15 = [XRMobileAgentQueueStop alloc];
    v16 = dispatch_get_global_queue(33, 0);
    v20 = objc_msgSend_initWithDispatchQueue_(v15, v17, v16, v18, v19);
    v21 = qword_27EE86780;
    qword_27EE86780 = v20;

    v22 = [XRMobileAgentQueueStop alloc];
    v23 = dispatch_get_global_queue(17, 0);
    v27 = objc_msgSend_initWithDispatchQueue_(v22, v24, v23, v25, v26);
    v28 = qword_27EE86788;
    qword_27EE86788 = v27;

    v29 = [XRMobileAgentQueueStop alloc];
    v30 = dispatch_get_global_queue(9, 0);
    v34 = objc_msgSend_initWithDispatchQueue_(v29, v31, v30, v32, v33);
    v35 = qword_27EE86790;
    qword_27EE86790 = v34;

    *(qword_27EE86770 + 24) = 4;
    *(qword_27EE86780 + 24) = 5;
    *(qword_27EE86778 + 24) = 6;
    *(qword_27EE86788 + 24) = 7;
    *(qword_27EE86790 + 24) = 8;
  }
}

- (XRMobileAgentQueueStop)initWithDispatchQueue:(id)queue funnelTarget:(id)target
{
  queueCopy = queue;
  targetCopy = target;
  v22.receiver = self;
  v22.super_class = XRMobileAgentQueueStop;
  v8 = [(XRMobileAgentQueueStop *)&v22 init];
  v12 = v8;
  if (v8)
  {
    v13 = objc_msgSend_methodForSelector_(v8, v9, sel__holdReceivedAgent_ticket_, v10, v11);
    v12->_holdIsPossible = v13 != objc_msgSend_instanceMethodForSelector_(XRMobileAgentQueueStop, v14, sel__holdReceivedAgent_ticket_, v15, v16);
    if (targetCopy)
    {
      v17 = dispatch_queue_create_with_target_V2("com.apple.dt.agent-stop-funnel", 0, targetCopy);
    }

    else
    {
      v17 = dispatch_queue_create("com.apple.dt.agent-stop-funnel", 0);
    }

    funnelQueue = v12->_funnelQueue;
    v12->_funnelQueue = v17;

    v19 = dispatch_queue_create_with_target_V2("com.apple.dt.agent-exec", 0, queueCopy);
    executionQueue = v12->_executionQueue;
    v12->_executionQueue = v19;

    v12->_diagnosticID = 3;
  }

  return v12;
}

- (XRMobileAgentQueueStop)initWithMainQueue
{
  v3 = MEMORY[0x277D85CD0];
  v4 = objc_msgSend_initWithDispatchQueue_funnelTarget_(self, a2, MEMORY[0x277D85CD0], MEMORY[0x277D85CD0], v2);

  return v4;
}

- (XRMobileAgentQueueStop)init
{
  v3 = dispatch_get_global_queue(17, 0);
  v7 = objc_msgSend_initWithDispatchQueue_(self, v4, v3, v5, v6);

  return v7;
}

- (void)_runAgentPrologue:(id)prologue
{
  prologueCopy = prologue;
  v11 = objc_msgSend_ticket(prologueCopy, v5, v6, v7, v8);
  objc_msgSend__prepareAgentToExecute_withTicket_(self, v9, prologueCopy, v11, v10);
}

- (void)_runAgentEpilogue:(id)epilogue
{
  epilogueCopy = epilogue;
  v8 = objc_msgSend_ticket(epilogueCopy, v4, v5, v6, v7);
  objc_msgSend__escortAgentToExit_withTicket_(self, v9, epilogueCopy, v8, v10);

  objc_msgSend_goodbye(epilogueCopy, v11, v12, v13, v14);
}

- (void)_executeWelcomeForAgent:(id)agent
{
  agentCopy = agent;
  objc_msgSend__runAgentPrologue_(self, v4, agentCopy, v5, v6);
  objc_msgSend__executeAgent_(self, v7, agentCopy, v8, v9);
  objc_msgSend__runAgentEpilogue_(self, v10, agentCopy, v11, v12);
}

- (void)receiveMobileAgent:(id)agent
{
  agentCopy = agent;
  if (!objc_msgSend_movementType(agentCopy, v5, v6, v7, v8))
  {
    sub_2480B3660();
  }

  if (self->_holdIsPossible)
  {
    funnelQueue = self->_funnelQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_248090C90;
    v13[3] = &unk_278EFA4A8;
    v13[4] = self;
    v14 = agentCopy;
    dispatch_async(funnelQueue, v13);
  }

  else
  {
    objc_msgSend__welcomeAgent_(self, v9, agentCopy, v10, v11);
  }
}

- (void)_welcomeAgent:(id)agent
{
  agentCopy = agent;
  if (!objc_msgSend_movementType(agentCopy, v5, v6, v7, v8))
  {
    sub_2480B368C();
  }

  executionQueue = self->_executionQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_248090E18;
  v11[3] = &unk_278EFA4A8;
  v11[4] = self;
  v12 = agentCopy;
  v10 = agentCopy;
  dispatch_async(executionQueue, v11);
}

- (void)_welcomeAgents:(id)agents
{
  agentsCopy = agents;
  v27 = &v29;
  v8 = v28;
  if (!v8)
  {
    objc_msgSend__welcomeAgent_(self, v5, agentsCopy, v6, v7);
LABEL_10:
    executionQueue = self->_executionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_248090FEC;
    block[3] = &unk_278EFA4D0;
    block[4] = self;
    v25 = agentsCopy;
    v26 = v8;
    dispatch_async(executionQueue, block);

    goto LABEL_11;
  }

  v9 = v27++;
  v10 = *v9;
  if (!v10)
  {
    goto LABEL_10;
  }

  v14 = v10;
  v15 = 0;
  do
  {
    if (!v15)
    {
      v15 = objc_opt_new();
    }

    objc_msgSend_addObject_(v15, v11, v14, v12, v13);
    v16 = v27++;
    v17 = *v16;

    v14 = v17;
  }

  while (v17);
  if (!v15)
  {
    goto LABEL_10;
  }

  v18 = self->_executionQueue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_248091058;
  v21[3] = &unk_278EFA4A8;
  v22 = v15;
  selfCopy = self;
  v19 = v15;
  dispatch_async(v18, v21);

LABEL_11:
}

- (void)_welcomeAgent:(id)agent followedByAgents:(id)agents
{
  agentCopy = agent;
  agentsCopy = agents;
  executionQueue = self->_executionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_248091330;
  block[3] = &unk_278EFA4D0;
  block[4] = self;
  v12 = agentCopy;
  v13 = agentsCopy;
  v9 = agentsCopy;
  v10 = agentCopy;
  dispatch_async(executionQueue, block);
}

@end