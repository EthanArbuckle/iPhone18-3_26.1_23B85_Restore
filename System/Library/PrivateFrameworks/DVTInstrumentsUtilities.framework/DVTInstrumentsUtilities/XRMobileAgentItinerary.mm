@interface XRMobileAgentItinerary
- (void)_visitNextStop:(id)stop;
- (void)finishedWithMode:(id)mode;
- (void)setNextStop:(id)stop mode:(id)mode ticket:(id)ticket desiredQoS:(unsigned int)s;
@end

@implementation XRMobileAgentItinerary

- (void)_visitNextStop:(id)stop
{
  v65 = *MEMORY[0x277D85DE8];
  stopCopy = stop;
  v9 = stopCopy;
  self->_updated = 0;
  nextMovementType = self->_nextMovementType;
  if ((nextMovementType - 1) < 2)
  {
    if (!self->_nextStop)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        sub_2480B4124(v9, self, v46, v47, v48);
      }

      objc_msgSend_finishedWithMode_(self, v45, @"Failed", v47, v48);
      if (self->_nextMovementType != 3)
      {
        sub_2480B41E4();
      }

      objc_msgSend__visitNextStop_(self, v49, v9, v50, v51);
      goto LABEL_21;
    }

    objc_msgSend_setMode_(stopCopy, v5, self->_nextMode, v7, v8);
    v11 = self->_nextStop;
    objc_storeStrong((v9 + 8), self->_nextStopTicket);
    *(v9 + 20) = self->_nextQoS;
    *(v9 + 16) = self->_nextMovementType;
    objc_storeStrong(&self->_currentStop, self->_nextStop);
    self->_nextMovementType = 0;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (nextMovementType)
    {
      if (nextMovementType != 3)
      {
        goto LABEL_15;
      }

      objc_msgSend_setMode_(stopCopy, v5, self->_nextMode, v7, v8);
      v11 = self->_finalDestination;
      objc_storeStrong((v9 + 8), self->_finalDestinationTicket);
      *(v9 + 16) = 3;
      nextMode = self->_nextMode;
      self->_nextMode = 0;

      nextStop = self->_nextStop;
      self->_nextStop = 0;

      nextStopTicket = self->_nextStopTicket;
      self->_nextStopTicket = 0;

      currentStop = self->_currentStop;
      self->_currentStop = 0;

      finalDestination = self->_finalDestination;
      self->_finalDestination = 0;

      finalDestinationTicket = self->_finalDestinationTicket;
      self->_finalDestinationTicket = 0;

      if (!v11)
      {
        goto LABEL_15;
      }

LABEL_8:
      v18 = qword_27EE86478;
      v19 = os_signpost_id_make_with_pointer(qword_27EE86478, v9);
      if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v20 = v19;
        if (os_signpost_enabled(v18))
        {
          v25 = objc_msgSend_agentDiagnosticsName(v9, v21, v22, v23, v24);
          v30 = objc_msgSend_agentStopDiagnosticsTypeCode(v11, v26, v27, v28, v29);
          v35 = objc_msgSend_mode(v9, v31, v32, v33, v34);
          v36 = *(v9 + 16);
          v57 = 138413058;
          v58 = v25;
          v59 = 1024;
          v60 = v30;
          v61 = 2112;
          v62 = v35;
          v63 = 1024;
          v64 = v36;
          _os_signpost_emit_with_name_impl(&dword_248087000, v18, OS_SIGNPOST_EVENT, v20, "Mobile Agent Moved", "Agent %@ received by %d for mode %@ movement type %d", &v57, 0x22u);
        }
      }

      objc_msgSend_receiveMobileAgent_(v11, v37, v9, v38, v39);
      goto LABEL_21;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2480B408C(v9, v40, v41, v42, v43);
    }

    v44 = self->_nextMode;
    self->_nextMode = @"Failed";

    self->_nextMovementType = 3;
  }

LABEL_15:
  if (*(v9 + 16) == 3)
  {
    objc_msgSend_goodbye(v9, v5, v6, v7, v8);
LABEL_21:

    v52 = *MEMORY[0x277D85DE8];
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    sub_2480B4210(v9, v53, v54, v55, v56);
  }

  _os_crash();
  __break(1u);
}

- (void)finishedWithMode:(id)mode
{
  modeCopy = mode;
  nextStop = self->_nextStop;
  self->_nextStop = 0;

  nextStopTicket = self->_nextStopTicket;
  self->_nextStopTicket = 0;

  nextMode = self->_nextMode;
  self->_nextMode = modeCopy;

  self->_nextMovementType = 3;
  self->_updated = 1;
}

- (void)setNextStop:(id)stop mode:(id)mode ticket:(id)ticket desiredQoS:(unsigned int)s
{
  stopCopy = stop;
  modeCopy = mode;
  ticketCopy = ticket;
  if (!stopCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    sub_2480B42CC(self);
  }

  nextStop = self->_nextStop;
  self->_nextStop = stopCopy;
  v14 = stopCopy;

  nextStopTicket = self->_nextStopTicket;
  self->_nextStopTicket = ticketCopy;
  v16 = ticketCopy;

  nextMode = self->_nextMode;
  self->_nextMode = modeCopy;

  self->_nextQoS = s;
  nextMovementType = self->_nextMovementType;
  if (nextMovementType <= 3 && nextMovementType != 1)
  {
    self->_nextMovementType = 1;
  }

  self->_updated = 1;
}

@end