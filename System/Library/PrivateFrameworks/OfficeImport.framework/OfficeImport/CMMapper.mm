@interface CMMapper
- (CMMapper)initWithParent:(id)parent;
- (CMMapper)parent;
- (id)archiver;
- (id)root;
- (void)addAttribute:(id)attribute toNode:(id)node value:(id)value;
- (void)addStyle:(id)style withName:(id)name;
- (void)addStyleUsingGlobalCacheTo:(id)to style:(id)style;
- (void)addStyleUsingGlobalCacheTo:(id)to style:(id)style embedStyle:(BOOL)embedStyle;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapStylesheetAt:(id)at stylesheet:(id)stylesheet;
- (void)mapWithState:(id)state;
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
    archiver = mArchiver;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->mRoot);
    v6 = [WeakRetained conformsToProtocol:&unk_286FC5B48];

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->mRoot);
      archiver = [v7 archiver];
    }

    else
    {
      archiver = 0;
    }
  }

  return archiver;
}

- (CMMapper)initWithParent:(id)parent
{
  parentCopy = parent;
  v11.receiver = self;
  v11.super_class = CMMapper;
  v5 = [(CMMapper *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mParent, parentCopy);
    root = [parentCopy root];
    v8 = root;
    if (root)
    {
      v9 = root;
    }

    else
    {
      v9 = parentCopy;
    }

    objc_storeWeak(&v6->mRoot, v9);
  }

  return v6;
}

- (void)addAttribute:(id)attribute toNode:(id)node value:(id)value
{
  nodeCopy = node;
  v7 = [OIXMLAttribute attributeWithName:attribute stringValue:value];
  [nodeCopy addAttribute:v7];
}

- (void)addStyleUsingGlobalCacheTo:(id)to style:(id)style
{
  toCopy = to;
  cssStyleString = [style cssStyleString];
  if ([cssStyleString length])
  {
    archiver = [(CMMapper *)self archiver];
    v8 = [archiver addCssStyle:cssStyleString];

    if (v8)
    {
      [(CMMapper *)self addAttribute:0x286EE8350 toNode:toCopy value:v8];
    }

    else
    {
      [(CMMapper *)self addAttribute:0x286EEA590 toNode:toCopy value:cssStyleString];
    }
  }
}

- (void)addStyleUsingGlobalCacheTo:(id)to style:(id)style embedStyle:(BOOL)embedStyle
{
  toCopy = to;
  styleCopy = style;
  v9 = styleCopy;
  if (embedStyle)
  {
    cssStyleString = [styleCopy cssStyleString];
    [(CMMapper *)self addAttribute:@"style" toNode:toCopy value:cssStyleString];
  }

  else
  {
    [(CMMapper *)self addStyleUsingGlobalCacheTo:toCopy style:styleCopy];
  }
}

- (void)addStyle:(id)style withName:(id)name
{
  nameCopy = name;
  cssStyleString = [style cssStyleString];
  archiver = [(CMMapper *)self archiver];
  [archiver addCssStyle:cssStyleString withName:nameCopy];
}

- (void)mapAt:(id)at withState:(id)state
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CMMapper.mm" lineNumber:99 description:{@"Please implement -[%@ %@]", v6, v7}];
}

- (void)mapWithState:(id)state
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CMMapper.mm" lineNumber:105 description:{@"Please implement -[%@ %@]", v5, v6}];
}

- (void)mapStylesheetAt:(id)at stylesheet:(id)stylesheet
{
  atCopy = at;
  v5 = [OIXMLElement elementWithType:17 stringValue:stylesheet];
  v6 = [OIXMLAttribute attributeWithName:0x286F007F0 stringValue:0x286F07970];
  [v5 addAttribute:v6];

  [atCopy addChild:v5];
}

@end