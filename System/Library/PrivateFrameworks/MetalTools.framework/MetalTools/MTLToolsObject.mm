@interface MTLToolsObject
- (MTLToolsObject)initWithBaseObject:(id)a3 parent:(id)a4;
- (id)description;
- (id)originalObject;
- (void)dealloc;
- (void)setOriginalObject:(id)a3;
@end

@implementation MTLToolsObject

- (MTLToolsObject)initWithBaseObject:(id)a3 parent:(id)a4
{
  v9.receiver = self;
  v9.super_class = MTLToolsObject;
  v6 = [(MTLToolsObject *)&v9 init];
  if (v6)
  {
    v6->_baseObject = a3;
    v6->_parent = a4;
    if (a4)
    {
      v7 = *(a4 + 3);
    }

    else
    {
      v7 = 0;
    }

    v6->_device = v7;
  }

  return v6;
}

- (void)dealloc
{
  if (atomic_load(&self->_externalReferences))
  {
    [(MTLToolsDevice *)self->_device notifyExternalReferencesNonZeroOnDealloc:self];
  }

  v4.receiver = self;
  v4.super_class = MTLToolsObject;
  [(MTLToolsObject *)&v4 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MTLToolsObject;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ -> %@", -[MTLToolsObject description](&v3, sel_description), -[MTLToolsObject description](self->_baseObject, "description")];
}

- (id)originalObject
{
  for (i = self->_baseObject; ; i = [(MTLToolsObject *)i baseObject])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }
  }

  return i;
}

- (void)setOriginalObject:(id)a3
{
  v4 = self;
  [(MTLToolsObject *)self baseObject];
  while (1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v4 = [(MTLToolsObject *)v4 baseObject];
    [(MTLToolsObject *)v4 baseObject];
  }

  v4->_baseObject = a3;
}

@end