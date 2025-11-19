@interface CMMapper
- (CMMapper)initWithParent:(id)a3;
- (CMMapper)parent;
- (id)archiver;
- (id)root;
- (void)addAttribute:(id)a3 toNode:(id)a4 value:(id)a5;
- (void)addStyle:(id)a3 withName:(id)a4;
- (void)addStyleUsingGlobalCacheTo:(id)a3 style:(id)a4;
- (void)addStyleUsingGlobalCacheTo:(id)a3 style:(id)a4 embedStyle:(BOOL)a5;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapStylesheetAt:(id)a3 stylesheet:(id)a4;
- (void)mapWithState:(id)a3;
@end

@implementation CMMapper

- (id)root
{
  WeakRetained = objc_loadWeakRetained(&self->mRoot);

  return WeakRetained;
}

- (CMMapper)parent
{
  WeakRetained = objc_loadWeakRetained(&self->mParent);

  return WeakRetained;
}

- (id)archiver
{
  mArchiver = self->mArchiver;
  if (mArchiver)
  {
    v3 = mArchiver;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->mRoot);
    v6 = [WeakRetained conformsToProtocol:&unk_286FC5B48];

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->mRoot);
      v3 = [v7 archiver];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (CMMapper)initWithParent:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CMMapper;
  v5 = [(CMMapper *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mParent, v4);
    v7 = [v4 root];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    objc_storeWeak(&v6->mRoot, v9);
  }

  return v6;
}

- (void)addAttribute:(id)a3 toNode:(id)a4 value:(id)a5
{
  v8 = a4;
  v7 = [OIXMLAttribute attributeWithName:a3 stringValue:a5];
  [v8 addAttribute:v7];
}

- (void)addStyleUsingGlobalCacheTo:(id)a3 style:(id)a4
{
  v9 = a3;
  v6 = [a4 cssStyleString];
  if ([v6 length])
  {
    v7 = [(CMMapper *)self archiver];
    v8 = [v7 addCssStyle:v6];

    if (v8)
    {
      [(CMMapper *)self addAttribute:0x286EE8350 toNode:v9 value:v8];
    }

    else
    {
      [(CMMapper *)self addAttribute:0x286EEA590 toNode:v9 value:v6];
    }
  }
}

- (void)addStyleUsingGlobalCacheTo:(id)a3 style:(id)a4 embedStyle:(BOOL)a5
{
  v11 = a3;
  v8 = a4;
  v9 = v8;
  if (a5)
  {
    v10 = [v8 cssStyleString];
    [(CMMapper *)self addAttribute:@"style" toNode:v11 value:v10];
  }

  else
  {
    [(CMMapper *)self addStyleUsingGlobalCacheTo:v11 style:v8];
  }
}

- (void)addStyle:(id)a3 withName:(id)a4
{
  v8 = a4;
  v6 = [a3 cssStyleString];
  v7 = [(CMMapper *)self archiver];
  [v7 addCssStyle:v6 withName:v8];
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"CMMapper.mm" lineNumber:99 description:{@"Please implement -[%@ %@]", v6, v7}];
}

- (void)mapWithState:(id)a3
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:self file:@"CMMapper.mm" lineNumber:105 description:{@"Please implement -[%@ %@]", v5, v6}];
}

- (void)mapStylesheetAt:(id)a3 stylesheet:(id)a4
{
  v7 = a3;
  v5 = [OIXMLElement elementWithType:17 stringValue:a4];
  v6 = [OIXMLAttribute attributeWithName:0x286F007F0 stringValue:0x286F07970];
  [v5 addAttribute:v6];

  [v7 addChild:v5];
}

@end