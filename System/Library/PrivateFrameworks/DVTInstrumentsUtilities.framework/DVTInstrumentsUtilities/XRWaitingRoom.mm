@interface XRWaitingRoom
+ (void)initialize;
- (BOOL)_holdReceivedAgent:(id)a3 ticket:(id)a4;
- (XRWaitingRoom)initWithDispatchQueue:(id)a3 funnelTarget:(id)a4;
- (XRWaitingRoom)initWithOwner:(id)a3 dispatchQueue:(id)a4;
- (id)ownerTicketForAgent:(id)a3 leaveWhenEmpty:(BOOL)a4;
- (void)_escortAgentToExit:(id)a3 withTicket:(id)a4;
- (void)abandon;
- (void)setupMeetingWithOwner:(id)a3 worker:(id)a4 mode:(id)a5;
- (void)setupMeetingWithOwner:(id)a3 worker:(id)a4 team:(id)a5 mode:(id)a6;
- (void)setupOwnerVisit:(id)a3 leaveWhenEmpty:(BOOL)a4 mode:(id)a5;
@end

@implementation XRWaitingRoom

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_27EE86700 = objc_opt_new();

    MEMORY[0x2821F96F8]();
  }
}

- (XRWaitingRoom)initWithDispatchQueue:(id)a3 funnelTarget:(id)a4
{
  v12.receiver = self;
  v12.super_class = XRWaitingRoom;
  v4 = [(XRMobileAgentQueueStop *)&v12 initWithDispatchQueue:a3 funnelTarget:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    unaffiliatedVisitorsWaiting = v4->_unaffiliatedVisitorsWaiting;
    v4->_unaffiliatedVisitorsWaiting = v5;

    v7 = objc_opt_new();
    teamMembersWaiting = v4->_teamMembersWaiting;
    v4->_teamMembersWaiting = v7;

    v9 = objc_opt_new();
    activeTeams = v4->_activeTeams;
    v4->_activeTeams = v9;
  }

  return v4;
}

- (XRWaitingRoom)initWithOwner:(id)a3 dispatchQueue:(id)a4
{
  result = objc_msgSend_initWithDispatchQueue_(self, a2, a4, a4, v4);
  if (result)
  {
    result->_ownerID = a3;
  }

  return result;
}

