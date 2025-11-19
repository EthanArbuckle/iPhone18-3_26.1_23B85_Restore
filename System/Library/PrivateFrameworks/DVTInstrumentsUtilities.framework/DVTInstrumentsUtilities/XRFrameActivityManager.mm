@interface XRFrameActivityManager
+ (void)initialize;
- (XRFrameActivityManager)init;
- (XRFrameActivityManager)initWithRing:(id)a3;
- (id).cxx_construct;
- (id)scheduleActivityAsOperation:(id)a3;
- (void)_reevaluateArrivingAgent:(id)a3;
- (void)dealloc;
- (void)setupVisitDuringMinorFrame:(id)a3 agent:(id)a4 mode:(id)a5 ticket:(id)a6;
@end

@implementation XRFrameActivityManager

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v6 = objc_msgSend_internalSignposts(XRFeatureFlag, v2, v3, v4, v5);
    byte_27EE869B8 = v6;
    if (v6)
    {
      qword_27EE863B0 = sub_2480A8210();

      MEMORY[0x2821F96F8]();
    }
  }
}

- (XRFrameActivityManager)initWithRing:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = XRFrameActivityManager;
  if ([(XRFrameActivityManager *)&v20 init])
  {
    v5 = objc_opt_class();
    objc_msgSend__establishesAffinity(v5, v6, v7, v8, v9);
    v10 = objc_opt_class();
    objc_msgSend_enableConcurrentActivities(v10, v11, v12, v13, v14);
    if (v4)
    {
      objc_msgSend__parent(v4, v15, v16, v17, v18);
    }

    sub_2480A14C4();
  }

  return 0;
}

- (XRFrameActivityManager)init
{
  v3.receiver = self;
  v3.super_class = XRFrameActivityManager;
  return [(XRFrameActivityManager *)&v3 init];
}

- (void)dealloc
{
  ptr = self->_managerImpl.__ptr_;
  if (ptr)
  {
    sub_2480A9030(ptr, 0);
  }

  v4 = self->_secondTierManagerImpl.__ptr_;
  if (v4 && v4 != self->_managerImpl.__ptr_)
  {
    sub_2480A9030(v4, 0);
  }

  v5.receiver = self;
  v5.super_class = XRFrameActivityManager;
  [(XRFrameActivityManager *)&v5 dealloc];
}

- (id)scheduleActivityAsOperation:(id)a3
{
  v4 = a3;
  v5 = [XRFrameActivityBlockAgent alloc];
  v9 = objc_msgSend_initWithBlock_(v5, v6, v4, v7, v8);
  objc_msgSend_activateAtStop_activationTicket_finalDestination_finalTicket_(v9, v10, self, 0, 0, 0);
  v15 = objc_msgSend_operationRepresentation(v9, v11, v12, v13, v14);

  return v15;
}

- (void)setupVisitDuringMinorFrame:(id)a3 agent:(id)a4 mode:(id)a5 ticket:(id)a6
{
  v23 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ((objc_msgSend_holdsItinerary_(v11, v14, v23, v15, v16) & 1) == 0)
  {
    v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18, v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, a2, self, @"XRFrameActivityManager.mm", 164, @"Invalid parameter not satisfying: %@", @"[agent holdsItinerary:itinerary]");
  }

  objc_msgSend_setNextStop_mode_ticket_(v23, v17, self, v12, v13);
}

- (void)_reevaluateArrivingAgent:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_desiredQoS(v4, v5, v6, v7, v8);
  v10 = 24;
  if (v9 > 0x18)
  {
    v10 = 8;
  }

  v11 = *(&self->super.isa + v10);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2480A109C;
  v13[3] = &unk_278EFC288;
  v13[4] = self;
  v12 = v4;
  v14 = v12;
  sub_2480A8B28(v11, v13);
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end