@interface FIOperationRecord
- (FINode)destination;
- (FINode)originalSourceParent;
- (FINode)resolvedDestination;
- (FINode)source;
- (FINode)targetNode;
- (FINodePropertyList)nodePropertyList;
- (FIOperationRecord)initWithOperationRecord:(const void *)a3;
- (FIOperationRecord)initWithSource:(id)a3 destination:(id)a4 propertyList:(OpaquePropertyListRef *)a5 requestedOperation:(unsigned int)a6;
- (id).cxx_construct;
- (shared_ptr<TDSOperationRecord>)operationRecord;
- (void)setNodePropertyList:(id)a3;
@end

@implementation FIOperationRecord

- (FIOperationRecord)initWithOperationRecord:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = FIOperationRecord;
  v4 = [(FIOperationRecord *)&v10 init];
  v5 = v4;
  v7 = *a3;
  v6 = *(a3 + 1);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = v4->_operationRecord.__cntrl_;
  v5->_operationRecord.__ptr_ = v7;
  v5->_operationRecord.__cntrl_ = v6;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  return v5;
}

- (FIOperationRecord)initWithSource:(id)a3 destination:(id)a4 propertyList:(OpaquePropertyListRef *)a5 requestedOperation:(unsigned int)a6
{
  v10 = a3;
  v11 = a4;
  v15 = a5;
  v14 = a6;
  v13.receiver = self;
  v13.super_class = FIOperationRecord;
  [(FIOperationRecord *)&v13 init];
  TNodeFromFINode(v10);
  TNodeFromFINode(v11);
  std::allocate_shared[abi:ne200100]<TDSOperationRecord,std::allocator<TDSOperationRecord>,TNode *,TNode *,OpaquePropertyListRef *&,OperationType &,0>();
}

- (FINode)source
{
  TDSOperationRecord::GetSource(self->_operationRecord.__ptr_, &v5);
  v2 = TNodeFromFINode(v5);
  v3 = FINodeFromTNode(v2);

  return v3;
}

- (FINode)destination
{
  TDSOperationRecord::GetDestination(self->_operationRecord.__ptr_, &v5);
  v2 = TNodeFromFINode(v5);
  v3 = FINodeFromTNode(v2);

  return v3;
}

- (FINodePropertyList)nodePropertyList
{
  v2 = [[FINodePropertyList alloc] initWithPropertyListRef:[(FIOperationRecord *)self propertyList]];

  return v2;
}

- (void)setNodePropertyList:(id)a3
{
  v4 = a3;
  -[FIOperationRecord setPropertyList:](self, "setPropertyList:", [v4 propertyListRef]);
}

- (FINode)originalSourceParent
{
  TDSOperationRecord::GetOriginalSourceParent(self->_operationRecord.__ptr_, &v5);
  v2 = TNodeFromFINode(v5);
  v3 = FINodeFromTNode(v2);

  return v3;
}

- (FINode)resolvedDestination
{
  TDSOperationRecord::GetResolvedDestination(self->_operationRecord.__ptr_, &v5);
  v2 = TNodeFromFINode(v5);
  v3 = FINodeFromTNode(v2);

  return v3;
}

- (FINode)targetNode
{
  TDSOperationRecord::GetTargetNode(self->_operationRecord.__ptr_, &v5);
  v2 = TNodeFromFINode(v5);
  v3 = FINodeFromTNode(v2);

  return v3;
}

- (shared_ptr<TDSOperationRecord>)operationRecord
{
  objc_copyCppObjectAtomic(v2, &self->_operationRecord, __copy_helper_atomic_property_);
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end