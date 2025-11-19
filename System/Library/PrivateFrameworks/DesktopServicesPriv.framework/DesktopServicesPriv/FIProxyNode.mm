@interface FIProxyNode
- (FIProxyNode)initWithSubject:(id)a3;
- (id)nodesToObserve;
- (void)dispatchEvent:(id)a3 forObserver:(id)a4;
@end

@implementation FIProxyNode

- (FIProxyNode)initWithSubject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FIProxyNode;
  v5 = [(FICustomNode *)&v8 init];
  subjectNode = v5->_subjectNode;
  v5->_subjectNode = v4;

  return v5;
}

- (id)nodesToObserve
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = self->_subjectNode;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)dispatchEvent:(id)a3 forObserver:(id)a4
{
  v6 = a4;
  NodeEventFromNodeEventRef(a3, &v14);
  obj = self;
  v13 = v14;
  v7 = *TNodeEventPtr::operator->(&v14);
  v8 = TNodeFromFINode(&obj->super.super.super);
  v9 = *(TNodeEventPtr::operator->(&v13) + 64);
  v17 = v9;
  if (v9)
  {
    TDSNotifier::AddPtrReference(v9);
  }

  v10 = *v9;
  v11 = *(v9 + 1);
  v18 = v10;
  v19 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  TNodePtr::TNodePtr(&v16, v8);
  TNodePtr::TNodePtr(&v15, v8);
  TDSNotifier::Make();
}

@end