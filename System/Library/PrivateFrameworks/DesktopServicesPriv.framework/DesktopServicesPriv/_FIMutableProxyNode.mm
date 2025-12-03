@interface _FIMutableProxyNode
- (_FIMutableProxyNode)initWithSubject:(id)subject;
- (id)nodesToObserve;
- (void)dispatchNodeEvent:(id)event;
- (void)setSubjectNode:(id)node;
- (void)startObservingSubject;
- (void)stopObservingSubject;
@end

@implementation _FIMutableProxyNode

- (_FIMutableProxyNode)initWithSubject:(id)subject
{
  subjectCopy = subject;
  v7.receiver = self;
  v7.super_class = _FIMutableProxyNode;
  v5 = [(FIProxyNode *)&v7 initWithSubject:subjectCopy];
  [(_FIMutableProxyNode *)v5 startObservingSubject];

  return v5;
}

- (id)nodesToObserve
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = self;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)setSubjectNode:(id)node
{
  nodeCopy = node;
  [(_FIMutableProxyNode *)self stopObservingSubject];
  v5.receiver = self;
  v5.super_class = _FIMutableProxyNode;
  [(FIProxyNode *)&v5 setSubjectNode:nodeCopy];
  [(_FIMutableProxyNode *)self startObservingSubject];
}

- (void)startObservingSubject
{
  subjectNode = [(FIProxyNode *)self subjectNode];
  v4 = [FINodeObserver observerForProxy:self subjectNode:subjectNode];

  [(_FIMutableProxyNode *)self setSubjectObserver:v4];
  [v4 startObserving:19];
}

- (void)stopObservingSubject
{
  subjectObserver = [(_FIMutableProxyNode *)self subjectObserver];
  [subjectObserver stopObserving:19];

  [(_FIMutableProxyNode *)self setSubjectObserver:0];
}

- (void)dispatchNodeEvent:(id)event
{
  NodeEventFromNodeEventRef(event, &v12);
  v4 = *TNodeEventPtr::operator->(&v12);
  v5 = *(TNodeEventPtr::operator->(&v12) + 16);
  selfCopy = self;
  v7 = selfCopy;
  v8 = v4 > 0x32 || ((1 << v4) & 0x4000000000058) == 0;
  v9 = selfCopy;
  if (!v8)
  {
    v9 = *(TNodeEventPtr::operator->(&v12) + 8);
  }

  subjectNode = [(FIProxyNode *)v7 subjectNode];

  if (v9 == subjectNode)
  {
    v11 = v7;

    v9 = v11;
  }

  [(FIDSNode *)v7 _sendNotification:v4 node:v9 property:v5];

  TNodeEventPtr::~TNodeEventPtr(&v12);
}

@end