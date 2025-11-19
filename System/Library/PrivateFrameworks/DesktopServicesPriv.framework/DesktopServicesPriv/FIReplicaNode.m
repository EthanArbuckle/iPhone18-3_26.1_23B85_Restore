@interface FIReplicaNode
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (id)description;
- (id)init:(id)a3;
- (void)dealloc;
@end

@implementation FIReplicaNode

- (id)init:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FIReplicaNode;
  v5 = [(FIReplicaNode *)&v8 init];
  original = v5->_original;
  v5->_original = v4;

  return v5;
}

- (void)dealloc
{
  TReplicaRegistry::RemoveReplica(self, a2);
  v3.receiver = self;
  v3.super_class = FIReplicaNode;
  [(FIReplicaNode *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = FIReplicaNode;
  v4 = [(FIReplicaNode *)&v8 description];
  v5 = [(FINode *)self->_original description];
  v6 = [v3 stringWithFormat:@"%@ -> %@", v4, v5];

  return v6;
}

- (BOOL)isKindOfClass:(Class)a3
{
  if (objc_opt_class() == a3 || (v8.receiver = self, v8.super_class = FIReplicaNode, [(FIReplicaNode *)&v8 isKindOfClass:a3]))
  {
    isKindOfClass = 1;
  }

  else
  {
    original = self->_original;
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  if (([(FINode *)self->_original conformsToProtocol:v4]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FIReplicaNode;
    v5 = [(FIReplicaNode *)&v7 conformsToProtocol:v4];
  }

  return v5;
}

@end