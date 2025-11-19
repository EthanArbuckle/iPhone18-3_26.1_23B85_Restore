@interface XRFrameRing
- (XRFrameRing)initWithMinorFrameCount:(unsigned __int8)a3;
- (id).cxx_construct;
- (shared_ptr<xray::scheduler::Ring>)_parent;
- (void)_moveToCommutator:(void *)a3;
- (void)assignActivityManager:(id)a3 frame:(id)a4;
- (void)assignActivityManager:(id)a3 slot:(unsigned __int8)a4;
@end

@implementation XRFrameRing

- (XRFrameRing)initWithMinorFrameCount:(unsigned __int8)a3
{
  v5 = a3;
  v4.receiver = self;
  v4.super_class = XRFrameRing;
  if ([(XRFrameRing *)&v4 init])
  {
    sub_24808A868();
  }

  return 0;
}

- (void)assignActivityManager:(id)a3 frame:(id)a4
{
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_24808A344;
  v11[3] = &unk_278EFA2C8;
  v11[4] = self;
  v12 = v6;
  v7 = v6;
  objc_msgSend_enumerateIndexesUsingBlock_(a4, v8, v11, v9, v10);
}

- (void)assignActivityManager:(id)a3 slot:(unsigned __int8)a4
{
  v4 = a4;
  v16 = a3;
  if (!self->_ringImpl.__ptr_)
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v16, *MEMORY[0x277CBE658], @"Manager %@ attempting to be assigned to a ring that has already been added to a commutator.", v8, v16);
  }

  v9 = objc_msgSend_objectAtIndexedSubscript_(self->_managersBySlot, v6, v4, v7, v8);
  if (objc_msgSend_containsObject_(v9, v10, v16, v11, v12))
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v16, *MEMORY[0x277CBE658], @"Manager %@ added twice to the same slot.", v15, v16);
  }

  else
  {
    objc_msgSend_addObject_(v9, v13, v16, v14, v15);
  }
}

- (void)_moveToCommutator:(void *)a3
{
  managersBySlot = self->_managersBySlot;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_24808A538;
  v13[3] = &unk_278EFA2F0;
  v13[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(managersBySlot, a2, v13, v3, v4);
  v8 = self->_managersBySlot;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_24808A690;
  v12[3] = &unk_278EFA2F0;
  v12[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(v8, v9, v12, v10, v11);
  sub_2480AA1AC(a3, &self->_ringImpl.__ptr_);
}

- (shared_ptr<xray::scheduler::Ring>)_parent
{
  cntrl = self->_ringImpl.__cntrl_;
  *v2 = self->_ringImpl.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end