- (BOOL)_holdReceivedAgent:(id)a3 ticket:(id)a4
{
  v182 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (self->_ownerID != v6)
  {
    v8 = v6;
    v13 = objc_msgSend_ticket(v8, v9, v10, v11, v12);
    v17 = v13;
    if (self->_abandoned)
    {
      objc_msgSend__welcomeAgent_(self, v14, v8, v15, v16);
    }

    else
    {
      visitingOwner = self->_visitingOwner;
      if (visitingOwner)
      {
        if (v13)
        {
          objc_msgSend_addObject_(self->_teamMembersWaiting, v14, v8, v15, v16);
          objc_msgSend_addObject_(self->_activeTeams, v62, v17, v63, v64);
          v69 = objc_msgSend_members(v17, v65, v66, v67, v68);
          isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v69, v70, self->_teamMembersWaiting, v71, v72);

          if (isSubsetOfSet)
          {
            teamMembersWaiting = self->_teamMembersWaiting;
            v79 = objc_msgSend_members(v17, v74, v75, v76, v77);
            objc_msgSend_minusSet_(teamMembersWaiting, v80, v79, v81, v82);

            objc_msgSend_setGreetingTeam_(self->_visitingOwner, v83, v17, v84, v85);
            v169 = 0u;
            v170 = 0u;
            v167 = 0u;
            v168 = 0u;
            v90 = objc_msgSend_members(v17, v86, v87, v88, v89);
            v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v91, &v167, v179, 16);
            if (v92)
            {
              v96 = v92;
              v97 = *v168;
              do
              {
                for (i = 0; i != v96; ++i)
                {
                  if (*v168 != v97)
                  {
                    objc_enumerationMutation(v90);
                  }

                  objc_msgSend_setRoomOwner_(*(*(&v167 + 1) + 8 * i), v93, self->_visitingOwner, v94, v95);
                }

                v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v93, &v167, v179, 16);
              }

              while (v96);
            }

            v99 = self->_visitingOwner;
            v104 = objc_msgSend_members(v17, v100, v101, v102, v103);
            objc_msgSend__welcomeAgent_followedByAgents_(self, v105, v99, v104, v106);

            v107 = self->_visitingOwner;
            self->_visitingOwner = 0;

            objc_msgSend_removeObject_(self->_activeTeams, v108, v17, v109, v110);
          }
        }

        else
        {
          objc_msgSend_setRoomOwner_(v8, v14, visitingOwner, v15, v16);
          objc_msgSend_setGreetingVisitor_(self->_visitingOwner, v114, v8, v115, v116);
          objc_msgSend__welcomeAgents_(self, v117, self->_visitingOwner, v118, v119, v8, 0);
          v120 = self->_visitingOwner;
          self->_visitingOwner = 0;
        }
      }

      else if (v13)
      {
        objc_msgSend_addObject_(self->_teamMembersWaiting, v14, v8, v15, v16);
        objc_msgSend_addObject_(self->_activeTeams, v111, v17, v112, v113);
      }

      else
      {
        objc_msgSend_addObject_(self->_unaffiliatedVisitorsWaiting, v14, v8, v15, v16);
      }
    }

    goto LABEL_49;
  }

  objc_storeStrong(&self->_visitingOwner, a3);
  if (self->_abandoned)
  {
    objc_msgSend__welcomeAgent_(self, v18, self->_visitingOwner, v20, v21);
    v22 = self->_visitingOwner;
    self->_visitingOwner = 0;
  }

  if (self->_visitingOwner)
  {
    if (objc_msgSend_count(self->_unaffiliatedVisitorsWaiting, v18, v19, v20, v21))
    {
      v27 = objc_msgSend_firstObject(self->_unaffiliatedVisitorsWaiting, v23, v24, v25, v26);
      objc_msgSend_removeObjectAtIndex_(self->_unaffiliatedVisitorsWaiting, v28, 0, v29, v30);
      objc_msgSend_setRoomOwner_(v27, v31, self->_visitingOwner, v32, v33);
      objc_msgSend_setGreetingVisitor_(self->_visitingOwner, v34, v27, v35, v36);
      objc_msgSend__welcomeAgents_(self, v37, self->_visitingOwner, v38, v39, v27, 0);
      v40 = self->_visitingOwner;
      self->_visitingOwner = 0;
    }

    if (self->_visitingOwner)
    {
      if (objc_msgSend_count(self->_teamMembersWaiting, v23, v24, v25, v26))
      {
        v166 = v7;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v45 = self->_activeTeams;
        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v175, v181, 16);
        if (v47)
        {
          v52 = v47;
          v53 = *v176;
LABEL_13:
          v54 = 0;
          while (1)
          {
            if (*v176 != v53)
            {
              objc_enumerationMutation(v45);
            }

            v55 = *(*(&v175 + 1) + 8 * v54);
            v56 = objc_msgSend_members(v55, v48, v49, v50, v51);
            v60 = objc_msgSend_isSubsetOfSet_(v56, v57, self->_teamMembersWaiting, v58, v59);

            if (v60)
            {
              break;
            }

            if (v52 == ++v54)
            {
              v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, &v175, v181, 16);
              if (v52)
              {
                goto LABEL_13;
              }

              goto LABEL_43;
            }
          }

          v121 = self->_teamMembersWaiting;
          v122 = objc_msgSend_members(v55, v48, v49, v50, v51);
          objc_msgSend_minusSet_(v121, v123, v122, v124, v125);

          objc_msgSend_setGreetingTeam_(self->_visitingOwner, v126, v55, v127, v128);
          v173 = 0u;
          v174 = 0u;
          v171 = 0u;
          v172 = 0u;
          v133 = objc_msgSend_members(v55, v129, v130, v131, v132);
          v135 = objc_msgSend_countByEnumeratingWithState_objects_count_(v133, v134, &v171, v180, 16);
          if (v135)
          {
            v139 = v135;
            v140 = *v172;
            do
            {
              for (j = 0; j != v139; ++j)
              {
                if (*v172 != v140)
                {
                  objc_enumerationMutation(v133);
                }

                objc_msgSend_setRoomOwner_(*(*(&v171 + 1) + 8 * j), v136, self->_visitingOwner, v137, v138);
              }

              v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(v133, v136, &v171, v180, 16);
            }

            while (v139);
          }

          v142 = self->_visitingOwner;
          v147 = objc_msgSend_members(v55, v143, v144, v145, v146);
          objc_msgSend__welcomeAgent_followedByAgents_(self, v148, v142, v147, v149);

          v150 = self->_visitingOwner;
          self->_visitingOwner = 0;

          v151 = v55;
          v7 = v166;
          if (v151)
          {
            objc_msgSend_removeObject_(self->_activeTeams, v41, v151, v43, v44);
            v45 = v151;
            goto LABEL_43;
          }
        }

        else
        {
LABEL_43:

          v7 = v166;
        }
      }

      v152 = self->_visitingOwner;
      if (v152)
      {
        v153 = objc_msgSend_ticket(v152, v41, v42, v43, v44);
        v154 = qword_27EE86700;

        if (v153 == v154)
        {
          objc_msgSend_setGreetingTeam_(self->_visitingOwner, v155, 0, v156, v157);
          objc_msgSend_setGreetingVisitor_(self->_visitingOwner, v158, 0, v159, v160);
          objc_msgSend__welcomeAgent_(self, v161, self->_visitingOwner, v162, v163);
          v8 = self->_visitingOwner;
          self->_visitingOwner = 0;
LABEL_49:
        }
      }
    }
  }

  v164 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_escortAgentToExit:(id)a3 withTicket:(id)a4
{
  v5 = a3;
  v12 = v5;
  if (self->_ownerID == v5)
  {
    objc_msgSend_setGreetingVisitor_(v5, v6, 0, v7, v8);
    objc_msgSend_setGreetingTeam_(v12, v9, 0, v10, v11);
  }

  else
  {
    objc_msgSend_setRoomOwner_(v5, v6, 0, v7, v8);
  }
}

- (void)setupMeetingWithOwner:(id)a3 worker:(id)a4 mode:(id)a5
{
  v13 = a3;
  v8 = a5;
  if ((objc_msgSend_holdsItinerary_(a4, v9, v13, v10, v11) & 1) == 0)
  {
    sub_2480B3378();
  }

  objc_msgSend_setNextStop_mode_ticket_(v13, v12, self, v8, 0);
}

- (void)setupMeetingWithOwner:(id)a3 worker:(id)a4 team:(id)a5 mode:(id)a6
{
  v29 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a3;
  if ((objc_msgSend_holdsItinerary_(v29, v13, v12, v14, v15) & 1) == 0)
  {
    sub_2480B33EC();
  }

  v20 = objc_msgSend_members(v10, v16, v17, v18, v19);
  v24 = objc_msgSend_containsObject_(v20, v21, v29, v22, v23);

  if ((v24 & 1) == 0)
  {
    sub_2480B3460();
  }

  v27 = objc_msgSend_visitorTicketForAgent_team_(self, v25, v29, v10, v26);
  objc_msgSend_setNextStop_mode_ticket_(v12, v28, self, v11, v27);
}

- (id)ownerTicketForAgent:(id)a3 leaveWhenEmpty:(BOOL)a4
{
  v4 = a4;
  if (self->_ownerID != a3)
  {
    sub_2480B34D4();
  }

  if (v4)
  {
    v5 = qword_27EE86700;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setupOwnerVisit:(id)a3 leaveWhenEmpty:(BOOL)a4 mode:(id)a5
{
  if (a4)
  {
    objc_msgSend_setNextStop_mode_ticket_(a3, a2, self, a5, qword_27EE86700);
  }

  else
  {
    objc_msgSend_setNextStop_mode_ticket_(a3, a2, self, a5, 0);
  }
}

- (void)abandon
{
  v6 = objc_msgSend__funnelQueue(self, a2, v2, v3, v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_248088FE0;
  block[3] = &unk_278EFA258;
  block[4] = self;
  dispatch_async(v6, block);
}

@end